function y = ntt(a)
	n = length(a);
	[g p] = rootsofunity(n);
	k = (p-1)/n;
	w = g^k;

	y = rntt(a, w, p);
	

end