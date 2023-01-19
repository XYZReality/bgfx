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

MAKEFILE = bx.make

ifeq ($(config),debug32)
  OBJDIR              = ../../wasm2js/obj/x32/Debug/bx
  TARGETDIR           = ../../wasm2js/bin
  TARGET              = $(TARGETDIR)/bxDebug.bc
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include" -I"../../../../bx/3rdparty"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/wasm2js" -s MAX_WEBGL_VERSION=2 -s WASM=0
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/bx/src/allocator.o \
	$(OBJDIR)/bx/src/bounds.o \
	$(OBJDIR)/bx/src/bx.o \
	$(OBJDIR)/bx/src/commandline.o \
	$(OBJDIR)/bx/src/crtnone.o \
	$(OBJDIR)/bx/src/debug.o \
	$(OBJDIR)/bx/src/dtoa.o \
	$(OBJDIR)/bx/src/easing.o \
	$(OBJDIR)/bx/src/file.o \
	$(OBJDIR)/bx/src/filepath.o \
	$(OBJDIR)/bx/src/hash.o \
	$(OBJDIR)/bx/src/math.o \
	$(OBJDIR)/bx/src/mutex.o \
	$(OBJDIR)/bx/src/os.o \
	$(OBJDIR)/bx/src/process.o \
	$(OBJDIR)/bx/src/semaphore.o \
	$(OBJDIR)/bx/src/settings.o \
	$(OBJDIR)/bx/src/sort.o \
	$(OBJDIR)/bx/src/string.o \
	$(OBJDIR)/bx/src/thread.o \
	$(OBJDIR)/bx/src/timer.o \
	$(OBJDIR)/bx/src/url.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = ../../wasm2js/obj/x32/Release/bx
  TARGETDIR           = ../../wasm2js/bin
  TARGET              = $(TARGETDIR)/bxRelease.bc
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include" -I"../../../../bx/3rdparty"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/wasm2js" -s MAX_WEBGL_VERSION=2 -s WASM=0
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/bx/src/allocator.o \
	$(OBJDIR)/bx/src/bounds.o \
	$(OBJDIR)/bx/src/bx.o \
	$(OBJDIR)/bx/src/commandline.o \
	$(OBJDIR)/bx/src/crtnone.o \
	$(OBJDIR)/bx/src/debug.o \
	$(OBJDIR)/bx/src/dtoa.o \
	$(OBJDIR)/bx/src/easing.o \
	$(OBJDIR)/bx/src/file.o \
	$(OBJDIR)/bx/src/filepath.o \
	$(OBJDIR)/bx/src/hash.o \
	$(OBJDIR)/bx/src/math.o \
	$(OBJDIR)/bx/src/mutex.o \
	$(OBJDIR)/bx/src/os.o \
	$(OBJDIR)/bx/src/process.o \
	$(OBJDIR)/bx/src/semaphore.o \
	$(OBJDIR)/bx/src/settings.o \
	$(OBJDIR)/bx/src/sort.o \
	$(OBJDIR)/bx/src/string.o \
	$(OBJDIR)/bx/src/thread.o \
	$(OBJDIR)/bx/src/timer.o \
	$(OBJDIR)/bx/src/url.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = ../../wasm2js/obj/x64/Debug/bx
  TARGETDIR           = ../../wasm2js/bin
  TARGET              = $(TARGETDIR)/bxDebug.bc
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include" -I"../../../../bx/3rdparty"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/wasm2js" -s MAX_WEBGL_VERSION=2 -s WASM=0
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/bx/src/allocator.o \
	$(OBJDIR)/bx/src/bounds.o \
	$(OBJDIR)/bx/src/bx.o \
	$(OBJDIR)/bx/src/commandline.o \
	$(OBJDIR)/bx/src/crtnone.o \
	$(OBJDIR)/bx/src/debug.o \
	$(OBJDIR)/bx/src/dtoa.o \
	$(OBJDIR)/bx/src/easing.o \
	$(OBJDIR)/bx/src/file.o \
	$(OBJDIR)/bx/src/filepath.o \
	$(OBJDIR)/bx/src/hash.o \
	$(OBJDIR)/bx/src/math.o \
	$(OBJDIR)/bx/src/mutex.o \
	$(OBJDIR)/bx/src/os.o \
	$(OBJDIR)/bx/src/process.o \
	$(OBJDIR)/bx/src/semaphore.o \
	$(OBJDIR)/bx/src/settings.o \
	$(OBJDIR)/bx/src/sort.o \
	$(OBJDIR)/bx/src/string.o \
	$(OBJDIR)/bx/src/thread.o \
	$(OBJDIR)/bx/src/timer.o \
	$(OBJDIR)/bx/src/url.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = ../../wasm2js/obj/x64/Release/bx
  TARGETDIR           = ../../wasm2js/bin
  TARGET              = $(TARGETDIR)/bxRelease.bc
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include" -I"../../../../bx/3rdparty"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/wasm2js" -s MAX_WEBGL_VERSION=2 -s WASM=0
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/bx/src/allocator.o \
	$(OBJDIR)/bx/src/bounds.o \
	$(OBJDIR)/bx/src/bx.o \
	$(OBJDIR)/bx/src/commandline.o \
	$(OBJDIR)/bx/src/crtnone.o \
	$(OBJDIR)/bx/src/debug.o \
	$(OBJDIR)/bx/src/dtoa.o \
	$(OBJDIR)/bx/src/easing.o \
	$(OBJDIR)/bx/src/file.o \
	$(OBJDIR)/bx/src/filepath.o \
	$(OBJDIR)/bx/src/hash.o \
	$(OBJDIR)/bx/src/math.o \
	$(OBJDIR)/bx/src/mutex.o \
	$(OBJDIR)/bx/src/os.o \
	$(OBJDIR)/bx/src/process.o \
	$(OBJDIR)/bx/src/semaphore.o \
	$(OBJDIR)/bx/src/settings.o \
	$(OBJDIR)/bx/src/sort.o \
	$(OBJDIR)/bx/src/string.o \
	$(OBJDIR)/bx/src/thread.o \
	$(OBJDIR)/bx/src/timer.o \
	$(OBJDIR)/bx/src/url.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug)
  OBJDIR              = ../../wasm2js/obj/Debug/bx
  TARGETDIR           = ../../wasm2js/bin
  TARGET              = $(TARGETDIR)/bxDebug.bc
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include" -I"../../../../bx/3rdparty"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/wasm2js" -s MAX_WEBGL_VERSION=2 -s WASM=0
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/bx/src/allocator.o \
	$(OBJDIR)/bx/src/bounds.o \
	$(OBJDIR)/bx/src/bx.o \
	$(OBJDIR)/bx/src/commandline.o \
	$(OBJDIR)/bx/src/crtnone.o \
	$(OBJDIR)/bx/src/debug.o \
	$(OBJDIR)/bx/src/dtoa.o \
	$(OBJDIR)/bx/src/easing.o \
	$(OBJDIR)/bx/src/file.o \
	$(OBJDIR)/bx/src/filepath.o \
	$(OBJDIR)/bx/src/hash.o \
	$(OBJDIR)/bx/src/math.o \
	$(OBJDIR)/bx/src/mutex.o \
	$(OBJDIR)/bx/src/os.o \
	$(OBJDIR)/bx/src/process.o \
	$(OBJDIR)/bx/src/semaphore.o \
	$(OBJDIR)/bx/src/settings.o \
	$(OBJDIR)/bx/src/sort.o \
	$(OBJDIR)/bx/src/string.o \
	$(OBJDIR)/bx/src/thread.o \
	$(OBJDIR)/bx/src/timer.o \
	$(OBJDIR)/bx/src/url.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR              = ../../wasm2js/obj/Release/bx
  TARGETDIR           = ../../wasm2js/bin
  TARGET              = $(TARGETDIR)/bxRelease.bc
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include" -I"../../../../bx/3rdparty"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/wasm2js" -s MAX_WEBGL_VERSION=2 -s WASM=0
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/bx/src/allocator.o \
	$(OBJDIR)/bx/src/bounds.o \
	$(OBJDIR)/bx/src/bx.o \
	$(OBJDIR)/bx/src/commandline.o \
	$(OBJDIR)/bx/src/crtnone.o \
	$(OBJDIR)/bx/src/debug.o \
	$(OBJDIR)/bx/src/dtoa.o \
	$(OBJDIR)/bx/src/easing.o \
	$(OBJDIR)/bx/src/file.o \
	$(OBJDIR)/bx/src/filepath.o \
	$(OBJDIR)/bx/src/hash.o \
	$(OBJDIR)/bx/src/math.o \
	$(OBJDIR)/bx/src/mutex.o \
	$(OBJDIR)/bx/src/os.o \
	$(OBJDIR)/bx/src/process.o \
	$(OBJDIR)/bx/src/semaphore.o \
	$(OBJDIR)/bx/src/settings.o \
	$(OBJDIR)/bx/src/sort.o \
	$(OBJDIR)/bx/src/string.o \
	$(OBJDIR)/bx/src/thread.o \
	$(OBJDIR)/bx/src/timer.o \
	$(OBJDIR)/bx/src/url.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/bx/src \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) $(TARGETDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LIBDEPS) $(EXTERNAL_LIBS) $(RESOURCES) $(OBJRESP) $(LDRESP) | $(TARGETDIR) $(OBJDIRS)
	@echo Archiving bx
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
	@echo Cleaning bx
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

$(OBJDIR)/bx/src/allocator.o: ../../../../bx/src/allocator.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/bounds.o: ../../../../bx/src/bounds.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/bx.o: ../../../../bx/src/bx.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/commandline.o: ../../../../bx/src/commandline.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/crtnone.o: ../../../../bx/src/crtnone.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/debug.o: ../../../../bx/src/debug.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/dtoa.o: ../../../../bx/src/dtoa.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/easing.o: ../../../../bx/src/easing.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/file.o: ../../../../bx/src/file.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/filepath.o: ../../../../bx/src/filepath.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/hash.o: ../../../../bx/src/hash.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/math.o: ../../../../bx/src/math.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/mutex.o: ../../../../bx/src/mutex.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/os.o: ../../../../bx/src/os.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/process.o: ../../../../bx/src/process.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/semaphore.o: ../../../../bx/src/semaphore.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/settings.o: ../../../../bx/src/settings.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/sort.o: ../../../../bx/src/sort.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/string.o: ../../../../bx/src/string.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/thread.o: ../../../../bx/src/thread.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/timer.o: ../../../../bx/src/timer.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bx/src/url.o: ../../../../bx/src/url.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bx/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
