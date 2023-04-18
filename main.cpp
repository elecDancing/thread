#include <iostream>
#include <thread>
#include <opencv2/opencv.hpp>
using namespace  std;
using namespace cv;

void extractORB(string img_path, Mat &img_kps, vector<KeyPoint> &keyPoint, Mat &descriptor){
    Mat img = imread(img_path);
    Ptr<ORB> orb = ORB::create(2000);
    orb->detectAndCompute(img, Mat(), keyPoint, descriptor);

    img.copyTo(img_kps);
    drawKeypoints(img, keyPoint, img_kps);

    GaussianBlur(img, img, Size(315, 315), 1.5);

}

int main() {
    const string img_path = "/home/juo/CLionProjects/thread/img.png";
    Mat img_kps_t1, img_kps_t2;
    vector<KeyPoint> keyPoint_t1, keyPoint_t2;
    Mat descriptor_t1, descriptor_t2;
    clock_t t1 = clock();
    extractORB(img_path, img_kps_t1, keyPoint_t1, descriptor_t1);
    extractORB(img_path, img_kps_t2, keyPoint_t2, descriptor_t2);
    clock_t t2 = clock();
    double dt1 = double(t2 - t1) / CLOCKS_PER_SEC;
    cout << "Normal cost time:" << dt1 << " s" << endl;

    Mat img_kps_th1, img_kps_th2;
    vector<KeyPoint> keyPoint_th1, keyPoint_th2;
    Mat descriptor_th1, descriptor_th2;
    //新建两个线程同时执行
    clock_t t3 = clock();

    //! 这里extractORB函数后面的参数是引用传递以便接收处理的结果，因此，需要用ref()函数包裹
    thread thread1(&extractORB, img_path, ref(img_kps_th1), ref(keyPoint_th1), ref(descriptor_th1));
    thread thread2(&extractORB, img_path, ref(img_kps_th2), ref(keyPoint_th2), ref(descriptor_th2));
    //等待线程执行完毕 保证所有线程都执行完毕再退出程序
    thread1.join();
    thread2.join();
    clock_t t4 = clock();
    double dt2 = double(t4 -t3) / CLOCKS_PER_SEC;
    cout << "Multi thread time:" << dt2 << "s" << endl;

    cout << "thread1 kps num: " << keyPoint_th1.size() << endl;
    cout << "thread2 kps num: " << keyPoint_th2.size() << endl;
    imshow("thread1-kps", img_kps_th1);
    imshow("thread2-kps", img_kps_th2);
    waitKey(0);

    return 0;
}
