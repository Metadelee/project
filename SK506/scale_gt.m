gt_test = dir('groundTruth/test/*.mat');
gt_train = dir('groundTruth/train/*.mat');

for idx =1:length(gt_test)
   load(['groundTruth/test/' gt_test(idx).name]);
   D = bwdist(edge);
   D(~symmetry)=0;
   D = mat2gray(D);
   filename = ['scales/test/' gt_test(idx).name];
   save(filename, 'D');
end


for idx =1:length(gt_train)
   load(['groundTruth/train/' gt_train(idx).name]);
   D = bwdist(edge);
   D(~symmetry)=0;
   D = mat2gray(D);
   filename = ['scales/train/' gt_train(idx).name];
   save(filename,'D');
end