function res = ivandermonde(x)

n = length(x);
V = ones(n);
for k=2:n
	for j=2:n
		V(k, j) = exp((-2 * i * pi)/n * (k-1)*(j-1));
	end
end

res = inverse(V) * x';

end
