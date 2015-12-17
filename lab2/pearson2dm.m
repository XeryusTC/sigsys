function res = pearson2dm(image, template)

rows = size(image, 1) - size(template, 1) + 1;
cols = size(image, 2) - size(template, 2) + 1;

size_t = (size(template, 1) * size(template, 2)) - 1

cor = zeros(rows, cols);

template_std = std(template(:));
template = template .- mean(template(:));
template_norm = template ./ template_std;

for r = 1:rows
	nr = r + size(template, 1) - 1;
	for c = 1:cols 
		nc = c + size(template, 2) - 1;
		sd = image(r:nr, c:nc);
		sd_std = std(sd(:));
		sd = sd .- mean(sd(:));
		sd_norm = sd ./ sd_std;
		sd_cor = sd_norm .* template_norm;
		cor(r, c) = sum(sd_cor(:)) / size_t;
	end
end

res = cor;

end