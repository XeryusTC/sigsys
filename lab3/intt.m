function y = intt(a)
	n = length(a);
	[g p] = rootsofunity(n);
	k = (p-1)/n;
	w = g^k;

	ni = modinverse(n, p);
	wn = modinverse(w, p);
	y = rem(rntt(a, wn, p)*ni, p);

end