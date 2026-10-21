.class public Lcom/lsec/core/util/data/FinalMain;
.super Ljava/lang/Object;
.source "FinalMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/util/data/FinalMain$DOOR_STATE;,
        Lcom/lsec/core/util/data/FinalMain$Face;,
        Lcom/lsec/core/util/data/FinalMain$PanelAmbientMode;,
        Lcom/lsec/core/util/data/FinalMain$Preview;,
        Lcom/lsec/core/util/data/FinalMain$U_Options;
    }
.end annotation


# static fields
.field public static final ACTION_ROTATE_LEFT:I = 0x0

.field public static final ACTION_ROTATE_RIGHT:I = 0x1

.field public static final APP_ID_3GPHONE:I = 0xf

.field public static final APP_ID_AUDIO_PLAYER:I = 0x8

.field public static final APP_ID_AUX:I = 0x5

.field public static final APP_ID_BTAV:I = 0x3

.field public static final APP_ID_BTPHONE:I = 0x2

.field public static final APP_ID_CAR_BTPHONE:I = 0xc

.field public static final APP_ID_CAR_RADIO:I = 0xb

.field public static final APP_ID_CAR_USB:I = 0xd

.field public static final APP_ID_CNT_MAX:I = 0x14

.field public static final APP_ID_DVD:I = 0x4

.field public static final APP_ID_DVR:I = 0xe

.field public static final APP_ID_IPOD:I = 0x7

.field public static final APP_ID_LAST:I = -0x1

.field public static final APP_ID_NULL:I = 0x0

.field public static final APP_ID_RADIO:I = 0x1

.field public static final APP_ID_SPECIAL:I = 0x10

.field public static final APP_ID_THIRD_PLAYER:I = 0xa

.field public static final APP_ID_TV:I = 0x6

.field public static final APP_ID_VIDEO_PLAYER:I = 0x9

.field public static final AUTO_BLACK_SCREEN_MIN_TIME:I = 0x1e

.field public static final BACKCAR_TYPE_CAR:I = 0x1

.field public static final BACKCAR_TYPE_HOST:I = 0x0

.field public static final BRIGHT_LEVEL_DOWN:I = -0x5

.field public static final BRIGHT_LEVEL_STEP_BY_SERVER:I = -0x3

.field public static final BRIGHT_LEVEL_STEP_DOWN:I = -0x2

.field public static final BRIGHT_LEVEL_STEP_UP:I = -0x1

.field public static final BRIGHT_LEVEL_UP:I = -0x4

.field public static final BROADCAST_MS_ACTION:Ljava/lang/String; = "com.syu.ms"

.field public static final BUNDLE_KEY_CMD:Ljava/lang/String; = "cmd.acc"

.field public static final CAMERA_VOTAGE_12V:I = 0x1

.field public static final CAMERA_VOTAGE_6_5V:I = 0x0

.field public static final C_360CAMERA_BACKCAR_ENABLE:I = 0x39

.field public static final C_360CAMERA_OFF:I = 0x4c

.field public static final C_360_CONTROL:I = 0x43

.field public static final C_360_ENTER_BACKCAR:I = 0x4a

.field public static final C_AIRPLANE_MODE:I = 0x4b

.field public static final C_AMBIENT_LIGHT:I = 0x32

.field public static final C_ANY_KEY_BOOT:I = 0x2

.field public static final C_APP_ID:I = 0x0

.field public static final C_ARM_RESET_SELF:I = 0x35

.field public static final C_AUDIO_TV_IPOD_CHANNEL:I = 0x4d

.field public static final C_AUTO_BLACK_SCREEN:I = 0xd

.field public static final C_AUX_ENABLE:I = 0x2f

.field public static final C_BACKCAR_360_CAMERA:I = 0x36

.field public static final C_BACKCAR_MIRROR:I = 0x7

.field public static final C_BACKCAR_RADAR_ENABLE:I = 0x5

.field public static final C_BACKCAR_TRACK_ENABLE:I = 0x6

.field public static final C_BACKCAR_TYPE:I = 0x1c

.field public static final C_BEEP:I = 0x50

.field public static final C_BLACKSCREEN:I = 0x10

.field public static final C_BRIGHT_LEVEL:I = 0xa

.field public static final C_BRIGHT_LEVEL_DAY:I = 0xb

.field public static final C_BRIGHT_LEVEL_NIGHT:I = 0xc

.field public static final C_CAMERA_AHD_ENABLE:I = 0x57

.field public static final C_CAMERA_VOTAGE:I = 0x55

.field public static final C_CUTACC_TURNOFF_LCDC:I = 0x2a

.field public static final C_ECARLINK_ON:I = 0x2b

.field public static final C_ENTER_SLEEP_WAKEUP:I = 0x2e

.field public static final C_EXIT_APP:I = 0x51

.field public static final C_FACTORY_RESET:I = 0x26

.field public static final C_FAN_CYCLE:I = 0x22

.field public static final C_GPIO_JNI:I = 0x54

.field public static final C_GUESTURE:I = 0x27

.field public static final C_HANDBRAKE_ENABLE:I = 0x4

.field public static final C_HOST_BACKCAR_ENABLE:I = 0x28

.field public static final C_JUMP_PAGE:I = 0x18

.field public static final C_KEY:I = 0x19

.field public static final C_LAMPLET_BY_TIME:I = 0x1

.field public static final C_LAMPLET_CLEAN_ON:I = 0x31

.field public static final C_LAMPLET_COLOR_CTRL:I = 0x20

.field public static final C_LAMPLET_ON_ALWAYS:I = 0x1f

.field public static final C_LAMPLET_ON_BOOT:I = 0x1e

.field public static final C_LANGUAGE:I = 0x1a

.field public static final C_LED_COLOR:I = 0x40

.field public static final C_MCU_ERROR_CODE:I = 0x15

.field public static final C_MCU_MEMORY_CONTROL:I = 0x46

.field public static final C_MCU_ON:I = 0x11

.field public static final C_MCU_PANEL_KEY_ENABLE:I = 0x37

.field public static final C_MCU_POWER_OPTION:I = 0xf

.field public static final C_MCU_SERIAL:I = 0xe

.field public static final C_MCU_UPGRADE:I = 0x1b

.field public static final C_MIC_TYPE:I = 0x47

.field public static final C_MIRROR_UP_DOWN:I = 0x23

.field public static final C_MOTOR_DOWN_UP_BYMCU:I = 0x3e

.field public static final C_NAVI_ON_BOOT:I = 0x3

.field public static final C_NAVI_PACKAGE:I = 0x9

.field public static final C_OSD_TIME:I = 0x8

.field public static final C_OUT_BACKCAR:I = 0x25

.field public static final C_PANEL_KEY_TYPE:I = 0x1d

.field public static final C_PANORAMA_ON:I = 0x21

.field public static final C_PLAY_INFO:I = 0x17

.field public static final C_RADAR_PARK_ENABLE:I = 0x3b

.field public static final C_RADAR_POWER:I = 0x2d

.field public static final C_RESERVING_TPYE:I = 0x58

.field public static final C_RESET_ARM_LATER:I = 0x13

.field public static final C_RIGHT_CAMERA_STATE:I = 0x3c

.field public static final C_ROLL_KEY_TYPE:I = 0x3f

.field public static final C_ROTATE_SCREEN:I = 0x53

.field public static final C_SHOW_FLASH_WRITE_ON:I = 0x34

.field public static final C_SLEEP_AIRPLANE:I = 0x30

.field public static final C_STANDBY:I = 0x12

.field public static final C_START_STOP_ENABLE:I = 0x3d

.field public static final C_STATUS_SCREENSHOTS_ENABLE:I = 0x52

.field public static final C_STEER_TYPE:I = 0x56

.field public static final C_SYSTEM_PROPERTIES:I = 0x29

.field public static final C_TOUCH:I = 0x38

.field public static final C_TRACK_REVERES_ENABLE:I = 0x44

.field public static final C_TRUNK_CONTROL_CMD:I = 0x3a

.field public static final C_UPDATA_CONNET_MCU:I = 0x4e

.field public static final C_USB_ERROR_ENABLE:I = 0x41

.field public static final C_VAVDD:I = 0x4f

.field public static final C_VA_CMD:I = 0x14

.field public static final C_VCOM_VOTAGE:I = 0x49

.field public static final C_VIDEO_AUX_TV:I = 0x48

.field public static final C_VIDEO_ID:I = 0x16

.field public static final C_VIDEO_IMAGE:I = 0x24

.field public static final C_VIDEO_OUTPUT_PARAMETERS:I = 0x45

.field public static final C_VIDEO_OUT_ON:I = 0x33

.field public static final C_VIDEO_POSITION:I = 0x2c

.field public static final C_VIDEO_STOP_CAMERA:I = 0x42

.field public static final DEBUG_LOG_TPYE_FLAG:I = 0xc9

.field public static final G_APP_ID:I = 0x0

.field public static final LANG_AR:I = 0x11

.field public static final LANG_DE:I = 0x6

.field public static final LANG_DK:I = 0x10

.field public static final LANG_EN:I = 0x0

.field public static final LANG_ES:I = 0x7

.field public static final LANG_FI:I = 0xf

.field public static final LANG_FR:I = 0x5

.field public static final LANG_IT:I = 0x4

.field public static final LANG_JP:I = 0x8

.field public static final LANG_KR:I = 0x9

.field public static final LANG_NL:I = 0x12

.field public static final LANG_NO:I = 0xe

.field public static final LANG_PL:I = 0xa

.field public static final LANG_PT:I = 0xd

.field public static final LANG_RU:I = 0xb

.field public static final LANG_SE:I = 0xc

.field public static final LANG_TR:I = 0x3

.field public static final LANG_TW:I = 0x2

.field public static final LANG_ZH:I = 0x1

.field public static final LED_COLOR_AUTO:I = 0xf0

.field public static final LED_COLOR_BLUE:I = 0x0

.field public static final LED_COLOR_CYAN:I = 0x2

.field public static final LED_COLOR_GREEN:I = 0x1

.field public static final LED_COLOR_PURPLE:I = 0x4

.field public static final LED_COLOR_RED:I = 0x3

.field public static final LED_COLOR_WHITE:I = 0x6

.field public static final LED_COLOR_YELLOW:I = 0x5

.field public static final MCU_DIEECTION_KEY_360MODE:I = 0xd

.field public static final MCU_DIEECTION_KEY_BT_DIAL:I = 0x8

.field public static final MCU_DIEECTION_KEY_DOWN:I = 0x2

.field public static final MCU_DIEECTION_KEY_DVR_POWER:I = 0xe

.field public static final MCU_DIEECTION_KEY_ENTER:I = 0x0

.field public static final MCU_DIEECTION_KEY_ENTER360:I = 0xb

.field public static final MCU_DIEECTION_KEY_EXIT360:I = 0xc

.field public static final MCU_DIEECTION_KEY_LEFT:I = 0x3

.field public static final MCU_DIEECTION_KEY_MEDIA:I = 0xa

.field public static final MCU_DIEECTION_KEY_MODE:I = 0x9

.field public static final MCU_DIEECTION_KEY_RIGHT:I = 0x4

.field public static final MCU_DIEECTION_KEY_ROLL_LEFT:I = 0x5

.field public static final MCU_DIEECTION_KEY_ROLL_RIGHT:I = 0x6

.field public static final MCU_DIEECTION_KEY_UP:I = 0x1

.field public static final MCU_DIEECTION_KEY_VOICE:I = 0x7

.field public static final MCU_MEMORY_CONTROL_DATA:I = 0x3

.field public static final MCU_MEMORY_CONTROL_GETTATAL:I = 0x0

.field public static final MCU_MEMORY_CONTROL_READ:I = 0x1

.field public static final MCU_MEMORY_CONTROL_RESULT_ERROR1:I = 0x1

.field public static final MCU_MEMORY_CONTROL_RESULT_ERROR2:I = 0x1

.field public static final MCU_MEMORY_CONTROL_RESULT_SUCCESS:I = 0x0

.field public static final MCU_MEMORY_CONTROL_WRITE:I = 0x2

.field public static final MCU_POWER_OPTION_SHUTDOWN:I = 0x0

.field public static final MCU_POWER_OPTION_SLEEP:I = 0x1

.field public static final MCU_UPGRADE_CMD_TYPE_0_ONEMCU:I = 0x0

.field public static final MCU_UPGRADE_CMD_TYPE_1_COMPLTE:I = 0x1

.field public static final MCU_UPGRADE_CMD_TYPE_2_ALLINONE:I = 0x2

.field public static final MCU_UPGRADE_CMD_TYPE_3_STM32:I = 0x3

.field public static final MCU_UPGRADE_CMD_TYPE_4_SPIOSD:I = 0x4

.field public static final MCU_UPGRADE_CMD_TYPE_5_SPIMCU:I = 0x5

.field public static final MCU_UPGRADE_CMD_TYPE_6_COMPLTE:I = 0x6

.field public static final MODULE_MAIN:I = 0x1

.field public static final MODULE_NULL:I = 0x0

.field public static final PAGE_NAVI:I = 0x0

.field public static final PAGE_RECENT_TASK:I = 0x1

.field public static final PLAYER_CMD_FB:I = 0x7

.field public static final PLAYER_CMD_FF:I = 0x6

.field public static final PLAYER_CMD_NEXT:I = 0x5

.field public static final PLAYER_CMD_NUM:I = 0x8

.field public static final PLAYER_CMD_PAUSE:I = 0x2

.field public static final PLAYER_CMD_PLAY:I = 0x0

.field public static final PLAYER_CMD_PLAYPAUSE:I = 0x1

.field public static final PLAYER_CMD_PREV:I = 0x4

.field public static final PLAYER_CMD_REPEAT:I = 0x9

.field public static final PLAYER_CMD_STOP:I = 0x3

.field public static final SCREEN_ROTATION_HORIZONTAL:I = 0x1

.field public static final SCREEN_ROTATION_VERTICAL:I = 0x2

.field public static final STEER_TYPE_CANBUS:I = 0x1

.field public static final STEER_TYPE_MCU:I = 0x0

.field public static final TIP_BT_ERROR:I = 0x2

.field public static final TIP_DEBUG_MSG:I = 0x4

.field public static final TIP_GPS_ERROR:I = 0x6

.field public static final TIP_KEY_POWER:I = 0x1

.field public static final TIP_MCU_MATCH_ERROR:I = 0x7

.field public static final TIP_MCU_NEED_UPDATE:I = 0x5

.field public static final TIP_NO_NAVI_SET:I = 0x0

.field public static final TIP_STORAGE_NOT_ENOUGH:I = 0x3

.field public static final TIP_USB_ERROR:I = 0x8

.field public static final TIP_USB_NOEMAL:I = 0x9

.field public static final U_360CAMERA_BACKCAR_ENABLE:I = 0x53

.field public static final U_ACC_ON:I = 0x32

.field public static final U_AIR_CONTROL_SUPPORT_CMD:I = 0x48

.field public static final U_AMBIENT_LIGHT:I = 0x4f

.field public static final U_ANY_KEY_BOOT:I = 0x5

.field public static final U_APP_ID:I = 0x0

.field public static final U_APP_VISIBILITY:I = 0x27

.field public static final U_ARM_SLEEP_WAKEUP:I = 0x2b

.field public static final U_AUTO_BLACK_SCREEN:I = 0x24

.field public static final U_AUX_ENABLE:I = 0x49

.field public static final U_AUX_IPOD_AUDIO_CHANNEL:I = 0x70

.field public static final U_AVDD:I = 0x74

.field public static final U_BACKCAR:I = 0xc

.field public static final U_BACKCAR_360_CAMERA:I = 0x51

.field public static final U_BACKCAR_MIRROR:I = 0x18

.field public static final U_BACKCAR_RADAR:I = 0x16

.field public static final U_BACKCAR_RADAR_ENABLE:I = 0x1b

.field public static final U_BACKCAR_TRACK_ENABLE:I = 0x17

.field public static final U_BACKCAR_TYPE:I = 0x2f

.field public static final U_BLACK_SCREEN:I = 0x3

.field public static final U_BLACK_STANDBY:I = 0x6e

.field public static final U_BRIGHT_LEVEL:I = 0x1f

.field public static final U_BRIGHT_LEVEL_DAY:I = 0x20

.field public static final U_BRIGHT_LEVEL_NIGHT:I = 0x21

.field public static final U_CAMERA_AHD_ENABLE:I = 0x79

.field public static final U_CAMERA_VOTAGE:I = 0x77

.field public static final U_CAR_BATTERY_VATAGE:I = 0x72

.field public static final U_CNC_AUX_ENABLE:I = 0x62

.field public static final U_CNT_MAX:I = 0x100

.field public static final U_CORE_BOARD_CURRENT:I = 0x73

.field public static final U_CUTACC_DELAY_CLOSE_SCREEN:I = 0x47

.field public static final U_CUTACC_TURNOFF_LCDC:I = 0x42

.field public static final U_CUT_ACC_POWER:I = 0x19

.field public static final U_ECARLINK_ON:I = 0x43

.field public static final U_EXIST_SD1_ON_ARM:I = 0x9

.field public static final U_EXIST_SD2_ON_ARM:I = 0xa

.field public static final U_EXIST_USB_ON_ARM:I = 0xb

.field public static final U_FAN_CYCLE:I = 0x38

.field public static final U_GPS_SPEED:I = 0x65

.field public static final U_GUESTURE:I = 0x40

.field public static final U_HANDBRAKE:I = 0x7

.field public static final U_HANDBRAKE_ENABLE:I = 0x8

.field public static final U_HJ_AUD_TOP_APP:I = 0xc8

.field public static final U_HJ_BAIDU_TOP:I = 0xc6

.field public static final U_HOST_BACKCAR_ENABLE:I = 0x41

.field public static final U_ID3_TITLE:I = 0x31

.field public static final U_LAMPLET:I = 0x4

.field public static final U_LAMPLET_BY_TIME:I = 0x1d

.field public static final U_LAMPLET_CLEAN_ON:I = 0x4e

.field public static final U_LAMPLET_COLOR_CTRL:I = 0x36

.field public static final U_LAMPLET_ON_ALWAYS:I = 0x35

.field public static final U_LAMPLET_ON_BOOT:I = 0x34

.field public static final U_LED_COLOR:I = 0x63

.field public static final U_MCU_BOOT_ON:I = 0x3e

.field public static final U_MCU_DIEECTION_KEY:I = 0x3c

.field public static final U_MCU_ERROR_CODE:I = 0x2e

.field public static final U_MCU_MEMORY_CONTROL:I = 0x6a

.field public static final U_MCU_ON:I = 0x1

.field public static final U_MCU_PANEL_KEY_ENABLE:I = 0x52

.field public static final U_MCU_POWER_OPTION:I = 0x26

.field public static final U_MCU_REQUEST_VIDEO:I = 0x3b

.field public static final U_MCU_SERIAL:I = 0x23

.field public static final U_MCU_VER:I = 0x22

.field public static final U_MIC_TYPE:I = 0x6b

.field public static final U_MIRROR_UP_DOWN:I = 0x3a

.field public static final U_NAVI_ON_BOOT:I = 0x6

.field public static final U_NAVI_PACKAGE:I = 0x1c

.field public static final U_NAVI_SOUND:I = 0x6f

.field public static final U_NAVI_TOP:I = 0x71

.field public static final U_OSD_TIME:I = 0x1a

.field public static final U_PANEL_KEY_TYPE:I = 0x33

.field public static final U_PANEL_KEY_TYPE_CNT:I = 0x3f

.field public static final U_PANORAMA_ON:I = 0x37

.field public static final U_PLAYER_CMD:I = 0x25

.field public static final U_PLAY_STATUS:I = 0x4a

.field public static final U_RADAR:I = 0xd

.field public static final U_RADAR_FL:I = 0xe

.field public static final U_RADAR_FML:I = 0xf

.field public static final U_RADAR_FMR:I = 0x10

.field public static final U_RADAR_FR:I = 0x11

.field public static final U_RADAR_LSB:I = 0x61

.field public static final U_RADAR_LSF:I = 0x5e

.field public static final U_RADAR_LSMB:I = 0x60

.field public static final U_RADAR_LSMF:I = 0x5f

.field public static final U_RADAR_PARK_ENABLE:I = 0x56

.field public static final U_RADAR_POWER:I = 0x4b

.field public static final U_RADAR_RL:I = 0x12

.field public static final U_RADAR_RML:I = 0x13

.field public static final U_RADAR_RMR:I = 0x14

.field public static final U_RADAR_RR:I = 0x15

.field public static final U_RADAR_RSB:I = 0x5d

.field public static final U_RADAR_RSF:I = 0x5a

.field public static final U_RADAR_RSMB:I = 0x5c

.field public static final U_RADAR_RSMF:I = 0x5b

.field public static final U_REQUEST_CAMERA:I = 0x44

.field public static final U_RESERVE:I = 0x1e

.field public static final U_RESERVE2:I = 0x2c

.field public static final U_RESERVING_TPYE:I = 0x7a

.field public static final U_RESET_ARM_LATER:I = 0x3d

.field public static final U_ROLL_KEY_TYPE:I = 0x59

.field public static final U_SCREEN_TOUCH_EVENT:I = 0x4d

.field public static final U_SHOW_FLASH_WRITE_ON:I = 0x50

.field public static final U_SIGNAL_NTSC_PAL:I = 0x46

.field public static final U_SIGNAL_ON:I = 0x45

.field public static final U_SLEEP_AIRPLANE:I = 0x4c

.field public static final U_SPI_MCU_VER:I = 0x55

.field public static final U_SPI_OSD_VER:I = 0x54

.field public static final U_STANDBY:I = 0x2

.field public static final U_START_STOP_ENABLE:I = 0x58

.field public static final U_STATUS_SCREENSHOTS_ENABLE:I = 0x75

.field public static final U_STEER_ANGLE:I = 0x29

.field public static final U_STEER_TYPE:I = 0x78

.field public static final U_SYSTEM_SLEEP_STATE:I = 0x67

.field public static final U_TEMP_OUT:I = 0x28

.field public static final U_TIP:I = 0x2d

.field public static final U_TIP_MCU_UPGRADE:I = 0x30

.field public static final U_TRACK_REVERES_ENABLE:I = 0x66

.field public static final U_TRUNK_CONTROL_STATE:I = 0x57

.field public static final U_USB_ERROR_ENABLE:I = 0x64

.field public static final U_USB_INDEX:I = 0x76

.field public static final U_VA_AUDIO_OCCUPIED:I = 0x39

.field public static final U_VA_AUDIO_OCCUPIED_TO_APP:I = 0x68

.field public static final U_VA_CMD:I = 0x2a

.field public static final U_VCOM_VATAGE:I = 0x6d

.field public static final U_VIDEO_AUX_TV:I = 0x6c

.field public static final U_VIDEO_OUTPUT_PARAMETERS:I = 0x69

.field public static final VIDEO_ID_360APP:I = 0xa

.field public static final VIDEO_ID_AUX:I = 0x2

.field public static final VIDEO_ID_BACKCAR:I = 0x1

.field public static final VIDEO_ID_CAR_VIDEO:I = 0x8

.field public static final VIDEO_ID_DVD:I = 0x3

.field public static final VIDEO_ID_DVR:I = 0x5

.field public static final VIDEO_ID_MAX_CNT:I = 0xb

.field public static final VIDEO_ID_NULL:I = 0x0

.field public static final VIDEO_ID_RIGHTCAMERA:I = 0x6

.field public static final VIDEO_ID_TV_ANALOG:I = 0x4

.field public static final VIDEO_ID_TV_DIGIT:I = 0x7

.field public static final VIDEO_OUTPUT_HORIZONTAL_POSITION:I = 0x3

.field public static final VIDEO_OUTPUT_HORIZONTAL_SYNC:I = 0x1

.field public static final VIDEO_OUTPUT_RESET:I = 0x5

.field public static final VIDEO_OUTPUT_TYPE:I = 0x0

.field public static final VIDEO_OUTPUT_VERTICAL_POSITION:I = 0x4

.field public static final VIDEO_OUTPUT_VERTICAL_SYNC:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
