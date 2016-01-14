function y = dft(x)

N = length(x);
y = zeros(1,N);
[g p] = rootsofunity(N);
k = (p - 1) / N;
w = g^k;

for k = 1:N
	for n = 0:(N-1)
		y(k) = rem(y(k) + rem(x(n+1) * rem(w^(n * (k-1)), p), p), p);
	endfor
endfor

endfunction
