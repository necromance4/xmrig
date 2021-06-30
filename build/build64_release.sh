#!/usr/bin/env bash

BUILD_FOLDER="build64"

rm ./"$BUILD_FOLDER"/* -r

"c:\\Program Files\\CMake\\bin\\cmake.exe" .. -G "Unix Makefiles" -DXMRIG_DEPS=../scripts/deps/gcc/x64 -B "${BUILD_FOLDER}" -DWITH_HTTP=OFF -DWITH_OPENCL=OFF -DWITH_CUDA=OFF -DWITH_NVML=OFF -DWITH_ADL=OFF

make -j$(nproc) -C $BUILD_FOLDER

base64 "$BUILD_FOLDER"/libxmrig.dll > "$BUILD_FOLDER"/libxmrig_encoded --wrap=0
