function [outputSignal, Fs] =  removeSilence(path, folder, file)
    % ??c file âm thanh ??u vào
    outputSignal = [];
    [inputSignal, Fs] = audioread(path + "\" + folder + "\" + file);
    disp(path + "\" + folder + "\" + file);
    frameSize = floor(Fs*(20*0.001)); 
    frameShiftSize = floor(Fs*(10*0.001)); 
    frames = buffer(inputSignal, frameSize); 
    averageEnergy = mean(sum(frames.^2, 1));
    threshold = averageEnergy;
    
    
    for i=1:size(frames,2)
        if sum(frames(:,i).^2) > threshold
            outputSignal = [outputSignal; frames(:,i)];
        end
    end  
    outputSignal = outputSignal;
    Fs = Fs;
end