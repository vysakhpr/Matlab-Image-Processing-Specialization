% img = imread("boston night.jpg");

img = imread("picks.jpg");

hsv =  rgb2hsv(img);
imgval = hsv(:,:,3);

imshow(imgval);

% Gamma Correction

gamma = 0.5;
imgGamma = hsv;
imgGamma(:,:,3) = imgval.^gamma;
imgGamma = hsv2rgb(imgGamma);
imgGamma = im2uint8(imgGamma);

% Adjust

imgAdjust = hsv;
imgAdjust(:,:,3) = imadjust(imgval);
imgAdjust = hsv2rgb(imgAdjust);
imgAdjust = im2uint8(imgAdjust);

% Equalise

imgEq = hsv;
imgEq(:,:,3) = histeq(imgval);
imgEq = hsv2rgb(imgEq);
imgEq = im2uint8(imgEq);

% Adaptive Equalise

imgAdapt = hsv;
imgAdapt(:,:,3) = adapthisteq(imgval);
imgAdapt = hsv2rgb(imgAdapt);
imgAdapt = im2uint8(imgAdapt);
imshow(imgAdapt);

montage({imgGamma, imgAdjust, imgEq, imgAdapt});