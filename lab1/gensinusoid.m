function x = gensinusoid (A, f, phi, t1, t2, Fs)
	dx = 1/Fs;
	domain = t1:dx:t2;
	omega = 2*pi*f;
	x = cos(omega*domain+phi);

	x = x * A;
endfunction
