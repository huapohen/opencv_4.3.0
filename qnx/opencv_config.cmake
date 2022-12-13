if(${CMAKE_SYSTEM_NAME} STREQUAL QNX)
  add_library(opencv_calib3d STATIC IMPORTED )
  message("opencv  ${CMAKE_CURRENT_LIST_DIR}")
  set_target_properties(opencv_calib3d PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/libopencv_calib3d.a")

  add_library(opencv_core STATIC IMPORTED )
  set_target_properties(opencv_core PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/libopencv_core.a")

  add_library(opencv_features2d STATIC IMPORTED )
  set_target_properties(opencv_features2d PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/libopencv_features2d.a")

  add_library(opencv_flann STATIC IMPORTED )
  set_target_properties(opencv_flann PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/libopencv_flann.a")

  add_library(opencv_highgui STATIC IMPORTED )
  set_target_properties(opencv_highgui PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/libopencv_highgui.a")

  add_library(opencv_imgcodecs STATIC IMPORTED )
  set_target_properties(opencv_imgcodecs PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/libopencv_imgcodecs.a")

  add_library(opencv_imgproc STATIC IMPORTED )
  set_target_properties(opencv_imgproc PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/libopencv_imgproc.a")

  add_library(opencv_ml STATIC IMPORTED )
  set_target_properties(opencv_ml PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/libopencv_ml.a")

  add_library(opencv_objdetect STATIC IMPORTED )
  set_target_properties(opencv_objdetect PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/libopencv_objdetect.a")

  add_library(opencv_photo STATIC IMPORTED )
  set_target_properties(opencv_photo PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/libopencv_photo.a")

  add_library(opencv_stitching STATIC IMPORTED )
  set_target_properties(opencv_stitching PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/libopencv_stitching.a")

  add_library(opencv_video STATIC IMPORTED )
  set_target_properties(opencv_video PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/libopencv_video.a")

  add_library(opencv_videoio STATIC IMPORTED )
  set_target_properties(opencv_videoio PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/libopencv_videoio.a")

  add_library(libjpeg-turbo STATIC IMPORTED )
  set_target_properties(libjpeg-turbo PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/opencv4/3rdparty/liblibjpeg-turbo.a")

  add_library(libpng STATIC IMPORTED )
  set_target_properties(libpng PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/opencv4/3rdparty/liblibpng.a")

  add_library(libjasper STATIC IMPORTED )
  set_target_properties(libjasper PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/opencv4/3rdparty/liblibjasper.a")

  add_library(libtiff STATIC IMPORTED )
  set_target_properties(libtiff PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/opencv4/3rdparty/liblibtiff.a")

  add_library(libwebp STATIC IMPORTED )
  set_target_properties(libwebp PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/opencv4/3rdparty/liblibwebp.a")

  add_library(libzlib STATIC IMPORTED )
  set_target_properties(libzlib PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/opencv4/3rdparty/libzlib.a")

  add_library(libittnotify STATIC IMPORTED )
  set_target_properties(libittnotify PROPERTIES
      IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/qnx/lib/opencv4/3rdparty/libittnotify.a")


  set(OpenCV_INCLUDE_DIRS ${CMAKE_CURRENT_LIST_DIR}/qnx/include/opencv4)
  set(OpenCV_LIBS
          opencv_video
          opencv_imgcodecs
          opencv_imgproc
          opencv_core
          opencv_videoio
          opencv_features2d
          opencv_calib3d
          opencv_ml
          opencv_objdetect
          opencv_photo
          opencv_stitching
          opencv_flann
          opencv_highgui
          libpng
          libjpeg-turbo
          libjasper
          libtiff
          libwebp
          libzlib
          opencv_core
          opencv_imgproc
          libittnotify
          )
else()
    find_package(OpenCV 4.3.0 REQUIRED)
endif()
