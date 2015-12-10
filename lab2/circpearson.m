function corr = circpearson(x, y)
	l = length(x);
	meanx = mean(x);
	meany = mean(y);

	corr = zeros(1, l);
	denom = sqrt(sum((x .- meanx).^2)) * sqrt(sum((y .- meany).^2));
	if denom == 0
		return;
	endif
	for d = 1:l
		num = sum( (x .- meanx) * (y .- meany)');
		corr(d) = num/denom;
		y = [y(2:l) y(1)];
	endfor
endfunction
