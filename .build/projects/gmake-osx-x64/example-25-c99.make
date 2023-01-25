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

MAKEFILE = example-25-c99.make

ifeq ($(config),debug32)
  OBJDIR              = ../../osx-x64/obj/x32/Debug/example-25-c99
  TARGETDIR           = ../../osx-x64/bin
  TARGET              = $(TARGETDIR)/example-25-c99Debug
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-exceptions -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-exceptions -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-x64/bin" -arch x86_64 -framework Cocoa -framework IOKit -framework OpenGL -framework QuartzCore -weak_framework Metal
  LIBDEPS            += ../../osx-x64/bin/libexample-glueDebug.a ../../osx-x64/bin/libexample-commonDebug.a ../../osx-x64/bin/libbgfxDebug.a ../../osx-x64/bin/libbimg_decodeDebug.a ../../osx-x64/bin/libbimgDebug.a ../../osx-x64/bin/libbxDebug.a
  LDDEPS             += ../../osx-x64/bin/libexample-glueDebug.a ../../osx-x64/bin/libexample-commonDebug.a ../../osx-x64/bin/libbgfxDebug.a ../../osx-x64/bin/libbimg_decodeDebug.a ../../osx-x64/bin/libbimgDebug.a ../../osx-x64/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS)
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
  OBJDIR              = ../../osx-x64/obj/x32/Release/example-25-c99
  TARGETDIR           = ../../osx-x64/bin
  TARGET              = $(TARGETDIR)/example-25-c99Release
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-exceptions -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-exceptions -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-x64/bin" -arch x86_64 -framework Cocoa -framework IOKit -framework OpenGL -framework QuartzCore -weak_framework Metal
  LIBDEPS            += ../../osx-x64/bin/libexample-glueRelease.a ../../osx-x64/bin/libexample-commonRelease.a ../../osx-x64/bin/libbgfxRelease.a ../../osx-x64/bin/libbimg_decodeRelease.a ../../osx-x64/bin/libbimgRelease.a ../../osx-x64/bin/libbxRelease.a
  LDDEPS             += ../../osx-x64/bin/libexample-glueRelease.a ../../osx-x64/bin/libexample-commonRelease.a ../../osx-x64/bin/libbgfxRelease.a ../../osx-x64/bin/libbimg_decodeRelease.a ../../osx-x64/bin/libbimgRelease.a ../../osx-x64/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS)
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

ifeq ($(config),debug64)
  OBJDIR              = ../../osx-x64/obj/x64/Debug/example-25-c99
  TARGETDIR           = ../../osx-x64/bin
  TARGET              = $(TARGETDIR)/example-25-c99Debug
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-exceptions -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-exceptions -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-x64/bin" -arch x86_64 -framework Cocoa -framework IOKit -framework OpenGL -framework QuartzCore -weak_framework Metal
  LIBDEPS            += ../../osx-x64/bin/libexample-glueDebug.a ../../osx-x64/bin/libexample-commonDebug.a ../../osx-x64/bin/libbgfxDebug.a ../../osx-x64/bin/libbimg_decodeDebug.a ../../osx-x64/bin/libbimgDebug.a ../../osx-x64/bin/libbxDebug.a
  LDDEPS             += ../../osx-x64/bin/libexample-glueDebug.a ../../osx-x64/bin/libexample-commonDebug.a ../../osx-x64/bin/libbgfxDebug.a ../../osx-x64/bin/libbimg_decodeDebug.a ../../osx-x64/bin/libbimgDebug.a ../../osx-x64/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS)
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
  OBJDIR              = ../../osx-x64/obj/x64/Release/example-25-c99
  TARGETDIR           = ../../osx-x64/bin
  TARGET              = $(TARGETDIR)/example-25-c99Release
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-exceptions -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-exceptions -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-x64/bin" -arch x86_64 -framework Cocoa -framework IOKit -framework OpenGL -framework QuartzCore -weak_framework Metal
  LIBDEPS            += ../../osx-x64/bin/libexample-glueRelease.a ../../osx-x64/bin/libexample-commonRelease.a ../../osx-x64/bin/libbgfxRelease.a ../../osx-x64/bin/libbimg_decodeRelease.a ../../osx-x64/bin/libbimgRelease.a ../../osx-x64/bin/libbxRelease.a
  LDDEPS             += ../../osx-x64/bin/libexample-glueRelease.a ../../osx-x64/bin/libexample-commonRelease.a ../../osx-x64/bin/libbgfxRelease.a ../../osx-x64/bin/libbimg_decodeRelease.a ../../osx-x64/bin/libbimgRelease.a ../../osx-x64/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS)
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

ifeq ($(config),debug)
  OBJDIR              = ../../osx-x64/obj/Debug/example-25-c99
  TARGETDIR           = ../../osx-x64/bin
  TARGET              = $(TARGETDIR)/example-25-c99Debug
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-exceptions -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-exceptions -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-x64/bin" -arch x86_64 -framework Cocoa -framework IOKit -framework OpenGL -framework QuartzCore -weak_framework Metal
  LIBDEPS            += ../../osx-x64/bin/libexample-glueDebug.a ../../osx-x64/bin/libexample-commonDebug.a ../../osx-x64/bin/libbgfxDebug.a ../../osx-x64/bin/libbimg_decodeDebug.a ../../osx-x64/bin/libbimgDebug.a ../../osx-x64/bin/libbxDebug.a
  LDDEPS             += ../../osx-x64/bin/libexample-glueDebug.a ../../osx-x64/bin/libexample-commonDebug.a ../../osx-x64/bin/libbgfxDebug.a ../../osx-x64/bin/libbimg_decodeDebug.a ../../osx-x64/bin/libbimgDebug.a ../../osx-x64/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS)
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
  OBJDIR              = ../../osx-x64/obj/Release/example-25-c99
  TARGETDIR           = ../../osx-x64/bin
  TARGET              = $(TARGETDIR)/example-25-c99Release
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-exceptions -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-exceptions -arch x86_64 -msse4.2 -target x86_64-apple-macos10.11 -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-x64/bin" -arch x86_64 -framework Cocoa -framework IOKit -framework OpenGL -framework QuartzCore -weak_framework Metal
  LIBDEPS            += ../../osx-x64/bin/libexample-glueRelease.a ../../osx-x64/bin/libexample-commonRelease.a ../../osx-x64/bin/libbgfxRelease.a ../../osx-x64/bin/libbimg_decodeRelease.a ../../osx-x64/bin/libbimgRelease.a ../../osx-x64/bin/libbxRelease.a
  LDDEPS             += ../../osx-x64/bin/libexample-glueRelease.a ../../osx-x64/bin/libexample-commonRelease.a ../../osx-x64/bin/libbgfxRelease.a ../../osx-x64/bin/libbimg_decodeRelease.a ../../osx-x64/bin/libbimgRelease.a ../../osx-x64/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS)
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
