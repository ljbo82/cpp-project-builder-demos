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

PROJ_NAME := mylib
PROJ_TYPE := lib

CPP_PROJECT_BUILDER_CORE ?= ../../core

# Since LIB_TYPE will be defined after platform layers are processed,
# includes project.mk instead of builder.mk in order to fully parse project
# data prior to compiler management.
include $(CPP_PROJECT_BUILDER_CORE)/project.mk

# At this point, LIB_TYPE is defined, but compiler management did not took
# place yet.

# Source code use special decorators when building a shared library
ifeq ($(LIB_TYPE),shared)
    CFLAGS += -DLIB_BUILD_SHARED_LIB -fvisibility=hidden
endif

include $(CPP_PROJECT_BUILDER_CORE)/builder.mk
