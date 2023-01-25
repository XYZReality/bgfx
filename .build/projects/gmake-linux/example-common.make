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

MAKEFILE = example-common.make

ifeq ($(config),debug32)
  OBJDIR              = ../../linux32_gcc/obj/x32/Debug/example-common
  TARGETDIR           = ../../linux32_gcc/bin
  TARGET              = $(TARGETDIR)/libexample-commonDebug.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux32_gcc" -L"." -L"../../linux32_gcc/bin" -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../linux32_gcc/bin/libbxDebug.a
  LDDEPS             += ../../linux32_gcc/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/3rdparty/dear-imgui/imgui.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_demo.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_draw.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_tables.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_widgets.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/allocator.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/clusterizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/indexcodec.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/indexgenerator.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/overdrawanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/overdrawoptimizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/simplifier.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/spatialorder.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/stripifier.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vcacheanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vcacheoptimizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vertexcodec.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vertexfilter.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vfetchanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vfetchoptimizer.o \
	$(OBJDIR)/examples/common/bgfx_utils.o \
	$(OBJDIR)/examples/common/camera.o \
	$(OBJDIR)/examples/common/cube_atlas.o \
	$(OBJDIR)/examples/common/debugdraw/debugdraw.o \
	$(OBJDIR)/examples/common/entry/cmd.o \
	$(OBJDIR)/examples/common/entry/dialog.o \
	$(OBJDIR)/examples/common/entry/entry.o \
	$(OBJDIR)/examples/common/entry/entry_android.o \
	$(OBJDIR)/examples/common/entry/entry_glfw.o \
	$(OBJDIR)/examples/common/entry/entry_html5.o \
	$(OBJDIR)/examples/common/entry/entry_noop.o \
	$(OBJDIR)/examples/common/entry/entry_sdl.o \
	$(OBJDIR)/examples/common/entry/entry_windows.o \
	$(OBJDIR)/examples/common/entry/entry_x11.o \
	$(OBJDIR)/examples/common/entry/input.o \
	$(OBJDIR)/examples/common/font/font_manager.o \
	$(OBJDIR)/examples/common/font/text_buffer_manager.o \
	$(OBJDIR)/examples/common/font/text_metrics.o \
	$(OBJDIR)/examples/common/font/utf8.o \
	$(OBJDIR)/examples/common/imgui/imgui.o \
	$(OBJDIR)/examples/common/nanovg/nanovg.o \
	$(OBJDIR)/examples/common/nanovg/nanovg_bgfx.o \
	$(OBJDIR)/examples/common/ps/particle_system.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = ../../linux32_gcc/obj/x32/Release/example-common
  TARGETDIR           = ../../linux32_gcc/bin
  TARGET              = $(TARGETDIR)/libexample-commonRelease.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux32_gcc" -L"." -L"../../linux32_gcc/bin" -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../linux32_gcc/bin/libbxRelease.a
  LDDEPS             += ../../linux32_gcc/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/3rdparty/dear-imgui/imgui.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_demo.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_draw.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_tables.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_widgets.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/allocator.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/clusterizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/indexcodec.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/indexgenerator.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/overdrawanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/overdrawoptimizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/simplifier.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/spatialorder.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/stripifier.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vcacheanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vcacheoptimizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vertexcodec.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vertexfilter.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vfetchanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vfetchoptimizer.o \
	$(OBJDIR)/examples/common/bgfx_utils.o \
	$(OBJDIR)/examples/common/camera.o \
	$(OBJDIR)/examples/common/cube_atlas.o \
	$(OBJDIR)/examples/common/debugdraw/debugdraw.o \
	$(OBJDIR)/examples/common/entry/cmd.o \
	$(OBJDIR)/examples/common/entry/dialog.o \
	$(OBJDIR)/examples/common/entry/entry.o \
	$(OBJDIR)/examples/common/entry/entry_android.o \
	$(OBJDIR)/examples/common/entry/entry_glfw.o \
	$(OBJDIR)/examples/common/entry/entry_html5.o \
	$(OBJDIR)/examples/common/entry/entry_noop.o \
	$(OBJDIR)/examples/common/entry/entry_sdl.o \
	$(OBJDIR)/examples/common/entry/entry_windows.o \
	$(OBJDIR)/examples/common/entry/entry_x11.o \
	$(OBJDIR)/examples/common/entry/input.o \
	$(OBJDIR)/examples/common/font/font_manager.o \
	$(OBJDIR)/examples/common/font/text_buffer_manager.o \
	$(OBJDIR)/examples/common/font/text_metrics.o \
	$(OBJDIR)/examples/common/font/utf8.o \
	$(OBJDIR)/examples/common/imgui/imgui.o \
	$(OBJDIR)/examples/common/nanovg/nanovg.o \
	$(OBJDIR)/examples/common/nanovg/nanovg_bgfx.o \
	$(OBJDIR)/examples/common/ps/particle_system.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = ../../linux64_gcc/obj/x64/Debug/example-common
  TARGETDIR           = ../../linux64_gcc/bin
  TARGET              = $(TARGETDIR)/libexample-commonDebug.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux64_gcc" -L"." -L"../../linux64_gcc/bin" -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../linux64_gcc/bin/libbxDebug.a
  LDDEPS             += ../../linux64_gcc/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/3rdparty/dear-imgui/imgui.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_demo.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_draw.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_tables.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_widgets.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/allocator.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/clusterizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/indexcodec.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/indexgenerator.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/overdrawanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/overdrawoptimizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/simplifier.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/spatialorder.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/stripifier.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vcacheanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vcacheoptimizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vertexcodec.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vertexfilter.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vfetchanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vfetchoptimizer.o \
	$(OBJDIR)/examples/common/bgfx_utils.o \
	$(OBJDIR)/examples/common/camera.o \
	$(OBJDIR)/examples/common/cube_atlas.o \
	$(OBJDIR)/examples/common/debugdraw/debugdraw.o \
	$(OBJDIR)/examples/common/entry/cmd.o \
	$(OBJDIR)/examples/common/entry/dialog.o \
	$(OBJDIR)/examples/common/entry/entry.o \
	$(OBJDIR)/examples/common/entry/entry_android.o \
	$(OBJDIR)/examples/common/entry/entry_glfw.o \
	$(OBJDIR)/examples/common/entry/entry_html5.o \
	$(OBJDIR)/examples/common/entry/entry_noop.o \
	$(OBJDIR)/examples/common/entry/entry_sdl.o \
	$(OBJDIR)/examples/common/entry/entry_windows.o \
	$(OBJDIR)/examples/common/entry/entry_x11.o \
	$(OBJDIR)/examples/common/entry/input.o \
	$(OBJDIR)/examples/common/font/font_manager.o \
	$(OBJDIR)/examples/common/font/text_buffer_manager.o \
	$(OBJDIR)/examples/common/font/text_metrics.o \
	$(OBJDIR)/examples/common/font/utf8.o \
	$(OBJDIR)/examples/common/imgui/imgui.o \
	$(OBJDIR)/examples/common/nanovg/nanovg.o \
	$(OBJDIR)/examples/common/nanovg/nanovg_bgfx.o \
	$(OBJDIR)/examples/common/ps/particle_system.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = ../../linux64_gcc/obj/x64/Release/example-common
  TARGETDIR           = ../../linux64_gcc/bin
  TARGET              = $(TARGETDIR)/libexample-commonRelease.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux64_gcc" -L"." -L"../../linux64_gcc/bin" -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../linux64_gcc/bin/libbxRelease.a
  LDDEPS             += ../../linux64_gcc/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/3rdparty/dear-imgui/imgui.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_demo.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_draw.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_tables.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_widgets.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/allocator.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/clusterizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/indexcodec.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/indexgenerator.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/overdrawanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/overdrawoptimizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/simplifier.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/spatialorder.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/stripifier.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vcacheanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vcacheoptimizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vertexcodec.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vertexfilter.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vfetchanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vfetchoptimizer.o \
	$(OBJDIR)/examples/common/bgfx_utils.o \
	$(OBJDIR)/examples/common/camera.o \
	$(OBJDIR)/examples/common/cube_atlas.o \
	$(OBJDIR)/examples/common/debugdraw/debugdraw.o \
	$(OBJDIR)/examples/common/entry/cmd.o \
	$(OBJDIR)/examples/common/entry/dialog.o \
	$(OBJDIR)/examples/common/entry/entry.o \
	$(OBJDIR)/examples/common/entry/entry_android.o \
	$(OBJDIR)/examples/common/entry/entry_glfw.o \
	$(OBJDIR)/examples/common/entry/entry_html5.o \
	$(OBJDIR)/examples/common/entry/entry_noop.o \
	$(OBJDIR)/examples/common/entry/entry_sdl.o \
	$(OBJDIR)/examples/common/entry/entry_windows.o \
	$(OBJDIR)/examples/common/entry/entry_x11.o \
	$(OBJDIR)/examples/common/entry/input.o \
	$(OBJDIR)/examples/common/font/font_manager.o \
	$(OBJDIR)/examples/common/font/text_buffer_manager.o \
	$(OBJDIR)/examples/common/font/text_metrics.o \
	$(OBJDIR)/examples/common/font/utf8.o \
	$(OBJDIR)/examples/common/imgui/imgui.o \
	$(OBJDIR)/examples/common/nanovg/nanovg.o \
	$(OBJDIR)/examples/common/nanovg/nanovg_bgfx.o \
	$(OBJDIR)/examples/common/ps/particle_system.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug)
  OBJDIR              = obj/Debug/example-common
  TARGETDIR           = ../../../scripts
  TARGET              = $(TARGETDIR)/libexample-commonDebug.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"." -L"../../../../bx/scripts" -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../../../bx/scripts/libbxDebug.a
  LDDEPS             += ../../../../bx/scripts/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/3rdparty/dear-imgui/imgui.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_demo.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_draw.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_tables.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_widgets.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/allocator.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/clusterizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/indexcodec.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/indexgenerator.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/overdrawanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/overdrawoptimizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/simplifier.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/spatialorder.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/stripifier.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vcacheanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vcacheoptimizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vertexcodec.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vertexfilter.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vfetchanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vfetchoptimizer.o \
	$(OBJDIR)/examples/common/bgfx_utils.o \
	$(OBJDIR)/examples/common/camera.o \
	$(OBJDIR)/examples/common/cube_atlas.o \
	$(OBJDIR)/examples/common/debugdraw/debugdraw.o \
	$(OBJDIR)/examples/common/entry/cmd.o \
	$(OBJDIR)/examples/common/entry/dialog.o \
	$(OBJDIR)/examples/common/entry/entry.o \
	$(OBJDIR)/examples/common/entry/entry_android.o \
	$(OBJDIR)/examples/common/entry/entry_glfw.o \
	$(OBJDIR)/examples/common/entry/entry_html5.o \
	$(OBJDIR)/examples/common/entry/entry_noop.o \
	$(OBJDIR)/examples/common/entry/entry_sdl.o \
	$(OBJDIR)/examples/common/entry/entry_windows.o \
	$(OBJDIR)/examples/common/entry/entry_x11.o \
	$(OBJDIR)/examples/common/entry/input.o \
	$(OBJDIR)/examples/common/font/font_manager.o \
	$(OBJDIR)/examples/common/font/text_buffer_manager.o \
	$(OBJDIR)/examples/common/font/text_metrics.o \
	$(OBJDIR)/examples/common/font/utf8.o \
	$(OBJDIR)/examples/common/imgui/imgui.o \
	$(OBJDIR)/examples/common/nanovg/nanovg.o \
	$(OBJDIR)/examples/common/nanovg/nanovg_bgfx.o \
	$(OBJDIR)/examples/common/ps/particle_system.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR              = obj/Release/example-common
  TARGETDIR           = ../../../scripts
  TARGET              = $(TARGETDIR)/libexample-commonRelease.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"." -L"../../../../bx/scripts" -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../../../bx/scripts/libbxRelease.a
  LDDEPS             += ../../../../bx/scripts/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/3rdparty/dear-imgui/imgui.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_demo.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_draw.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_tables.o \
	$(OBJDIR)/3rdparty/dear-imgui/imgui_widgets.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/allocator.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/clusterizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/indexcodec.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/indexgenerator.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/overdrawanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/overdrawoptimizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/simplifier.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/spatialorder.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/stripifier.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vcacheanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vcacheoptimizer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vertexcodec.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vertexfilter.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vfetchanalyzer.o \
	$(OBJDIR)/3rdparty/meshoptimizer/src/vfetchoptimizer.o \
	$(OBJDIR)/examples/common/bgfx_utils.o \
	$(OBJDIR)/examples/common/camera.o \
	$(OBJDIR)/examples/common/cube_atlas.o \
	$(OBJDIR)/examples/common/debugdraw/debugdraw.o \
	$(OBJDIR)/examples/common/entry/cmd.o \
	$(OBJDIR)/examples/common/entry/dialog.o \
	$(OBJDIR)/examples/common/entry/entry.o \
	$(OBJDIR)/examples/common/entry/entry_android.o \
	$(OBJDIR)/examples/common/entry/entry_glfw.o \
	$(OBJDIR)/examples/common/entry/entry_html5.o \
	$(OBJDIR)/examples/common/entry/entry_noop.o \
	$(OBJDIR)/examples/common/entry/entry_sdl.o \
	$(OBJDIR)/examples/common/entry/entry_windows.o \
	$(OBJDIR)/examples/common/entry/entry_x11.o \
	$(OBJDIR)/examples/common/entry/input.o \
	$(OBJDIR)/examples/common/font/font_manager.o \
	$(OBJDIR)/examples/common/font/text_buffer_manager.o \
	$(OBJDIR)/examples/common/font/text_metrics.o \
	$(OBJDIR)/examples/common/font/utf8.o \
	$(OBJDIR)/examples/common/imgui/imgui.o \
	$(OBJDIR)/examples/common/nanovg/nanovg.o \
	$(OBJDIR)/examples/common/nanovg/nanovg_bgfx.o \
	$(OBJDIR)/examples/common/ps/particle_system.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/3rdparty/dear-imgui \
	$(OBJDIR)/3rdparty/meshoptimizer/src \
	$(OBJDIR)/examples/common \
	$(OBJDIR)/examples/common/debugdraw \
	$(OBJDIR)/examples/common/entry \
	$(OBJDIR)/examples/common/font \
	$(OBJDIR)/examples/common/imgui \
	$(OBJDIR)/examples/common/nanovg \
	$(OBJDIR)/examples/common/ps \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) $(TARGETDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LIBDEPS) $(EXTERNAL_LIBS) $(RESOURCES) $(OBJRESP) $(LDRESP) | $(TARGETDIR) $(OBJDIRS)
	@echo Archiving example-common
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
endif
	$(SILENT) $(LINKCMD) $(LINKOBJS)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(@)
	-$(call MKDIR,$@)

clean:
	@echo Cleaning example-common
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

$(OBJDIR)/3rdparty/dear-imgui/imgui.o: ../../../3rdparty/dear-imgui/imgui.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/dear-imgui
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/dear-imgui/imgui_demo.o: ../../../3rdparty/dear-imgui/imgui_demo.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/dear-imgui
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/dear-imgui/imgui_draw.o: ../../../3rdparty/dear-imgui/imgui_draw.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/dear-imgui
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/dear-imgui/imgui_tables.o: ../../../3rdparty/dear-imgui/imgui_tables.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/dear-imgui
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/dear-imgui/imgui_widgets.o: ../../../3rdparty/dear-imgui/imgui_widgets.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/dear-imgui
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/allocator.o: ../../../3rdparty/meshoptimizer/src/allocator.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/clusterizer.o: ../../../3rdparty/meshoptimizer/src/clusterizer.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/indexcodec.o: ../../../3rdparty/meshoptimizer/src/indexcodec.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/indexgenerator.o: ../../../3rdparty/meshoptimizer/src/indexgenerator.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/overdrawanalyzer.o: ../../../3rdparty/meshoptimizer/src/overdrawanalyzer.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/overdrawoptimizer.o: ../../../3rdparty/meshoptimizer/src/overdrawoptimizer.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/simplifier.o: ../../../3rdparty/meshoptimizer/src/simplifier.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/spatialorder.o: ../../../3rdparty/meshoptimizer/src/spatialorder.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/stripifier.o: ../../../3rdparty/meshoptimizer/src/stripifier.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/vcacheanalyzer.o: ../../../3rdparty/meshoptimizer/src/vcacheanalyzer.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/vcacheoptimizer.o: ../../../3rdparty/meshoptimizer/src/vcacheoptimizer.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/vertexcodec.o: ../../../3rdparty/meshoptimizer/src/vertexcodec.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/vertexfilter.o: ../../../3rdparty/meshoptimizer/src/vertexfilter.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/vfetchanalyzer.o: ../../../3rdparty/meshoptimizer/src/vfetchanalyzer.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/meshoptimizer/src/vfetchoptimizer.o: ../../../3rdparty/meshoptimizer/src/vfetchoptimizer.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/meshoptimizer/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/bgfx_utils.o: ../../../examples/common/bgfx_utils.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/camera.o: ../../../examples/common/camera.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/cube_atlas.o: ../../../examples/common/cube_atlas.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/debugdraw/debugdraw.o: ../../../examples/common/debugdraw/debugdraw.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/debugdraw
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/entry/cmd.o: ../../../examples/common/entry/cmd.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/entry
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/entry/dialog.o: ../../../examples/common/entry/dialog.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/entry
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/entry/dialog_darwin.o: ../../../examples/common/entry/dialog_darwin.mm $(GCH_OBJC) $(MAKEFILE) | $(OBJDIR)/examples/common/entry
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) $(FORCE_INCLUDE_OBJC) -o "$@" -c "$<"

$(OBJDIR)/examples/common/entry/entry.o: ../../../examples/common/entry/entry.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/entry
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/entry/entry_android.o: ../../../examples/common/entry/entry_android.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/entry
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/entry/entry_glfw.o: ../../../examples/common/entry/entry_glfw.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/entry
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/entry/entry_html5.o: ../../../examples/common/entry/entry_html5.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/entry
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/entry/entry_ios.o: ../../../examples/common/entry/entry_ios.mm $(GCH_OBJC) $(MAKEFILE) | $(OBJDIR)/examples/common/entry
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) $(FORCE_INCLUDE_OBJC) -o "$@" -c "$<"

$(OBJDIR)/examples/common/entry/entry_noop.o: ../../../examples/common/entry/entry_noop.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/entry
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/entry/entry_osx.o: ../../../examples/common/entry/entry_osx.mm $(GCH_OBJC) $(MAKEFILE) | $(OBJDIR)/examples/common/entry
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) $(FORCE_INCLUDE_OBJC) -o "$@" -c "$<"

$(OBJDIR)/examples/common/entry/entry_sdl.o: ../../../examples/common/entry/entry_sdl.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/entry
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/entry/entry_windows.o: ../../../examples/common/entry/entry_windows.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/entry
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/entry/entry_x11.o: ../../../examples/common/entry/entry_x11.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/entry
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/entry/input.o: ../../../examples/common/entry/input.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/entry
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/font/font_manager.o: ../../../examples/common/font/font_manager.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/font
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/font/text_buffer_manager.o: ../../../examples/common/font/text_buffer_manager.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/font
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/font/text_metrics.o: ../../../examples/common/font/text_metrics.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/font
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/font/utf8.o: ../../../examples/common/font/utf8.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/font
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/imgui/imgui.o: ../../../examples/common/imgui/imgui.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/imgui
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/nanovg/nanovg.o: ../../../examples/common/nanovg/nanovg.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/nanovg
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/nanovg/nanovg_bgfx.o: ../../../examples/common/nanovg/nanovg_bgfx.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/nanovg
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/examples/common/ps/particle_system.o: ../../../examples/common/ps/particle_system.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/common/ps
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
