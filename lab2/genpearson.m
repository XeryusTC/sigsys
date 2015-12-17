function corr = genpearson(x, y)
assert(length(x) >= length(y), "y can not be larger than x")

N = length(x);
l = length(y);
y = y(end:-1:1);
x = [x(N-l+1:end) x];
corr = zeros(1, N);

ybar = mean(y);
ycorr = y .- ybar;
ynorm = sqrt(sum((ycorr).^2));
if ynorm == 0
	return
endif

# Keep track of the running average using these
xlow = 0;
xhigh = sum(x(1:l));
slice = x(1:l);

for i = 1:N
	xbar = (xhigh - xlow) / l;
	xmean = slice .- xbar;
	xnorm = sqrt(sum(xmean .^ 2));
	if xnorm != 0
		corr(i) = conv(xmean, ycorr, shape='valid');
		corr(i) = corr(i) / (xnorm * ynorm);
	endif

	xlow = xlow + x(i);
	xhigh = xhigh + x(i+l);
	slice = [slice(2:end) x(i+l)];
endfor

endfunction
