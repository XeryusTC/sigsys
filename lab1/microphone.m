function x = microphone(micx, micy, srcx, srcy, srcf, srcA, srcphi, Fs)

	signals = zeros([length(srcx) Fs*0.5+1]);
	for i = 1:length(srcx)
		shift = sqrt((micy - srcy(i))^2 + (micx - srcx(i))^2) / 343.2; % Calculate distance and time shift of signal 
		signals(i,:) = gensinusoid(srcA(i), srcf(i), srcphi(i) - shift*2*srcf(i)*pi, 0, 0.5, Fs); % Time shift is added to signal
	endfor

	if size(signals) == [1 Fs*0.5+1]
		x = signals;
	else
		x = sum(signals); % Summing signals from different sources
	end

endfunction
