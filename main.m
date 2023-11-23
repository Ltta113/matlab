clear;
close all;
[path_hl, path_kt, folders_hl, folders_kt, files, N_FFTs] = initialize();
%[outputSignal, Fs] =  removeSilence(path_hl, folders_hl(21), files(5));
%[vector, frames] = vectorFeatureOfOne(outputSignal, Fs, N_FFTs(1));
%figure;
%plot(vector);

%vectors = trainingFFT(path_hl, folders_hl, files, 0.03, 0.01, N_FFTs(2));
vertorsCheck = vectorFeatureOfall(path_kt, folders_kt, files, N_FFTs(1));
percent = checkVectoFeature(path_kt, folders_kt, files, N_FFTs(1), vertorsCheck);
%drawConfusionMatrix(percent,"Alo");