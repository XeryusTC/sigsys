function z = circorr(sigx, sigy)

l = length(sigx);
res = zeros(1,l);

for n = 1:l
		res(n) = sigx*sigy';  
		sigy = [sigy(end) sigy(1:end-1)];
end

z = res;

endfunction