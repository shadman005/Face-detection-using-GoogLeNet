a=videoinput('winvideo',1);
for i=1:1
    b=getsnapshot(a);
    c=['Img' num2str(i)];
    imwrite(b,[c,'.jpeg']);
    pause(2);
    imshow(b(i));
end



I = imread('Img1.jpeg');
G = imresize(I, [224, 224]);

[Label, Prob] = classify(net,G);

figure;
imshow(G);
title({char(Label), num2str(max(Prob),2)});