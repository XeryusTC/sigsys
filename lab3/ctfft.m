function y = ctfft(a)
	n = length(a);
	w = e^((-2*i*pi)/n);

	y = ctrfft(a, w);
end