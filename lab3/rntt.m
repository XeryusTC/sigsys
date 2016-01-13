function y = rntt(a, w, p)
	n = length(a);
	if n == 1
		y = a;
		return
	end

	yo = rntt(a(2:2:length(a)), rem(w^2, p), p);
	ye = rntt(a(1:2:length(a)), rem(w^2, p), p);

	y = zeros(1,n);

	x = 1;
	n2 = n/2;
	for k = 1:n2
		xy = rem(x*yo(k), p);
		y(k) = rem(ye(k) + xy, p);
		y(k+n2) = rem(ye(k) - xy + p, p);
		x = rem(x*w, p);
	end

end