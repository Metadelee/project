#Skeleton 506
This dataset SK506 is used for evaluating the methods for skeleton extraction in natural images, which contents 506 images selected from MS COCO [1], 300 for training and 206 for testing.

Each image in SK506 has a corresponding skeleton map, which is extracted by using the approach introduced in [2]. Each groundtruth is represented by a .mat file, in which there are two fields:

edge: the contour(edge) map of the object. 1: contour; 0: non-contour.
symmetry: the skeleton(symmetry) map of the object. 1: skeleton; 0: non-skeleton.

The scale of a symmetry point is defined as its distance to the nearest edge point, which can be easily implemented by the Matlab function ``bwdist''.

A Matlab script `aug_sk506.m` is attached for data augmentation(flip, rotate and crop the origin images as well as groundtruth maps). 

[here](https://github.com/SHUCV/skel_bench) is the Code for skeleton-extraction performance evaluation. 

If you use this dataset, please cite our paper:

@inproceedings{Ref:Shen16,
  author     = {Wei Shen and Kai Zhao and Yuan Jiang and Yan Wang and Zhijiang Zhang and Xiang Bai},
  title      = {Object Skeleton Extraction in Natural Images by Fusing Scale-associated Deep Side Outputs},
  booktitle = {IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
  year       = {2016},
}

For any questions about this dataset, please contact us by emails: wei.shen@t.shu.edu.cn, zeakey@outlook.com, y9387@outlook.com.

[1] X. Chen, H. Fang, T. Lin, R. Vedantam, S. Gupta, P. Doll¡äar, and C. L. Zitnick. Microsoft COCO captions: Data collection and evaluation server. arXiv:1405.0312, 2015.
[2] Wei Shen, Xiang Bai, Xingwei Yang, Longin Jan Latecki. Skeleton Pruning as Trade-off between Skeleton Simplicity and Reconstruction Error. SCIENCE CHINA Information Sciences, 56(4): 1-14, 2013.







