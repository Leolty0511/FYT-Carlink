.class public Lcom/syu/jni/SyuJniNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CH7026_CMD_CONFIRM:I = 0x6

.field public static final CH7026_CMD_OUTPUTOFF:I = 0x8

.field public static final CH7026_CMD_OUTPUTON:I = 0x7

.field public static final CH7026_CMD_READALL:I = 0x1

.field public static final CH7026_CMD_RESET_DEFAULT:I = 0x9

.field public static final CH7026_CMD_ROTATE:I = 0xa

.field public static final CH7026_CMD_W_HPOSITION:I = 0x3

.field public static final CH7026_CMD_W_HSYNC:I = 0x5

.field public static final CH7026_CMD_W_VPOSITION:I = 0x2

.field public static final CH7026_CMD_W_VSYNC:I = 0x4

.field public static final GPIO_4052_MUXA:I = 0xe

.field public static final GPIO_4052_MUXB:I = 0xf

.field public static final GPIO_AMP_SW_CTRL:I = 0x9

.field public static final GPIO_AVDD_CTRL1:I = 0xa

.field public static final GPIO_AVDD_CTRL2:I = 0xb

.field public static final GPIO_CAMERA_POWER:I = 0x10

.field public static final GPIO_DMIC_PWR:I = 0x10

.field public static final GPIO_HANDBRAKE_DET:I = 0x8

.field public static final GPIO_HIS_POWER:I = 0x7

.field public static final GPIO_INDEX_AUDIO_MUTE_ENABLE:I = 0x2

.field public static final GPIO_INDEX_BT_POWER:I = 0x3

.field public static final GPIO_INDEX_HUB_ENABLE:I = 0x1

.field public static final GPIO_INDEX_SOUND_EFFECT_IC_RESET:I = 0x0

.field public static final GPIO_INDEX_ZLINK_POWER:I = 0x4

.field public static final GPIO_MIC_SW:I = 0xc

.field public static final GPIO_SPECIAL_6911C:I = 0x40

.field public static final GPIO_TURN_L_DET:I = 0x5

.field public static final GPIO_TURN_R_DET:I = 0x6

.field private static final INSTANCE:Lcom/syu/jni/SyuJniNative;

.field public static final JNI_EXE_CMD_0_TEST:I = 0x0

.field public static final JNI_EXE_CMD_101_PARAMA_READ:I = 0x65

.field public static final JNI_EXE_CMD_104_WRITE_GAMMA:I = 0x68

.field public static final JNI_EXE_CMD_10_LITTLE_HOM:I = 0xa

.field public static final JNI_EXE_CMD_11_VIDEO_NTSC_PAL:I = 0xb

.field public static final JNI_EXE_CMD_140_FM_TRANSMISSION_VOLUME:I = 0x8c

.field public static final JNI_EXE_CMD_147_CH7026_CONTROL:I = 0x93

.field public static final JNI_EXE_CMD_148_READ_APPDATE:I = 0x94

.field public static final JNI_EXE_CMD_149_WRITE_APPDATE:I = 0x95

.field public static final JNI_EXE_CMD_14_SET_BACKCAR_TPYE:I = 0xe

.field public static final JNI_EXE_CMD_150_GET_WRITE_FLASH_PROCESS_PID:I = 0x96

.field public static final JNI_EXE_CMD_151_SET_WRITE_FLASH_PROCESS_PID_FLAG:I = 0x97

.field public static final JNI_EXE_CMD_153_GSENSOR_POWER_ONOFF:I = 0x99

.field public static final JNI_EXE_CMD_15_GET_BACKCAR_TPYE:I = 0xf

.field public static final JNI_EXE_CMD_16_SET_LED_COLORS:I = 0x10

.field public static final JNI_EXE_CMD_17_GET_LED_COLORS:I = 0x11

.field public static final JNI_EXE_CMD_19_SET_AIRPLANE_MODE:I = 0x13

.field public static final JNI_EXE_CMD_1_BACKCAR_MIRROR:I = 0x1

.field public static final JNI_EXE_CMD_200_GET_LS_V_ENCRY:I = 0xc8

.field public static final JNI_EXE_CMD_22_SET_VIDEO_SYS_MODE:I = 0x16

.field public static final JNI_EXE_CMD_23_GET_VIDEO_SYS_MODE:I = 0x17

.field public static final JNI_EXE_CMD_248_CAMIIC_LOCK:I = 0xf8

.field public static final JNI_EXE_CMD_249_CAMIIC_LOCK:I = 0xf9

.field public static final JNI_EXE_CMD_24_RESET_8288A:I = 0x18

.field public static final JNI_EXE_CMD_251_Normal_IO_Set:I = 0xfb

.field public static final JNI_EXE_CMD_252_Normal_IO_Get:I = 0xfc

.field public static final JNI_EXE_CMD_254_USB_Get:I = 0xfe

.field public static final JNI_EXE_CMD_255_USB_Set:I = 0xff

.field public static final JNI_EXE_CMD_25_GET_VIDEO_MODE:I = 0x19

.field public static final JNI_EXE_CMD_26_GET_VIDEO_SIGNAL_ON:I = 0x1a

.field public static final JNI_EXE_CMD_29_ACC_STATE_TO_BSP:I = 0x1d

.field public static final JNI_EXE_CMD_2_SOUND_MIX:I = 0x2

.field public static final JNI_EXE_CMD_31_FAN_EN:I = 0x1f

.field public static final JNI_EXE_CMD_32_GET_BOOT_REVERSE_STATUS:I = 0x20

.field public static final JNI_EXE_CMD_33_RESET_VIDEOIC:I = 0x21

.field public static final JNI_EXE_CMD_35_SET_AUDIO_SAMPLE_RATE:I = 0x23

.field public static final JNI_EXE_CMD_36_ONLY_TURNOFF_LCDC:I = 0x24

.field public static final JNI_EXE_CMD_37_SET_LIGHT_STATE:I = 0x25

.field public static final JNI_EXE_CMD_38_SET_AHD_FLAG:I = 0x26

.field public static final JNI_EXE_CMD_3_ENCARPTION_RESULT:I = 0x3

.field public static final JNI_EXE_CMD_4_AUDIO_STATE:I = 0x4

.field public static final JNI_EXE_CMD_50_FM_ANT_EN:I = 0x32

.field public static final JNI_EXE_CMD_5_TURNOFF_LCDC:I = 0x5

.field public static final JNI_EXE_CMD_6_MUTE_AMP:I = 0x6

.field public static final JNI_EXE_CMD_7_AMP_MUTE_STATE:I = 0x7

.field public static final JNI_EXE_CMD_8_RESET_GPS:I = 0x8

.field public static final JNI_EXE_CMD_9_POWERON_SCREEN:I = 0x9


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/syu/jni/SyuJniNative;

    invoke-direct {v0}, Lcom/syu/jni/SyuJniNative;-><init>()V

    sput-object v0, Lcom/syu/jni/SyuJniNative;->INSTANCE:Lcom/syu/jni/SyuJniNative;

    const-string/jumbo v0, "syu_jni"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/syu/jni/SyuJniNative;
    .locals 1

    .line 1
    sget-object v0, Lcom/syu/jni/SyuJniNative;->INSTANCE:Lcom/syu/jni/SyuJniNative;

    return-object v0
.end method


# virtual methods
.method public native syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I
.end method
