function pos = position (dmic, Fs, sig1, sig2, sig3)
	t = 60/Fs
	
	d1 = shift(sig2, sig1)
	d2 = shift(sig3, sig2)

	pos = dtoa(dmic, d1, d2);
endfunction