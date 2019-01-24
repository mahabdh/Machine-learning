function kernel = gaussianKernel_team_05(x, l, sigma)
%kernel retourne le gaussian kernel entre le x et le l
% verifier le format de x et l
x = x(:); l = l(:);
kernel = 0;
kernel = exp(-sum((x - l).^2)/(2 * (sigma^2)));
end
