.class public Lcom/syu/jni/SyuJniNative;
.super Ljava/lang/Object;
.source "SyuJniNative.java"


# static fields
.field public static INSTANCE:Lcom/syu/jni/SyuJniNative; = null

.field public static final JNI_EXE_CMD_0_TEST:I = 0x0

.field public static final JNI_EXE_CMD_101_PARAMA_READ:I = 0x65

.field public static final JNI_EXE_CMD_104_WRITE_GAMMA:I = 0x68

.field public static final JNI_EXE_CMD_105_SET_BL_ADJ:I = 0x69

.field public static final JNI_EXE_CMD_106_SET_BL_LIMIT:I = 0x6a

.field public static final JNI_EXE_CMD_107_GET_BL_PARAM:I = 0x6b

.field public static final JNI_EXE_CMD_109_GET_BL_DUTY:I = 0x6d

.field public static final JNI_EXE_CMD_10_LITTLE_HOM:I = 0xa

.field public static final JNI_EXE_CMD_110_SET_BL_DUTY:I = 0x6e

.field public static final JNI_EXE_CMD_112_IS_AREAACTIVED:I = 0x70

.field public static final JNI_EXE_CMD_113_ACTIVE_AREA:I = 0x71

.field public static final JNI_EXE_CMD_114_GET_ACTIVEKEY:I = 0x72

.field public static final JNI_EXE_CMD_118_GET_TOUCHLEVEL:I = 0x76

.field public static final JNI_EXE_CMD_119_SET_TOUCHLEVEL:I = 0x77

.field public static final JNI_EXE_CMD_11_VIDEO_NTSC_PAL:I = 0xb

.field public static final JNI_EXE_CMD_12_GET_USB_SPEED:I = 0xc

.field public static final JNI_EXE_CMD_13_SET_USB_SPEED:I = 0xd

.field public static final JNI_EXE_CMD_148_READ_APPDATE:I = 0x94

.field public static final JNI_EXE_CMD_149_WRITE_APPDATE:I = 0x95

.field public static final JNI_EXE_CMD_14_SET_BACKCAR_TYPE:I = 0xe

.field public static final JNI_EXE_CMD_150_GET_WRITE_FLASH_PROCESS_PID:I = 0x96

.field public static final JNI_EXE_CMD_151_SET_WRITE_FLASH_PROCESS_PID_FLAG:I = 0x97

.field public static final JNI_EXE_CMD_153_GSENSOR_POWER_ONOFF:I = 0x99

.field public static final JNI_EXE_CMD_15_GET_BACKCAR_TYPE:I = 0xf

.field public static final JNI_EXE_CMD_16_SET_LED_COLORS:I = 0x10

.field public static final JNI_EXE_CMD_17_GET_LED_COLORS:I = 0x11

.field public static final JNI_EXE_CMD_19_SET_AIRPLANE_MODE:I = 0x13

.field public static final JNI_EXE_CMD_1_BACKCAR_MIRROR:I = 0x1

.field public static final JNI_EXE_CMD_22_SET_VIDEO_SYS_MODE:I = 0x16

.field public static final JNI_EXE_CMD_23_GET_VIDEO_SYS_MODE:I = 0x17

.field public static final JNI_EXE_CMD_24_RESET_8288A:I = 0x18

.field public static final JNI_EXE_CMD_25_GET_VIDEO_MODE:I = 0x19

.field public static final JNI_EXE_CMD_26_GET_VIDEO_SIGNAL_ON:I = 0x1a

.field public static final JNI_EXE_CMD_27_SET_BL_PARAM:I = 0x1b

.field public static final JNI_EXE_CMD_28_GET_BL_PARAM:I = 0x1c

.field public static final JNI_EXE_CMD_29_ACC_STATE_TO_BSP:I = 0x1d

.field public static final JNI_EXE_CMD_2_SOUND_MIX:I = 0x2

.field public static final JNI_EXE_CMD_31_FAN_EN:I = 0x1f

.field public static final JNI_EXE_CMD_32_GET_BOOT_REVERSE_STATUS:I = 0x20

.field public static final JNI_EXE_CMD_33_RESET_VIDEOIC:I = 0x21

.field public static final JNI_EXE_CMD_34_CONTROL_SET_VIDEO_POSITION:I = 0x22

.field public static final JNI_EXE_CMD_35_SET_AUDIO_SAMPLE_RATE:I = 0x23

.field public static final JNI_EXE_CMD_3_ENCARPTION_RESULT:I = 0x3

.field public static final JNI_EXE_CMD_4_AUDIO_STATE:I = 0x4

.field public static final JNI_EXE_CMD_50_FM_ANT_EN:I = 0x32

.field public static final JNI_EXE_CMD_5_TURNOFF_LCDC:I = 0x5

.field public static final JNI_EXE_CMD_6_MUTE_AMP:I = 0x6

.field public static final JNI_EXE_CMD_7_AMP_MUTE_STATE:I = 0x7

.field public static final JNI_EXE_CMD_8_RESET_GPS:I = 0x8

.field public static final JNI_EXE_CMD_9_POWERON_SCREEN:I = 0x9

.field public static bLoadLibOnce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput-object v0, Lcom/syu/jni/SyuJniNative;->INSTANCE:Lcom/syu/jni/SyuJniNative;

    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/jni/SyuJniNative;->bLoadLibOnce:Z

    .line 76
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "syu_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static getInstance()Lcom/syu/jni/SyuJniNative;
    .locals 2

    .prologue
    .line 12
    sget-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOnce:Z

    if-nez v1, :cond_0

    .line 13
    const/4 v1, 0x1

    sput-boolean v1, Lcom/syu/jni/SyuJniNative;->bLoadLibOnce:Z

    .line 15
    :try_start_0
    sget-object v1, Lcom/syu/jni/SyuJniNative;->INSTANCE:Lcom/syu/jni/SyuJniNative;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/syu/jni/SyuJniNative;

    invoke-direct {v1}, Lcom/syu/jni/SyuJniNative;-><init>()V

    sput-object v1, Lcom/syu/jni/SyuJniNative;->INSTANCE:Lcom/syu/jni/SyuJniNative;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v1, Lcom/syu/jni/SyuJniNative;->INSTANCE:Lcom/syu/jni/SyuJniNative;

    return-object v1

    .line 17
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 18
    .restart local v0    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    sput-object v1, Lcom/syu/jni/SyuJniNative;->INSTANCE:Lcom/syu/jni/SyuJniNative;

    goto :goto_0
.end method


# virtual methods
.method public native syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I
.end method
