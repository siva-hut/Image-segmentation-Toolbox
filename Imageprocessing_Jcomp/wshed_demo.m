
addpath ../.;
if (exist('output_images')~=7)
  mkdir('output_images');
end

ImageDir = 'images/';

im = imread( [ImageDir 'coffee.png'] );
figure(1);imshow(rgb2gray(im));colormap gray;
im_gray = rgb2gray(im);
regions = wshed( im_gray, 4, 33 ); 


im_red = im(:,:,1);
im_red(regions == 0) = 255;
im(:,:,1) = im_red;

figure(4);imshow(im);


