Option 1: Using CMake

bash

mkdir -p images(if this folder does not exist)
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



To convert .ppm files to .png, the project uses ImageMagick's magick command.

If magick is not installed, install it as follows:

macOS (using Homebrew):

brew install imagemagick

Windows:

Download and install from the official website:
https://imagemagick.org/script/download.php#windows

After installing magick, you can convert .ppm to .png using:

magick images/image.ppm images/output.png

