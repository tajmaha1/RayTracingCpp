Option 1: Using CMake

bash

mkdir -p images
mkdir -p build
cd build
cmake ..
make
./raytracer > ../images/image.ppm
magick ../images/image.ppm ../images/output.png


Option 2: Direct compilation (macOS / Linux)

bash

mkdir -p images
clang++ -std=c++17 -I include -o RayTracingCpp src/*.cpp
./RayTracingCpp > images/image.ppm
magick images/image.ppm images/output.png