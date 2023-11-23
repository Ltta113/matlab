function vectorFeatureOfall = vectorFeatureOfall(path_hl, folders_hl, files, N_FFT)
for i = 1: 5
    for j = 1 : 21
        [outputSignal, Fs] =  removeSilence(path_hl, folders_hl(j), files(i));
        if j == 1
            vectors = vectorFeatureOfOne(outputSignal, Fs, N_FFT);
        else
            vectors = vectors + vectorFeatureOfOne(outputSignal, Fs, N_FFT);
        end
    end
    vectorFeatureOfall(i, :) = vectors / length(folders_hl);
end