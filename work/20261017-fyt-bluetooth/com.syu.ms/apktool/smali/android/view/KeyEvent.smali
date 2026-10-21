.class public Landroid/view/KeyEvent;
.super Landroid/view/InputEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyEvent$DispatcherState;,
        Landroid/view/KeyEvent$Callback;
    }
.end annotation


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MULTIPLE:I = 0x2

.field public static final ACTION_UP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG:Z = false

.field public static final FLAG_CANCELED:I = 0x20

.field public static final FLAG_CANCELED_LONG_PRESS:I = 0x100

.field public static final FLAG_EDITOR_ACTION:I = 0x10

.field public static final FLAG_FALLBACK:I = 0x400

.field public static final FLAG_FROM_SYSTEM:I = 0x8

.field public static final FLAG_KEEP_TOUCH_MODE:I = 0x4

.field public static final FLAG_LONG_PRESS:I = 0x80

.field public static final FLAG_PREDISPATCH:I = 0x20000000

.field public static final FLAG_SOFT_KEYBOARD:I = 0x2

.field public static final FLAG_START_TRACKING:I = 0x40000000

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TRACKING:I = 0x200

.field public static final FLAG_VIRTUAL_HARD_KEY:I = 0x40

.field public static final FLAG_WOKE_HERE:I = 0x1

.field public static final KEYCODE_0:I = 0x7

.field public static final KEYCODE_1:I = 0x8

.field public static final KEYCODE_2:I = 0x9

.field public static final KEYCODE_3:I = 0xa

.field public static final KEYCODE_3D_MODE:I = 0xce

.field public static final KEYCODE_4:I = 0xb

.field public static final KEYCODE_5:I = 0xc

.field public static final KEYCODE_6:I = 0xd

.field public static final KEYCODE_7:I = 0xe

.field public static final KEYCODE_8:I = 0xf

.field public static final KEYCODE_9:I = 0x10

.field public static final KEYCODE_A:I = 0x1d

.field public static final KEYCODE_ALT_LEFT:I = 0x39

.field public static final KEYCODE_ALT_RIGHT:I = 0x3a

.field public static final KEYCODE_APOSTROPHE:I = 0x4b

.field public static final KEYCODE_APP_SWITCH:I = 0xbb

.field public static final KEYCODE_ASSIST:I = 0xdb

.field public static final KEYCODE_AT:I = 0x4d

.field public static final KEYCODE_AVR_INPUT:I = 0xb6

.field public static final KEYCODE_AVR_POWER:I = 0xb5

.field public static final KEYCODE_B:I = 0x1e

.field public static final KEYCODE_BACK:I = 0x4

.field public static final KEYCODE_BACKSLASH:I = 0x49

.field public static final KEYCODE_BOOKMARK:I = 0xae

.field public static final KEYCODE_BREAK:I = 0x79

.field public static final KEYCODE_BRIGHTNESS_DOWN:I = 0xdc

.field public static final KEYCODE_BRIGHTNESS_UP:I = 0xdd

.field public static final KEYCODE_BUTTON_1:I = 0xbc

.field public static final KEYCODE_BUTTON_10:I = 0xc5

.field public static final KEYCODE_BUTTON_11:I = 0xc6

.field public static final KEYCODE_BUTTON_12:I = 0xc7

.field public static final KEYCODE_BUTTON_13:I = 0xc8

.field public static final KEYCODE_BUTTON_14:I = 0xc9

.field public static final KEYCODE_BUTTON_15:I = 0xca

.field public static final KEYCODE_BUTTON_16:I = 0xcb

.field public static final KEYCODE_BUTTON_2:I = 0xbd

.field public static final KEYCODE_BUTTON_3:I = 0xbe

.field public static final KEYCODE_BUTTON_4:I = 0xbf

.field public static final KEYCODE_BUTTON_5:I = 0xc0

.field public static final KEYCODE_BUTTON_6:I = 0xc1

.field public static final KEYCODE_BUTTON_7:I = 0xc2

.field public static final KEYCODE_BUTTON_8:I = 0xc3

.field public static final KEYCODE_BUTTON_9:I = 0xc4

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_C:I = 0x62

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_MODE:I = 0x6e

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_BUTTON_Z:I = 0x65

.field public static final KEYCODE_C:I = 0x1f

.field public static final KEYCODE_CALCULATOR:I = 0xd2

.field public static final KEYCODE_CALENDAR:I = 0xd0

.field public static final KEYCODE_CALL:I = 0x5

.field public static final KEYCODE_CAMERA:I = 0x1b

.field public static final KEYCODE_CAPS_LOCK:I = 0x73

.field public static final KEYCODE_CAPTIONS:I = 0xaf

.field public static final KEYCODE_CHANNEL_DOWN:I = 0xa7

.field public static final KEYCODE_CHANNEL_UP:I = 0xa6

.field public static final KEYCODE_CLEAR:I = 0x1c

.field public static final KEYCODE_COMMA:I = 0x37

.field public static final KEYCODE_CONTACTS:I = 0xcf

.field public static final KEYCODE_CTRL_LEFT:I = 0x71

.field public static final KEYCODE_CTRL_RIGHT:I = 0x72

.field public static final KEYCODE_D:I = 0x20

.field public static final KEYCODE_DEL:I = 0x43

.field public static final KEYCODE_DPAD_CENTER:I = 0x17

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_DVR:I = 0xad

.field public static final KEYCODE_E:I = 0x21

.field public static final KEYCODE_EISU:I = 0xd4

.field public static final KEYCODE_ENDCALL:I = 0x6

.field public static final KEYCODE_ENTER:I = 0x42

.field public static final KEYCODE_ENVELOPE:I = 0x41

.field public static final KEYCODE_EQUALS:I = 0x46

.field public static final KEYCODE_ESCAPE:I = 0x6f

.field public static final KEYCODE_EXPLORER:I = 0x40

.field public static final KEYCODE_F:I = 0x22

.field public static final KEYCODE_F1:I = 0x83

.field public static final KEYCODE_F10:I = 0x8c

.field public static final KEYCODE_F11:I = 0x8d

.field public static final KEYCODE_F12:I = 0x8e

.field public static final KEYCODE_F2:I = 0x84

.field public static final KEYCODE_F3:I = 0x85

.field public static final KEYCODE_F4:I = 0x86

.field public static final KEYCODE_F5:I = 0x87

.field public static final KEYCODE_F6:I = 0x88

.field public static final KEYCODE_F7:I = 0x89

.field public static final KEYCODE_F8:I = 0x8a

.field public static final KEYCODE_F9:I = 0x8b

.field public static final KEYCODE_FOCUS:I = 0x50

.field public static final KEYCODE_FORWARD:I = 0x7d

.field public static final KEYCODE_FORWARD_DEL:I = 0x70

.field public static final KEYCODE_FUNCTION:I = 0x77

.field public static final KEYCODE_G:I = 0x23

.field public static final KEYCODE_GRAVE:I = 0x44

.field public static final KEYCODE_GUIDE:I = 0xac

.field public static final KEYCODE_H:I = 0x24

.field public static final KEYCODE_HEADSETHOOK:I = 0x4f

.field public static final KEYCODE_HENKAN:I = 0xd6

.field public static final KEYCODE_HOME:I = 0x3

.field public static final KEYCODE_I:I = 0x25

.field public static final KEYCODE_INFO:I = 0xa5

.field public static final KEYCODE_INSERT:I = 0x7c

.field public static final KEYCODE_J:I = 0x26

.field public static final KEYCODE_K:I = 0x27

.field public static final KEYCODE_KANA:I = 0xda

.field public static final KEYCODE_KATAKANA_HIRAGANA:I = 0xd7

.field public static final KEYCODE_L:I = 0x28

.field public static final KEYCODE_LANGUAGE_SWITCH:I = 0xcc

.field public static final KEYCODE_LEFT_BRACKET:I = 0x47

.field public static final KEYCODE_M:I = 0x29

.field public static final KEYCODE_MANNER_MODE:I = 0xcd

.field public static final KEYCODE_MEDIA_AUDIO_TRACK:I = 0xde

.field public static final KEYCODE_MEDIA_CLOSE:I = 0x80

.field public static final KEYCODE_MEDIA_EJECT:I = 0x81

.field public static final KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field public static final KEYCODE_MEDIA_NEXT:I = 0x57

.field public static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field public static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field public static final KEYCODE_MEDIA_RECORD:I = 0x82

.field public static final KEYCODE_MEDIA_REWIND:I = 0x59

.field public static final KEYCODE_MEDIA_STOP:I = 0x56

.field public static final KEYCODE_MENU:I = 0x52

.field public static final KEYCODE_META_LEFT:I = 0x75

.field public static final KEYCODE_META_RIGHT:I = 0x76

.field public static final KEYCODE_MINUS:I = 0x45

.field public static final KEYCODE_MOVE_END:I = 0x7b

.field public static final KEYCODE_MOVE_HOME:I = 0x7a

.field public static final KEYCODE_MUHENKAN:I = 0xd5

.field public static final KEYCODE_MUSIC:I = 0xd1

.field public static final KEYCODE_MUTE:I = 0x5b

.field public static final KEYCODE_N:I = 0x2a

.field public static final KEYCODE_NOTIFICATION:I = 0x53

.field public static final KEYCODE_NUM:I = 0x4e

.field public static final KEYCODE_NUMPAD_0:I = 0x90

.field public static final KEYCODE_NUMPAD_1:I = 0x91

.field public static final KEYCODE_NUMPAD_2:I = 0x92

.field public static final KEYCODE_NUMPAD_3:I = 0x93

.field public static final KEYCODE_NUMPAD_4:I = 0x94

.field public static final KEYCODE_NUMPAD_5:I = 0x95

.field public static final KEYCODE_NUMPAD_6:I = 0x96

.field public static final KEYCODE_NUMPAD_7:I = 0x97

.field public static final KEYCODE_NUMPAD_8:I = 0x98

.field public static final KEYCODE_NUMPAD_9:I = 0x99

.field public static final KEYCODE_NUMPAD_ADD:I = 0x9d

.field public static final KEYCODE_NUMPAD_COMMA:I = 0x9f

.field public static final KEYCODE_NUMPAD_DIVIDE:I = 0x9a

.field public static final KEYCODE_NUMPAD_DOT:I = 0x9e

.field public static final KEYCODE_NUMPAD_ENTER:I = 0xa0

.field public static final KEYCODE_NUMPAD_EQUALS:I = 0xa1

.field public static final KEYCODE_NUMPAD_LEFT_PAREN:I = 0xa2

.field public static final KEYCODE_NUMPAD_MULTIPLY:I = 0x9b

.field public static final KEYCODE_NUMPAD_RIGHT_PAREN:I = 0xa3

.field public static final KEYCODE_NUMPAD_SUBTRACT:I = 0x9c

.field public static final KEYCODE_NUM_LOCK:I = 0x8f

.field public static final KEYCODE_O:I = 0x2b

.field public static final KEYCODE_P:I = 0x2c

.field public static final KEYCODE_PAGE_DOWN:I = 0x5d

.field public static final KEYCODE_PAGE_UP:I = 0x5c

.field public static final KEYCODE_PERIOD:I = 0x38

.field public static final KEYCODE_PICTSYMBOLS:I = 0x5e

.field public static final KEYCODE_PLUS:I = 0x51

.field public static final KEYCODE_POUND:I = 0x12

.field public static final KEYCODE_POWER:I = 0x1a

.field public static final KEYCODE_PROG_BLUE:I = 0xba

.field public static final KEYCODE_PROG_GREEN:I = 0xb8

.field public static final KEYCODE_PROG_RED:I = 0xb7

.field public static final KEYCODE_PROG_YELLOW:I = 0xb9

.field public static final KEYCODE_Q:I = 0x2d

.field public static final KEYCODE_R:I = 0x2e

.field public static final KEYCODE_RIGHT_BRACKET:I = 0x48

.field public static final KEYCODE_RO:I = 0xd9

.field public static final KEYCODE_S:I = 0x2f

.field public static final KEYCODE_SCROLL_LOCK:I = 0x74

.field public static final KEYCODE_SEARCH:I = 0x54

.field public static final KEYCODE_SEMICOLON:I = 0x4a

.field public static final KEYCODE_SETTINGS:I = 0xb0

.field public static final KEYCODE_SHIFT_LEFT:I = 0x3b

.field public static final KEYCODE_SHIFT_RIGHT:I = 0x3c

.field public static final KEYCODE_SLASH:I = 0x4c

.field public static final KEYCODE_SOFT_LEFT:I = 0x1

.field public static final KEYCODE_SOFT_RIGHT:I = 0x2

.field public static final KEYCODE_SPACE:I = 0x3e

.field public static final KEYCODE_SQL_BUTTON_BACK:I = 0xe5

.field public static final KEYCODE_SQL_BUTTON_DISPLAYOFF:I = 0xdf

.field public static final KEYCODE_SQL_BUTTON_FAST_FORWORD:I = 0xe2

.field public static final KEYCODE_SQL_BUTTON_FAST_REVERSE:I = 0xe3

.field public static final KEYCODE_SQL_BUTTON_HOME:I = 0xe4

.field public static final KEYCODE_SQL_BUTTON_KEY_FIVE:I = 0xec

.field public static final KEYCODE_SQL_BUTTON_KEY_FOUR:I = 0xeb

.field public static final KEYCODE_SQL_BUTTON_KEY_ONE:I = 0xe8

.field public static final KEYCODE_SQL_BUTTON_KEY_SEVEN:I = 0xee

.field public static final KEYCODE_SQL_BUTTON_KEY_SIX:I = 0xed

.field public static final KEYCODE_SQL_BUTTON_KEY_THREE:I = 0xea

.field public static final KEYCODE_SQL_BUTTON_KEY_TWO:I = 0xe9

.field public static final KEYCODE_SQL_BUTTON_NAVI:I = 0xe0

.field public static final KEYCODE_SQL_BUTTON_SOUND_DOWN:I = 0xe7

.field public static final KEYCODE_SQL_BUTTON_SOUND_UP:I = 0xe6

.field public static final KEYCODE_SQL_BUTTON_SRC:I = 0xe1

.field public static final KEYCODE_STAR:I = 0x11

.field public static final KEYCODE_STB_INPUT:I = 0xb4

.field public static final KEYCODE_STB_POWER:I = 0xb3

.field public static final KEYCODE_SWITCH_CHARSET:I = 0x5f

.field public static final KEYCODE_SYM:I = 0x3f

.field private static final KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYCODE_SYSRQ:I = 0x78

.field public static final KEYCODE_T:I = 0x30

.field public static final KEYCODE_TAB:I = 0x3d

.field public static final KEYCODE_TV:I = 0xaa

.field public static final KEYCODE_TV_INPUT:I = 0xb2

.field public static final KEYCODE_TV_POWER:I = 0xb1

.field public static final KEYCODE_U:I = 0x31

.field public static final KEYCODE_UNKNOWN:I = 0x0

.field public static final KEYCODE_V:I = 0x32

.field public static final KEYCODE_VOLUME_DOWN:I = 0x19

.field public static final KEYCODE_VOLUME_MUTE:I = 0xa4

.field public static final KEYCODE_VOLUME_UP:I = 0x18

.field public static final KEYCODE_W:I = 0x33

.field public static final KEYCODE_WINDOW:I = 0xab

.field public static final KEYCODE_X:I = 0x34

.field public static final KEYCODE_Y:I = 0x35

.field public static final KEYCODE_YEN:I = 0xd8

.field public static final KEYCODE_Z:I = 0x36

.field public static final KEYCODE_ZENKAKU_HANKAKU:I = 0xd3

.field public static final KEYCODE_ZOOM_IN:I = 0xa8

.field public static final KEYCODE_ZOOM_OUT:I = 0xa9

.field private static final LAST_KEYCODE:I = 0xee

.field public static final MAX_KEYCODE:I = 0x54
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_RECYCLED:I = 0xa

.field private static final META_ALL_MASK:I = 0x7770ff

.field public static final META_ALT_LEFT_ON:I = 0x10

.field public static final META_ALT_LOCKED:I = 0x200

.field public static final META_ALT_MASK:I = 0x32

.field public static final META_ALT_ON:I = 0x2

.field public static final META_ALT_RIGHT_ON:I = 0x20

.field public static final META_CAPS_LOCK_ON:I = 0x100000

.field public static final META_CAP_LOCKED:I = 0x100

.field public static final META_CTRL_LEFT_ON:I = 0x2000

.field public static final META_CTRL_MASK:I = 0x7000

.field public static final META_CTRL_ON:I = 0x1000

.field public static final META_CTRL_RIGHT_ON:I = 0x4000

.field public static final META_FUNCTION_ON:I = 0x8

.field private static final META_INVALID_MODIFIER_MASK:I = 0x700f00

.field private static final META_LOCK_MASK:I = 0x700000

.field public static final META_META_LEFT_ON:I = 0x20000

.field public static final META_META_MASK:I = 0x70000

.field public static final META_META_ON:I = 0x10000

.field public static final META_META_RIGHT_ON:I = 0x40000

.field private static final META_MODIFIER_MASK:I = 0x770ff

.field public static final META_NUM_LOCK_ON:I = 0x200000

.field public static final META_SCROLL_LOCK_ON:I = 0x400000

.field public static final META_SELECTING:I = 0x800

.field public static final META_SHIFT_LEFT_ON:I = 0x40

.field public static final META_SHIFT_MASK:I = 0xc1

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SHIFT_RIGHT_ON:I = 0x80

.field private static final META_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final META_SYM_LOCKED:I = 0x400

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYNTHETIC_MASK:I = 0xf00

.field public static final TAG:Ljava/lang/String; = "KeyEvent"

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/KeyEvent;

.field private static gRecyclerUsed:I


# instance fields
.field private mAction:I

.field private mCharacters:Ljava/lang/String;

.field private mDeviceId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mFlags:I

.field private mKeyCode:I

.field private mMetaState:I

.field private mNext:Landroid/view/KeyEvent;

.field private mRepeatCount:I

.field private mScanCode:I

.field private mSource:I


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    const-string v1, "META_SHIFT_ON"

    const-string v2, "META_ALT_ON"

    const-string v3, "META_SYM_ON"

    const-string v4, "META_FUNCTION_ON"

    const-string v5, "META_ALT_LEFT_ON"

    const-string v6, "META_ALT_RIGHT_ON"

    const-string v7, "META_SHIFT_LEFT_ON"

    const-string v8, "META_SHIFT_RIGHT_ON"

    const-string v9, "META_CAP_LOCKED"

    const-string v10, "META_ALT_LOCKED"

    const-string v11, "META_SYM_LOCKED"

    const-string v12, "0x00000800"

    const-string v13, "META_CTRL_ON"

    const-string v14, "META_CTRL_LEFT_ON"

    const-string v15, "META_CTRL_RIGHT_ON"

    const-string v16, "0x00008000"

    const-string v17, "META_META_ON"

    const-string v18, "META_META_LEFT_ON"

    const-string v19, "META_META_RIGHT_ON"

    const-string v20, "0x00080000"

    const-string v21, "META_CAPS_LOCK_ON"

    const-string v22, "META_NUM_LOCK_ON"

    const-string v23, "META_SCROLL_LOCK_ON"

    const-string v24, "0x00800000"

    const-string v25, "0x01000000"

    const-string v26, "0x02000000"

    const-string v27, "0x04000000"

    const-string v28, "0x08000000"

    const-string v29, "0x10000000"

    const-string v30, "0x20000000"

    const-string v31, "0x40000000"

    const-string v32, "0x80000000"

    .line 2
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/view/KeyEvent;->populateKeycodeSymbolicNames()V

    .line 5
    new-instance v0, Landroid/view/KeyEvent$1;

    invoke-direct {v0}, Landroid/view/KeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 3
    iput p1, p0, Landroid/view/KeyEvent;->mAction:I

    .line 4
    iput p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return-void
.end method

.method public constructor <init>(JJIII)V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 8
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 9
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 10
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 11
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 12
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return-void
.end method

.method public constructor <init>(JJIIII)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 15
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 16
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 17
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 18
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 19
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 20
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 23
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 24
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 25
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 26
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 27
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 28
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 29
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 30
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    return-void
.end method

.method public constructor <init>(JJIIIIIII)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 32
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 33
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 34
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 35
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 36
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 37
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 38
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 39
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 40
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method public constructor <init>(JJIIIIIIII)V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 42
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 43
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 44
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 45
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 46
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 47
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 48
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 49
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 50
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 51
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;II)V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 53
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 54
    iput-wide p1, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 55
    iput-object p3, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    const/4 p1, 0x2

    .line 56
    iput p1, p0, Landroid/view/KeyEvent;->mAction:I

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 58
    iput p1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 59
    iput p4, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 60
    iput p5, p0, Landroid/view/KeyEvent;->mFlags:I

    const/16 p1, 0x101

    .line 61
    iput p1, p0, Landroid/view/KeyEvent;->mSource:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 63
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 64
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 65
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 66
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 67
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 68
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 69
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 70
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 71
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 72
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 73
    iget-object p1, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object p1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/view/KeyEvent;I)V
    .locals 2

    .line 86
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 87
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 88
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 89
    iput p2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 90
    iget p2, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 91
    iget p2, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput p2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 92
    iget p2, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput p2, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 93
    iget p2, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput p2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 94
    iget p2, p1, Landroid/view/KeyEvent;->mSource:I

    iput p2, p0, Landroid/view/KeyEvent;->mSource:I

    .line 95
    iget p2, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput p2, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 96
    iget p1, p1, Landroid/view/KeyEvent;->mFlags:I

    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 75
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 76
    iput-wide p2, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 77
    iget p2, p1, Landroid/view/KeyEvent;->mAction:I

    iput p2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 78
    iget p2, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 79
    iput p4, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 80
    iget p2, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput p2, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 81
    iget p2, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput p2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 82
    iget p2, p1, Landroid/view/KeyEvent;->mSource:I

    iput p2, p0, Landroid/view/KeyEvent;->mSource:I

    .line 83
    iget p2, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput p2, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 84
    iget p2, p1, Landroid/view/KeyEvent;->mFlags:I

    iput p2, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 85
    iget-object p1, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object p1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$076(Landroid/view/KeyEvent;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    return p1
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ACTION_MULTIPLE"

    return-object p0

    :cond_1
    const-string p0, "ACTION_UP"

    return-object p0

    :cond_2
    const-string p0, "ACTION_DOWN"

    return-object p0
.end method

.method public static changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;I)V

    return-object v0
.end method

.method public static changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2
    iput p1, v0, Landroid/view/KeyEvent;->mFlags:I

    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;
    .locals 1

    .line 2
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 3
    iput-wide p1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 4
    iput p3, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 5
    iput p4, v0, Landroid/view/KeyEvent;->mFlags:I

    return-object v0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static getDeadChar(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result p0

    return p0
.end method

.method public static getMaxKeyCode()I
    .locals 1

    const/16 v0, 0xee

    return v0
.end method

.method public static getModifierMetaStateMask()I
    .locals 1

    const v0, 0x770ff

    return v0
.end method

.method public static final isConfirmKey(I)Z
    .locals 1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final isGamepadButton(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isModifierKey(I)Z
    .locals 1

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x71

    if-eq p0, v0, :cond_0

    const/16 v0, 0x72

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x75
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static keyCodeFromString(Ljava/lang/String;)I
    .locals 4

    if-eqz p0, :cond_2

    .line 1
    sget-object v0, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    sget-object v3, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    .line 3
    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "symbolicName must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static keyCodeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .locals 4

    and-int v0, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    or-int v3, p3, p4

    and-int/2addr p1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    not-int p1, v3

    :goto_2
    and-int/2addr p0, p1

    return p0

    .line 1
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "modifiers must not contain "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " combined with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " or "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eqz v1, :cond_4

    not-int p1, p2

    goto :goto_2

    :cond_4
    return p0
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 4

    const v0, 0x700f00

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 1
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p0

    const v0, 0x770ff

    and-int/2addr p0, v0

    const/16 v0, 0x40

    const/16 v1, 0x80

    const/4 v2, 0x1

    .line 2
    invoke-static {p0, p1, v2, v0, v1}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    const/4 v0, 0x2

    const/16 v1, 0x10

    const/16 v3, 0x20

    .line 3
    invoke-static {p0, p1, v0, v1, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    const/16 v0, 0x1000

    const/16 v1, 0x2000

    const/16 v3, 0x4000

    .line 4
    invoke-static {p0, p1, v0, v1, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    const/high16 v0, 0x10000

    const/high16 v1, 0x20000

    const/high16 v3, 0x40000

    .line 5
    invoke-static {p0, p1, v0, v1, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "modifiers must not contain META_CAPS_LOCK_ON, META_NUM_LOCK_ON, META_SCROLL_LOCK_ON, META_CAP_LOCKED, META_ALT_LOCKED, META_SYM_LOCKED, or META_SELECTING"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p0

    const v0, 0x770ff

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static metaStateToString(I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz p0, :cond_5

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    ushr-int/lit8 p0, p0, 0x1

    if-eqz v3, :cond_4

    .line 1
    sget-object v3, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v0, :cond_3

    if-nez p0, :cond_2

    return-object v3

    .line 2
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/16 v4, 0x7c

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private native native_hasDefaultAction(I)Z
.end method

.method private native native_isSystemKey(I)Z
.end method

.method public static normalizeMetaState(I)I
    .locals 1

    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_0

    or-int/lit8 p0, p0, 0x1

    :cond_0
    and-int/lit8 v0, p0, 0x30

    if-eqz v0, :cond_1

    or-int/lit8 p0, p0, 0x2

    :cond_1
    and-int/lit16 v0, p0, 0x6000

    if-eqz v0, :cond_2

    or-int/lit16 p0, p0, 0x1000

    :cond_2
    const/high16 v0, 0x60000

    and-int/2addr v0, p0

    if-eqz v0, :cond_3

    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    :cond_3
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_4

    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    :cond_4
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_5

    or-int/lit8 p0, p0, 0x2

    :cond_5
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_6

    or-int/lit8 p0, p0, 0x4

    :cond_6
    const v0, 0x7770ff

    and-int/2addr p0, v0

    return p0
.end method

.method private static obtain()Landroid/view/KeyEvent;
    .locals 3

    .line 1
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1}, Landroid/view/KeyEvent;-><init>()V

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    iget-object v2, v1, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    sput-object v2, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 5
    sget v2, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 7
    iput-object v0, v1, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 8
    invoke-virtual {v1}, Landroid/view/InputEvent;->prepareForReuse()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .locals 1

    .line 10
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 11
    iput-wide p0, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 12
    iput-wide p2, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 13
    iput p4, v0, Landroid/view/KeyEvent;->mAction:I

    .line 14
    iput p5, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 15
    iput p6, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 16
    iput p7, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 17
    iput p8, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 18
    iput p9, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 19
    iput p10, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 20
    iput p11, v0, Landroid/view/KeyEvent;->mSource:I

    .line 21
    iput-object p12, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public static obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 3

    .line 22
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 23
    iget-wide v1, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v1, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 24
    iget-wide v1, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 25
    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    iput v1, v0, Landroid/view/KeyEvent;->mAction:I

    .line 26
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 27
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v1, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 28
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    iput v1, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 29
    iget v1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 30
    iget v1, p0, Landroid/view/KeyEvent;->mScanCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 31
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    iput v1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 32
    iget v1, p0, Landroid/view/KeyEvent;->mSource:I

    iput v1, v0, Landroid/view/KeyEvent;->mSource:I

    .line 33
    iget-object p0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object p0, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method

.method private static populateKeycodeSymbolicNames()V
    .locals 3

    .line 1
    sget-object v0, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "KEYCODE_UNKNOWN"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x1

    const-string v2, "KEYCODE_SOFT_LEFT"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const-string v2, "KEYCODE_SOFT_RIGHT"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x3

    const-string v2, "KEYCODE_HOME"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x4

    const-string v2, "KEYCODE_BACK"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x5

    const-string v2, "KEYCODE_CALL"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x6

    const-string v2, "KEYCODE_ENDCALL"

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x7

    const-string v2, "KEYCODE_0"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x8

    const-string v2, "KEYCODE_1"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x9

    const-string v2, "KEYCODE_2"

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa

    const-string v2, "KEYCODE_3"

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb

    const-string v2, "KEYCODE_4"

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc

    const-string v2, "KEYCODE_5"

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xd

    const-string v2, "KEYCODE_6"

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xe

    const-string v2, "KEYCODE_7"

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xf

    const-string v2, "KEYCODE_8"

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x10

    const-string v2, "KEYCODE_9"

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x11

    const-string v2, "KEYCODE_STAR"

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x12

    const-string v2, "KEYCODE_POUND"

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x13

    const-string v2, "KEYCODE_DPAD_UP"

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x14

    const-string v2, "KEYCODE_DPAD_DOWN"

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x15

    const-string v2, "KEYCODE_DPAD_LEFT"

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x16

    const-string v2, "KEYCODE_DPAD_RIGHT"

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x17

    const-string v2, "KEYCODE_DPAD_CENTER"

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x18

    const-string v2, "KEYCODE_VOLUME_UP"

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x19

    const-string v2, "KEYCODE_VOLUME_DOWN"

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1a

    const-string v2, "KEYCODE_POWER"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1b

    const-string v2, "KEYCODE_CAMERA"

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1c

    const-string v2, "KEYCODE_CLEAR"

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1d

    const-string v2, "KEYCODE_A"

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1e

    const-string v2, "KEYCODE_B"

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1f

    const-string v2, "KEYCODE_C"

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x20

    const-string v2, "KEYCODE_D"

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x21

    const-string v2, "KEYCODE_E"

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x22

    const-string v2, "KEYCODE_F"

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x23

    const-string v2, "KEYCODE_G"

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x24

    const-string v2, "KEYCODE_H"

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x25

    const-string v2, "KEYCODE_I"

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x26

    const-string v2, "KEYCODE_J"

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x27

    const-string v2, "KEYCODE_K"

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x28

    const-string v2, "KEYCODE_L"

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x29

    const-string v2, "KEYCODE_M"

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2a

    const-string v2, "KEYCODE_N"

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2b

    const-string v2, "KEYCODE_O"

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2c

    const-string v2, "KEYCODE_P"

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2d

    const-string v2, "KEYCODE_Q"

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2e

    const-string v2, "KEYCODE_R"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2f

    const-string v2, "KEYCODE_S"

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x30

    const-string v2, "KEYCODE_T"

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x31

    const-string v2, "KEYCODE_U"

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x32

    const-string v2, "KEYCODE_V"

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x33

    const-string v2, "KEYCODE_W"

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x34

    const-string v2, "KEYCODE_X"

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x35

    const-string v2, "KEYCODE_Y"

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x36

    const-string v2, "KEYCODE_Z"

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x37

    const-string v2, "KEYCODE_COMMA"

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x38

    const-string v2, "KEYCODE_PERIOD"

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x39

    const-string v2, "KEYCODE_ALT_LEFT"

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x3a

    const-string v2, "KEYCODE_ALT_RIGHT"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x3b

    const-string v2, "KEYCODE_SHIFT_LEFT"

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x3c

    const-string v2, "KEYCODE_SHIFT_RIGHT"

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x3d

    const-string v2, "KEYCODE_TAB"

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x3e

    const-string v2, "KEYCODE_SPACE"

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x3f

    const-string v2, "KEYCODE_SYM"

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x40

    const-string v2, "KEYCODE_EXPLORER"

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x41

    const-string v2, "KEYCODE_ENVELOPE"

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x42

    const-string v2, "KEYCODE_ENTER"

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x43

    const-string v2, "KEYCODE_DEL"

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x44

    const-string v2, "KEYCODE_GRAVE"

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x45

    const-string v2, "KEYCODE_MINUS"

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x46

    const-string v2, "KEYCODE_EQUALS"

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x47

    const-string v2, "KEYCODE_LEFT_BRACKET"

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x48

    const-string v2, "KEYCODE_RIGHT_BRACKET"

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x49

    const-string v2, "KEYCODE_BACKSLASH"

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x4a

    const-string v2, "KEYCODE_SEMICOLON"

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x4b

    const-string v2, "KEYCODE_APOSTROPHE"

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x4c

    const-string v2, "KEYCODE_SLASH"

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x4d

    const-string v2, "KEYCODE_AT"

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x4e

    const-string v2, "KEYCODE_NUM"

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x4f

    const-string v2, "KEYCODE_HEADSETHOOK"

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x50

    const-string v2, "KEYCODE_FOCUS"

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x51

    const-string v2, "KEYCODE_PLUS"

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x52

    const-string v2, "KEYCODE_MENU"

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x53

    const-string v2, "KEYCODE_NOTIFICATION"

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x54

    const-string v2, "KEYCODE_SEARCH"

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x55

    const-string v2, "KEYCODE_MEDIA_PLAY_PAUSE"

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x56

    const-string v2, "KEYCODE_MEDIA_STOP"

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x57

    const-string v2, "KEYCODE_MEDIA_NEXT"

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x58

    const-string v2, "KEYCODE_MEDIA_PREVIOUS"

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x59

    const-string v2, "KEYCODE_MEDIA_REWIND"

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x5a

    const-string v2, "KEYCODE_MEDIA_FAST_FORWARD"

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x5b

    const-string v2, "KEYCODE_MUTE"

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x5c

    const-string v2, "KEYCODE_PAGE_UP"

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x5d

    const-string v2, "KEYCODE_PAGE_DOWN"

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x5e

    const-string v2, "KEYCODE_PICTSYMBOLS"

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x5f

    const-string v2, "KEYCODE_SWITCH_CHARSET"

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x60

    const-string v2, "KEYCODE_BUTTON_A"

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x61

    const-string v2, "KEYCODE_BUTTON_B"

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x62

    const-string v2, "KEYCODE_BUTTON_C"

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x63

    const-string v2, "KEYCODE_BUTTON_X"

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x64

    const-string v2, "KEYCODE_BUTTON_Y"

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x65

    const-string v2, "KEYCODE_BUTTON_Z"

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x66

    const-string v2, "KEYCODE_BUTTON_L1"

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x67

    const-string v2, "KEYCODE_BUTTON_R1"

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x68

    const-string v2, "KEYCODE_BUTTON_L2"

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x69

    const-string v2, "KEYCODE_BUTTON_R2"

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x6a

    const-string v2, "KEYCODE_BUTTON_THUMBL"

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x6b

    const-string v2, "KEYCODE_BUTTON_THUMBR"

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x6c

    const-string v2, "KEYCODE_BUTTON_START"

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x6d

    const-string v2, "KEYCODE_BUTTON_SELECT"

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x6e

    const-string v2, "KEYCODE_BUTTON_MODE"

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x6f

    const-string v2, "KEYCODE_ESCAPE"

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x70

    const-string v2, "KEYCODE_FORWARD_DEL"

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x71

    const-string v2, "KEYCODE_CTRL_LEFT"

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x72

    const-string v2, "KEYCODE_CTRL_RIGHT"

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x73

    const-string v2, "KEYCODE_CAPS_LOCK"

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x74

    const-string v2, "KEYCODE_SCROLL_LOCK"

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x75

    const-string v2, "KEYCODE_META_LEFT"

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x76

    const-string v2, "KEYCODE_META_RIGHT"

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x77

    const-string v2, "KEYCODE_FUNCTION"

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x78

    const-string v2, "KEYCODE_SYSRQ"

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x79

    const-string v2, "KEYCODE_BREAK"

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x7a

    const-string v2, "KEYCODE_MOVE_HOME"

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x7b

    const-string v2, "KEYCODE_MOVE_END"

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x7c

    const-string v2, "KEYCODE_INSERT"

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x7d

    const-string v2, "KEYCODE_FORWARD"

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x7e

    const-string v2, "KEYCODE_MEDIA_PLAY"

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x7f

    const-string v2, "KEYCODE_MEDIA_PAUSE"

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x80

    const-string v2, "KEYCODE_MEDIA_CLOSE"

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x81

    const-string v2, "KEYCODE_MEDIA_EJECT"

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x82

    const-string v2, "KEYCODE_MEDIA_RECORD"

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x83

    const-string v2, "KEYCODE_F1"

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x84

    const-string v2, "KEYCODE_F2"

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x85

    const-string v2, "KEYCODE_F3"

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x86

    const-string v2, "KEYCODE_F4"

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x87

    const-string v2, "KEYCODE_F5"

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x88

    const-string v2, "KEYCODE_F6"

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x89

    const-string v2, "KEYCODE_F7"

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x8a

    const-string v2, "KEYCODE_F8"

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x8b

    const-string v2, "KEYCODE_F9"

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x8c

    const-string v2, "KEYCODE_F10"

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x8d

    const-string v2, "KEYCODE_F11"

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x8e

    const-string v2, "KEYCODE_F12"

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x8f

    const-string v2, "KEYCODE_NUM_LOCK"

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x90

    const-string v2, "KEYCODE_NUMPAD_0"

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x91

    const-string v2, "KEYCODE_NUMPAD_1"

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x92

    const-string v2, "KEYCODE_NUMPAD_2"

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x93

    const-string v2, "KEYCODE_NUMPAD_3"

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x94

    const-string v2, "KEYCODE_NUMPAD_4"

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x95

    const-string v2, "KEYCODE_NUMPAD_5"

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x96

    const-string v2, "KEYCODE_NUMPAD_6"

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x97

    const-string v2, "KEYCODE_NUMPAD_7"

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x98

    const-string v2, "KEYCODE_NUMPAD_8"

    .line 154
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x99

    const-string v2, "KEYCODE_NUMPAD_9"

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x9a

    const-string v2, "KEYCODE_NUMPAD_DIVIDE"

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x9b

    const-string v2, "KEYCODE_NUMPAD_MULTIPLY"

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x9c

    const-string v2, "KEYCODE_NUMPAD_SUBTRACT"

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x9d

    const-string v2, "KEYCODE_NUMPAD_ADD"

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x9e

    const-string v2, "KEYCODE_NUMPAD_DOT"

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x9f

    const-string v2, "KEYCODE_NUMPAD_COMMA"

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa0

    const-string v2, "KEYCODE_NUMPAD_ENTER"

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa1

    const-string v2, "KEYCODE_NUMPAD_EQUALS"

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa2

    const-string v2, "KEYCODE_NUMPAD_LEFT_PAREN"

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa3

    const-string v2, "KEYCODE_NUMPAD_RIGHT_PAREN"

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa4

    const-string v2, "KEYCODE_VOLUME_MUTE"

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa5

    const-string v2, "KEYCODE_INFO"

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa6

    const-string v2, "KEYCODE_CHANNEL_UP"

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa7

    const-string v2, "KEYCODE_CHANNEL_DOWN"

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa8

    const-string v2, "KEYCODE_ZOOM_IN"

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa9

    const-string v2, "KEYCODE_ZOOM_OUT"

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xaa

    const-string v2, "KEYCODE_TV"

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xab

    const-string v2, "KEYCODE_WINDOW"

    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xac

    const-string v2, "KEYCODE_GUIDE"

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xad

    const-string v2, "KEYCODE_DVR"

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xae

    const-string v2, "KEYCODE_BOOKMARK"

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xaf

    const-string v2, "KEYCODE_CAPTIONS"

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb0

    const-string v2, "KEYCODE_SETTINGS"

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb1

    const-string v2, "KEYCODE_TV_POWER"

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb2

    const-string v2, "KEYCODE_TV_INPUT"

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb4

    const-string v2, "KEYCODE_STB_INPUT"

    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb3

    const-string v2, "KEYCODE_STB_POWER"

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb5

    const-string v2, "KEYCODE_AVR_POWER"

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb6

    const-string v2, "KEYCODE_AVR_INPUT"

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb7

    const-string v2, "KEYCODE_PROG_RED"

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb8

    const-string v2, "KEYCODE_PROG_GREEN"

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb9

    const-string v2, "KEYCODE_PROG_YELLOW"

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xba

    const-string v2, "KEYCODE_PROG_BLUE"

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xbb

    const-string v2, "KEYCODE_APP_SWITCH"

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xbc

    const-string v2, "KEYCODE_BUTTON_1"

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xbd

    const-string v2, "KEYCODE_BUTTON_2"

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xbe

    const-string v2, "KEYCODE_BUTTON_3"

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xbf

    const-string v2, "KEYCODE_BUTTON_4"

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc0

    const-string v2, "KEYCODE_BUTTON_5"

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc1

    const-string v2, "KEYCODE_BUTTON_6"

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc2

    const-string v2, "KEYCODE_BUTTON_7"

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc3

    const-string v2, "KEYCODE_BUTTON_8"

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc4

    const-string v2, "KEYCODE_BUTTON_9"

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc5

    const-string v2, "KEYCODE_BUTTON_10"

    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc6

    const-string v2, "KEYCODE_BUTTON_11"

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc7

    const-string v2, "KEYCODE_BUTTON_12"

    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc8

    const-string v2, "KEYCODE_BUTTON_13"

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc9

    const-string v2, "KEYCODE_BUTTON_14"

    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xca

    const-string v2, "KEYCODE_BUTTON_15"

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xcb

    const-string v2, "KEYCODE_BUTTON_16"

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xcc

    const-string v2, "KEYCODE_LANGUAGE_SWITCH"

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xcd

    const-string v2, "KEYCODE_MANNER_MODE"

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xce

    const-string v2, "KEYCODE_3D_MODE"

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xcf

    const-string v2, "KEYCODE_CONTACTS"

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xd0

    const-string v2, "KEYCODE_CALENDAR"

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xd1

    const-string v2, "KEYCODE_MUSIC"

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xd2

    const-string v2, "KEYCODE_CALCULATOR"

    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xd3

    const-string v2, "KEYCODE_ZENKAKU_HANKAKU"

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xd4

    const-string v2, "KEYCODE_EISU"

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xd5

    const-string v2, "KEYCODE_MUHENKAN"

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xd6

    const-string v2, "KEYCODE_HENKAN"

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xd7

    const-string v2, "KEYCODE_KATAKANA_HIRAGANA"

    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xd8

    const-string v2, "KEYCODE_YEN"

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xd9

    const-string v2, "KEYCODE_RO"

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xda

    const-string v2, "KEYCODE_KANA"

    .line 220
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xdb

    const-string v2, "KEYCODE_ASSIST"

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xdc

    const-string v2, "KEYCODE_BRIGHTNESS_DOWN"

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xdd

    const-string v2, "KEYCODE_BRIGHTNESS_UP"

    .line 223
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xde

    const-string v2, "KEYCODE_MEDIA_AUDIO_TRACK"

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xdf

    const-string v2, "KEYCODE_SQL_BUTTON_DISPLAYOFF"

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xe0

    const-string v2, "KEYCODE_SQL_BUTTON_NAVI"

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xe1

    const-string v2, "KEYCODE_SQL_BUTTON_SRC"

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xe2

    const-string v2, "KEYCODE_SQL_BUTTON_FAST_FORWORD"

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xe3

    const-string v2, "KEYCODE_SQL_BUTTON_FAST_REVERSE"

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xe4

    const-string v2, "KEYCODE_SQL_BUTTON_HOME"

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xe5

    const-string v2, "KEYCODE_SQL_BUTTON_BACK"

    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xe6

    const-string v2, "KEYCODE_SQL_BUTTON_SOUND_UP"

    .line 232
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xe7

    const-string v2, "KEYCODE_SQL_BUTTON_SOUND_DOWN"

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xe8

    const-string v2, "KEYCODE_SQL_BUTTON_KEY_ONE"

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xe9

    const-string v2, "KEYCODE_SQL_BUTTON_KEY_TWO"

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xea

    const-string v2, "KEYCODE_SQL_BUTTON_KEY_THREE"

    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xeb

    const-string v2, "KEYCODE_SQL_BUTTON_KEY_FOUR"

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xec

    const-string v2, "KEYCODE_SQL_BUTTON_KEY_FIVE"

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xed

    const-string v2, "KEYCODE_SQL_BUTTON_KEY_SIX"

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xee

    const-string v2, "KEYCODE_SQL_BUTTON_KEY_SEVEN"

    .line 240
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/view/InputEvent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/KeyEvent;
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z
    .locals 4

    .line 2
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_4

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eq v0, p2, :cond_0

    return p3

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 4
    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 5
    invoke-interface {p1, v2, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    if-eqz v2, :cond_3

    .line 6
    iput p3, p0, Landroid/view/KeyEvent;->mAction:I

    .line 7
    iput p3, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 8
    invoke-interface {p1, v2, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 9
    iput v1, p0, Landroid/view/KeyEvent;->mAction:I

    .line 10
    invoke-interface {p1, v2, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 11
    :cond_2
    iput p2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 12
    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    :cond_3
    return p3

    :cond_4
    if-eqz p2, :cond_5

    .line 13
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 14
    :cond_5
    iget p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, p2, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 15
    :cond_6
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 16
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz p2, :cond_9

    if-eqz v0, :cond_7

    .line 17
    iget v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    if-nez v2, :cond_7

    iget v2, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 18
    invoke-virtual {p2, p0, p3}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_1

    .line 19
    :cond_7
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 20
    :try_start_0
    iget p3, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, p3, p0}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_8
    move v1, v0

    :goto_0
    move v0, v1

    :catch_0
    :cond_9
    :goto_1
    return v0
.end method

.method public final getAction()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    return v0
.end method

.method public final getCharacters()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public getDisplayLabel()C
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    return-wide v0
.end method

.method public final getEventTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public final getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    return v0
.end method

.method public getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z

    move-result p1

    return p1
.end method

.method public final getKeyboardDevice()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public getMatch([C)C
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result p1

    return p1
.end method

.method public getMatch([CI)C
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result p1

    return p1
.end method

.method public final getMetaState()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    return v0
.end method

.method public final getModifiers()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    return v0
.end method

.method public getNumber()C
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    move-result v0

    return v0
.end method

.method public final getRepeatCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    return v0
.end method

.method public final getScanCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    return v0
.end method

.method public final getSource()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    return v0
.end method

.method public getUnicodeChar()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p0, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    return v0
.end method

.method public getUnicodeChar(I)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result p1

    return p1
.end method

.method public final hasDefaultAction()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-direct {p0, v0}, Landroid/view/KeyEvent;->native_hasDefaultAction(I)Z

    move-result v0

    return v0
.end method

.method public final hasModifiers(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p1

    return p1
.end method

.method public final hasNoModifiers()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public final isAltPressed()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCanceled()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCapsLockOn()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCtrlPressed()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFunctionPressed()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLongPress()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isMetaPressed()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNumLockOn()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrintingKey()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    return v0
.end method

.method public final isScrollLockOn()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isShiftPressed()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isSymPressed()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSystem()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-direct {p0, v0}, Landroid/view/KeyEvent;->native_isSystemKey(I)Z

    move-result v0

    return v0
.end method

.method public final isTainted()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTracking()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final recycle()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 3
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 5
    sput v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 6
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    iput-object v1, p0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 7
    sput-object p0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final recycleIfNeededAfterDispatch()V
    .locals 0

    return-void
.end method

.method public final setSource(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/KeyEvent;->mSource:I

    return-void
.end method

.method public final setTainted(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/view/KeyEvent;->mFlags:I

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    :goto_0
    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method public final startTracking()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyEvent { action="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-static {v1}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyCode="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scanCode="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", characters=\""

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", metaState="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v1}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags=0x"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", repeatCount="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventTime="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downTime="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source=0x"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x2

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
