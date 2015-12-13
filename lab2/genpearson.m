function corr = genpearson(x, y)
assert(length(x) >= length(y), "y can not be larger than x")

N = length(x);
y = y(end:-1:1);
x = [x(N-length(y)+1:end) x]
corr = zeros(1, N);

ybar = mean(y);
ynorm = sqrt(sum((y .- ybar).^2));
for i = 1:N
	slice = x(i:i+length(y)-1);
	xbar = mean(slice);
	slice = slice .- xbar;
	corr(i) = conv(slice, y.-ybar, shape='valid')(1);
	corr(i) = corr(i) / (sqrt(sum(slice.^2)) * ynorm);
endfor

endfunction
