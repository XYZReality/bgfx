# GNU Make project makefile autogenerated by GENie

.SUFFIXES:

ifndef config
  config=debug32
endif

ifndef verbose
  SILENT = @
endif

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(MAKESHELL)))
  SHELLTYPE := posix
endif

ifeq (posix,$(SHELLTYPE))
  MKDIR = $(SILENT) mkdir -p "$(1)"
  COPY  = $(SILENT) cp -fR "$(1)" "$(2)"
  RM    = $(SILENT) rm -f "$(1)"
else
  MKDIR = $(SILENT) mkdir "$(subst /,\\,$(1))" 2> nul || exit 0
  COPY  = $(SILENT) copy /Y "$(subst /,\\,$(1))" "$(subst /,\\,$(2))"
  RM    = $(SILENT) del /F "$(subst /,\\,$(1))" 2> nul || exit 0
endif

CC  = gcc
CXX = g++
AR  = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

MAKEFILE = bgfx-shared-lib.make

ifeq ($(config),debug32)
  OBJDIR              = ../../linux32_gcc/obj/x32/Debug/bgfx-shared-lib
  TARGETDIR           = ../../linux32_gcc/bin
  TARGET              = $(TARGETDIR)/libbgfx-shared-libDebug.so
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBGFX_SHARED_LIB_BUILD=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../3rdparty" -I"../../../../bimg/include" -I"../../../../bx/include" -I"../../../3rdparty/directx-headers/include/directx" -I"../../../3rdparty/directx-headers/include" -I"../../../3rdparty/directx-headers/include/wsl/stubs" -I"../../../3rdparty/khronos" -I"../../../include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux32_gcc" -L"." -L"../../linux32_gcc/bin" -shared -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../linux32_gcc/bin/libbimgDebug.a ../../linux32_gcc/bin/libbxDebug.a
  LDDEPS             += ../../linux32_gcc/bin/libbimgDebug.a ../../linux32_gcc/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl -lX11 -lGL -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/bgfx.o \
	$(OBJDIR)/src/debug_renderdoc.o \
	$(OBJDIR)/src/dxgi.o \
	$(OBJDIR)/src/glcontext_egl.o \
	$(OBJDIR)/src/glcontext_glx.o \
	$(OBJDIR)/src/glcontext_html5.o \
	$(OBJDIR)/src/glcontext_wgl.o \
	$(OBJDIR)/src/nvapi.o \
	$(OBJDIR)/src/renderer_agc.o \
	$(OBJDIR)/src/renderer_d3d11.o \
	$(OBJDIR)/src/renderer_d3d12.o \
	$(OBJDIR)/src/renderer_d3d9.o \
	$(OBJDIR)/src/renderer_gl.o \
	$(OBJDIR)/src/renderer_gnm.o \
	$(OBJDIR)/src/renderer_noop.o \
	$(OBJDIR)/src/renderer_nvn.o \
	$(OBJDIR)/src/renderer_vk.o \
	$(OBJDIR)/src/renderer_webgpu.o \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dx9bc.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/topology.o \
	$(OBJDIR)/src/vertexlayout.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = ../../linux32_gcc/obj/x32/Release/bgfx-shared-lib
  TARGETDIR           = ../../linux32_gcc/bin
  TARGET              = $(TARGETDIR)/libbgfx-shared-libRelease.so
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBGFX_SHARED_LIB_BUILD=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../3rdparty" -I"../../../../bimg/include" -I"../../../../bx/include" -I"../../../3rdparty/directx-headers/include/directx" -I"../../../3rdparty/directx-headers/include" -I"../../../3rdparty/directx-headers/include/wsl/stubs" -I"../../../3rdparty/khronos" -I"../../../include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux32_gcc" -L"." -L"../../linux32_gcc/bin" -shared -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../linux32_gcc/bin/libbimgRelease.a ../../linux32_gcc/bin/libbxRelease.a
  LDDEPS             += ../../linux32_gcc/bin/libbimgRelease.a ../../linux32_gcc/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl -lX11 -lGL -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/bgfx.o \
	$(OBJDIR)/src/debug_renderdoc.o \
	$(OBJDIR)/src/dxgi.o \
	$(OBJDIR)/src/glcontext_egl.o \
	$(OBJDIR)/src/glcontext_glx.o \
	$(OBJDIR)/src/glcontext_html5.o \
	$(OBJDIR)/src/glcontext_wgl.o \
	$(OBJDIR)/src/nvapi.o \
	$(OBJDIR)/src/renderer_agc.o \
	$(OBJDIR)/src/renderer_d3d11.o \
	$(OBJDIR)/src/renderer_d3d12.o \
	$(OBJDIR)/src/renderer_d3d9.o \
	$(OBJDIR)/src/renderer_gl.o \
	$(OBJDIR)/src/renderer_gnm.o \
	$(OBJDIR)/src/renderer_noop.o \
	$(OBJDIR)/src/renderer_nvn.o \
	$(OBJDIR)/src/renderer_vk.o \
	$(OBJDIR)/src/renderer_webgpu.o \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dx9bc.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/topology.o \
	$(OBJDIR)/src/vertexlayout.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = ../../linux64_gcc/obj/x64/Debug/bgfx-shared-lib
  TARGETDIR           = ../../linux64_gcc/bin
  TARGET              = $(TARGETDIR)/libbgfx-shared-libDebug.so
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBGFX_SHARED_LIB_BUILD=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../3rdparty" -I"../../../../bimg/include" -I"../../../../bx/include" -I"../../../3rdparty/directx-headers/include/directx" -I"../../../3rdparty/directx-headers/include" -I"../../../3rdparty/directx-headers/include/wsl/stubs" -I"../../../3rdparty/khronos" -I"../../../include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux64_gcc" -L"." -L"../../linux64_gcc/bin" -shared -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../linux64_gcc/bin/libbimgDebug.a ../../linux64_gcc/bin/libbxDebug.a
  LDDEPS             += ../../linux64_gcc/bin/libbimgDebug.a ../../linux64_gcc/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl -lX11 -lGL -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/bgfx.o \
	$(OBJDIR)/src/debug_renderdoc.o \
	$(OBJDIR)/src/dxgi.o \
	$(OBJDIR)/src/glcontext_egl.o \
	$(OBJDIR)/src/glcontext_glx.o \
	$(OBJDIR)/src/glcontext_html5.o \
	$(OBJDIR)/src/glcontext_wgl.o \
	$(OBJDIR)/src/nvapi.o \
	$(OBJDIR)/src/renderer_agc.o \
	$(OBJDIR)/src/renderer_d3d11.o \
	$(OBJDIR)/src/renderer_d3d12.o \
	$(OBJDIR)/src/renderer_d3d9.o \
	$(OBJDIR)/src/renderer_gl.o \
	$(OBJDIR)/src/renderer_gnm.o \
	$(OBJDIR)/src/renderer_noop.o \
	$(OBJDIR)/src/renderer_nvn.o \
	$(OBJDIR)/src/renderer_vk.o \
	$(OBJDIR)/src/renderer_webgpu.o \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dx9bc.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/topology.o \
	$(OBJDIR)/src/vertexlayout.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = ../../linux64_gcc/obj/x64/Release/bgfx-shared-lib
  TARGETDIR           = ../../linux64_gcc/bin
  TARGET              = $(TARGETDIR)/libbgfx-shared-libRelease.so
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBGFX_SHARED_LIB_BUILD=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../3rdparty" -I"../../../../bimg/include" -I"../../../../bx/include" -I"../../../3rdparty/directx-headers/include/directx" -I"../../../3rdparty/directx-headers/include" -I"../../../3rdparty/directx-headers/include/wsl/stubs" -I"../../../3rdparty/khronos" -I"../../../include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux64_gcc" -L"." -L"../../linux64_gcc/bin" -shared -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../linux64_gcc/bin/libbimgRelease.a ../../linux64_gcc/bin/libbxRelease.a
  LDDEPS             += ../../linux64_gcc/bin/libbimgRelease.a ../../linux64_gcc/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl -lX11 -lGL -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/bgfx.o \
	$(OBJDIR)/src/debug_renderdoc.o \
	$(OBJDIR)/src/dxgi.o \
	$(OBJDIR)/src/glcontext_egl.o \
	$(OBJDIR)/src/glcontext_glx.o \
	$(OBJDIR)/src/glcontext_html5.o \
	$(OBJDIR)/src/glcontext_wgl.o \
	$(OBJDIR)/src/nvapi.o \
	$(OBJDIR)/src/renderer_agc.o \
	$(OBJDIR)/src/renderer_d3d11.o \
	$(OBJDIR)/src/renderer_d3d12.o \
	$(OBJDIR)/src/renderer_d3d9.o \
	$(OBJDIR)/src/renderer_gl.o \
	$(OBJDIR)/src/renderer_gnm.o \
	$(OBJDIR)/src/renderer_noop.o \
	$(OBJDIR)/src/renderer_nvn.o \
	$(OBJDIR)/src/renderer_vk.o \
	$(OBJDIR)/src/renderer_webgpu.o \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dx9bc.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/topology.o \
	$(OBJDIR)/src/vertexlayout.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug)
  OBJDIR              = obj/Debug/bgfx-shared-lib
  TARGETDIR           = ../../../scripts
  TARGET              = $(TARGETDIR)/libbgfx-shared-libDebug.so
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBGFX_SHARED_LIB_BUILD=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../3rdparty" -I"../../../../bimg/include" -I"../../../../bx/include" -I"../../../3rdparty/directx-headers/include/directx" -I"../../../3rdparty/directx-headers/include" -I"../../../3rdparty/directx-headers/include/wsl/stubs" -I"../../../3rdparty/khronos" -I"../../../include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -fPIC -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"." -L"../../../../bimg/scripts" -L"../../../../bx/scripts" -shared -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../../../bimg/scripts/libbimgDebug.a ../../../../bx/scripts/libbxDebug.a
  LDDEPS             += ../../../../bimg/scripts/libbimgDebug.a ../../../../bx/scripts/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl -lX11 -lGL -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/bgfx.o \
	$(OBJDIR)/src/debug_renderdoc.o \
	$(OBJDIR)/src/dxgi.o \
	$(OBJDIR)/src/glcontext_egl.o \
	$(OBJDIR)/src/glcontext_glx.o \
	$(OBJDIR)/src/glcontext_html5.o \
	$(OBJDIR)/src/glcontext_wgl.o \
	$(OBJDIR)/src/nvapi.o \
	$(OBJDIR)/src/renderer_agc.o \
	$(OBJDIR)/src/renderer_d3d11.o \
	$(OBJDIR)/src/renderer_d3d12.o \
	$(OBJDIR)/src/renderer_d3d9.o \
	$(OBJDIR)/src/renderer_gl.o \
	$(OBJDIR)/src/renderer_gnm.o \
	$(OBJDIR)/src/renderer_noop.o \
	$(OBJDIR)/src/renderer_nvn.o \
	$(OBJDIR)/src/renderer_vk.o \
	$(OBJDIR)/src/renderer_webgpu.o \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dx9bc.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/topology.o \
	$(OBJDIR)/src/vertexlayout.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR              = obj/Release/bgfx-shared-lib
  TARGETDIR           = ../../../scripts
  TARGET              = $(TARGETDIR)/libbgfx-shared-libRelease.so
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBGFX_SHARED_LIB_BUILD=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../3rdparty" -I"../../../../bimg/include" -I"../../../../bx/include" -I"../../../3rdparty/directx-headers/include/directx" -I"../../../3rdparty/directx-headers/include" -I"../../../3rdparty/directx-headers/include/wsl/stubs" -I"../../../3rdparty/khronos" -I"../../../include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -fPIC -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"." -L"../../../../bimg/scripts" -L"../../../../bx/scripts" -shared -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../../../bimg/scripts/libbimgRelease.a ../../../../bx/scripts/libbxRelease.a
  LDDEPS             += ../../../../bimg/scripts/libbimgRelease.a ../../../../bx/scripts/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl -lX11 -lGL -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/bgfx.o \
	$(OBJDIR)/src/debug_renderdoc.o \
	$(OBJDIR)/src/dxgi.o \
	$(OBJDIR)/src/glcontext_egl.o \
	$(OBJDIR)/src/glcontext_glx.o \
	$(OBJDIR)/src/glcontext_html5.o \
	$(OBJDIR)/src/glcontext_wgl.o \
	$(OBJDIR)/src/nvapi.o \
	$(OBJDIR)/src/renderer_agc.o \
	$(OBJDIR)/src/renderer_d3d11.o \
	$(OBJDIR)/src/renderer_d3d12.o \
	$(OBJDIR)/src/renderer_d3d9.o \
	$(OBJDIR)/src/renderer_gl.o \
	$(OBJDIR)/src/renderer_gnm.o \
	$(OBJDIR)/src/renderer_noop.o \
	$(OBJDIR)/src/renderer_nvn.o \
	$(OBJDIR)/src/renderer_vk.o \
	$(OBJDIR)/src/renderer_webgpu.o \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dx9bc.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/topology.o \
	$(OBJDIR)/src/vertexlayout.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/src \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) $(TARGETDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LIBDEPS) $(EXTERNAL_LIBS) $(RESOURCES) $(OBJRESP) $(LDRESP) | $(TARGETDIR) $(OBJDIRS)
	@echo Linking bgfx-shared-lib
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(@)
	-$(call MKDIR,$@)

clean:
	@echo Cleaning bgfx-shared-lib
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH) $(MAKEFILE) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) -x c++-header $(DEFINES) $(INCLUDES) -o "$@" -c "$<"

$(GCH_OBJC): $(PCH) $(MAKEFILE) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) -x objective-c++-header $(DEFINES) $(INCLUDES) -o "$@" -c "$<"
endif

ifneq (,$(OBJRESP))
$(OBJRESP): $(OBJECTS) | $(TARGETDIR) $(OBJDIRS)
	$(SILENT) echo $^
	$(SILENT) echo $^ > $@
endif

ifneq (,$(LDRESP))
$(LDRESP): $(LDDEPS) | $(TARGETDIR) $(OBJDIRS)
	$(SILENT) echo $^
	$(SILENT) echo $^ > $@
endif

$(OBJDIR)/src/bgfx.o: ../../../src/bgfx.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/debug_renderdoc.o: ../../../src/debug_renderdoc.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/dxgi.o: ../../../src/dxgi.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/glcontext_eagl.o: ../../../src/glcontext_eagl.mm $(GCH_OBJC) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) $(FORCE_INCLUDE_OBJC) -o "$@" -c "$<"

$(OBJDIR)/src/glcontext_egl.o: ../../../src/glcontext_egl.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/glcontext_glx.o: ../../../src/glcontext_glx.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/glcontext_html5.o: ../../../src/glcontext_html5.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/glcontext_nsgl.o: ../../../src/glcontext_nsgl.mm $(GCH_OBJC) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) $(FORCE_INCLUDE_OBJC) -o "$@" -c "$<"

$(OBJDIR)/src/glcontext_wgl.o: ../../../src/glcontext_wgl.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/nvapi.o: ../../../src/nvapi.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_agc.o: ../../../src/renderer_agc.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_d3d11.o: ../../../src/renderer_d3d11.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_d3d12.o: ../../../src/renderer_d3d12.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_d3d9.o: ../../../src/renderer_d3d9.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_gl.o: ../../../src/renderer_gl.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_gnm.o: ../../../src/renderer_gnm.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_mtl.o: ../../../src/renderer_mtl.mm $(GCH_OBJC) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) $(FORCE_INCLUDE_OBJC) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_noop.o: ../../../src/renderer_noop.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_nvn.o: ../../../src/renderer_nvn.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_vk.o: ../../../src/renderer_vk.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/renderer_webgpu.o: ../../../src/renderer_webgpu.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/shader.o: ../../../src/shader.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/shader_dx9bc.o: ../../../src/shader_dx9bc.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/shader_dxbc.o: ../../../src/shader_dxbc.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/shader_spirv.o: ../../../src/shader_spirv.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/topology.o: ../../../src/topology.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/vertexlayout.o: ../../../src/vertexlayout.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
