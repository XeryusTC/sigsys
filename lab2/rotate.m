function x = rotate(sig, n)
	l = length(sig);
	x = [sig(l-n+1:l) sig(1:l-n)];
endfunction
