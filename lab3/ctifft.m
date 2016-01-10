function y = ctifft(a)
	n = length(a);
	w = e^((2*i*pi)/n);

	y = ctrfft(a, w);
	y = y ./ n;
end