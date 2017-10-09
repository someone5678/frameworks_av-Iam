LOCAL_PATH:= $(call my-dir)

#
# libmediaplayerservice
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=               \
    ActivityManager.cpp         \
    MediaPlayerFactory.cpp      \
    MediaPlayerService.cpp      \
    MediaRecorderClient.cpp     \
    MetadataRetrieverClient.cpp \
    StagefrightRecorder.cpp     \
    TestPlayerStub.cpp          \

LOCAL_SHARED_LIBRARIES :=       \
    libbinder                   \
    libcrypto                   \
    libcutils                   \
    liblog                      \
    libdl                       \
    libgui                      \
    libaudioclient              \
    libmedia                    \
    libmediametrics             \
    libmediadrm                 \
    libmediautils               \
    libmemunreachable           \
    libpowermanager             \
    libstagefright              \
    libstagefright_foundation   \
    libstagefright_httplive     \
    libstagefright_omx          \
    libutils                    \
    libhidlbase                 \
    libhidlmemory               \
    android.hardware.media.omx@1.0 \

LOCAL_STATIC_LIBRARIES :=       \
    libstagefright_nuplayer     \
    libstagefright_rtsp         \
    libstagefright_timedtext    \

LOCAL_EXPORT_SHARED_LIBRARY_HEADERS := libmedia

LOCAL_C_INCLUDES :=                                                 \
    frameworks/av/media/libstagefright/include               \
    frameworks/av/media/libstagefright/rtsp                  \
    frameworks/av/media/libstagefright/webm                  \
    $(LOCAL_PATH)/include/media                              \
    frameworks/av/include/camera                             \
    frameworks/native/include/media/openmax                  \
    frameworks/native/include/media/hardware                 \
    external/tremolo/Tremolo                                 \

LOCAL_CFLAGS += -Werror -Wno-error=deprecated-declarations -Wall

LOCAL_MODULE:= libmediaplayerservice

LOCAL_32_BIT_ONLY := true

LOCAL_SANITIZE := cfi
LOCAL_SANITIZE_DIAG := cfi

include $(BUILD_SHARED_LIBRARY)

include $(call all-makefiles-under,$(LOCAL_PATH))
