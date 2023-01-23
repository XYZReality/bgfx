bgfx - Cross-platform rendering library (XYZ Reality fork)
============================================================================

What is it?
-----------

Cross-platform, graphics API agnostic, "Bring Your Own Engine/Framework" style
rendering library. This is our customized fork with some modifications like added project files for all 
platforms, added support for Linux ARM builds (for nVidia Orin), some other code changes to match our use-case.

To read the original project's readme please go to: https://github.com/XYZReality/bgfx/blob/master/Original_README.md

Supported rendering backends:

 * Direct3D 9
 * Direct3D 11
 * Direct3D 12
 * GNM (only for licensed PS4 developers, search DevNet forums for source)
 * Metal
 * OpenGL 2.1
 * OpenGL 3.1+
 * OpenGL ES 2
 * OpenGL ES 3.1
 * Vulkan
 * WebGL 1.0
 * WebGL 2.0
 * WebGPU/Dawn (experimental)

Supported platforms:

 * Android (14+, ARM, x86, MIPS)
 * FreeBSD
 * iOS (iPhone, iPad, AppleTV)
 * Linux
 * MIPS Creator CI20
 * OSX (10.12+)
 * PlayStation 4
 * RaspberryPi
 * UWP (Universal Windows, Xbox One)
 * Wasm/Emscripten
 * Windows (XP, Vista, 7, 8, 10)

Supported compilers:

 * Clang 3.3 and above
 * GCC 5 and above
 * VS2017 and above

Building
--------
The project files are already built and injected to our forked repo, so it is now quite easy to build the library.<br>

**Windows:**
```
1- Create some folder
2- cd to the created folder
3- Clone https://github.com/XYZReality/bgfx repo to that folder
4- Clone https://github.com/XYZReality/bx repo to the same folder
5- Clone https://github.com/XYZReality/bimg repo to the same folder
6- Open <folder>/bgfx/.build/projects/vs2022/bgfx.sln in your Visual Studio
7- Build
```
<br>

**Linux:** <br>
On a **x86/x64** archtecture Linux machine:
```
$ mkdir bgfxroot
$ cd bgfxroot
$ git clone git@github.com:XYZReality/bgfx.git
$ git clone git@github.com:XYZReality/bx.git
$ git clone git@github.com:XYZReality/bimg.git
$ cd bgfx 
$ make linux
```

On an **ARM** architecture Linux machine:
```
$ mkdir bgfxroot
$ cd bgfxroot
$ git clone git@github.com:XYZReality/bgfx.git
$ git clone git@github.com:XYZReality/bx.git
$ git clone git@github.com:XYZReality/bimg.git
$ cd bgfx 
$ make linux-arm
```

On **nVidia Orin** SBC board:
```
$ mkdir bgfxroot
$ cd bgfxroot
$ git clone git@github.com:XYZReality/bgfx.git
$ git clone git@github.com:XYZReality/bx.git
$ git clone git@github.com:XYZReality/bimg.git
$ cd bgfx 
$ make orin
```

Based on the CPU architecture of the machine you are building this on, it will generate the binaries in either 
**bgfxroot/bgfx/.build/linux64_gcc** or **bgfxroot/bgfx/.build/linux32_arm_gcc** or **bgfxroot/bgfx/.build/orin** folder.

[License (BSD 2-clause)](https://bkaradzic.github.io/bgfx/license.html)
-----------------------------------------------------------------------

<a href="http://opensource.org/licenses/BSD-2-Clause" target="_blank">
<img align="right" src="http://opensource.org/trademarks/opensource/OSI-Approved-License-100x137.png">
</a>

	Copyright 2010-2023 Branimir Karadzic
	
	Redistribution and use in source and binary forms, with or without modification,
	are permitted provided that the following conditions are met:
	
	   1. Redistributions of source code must retain the above copyright notice, this
	      list of conditions and the following disclaimer.
	
	   2. Redistributions in binary form must reproduce the above copyright notice,
	      this list of conditions and the following disclaimer in the documentation
	      and/or other materials provided with the distribution.
	
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
	ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
	WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
	IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
	INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
	BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
	DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
	OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
	OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
	OF THE POSSIBILITY OF SUCH DAMAGE.
