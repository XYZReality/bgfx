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

MAKEFILE = bimg.make

ifeq ($(config),debug32)
  OBJDIR              = ../../linux32_gcc/obj/x32/Debug/bimg
  TARGETDIR           = ../../linux32_gcc/bin
  TARGET              = $(TARGETDIR)/libbimgDebug.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../../bimg/3rdparty/astc-encoder/include" -I"../../../../bimg/3rdparty/tinyexr/deps/miniz" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
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
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_averages_and_directions.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_block_sizes.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_color_quantize.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_color_unquantize.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_compress_symbolic.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_compute_variance.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_decompress_symbolic.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_diagnostic_trace.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_entry.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_find_best_partitioning.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_ideal_endpoints_and_weights.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_image.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_integer_sequence.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_mathlib.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_mathlib_softfloat.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_partition_tables.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_percentile_tables.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_pick_best_endpoint_format.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_platform_isa_detection.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_quantization.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_symbolic_physical.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_weight_align.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_weight_quant_xfer_tables.o \
	$(OBJDIR)/bimg/3rdparty/tinyexr/deps/miniz/miniz.o \
	$(OBJDIR)/bimg/src/image.o \
	$(OBJDIR)/bimg/src/image_gnf.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = ../../linux32_gcc/obj/x32/Release/bimg
  TARGETDIR           = ../../linux32_gcc/bin
  TARGET              = $(TARGETDIR)/libbimgRelease.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../../bimg/3rdparty/astc-encoder/include" -I"../../../../bimg/3rdparty/tinyexr/deps/miniz" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m32 -fPIC
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
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_averages_and_directions.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_block_sizes.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_color_quantize.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_color_unquantize.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_compress_symbolic.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_compute_variance.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_decompress_symbolic.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_diagnostic_trace.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_entry.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_find_best_partitioning.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_ideal_endpoints_and_weights.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_image.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_integer_sequence.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_mathlib.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_mathlib_softfloat.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_partition_tables.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_percentile_tables.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_pick_best_endpoint_format.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_platform_isa_detection.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_quantization.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_symbolic_physical.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_weight_align.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_weight_quant_xfer_tables.o \
	$(OBJDIR)/bimg/3rdparty/tinyexr/deps/miniz/miniz.o \
	$(OBJDIR)/bimg/src/image.o \
	$(OBJDIR)/bimg/src/image_gnf.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = ../../linux64_gcc/obj/x64/Debug/bimg
  TARGETDIR           = ../../linux64_gcc/bin
  TARGET              = $(TARGETDIR)/libbimgDebug.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../../bimg/3rdparty/astc-encoder/include" -I"../../../../bimg/3rdparty/tinyexr/deps/miniz" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
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
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_averages_and_directions.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_block_sizes.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_color_quantize.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_color_unquantize.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_compress_symbolic.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_compute_variance.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_decompress_symbolic.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_diagnostic_trace.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_entry.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_find_best_partitioning.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_ideal_endpoints_and_weights.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_image.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_integer_sequence.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_mathlib.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_mathlib_softfloat.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_partition_tables.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_percentile_tables.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_pick_best_endpoint_format.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_platform_isa_detection.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_quantization.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_symbolic_physical.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_weight_align.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_weight_quant_xfer_tables.o \
	$(OBJDIR)/bimg/3rdparty/tinyexr/deps/miniz/miniz.o \
	$(OBJDIR)/bimg/src/image.o \
	$(OBJDIR)/bimg/src/image_gnf.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = ../../linux64_gcc/obj/x64/Release/bimg
  TARGETDIR           = ../../linux64_gcc/bin
  TARGET              = $(TARGETDIR)/libbimgRelease.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../../bimg/3rdparty/astc-encoder/include" -I"../../../../bimg/3rdparty/tinyexr/deps/miniz" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -m64 -fPIC
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
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_averages_and_directions.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_block_sizes.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_color_quantize.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_color_unquantize.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_compress_symbolic.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_compute_variance.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_decompress_symbolic.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_diagnostic_trace.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_entry.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_find_best_partitioning.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_ideal_endpoints_and_weights.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_image.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_integer_sequence.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_mathlib.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_mathlib_softfloat.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_partition_tables.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_percentile_tables.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_pick_best_endpoint_format.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_platform_isa_detection.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_quantization.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_symbolic_physical.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_weight_align.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_weight_quant_xfer_tables.o \
	$(OBJDIR)/bimg/3rdparty/tinyexr/deps/miniz/miniz.o \
	$(OBJDIR)/bimg/src/image.o \
	$(OBJDIR)/bimg/src/image_gnf.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug)
  OBJDIR              = obj/Debug/bimg
  TARGETDIR           = ../../../../bimg/scripts
  TARGET              = $(TARGETDIR)/libbimgDebug.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../../bimg/3rdparty/astc-encoder/include" -I"../../../../bimg/3rdparty/tinyexr/deps/miniz" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
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
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_averages_and_directions.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_block_sizes.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_color_quantize.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_color_unquantize.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_compress_symbolic.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_compute_variance.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_decompress_symbolic.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_diagnostic_trace.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_entry.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_find_best_partitioning.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_ideal_endpoints_and_weights.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_image.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_integer_sequence.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_mathlib.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_mathlib_softfloat.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_partition_tables.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_percentile_tables.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_pick_best_endpoint_format.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_platform_isa_detection.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_quantization.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_symbolic_physical.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_weight_align.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_weight_quant_xfer_tables.o \
	$(OBJDIR)/bimg/3rdparty/tinyexr/deps/miniz/miniz.o \
	$(OBJDIR)/bimg/src/image.o \
	$(OBJDIR)/bimg/src/image_gnf.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR              = obj/Release/bimg
  TARGETDIR           = ../../../../bimg/scripts
  TARGET              = $(TARGETDIR)/libbimgRelease.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/linux" -I"../../../../bimg/include" -I"../../../../bimg/3rdparty/astc-encoder/include" -I"../../../../bimg/3rdparty/tinyexr/deps/miniz" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -fomit-frame-pointer -g -O3 -std=c++14 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -Wunused-value -Wundef -Wlogical-op -fPIC
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
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_averages_and_directions.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_block_sizes.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_color_quantize.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_color_unquantize.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_compress_symbolic.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_compute_variance.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_decompress_symbolic.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_diagnostic_trace.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_entry.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_find_best_partitioning.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_ideal_endpoints_and_weights.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_image.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_integer_sequence.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_mathlib.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_mathlib_softfloat.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_partition_tables.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_percentile_tables.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_pick_best_endpoint_format.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_platform_isa_detection.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_quantization.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_symbolic_physical.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_weight_align.o \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_weight_quant_xfer_tables.o \
	$(OBJDIR)/bimg/3rdparty/tinyexr/deps/miniz/miniz.o \
	$(OBJDIR)/bimg/src/image.o \
	$(OBJDIR)/bimg/src/image_gnf.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/bimg/3rdparty/astc-encoder/source \
	$(OBJDIR)/bimg/3rdparty/tinyexr/deps/miniz \
	$(OBJDIR)/bimg/src \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) $(TARGETDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LIBDEPS) $(EXTERNAL_LIBS) $(RESOURCES) $(OBJRESP) $(LDRESP) | $(TARGETDIR) $(OBJDIRS)
	@echo Archiving bimg
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
	@echo Cleaning bimg
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

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_averages_and_directions.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_averages_and_directions.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_block_sizes.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_block_sizes.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_color_quantize.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_color_quantize.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_color_unquantize.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_color_unquantize.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_compress_symbolic.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_compress_symbolic.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_compute_variance.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_compute_variance.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_decompress_symbolic.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_decompress_symbolic.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_diagnostic_trace.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_diagnostic_trace.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_entry.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_entry.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_find_best_partitioning.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_find_best_partitioning.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_ideal_endpoints_and_weights.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_ideal_endpoints_and_weights.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_image.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_image.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_integer_sequence.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_integer_sequence.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_mathlib.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_mathlib.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_mathlib_softfloat.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_mathlib_softfloat.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_partition_tables.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_partition_tables.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_percentile_tables.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_percentile_tables.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_pick_best_endpoint_format.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_pick_best_endpoint_format.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_platform_isa_detection.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_platform_isa_detection.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_quantization.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_quantization.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_symbolic_physical.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_symbolic_physical.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_weight_align.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_weight_align.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/astc-encoder/source/astcenc_weight_quant_xfer_tables.o: ../../../../bimg/3rdparty/astc-encoder/source/astcenc_weight_quant_xfer_tables.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/astc-encoder/source
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/3rdparty/tinyexr/deps/miniz/miniz.o: ../../../../bimg/3rdparty/tinyexr/deps/miniz/miniz.c $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/3rdparty/tinyexr/deps/miniz
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/src/image.o: ../../../../bimg/src/image.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/bimg/src/image_gnf.o: ../../../../bimg/src/image_gnf.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/bimg/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
