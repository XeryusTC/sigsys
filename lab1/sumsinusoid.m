function [A, f, phi] = sumsinusoid(A1, f, phi1, A2, phi2)
	X1 = A1 * cos(phi1) + I * A1 * sin(phi1);
	X2 = A2 * cos(phi2) + I * A2 * sin(phi2);
	X3 = X1 + X2;
	A = sqrt(imag(X3)^2 + real(X3)^2);
	phi = atan2(imag(X3), real(X3));
endfunction
