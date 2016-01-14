function res = ivandermonde_prime(x)

n = length(x)
[g p] = rootsofunity(n);
k = (p-1)/n;
w = g^k;

w = modinverse(w, p)
V = ones(n);
for k=2:n
	for j=2:n
		V(k, j) = rem(w * (k-1)*(j-1), p);
	end
end

n = modinverse(n, p)
res = rem((V * x').*n, p);

end
