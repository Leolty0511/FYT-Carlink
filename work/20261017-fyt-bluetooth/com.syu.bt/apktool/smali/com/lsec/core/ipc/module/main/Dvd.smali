.class public Lcom/lsec/core/ipc/module/main/Dvd;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "Dvd.java"

# interfaces
.implements Lcom/lsec/core/ipc/IConnStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;
    }
.end annotation


# static fields
.field public static final Backward_1:I = 0x2

.field public static final Backward_2:I = 0x4

.field public static final Backward_3:I = 0x8

.field public static final Backward_4:I = 0x10

.field public static final Backward_5:I = 0x20

.field public static final CHANNEL_AUTOL:I = 0x7

.field public static final CHANNEL_AUTOR:I = 0x8

.field public static final CHANNEL_MONOL:I = 0x5

.field public static final CHANNEL_MONOR:I = 0x6

.field public static final CHANNEL_NULL:I = 0x0

.field public static final CHANNEL_STEREO:I = 0x4

.field public static DATA:[I = null

.field public static final Forward_1:I = 0x2

.field public static final Forward_2:I = 0x4

.field public static final Forward_3:I = 0x8

.field public static final Forward_4:I = 0x10

.field public static final Forward_5:I = 0x20

.field public static final IDS_1:I = 0x10c

.field public static final IDS_16_9:I = 0xc

.field public static final IDS_1_KID_SAFE:I = 0x28

.field public static final IDS_2_G:I = 0x29

.field public static final IDS_3D:I = 0x32

.field public static final IDS_3_PG:I = 0x2a

.field public static final IDS_4_3_PAN_SCAN:I = 0xa

.field public static final IDS_4_PG13:I = 0x2b

.field public static final IDS_5_PG_R:I = 0x2c

.field public static final IDS_6_R:I = 0x2d

.field public static final IDS_7_NC_17:I = 0x2e

.field public static final IDS_8_ADULT:I = 0x2f

.field public static final IDS_ACTION:I = 0x39

.field public static final IDS_ADJUST:I = 0x10

.field public static final IDS_AF:I = 0x10a

.field public static final IDS_AFMT_NOSUPPORT:I = 0xa5

.field public static final IDS_ALL:I = 0x6d

.field public static final IDS_ANGLE:I = 0x81

.field public static final IDS_ARABIC:I = 0xcc

.field public static final IDS_ARENA:I = 0x35

.field public static final IDS_AS:I = 0x100

.field public static final IDS_ASPECT_RATIO:I = 0x9

.field public static final IDS_AUDIO:I = 0x30

.field public static final IDS_AUDIO_1:I = 0x133

.field public static final IDS_AUDIO_2:I = 0x134

.field public static final IDS_AUDIO_3:I = 0x135

.field public static final IDS_AUDIO_IN:I = 0x132

.field public static final IDS_AUDIO_LANGUAGE:I = 0x1c

.field public static final IDS_AUDIO_OUT:I = 0x3c

.field public static final IDS_AUTO:I = 0x8

.field public static final IDS_AUTO_ANSWER:I = 0xf2

.field public static final IDS_AUTO_CONNECT:I = 0xf1

.field public static final IDS_AUTO_L:I = 0x53

.field public static final IDS_AUTO_R:I = 0x54

.field public static final IDS_AUTO_SEEK:I = 0x107

.field public static final IDS_AUXIN:I = 0x60

.field public static final IDS_AV1:I = 0x137

.field public static final IDS_AV2:I = 0x138

.field public static final IDS_AV3:I = 0x139

.field public static final IDS_BACK:I = 0x83

.field public static final IDS_BACKWARD:I = 0x8e

.field public static final IDS_BALITIC:I = 0x15e

.field public static final IDS_BASS_MODE_1:I = 0xdd

.field public static final IDS_BASS_MODE_2:I = 0xde

.field public static final IDS_BLUETOOTH:I = 0x65

.field public static final IDS_BRAZIL:I = 0xd5

.field public static final IDS_BRIGHTNESS:I = 0x11

.field public static final IDS_BT_HFP_NOT_CONNECT:I = 0x151

.field public static final IDS_BT_MUSIC:I = 0x64

.field public static final IDS_BT_NOT_CONNECT:I = 0x150

.field public static final IDS_BT_NOT_FIND_PBAP_PROFILE:I = 0x152

.field public static final IDS_BT_PHONE:I = 0x63

.field public static final IDS_BULGARIAN:I = 0xd0

.field public static final IDS_CAMERA:I = 0x5e

.field public static final IDS_CANCEL:I = 0x57

.field public static final IDS_CARD:I = 0x5b

.field public static final IDS_CHANGE:I = 0x26

.field public static final IDS_CHANGE_PASSWORD:I = 0x72

.field public static final IDS_CHAPTER:I = 0x80

.field public static final IDS_CHAPTER_TIME:I = 0x9f

.field public static final IDS_CHINESE:I = 0x3

.field public static final IDS_CHURCH:I = 0x36

.field public static final IDS_CLASSIC:I = 0x13b

.field public static final IDS_CLOSE:I = 0x89

.field public static final IDS_CONCERT:I = 0x3b

.field public static final IDS_CONFIRM:I = 0x75

.field public static final IDS_CONTRAST:I = 0x12

.field public static final IDS_CROATIAN:I = 0xd1

.field public static final IDS_CSPK:I = 0xd9

.field public static final IDS_CZECH:I = 0xbb

.field public static final IDS_DANISH:I = 0xc1

.field public static final IDS_DEFAULT:I = 0x55

.field public static final IDS_DELETE:I = 0x14e

.field public static final IDS_DEVICE_ERR:I = 0x112

.field public static final IDS_DEVICE_LIST:I = 0xfb

.field public static final IDS_DIGITAL:I = 0x48

.field public static final IDS_DIGITAL_AUDIO:I = 0x6a

.field public static final IDS_DIGITAL_OUTPUT:I = 0x6b

.field public static final IDS_DIMMER:I = 0x18

.field public static final IDS_DIMMER_LEVEL:I = 0x19

.field public static final IDS_DISC:I = 0x1b

.field public static final IDS_DISC_ERROR:I = 0xab

.field public static final IDS_DISC_MENU:I = 0x6f

.field public static final IDS_DISC_NOSUPPORT:I = 0xac

.field public static final IDS_DISC_TIME:I = 0x9d

.field public static final IDS_DIVX:I = 0xe5

.field public static final IDS_DIVX_1:I = 0x116

.field public static final IDS_DIVX_10:I = 0x11f

.field public static final IDS_DIVX_11:I = 0x120

.field public static final IDS_DIVX_12:I = 0x121

.field public static final IDS_DIVX_13:I = 0x122

.field public static final IDS_DIVX_14:I = 0x123

.field public static final IDS_DIVX_15:I = 0x124

.field public static final IDS_DIVX_16:I = 0x125

.field public static final IDS_DIVX_17:I = 0x126

.field public static final IDS_DIVX_18:I = 0x127

.field public static final IDS_DIVX_19:I = 0x128

.field public static final IDS_DIVX_2:I = 0x117

.field public static final IDS_DIVX_20:I = 0x129

.field public static final IDS_DIVX_21:I = 0x12a

.field public static final IDS_DIVX_22:I = 0x12b

.field public static final IDS_DIVX_23:I = 0x12c

.field public static final IDS_DIVX_24:I = 0x12d

.field public static final IDS_DIVX_25:I = 0x12e

.field public static final IDS_DIVX_26:I = 0x12f

.field public static final IDS_DIVX_27:I = 0x130

.field public static final IDS_DIVX_28:I = 0x131

.field public static final IDS_DIVX_3:I = 0x118

.field public static final IDS_DIVX_4:I = 0x119

.field public static final IDS_DIVX_5:I = 0x11a

.field public static final IDS_DIVX_6:I = 0x11b

.field public static final IDS_DIVX_7:I = 0x11c

.field public static final IDS_DIVX_8:I = 0x11d

.field public static final IDS_DIVX_9:I = 0x11e

.field public static final IDS_DIVX_SUBTITLE:I = 0x70

.field public static final IDS_DIVX_VOD:I = 0xe6

.field public static final IDS_DONTPOWEROFF:I = 0x148

.field public static final IDS_DOWNMIX:I = 0x41

.field public static final IDS_DOWNMIX_STEREO:I = 0x43

.field public static final IDS_DRAMA:I = 0x3a

.field public static final IDS_DTV:I = 0x14d

.field public static final IDS_DUAL_MONO:I = 0x4d

.field public static final IDS_DUAL_MONO_STEREO:I = 0x4e

.field public static final IDS_DUTCH:I = 0xbf

.field public static final IDS_DVBT:I = 0x5f

.field public static final IDS_DYNAMIC_COMPRESS:I = 0x49

.field public static final IDS_ENGLISH:I = 0x2

.field public static final IDS_ENTERKEYNUM:I = 0x14b

.field public static final IDS_EQ:I = 0x13a

.field public static final IDS_ERROR_PARENT:I = 0xaa

.field public static final IDS_ESTONIAN:I = 0xd2

.field public static final IDS_EXTEND_MODE:I = 0x114

.field public static final IDS_FILE:I = 0x159

.field public static final IDS_FILE_NAME:I = 0xa1

.field public static final IDS_FINNISH:I = 0xc3

.field public static final IDS_FMAM:I = 0x5c

.field public static final IDS_FOLDER:I = 0x7d

.field public static final IDS_FORWARD:I = 0x8d

.field public static final IDS_FRENCH:I = 0x1e

.field public static final IDS_FREQ:I = 0xe4

.field public static final IDS_FREQ_192:I = 0xe3

.field public static final IDS_FREQ_48:I = 0xe1

.field public static final IDS_FREQ_96:I = 0xe2

.field public static final IDS_FSPK:I = 0xd8

.field public static final IDS_GERMAN:I = 0x22

.field public static final IDS_GOTO:I = 0x110

.field public static final IDS_GPS:I = 0x61

.field public static final IDS_GREEK:I = 0xc4

.field public static final IDS_HALL:I = 0x34

.field public static final IDS_HEBREW:I = 0xce

.field public static final IDS_HEBREWNEW:I = 0xcd

.field public static final IDS_HINDI:I = 0xbe

.field public static final IDS_HUE:I = 0x13

.field public static final IDS_HUNGARIAN:I = 0xbc

.field public static final IDS_ICELANDIC:I = 0xbd

.field public static final IDS_INDONESIAN:I = 0xca

.field public static final IDS_INDONESIANNEW:I = 0xcb

.field public static final IDS_INITIALIZE:I = 0x9a

.field public static final IDS_INPUT_PINCODE:I = 0x103

.field public static final IDS_INTRO:I = 0x10e

.field public static final IDS_INVALID:I = 0x8f

.field public static final IDS_IPOD:I = 0x5d

.field public static final IDS_IPODE_MODE:I = 0x113

.field public static final IDS_ITALIAN:I = 0xc8

.field public static final IDS_JAPAN:I = 0x1d

.field public static final IDS_JAZZ:I = 0x13d

.field public static final IDS_KOREAN:I = 0xc6

.field public static final IDS_LATIN:I = 0x21

.field public static final IDS_LATVIAN:I = 0xd4

.field public static final IDS_LETTER_BOX:I = 0xb

.field public static final IDS_LINE_OUT:I = 0x4b

.field public static final IDS_LITHUANIAN:I = 0xd3

.field public static final IDS_LIVE:I = 0x142

.field public static final IDS_LIVING_ROOM:I = 0x33

.field public static final IDS_LOADING:I = 0x87

.field public static final IDS_LOCAL:I = 0xff

.field public static final IDS_LPCM_OUTPUT:I = 0x6c

.field public static final IDS_LT_RT:I = 0x42

.field public static final IDS_MANUAL_SEEK:I = 0x108

.field public static final IDS_MELAYU:I = 0xd7

.field public static final IDS_MENU:I = 0x7e

.field public static final IDS_MENU_LANGUAGE:I = 0x24

.field public static final IDS_MICONOFF:I = 0xdc

.field public static final IDS_MONO_L:I = 0x4f

.field public static final IDS_MONO_LEFT:I = 0x93

.field public static final IDS_MONO_MIX:I = 0x51

.field public static final IDS_MONO_R:I = 0x50

.field public static final IDS_MONO_RIGHT:I = 0x94

.field public static final IDS_MOVIE_MODE:I = 0x37

.field public static final IDS_MUSIC:I = 0x67

.field public static final IDS_MUTE:I = 0xb3

.field public static final IDS_NEW_PASSWORD:I = 0x74

.field public static final IDS_NEW_VERSION:I = 0x145

.field public static final IDS_NEXT:I = 0x90

.field public static final IDS_NO:I = 0x59

.field public static final IDS_NOAUDIO:I = 0xa3

.field public static final IDS_NOCONNECTED:I = 0xfd

.field public static final IDS_NODISC:I = 0x86

.field public static final IDS_NORWEGIAN:I = 0xc5

.field public static final IDS_NOSIGNAL:I = 0x102

.field public static final IDS_NOSUPPORT_FILE:I = 0xad

.field public static final IDS_NOVIEO:I = 0xa4

.field public static final IDS_NO_SUB:I = 0xb0

.field public static final IDS_NTSC:I = 0x5

.field public static final IDS_OFF:I = 0xf

.field public static final IDS_OK:I = 0x56

.field public static final IDS_OLD_PASSWORD:I = 0x73

.field public static final IDS_OLD_VERSION:I = 0x144

.field public static final IDS_ON:I = 0xe

.field public static final IDS_ON_PHONE:I = 0x104

.field public static final IDS_OPEN:I = 0x88

.field public static final IDS_OP_MODE:I = 0x4a

.field public static final IDS_OSD_LANGUAGE:I = 0x1

.field public static final IDS_OTHER:I = 0xb2

.field public static final IDS_PAL:I = 0x6

.field public static final IDS_PAL60:I = 0x7

.field public static final IDS_PANEL:I = 0x17

.field public static final IDS_PANEL_ADJUST:I = 0x1a

.field public static final IDS_PASSIVE:I = 0x140

.field public static final IDS_PASSWORD:I = 0x25

.field public static final IDS_PAUSE:I = 0x8c

.field public static final IDS_PBC:I = 0x15a

.field public static final IDS_PBC_OFF:I = 0x97

.field public static final IDS_PBC_OFF_ONLY:I = 0x98

.field public static final IDS_PBC_ON:I = 0x95

.field public static final IDS_PBC_ON_ONLY:I = 0x96

.field public static final IDS_PCM_ONLY:I = 0x6e

.field public static final IDS_PHONE:I = 0xfa

.field public static final IDS_PHONENUMBERS:I = 0xfc

.field public static final IDS_PHOTO:I = 0x68

.field public static final IDS_PIC_ANTICLOCKWIZE:I = 0xb7

.field public static final IDS_PIC_CLOCKWIZE:I = 0xb6

.field public static final IDS_PIC_LEFTRIGHT:I = 0xb5

.field public static final IDS_PIC_UPDOWN:I = 0xb4

.field public static final IDS_PIN_CODE:I = 0xf9

.field public static final IDS_PLAY:I = 0x8a

.field public static final IDS_PLAYING:I = 0x8b

.field public static final IDS_PLAY_EFFECT:I = 0x153

.field public static final IDS_PL_MOVIE:I = 0xdf

.field public static final IDS_PL_MUSIC:I = 0xe0

.field public static final IDS_POLISH:I = 0xba

.field public static final IDS_POP:I = 0x13e

.field public static final IDS_PORTUGUESE:I = 0x20

.field public static final IDS_PREV:I = 0x91

.field public static final IDS_PRE_STOP:I = 0xa2

.field public static final IDS_PROGRESSIVE:I = 0xd

.field public static final IDS_PROLOGIC:I = 0xdb

.field public static final IDS_RADIO:I = 0xfe

.field public static final IDS_RANDOM:I = 0x10f

.field public static final IDS_RATING:I = 0x27

.field public static final IDS_RDS:I = 0x109

.field public static final IDS_RECORD:I = 0x14f

.field public static final IDS_REPAB_INVALID:I = 0x7b

.field public static final IDS_REPEAT:I = 0x76

.field public static final IDS_REPEAT_A:I = 0x79

.field public static final IDS_REPEAT_AB:I = 0x7a

.field public static final IDS_REP_CANCEL:I = 0x77

.field public static final IDS_RESUME:I = 0x9c

.field public static final IDS_RETURN:I = 0x82

.field public static final IDS_RETURN_MENU:I = 0x15c

.field public static final IDS_RETURN_TITLE:I = 0x15b

.field public static final IDS_RF_REMOD:I = 0x4c

.field public static final IDS_RING_CAR_TONE:I = 0xf5

.field public static final IDS_RING_PHONE:I = 0xf6

.field public static final IDS_RING_SILENT:I = 0xf7

.field public static final IDS_RING_TONE:I = 0xf4

.field public static final IDS_RING_VOLUME:I = 0xf8

.field public static final IDS_ROCK:I = 0x13c

.field public static final IDS_ROMANIAN:I = 0xcf

.field public static final IDS_ROOT_MENU:I = 0x99

.field public static final IDS_RPAB_CANCEL:I = 0x78

.field public static final IDS_RUSSIAN:I = 0xc9

.field public static final IDS_SATURATION:I = 0x14

.field public static final IDS_SCI_FI:I = 0x38

.field public static final IDS_SEEK_MODE:I = 0x106

.field public static final IDS_SELECTCPRMKEYNUM:I = 0x14a

.field public static final IDS_SETUP:I = 0x66

.field public static final IDS_SHARPNESS:I = 0x15

.field public static final IDS_SHUFFLE:I = 0x10d

.field public static final IDS_SIMPLEREMOTE:I = 0x115

.field public static final IDS_SLOVENIAN:I = 0xd6

.field public static final IDS_SMS_NOTIFY:I = 0xf3

.field public static final IDS_SOUND:I = 0x13f

.field public static final IDS_SOUND_MODE:I = 0x31

.field public static final IDS_SPANISH:I = 0x1f

.field public static final IDS_SPDIF_OFF:I = 0x3d

.field public static final IDS_SPDIF_PCM:I = 0x3f

.field public static final IDS_SPDIF_RAW:I = 0x3e

.field public static final IDS_SPEAKER:I = 0x40

.field public static final IDS_SSPK:I = 0xda

.field public static final IDS_STANDARD:I = 0x71

.field public static final IDS_STARTUPGRADE:I = 0x147

.field public static final IDS_STEREO:I = 0x52

.field public static final IDS_SUBTITLE_LANGUAGE:I = 0x23

.field public static final IDS_SUBWOOFER:I = 0x45

.field public static final IDS_SUBWOOFER_OFF:I = 0x47

.field public static final IDS_SUBWOOFER_ON:I = 0x46

.field public static final IDS_SUB_OFF:I = 0xae

.field public static final IDS_SUB_ON:I = 0xaf

.field public static final IDS_SUB_UNSUPPORT:I = 0xb1

.field public static final IDS_SUPERMENU:I = 0x111

.field public static final IDS_SWEDISH:I = 0xc2

.field public static final IDS_SYSTEM:I = 0x0

.field public static final IDS_TA:I = 0x10b

.field public static final IDS_TCHINESE:I = 0x15d

.field public static final IDS_THAI:I = 0xc7

.field public static final IDS_TIME:I = 0x158

.field public static final IDS_TITLE:I = 0x7f

.field public static final IDS_TITLE_TIME:I = 0x9e

.field public static final IDS_TOTAL:I = 0x92

.field public static final IDS_TOTALCPRMKEYNUM:I = 0x149

.field public static final IDS_TOUCH_SET_FAIL:I = 0x85

.field public static final IDS_TOUCH_SET_OK:I = 0x84

.field public static final IDS_TRACK:I = 0x7c

.field public static final IDS_TRACK_TIME:I = 0xa0

.field public static final IDS_TURKISH:I = 0xc0

.field public static final IDS_TV_SYSTEM:I = 0x4

.field public static final IDS_UNSUPPORTED:I = 0x9b

.field public static final IDS_UPGRADE:I = 0x143

.field public static final IDS_USB:I = 0x5a

.field public static final IDS_VCOMVAL:I = 0x16

.field public static final IDS_VFMT_NOSUPPORT:I = 0xa6

.field public static final IDS_VFRMRATE_NOSUPPORT:I = 0xa7

.field public static final IDS_VIDEO:I = 0x69

.field public static final IDS_VIDEO_IN:I = 0x136

.field public static final IDS_VIETNAM:I = 0x15f

.field public static final IDS_VMCD:I = 0x62

.field public static final IDS_VMCD_BACK:I = 0xec

.field public static final IDS_VMCD_DELETE:I = 0xea

.field public static final IDS_VMCD_DELETE_DIALOG:I = 0xe7

.field public static final IDS_VMCD_ENCOCE:I = 0xe9

.field public static final IDS_VMCD_HOME:I = 0xeb

.field public static final IDS_VMCD_REP_1:I = 0xee

.field public static final IDS_VMCD_REP_ALL:I = 0xef

.field public static final IDS_VMCD_REP_OFF:I = 0xed

.field public static final IDS_VMCD_STOP:I = 0xf0

.field public static final IDS_VMCD_STOP_DIALOG:I = 0xe8

.field public static final IDS_VRES_NOSUPPORT:I = 0xa8

.field public static final IDS_VS:I = 0x101

.field public static final IDS_VSURROUND:I = 0x44

.field public static final IDS_WAIT4SERVICEINFO:I = 0x105

.field public static final IDS_WANTTOUPGRADE:I = 0x146

.field public static final IDS_WIDE:I = 0x141

.field public static final IDS_WIPE_BOTTOM:I = 0x155

.field public static final IDS_WIPE_LEFT:I = 0x156

.field public static final IDS_WIPE_RIGHT:I = 0x157

.field public static final IDS_WIPE_TOP:I = 0x154

.field public static final IDS_WRITTINGFLASH:I = 0x14c

.field public static final IDS_WRONG_REGION:I = 0xa9

.field public static final IDS_YES:I = 0x58

.field public static final IDS_ZOOM:I = 0xb8

.field public static final IDS_ZOOMOFF:I = 0xb9

.field private static INSTANCE:Lcom/lsec/core/ipc/module/main/Dvd; = null

.field public static final INTRO_OFF:I = 0x0

.field public static final INTRO_ON:I = 0x1

.field public static LOCK_PLAY_TIME:Lcom/lsec/core/util/TimeLock; = null

.field public static PROXY:Lcom/lsec/core/ipc/ModuleProxy; = null

.field public static final RANDOM_OFF:I = 0x0

.field public static final RANDOM_ON:I = 0x1

.field public static final REPEAT_ALLDISC:I = 0x14

.field public static final REPEAT_DIRECTORY:I = 0x2

.field public static final REPEAT_DISC:I = 0x3

.field public static final REPEAT_DVDDISC:I = 0x4

.field public static final REPEAT_IDLE:I = 0x0

.field public static final REPEAT_IDLE2:I = 0x10

.field public static final REPEAT_NULL:I = 0x12

.field public static final REPEAT_ONE:I = 0x11

.field public static final REPEAT_TITLE:I = 0x13

.field public static final REPEAT_TRACK:I = 0x1

.field public static final VOCAL_CANCEL:I = 0x1

.field public static final VOCAL_CANCEL_AUTO:I = 0x2

.field public static final VOCAL_MIX_MONO:I = 0x3

.field public static final Zoom_1:I = 0x2

.field public static final Zoom_2:I = 0x3

.field public static final Zoom_3:I = 0x4

.field public static final Zoom_4:I = 0x5

.field public static final Zoom_5:I = 0x6

.field public static final Zoom_6:I = 0x7

.field public static final Zoom_7:I = 0x8

.field public static final Zoom_Null:I = 0xff

.field public static isLoadError:Z

.field public static isShowOsdInfo:Z

.field public static mInterfaceDvdConn:Lcom/lsec/core/util/InterfaceDvdConn;

.field public static mOsdInfo:I

.field public static mOsdShowTime:I

.field public static mOsdSubTitleType:I

.field public static mOsdType:I

.field public static mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

.field public static mStrOsdInfo:Ljava/lang/String;

.field public static mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

.field public static sAudioFileCnt:I

.field public static sAudioFolderCnt:I

.field public static sDvdModule:I

.field public static sEnterListManual:Z

.field public static sId3Album:Ljava/lang/String;

.field public static sId3Artist:Ljava/lang/String;

.field public static sId3Title:Ljava/lang/String;

.field public static sLockPlayTime:Z

.field public static sPhotoFileCnt:I

.field public static sPhotoFolderCnt:I

.field public static sTrackTitle:Ljava/lang/String;

.field public static sVideoFileCnt:I

.field public static sVideoFolderCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 20
    sput-object v3, Lcom/lsec/core/ipc/module/main/Dvd;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 423
    new-instance v0, Lcom/lsec/core/ipc/module/main/Dvd;

    invoke-direct {v0}, Lcom/lsec/core/ipc/module/main/Dvd;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->INSTANCE:Lcom/lsec/core/ipc/module/main/Dvd;

    .line 433
    new-instance v0, Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {v0}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    .line 434
    new-instance v0, Lcom/lsec/core/ipc/ModuleProxy;

    invoke-direct {v0}, Lcom/lsec/core/ipc/ModuleProxy;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 435
    const/16 v0, 0x32

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->DATA:[I

    .line 437
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->DATA:[I

    const/16 v1, 0x14

    aput v2, v0, v1

    .line 443
    sput-boolean v2, Lcom/lsec/core/ipc/module/main/Dvd;->isShowOsdInfo:Z

    .line 446
    new-instance v0, Lcom/lsec/core/util/TimeLock;

    invoke-direct {v0}, Lcom/lsec/core/util/TimeLock;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->LOCK_PLAY_TIME:Lcom/lsec/core/util/TimeLock;

    .line 448
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lsec/core/ipc/module/main/Dvd;->isLoadError:Z

    .line 456
    sput-object v3, Lcom/lsec/core/ipc/module/main/Dvd;->mInterfaceDvdConn:Lcom/lsec/core/util/InterfaceDvdConn;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/syu/ipc/IModuleCallback$Stub;-><init>()V

    .line 431
    return-void
.end method

.method public static OsdInfo(I[I[F[Ljava/lang/String;)V
    .locals 1
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    .line 593
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    invoke-static {p1}, Lcom/lsec/core/ipc/module/main/Dvd;->updateOsdInfos([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mStrOsdInfo:Ljava/lang/String;

    .line 595
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 597
    :cond_0
    return-void
.end method

.method public static UpdateRandom(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 528
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->DATA:[I

    aget v0, v0, p0

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 530
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->DATA:[I

    aget v1, p1, v2

    aput v1, v0, p0

    .line 531
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 534
    :cond_0
    return-void
.end method

.method public static deviceOnDvd(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 519
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->DATA:[I

    aget v0, v0, p0

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 521
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->DATA:[I

    aget v1, p1, v2

    aput v1, v0, p0

    .line 522
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 525
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/lsec/core/ipc/module/main/Dvd;
    .locals 1

    .prologue
    .line 426
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->INSTANCE:Lcom/lsec/core/ipc/module/main/Dvd;

    return-object v0
.end method

.method public static hasDEVICE()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 484
    sget-object v1, Lcom/lsec/core/ipc/module/main/Dvd;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/lsec/core/ipc/ModuleProxy;->getI(II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasDVD()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 488
    sget-object v1, Lcom/lsec/core/ipc/module/main/Dvd;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/lsec/core/ipc/ModuleProxy;->getI(II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasSD()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 492
    sget-object v1, Lcom/lsec/core/ipc/module/main/Dvd;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/lsec/core/ipc/ModuleProxy;->getI(II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasUSB()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 496
    sget-object v1, Lcom/lsec/core/ipc/module/main/Dvd;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/lsec/core/ipc/ModuleProxy;->getI(II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static id3Album(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 579
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 581
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->sId3Album:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 582
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->sId3Album:Ljava/lang/String;

    .line 583
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Dvd;->sId3Album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->sId3Album:Ljava/lang/String;

    .line 587
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static id3Artist(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 565
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 567
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->sId3Artist:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 568
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->sId3Artist:Ljava/lang/String;

    .line 569
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Dvd;->sId3Artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->sId3Artist:Ljava/lang/String;

    .line 573
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static id3Title(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 551
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 553
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->sId3Title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 554
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->sId3Title:Ljava/lang/String;

    .line 555
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Dvd;->sId3Title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->sId3Title:Ljava/lang/String;

    .line 559
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isModule8288()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 473
    sget v2, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v2, Lcom/lsec/core/ipc/module/main/Dvd;->sDvdModule:I

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isPlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 480
    sget-object v1, Lcom/lsec/core/ipc/module/main/Dvd;->DATA:[I

    const/16 v2, 0x1f

    aget v1, v1, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static touchState(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 600
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->DATA:[I

    aget v0, v0, p0

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 602
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->DATA:[I

    aget v1, p1, v2

    aput v1, v0, p0

    .line 603
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 606
    :cond_0
    return-void
.end method

.method public static trackTitle(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 537
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 539
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->sTrackTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 540
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->sTrackTitle:Ljava/lang/String;

    .line 541
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Dvd;->sTrackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->sTrackTitle:Ljava/lang/String;

    .line 545
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateAngle(II)Ljava/lang/String;
    .locals 6
    .param p0, "subtitleType"    # I
    .param p1, "osdInfo"    # I

    .prologue
    .line 467
    const-string v0, ""

    .line 468
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Angle:%d/%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 469
    return-object v0
.end method

.method public static updateNotify(I[I[F[Ljava/lang/String;)V
    .locals 2
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    .line 512
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->DATA:[I

    const/4 v1, 0x0

    aget v1, p1, v1

    aput v1, v0, p0

    .line 514
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 516
    :cond_0
    return-void
.end method

.method public static updateOsdInfos([I)Ljava/lang/String;
    .locals 2
    .param p0, "intData"    # [I

    .prologue
    .line 459
    const-string v0, ""

    .line 460
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/lsec/core/ipc/module/main/Dvd;->mInterfaceDvdConn:Lcom/lsec/core/util/InterfaceDvdConn;

    if-eqz v1, :cond_0

    .line 461
    sget-object v1, Lcom/lsec/core/ipc/module/main/Dvd;->mInterfaceDvdConn:Lcom/lsec/core/util/InterfaceDvdConn;

    invoke-interface {v1, p0}, Lcom/lsec/core/util/InterfaceDvdConn;->updateOsdInfo_Dvd([I)Ljava/lang/String;

    move-result-object v0

    .line 463
    :cond_0
    return-object v0
.end method


# virtual methods
.method public isMediaTypeAudio()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 500
    sget-object v1, Lcom/lsec/core/ipc/module/main/Dvd;->DATA:[I

    const/16 v2, 0x12

    aget v1, v1, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMediaTypePhoto()Z
    .locals 2

    .prologue
    .line 504
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->DATA:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMediaTypeVideo()Z
    .locals 2

    .prologue
    .line 508
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->DATA:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConnected(Lcom/syu/ipc/IRemoteToolkit;)V
    .locals 5
    .param p1, "toolkit"    # Lcom/syu/ipc/IRemoteToolkit;

    .prologue
    .line 616
    :try_start_0
    sget-object v3, Lcom/lsec/core/ipc/module/main/Dvd;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_0
    invoke-static {}, Lcom/lsec/core/ipc/module/main/Dvd;->getInstance()Lcom/lsec/core/ipc/module/main/Dvd;

    move-result-object v0

    .line 622
    .local v0, "callback":Lcom/lsec/core/ipc/module/main/Dvd;
    sget-object v3, Lcom/lsec/core/ipc/module/main/Dvd;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    if-eqz v3, :cond_1

    .line 623
    sget-object v3, Lcom/lsec/core/ipc/module/main/Dvd;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-interface {v3, v0}, Lcom/lsec/core/ipc/IRegisterModuleCallBack;->register(Lcom/syu/ipc/IModuleCallback;)V

    .line 628
    :cond_0
    return-void

    .line 617
    .end local v0    # "callback":Lcom/lsec/core/ipc/module/main/Dvd;
    :catch_0
    move-exception v1

    .line 618
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 625
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "callback":Lcom/lsec/core/ipc/module/main/Dvd;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x32

    if-ge v2, v3, :cond_0

    .line 626
    sget-object v3, Lcom/lsec/core/ipc/module/main/Dvd;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 625
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 632
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvd;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 633
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lsec/core/ipc/module/main/Dvd;->sEnterListManual:Z

    .line 634
    return-void
.end method

.method public setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 0
    .param p1, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 731
    sput-object p1, Lcom/lsec/core/ipc/module/main/Dvd;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 732
    return-void
.end method

.method public update(I[I[F[Ljava/lang/String;)V
    .locals 7
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 610
    const/4 v6, 0x0

    new-instance v0, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/module/main/Dvd$Runnable_Update;-><init>(Lcom/lsec/core/ipc/module/main/Dvd;I[I[F[Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 611
    return-void
.end method
