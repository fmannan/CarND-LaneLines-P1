SRC_DIR = './test_images/'
im = im2double(imread([SRC_DIR 'out0025.png']));

im = im .^ (2.2);

figure
imshow(im)

%%
imc = im(520:560, 590:690, :);
imc = im(460:490, 630:700, :);
figure
imshow(imc)

mean_clr = mean(reshape(imc, [], 3), 1)
%%
im_n = max(bsxfun(@minus, im, reshape(mean_clr, 1, 1, 3)), 0);
%im_n = im;

figure
imshow(im_n)

im_n1 = rgb2gray(im);
im_n1(im(:,:,1) < mean_clr(1) & im(:, :, 2) < mean_clr(2) & im(:, :, 3) < mean_clr(3)) = 0;
figure
imshow(im_n1)