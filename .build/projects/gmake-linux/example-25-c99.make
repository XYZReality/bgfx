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

MAKEFILE = example-25-c99.make

ifeq ($(config),debug32)
  OBJDIR              = ../../linux32_gcc/obj/x32/Debug/example-25-c99
  TARGETDIR           = ../../linux32_gcc/bin
  TARGET              = $(TARGETDIR)/example-25-c99Debug
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux32_gcc" -L"." -L"../../linux32_gcc/bin" -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../linux32_gcc/bin/libexample-glueDebug.a ../../linux32_gcc/bin/libexample-commonDebug.a ../../linux32_gcc/bin/libbgfxDebug.a ../../linux32_gcc/bin/libbimg_decodeDebug.a ../../linux32_gcc/bin/libbimgDebug.a ../../linux32_gcc/bin/libbxDebug.a
  LDDEPS             += ../../linux32_gcc/bin/libexample-glueDebug.a ../../linux32_gcc/bin/libexample-commonDebug.a ../../linux32_gcc/bin/libbgfxDebug.a ../../linux32_gcc/bin/libbimg_decodeDebug.a ../../linux32_gcc/bin/libbimgDebug.a ../../linux32_gcc/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl -lX11 -lGL -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/25-c99/helloworld.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = ../../linux32_gcc/obj/x32/Release/example-25-c99
  TARGETDIR           = ../../linux32_gcc/bin
  TARGET              = $(TARGETDIR)/example-25-c99Release
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux32_gcc" -L"." -L"../../linux32_gcc/bin" -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../linux32_gcc/bin/libexample-glueRelease.a ../../linux32_gcc/bin/libexample-commonRelease.a ../../linux32_gcc/bin/libbgfxRelease.a ../../linux32_gcc/bin/libbimg_decodeRelease.a ../../linux32_gcc/bin/libbimgRelease.a ../../linux32_gcc/bin/libbxRelease.a
  LDDEPS             += ../../linux32_gcc/bin/libexample-glueRelease.a ../../linux32_gcc/bin/libexample-commonRelease.a ../../linux32_gcc/bin/libbgfxRelease.a ../../linux32_gcc/bin/libbimg_decodeRelease.a ../../linux32_gcc/bin/libbimgRelease.a ../../linux32_gcc/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl -lX11 -lGL -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/25-c99/helloworld.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(SILENT) echo Stripping symbols.
	$(SILENT) strip -s "$(TARGET)"
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = ../../linux64_gcc/obj/x64/Debug/example-25-c99
  TARGETDIR           = ../../linux64_gcc/bin
  TARGET              = $(TARGETDIR)/example-25-c99Debug
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux64_gcc" -L"." -L"../../linux64_gcc/bin" -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../linux64_gcc/bin/libexample-glueDebug.a ../../linux64_gcc/bin/libexample-commonDebug.a ../../linux64_gcc/bin/libbgfxDebug.a ../../linux64_gcc/bin/libbimg_decodeDebug.a ../../linux64_gcc/bin/libbimgDebug.a ../../linux64_gcc/bin/libbxDebug.a
  LDDEPS             += ../../linux64_gcc/bin/libexample-glueDebug.a ../../linux64_gcc/bin/libexample-commonDebug.a ../../linux64_gcc/bin/libbgfxDebug.a ../../linux64_gcc/bin/libbimg_decodeDebug.a ../../linux64_gcc/bin/libbimgDebug.a ../../linux64_gcc/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl -lX11 -lGL -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/25-c99/helloworld.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = ../../linux64_gcc/obj/x64/Release/example-25-c99
  TARGETDIR           = ../../linux64_gcc/bin
  TARGET              = $(TARGETDIR)/example-25-c99Release
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux64_gcc" -L"." -L"../../linux64_gcc/bin" -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../linux64_gcc/bin/libexample-glueRelease.a ../../linux64_gcc/bin/libexample-commonRelease.a ../../linux64_gcc/bin/libbgfxRelease.a ../../linux64_gcc/bin/libbimg_decodeRelease.a ../../linux64_gcc/bin/libbimgRelease.a ../../linux64_gcc/bin/libbxRelease.a
  LDDEPS             += ../../linux64_gcc/bin/libexample-glueRelease.a ../../linux64_gcc/bin/libexample-commonRelease.a ../../linux64_gcc/bin/libbgfxRelease.a ../../linux64_gcc/bin/libbimg_decodeRelease.a ../../linux64_gcc/bin/libbimgRelease.a ../../linux64_gcc/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl -lX11 -lGL -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/25-c99/helloworld.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(SILENT) echo Stripping symbols.
	$(SILENT) strip -s "$(TARGET)"
  endef
endif

ifeq ($(config),debug)
  OBJDIR              = obj/Debug/example-25-c99
  TARGETDIR           = ../../../scripts
  TARGET              = $(TARGETDIR)/example-25-c99Debug
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"." -L"../../../scripts" -L"../../../../bimg/scripts" -L"../../../../bx/scripts" -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../../scripts/libexample-glueDebug.a ../../../scripts/libexample-commonDebug.a ../../../scripts/libbgfxDebug.a ../../../../bimg/scripts/libbimg_decodeDebug.a ../../../../bimg/scripts/libbimgDebug.a ../../../../bx/scripts/libbxDebug.a
  LDDEPS             += ../../../scripts/libexample-glueDebug.a ../../../scripts/libexample-commonDebug.a ../../../scripts/libbgfxDebug.a ../../../../bimg/scripts/libbimg_decodeDebug.a ../../../../bimg/scripts/libbimgDebug.a ../../../../bx/scripts/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl -lX11 -lGL -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/25-c99/helloworld.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR              = obj/Release/example-25-c99
  TARGETDIR           = ../../../scripts
  TARGET              = $(TARGETDIR)/example-25-c99Release
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"." -L"../../../scripts" -L"../../../../bimg/scripts" -L"../../../../bx/scripts" -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            += ../../../scripts/libexample-glueRelease.a ../../../scripts/libexample-commonRelease.a ../../../scripts/libbgfxRelease.a ../../../../bimg/scripts/libbimg_decodeRelease.a ../../../../bimg/scripts/libbimgRelease.a ../../../../bx/scripts/libbxRelease.a
  LDDEPS             += ../../../scripts/libexample-glueRelease.a ../../../scripts/libexample-commonRelease.a ../../../scripts/libbgfxRelease.a ../../../../bimg/scripts/libbimg_decodeRelease.a ../../../../bimg/scripts/libbimgRelease.a ../../../../bx/scripts/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl -lX11 -lGL -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/25-c99/helloworld.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(SILENT) echo Stripping symbols.
	$(SILENT) strip -s "$(TARGET)"
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/examples/25-c99 \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) $(TARGETDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LIBDEPS) $(EXTERNAL_LIBS) $(RESOURCES) $(OBJRESP) $(LDRESP) | $(TARGETDIR) $(OBJDIRS)
	@echo Linking example-25-c99
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(@)
	-$(call MKDIR,$@)

clean:
	@echo Cleaning example-25-c99
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

$(OBJDIR)/examples/25-c99/helloworld.o: ../../../examples/25-c99/helloworld.c $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/25-c99
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
