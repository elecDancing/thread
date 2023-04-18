#include "ORBextractor.h"
#include <iostream>
#include <opencv/cv.hpp>
#include <opencv2/opencv.hpp>

using namespace std;
using namespace cv;

void extractORB(string img_path, Mat &img_kps, vector<KeyPoint> &keyPoint, Mat &descriptor){
    Mat img = imread(img_path);
    Ptr<ORB> orb = ORB::create(2000);
    orb->detectAndCompute(img, Mat(), keyPoint, descriptor);

    img.copyTo(img_kps);
    drawKeypoints(img, keyPoint, img_kps);
}

int main() {
    Mat img, img_gray, img_show, img_show1;
    vector<cv::KeyPoint> keypoints;
    Mat descriptors;
    const string img_path = "/home/juo/CLionProjects/thread/img.png";
    img = imread(img_path);

    cvtColor(img, img_gray, cv::COLOR_BGR2GRAY);
    //ORB提取特征点
    ORB_SLAM3::ORBextractor orb = ORB_SLAM3::ORBextractor(1000, 1.2, 8, 20, 10);
    orb(img_gray, cv::Mat(), keypoints, descriptors);
    //opencv的ORB特征点
    Mat img_kps_1;
    vector<KeyPoint> keyPoint_1;
    Mat descriptor_1;
    extractORB(img_path, img_kps_1, keyPoint_1, descriptor_1);

    img.copyTo(img_show);

    for (size_t i = 0; i < keypoints.size(); ++i) {
        KeyPoint tmp_kp = keypoints[i];
        cout << endl << "------" << i + 1 << "------" << endl;
        cout << "size:" << tmp_kp.size << endl;
        cout << "angle:" << tmp_kp.angle << endl;
        cout << "octave:" << tmp_kp.octave << endl;
        cout << "pt:" << tmp_kp.pt << endl;
        cout << "response:" << tmp_kp.response << endl;
        //circle(img_show, keypoints[i].pt, 2, cv::Scalar(0, 255, 255), 2);
    }

    drawKeypoints(img_show, keypoints ,img_show1);
    cout << "Total keypoints:" << keypoints.size() << endl;
    //cv::imwrite("/root/test_kps.jpg", img_show);


    imshow("ORBextractor", img_show1);
    imshow("OPENorb", img_kps_1);
    waitKey(0);
    return 0;
}