function delta = shift(sigx, sigy)

	% Zeros are appended to signal vectors in order to have equal length
	if length(sigx)>length(sigy) 
		zer = length(sigx)-length(sigy);
		sigy = [sigy zeros(1, zer)];
	elseif length(sigx)<length(sigy)
		zer = length(sigy)-length(sigx);
		sigx = [sigx zeros(1, zer)];
	end

	l = length(sigx);
	res = zeros(1,l);

	for n = 1:l
		res(n) = sigx*sigy'; % Cross correlation value is calculated 
		sigy = [0 sigy(1:end-1)]; % Signal is shifted by 1 
	end

	[v p] = max(res); % n with higghest cross correlation value is selected as ressult
	delta = p - 1;

endfunction

