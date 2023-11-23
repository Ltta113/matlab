function [VectorFeatureOfOne,frames] = vectorFeatureOfOne(x, Fs, N_FFT)
    %Chuan hoa x
    x = x / max(abs(x));

    %2.a Chia thanh 3 doan lay doan giua
    part_len = floor(length(x)/3);

    part_middle = x(part_len + 1 : part_len * 2);

    %Chia doan thanh M frame voi do dai 20ms, khoang cach giua cac frame 10ms
    frame_len = 20*0.001 * Fs;
    frame_dis = 10*0.001 * Fs; 

    frames = buffer(part_middle, frame_len, frame_dis, 'nodelay');
    %w = hamming(length(frames(1, :)));
    num_frames = size(frames, 2);

    featureVector = zeros(1, N_FFT);
    for i = 1:num_frames

        %2.b Trich xuat vecto FFT tu 1 frame  
        fft_result = abs(fft(frames(:, i), N_FFT));
        %Tinh tong cac vecto
%         if i == 1
%             featureVector = fft_result;
%         end
        featureVector = featureVector + fft_result;
    end
    %2.c Vecto dac trung cua 1 nguyen am cua 1 nguoi noi
    featureVector = featureVector / num_frames;
    %Chuan hoa sang dB
    VectorFeatureOfOne = ((featureVector));
    % V? ?? th?

end

