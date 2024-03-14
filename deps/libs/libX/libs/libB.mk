# This is free and unencumbered software released into the public domain.
#
# Anyone is free to copy, modify, publish, use, compile, sell, or
# distribute this software, either in source code form or as a compiled
# binary, for any purpose, commercial or non-commercial, and by any
# means.
#
# In jurisdictions that recognize copyright laws, the author or authors
# of this software dedicate any and all copyright interest in the
# software to the public domain. We make this dedication for the benefit
# of the public at large and to the detriment of our heirs and
# successors. We intend this dedication to be an overt act of
# relinquishment in perpetuity of all present and future rights to this
# software under copyright law.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.
#
# For more information, please refer to <http://unlicense.org/>

ifndef CPB_DIR
    $(error [CPB_DIR] Missing value)
endif

CPB_MIN_VERSION := 1.0.0

ifndef LIBS_DIR
    $(error [LIBS_DIR] missing definition)
endif

PROJ_NAME := B
PROJ_TYPE := lib
LIB_TYPE  := static

LIBS += m
LIB_NAME := B

O ?= output
BUILD_DEPS := $(O)/build/libB.a
DIST_FILES += $(O)/build/libB.a:lib/libB.a
DIST_FILES += $(LIBS_DIR)/libB/b.h:include/b.h

$(O)/build/libB.a: $(LIBS_DIR)/libB/b.c $(LIBS_DIR)/libB/b.h
	$(VERBOSE)$(MAKE) -C $(LIBS_DIR)/libB BUILD_DIR=$(abspath $(O)/build) CC=$(CROSS_COMPILE)$(CC) AR=$(CROSS_COMPILE)$(AR)

include $(CPB_DIR)/builder.mk
