import matplotlib.pyplot as plt
import numpy as np
from os.path import join
from sklearn.metrics import accuracy_score
from sklearn.metrics import recall_score
from sklearn.metrics import precision_score
from sklearn.metrics import f1_score
from sklearn.metrics import confusion_matrix as cm
from sklearn.metrics import classification_report
import tensorflow as tf
from tensorflow.keras.metrics import Accuracy, Recall, Precision 
import pandas as pd
import seaborn as sns

modulations = ['BPSK', 'QPSK', 'PSK8', 'QAM16', 'noise']
mod_bin = ['0000001', '1001111', '0010010', '0000110', '1001100']
mod_bin_dic = {'0000001':0, '1001111':1, '0010010':2, '0000110':3, '1001100':4}
mod_bin_dic_ = {0:'0000001', 1:'1001111', 2:'0010010', 3:'0000110', 4:'1001100' }

snr_values = [-10,-8,-6,-4,-2,0,2,4,6,8,10,12,14,16,18,20]
frames = 500
index = 0

result_ = []
target_ = []

def metrics():
    acc = np.zeros([len(modulations), len(snr_values)])

    report = []
    index = 0

    for j, snr in enumerate(snr_values):
        res = []
        target = []
        result_temp = []
        target_temp = []   
        for i, mod in enumerate(mod_bin):
            with open(modulations[i] + '_result.txt') as handle:
                result = np.loadtxt(handle, dtype='S')            
            for k in range(frames):
                target.append(mod_bin_dic_[i])
                res.append(result[k+index].decode('utf-8'))

            result_temp.append(res)
            target_temp.append(target)
            acc[i][j] = accuracy_score(target, res)

        result_.append(result_temp)
        target_.append(target_temp)
        index += 500
        #print(classification_report(target, res))
        report.append(classification_report(target, res, output_dict=True))
    plot_metrics(report, acc)
    #create_cm()


def create_cm(result_, target_):
    acc = []
    rec = []
    prec = []
    f1 = []

    #Check if the result array have an item corresponding to "Error";
    #If so, it is converted to "noise" label
    for mod in range(len(target_)):
        for snr in range(len(target_[mod])):
            for item in range(len(target_[mod][snr])):
                if result_[mod][snr][item] == "0001000":
                    result_[mod][snr][item] = "1001100"

    #The string labels are enconded into int labels, for the CM generation
    for mod in range(len(target_)):
        for snr in range(len(target_[mod])):
            for item in range(len(target_[mod][snr])):
                target_[mod][snr][item] = mod_bin_dic[target_[mod][snr][item]]
                result_[mod][snr][item] = mod_bin_dic[result_[mod][snr][item]]

    #The result arrays are horizontally stacked twice to create a 
    #full verticall array containing all the results
    target_ = np.hstack(target_)
    target_ = np.hstack(target_)

    result_ = np.hstack(result_)
    result_ = np.hstack(result_)

    acc = accuracy_score(target_, result_)
    rec = recall_score(target_, result_, average='micro')
    prec = precision_score(target_, result_, average='micro')
    f1 = f1_score(target_, result_, average='micro')

    print(classification_report(target_,result_))

    confusion_matrix = tf.math.confusion_matrix(target_, result_).numpy()
    confusion_matrix_normalized = np.around(confusion_matrix.astype('float') / confusion_matrix.sum(axis=1)[:, np.newaxis],decimals=2)
    print(confusion_matrix_normalized)
    cm_data_frame = pd.DataFrame(confusion_matrix_normalized, index=modulations, columns=modulations)
    figure = plt.figure(figsize=(8, 4), dpi=300)
    sns.heatmap(cm_data_frame, annot=True, cmap=plt.cm.get_cmap('Blues', 6))
    plt.tight_layout()
    plt.title('Confusion Matrix')
    plt.ylabel('True label')
    plt.xlabel('Predicted label')
    plt.savefig('confusion_matrix_vhdl.png', bbox_inches='tight', dpi=300)

def plot_metrics(report, acc):
    accuracy = []
    precision = []
    recall =[]
    f1_score = []

    for mod in mod_bin:
        plt.grid(b=True)
        plt.title('{} Performance'.format(modulations[mod_bin_dic[mod]]))
        plt.ylabel('Performance')
        plt.xlabel('SNR [dB]')
        plt.xticks(np.arange(len(snr_values)), [str(snr_values[i]) for i in range(len(snr_values))])
        
        for item in report:
            precision.append(item[mod]['precision'])
            recall.append(item[mod]['recall'])
            f1_score.append(item[mod]['f1-score'])

        for item in acc[mod_bin_dic[mod]]:
            accuracy.append(item)

        plt.plot(accuracy, label='accuracy', linewidth=4)
        plt.plot(precision, label='precision', linewidth=2)
        plt.plot(recall, label='recall', linewidth=2, linestyle='--', color='r')
        plt.plot(f1_score, label='f1-score', linewidth=2)
        plt.legend(loc='best')
        #plt.show()
        plt.savefig('{}_hardware_performance.png'.format(modulations[mod_bin_dic[mod]]), bbox_inches='tight', dpi=300)
        plt.clf()
        accuracy.clear()
        precision.clear()
        recall.clear()
        f1_score.clear()

if __name__ == "__main__":
    metrics()