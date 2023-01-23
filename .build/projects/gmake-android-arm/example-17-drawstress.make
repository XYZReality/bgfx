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

CC  = $(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/bin/clang
CXX = $(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++
AR  = $(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

MAKEFILE = example-17-drawstress.make

ifeq ($(config),debug32)
  OBJDIR              = ../../android-arm/obj/x32/Debug/example-17-drawstress
  TARGETDIR           = ../../android-arm/bin
  TARGET              = $(TARGETDIR)/libexample-17-drawstressDebug.so
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-rtti -fno-exceptions --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-rtti -fno-exceptions --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"." -L"../../android-arm/bin" --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -no-canonical-prefixes -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now --target=armv7-none-linux-android24 -march=armv7-a -shared
  LIBDEPS            += ../../android-arm/bin/libexample-glueDebug.a ../../android-arm/bin/libexample-commonDebug.a ../../android-arm/bin/libbgfxDebug.a ../../android-arm/bin/libbimg_decodeDebug.a ../../android-arm/bin/libbimgDebug.a ../../android-arm/bin/libbxDebug.a
  LDDEPS             += ../../android-arm/bin/libexample-glueDebug.a ../../android-arm/bin/libexample-commonDebug.a ../../android-arm/bin/libbgfxDebug.a ../../android-arm/bin/libbimg_decodeDebug.a ../../android-arm/bin/libbimgDebug.a ../../android-arm/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lc -ldl -lm -landroid -llog -lc++_shared -lEGL -lGLESv2
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/17-drawstress/drawstress.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = ../../android-arm/obj/x32/Release/example-17-drawstress
  TARGETDIR           = ../../android-arm/bin
  TARGET              = $(TARGETDIR)/libexample-17-drawstressRelease.so
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-rtti -fno-exceptions --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-rtti -fno-exceptions --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"." -L"../../android-arm/bin" --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -no-canonical-prefixes -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now --target=armv7-none-linux-android24 -march=armv7-a -shared
  LIBDEPS            += ../../android-arm/bin/libexample-glueRelease.a ../../android-arm/bin/libexample-commonRelease.a ../../android-arm/bin/libbgfxRelease.a ../../android-arm/bin/libbimg_decodeRelease.a ../../android-arm/bin/libbimgRelease.a ../../android-arm/bin/libbxRelease.a
  LDDEPS             += ../../android-arm/bin/libexample-glueRelease.a ../../android-arm/bin/libexample-commonRelease.a ../../android-arm/bin/libbgfxRelease.a ../../android-arm/bin/libbimg_decodeRelease.a ../../android-arm/bin/libbimgRelease.a ../../android-arm/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lc -ldl -lm -landroid -llog -lc++_shared -lEGL -lGLESv2
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/17-drawstress/drawstress.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(SILENT) echo Stripping symbols.
	$(SILENT) $(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-strip -s "$(TARGET)"
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = ../../android-arm/obj/x64/Debug/example-17-drawstress
  TARGETDIR           = ../../android-arm/bin
  TARGET              = $(TARGETDIR)/libexample-17-drawstressDebug.so
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-rtti -fno-exceptions --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-rtti -fno-exceptions --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"." -L"../../android-arm/bin" --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -no-canonical-prefixes -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now --target=armv7-none-linux-android24 -march=armv7-a -shared
  LIBDEPS            += ../../android-arm/bin/libexample-glueDebug.a ../../android-arm/bin/libexample-commonDebug.a ../../android-arm/bin/libbgfxDebug.a ../../android-arm/bin/libbimg_decodeDebug.a ../../android-arm/bin/libbimgDebug.a ../../android-arm/bin/libbxDebug.a
  LDDEPS             += ../../android-arm/bin/libexample-glueDebug.a ../../android-arm/bin/libexample-commonDebug.a ../../android-arm/bin/libbgfxDebug.a ../../android-arm/bin/libbimg_decodeDebug.a ../../android-arm/bin/libbimgDebug.a ../../android-arm/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lc -ldl -lm -landroid -llog -lc++_shared -lEGL -lGLESv2
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/17-drawstress/drawstress.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = ../../android-arm/obj/x64/Release/example-17-drawstress
  TARGETDIR           = ../../android-arm/bin
  TARGET              = $(TARGETDIR)/libexample-17-drawstressRelease.so
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-rtti -fno-exceptions --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-rtti -fno-exceptions --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"." -L"../../android-arm/bin" --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -no-canonical-prefixes -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now --target=armv7-none-linux-android24 -march=armv7-a -shared
  LIBDEPS            += ../../android-arm/bin/libexample-glueRelease.a ../../android-arm/bin/libexample-commonRelease.a ../../android-arm/bin/libbgfxRelease.a ../../android-arm/bin/libbimg_decodeRelease.a ../../android-arm/bin/libbimgRelease.a ../../android-arm/bin/libbxRelease.a
  LDDEPS             += ../../android-arm/bin/libexample-glueRelease.a ../../android-arm/bin/libexample-commonRelease.a ../../android-arm/bin/libbgfxRelease.a ../../android-arm/bin/libbimg_decodeRelease.a ../../android-arm/bin/libbimgRelease.a ../../android-arm/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lc -ldl -lm -landroid -llog -lc++_shared -lEGL -lGLESv2
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/17-drawstress/drawstress.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(SILENT) echo Stripping symbols.
	$(SILENT) $(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-strip -s "$(TARGET)"
  endef
endif

ifeq ($(config),debug)
  OBJDIR              = ../../android-arm/obj/Debug/example-17-drawstress
  TARGETDIR           = ../../android-arm/bin
  TARGET              = $(TARGETDIR)/libexample-17-drawstressDebug.so
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-rtti -fno-exceptions --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Werror -std=c++14 -fno-rtti -fno-exceptions --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"." -L"../../android-arm/bin" --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -no-canonical-prefixes -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now --target=armv7-none-linux-android24 -march=armv7-a -shared
  LIBDEPS            += ../../android-arm/bin/libexample-glueDebug.a ../../android-arm/bin/libexample-commonDebug.a ../../android-arm/bin/libbgfxDebug.a ../../android-arm/bin/libbimg_decodeDebug.a ../../android-arm/bin/libbimgDebug.a ../../android-arm/bin/libbxDebug.a
  LDDEPS             += ../../android-arm/bin/libexample-glueDebug.a ../../android-arm/bin/libexample-commonDebug.a ../../android-arm/bin/libbgfxDebug.a ../../android-arm/bin/libbimg_decodeDebug.a ../../android-arm/bin/libbimgDebug.a ../../android-arm/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lc -ldl -lm -landroid -llog -lc++_shared -lEGL -lGLESv2
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/17-drawstress/drawstress.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR              = ../../android-arm/obj/Release/example-17-drawstress
  TARGETDIR           = ../../android-arm/bin
  TARGET              = $(TARGETDIR)/libexample-17-drawstressRelease.so
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DENTRY_CONFIG_IMPLEMENT_MAIN=1 -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty" -I"../../../examples/common" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-rtti -fno-exceptions --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Werror -std=c++14 -fno-rtti -fno-exceptions --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -DANDROID -fPIC -no-canonical-prefixes -Wa,--noexecstack -fstack-protector-strong -ffunction-sections -Wunused-value -Wundef --target=armv7-none-linux-android24 -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=neon
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"." -L"../../android-arm/bin" --gcc-toolchain=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=$(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/sysroot -no-canonical-prefixes -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now --target=armv7-none-linux-android24 -march=armv7-a -shared
  LIBDEPS            += ../../android-arm/bin/libexample-glueRelease.a ../../android-arm/bin/libexample-commonRelease.a ../../android-arm/bin/libbgfxRelease.a ../../android-arm/bin/libbimg_decodeRelease.a ../../android-arm/bin/libbimgRelease.a ../../android-arm/bin/libbxRelease.a
  LDDEPS             += ../../android-arm/bin/libexample-glueRelease.a ../../android-arm/bin/libexample-commonRelease.a ../../android-arm/bin/libbgfxRelease.a ../../android-arm/bin/libbimg_decodeRelease.a ../../android-arm/bin/libbimgRelease.a ../../android-arm/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -lc -ldl -lm -landroid -llog -lc++_shared -lEGL -lGLESv2
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/examples/17-drawstress/drawstress.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(SILENT) echo Stripping symbols.
	$(SILENT) $(ANDROID_NDK_ROOT)/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-strip -s "$(TARGET)"
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/examples/17-drawstress \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) $(TARGETDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LIBDEPS) $(EXTERNAL_LIBS) $(RESOURCES) $(OBJRESP) $(LDRESP) | $(TARGETDIR) $(OBJDIRS)
	@echo Linking example-17-drawstress
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(@)
	-$(call MKDIR,$@)

clean:
	@echo Cleaning example-17-drawstress
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

$(OBJDIR)/examples/17-drawstress/drawstress.o: ../../../examples/17-drawstress/drawstress.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/examples/17-drawstress
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
