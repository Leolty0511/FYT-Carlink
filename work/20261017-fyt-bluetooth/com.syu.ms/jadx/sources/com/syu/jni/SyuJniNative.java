package com.syu.jni;

/* JADX INFO: loaded from: classes.dex */
public class SyuJniNative {
    public static final int CH7026_CMD_CONFIRM = 6;
    public static final int CH7026_CMD_OUTPUTOFF = 8;
    public static final int CH7026_CMD_OUTPUTON = 7;
    public static final int CH7026_CMD_READALL = 1;
    public static final int CH7026_CMD_RESET_DEFAULT = 9;
    public static final int CH7026_CMD_ROTATE = 10;
    public static final int CH7026_CMD_W_HPOSITION = 3;
    public static final int CH7026_CMD_W_HSYNC = 5;
    public static final int CH7026_CMD_W_VPOSITION = 2;
    public static final int CH7026_CMD_W_VSYNC = 4;
    public static final int GPIO_4052_MUXA = 14;
    public static final int GPIO_4052_MUXB = 15;
    public static final int GPIO_AMP_SW_CTRL = 9;
    public static final int GPIO_AVDD_CTRL1 = 10;
    public static final int GPIO_AVDD_CTRL2 = 11;
    public static final int GPIO_CAMERA_POWER = 16;
    public static final int GPIO_DMIC_PWR = 16;
    public static final int GPIO_HANDBRAKE_DET = 8;
    public static final int GPIO_HIS_POWER = 7;
    public static final int GPIO_INDEX_AUDIO_MUTE_ENABLE = 2;
    public static final int GPIO_INDEX_BT_POWER = 3;
    public static final int GPIO_INDEX_HUB_ENABLE = 1;
    public static final int GPIO_INDEX_SOUND_EFFECT_IC_RESET = 0;
    public static final int GPIO_INDEX_ZLINK_POWER = 4;
    public static final int GPIO_MIC_SW = 12;
    public static final int GPIO_SPECIAL_6911C = 64;
    public static final int GPIO_TURN_L_DET = 5;
    public static final int GPIO_TURN_R_DET = 6;
    private static final SyuJniNative INSTANCE = new SyuJniNative();
    public static final int JNI_EXE_CMD_0_TEST = 0;
    public static final int JNI_EXE_CMD_101_PARAMA_READ = 101;
    public static final int JNI_EXE_CMD_104_WRITE_GAMMA = 104;
    public static final int JNI_EXE_CMD_10_LITTLE_HOM = 10;
    public static final int JNI_EXE_CMD_11_VIDEO_NTSC_PAL = 11;
    public static final int JNI_EXE_CMD_140_FM_TRANSMISSION_VOLUME = 140;
    public static final int JNI_EXE_CMD_147_CH7026_CONTROL = 147;
    public static final int JNI_EXE_CMD_148_READ_APPDATE = 148;
    public static final int JNI_EXE_CMD_149_WRITE_APPDATE = 149;
    public static final int JNI_EXE_CMD_14_SET_BACKCAR_TPYE = 14;
    public static final int JNI_EXE_CMD_150_GET_WRITE_FLASH_PROCESS_PID = 150;
    public static final int JNI_EXE_CMD_151_SET_WRITE_FLASH_PROCESS_PID_FLAG = 151;
    public static final int JNI_EXE_CMD_153_GSENSOR_POWER_ONOFF = 153;
    public static final int JNI_EXE_CMD_15_GET_BACKCAR_TPYE = 15;
    public static final int JNI_EXE_CMD_16_SET_LED_COLORS = 16;
    public static final int JNI_EXE_CMD_17_GET_LED_COLORS = 17;
    public static final int JNI_EXE_CMD_19_SET_AIRPLANE_MODE = 19;
    public static final int JNI_EXE_CMD_1_BACKCAR_MIRROR = 1;
    public static final int JNI_EXE_CMD_200_GET_LS_V_ENCRY = 200;
    public static final int JNI_EXE_CMD_22_SET_VIDEO_SYS_MODE = 22;
    public static final int JNI_EXE_CMD_23_GET_VIDEO_SYS_MODE = 23;
    public static final int JNI_EXE_CMD_248_CAMIIC_LOCK = 248;
    public static final int JNI_EXE_CMD_249_CAMIIC_LOCK = 249;
    public static final int JNI_EXE_CMD_24_RESET_8288A = 24;
    public static final int JNI_EXE_CMD_251_Normal_IO_Set = 251;
    public static final int JNI_EXE_CMD_252_Normal_IO_Get = 252;
    public static final int JNI_EXE_CMD_254_USB_Get = 254;
    public static final int JNI_EXE_CMD_255_USB_Set = 255;
    public static final int JNI_EXE_CMD_25_GET_VIDEO_MODE = 25;
    public static final int JNI_EXE_CMD_26_GET_VIDEO_SIGNAL_ON = 26;
    public static final int JNI_EXE_CMD_29_ACC_STATE_TO_BSP = 29;
    public static final int JNI_EXE_CMD_2_SOUND_MIX = 2;
    public static final int JNI_EXE_CMD_31_FAN_EN = 31;
    public static final int JNI_EXE_CMD_32_GET_BOOT_REVERSE_STATUS = 32;
    public static final int JNI_EXE_CMD_33_RESET_VIDEOIC = 33;
    public static final int JNI_EXE_CMD_35_SET_AUDIO_SAMPLE_RATE = 35;
    public static final int JNI_EXE_CMD_36_ONLY_TURNOFF_LCDC = 36;
    public static final int JNI_EXE_CMD_37_SET_LIGHT_STATE = 37;
    public static final int JNI_EXE_CMD_38_SET_AHD_FLAG = 38;
    public static final int JNI_EXE_CMD_3_ENCARPTION_RESULT = 3;
    public static final int JNI_EXE_CMD_4_AUDIO_STATE = 4;
    public static final int JNI_EXE_CMD_50_FM_ANT_EN = 50;
    public static final int JNI_EXE_CMD_5_TURNOFF_LCDC = 5;
    public static final int JNI_EXE_CMD_6_MUTE_AMP = 6;
    public static final int JNI_EXE_CMD_7_AMP_MUTE_STATE = 7;
    public static final int JNI_EXE_CMD_8_RESET_GPS = 8;
    public static final int JNI_EXE_CMD_9_POWERON_SCREEN = 9;

    static {
        System.loadLibrary("syu_jni");
    }

    private SyuJniNative() {
    }

    public static SyuJniNative getInstance() {
        return INSTANCE;
    }

    public native int syu_jni_command(int i2, Object obj, Object obj2);
}
