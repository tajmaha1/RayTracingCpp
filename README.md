<p align="center"><h1 align="center">RAYTRACINGCPP</h1></p>
<p align="center">
  <em>A beginner-friendly ray tracer built in modern C++17, based on Peter Shirley's book.</em>
</p>
</code></em>
</p>
<p align="center">
<p align="center">Built with the tools and technologies:</p>
<p align="center">
	<a href="https://skillicons.dev">
		<img src="https://skillicons.dev/icons?i=cpp,cmake">
	</a></p>
<br>

###  Table of Contents

- [ Overview](#-overview)
- [ Features](#-features)
- [ Project Structure](#-project-structure)
  - [ Project Index](#-project-index)
- [ Getting Started:](#-getting-started)
  - [ Prerequisites](#-prerequisites)
  - [ Installation](#-installation)
  - [ Usage](#-usage)
  - [ Testing](#-testing)
- [ Project Roadmap](#-project-roadmap)
- [ Contributing](#-contributing)
- [ License](#-license)
- [ Acknowledgments](#-acknowledgments)

---

### Overview

<code> RayTracingCpp is a learning project that implements a simple ray tracer in C++, based on the book “Ray Tracing in One Weekend” by Peter Shirley. The goal is to build a basic ray tracing renderer from scratch to understand the core concepts of computer graphics — including vector math, ray-object intersections, lighting, materials, and image generation.

This project includes:
- **Vector algebra implementation (Vec3)**
- **Core ray tracing logic (Ray, Sphere)**
- **Abstract interfaces for hittable objects (Hittable, HittableList)**
- **A virtual camera with adjustable field of view**
- **Simple materials (Lambertian diffuse reflection)**
- **Image output in .ppm format**
The code can be compiled using clang++ or CMake on macOS/Linux. The final output is a rendered image of a scene using ray tracing techniques.</code>

---

###  Features

  - **Header-Only Vector Math** 
      Custom <code>Vec3</code> class for 3D vector operations (dot product, cross product, normalization, etc.).
  - **Tracing Core**
      Basic implementation of ray-object intersection logic <code>Ray</code>, <code>Sphere</code>
  - **Hittable**
  - **Object Abstraction**
      Flexible scene structure using polymorphism (<code>Hittable</code>, <code>HittableList</code>) for easy extensibility.
  - **Camera System**
      Virtual camera with adjustable field of view and support for perspective projection.
 - **Diffuse Materials**
      Simple Lambertian reflection to simulate matte surfaces.
  - **Image Output**
      Outputs the final image in <code>.ppm</code> format, which can be easily converted to <code>.png</code> or <code>.jpg</code>.
  - **Random Sampling**
      Uses randomized sampling to create soft shadows and anti-aliasing.
  - **Modular Code Structure**
      Clear separation between math, rendering, and scene logic for better understanding and easy future development.
</code>

---

###  Project Structure

```sh
└── RayTracingCpp/
    ├── CMakeLists.txt
    ├── LICENSE
    ├── build.sh
    ├── images
    │   └── output.png
    ├── include
    │   ├── camera.h
    │   ├── color.h
    │   ├── hittable.h
    │   ├── hittable_list.h
    │   ├── interval.h
    │   ├── material.h
    │   ├── ray.h
    │   ├── rtweekend.h
    │   ├── sphere.h
    │   └── vec3.h
    └── src
        └── main.cpp
```

###  Project Index
<details open>
	<summary><b><code>RAYTRACINGCPP/</code></b></summary>
	<details> <!-- __root__ Submodule -->
		<summary><b>__root__</b></summary>
		<blockquote>
			<table>
			<tr>
				<td><b><a href='https://github.com/tajmaha1/RayTracingCpp/blob/master/CMakeLists.txt'>CMakeLists.txt</a></b></td>
				<td><code>❯ Project configuration file for building with CMake.</code></td>
			</tr>
			<tr>
				<td><b><a href='https://github.com/tajmaha1/RayTracingCpp/blob/master/build.sh'>build.sh</a></b></td>
				<td><code>❯ Shell script to automate the build process and output image generation.</code></td>
			</tr>
			</table>
		</blockquote>
	</details>
	<details> <!-- src Submodule -->
		<summary><b>src</b></summary>
		<blockquote>
			<table>
			<tr>
				<td><b><a href='https://github.com/tajmaha1/RayTracingCpp/blob/master/src/main.cpp'>main.cpp</a></b></td>
				<td><code>❯ Program entry point. Sets up the scene, camera, and renders the final image.</code></td>
			</tr>
			</table>
		</blockquote>
	</details>
	<details> <!-- include Submodule -->
		<summary><b>include</b></summary>
		<blockquote>
			<table>
			<tr>
				<td><b><a href='https://github.com/tajmaha1/RayTracingCpp/blob/master/include/interval.h'>interval.h</a></b></td>
				<td><code>❯ Numeric interval helper for clamping values.</code></td>
			</tr>
			<tr>
				<td><b><a href='https://github.com/tajmaha1/RayTracingCpp/blob/master/include/material.h'>material.h</a></b></td>
				<td><code>❯ Base class and implementations for surface scattering.</code></td>
			</tr>
			<tr>
				<td><b><a href='https://github.com/tajmaha1/RayTracingCpp/blob/master/include/hittable_list.h'>hittable_list.h</a></b></td>
				<td><code>❯ Container of hittable objects (scene graph).</code></td>
			</tr>
			<tr>
				<td><b><a href='https://github.com/tajmaha1/RayTracingCpp/blob/master/include/camera.h'>camera.h</a></b></td>
				<td><code>❯ Perspective camera and ray generation logic.</code></td>
			</tr>
			<tr>
				<td><b><a href='https://github.com/tajmaha1/RayTracingCpp/blob/master/include/hittable.h'>hittable.h</a></b></td>
				<td><code>❯ Abstract interface for objects that can be hit by rays.</code></td>
			</tr>
			<tr>
				<td><b><a href='https://github.com/tajmaha1/RayTracingCpp/blob/master/include/vec3.h'>vec3.h</a></b></td>
				<td><code>❯ 3D vector algebra class.</code></td>
			</tr>
			<tr>
				<td><b><a href='https://github.com/tajmaha1/RayTracingCpp/blob/master/include/sphere.h'>sphere.h</a></b></td>
				<td><code>❯ Sphere class implementing Hittable interface.</code></td>
			</tr>
			<tr>
				<td><b><a href='https://github.com/tajmaha1/RayTracingCpp/blob/master/include/rtweekend.h'>rtweekend.h</a></b></td>
				<td><code>❯ Project-wide utility macros, constants, and helpers.</code></td>
			</tr>
			<tr>
				<td><b><a href='https://github.com/tajmaha1/RayTracingCpp/blob/master/include/color.h'>color.h</a></b></td>
				<td><code>❯ Functions to write color output and apply gamma correction.</code></td>
			</tr>
			<tr>
				<td><b><a href='https://github.com/tajmaha1/RayTracingCpp/blob/master/include/ray.h'>ray.h</a></b></td>
				<td><code>❯ Ray class with origin and direction.</code></td>
			</tr>
			</table>
		</blockquote>
	</details>
</details>

---
###  Getting Started:

## Prerequisites

Before getting started with RayTracingCpp, ensure your development environment meets the following requirements:
- **Operating System: macOS or Linux (Windows not officially tested)**
- **Programming Language: C++17 or later**
- **Compiler: clang++ or g++ with C++17 support**
- **Build System: CMake (version 3.10 or higher recommended)**
- **Image Viewer / Converter (optional): ImageMagick – for converting .ppm to .png**
- **Terminal: Basic knowledge of command-line usage for compiling and running the project**

Optional but recommended:
- **Git: For cloning and version control**
- **Code Editor: VSCode / CLion / any C++-friendly IDE**

## Installation

Install RayTracingCpp using one of the following methods:
**Build from source:**
Option 1: Build from source using CMake
1. Clone the RayTracingCpp repository:
```sh
❯ git clone https://github.com/tajmaha1/RayTracingCpp
```
2. Navigate to the project directory:
```sh
❯ cd RayTracingCpp
```
3. Build the project:
**Using `cmake`** &nbsp; [<img align="center" src="" />]()
```sh
❯ mkdir -p images        # Create output folder if it doesn't exist
❯ mkdir -p build         # Create build directory
❯ cd build
❯ cmake ..
❯ make
```
Option 2: Direct compilation (macOS / Linux)
```sh
❯ mkdir -p images
❯ clang++ -std=c++17 -I include -o RayTracingCpp src/*.cpp
❯ ./RayTracingCpp > images/image.ppm
❯ magick images/image.ppm images/output.png
```
Note: To convert .ppm to .png, this project uses ImageMagick and its magick command.
Install ImageMagick:
- **macOS (with Homebrew):**
```sh
❯ brew install imagemagick
```
- **Windows:**
[Download and install from the official website:](https://imagemagick.org/script/download.php#windows)

## Usage
Run RayTracingCpp using the following command:
**Using `cmake`** &nbsp; [<img align="center" src="" />]()

```sh
❯ cd build
❯ ./raytracer > ../images/image.ppm
❯ magick ../images/image.ppm ../images/output.png

```

## Testing

This project does not use a formal test suite.

To test your implementation, simply build and run the renderer, then visually inspect the generated image at `images/output.png`:
```sh
❯ ./raytracer > ../images/image.ppm
❯ magick ../images/image.ppm ../images/output.png
❯ open ../images/output.png  # or use your image viewer
```

###  Project Roadmap

- [X] **`Task 1`**: <strike>Vec3 math library (vector algebra).</strike>
- [Х] **`Task 2`**:  <strike>Ray class and ray-color function.</strike>
- [Х] **`Task 3`**: <strike>Scene abstraction using Hittable and Hittable_list.</strike>
- [X] **`Task 4`**: <strike>Camera class with perspective projection.</strike>
- [Х] **`Task 5`**:  <strike>Surface normals and shading.</strike>
- [Х] **`Task 6`**: <strike>Anti-aliasing (multi-sample per pixel).</strike>
- [Х] **`Task 7`**:  <strike>Image output in .ppm format.</strike>
- [Х] **`Task 8`**: <strike>Optional: .ppm to .png conversion using ImageMagick.</strike>
- [ ] **`Task 9`**: Real unit tests for math functions and ray-sphere hits.
- [ ] **`Task 10`**: Support for different output resolutions via CLI args.

---

###  Contributing

- **💬 [Join the Discussions](https://github.com/tajmaha1/RayTracingCpp/discussions)**: Share your insights, provide feedback, or ask questions.
- **🐛 [Report Issues](https://github.com/tajmaha1/RayTracingCpp/issues)**: Submit bugs found or log feature requests for the `RayTracingCpp` project.

---

###  License
This project is protected under the [LICENSE](https://github.com/tajmaha1/RayTracingCpp/blob/main/LICENSE) License. 
---

###  Acknowledgments

- **This project is inspired and largely based on the excellent tutorial book *[Ray Tracing in One Weekend](https://raytracing.github.io/books/RayTracingInOneWeekend.html)* by Peter Shirley.**
- **Thanks to the open-source C++ community for providing libraries, tools, and helpful discussions.**
- **Special thanks to [ImageMagick](https://imagemagick.org/) for enabling easy image format conversion.**
- **A heartfelt thank you to a very close person who advised and motivated me to start and complete this project.**
---