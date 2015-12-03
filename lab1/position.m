function pos = position (dmic, Fs, sig1, sig2, sig3)
	t = 0:1/Fs:1;
	
	d1 = shift(sig1, sig2);
	l1 = t(d1);
	d2 = shift(sig2, sig3);
	l2 = t(d2);

	pos = dtoa(dmic, l2, l1);

endfunction