function y = ctrfft(a, w)
	n = length(a);
	if n == 1
		y = a;
		return
	end

	yo = ctrfft(a(2:2:length(a)), w^2);
	ye = ctrfft(a(1:2:length(a)), w^2);

	y = zeros(1,n);

	x = 1;
	n2 = n/2;
	for k = 1:n2
		xy = x*yo(k);
		y(k) = ye(k) + xy;
		y(k+n2) = ye(k) - xy;
		x = x*w;
	end

end