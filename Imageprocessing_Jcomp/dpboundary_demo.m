
ImageDir='images/';%directory containing the images

if (exist('output_images')~=7)
  mkdir('output_images');
end

im = imread( [ImageDir 'limb_vessels2.jpg'] );
x = dpboundary( -double(im) );

figure(1) ; 
imagesc(im); 
axis image ; axis off ; colormap(gray) ;

figure(2) ; 
imshow(im) ; axis image ; axis off ; colormap(gray) ; 
hold on ; plot(x,1:size(im,1),'r-') ; hold off ;

