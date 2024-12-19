img = imread("boston night.jpg");

imgGray = im2gray(img);

imgdouble = im2double(imgGray);

gamma = 1/2;

imgintensity = imgdouble.^gamma;
imgrotate = imrotate(imgintensity, -1, "crop");

imgAdjusted = im2uint8(imgrotate);

% montage({img, imgAdjusted})
% imtool(imgAdjusted)

imdiff = (im2double(imgAdjusted)-imgdouble);

imshow(imdiff, [])
colorbar


% metadata = imfinfo("half moon.jpg");

% metadata

