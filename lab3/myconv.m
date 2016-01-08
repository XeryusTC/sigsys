function c = myconv(x,y)
	n = 1;
	while n < length(x) || n < length(y)
		n = n * 2;
	end
	n = 2*n;
	x = [x zeros(1, n-length(x))];
	y = [y zeros(1, n-length(y))];
	c = real(ifft(fft(x).*fft(y)));
end