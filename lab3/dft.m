function y = dft(x)

N = length(x);
y = zeros(N,1);

for k = 1:N
	for n = 0:(N-1)
		y(k) = y(k) + x(n+1) * exp(2 * pi * i * n * (k-1) / N);
	endfor
endfor

endfunction
