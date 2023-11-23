function percent = checkVectoFeature(path_kt, folders_kt, files, N_FFT, vectorsCheck)
    count = 0;
    total = 0;
    
    for i = 1:5
        for j = 1:21
            [outputSignal, Fs] =  removeSilence(path_kt, folders_kt(j), files(i));
            
            % d. Tìm t?ng vector ??c tr?ng c?a m?t nguyên âm c?a 21 ng??i
            vector = vectorFeatureOfOne(outputSignal, Fs, N_FFT);
            
            minDist = inf;
            position = 0;
            
            for k = 1:5
                check = euclideanDistance(vector, vectorsCheck(k, :));
                % disp(euclideanDistance(vector, vectorsCheck(k, :)));
                if check < minDist
                    minDist = check;
                    position = k;
                end
            end
            
            if i == position
                count = count + 1;
            end
            total = total + 1;
        end
    end
    
    percent = count / 105;
end