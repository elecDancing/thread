//
// Created by juo on 2023/4/18.
//

#include <iostream>
#include <unistd.h> // Linux系统下的头文件，下面用到的sleep函数就是出自这里，其本身与多线程没什么关系
#include <thread>   // C++多线程API头文件
#include <mutex>
#include <vector>


using namespace std;

vector<int> vec_int;
// mutex类型的独占锁
std::mutex mymutex;

void demo2_thread1() {
    // 在线程函数执行前加上这一句
    unique_lock<mutex> lock(mymutex);
    for (int i = 0; i < 5; ++i) {
        cout << "Adding element " << i << " from thread 1" << endl;
        vec_int.push_back(i);
        sleep(1);
    }
}

void demo2_thread2() {
    // 在线程函数执行前加上这一句
    unique_lock<mutex> lock(mymutex);
    for (int i = 0; i < 5; ++i) {
        int e = 100 * i + 100;
        cout << "Adding element " << e << " from thread 2" << endl;
        vec_int.push_back(e);
        sleep(1);
    }
}

int main() {
    thread t1(&demo2_thread1);
    thread t2(&demo2_thread2);
    t1.join();
    t2.join();

    for (size_t i = 0; i < vec_int.size(); ++i) {
        cout << "element " << i << " " << vec_int[i] << endl;
    }
    return 0;
}