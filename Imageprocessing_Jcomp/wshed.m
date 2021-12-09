function im_regions = wshed(varargin)
im = varargin{1};
if nargin>1
  r = varargin{2};
else
  r = 4;
end

if nargin>2
  h = varargin{3};
else
  h = 35;
end

im = imopen( im, strel('disk',r) );


markers = im - imreconstruct( im-h, im ); 
markers = markers > 0; 
markers = imerode( markers, strel('disk',3) ); 
im_marked = max(im(:)) - im; 
im_marked = imimposemin( im_marked, markers );
im_regions = watershed( im_marked );
return


