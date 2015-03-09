ifneq ($(filter twrpx86,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif
