cmake_minimum_required(VERSION 3.10)
project(multiThread)

set(CMAKE_CXX_STANDARD 11)
find_package(OpenCV REQUIRED)

MESSAGE("OPENCV VERSION:")
MESSAGE(${OpenCV_VERSION})

add_library(${PROJECT_NAME} SHARED
        ORBextractor.cc
        ORBextractor.h
        ORBextractor.cpp)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")
include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(main  main.cpp)
add_executable(mutex mutex.cpp)
add_executable(ORB ORBextractor.cpp)
# 由于pthread库不是Linux系统默认的库，连接时需要指定一下，不然编译不通过

target_link_libraries(main pthread ${OpenCV_LIBS})
target_link_libraries(ORB ${OpenCV_LIBS} )
#记得把相关的文件链接到可执行文件上不然找不到
target_link_libraries(ORB ${PROJECT_NAME})