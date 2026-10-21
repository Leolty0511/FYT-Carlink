.class public Lcom/lsec/core/util/data/FinalSound;
.super Ljava/lang/Object;
.source "FinalSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/util/data/FinalSound$Face;,
        Lcom/lsec/core/util/data/FinalSound$Func;,
        Lcom/lsec/core/util/data/FinalSound$Index;
    }
.end annotation


# static fields
.field public static final C_AMP:I = 0x7

.field public static final C_BACKCAR_MUTE:I = 0xd

.field public static final C_BACKCAR_PERCENT:I = 0x14

.field public static final C_BAL_FADE:I = 0x3

.field public static final C_BEEP:I = 0x8

.field public static final C_DEF_VOL:I = 0xe

.field public static final C_DEF_VOL_MIN:I = 0x18

.field public static final C_DEF_VOL_ON_BOOT:I = 0xc

.field public static final C_DYNAMIC:I = 0x26

.field public static final C_EQ_CF:I = 0xf

.field public static final C_EQ_GAIN:I = 0x1

.field public static final C_EQ_MODE:I = 0x2

.field public static final C_EQ_Q:I = 0x10

.field public static final C_EQ_TYPE:I = 0x23

.field public static final C_EXPEND:I = 0x18

.field public static final C_FIELD_MODE:I = 0x4

.field public static final C_HIGH_PITCH:I = 0x27

.field public static final C_HPF_FREQ:I = 0x1d

.field public static final C_LOUD:I = 0x5

.field public static final C_NAVI_MIX:I = 0x9

.field public static final C_NAVI_MIX_PERCENT:I = 0xb

.field public static final C_NON_NAVI_MIX_PERCENT:I = 0xa

.field public static final C_P2BASS:I = 0x22

.field public static final C_P2BASS_FREQ:I = 0x1c

.field public static final C_P2BASS_GAIN:I = 0x1b

.field public static final C_P2BASS_ON:I = 0x1a

.field public static final C_RANG:I = 0x25

.field public static final C_SB:I = 0x6

.field public static final C_SETUP:I = 0x18

.field public static final C_SPECTRUM_ENABLE:I = 0x15

.field public static final C_SRS_CF:I = 0x11

.field public static final C_SRS_GAIN:I = 0x12

.field public static final C_STREAM_PLAYER_LOSE:I = 0x13

.field public static final C_SUBWOOF_FREQ:I = 0x19

.field public static final C_SUBWOOF_GAIN:I = 0x17

.field public static final C_SUBWOOF_ON:I = 0x24

.field public static final C_SURROUND_GAIN:I = 0x21

.field public static final C_SURROUND_LEVEL:I = 0x20

.field public static final C_SURROUND_MODE:I = 0x1f

.field public static final C_SURROUND_ON:I = 0x1e

.field public static final C_TIPS_TTS_AUDIO:I = 0x16

.field public static final C_VOL:I = 0x0

.field public static final EQ_BAND_BASS:I = 0x0

.field public static final EQ_BAND_CNT_MAX:I = 0x24

.field public static final EQ_BAND_SENOR:I = 0x1

.field public static final EQ_BAND_TREBLE:I = 0x2

.field public static final EQ_MODE_CINEMA:I = 0x8

.field public static final EQ_MODE_CLASSIC:I = 0x4

.field public static final EQ_MODE_CUSTOM:I = 0x0

.field public static final EQ_MODE_HALL:I = 0x6

.field public static final EQ_MODE_JAZZ:I = 0x7

.field public static final EQ_MODE_POP:I = 0x5

.field public static final EQ_MODE_ROCK:I = 0x2

.field public static final EQ_MODE_SOFT:I = 0x3

.field public static final EQ_MODE_STANDARD:I = 0x1

.field public static final FIELD_BAL:I = 0x0

.field public static final FIELD_FADE:I = 0x1

.field public static final FIELD_MODE_ALL:I = 0x2

.field public static final FIELD_MODE_DRIVER:I = 0x0

.field public static final FIELD_MODE_FRONT:I = 0x1

.field public static final FIELD_MODE_REAR:I = 0x3

.field public static final MODULE_BD3702:I = 0x1

.field public static final MODULE_BD3702_PORT:I = 0x5

.field public static final MODULE_C32107:I = 0x6

.field public static final MODULE_C7602:I = 0x7

.field public static final MODULE_NULL:I = 0x0

.field public static final MODULE_SPHE8288:I = 0x2

.field public static final MODULE_SPHE8700:I = 0x3

.field public static final MODULE_SYS:I = 0x4

.field public static final SB_AUX:I = 0x5

.field public static final SB_BTAV:I = 0x3

.field public static final SB_BTPHONE:I = 0x2

.field public static final SB_CAR_BTPHONE:I = 0x9

.field public static final SB_CAR_RADIO:I = 0xb

.field public static final SB_CAR_USB:I = 0xa

.field public static final SB_CNT_MAX:I = 0x30

.field public static final SB_DVD:I = 0x1

.field public static final SB_IPOD:I = 0x4

.field public static final SB_NAVI:I = 0x7

.field public static final SB_PLAYER:I = 0x6

.field public static final SB_RADIO:I = 0x0

.field public static final SB_TV:I = 0x8

.field public static final SRS_BAND_CNT_MAX:I = 0x24

.field public static final SRS_MODE_CUSTOM:I = 0x0

.field public static final STREAM_MASTER:I = 0x0

.field public static final STREAM_PLAYER:I = 0x1

.field public static final U_AMP:I = 0xd

.field public static final U_BACKCAR_MUTE:I = 0x7

.field public static final U_BACKCAR_PERCENT:I = 0x17

.field public static final U_BAL_FADE:I = 0x8

.field public static final U_BEEP:I = 0x4

.field public static final U_CNT_MAX:I = 0xfa

.field public static final U_DEF_VOL:I = 0x6

.field public static final U_DEF_VOL_MIN:I = 0x1b

.field public static final U_DEF_VOL_ON_BOOT:I = 0x5

.field public static final U_DYNAMIC:I = 0x28

.field public static final U_EQ_CF:I = 0x12

.field public static final U_EQ_GAIN:I = 0x9

.field public static final U_EQ_MODE:I = 0xa

.field public static final U_EQ_Q:I = 0x14

.field public static final U_EQ_TYPE:I = 0x25

.field public static final U_EXPEND:I = 0x1a

.field public static final U_HIGH_PITCH:I = 0x29

.field public static final U_HPF_FREQ:I = 0x1f

.field public static final U_IS_VOLUI_SHOW:I = 0x19

.field public static final U_LOUD:I = 0xb

.field public static final U_MODULE_ID:I = 0x1

.field public static final U_MUTE:I = 0x3

.field public static final U_NAVI_MIX:I = 0xe

.field public static final U_NAVI_MIX_PERCENT:I = 0x10

.field public static final U_NON_NAVI_MIX_PERCENT:I = 0xf

.field public static final U_P2BASS:I = 0x24

.field public static final U_P2BASS_FREQ:I = 0x1e

.field public static final U_P2BASS_GAIN:I = 0x1d

.field public static final U_P2BASS_ON:I = 0x1c

.field public static final U_RANG:I = 0x27

.field public static final U_SB:I = 0xc

.field public static final U_SPECTRUM:I = 0x0

.field public static final U_SPECTRUM_ENABLE:I = 0x18

.field public static final U_SRS_CF:I = 0x15

.field public static final U_SRS_GAIN:I = 0x16

.field public static final U_SUBWOOF_FREQ:I = 0x1b

.field public static final U_SUBWOOF_GAIN:I = 0x1a

.field public static final U_SUBWOOF_ON:I = 0x26

.field public static final U_SURROUND_GAIN:I = 0x23

.field public static final U_SURROUND_LEVEL:I = 0x22

.field public static final U_SURROUND_MODE:I = 0x21

.field public static final U_SURROUND_ON:I = 0x20

.field public static final U_USE_AMP_EQ:I = 0x13

.field public static final U_USE_CAR_EQ:I = 0x11

.field public static final U_VOL:I = 0x2

.field public static final VOL_DOWN:I = -0x2

.field public static final VOL_HIDE_UI:I = -0x7

.field public static final VOL_MUTE:I = -0x3

.field public static final VOL_MUTE_SWITCH:I = -0x5

.field public static final VOL_SHOW_UI:I = -0x6

.field public static final VOL_UNMUTE:I = -0x4

.field public static final VOL_UP:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
