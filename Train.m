
cd '\Computer Vision\Project\Human Detector\pos';

Images = dir('*.png');

c = [];


for k = 1:length(Images)
  filename = Images(k).name;
  data1 = rgb2gray(imread(filename));
  hv = HOG(data1);
  c = [c hv];
end

mpos = mean(c,2);

cd '\Computer Vision\Project\Human Detector';

save('Pos','mpos');



cd '\Computer Vision\Project\Human Detector\neg\jpg';

Images2 = dir('*.jpg');

c2 = [];


for e = 1:length(Images2)
  filename2 = Images2(e).name;
  data2 = rgb2gray(imread(filename2));
  dataCROPPED = data2(1:160,1:96);
  hv2 = HOG(dataCROPPED);
  c2 = [c2 hv2];
end


cd '\Computer Vision\Project\Human Detector\neg\png';

Images3 = dir('*.png');


for e = 1:length(Images2)
  filename3 = Images3(e).name;
  data3 = rgb2gray(imread(filename3));
  dataCROPPED2 = data3(1:160,1:96);
  hv3 = HOG(dataCROPPED2);
  c2 = [c2 hv3];
end

mneg = mean(c2,2);

cd '\Computer Vision\Project\Human Detector';

save('Neg','mneg');

