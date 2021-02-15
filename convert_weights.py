# This code converts the CSV containing the weitghts and biases
# of an TF model to a BINARY notation, also saved in a CSV file
#
#                  May the force be with you.

import numpy as np
from os import listdir
from os.path import isfile, join
from fxpmath import Fxp

files = [f for f in listdir('./') if ".csv" in f]

word_bits = 16
frac_bits = 11

error = []

for f_ in files:
    with open(f_, 'r') as handle:
        data = np.genfromtxt(handle, delimiter=',')
        fxp_val = np.zeros_like(data)
        fxp_bin = np.ndarray(data.shape, dtype='U16')
        for line in range(len(data)):
            if "bias" in f_:
                fxp_sample = Fxp(data[line], True, word_bits, frac_bits)
                fxp_val[line] = fxp_sample.get_val()
                fxp_bin[line] = fxp_sample.bin()
                error.append(np.nan_to_num((data[line]-fxp_val[line])/data[line]))                
            else:
                for column in range(len(data[line])):
                    fxp_sample = Fxp(data[line][column], True, word_bits, frac_bits)
                    fxp_val[line][column] = fxp_sample.get_val()
                    fxp_bin[line][column] = fxp_sample.bin()
                    error.append(np.nan_to_num((data[line][column]-fxp_val[line][column])/data[line][column]))
    with open('report.txt', 'a') as r:
        r.write(f_ + ' min: ' + str(np.min(fxp_val)) + ' - max: ' + str(np.max(fxp_val)) + '\n')

    #np.savetxt(f_.split('.')[0]+"_bin.csv", fxp_bin, delimiter=',', fmt="%s")
    #np.savetxt(f_.split('.')[0]+"_val.csv", fxp_val, delimiter=',')
    
print("average error:" + str(np.mean(error)))