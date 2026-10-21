.class public final enum Lbase/Configure$Property;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbase/Configure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbase/Configure$Property;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lbase/Configure$Property;

.field public static final enum B:Lbase/Configure$Property;

.field public static final enum C:Lbase/Configure$Property;

.field public static final enum D:Lbase/Configure$Property;

.field public static final enum E:Lbase/Configure$Property;

.field public static final enum F:Lbase/Configure$Property;

.field public static final enum G:Lbase/Configure$Property;

.field public static final enum H:Lbase/Configure$Property;

.field public static final enum I:Lbase/Configure$Property;

.field public static final enum J:Lbase/Configure$Property;

.field public static final enum K:Lbase/Configure$Property;

.field public static final enum L:Lbase/Configure$Property;

.field public static final enum M:Lbase/Configure$Property;

.field public static final enum N:Lbase/Configure$Property;

.field public static final enum O:Lbase/Configure$Property;

.field public static final enum P:Lbase/Configure$Property;

.field public static final enum Q:Lbase/Configure$Property;

.field public static final enum R:Lbase/Configure$Property;

.field public static final enum S:Lbase/Configure$Property;

.field public static final enum T:Lbase/Configure$Property;

.field public static final enum U:Lbase/Configure$Property;

.field public static final enum V:Lbase/Configure$Property;

.field public static final enum W:Lbase/Configure$Property;

.field public static final enum X:Lbase/Configure$Property;

.field public static final enum Y:Lbase/Configure$Property;

.field public static final enum Z:Lbase/Configure$Property;

.field public static final enum a0:Lbase/Configure$Property;

.field public static final enum b:Lbase/Configure$Property;

.field public static final enum b0:Lbase/Configure$Property;

.field public static final enum c:Lbase/Configure$Property;

.field public static final enum c0:Lbase/Configure$Property;

.field public static final enum d:Lbase/Configure$Property;

.field public static final synthetic d0:[Lbase/Configure$Property;

.field public static final enum e:Lbase/Configure$Property;

.field public static final enum f:Lbase/Configure$Property;

.field public static final enum g:Lbase/Configure$Property;

.field public static final enum h:Lbase/Configure$Property;

.field public static final enum i:Lbase/Configure$Property;

.field public static final enum j:Lbase/Configure$Property;

.field public static final enum k:Lbase/Configure$Property;

.field public static final enum l:Lbase/Configure$Property;

.field public static final enum m:Lbase/Configure$Property;

.field public static final enum n:Lbase/Configure$Property;

.field public static final enum o:Lbase/Configure$Property;

.field public static final enum p:Lbase/Configure$Property;

.field public static final enum q:Lbase/Configure$Property;

.field public static final enum r:Lbase/Configure$Property;

.field public static final enum s:Lbase/Configure$Property;

.field public static final enum t:Lbase/Configure$Property;

.field public static final enum u:Lbase/Configure$Property;

.field public static final enum v:Lbase/Configure$Property;

.field public static final enum w:Lbase/Configure$Property;

.field public static final enum x:Lbase/Configure$Property;

.field public static final enum y:Lbase/Configure$Property;

.field public static final enum z:Lbase/Configure$Property;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "TPMS_SERIAL_ENABLE"

    const/4 v2, 0x0

    const-string v3, "persist.lsec.tpms_enable"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->b:Lbase/Configure$Property;

    .line 2
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "SECONDARY_DISPLAY_BRIGHTNESS"

    const/4 v2, 0x1

    const-string v3, "persist.lsec.sec_display.brightness"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->c:Lbase/Configure$Property;

    .line 3
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "CHIP8918L_LVDS_DUAL_PORT"

    const/4 v2, 0x2

    const-string v3, "persist.lsec.c8918L.dual_port"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->d:Lbase/Configure$Property;

    .line 4
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "C3031_ECNR_DISABLE"

    const/4 v2, 0x3

    const-string v3, "persist.blinkbt.qcc3031.ecnr.disable"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->e:Lbase/Configure$Property;

    .line 5
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "BACKLIGHT_LINKAGE"

    const/4 v2, 0x4

    const-string v3, "persist.lsec.backlight_linkage"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->f:Lbase/Configure$Property;

    .line 6
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "CHIP2850_INIT_FORMAT"

    const/4 v2, 0x5

    const-string v3, "persist.lsec.c2850.def_format"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->g:Lbase/Configure$Property;

    .line 7
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "DISABLE_APPS"

    const/4 v2, 0x6

    const-string v3, "persist.lsec.disable_apps"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->h:Lbase/Configure$Property;

    .line 8
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "POWER_KEY_EVENT"

    const/4 v2, 0x7

    const-string v3, "persist.lsec.power_event"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->i:Lbase/Configure$Property;

    .line 9
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "CHIP8918_COMP_ADAPTIVE"

    const/16 v2, 0x8

    const-string v3, "persist.lsec.chip8918_adaptive"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->j:Lbase/Configure$Property;

    .line 10
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "HOST_BACKCAR_ENABLE"

    const/16 v2, 0x9

    const-string v3, "persist.lsec.host_backcar_enable"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->k:Lbase/Configure$Property;

    .line 11
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "PANEL_LIGHT_ALWAYS_ON"

    const/16 v2, 0xa

    const-string v3, "persist.lsec.plight_always_on"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->l:Lbase/Configure$Property;

    .line 12
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "BLOCK_GOOGLE_MAP"

    const/16 v2, 0xb

    const-string v3, "persist.lsec.block_google_map"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->m:Lbase/Configure$Property;

    .line 13
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "BLOCK_YOUTUBE"

    const/16 v2, 0xc

    const-string v3, "persist.lsec.block_youtube"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->n:Lbase/Configure$Property;

    .line 14
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "BLOCK_VIDEO_APPS"

    const/16 v2, 0xd

    const-string v3, "persist.lsec.block_videos"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->o:Lbase/Configure$Property;

    .line 15
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "ROTATION_BY_HAND"

    const/16 v2, 0xe

    const-string v3, "persist.fyt.rotaionbyhand"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->p:Lbase/Configure$Property;

    .line 16
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "MODULE_DEBUG_PREFIX"

    const/16 v2, 0xf

    const-string v3, "persist.lsec.debug_"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->q:Lbase/Configure$Property;

    .line 17
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "BOOT_IGNORE_CAR_UI"

    const/16 v2, 0x10

    const-string/jumbo v3, "sys.lsec.boot_ignore_carui"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->r:Lbase/Configure$Property;

    .line 18
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "RADIO_LOC_FM_SENS_OFFSET"

    const/16 v2, 0x11

    const-string/jumbo v3, "sys.lsec.fm_sens_offset"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->s:Lbase/Configure$Property;

    .line 19
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "CTRL_UI_MODE"

    const/16 v2, 0x12

    const-string/jumbo v3, "sys.lsec.ctrl_ui_mode"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->t:Lbase/Configure$Property;

    .line 20
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "MD_SHARE_VOICE_KEY"

    const/16 v2, 0x13

    const-string/jumbo v3, "sys.lsec.md_share_voice"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->u:Lbase/Configure$Property;

    .line 21
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "MD_SHARE_VOICE_ACTION_KEY"

    const/16 v2, 0x14

    const-string/jumbo v3, "sys.lsec.md_voice_with_link"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->v:Lbase/Configure$Property;

    .line 22
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "S869_AMBIENT_ARM_SWITCH"

    const/16 v2, 0x15

    const-string/jumbo v3, "sys.lsec.ambient_light_arm"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->w:Lbase/Configure$Property;

    .line 23
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "S869_AUX_IN_BACK"

    const/16 v2, 0x16

    const-string/jumbo v3, "sys.lsec.aux_in_back"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->x:Lbase/Configure$Property;

    .line 24
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "PHONE_LINK_TYPE"

    const/16 v2, 0x17

    const-string/jumbo v3, "zj.phonelink.type"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->y:Lbase/Configure$Property;

    .line 25
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "AUDIO_STREAM_MAX_LIMIT"

    const/16 v2, 0x18

    const-string/jumbo v3, "sys.lsec.audio_stream_max_limit_"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->z:Lbase/Configure$Property;

    .line 26
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "SLEEP_WHEN_ACC_OFF"

    const/16 v2, 0x19

    const-string/jumbo v3, "sys.lsec.sleep_when_acc_off"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->A:Lbase/Configure$Property;

    .line 27
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "CHIP_6911C_NO_NEED_RESET"

    const/16 v2, 0x1a

    const-string/jumbo v3, "sys.lsec.6911c_no_reset"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->B:Lbase/Configure$Property;

    .line 28
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "SYSTEM_VOLUME_DUCK"

    const/16 v2, 0x1b

    const-string/jumbo v3, "sys.lsec.volume_duck"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->C:Lbase/Configure$Property;

    .line 29
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "EQ_CONFIG"

    const/16 v2, 0x1c

    const-string/jumbo v3, "sys.lsec.eqconfig"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->D:Lbase/Configure$Property;

    .line 30
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "CHIP6854_INIT_FORMAT"

    const/16 v2, 0x1d

    const-string v3, "persist.lsec.c6854.ref_format"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->E:Lbase/Configure$Property;

    .line 31
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "GD_NAVI_CONTROL"

    const/16 v2, 0x1e

    const-string v3, "persist.lsec.gaode.ctrl"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->F:Lbase/Configure$Property;

    .line 32
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "CHIP9963_INIT_FORMAT"

    const/16 v2, 0x1f

    const-string v3, "persist.lsec.c9963.ref_format"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->G:Lbase/Configure$Property;

    .line 33
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "VOLUME_BALANCE_OFFSET"

    const/16 v2, 0x20

    const-string/jumbo v3, "sys.lsec.volume_balance_offset_"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->H:Lbase/Configure$Property;

    .line 34
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "CLEANUP_WHEN_SLEEP"

    const/16 v2, 0x21

    const-string v3, "persist.lsec.cleanup_when_sleep"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->I:Lbase/Configure$Property;

    .line 35
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "CUSTOM_BOOT_APP"

    const/16 v2, 0x22

    const-string/jumbo v3, "sys.lsec.boot_app"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->J:Lbase/Configure$Property;

    .line 36
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "MAIN_VOLUME_OFFSET"

    const/16 v2, 0x23

    const-string/jumbo v3, "sys.lsec.volume_offset"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->K:Lbase/Configure$Property;

    .line 37
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "MAIN_VOLUME_OFFSET_UI"

    const/16 v2, 0x24

    const-string/jumbo v3, "sys.lsec.vol_ui_offset"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->L:Lbase/Configure$Property;

    .line 38
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "APPID_IGNORE"

    const/16 v2, 0x25

    const-string v3, "persist.lsec.appid_ignore"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->M:Lbase/Configure$Property;

    .line 39
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "IGNORE_MUTEX"

    const/16 v2, 0x26

    const-string v3, "persist.lsec.ignore_mutex"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->N:Lbase/Configure$Property;

    .line 40
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "EASY_CONN_MIX"

    const/16 v2, 0x27

    const-string v3, "persist.lsec.easy_conn_mix"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->O:Lbase/Configure$Property;

    .line 41
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "MS_HANDLE_RADIO"

    const/16 v2, 0x28

    const-string v3, "persist.lsec.radio.ms_handler"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->P:Lbase/Configure$Property;

    .line 42
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "DEBUG_MCU"

    const/16 v2, 0x29

    const-string v3, "persist.lsec.debug_mcu"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->Q:Lbase/Configure$Property;

    .line 43
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "DEBUG_CALLING_PID"

    const/16 v2, 0x2a

    const-string/jumbo v3, "sys.lsec.debug"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->R:Lbase/Configure$Property;

    .line 44
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "EQ_MULTI_CUSTOME"

    const/16 v2, 0x2b

    const-string/jumbo v3, "sys.lsec.eq_multi_custome"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->S:Lbase/Configure$Property;

    .line 45
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "BLUETOOTH_TYPE"

    const/16 v2, 0x2c

    const-string/jumbo v3, "sys.fyt.bluetooth_type"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->T:Lbase/Configure$Property;

    .line 46
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "FAN_CFG"

    const/16 v2, 0x2d

    const-string/jumbo v3, "sys.lsec.fan_cfg"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->U:Lbase/Configure$Property;

    .line 47
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "BUTTON_SOUND_EFFECT_HANDLE"

    const/16 v2, 0x2e

    const-string/jumbo v3, "sys.lsec.button_effect_enable"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->V:Lbase/Configure$Property;

    .line 48
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "BUTTON_SOUND_EFFECT_CUSTOM"

    const/16 v2, 0x2f

    const-string/jumbo v3, "sys.lsec.button_effect_custom"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->W:Lbase/Configure$Property;

    .line 49
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "HAND_BREAK_CTL_THIRD_VIDEO"

    const/16 v2, 0x30

    const-string/jumbo v3, "sys.lsec.hb_ctl_third_video"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->X:Lbase/Configure$Property;

    .line 50
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "REAL_PLATFORM"

    const/16 v2, 0x31

    const-string/jumbo v3, "ro.fyt.realplatform"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->Y:Lbase/Configure$Property;

    .line 51
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "DUAL_MIPI"

    const/16 v2, 0x32

    const-string/jumbo v3, "ro.fyt.dual_mipi"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->Z:Lbase/Configure$Property;

    .line 52
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "CUSTOMER_PLATFORM"

    const/16 v2, 0x33

    const-string/jumbo v3, "sys.lesc.customer_platform"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->a0:Lbase/Configure$Property;

    .line 53
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "CUSTOMER_PLATFORM_P"

    const/16 v2, 0x34

    const-string v3, "persist.lesc.customer_platform"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->b0:Lbase/Configure$Property;

    .line 54
    new-instance v0, Lbase/Configure$Property;

    const-string v1, "CUSTOM_APP"

    const/16 v2, 0x35

    const-string/jumbo v3, "sys.lesc.custom_app"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Property;->c0:Lbase/Configure$Property;

    .line 55
    invoke-static {}, Lbase/Configure$Property;->a()[Lbase/Configure$Property;

    move-result-object v0

    sput-object v0, Lbase/Configure$Property;->d0:[Lbase/Configure$Property;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lbase/Configure$Property;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lbase/Configure$Property;
    .locals 3

    const/16 v0, 0x36

    new-array v0, v0, [Lbase/Configure$Property;

    .line 1
    sget-object v1, Lbase/Configure$Property;->b:Lbase/Configure$Property;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->c:Lbase/Configure$Property;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->d:Lbase/Configure$Property;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->e:Lbase/Configure$Property;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->f:Lbase/Configure$Property;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->g:Lbase/Configure$Property;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->h:Lbase/Configure$Property;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->i:Lbase/Configure$Property;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->j:Lbase/Configure$Property;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->k:Lbase/Configure$Property;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->l:Lbase/Configure$Property;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->m:Lbase/Configure$Property;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->n:Lbase/Configure$Property;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->o:Lbase/Configure$Property;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->p:Lbase/Configure$Property;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->q:Lbase/Configure$Property;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->r:Lbase/Configure$Property;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->s:Lbase/Configure$Property;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->t:Lbase/Configure$Property;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->u:Lbase/Configure$Property;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->v:Lbase/Configure$Property;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->w:Lbase/Configure$Property;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->x:Lbase/Configure$Property;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->y:Lbase/Configure$Property;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->z:Lbase/Configure$Property;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->A:Lbase/Configure$Property;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->B:Lbase/Configure$Property;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->C:Lbase/Configure$Property;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->D:Lbase/Configure$Property;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->E:Lbase/Configure$Property;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->F:Lbase/Configure$Property;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->G:Lbase/Configure$Property;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->H:Lbase/Configure$Property;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->I:Lbase/Configure$Property;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->J:Lbase/Configure$Property;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->K:Lbase/Configure$Property;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->L:Lbase/Configure$Property;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->M:Lbase/Configure$Property;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->N:Lbase/Configure$Property;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->O:Lbase/Configure$Property;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->P:Lbase/Configure$Property;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->Q:Lbase/Configure$Property;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->R:Lbase/Configure$Property;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->S:Lbase/Configure$Property;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->T:Lbase/Configure$Property;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->U:Lbase/Configure$Property;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->V:Lbase/Configure$Property;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->W:Lbase/Configure$Property;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->X:Lbase/Configure$Property;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->Y:Lbase/Configure$Property;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->Z:Lbase/Configure$Property;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->a0:Lbase/Configure$Property;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->b0:Lbase/Configure$Property;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Property;->c0:Lbase/Configure$Property;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbase/Configure$Property;
    .locals 1

    .line 1
    const-class v0, Lbase/Configure$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbase/Configure$Property;

    return-object p0
.end method

.method public static values()[Lbase/Configure$Property;
    .locals 1

    .line 1
    sget-object v0, Lbase/Configure$Property;->d0:[Lbase/Configure$Property;

    invoke-virtual {v0}, [Lbase/Configure$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbase/Configure$Property;

    return-object v0
.end method


# virtual methods
.method public b(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbase/Configure$Property;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbase/Configure$Property;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lbase/Configure$Property;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public e(II)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbase/Configure$Property;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;I)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbase/Configure$Property;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbase/Configure$Property;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbase/Configure$Property;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
