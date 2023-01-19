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

CC  = $(OSXCROSS)/target/bin/x86_64-apple-darwin15-clang
CXX = $(OSXCROSS)/target/bin/x86_64-apple-darwin15-clang++
AR  = $(OSXCROSS)/target/bin/x86_64-apple-darwin15-ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

MAKEFILE = geometryv.make

ifeq ($(config),debug32)
  OBJDIR              = ../../osx-arm64/obj/x32/Debug/geometryv
  TARGETDIR           = ../../osx-arm64/bin
  TARGET              = $(TARGETDIR)/geometryvDebug
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-arm64/bin" -arch arm64 -framework Cocoa -framework IOKit -framework Metal -framework OpenGL -framework QuartzCore
  LIBDEPS            += ../../osx-arm64/bin/libexample-commonDebug.a ../../osx-arm64/bin/libbimg_decodeDebug.a ../../osx-arm64/bin/libbimgDebug.a ../../osx-arm64/bin/libbgfxDebug.a ../../osx-arm64/bin/libbxDebug.a
  LDDEPS             += ../../osx-arm64/bin/libexample-commonDebug.a ../../osx-arm64/bin/libbimg_decodeDebug.a ../../osx-arm64/bin/libbimgDebug.a ../../osx-arm64/bin/libbgfxDebug.a ../../osx-arm64/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/tools/geometryv/geometryv.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = ../../osx-arm64/obj/x32/Release/geometryv
  TARGETDIR           = ../../osx-arm64/bin
  TARGET              = $(TARGETDIR)/geometryvRelease
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-arm64/bin" -arch arm64 -framework Cocoa -framework IOKit -framework Metal -framework OpenGL -framework QuartzCore
  LIBDEPS            += ../../osx-arm64/bin/libexample-commonRelease.a ../../osx-arm64/bin/libbimg_decodeRelease.a ../../osx-arm64/bin/libbimgRelease.a ../../osx-arm64/bin/libbgfxRelease.a ../../osx-arm64/bin/libbxRelease.a
  LDDEPS             += ../../osx-arm64/bin/libexample-commonRelease.a ../../osx-arm64/bin/libbimg_decodeRelease.a ../../osx-arm64/bin/libbimgRelease.a ../../osx-arm64/bin/libbgfxRelease.a ../../osx-arm64/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/tools/geometryv/geometryv.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = ../../osx-arm64/obj/x64/Debug/geometryv
  TARGETDIR           = ../../osx-arm64/bin
  TARGET              = $(TARGETDIR)/geometryvDebug
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-arm64/bin" -arch arm64 -framework Cocoa -framework IOKit -framework Metal -framework OpenGL -framework QuartzCore
  LIBDEPS            += ../../osx-arm64/bin/libexample-commonDebug.a ../../osx-arm64/bin/libbimg_decodeDebug.a ../../osx-arm64/bin/libbimgDebug.a ../../osx-arm64/bin/libbgfxDebug.a ../../osx-arm64/bin/libbxDebug.a
  LDDEPS             += ../../osx-arm64/bin/libexample-commonDebug.a ../../osx-arm64/bin/libbimg_decodeDebug.a ../../osx-arm64/bin/libbimgDebug.a ../../osx-arm64/bin/libbgfxDebug.a ../../osx-arm64/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/tools/geometryv/geometryv.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = ../../osx-arm64/obj/x64/Release/geometryv
  TARGETDIR           = ../../osx-arm64/bin
  TARGET              = $(TARGETDIR)/geometryvRelease
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-arm64/bin" -arch arm64 -framework Cocoa -framework IOKit -framework Metal -framework OpenGL -framework QuartzCore
  LIBDEPS            += ../../osx-arm64/bin/libexample-commonRelease.a ../../osx-arm64/bin/libbimg_decodeRelease.a ../../osx-arm64/bin/libbimgRelease.a ../../osx-arm64/bin/libbgfxRelease.a ../../osx-arm64/bin/libbxRelease.a
  LDDEPS             += ../../osx-arm64/bin/libexample-commonRelease.a ../../osx-arm64/bin/libbimg_decodeRelease.a ../../osx-arm64/bin/libbimgRelease.a ../../osx-arm64/bin/libbgfxRelease.a ../../osx-arm64/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/tools/geometryv/geometryv.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug)
  OBJDIR              = ../../osx-arm64/obj/Debug/geometryv
  TARGETDIR           = ../../osx-arm64/bin
  TARGET              = $(TARGETDIR)/geometryvDebug
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-arm64/bin" -arch arm64 -framework Cocoa -framework IOKit -framework Metal -framework OpenGL -framework QuartzCore
  LIBDEPS            += ../../osx-arm64/bin/libexample-commonDebug.a ../../osx-arm64/bin/libbimg_decodeDebug.a ../../osx-arm64/bin/libbimgDebug.a ../../osx-arm64/bin/libbgfxDebug.a ../../osx-arm64/bin/libbxDebug.a
  LDDEPS             += ../../osx-arm64/bin/libexample-commonDebug.a ../../osx-arm64/bin/libbimg_decodeDebug.a ../../osx-arm64/bin/libbimgDebug.a ../../osx-arm64/bin/libbgfxDebug.a ../../osx-arm64/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/tools/geometryv/geometryv.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR              = ../../osx-arm64/obj/Release/geometryv
  TARGETDIR           = ../../osx-arm64/bin
  TARGET              = $(TARGETDIR)/geometryvRelease
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-arm64/bin" -arch arm64 -framework Cocoa -framework IOKit -framework Metal -framework OpenGL -framework QuartzCore
  LIBDEPS            += ../../osx-arm64/bin/libexample-commonRelease.a ../../osx-arm64/bin/libbimg_decodeRelease.a ../../osx-arm64/bin/libbimgRelease.a ../../osx-arm64/bin/libbgfxRelease.a ../../osx-arm64/bin/libbxRelease.a
  LDDEPS             += ../../osx-arm64/bin/libexample-commonRelease.a ../../osx-arm64/bin/libbimg_decodeRelease.a ../../osx-arm64/bin/libbimgRelease.a ../../osx-arm64/bin/libbgfxRelease.a ../../osx-arm64/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/tools/geometryv/geometryv.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/tools/geometryv \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) $(TARGETDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LIBDEPS) $(EXTERNAL_LIBS) $(RESOURCES) $(OBJRESP) $(LDRESP) | $(TARGETDIR) $(OBJDIRS)
	@echo Linking geometryv
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(@)
	-$(call MKDIR,$@)

clean:
	@echo Cleaning geometryv
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

$(OBJDIR)/tools/geometryv/geometryv.o: ../../../tools/geometryv/geometryv.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/tools/geometryv
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
