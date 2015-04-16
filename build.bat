mkdir build_vc11_win32
cd build_vc11_win32
cmake ..\libawesome -DCMAKE_INSTALL_PREFIX=%~dp0/libawesome_install
cd ..
cmake --build build_vc11_win32 --config Debug --target install
cmake --build build_vc11_win32 --config Hybrid --target install
cmake --build build_vc11_win32 --config Consumer_Release --target install