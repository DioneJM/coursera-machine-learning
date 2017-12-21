pic1 = imread('number.jpg');
pic2 = flipdim(pic1, 2); %flip horizontally
pic3 = imrotate(pic2, 90, 'bilinear'); %rotate left
gray = rgb2gray(pic3);

newGray = [gray(1, :) gray(2, :) gray(3, :) gray(4, :) gray(5, :) gray(6, :) gray(7, :) gray(8, :) ...
    gray(9, :) gray(10, :) gray(11, :) gray(12, :) gray(13, :) gray(14, :) gray(15, :) gray(16, :) ...
    gray(17, :) gray(18, :) gray(19, :) gray(20, :)];

test = sigmoid(cast(newGray, 'double'));
test(test==1) = 0;
predictNum = test;
% Display 
fprintf('\nDisplaying  Image\n');
displayData(predictNum);

pred = predict(Theta1, Theta2,predictNum);
fprintf('\nNeural Network Prediction: %d (digit %d)\n',  mod(pred, 10), mod(pred, 10));

% Pause with quit option
break
s = input('Paused - press enter to continue, q to exit:','s');
