# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/juo/clion-2021.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/juo/clion-2021.2.4/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/juo/CLionProjects/thread

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/juo/CLionProjects/thread/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ORB.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/ORB.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ORB.dir/flags.make

CMakeFiles/ORB.dir/ORBextractor.cpp.o: CMakeFiles/ORB.dir/flags.make
CMakeFiles/ORB.dir/ORBextractor.cpp.o: ../ORBextractor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/juo/CLionProjects/thread/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ORB.dir/ORBextractor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ORB.dir/ORBextractor.cpp.o -c /home/juo/CLionProjects/thread/ORBextractor.cpp

CMakeFiles/ORB.dir/ORBextractor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ORB.dir/ORBextractor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/juo/CLionProjects/thread/ORBextractor.cpp > CMakeFiles/ORB.dir/ORBextractor.cpp.i

CMakeFiles/ORB.dir/ORBextractor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ORB.dir/ORBextractor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/juo/CLionProjects/thread/ORBextractor.cpp -o CMakeFiles/ORB.dir/ORBextractor.cpp.s

# Object files for target ORB
ORB_OBJECTS = \
"CMakeFiles/ORB.dir/ORBextractor.cpp.o"

# External object files for target ORB
ORB_EXTERNAL_OBJECTS =

ORB: CMakeFiles/ORB.dir/ORBextractor.cpp.o
ORB: CMakeFiles/ORB.dir/build.make
ORB: /usr/local/lib/libopencv_stitching.so.3.4.15
ORB: /usr/local/lib/libopencv_superres.so.3.4.15
ORB: /usr/local/lib/libopencv_videostab.so.3.4.15
ORB: /usr/local/lib/libopencv_aruco.so.3.4.15
ORB: /usr/local/lib/libopencv_bgsegm.so.3.4.15
ORB: /usr/local/lib/libopencv_bioinspired.so.3.4.15
ORB: /usr/local/lib/libopencv_ccalib.so.3.4.15
ORB: /usr/local/lib/libopencv_dnn_objdetect.so.3.4.15
ORB: /usr/local/lib/libopencv_dpm.so.3.4.15
ORB: /usr/local/lib/libopencv_face.so.3.4.15
ORB: /usr/local/lib/libopencv_freetype.so.3.4.15
ORB: /usr/local/lib/libopencv_fuzzy.so.3.4.15
ORB: /usr/local/lib/libopencv_hfs.so.3.4.15
ORB: /usr/local/lib/libopencv_img_hash.so.3.4.15
ORB: /usr/local/lib/libopencv_line_descriptor.so.3.4.15
ORB: /usr/local/lib/libopencv_optflow.so.3.4.15
ORB: /usr/local/lib/libopencv_reg.so.3.4.15
ORB: /usr/local/lib/libopencv_rgbd.so.3.4.15
ORB: /usr/local/lib/libopencv_saliency.so.3.4.15
ORB: /usr/local/lib/libopencv_stereo.so.3.4.15
ORB: /usr/local/lib/libopencv_structured_light.so.3.4.15
ORB: /usr/local/lib/libopencv_surface_matching.so.3.4.15
ORB: /usr/local/lib/libopencv_tracking.so.3.4.15
ORB: /usr/local/lib/libopencv_xfeatures2d.so.3.4.15
ORB: /usr/local/lib/libopencv_ximgproc.so.3.4.15
ORB: /usr/local/lib/libopencv_xobjdetect.so.3.4.15
ORB: /usr/local/lib/libopencv_xphoto.so.3.4.15
ORB: libmultiThread.so
ORB: /usr/local/lib/libopencv_shape.so.3.4.15
ORB: /usr/local/lib/libopencv_highgui.so.3.4.15
ORB: /usr/local/lib/libopencv_videoio.so.3.4.15
ORB: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.15
ORB: /usr/local/lib/libopencv_video.so.3.4.15
ORB: /usr/local/lib/libopencv_datasets.so.3.4.15
ORB: /usr/local/lib/libopencv_plot.so.3.4.15
ORB: /usr/local/lib/libopencv_text.so.3.4.15
ORB: /usr/local/lib/libopencv_dnn.so.3.4.15
ORB: /usr/local/lib/libopencv_ml.so.3.4.15
ORB: /usr/local/lib/libopencv_imgcodecs.so.3.4.15
ORB: /usr/local/lib/libopencv_objdetect.so.3.4.15
ORB: /usr/local/lib/libopencv_calib3d.so.3.4.15
ORB: /usr/local/lib/libopencv_features2d.so.3.4.15
ORB: /usr/local/lib/libopencv_flann.so.3.4.15
ORB: /usr/local/lib/libopencv_photo.so.3.4.15
ORB: /usr/local/lib/libopencv_imgproc.so.3.4.15
ORB: /usr/local/lib/libopencv_core.so.3.4.15
ORB: CMakeFiles/ORB.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/juo/CLionProjects/thread/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ORB"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ORB.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ORB.dir/build: ORB
.PHONY : CMakeFiles/ORB.dir/build

CMakeFiles/ORB.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ORB.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ORB.dir/clean

CMakeFiles/ORB.dir/depend:
	cd /home/juo/CLionProjects/thread/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/juo/CLionProjects/thread /home/juo/CLionProjects/thread /home/juo/CLionProjects/thread/cmake-build-debug /home/juo/CLionProjects/thread/cmake-build-debug /home/juo/CLionProjects/thread/cmake-build-debug/CMakeFiles/ORB.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ORB.dir/depend
