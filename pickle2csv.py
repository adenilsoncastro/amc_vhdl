# This code extracts the features values from pickle files
#
# First, you must select the SNR values and put it on the "snr" array
# Second, you must select the amount of frames on "frames" variable
# The code will extract the data from all modulations available and
# all 22 features used so far, following the order of "info_json"
# 
# Pay attention the data will be saved in a normalized format, 
#                  exactly as the RNA expects! 
# To correctly visualize the values, open the csv archive using notepad++.
#
#                  May the force be with you.

import pickle
import numpy as np
import pathlib
import os
from os.path import join
from sklearn.preprocessing import normalize

modulations = ["BPSK", "QPSK", "PSK8", "QAM16", "QAM64", "noise"]

#-10dB=0;  -8dB=1;  -6dB=2;  -4dB=3;
# -2dB=4;   0dB=5;   2dB=6;   4dB=7;
#  6dB=8;   8dB=9;  10dB=10; 12dB=11;
# 14dB=12; 16dB=13; 18dB=14; 20dB=15
snr=[10]
frames=10
ft_array = np.empty((frames,6))

for mod in modulations:
    data_file = mod + "_features.pickle"

    with open(data_file, 'rb') as handle:
        ft_file = pickle.load(handle)
        for snr_value in snr:
            for frame in range(frames):
                ft_array[frame][:] = ft_file[snr_value][frame]
                ft_array_norm = normalize(ft_array, norm='l2')
                np.savetxt("{}_{}_{}_NOT_NORMALIZED.csv".format(mod,snr_value,frame), ft_array, delimiter=",")
