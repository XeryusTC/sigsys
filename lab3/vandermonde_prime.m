function res = vandermonde_prime(x)

n = length(x)
[g p] = rootsofunity(n)
k = (p-1)/n;
w = g^k

V = ones(n);
for k=2:n
	for j=2:n
		V(k, j) = rem(w^((j-1)*(k-1)), p);
	end
end

V
res = rem(V * x', p);

end
