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

CC  = "$(EMSCRIPTEN)/emcc"
CXX = "$(EMSCRIPTEN)/em++"
AR  = "$(EMSCRIPTEN)/emar"

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

MAKEFILE = example-33-pom.make

ifeq ($(config),debug32)
  OBJDIR              = ../../wasm2js/obj/x32/Debug/example-33-pom
  TARGETDIR           = ../../wasm2js/bin
  TARGET              = $(TARGETDIR)/example-33-pomDebug.html
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -std=c++14 -fno-exceptions -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -std=c++14 -fno-exceptions -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/wasm2js" -L"../../wasm2js/bin" -s MAX_WEBGL_VERSION=2 -s WASM=0 -s TOTAL_MEMORY=32MB -s ALLOW_MEMORY_GROWTH=1 --preload-file ../../../examples/runtime@/
  LIBDEPS            += ../../wasm2js/bin/example-glueDebug.bc ../../wasm2js/bin/example-commonDebug.bc ../../wasm2js/bin/bgfxDebug.bc ../../wasm2js/bin/bimg_decodeDebug.bc ../../wasm2js/bin/bimgDebug.bc ../../wasm2js/bin/bxDebug.bc
  LDDEPS             += ../../wasm2js/bin/example-glueDebug.bc ../../wasm2js/bin/example-commonDebug.bc ../../wasm2js/bin/bgfxDebug.bc ../../wasm2js/bin/bimg_decodeDebug.bc ../../wasm2js/bin/bimgDebug.bc ../../wasm2js/bin/bxDebug.bc
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/33-pom/pom.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = ../../wasm2js/obj/x32/Release/example-33-pom
  TARGETDIR           = ../../wasm2js/bin
  TARGET              = $(TARGETDIR)/example-33-pomRelease.html
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -std=c++14 -fno-exceptions -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -std=c++14 -fno-exceptions -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/wasm2js" -L"../../wasm2js/bin" -s MAX_WEBGL_VERSION=2 -s WASM=0 -s TOTAL_MEMORY=32MB -s ALLOW_MEMORY_GROWTH=1 --preload-file ../../../examples/runtime@/
  LIBDEPS            += ../../wasm2js/bin/example-glueRelease.bc ../../wasm2js/bin/example-commonRelease.bc ../../wasm2js/bin/bgfxRelease.bc ../../wasm2js/bin/bimg_decodeRelease.bc ../../wasm2js/bin/bimgRelease.bc ../../wasm2js/bin/bxRelease.bc
  LDDEPS             += ../../wasm2js/bin/example-glueRelease.bc ../../wasm2js/bin/example-commonRelease.bc ../../wasm2js/bin/bgfxRelease.bc ../../wasm2js/bin/bimg_decodeRelease.bc ../../wasm2js/bin/bimgRelease.bc ../../wasm2js/bin/bxRelease.bc
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/33-pom/pom.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = ../../wasm2js/obj/x64/Debug/example-33-pom
  TARGETDIR           = ../../wasm2js/bin
  TARGET              = $(TARGETDIR)/example-33-pomDebug.html
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -std=c++14 -fno-exceptions -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -std=c++14 -fno-exceptions -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/wasm2js" -L"../../wasm2js/bin" -s MAX_WEBGL_VERSION=2 -s WASM=0 -s TOTAL_MEMORY=32MB -s ALLOW_MEMORY_GROWTH=1 --preload-file ../../../examples/runtime@/
  LIBDEPS            += ../../wasm2js/bin/example-glueDebug.bc ../../wasm2js/bin/example-commonDebug.bc ../../wasm2js/bin/bgfxDebug.bc ../../wasm2js/bin/bimg_decodeDebug.bc ../../wasm2js/bin/bimgDebug.bc ../../wasm2js/bin/bxDebug.bc
  LDDEPS             += ../../wasm2js/bin/example-glueDebug.bc ../../wasm2js/bin/example-commonDebug.bc ../../wasm2js/bin/bgfxDebug.bc ../../wasm2js/bin/bimg_decodeDebug.bc ../../wasm2js/bin/bimgDebug.bc ../../wasm2js/bin/bxDebug.bc
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/33-pom/pom.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = ../../wasm2js/obj/x64/Release/example-33-pom
  TARGETDIR           = ../../wasm2js/bin
  TARGET              = $(TARGETDIR)/example-33-pomRelease.html
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -std=c++14 -fno-exceptions -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -std=c++14 -fno-exceptions -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/wasm2js" -L"../../wasm2js/bin" -s MAX_WEBGL_VERSION=2 -s WASM=0 -s TOTAL_MEMORY=32MB -s ALLOW_MEMORY_GROWTH=1 --preload-file ../../../examples/runtime@/
  LIBDEPS            += ../../wasm2js/bin/example-glueRelease.bc ../../wasm2js/bin/example-commonRelease.bc ../../wasm2js/bin/bgfxRelease.bc ../../wasm2js/bin/bimg_decodeRelease.bc ../../wasm2js/bin/bimgRelease.bc ../../wasm2js/bin/bxRelease.bc
  LDDEPS             += ../../wasm2js/bin/example-glueRelease.bc ../../wasm2js/bin/example-commonRelease.bc ../../wasm2js/bin/bgfxRelease.bc ../../wasm2js/bin/bimg_decodeRelease.bc ../../wasm2js/bin/bimgRelease.bc ../../wasm2js/bin/bxRelease.bc
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/33-pom/pom.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug)
  OBJDIR              = ../../wasm2js/obj/Debug/example-33-pom
  TARGETDIR           = ../../wasm2js/bin
  TARGET              = $(TARGETDIR)/example-33-pomDebug.html
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -std=c++14 -fno-exceptions -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -std=c++14 -fno-exceptions -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/wasm2js" -L"../../wasm2js/bin" -s MAX_WEBGL_VERSION=2 -s WASM=0 -s TOTAL_MEMORY=32MB -s ALLOW_MEMORY_GROWTH=1 --preload-file ../../../examples/runtime@/
  LIBDEPS            += ../../wasm2js/bin/example-glueDebug.bc ../../wasm2js/bin/example-commonDebug.bc ../../wasm2js/bin/bgfxDebug.bc ../../wasm2js/bin/bimg_decodeDebug.bc ../../wasm2js/bin/bimgDebug.bc ../../wasm2js/bin/bxDebug.bc
  LDDEPS             += ../../wasm2js/bin/example-glueDebug.bc ../../wasm2js/bin/example-commonDebug.bc ../../wasm2js/bin/bgfxDebug.bc ../../wasm2js/bin/bimg_decodeDebug.bc ../../wasm2js/bin/bimgDebug.bc ../../wasm2js/bin/bxDebug.bc
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/33-pom/pom.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR              = ../../wasm2js/obj/Release/example-33-pom
  TARGETDIR           = ../../wasm2js/bin
  TARGET              = $(TARGETDIR)/example-33-pomRelease.html
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -std=c++14 -fno-exceptions -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -O2 -std=c++14 -fno-exceptions -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/wasm2js" -L"../../wasm2js/bin" -s MAX_WEBGL_VERSION=2 -s WASM=0 -s TOTAL_MEMORY=32MB -s ALLOW_MEMORY_GROWTH=1 --preload-file ../../../examples/runtime@/
  LIBDEPS            += ../../wasm2js/bin/example-glueRelease.bc ../../wasm2js/bin/example-commonRelease.bc ../../wasm2js/bin/bgfxRelease.bc ../../wasm2js/bin/bimg_decodeRelease.bc ../../wasm2js/bin/bimgRelease.bc ../../wasm2js/bin/bxRelease.bc
  LDDEPS             += ../../wasm2js/bin/example-glueRelease.bc ../../wasm2js/bin/example-commonRelease.bc ../../wasm2js/bin/bgfxRelease.bc ../../wasm2js/bin/bimg_decodeRelease.bc ../../wasm2js/bin/bimgRelease.bc ../../wasm2js/bin/bxRelease.bc
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/33-pom/pom.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/examples/33-pom \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) $(TARGETDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LIBDEPS) $(EXTERNAL_LIBS) $(RESOURCES) $(OBJRESP) $(LDRESP) | $(TARGETDIR) $(OBJDIRS)
	@echo Linking example-33-pom
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(@)
	-$(call MKDIR,$@)

clean:
	@echo Cleaning example-33-pom
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

$(OBJDIR)/examples/33-pom/pom.o: ../../../examples/33-pom/pom.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/33-pom
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
