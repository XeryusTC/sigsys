function corr = circpearson(x, y)
	l = length(x);
	meanx = mean(x);
	meany = mean(y);

	corr = zeros(1, l);
	denom = sqrt(sum((x .- meanx).^2)) * sqrt(sum((y .- meany).^2));
	if denom == 0
		return;
	endif
	corr = circorr(x.-meanx, y.-meany) ./ denom;
endfunction
