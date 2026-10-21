.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Configuration$NativeConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final ASSETS_SEQ_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_HDR_MASK:I = 0xc

.field public static final COLOR_MODE_HDR_NO:I = 0x4

.field public static final COLOR_MODE_HDR_SHIFT:I = 0x2

.field public static final COLOR_MODE_HDR_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_HDR_YES:I = 0x8

.field public static final COLOR_MODE_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_MASK:I = 0x3

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_NO:I = 0x1

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_YES:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_DPI_ANY:I = 0xfffe

.field public static final DENSITY_DPI_NONE:I = 0xffff

.field public static final DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final EMPTY:Landroid/content/res/Configuration;

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final MNC_ZERO:I = 0xffff

.field public static final NATIVE_CONFIG_COLOR_MODE:I = 0x10000

.field public static final NATIVE_CONFIG_DENSITY:I = 0x100

.field public static final NATIVE_CONFIG_KEYBOARD:I = 0x10

.field public static final NATIVE_CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final NATIVE_CONFIG_LAYOUTDIR:I = 0x4000

.field public static final NATIVE_CONFIG_LOCALE:I = 0x4

.field public static final NATIVE_CONFIG_MCC:I = 0x1

.field public static final NATIVE_CONFIG_MNC:I = 0x2

.field public static final NATIVE_CONFIG_NAVIGATION:I = 0x40

.field public static final NATIVE_CONFIG_ORIENTATION:I = 0x80

.field public static final NATIVE_CONFIG_SCREEN_LAYOUT:I = 0x800

.field public static final NATIVE_CONFIG_SCREEN_SIZE:I = 0x200

.field public static final NATIVE_CONFIG_SMALLEST_SCREEN_SIZE:I = 0x2000

.field public static final NATIVE_CONFIG_TOUCHSCREEN:I = 0x8

.field public static final NATIVE_CONFIG_UI_MODE:I = 0x1000

.field public static final NATIVE_CONFIG_VERSION:I = 0x400

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_ROUND_MASK:I = 0x300

.field public static final SCREENLAYOUT_ROUND_NO:I = 0x100

.field public static final SCREENLAYOUT_ROUND_SHIFT:I = 0x8

.field public static final SCREENLAYOUT_ROUND_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_ROUND_YES:I = 0x200

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final UI_MODE_TYPE_UNDEFINED:I = 0x0

.field public static final UI_MODE_TYPE_VR_HEADSET:I = 0x7

.field public static final UI_MODE_TYPE_WATCH:I = 0x6

.field private static final XML_ATTR_APP_BOUNDS:Ljava/lang/String; = "app_bounds"

.field private static final XML_ATTR_COLOR_MODE:Ljava/lang/String; = "clrMod"

.field private static final XML_ATTR_DENSITY:Ljava/lang/String; = "density"

.field private static final XML_ATTR_FONT_SCALE:Ljava/lang/String; = "fs"

.field private static final XML_ATTR_HARD_KEYBOARD_HIDDEN:Ljava/lang/String; = "hardKeyHid"

.field private static final XML_ATTR_KEYBOARD:Ljava/lang/String; = "key"

.field private static final XML_ATTR_KEYBOARD_HIDDEN:Ljava/lang/String; = "keyHid"

.field private static final XML_ATTR_LOCALES:Ljava/lang/String; = "locales"

.field private static final XML_ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final XML_ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final XML_ATTR_NAVIGATION:Ljava/lang/String; = "nav"

.field private static final XML_ATTR_NAVIGATION_HIDDEN:Ljava/lang/String; = "navHid"

.field private static final XML_ATTR_ORIENTATION:Ljava/lang/String; = "ori"

.field private static final XML_ATTR_ROTATION:Ljava/lang/String; = "rot"

.field private static final XML_ATTR_SCREEN_HEIGHT:Ljava/lang/String; = "height"

.field private static final XML_ATTR_SCREEN_LAYOUT:Ljava/lang/String; = "scrLay"

.field private static final XML_ATTR_SCREEN_WIDTH:Ljava/lang/String; = "width"

.field private static final XML_ATTR_SMALLEST_WIDTH:Ljava/lang/String; = "sw"

.field private static final XML_ATTR_TOUCHSCREEN:Ljava/lang/String; = "touch"

.field private static final XML_ATTR_UI_MODE:Ljava/lang/String; = "ui"


# instance fields
.field public appBounds:Landroid/graphics/Rect;

.field public assetsSeq:I

.field public colorMode:I

.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public densityDpi:I

.field public fontScale:F

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mLocaleList:Landroid/os/LocaleList;

.field public mcc:I

.field public mnc:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenWidthDp:I

.field public seq:I

.field public smallestScreenWidthDp:I

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 7
    .line 8
    new-instance v0, Landroid/content/res/Configuration$1;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static configurationDiffToString(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit8 v1, p0, 0x1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "CONFIG_MCC"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    and-int/lit8 v1, p0, 0x2

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string v1, "CONFIG_MNC"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    and-int/lit8 v1, p0, 0x4

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const-string v1, "CONFIG_LOCALE"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_2
    and-int/lit8 v1, p0, 0x8

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    const-string v1, "CONFIG_TOUCHSCREEN"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_3
    and-int/lit8 v1, p0, 0x10

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    const-string v1, "CONFIG_KEYBOARD"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_4
    and-int/lit8 v1, p0, 0x20

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    const-string v1, "CONFIG_KEYBOARD_HIDDEN"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_5
    and-int/lit8 v1, p0, 0x40

    .line 61
    .line 62
    if-eqz v1, :cond_6

    .line 63
    .line 64
    const-string v1, "CONFIG_NAVIGATION"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_6
    and-int/lit16 v1, p0, 0x80

    .line 70
    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    const-string v1, "CONFIG_ORIENTATION"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_7
    and-int/lit16 v1, p0, 0x100

    .line 79
    .line 80
    if-eqz v1, :cond_8

    .line 81
    .line 82
    const-string v1, "CONFIG_SCREEN_LAYOUT"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_8
    and-int/lit16 v1, p0, 0x4000

    .line 88
    .line 89
    if-eqz v1, :cond_9

    .line 90
    .line 91
    const-string v1, "CONFIG_COLOR_MODE"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_9
    and-int/lit16 v1, p0, 0x200

    .line 97
    .line 98
    if-eqz v1, :cond_a

    .line 99
    .line 100
    const-string v1, "CONFIG_UI_MODE"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_a
    and-int/lit16 v1, p0, 0x400

    .line 106
    .line 107
    if-eqz v1, :cond_b

    .line 108
    .line 109
    const-string v1, "CONFIG_SCREEN_SIZE"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_b
    and-int/lit16 v1, p0, 0x800

    .line 115
    .line 116
    if-eqz v1, :cond_c

    .line 117
    .line 118
    const-string v1, "CONFIG_SMALLEST_SCREEN_SIZE"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :cond_c
    and-int/lit16 v1, p0, 0x2000

    .line 124
    .line 125
    if-eqz v1, :cond_d

    .line 126
    .line 127
    const-string v1, "CONFIG_LAYOUT_DIRECTION"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    :cond_d
    const/high16 v1, 0x40000000    # 2.0f

    .line 133
    .line 134
    and-int/2addr v1, p0

    .line 135
    if-eqz v1, :cond_e

    .line 136
    .line 137
    const-string v1, "CONFIG_FONT_SCALE"

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    :cond_e
    const/high16 v1, -0x80000000

    .line 143
    .line 144
    and-int/2addr p0, v1

    .line 145
    if-eqz p0, :cond_f

    .line 146
    .line 147
    const-string p0, "CONFIG_ASSETS_PATHS"

    .line 148
    .line 149
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string/jumbo v1, "{"

    .line 155
    .line 156
    .line 157
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    const/4 v2, 0x0

    .line 165
    :goto_0
    if-ge v2, v1, :cond_11

    .line 166
    .line 167
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    add-int/lit8 v3, v1, -0x1

    .line 177
    .line 178
    if-eq v2, v3, :cond_10

    .line 179
    .line 180
    const-string v3, ", "

    .line 181
    .line 182
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    :cond_10
    add-int/lit8 v2, v2, 0x1

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_11
    const-string/jumbo v0, "}"

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    return-object p0
.end method

.method private fixUpLocaleList()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    new-instance v0, Landroid/os/LocaleList;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    new-array v2, v2, [Ljava/util/Locale;

    .line 43
    .line 44
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 45
    .line 46
    aput-object v3, v2, v1

    .line 47
    .line 48
    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public static generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 7
    .line 8
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 9
    .line 10
    cmpl-float v1, v1, v2

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 15
    .line 16
    :cond_0
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 17
    .line 18
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 23
    .line 24
    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 25
    .line 26
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    .line 27
    .line 28
    if-eq v1, v2, :cond_2

    .line 29
    .line 30
    iput v2, v0, Landroid/content/res/Configuration;->mnc:I

    .line 31
    .line 32
    :cond_2
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 39
    .line 40
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 49
    .line 50
    iput-object v1, v0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 51
    .line 52
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 53
    .line 54
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 55
    .line 56
    :cond_3
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 57
    .line 58
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 59
    .line 60
    if-eq v1, v2, :cond_4

    .line 61
    .line 62
    iput v2, v0, Landroid/content/res/Configuration;->touchscreen:I

    .line 63
    .line 64
    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 65
    .line 66
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 67
    .line 68
    if-eq v1, v2, :cond_5

    .line 69
    .line 70
    iput v2, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 71
    .line 72
    :cond_5
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 73
    .line 74
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 75
    .line 76
    if-eq v1, v2, :cond_6

    .line 77
    .line 78
    iput v2, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 79
    .line 80
    :cond_6
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    .line 81
    .line 82
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    .line 83
    .line 84
    if-eq v1, v2, :cond_7

    .line 85
    .line 86
    iput v2, v0, Landroid/content/res/Configuration;->navigation:I

    .line 87
    .line 88
    :cond_7
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 89
    .line 90
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 91
    .line 92
    if-eq v1, v2, :cond_8

    .line 93
    .line 94
    iput v2, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 95
    .line 96
    :cond_8
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    .line 97
    .line 98
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 99
    .line 100
    if-eq v1, v2, :cond_9

    .line 101
    .line 102
    iput v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 103
    .line 104
    :cond_9
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 105
    .line 106
    and-int/lit8 v1, v1, 0xf

    .line 107
    .line 108
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 109
    .line 110
    and-int/lit8 v3, v2, 0xf

    .line 111
    .line 112
    if-eq v1, v3, :cond_a

    .line 113
    .line 114
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 115
    .line 116
    and-int/lit8 v2, v2, 0xf

    .line 117
    .line 118
    or-int/2addr v1, v2

    .line 119
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 120
    .line 121
    :cond_a
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 122
    .line 123
    and-int/lit16 v1, v1, 0xc0

    .line 124
    .line 125
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 126
    .line 127
    and-int/lit16 v3, v2, 0xc0

    .line 128
    .line 129
    if-eq v1, v3, :cond_b

    .line 130
    .line 131
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 132
    .line 133
    and-int/lit16 v2, v2, 0xc0

    .line 134
    .line 135
    or-int/2addr v1, v2

    .line 136
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 137
    .line 138
    :cond_b
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 139
    .line 140
    and-int/lit8 v1, v1, 0x30

    .line 141
    .line 142
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 143
    .line 144
    and-int/lit8 v3, v2, 0x30

    .line 145
    .line 146
    if-eq v1, v3, :cond_c

    .line 147
    .line 148
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 149
    .line 150
    and-int/lit8 v2, v2, 0x30

    .line 151
    .line 152
    or-int/2addr v1, v2

    .line 153
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 154
    .line 155
    :cond_c
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 156
    .line 157
    and-int/lit16 v1, v1, 0x300

    .line 158
    .line 159
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 160
    .line 161
    and-int/lit16 v3, v2, 0x300

    .line 162
    .line 163
    if-eq v1, v3, :cond_d

    .line 164
    .line 165
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 166
    .line 167
    and-int/lit16 v2, v2, 0x300

    .line 168
    .line 169
    or-int/2addr v1, v2

    .line 170
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 171
    .line 172
    :cond_d
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 173
    .line 174
    and-int/lit8 v1, v1, 0x3

    .line 175
    .line 176
    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 177
    .line 178
    and-int/lit8 v3, v2, 0x3

    .line 179
    .line 180
    if-eq v1, v3, :cond_e

    .line 181
    .line 182
    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 183
    .line 184
    and-int/lit8 v2, v2, 0x3

    .line 185
    .line 186
    or-int/2addr v1, v2

    .line 187
    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 188
    .line 189
    :cond_e
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 190
    .line 191
    and-int/lit8 v1, v1, 0xc

    .line 192
    .line 193
    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 194
    .line 195
    and-int/lit8 v3, v2, 0xc

    .line 196
    .line 197
    if-eq v1, v3, :cond_f

    .line 198
    .line 199
    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 200
    .line 201
    and-int/lit8 v2, v2, 0xc

    .line 202
    .line 203
    or-int/2addr v1, v2

    .line 204
    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 205
    .line 206
    :cond_f
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 207
    .line 208
    and-int/lit8 v1, v1, 0xf

    .line 209
    .line 210
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 211
    .line 212
    and-int/lit8 v3, v2, 0xf

    .line 213
    .line 214
    if-eq v1, v3, :cond_10

    .line 215
    .line 216
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 217
    .line 218
    and-int/lit8 v2, v2, 0xf

    .line 219
    .line 220
    or-int/2addr v1, v2

    .line 221
    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 222
    .line 223
    :cond_10
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 224
    .line 225
    and-int/lit8 v1, v1, 0x30

    .line 226
    .line 227
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 228
    .line 229
    and-int/lit8 v3, v2, 0x30

    .line 230
    .line 231
    if-eq v1, v3, :cond_11

    .line 232
    .line 233
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 234
    .line 235
    and-int/lit8 v2, v2, 0x30

    .line 236
    .line 237
    or-int/2addr v1, v2

    .line 238
    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 239
    .line 240
    :cond_11
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 241
    .line 242
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 243
    .line 244
    if-eq v1, v2, :cond_12

    .line 245
    .line 246
    iput v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 247
    .line 248
    :cond_12
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 249
    .line 250
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 251
    .line 252
    if-eq v1, v2, :cond_13

    .line 253
    .line 254
    iput v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 255
    .line 256
    :cond_13
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 257
    .line 258
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 259
    .line 260
    if-eq v1, v2, :cond_14

    .line 261
    .line 262
    iput v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 263
    .line 264
    :cond_14
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 265
    .line 266
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 267
    .line 268
    if-eq v1, v2, :cond_15

    .line 269
    .line 270
    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 271
    .line 272
    :cond_15
    iget p0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 273
    .line 274
    iget p1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    .line 275
    .line 276
    if-eq p0, p1, :cond_16

    .line 277
    .line 278
    iput p1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 279
    .line 280
    :cond_16
    return-object v0
.end method

.method private static getScreenLayoutNoDirection(I)I
    .locals 0

    and-int/lit16 p0, p0, -0xc1

    return p0
.end method

.method public static localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_7

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_0
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    const-string v7, ","

    .line 60
    .line 61
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_1
    const/4 v7, 0x2

    .line 65
    if-ne v3, v7, :cond_3

    .line 66
    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    if-ne v5, v7, :cond_3

    .line 72
    .line 73
    :cond_2
    if-nez v6, :cond_3

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    if-ne v5, v7, :cond_6

    .line 83
    .line 84
    const-string v3, "-r"

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const-string v3, "b+"

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v3, "+"

    .line 110
    .line 111
    if-eqz v4, :cond_4

    .line 112
    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :cond_4
    if-eqz v5, :cond_5

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    :cond_5
    if-eqz v6, :cond_6

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    return-object p0
.end method

.method public static needNewResources(II)Z
    .locals 1

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    const-string v0, "fs"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 13
    .line 14
    const-string/jumbo v0, "mcc"

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p1, Landroid/content/res/Configuration;->mcc:I

    .line 22
    .line 23
    const-string/jumbo v0, "mnc"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p1, Landroid/content/res/Configuration;->mnc:I

    .line 31
    .line 32
    const-string/jumbo v0, "locales"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 50
    .line 51
    const-string/jumbo v0, "touch"

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 59
    .line 60
    const-string/jumbo v0, "key"

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 68
    .line 69
    const-string/jumbo v0, "keyHid"

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iput v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 77
    .line 78
    const-string/jumbo v0, "hardKeyHid"

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iput v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 86
    .line 87
    const-string/jumbo v0, "nav"

    .line 88
    .line 89
    .line 90
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p1, Landroid/content/res/Configuration;->navigation:I

    .line 95
    .line 96
    const-string/jumbo v0, "navHid"

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 104
    .line 105
    const-string/jumbo v0, "ori"

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 113
    .line 114
    const-string/jumbo v0, "scrLay"

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 122
    .line 123
    const-string v0, "clrMod"

    .line 124
    .line 125
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iput v0, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 130
    .line 131
    const-string/jumbo v0, "ui"

    .line 132
    .line 133
    .line 134
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iput v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 139
    .line 140
    const-string/jumbo v0, "width"

    .line 141
    .line 142
    .line 143
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iput v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 148
    .line 149
    const-string/jumbo v0, "height"

    .line 150
    .line 151
    .line 152
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 157
    .line 158
    const-string/jumbo v0, "sw"

    .line 159
    .line 160
    .line 161
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 166
    .line 167
    const-string v0, "density"

    .line 168
    .line 169
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    iput v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 174
    .line 175
    const-string v0, "app_bounds"

    .line 176
    .line 177
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-static {p0}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    iput-object p0, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    .line 186
    .line 187
    return-void
.end method

.method public static reduceScreenLayout(III)I
    .locals 5

    const/16 v0, 0x1d6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    move v4, v1

    goto :goto_3

    :cond_0
    const/16 v0, 0x3c0

    const/4 v3, 0x3

    if-lt p1, v0, :cond_1

    const/16 v0, 0x2d0

    if-lt p2, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/16 v0, 0x280

    if-lt p1, v0, :cond_2

    const/16 v0, 0x1e0

    if-lt p2, v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const/16 v4, 0x141

    if-gt p2, v4, :cond_4

    const/16 v4, 0x23a

    if-le p1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v2

    :goto_2
    mul-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x5

    sub-int/2addr p2, v2

    if-lt p1, p2, :cond_5

    move v1, v2

    :cond_5
    move v2, v0

    :goto_3
    if-nez v1, :cond_6

    and-int/lit8 p0, p0, -0x31

    or-int/lit8 p0, p0, 0x10

    :cond_6
    if-eqz v4, :cond_7

    const/high16 p1, 0x10000000

    or-int/2addr p0, p1

    :cond_7
    and-int/lit8 p1, p0, 0xf

    if-ge v2, p1, :cond_8

    and-int/lit8 p0, p0, -0x10

    or-int/2addr p0, v2

    :cond_8
    return p0
.end method

.method public static resetScreenLayout(I)I
    .locals 1

    const v0, -0x10000040

    and-int/2addr p0, v0

    or-int/lit8 p0, p0, 0x24

    return p0
.end method

.method public static resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "mcc"

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo v2, "mnc"

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 63
    .line 64
    invoke-static {v1}, Landroid/content/res/Configuration;->localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_1

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 78
    .line 79
    and-int/lit16 v1, v1, 0xc0

    .line 80
    .line 81
    const/16 v2, 0x40

    .line 82
    .line 83
    if-eq v1, v2, :cond_3

    .line 84
    .line 85
    const/16 v2, 0x80

    .line 86
    .line 87
    if-eq v1, v2, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const-string/jumbo v1, "ldrtl"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    const-string/jumbo v1, "ldltr"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :goto_0
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 104
    .line 105
    const-string v2, "dp"

    .line 106
    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string/jumbo v3, "sw"

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 133
    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string/jumbo v3, "w"

    .line 139
    .line 140
    .line 141
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 145
    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :cond_5
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 160
    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string/jumbo v3, "h"

    .line 166
    .line 167
    .line 168
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 172
    .line 173
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    :cond_6
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 187
    .line 188
    and-int/lit8 v1, v1, 0xf

    .line 189
    .line 190
    const/4 v2, 0x4

    .line 191
    const/4 v3, 0x3

    .line 192
    const/4 v4, 0x2

    .line 193
    const/4 v5, 0x1

    .line 194
    if-eq v1, v5, :cond_a

    .line 195
    .line 196
    if-eq v1, v4, :cond_9

    .line 197
    .line 198
    if-eq v1, v3, :cond_8

    .line 199
    .line 200
    if-eq v1, v2, :cond_7

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_7
    const-string/jumbo v1, "xlarge"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_8
    const-string/jumbo v1, "large"

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_9
    const-string/jumbo v1, "normal"

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_a
    const-string/jumbo v1, "small"

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    :goto_1
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 231
    .line 232
    and-int/lit8 v1, v1, 0x30

    .line 233
    .line 234
    const/16 v6, 0x20

    .line 235
    .line 236
    const/16 v7, 0x10

    .line 237
    .line 238
    if-eq v1, v7, :cond_c

    .line 239
    .line 240
    if-eq v1, v6, :cond_b

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_b
    const-string/jumbo v1, "long"

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_c
    const-string/jumbo v1, "notlong"

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    :goto_2
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 257
    .line 258
    and-int/lit16 v1, v1, 0x300

    .line 259
    .line 260
    const/16 v8, 0x100

    .line 261
    .line 262
    if-eq v1, v8, :cond_e

    .line 263
    .line 264
    const/16 v8, 0x200

    .line 265
    .line 266
    if-eq v1, v8, :cond_d

    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_d
    const-string/jumbo v1, "round"

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_e
    const-string/jumbo v1, "notround"

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    :goto_3
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 283
    .line 284
    and-int/lit8 v1, v1, 0xc

    .line 285
    .line 286
    if-eq v1, v2, :cond_10

    .line 287
    .line 288
    const/16 v8, 0x8

    .line 289
    .line 290
    if-eq v1, v8, :cond_f

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_f
    const-string/jumbo v1, "highdr"

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_10
    const-string/jumbo v1, "lowdr"

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    :goto_4
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 307
    .line 308
    and-int/2addr v1, v3

    .line 309
    if-eq v1, v5, :cond_12

    .line 310
    .line 311
    if-eq v1, v4, :cond_11

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_11
    const-string/jumbo v1, "widecg"

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_12
    const-string/jumbo v1, "nowidecg"

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    :goto_5
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    .line 328
    .line 329
    if-eq v1, v5, :cond_14

    .line 330
    .line 331
    if-eq v1, v4, :cond_13

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_13
    const-string/jumbo v1, "land"

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_14
    const-string/jumbo v1, "port"

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    :goto_6
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 348
    .line 349
    and-int/lit8 v1, v1, 0xf

    .line 350
    .line 351
    packed-switch v1, :pswitch_data_0

    .line 352
    .line 353
    .line 354
    goto :goto_7

    .line 355
    :pswitch_0
    const-string/jumbo v1, "vrheadset"

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    goto :goto_7

    .line 362
    :pswitch_1
    const-string/jumbo v1, "watch"

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    goto :goto_7

    .line 369
    :pswitch_2
    const-string v1, "appliance"

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    goto :goto_7

    .line 375
    :pswitch_3
    const-string/jumbo v1, "television"

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    goto :goto_7

    .line 382
    :pswitch_4
    const-string v1, "car"

    .line 383
    .line 384
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    goto :goto_7

    .line 388
    :pswitch_5
    const-string v1, "desk"

    .line 389
    .line 390
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    :goto_7
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 394
    .line 395
    and-int/lit8 v1, v1, 0x30

    .line 396
    .line 397
    if-eq v1, v7, :cond_16

    .line 398
    .line 399
    if-eq v1, v6, :cond_15

    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_15
    const-string/jumbo v1, "night"

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    goto :goto_8

    .line 409
    :cond_16
    const-string/jumbo v1, "notnight"

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    :goto_8
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 416
    .line 417
    if-eqz v1, :cond_1e

    .line 418
    .line 419
    const/16 v6, 0x78

    .line 420
    .line 421
    if-eq v1, v6, :cond_1d

    .line 422
    .line 423
    const/16 v6, 0xa0

    .line 424
    .line 425
    if-eq v1, v6, :cond_1c

    .line 426
    .line 427
    const/16 v6, 0xd5

    .line 428
    .line 429
    if-eq v1, v6, :cond_1b

    .line 430
    .line 431
    const/16 v6, 0xf0

    .line 432
    .line 433
    if-eq v1, v6, :cond_1a

    .line 434
    .line 435
    const/16 v6, 0x140

    .line 436
    .line 437
    if-eq v1, v6, :cond_19

    .line 438
    .line 439
    const/16 v6, 0x1e0

    .line 440
    .line 441
    if-eq v1, v6, :cond_18

    .line 442
    .line 443
    const/16 v6, 0x280

    .line 444
    .line 445
    if-eq v1, v6, :cond_17

    .line 446
    .line 447
    packed-switch v1, :pswitch_data_1

    .line 448
    .line 449
    .line 450
    goto :goto_9

    .line 451
    :pswitch_6
    const-string/jumbo v1, "nodpi"

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    iget v6, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 463
    .line 464
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string v6, "dpi"

    .line 468
    .line 469
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    goto :goto_a

    .line 480
    :pswitch_7
    const-string v1, "anydpi"

    .line 481
    .line 482
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    goto :goto_a

    .line 486
    :cond_17
    const-string/jumbo v1, "xxxhdpi"

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    goto :goto_a

    .line 493
    :cond_18
    const-string/jumbo v1, "xxhdpi"

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    goto :goto_a

    .line 500
    :cond_19
    const-string/jumbo v1, "xhdpi"

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    goto :goto_a

    .line 507
    :cond_1a
    const-string/jumbo v1, "hdpi"

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    goto :goto_a

    .line 514
    :cond_1b
    const-string/jumbo v1, "tvdpi"

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    goto :goto_a

    .line 521
    :cond_1c
    const-string/jumbo v1, "mdpi"

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    goto :goto_a

    .line 528
    :cond_1d
    const-string/jumbo v1, "ldpi"

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    :cond_1e
    :goto_a
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 535
    .line 536
    if-eq v1, v5, :cond_20

    .line 537
    .line 538
    if-eq v1, v3, :cond_1f

    .line 539
    .line 540
    goto :goto_b

    .line 541
    :cond_1f
    const-string v1, "finger"

    .line 542
    .line 543
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    goto :goto_b

    .line 547
    :cond_20
    const-string/jumbo v1, "notouch"

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    :goto_b
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 554
    .line 555
    if-eq v1, v5, :cond_23

    .line 556
    .line 557
    if-eq v1, v4, :cond_22

    .line 558
    .line 559
    if-eq v1, v3, :cond_21

    .line 560
    .line 561
    goto :goto_c

    .line 562
    :cond_21
    const-string/jumbo v1, "keyssoft"

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    goto :goto_c

    .line 569
    :cond_22
    const-string/jumbo v1, "keyshidden"

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    goto :goto_c

    .line 576
    :cond_23
    const-string/jumbo v1, "keysexposed"

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    :goto_c
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 583
    .line 584
    if-eq v1, v5, :cond_26

    .line 585
    .line 586
    if-eq v1, v4, :cond_25

    .line 587
    .line 588
    if-eq v1, v3, :cond_24

    .line 589
    .line 590
    goto :goto_d

    .line 591
    :cond_24
    const-string v1, "12key"

    .line 592
    .line 593
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    goto :goto_d

    .line 597
    :cond_25
    const-string/jumbo v1, "qwerty"

    .line 598
    .line 599
    .line 600
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    goto :goto_d

    .line 604
    :cond_26
    const-string/jumbo v1, "nokeys"

    .line 605
    .line 606
    .line 607
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    :goto_d
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 611
    .line 612
    if-eq v1, v5, :cond_28

    .line 613
    .line 614
    if-eq v1, v4, :cond_27

    .line 615
    .line 616
    goto :goto_e

    .line 617
    :cond_27
    const-string/jumbo v1, "navhidden"

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    goto :goto_e

    .line 624
    :cond_28
    const-string/jumbo v1, "navexposed"

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    :goto_e
    iget p0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 631
    .line 632
    if-eq p0, v5, :cond_2c

    .line 633
    .line 634
    if-eq p0, v4, :cond_2b

    .line 635
    .line 636
    if-eq p0, v3, :cond_2a

    .line 637
    .line 638
    if-eq p0, v2, :cond_29

    .line 639
    .line 640
    goto :goto_f

    .line 641
    :cond_29
    const-string/jumbo p0, "wheel"

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    goto :goto_f

    .line 648
    :cond_2a
    const-string/jumbo p0, "trackball"

    .line 649
    .line 650
    .line 651
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    goto :goto_f

    .line 655
    :cond_2b
    const-string p0, "dpad"

    .line 656
    .line 657
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    goto :goto_f

    .line 661
    :cond_2c
    const-string/jumbo p0, "nonav"

    .line 662
    .line 663
    .line 664
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    :goto_f
    new-instance p0, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    const-string/jumbo v1, "v"

    .line 670
    .line 671
    .line 672
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    sget v1, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 676
    .line 677
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object p0

    .line 684
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    const-string p0, "-"

    .line 688
    .line 689
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object p0

    .line 693
    return-object p0

    .line 694
    nop

    .line 695
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    :pswitch_data_1
    .packed-switch 0xfffe
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "fs"

    .line 8
    .line 9
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string/jumbo v1, "mcc"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string/jumbo v1, "mnc"

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string/jumbo v1, "locales"

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    const-string/jumbo v1, "touch"

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    const-string/jumbo v1, "key"

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    :cond_4
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    const-string/jumbo v1, "keyHid"

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 86
    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    const-string/jumbo v1, "hardKeyHid"

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    :cond_6
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    const-string/jumbo v1, "nav"

    .line 100
    .line 101
    .line 102
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    :cond_7
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 106
    .line 107
    if-eqz v0, :cond_8

    .line 108
    .line 109
    const-string/jumbo v1, "navHid"

    .line 110
    .line 111
    .line 112
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    :cond_8
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 116
    .line 117
    if-eqz v0, :cond_9

    .line 118
    .line 119
    const-string/jumbo v1, "ori"

    .line 120
    .line 121
    .line 122
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    :cond_9
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 126
    .line 127
    if-eqz v0, :cond_a

    .line 128
    .line 129
    const-string/jumbo v1, "scrLay"

    .line 130
    .line 131
    .line 132
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    :cond_a
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 136
    .line 137
    if-eqz v0, :cond_b

    .line 138
    .line 139
    const-string v1, "clrMod"

    .line 140
    .line 141
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    :cond_b
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 145
    .line 146
    if-eqz v0, :cond_c

    .line 147
    .line 148
    const-string/jumbo v1, "ui"

    .line 149
    .line 150
    .line 151
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    :cond_c
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 155
    .line 156
    if-eqz v0, :cond_d

    .line 157
    .line 158
    const-string/jumbo v1, "width"

    .line 159
    .line 160
    .line 161
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    :cond_d
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 165
    .line 166
    if-eqz v0, :cond_e

    .line 167
    .line 168
    const-string/jumbo v1, "height"

    .line 169
    .line 170
    .line 171
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    :cond_e
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 175
    .line 176
    if-eqz v0, :cond_f

    .line 177
    .line 178
    const-string/jumbo v1, "sw"

    .line 179
    .line 180
    .line 181
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    :cond_f
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 185
    .line 186
    if-eqz v0, :cond_10

    .line 187
    .line 188
    const-string v1, "density"

    .line 189
    .line 190
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    :cond_10
    iget-object p1, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    .line 194
    .line 195
    if-eqz p1, :cond_11

    .line 196
    .line 197
    const-string v0, "app_bounds"

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {p0, v0, p1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    :cond_11
    return-void
.end method


# virtual methods
.method public clearLocales()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 9
    .line 10
    return-void
.end method

.method public compareTo(Landroid/content/res/Configuration;)I
    .locals 8

    .line 2
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 3
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpg-float v2, v0, v1

    const/4 v3, -0x1

    if-gez v2, :cond_0

    return v3

    :cond_0
    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_2

    return v0

    .line 5
    :cond_2
    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 7
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 8
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 10
    :cond_4
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    .line 11
    :cond_5
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_a

    .line 12
    iget-object v4, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v4, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    .line 13
    iget-object v5, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v5, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    .line 14
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_6

    return v6

    .line 15
    :cond_6
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_7

    return v6

    .line 16
    :cond_7
    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_8

    return v6

    .line 17
    :cond_8
    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_9

    return v4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_a
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_b

    return v0

    .line 19
    :cond_b
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_c

    return v0

    .line 20
    :cond_c
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_d

    return v0

    .line 21
    :cond_d
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_e

    return v0

    .line 22
    :cond_e
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_f

    return v0

    .line 23
    :cond_f
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_10

    return v0

    .line 24
    :cond_10
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_11

    return v0

    .line 25
    :cond_11
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_12

    return v0

    .line 26
    :cond_12
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_13

    return v0

    .line 27
    :cond_13
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_14

    return v0

    .line 28
    :cond_14
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_15

    return v0

    .line 29
    :cond_15
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_16

    return v0

    .line 30
    :cond_16
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_17

    return v0

    .line 31
    :cond_17
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_18

    return v0

    .line 32
    :cond_18
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_19

    return v0

    .line 33
    :cond_19
    iget v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_1a

    return v0

    .line 34
    :cond_1a
    iget-object v2, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_1b

    iget-object v4, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_1b

    return v1

    :cond_1b
    if-eqz v2, :cond_1c

    .line 35
    iget-object v1, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_1c

    return v3

    :cond_1c
    if-eqz v2, :cond_20

    .line 36
    iget-object p1, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_20

    .line 37
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1d

    return v0

    .line 38
    :cond_1d
    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1e

    return v0

    .line 39
    :cond_1e
    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1f

    return v0

    .line 40
    :cond_1f
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    if-eqz v0, :cond_20

    :cond_20
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result p1

    return p1
.end method

.method public diff(Landroid/content/res/Configuration;ZZ)I
    .locals 4

    if-nez p2, :cond_0

    .line 2
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p2, :cond_2

    .line 3
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    if-nez p2, :cond_4

    .line 4
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_5

    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_5

    or-int/lit8 v0, v0, 0x2

    .line 5
    :cond_5
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 6
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    if-nez p2, :cond_6

    .line 7
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    or-int/lit8 v0, v0, 0x4

    or-int/lit16 v0, v0, 0x2000

    .line 9
    :cond_7
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v1, 0xc0

    if-nez p2, :cond_8

    if-eqz v2, :cond_9

    .line 10
    :cond_8
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    if-eq v2, v3, :cond_9

    or-int/lit16 v0, v0, 0x2000

    :cond_9
    if-nez p2, :cond_a

    .line 11
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_b

    :cond_a
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_b

    or-int/lit8 v0, v0, 0x8

    :cond_b
    if-nez p2, :cond_c

    .line 12
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_d

    :cond_c
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_d

    or-int/lit8 v0, v0, 0x10

    :cond_d
    if-nez p2, :cond_e

    .line 13
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_f

    :cond_e
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_f

    or-int/lit8 v0, v0, 0x20

    :cond_f
    if-nez p2, :cond_10

    .line 14
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_11

    :cond_10
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v3, :cond_11

    or-int/lit8 v0, v0, 0x20

    :cond_11
    if-nez p2, :cond_12

    .line 15
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_13

    :cond_12
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_13

    or-int/lit8 v0, v0, 0x40

    :cond_13
    if-nez p2, :cond_14

    .line 16
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_15

    :cond_14
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_15

    or-int/lit8 v0, v0, 0x20

    :cond_15
    if-nez p2, :cond_16

    .line 17
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_17

    :cond_16
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_17

    or-int/lit16 v0, v0, 0x80

    :cond_17
    if-nez p2, :cond_18

    .line 18
    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 19
    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 20
    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eq v1, v2, :cond_19

    or-int/lit16 v0, v0, 0x100

    :cond_19
    if-nez p2, :cond_1a

    .line 21
    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_1b

    :cond_1a
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    if-eq v1, v2, :cond_1b

    or-int/lit16 v0, v0, 0x4000

    :cond_1b
    if-nez p2, :cond_1c

    .line 22
    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_1d

    :cond_1c
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    if-eq v1, v2, :cond_1d

    or-int/lit16 v0, v0, 0x4000

    :cond_1d
    if-nez p2, :cond_1e

    .line 23
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_1f

    :cond_1e
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_1f

    or-int/lit16 v0, v0, 0x200

    :cond_1f
    if-nez p2, :cond_20

    .line 24
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_21

    :cond_20
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_21

    or-int/lit16 v0, v0, 0x400

    :cond_21
    if-nez p2, :cond_22

    .line 25
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_23

    :cond_22
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_23

    or-int/lit16 v0, v0, 0x400

    :cond_23
    if-nez p2, :cond_24

    .line 26
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_25

    :cond_24
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_25

    or-int/lit16 v0, v0, 0x800

    :cond_25
    if-nez p2, :cond_26

    .line 27
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_27

    :cond_26
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_27

    or-int/lit16 v0, v0, 0x1000

    :cond_27
    if-nez p2, :cond_28

    .line 28
    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v1, :cond_29

    :cond_28
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v2, :cond_29

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :cond_29
    if-nez p2, :cond_2a

    .line 29
    iget-object p2, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_2d

    :cond_2a
    iget-object p2, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eq p2, v1, :cond_2d

    if-eqz p2, :cond_2c

    if-nez p3, :cond_2b

    .line 30
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    :cond_2b
    if-eqz p3, :cond_2d

    iget-object p2, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    .line 31
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object p3, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    if-ne p2, p3, :cond_2c

    iget-object p2, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    .line 32
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object p1, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eq p2, p1, :cond_2d

    :cond_2c
    or-int/lit16 v0, v0, 0x400

    :cond_2d
    return v0
.end method

.method public diffPublicOnly(Landroid/content/res/Configuration;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result p1

    return p1
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result p1

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    :try_start_0
    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLayoutDirection()I
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLocales()Landroid/os/LocaleList;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 5
    .line 6
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit16 v0, v0, 0x20f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    .line 16
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    .line 21
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/os/LocaleList;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v1, v0

    .line 28
    mul-int/lit8 v1, v1, 0x1f

    .line 29
    .line 30
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 31
    .line 32
    add-int/2addr v1, v0

    .line 33
    mul-int/lit8 v1, v1, 0x1f

    .line 34
    .line 35
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 36
    .line 37
    add-int/2addr v1, v0

    .line 38
    mul-int/lit8 v1, v1, 0x1f

    .line 39
    .line 40
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 41
    .line 42
    add-int/2addr v1, v0

    .line 43
    mul-int/lit8 v1, v1, 0x1f

    .line 44
    .line 45
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 46
    .line 47
    add-int/2addr v1, v0

    .line 48
    mul-int/lit8 v1, v1, 0x1f

    .line 49
    .line 50
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 51
    .line 52
    add-int/2addr v1, v0

    .line 53
    mul-int/lit8 v1, v1, 0x1f

    .line 54
    .line 55
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 56
    .line 57
    add-int/2addr v1, v0

    .line 58
    mul-int/lit8 v1, v1, 0x1f

    .line 59
    .line 60
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 61
    .line 62
    add-int/2addr v1, v0

    .line 63
    mul-int/lit8 v1, v1, 0x1f

    .line 64
    .line 65
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 66
    .line 67
    add-int/2addr v1, v0

    .line 68
    mul-int/lit8 v1, v1, 0x1f

    .line 69
    .line 70
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 71
    .line 72
    add-int/2addr v1, v0

    .line 73
    mul-int/lit8 v1, v1, 0x1f

    .line 74
    .line 75
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 76
    .line 77
    add-int/2addr v1, v0

    .line 78
    mul-int/lit8 v1, v1, 0x1f

    .line 79
    .line 80
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 81
    .line 82
    add-int/2addr v1, v0

    .line 83
    mul-int/lit8 v1, v1, 0x1f

    .line 84
    .line 85
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 86
    .line 87
    add-int/2addr v1, v0

    .line 88
    mul-int/lit8 v1, v1, 0x1f

    .line 89
    .line 90
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 91
    .line 92
    add-int/2addr v1, v0

    .line 93
    mul-int/lit8 v1, v1, 0x1f

    .line 94
    .line 95
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 96
    .line 97
    add-int/2addr v1, v0

    .line 98
    mul-int/lit8 v1, v1, 0x1f

    .line 99
    .line 100
    iget v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 101
    .line 102
    add-int/2addr v1, v0

    .line 103
    return v1
.end method

.method public isLayoutSizeAtLeast(I)Z
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-lt v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->seq:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    return v1

    .line 11
    :cond_1
    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    .line 12
    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    return v1

    .line 16
    :cond_2
    sub-int/2addr p1, v2

    .line 17
    const/high16 v2, 0x10000

    .line 18
    .line 19
    if-le p1, v2, :cond_3

    .line 20
    .line 21
    return v0

    .line 22
    :cond_3
    if-lez p1, :cond_4

    .line 23
    .line 24
    move v0, v1

    .line 25
    :cond_4
    return v0
.end method

.method public isScreenHdr()Z
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenRound()Z
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0x300

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenWideColorGamut()Z
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    new-array v1, v0, [Ljava/util/Locale;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, v2

    .line 27
    :goto_0
    if-ge v3, v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    aput-object v4, v1, v3

    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x1

    .line 60
    if-ne v0, v1, :cond_1

    .line 61
    .line 62
    move v2, v1

    .line 63
    :cond_1
    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 166
    .line 167
    const/4 v0, 0x0

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Landroid/graphics/Rect;

    .line 173
    .line 174
    iput-object v0, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    iput p1, p0, Landroid/content/res/Configuration;->seq:I

    .line 187
    .line 188
    return-void
.end method

.method public setAppBounds(IIII)V
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setAppBounds(Landroid/graphics/Rect;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/res/Configuration;->setAppBounds(IIII)V

    return-void
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 8
    .line 9
    and-int/lit16 v0, v0, -0xc1

    .line 10
    .line 11
    shl-int/lit8 p1, p1, 0x6

    .line 12
    .line 13
    or-int/2addr p1, v0

    .line 14
    iput p1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 15
    .line 16
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method public setLocales(Landroid/os/LocaleList;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    iput-object p1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2
    .line 3
    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 4
    .line 5
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    .line 6
    .line 7
    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 8
    .line 9
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    .line 10
    .line 11
    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 12
    .line 13
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Locale;

    .line 24
    .line 25
    :goto_0
    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 31
    .line 32
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 33
    .line 34
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 37
    .line 38
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 39
    .line 40
    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 41
    .line 42
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 43
    .line 44
    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 45
    .line 46
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 47
    .line 48
    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 49
    .line 50
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 51
    .line 52
    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 53
    .line 54
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    .line 55
    .line 56
    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 57
    .line 58
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 59
    .line 60
    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 61
    .line 62
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 63
    .line 64
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 65
    .line 66
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 67
    .line 68
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 69
    .line 70
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 71
    .line 72
    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 73
    .line 74
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 75
    .line 76
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 77
    .line 78
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 79
    .line 80
    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 81
    .line 82
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 83
    .line 84
    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 85
    .line 86
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 87
    .line 88
    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 89
    .line 90
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 91
    .line 92
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 93
    .line 94
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 95
    .line 96
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 97
    .line 98
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 99
    .line 100
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 101
    .line 102
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 103
    .line 104
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 105
    .line 106
    iget-object v0, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 109
    .line 110
    .line 111
    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    .line 112
    .line 113
    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 114
    .line 115
    iget p1, p1, Landroid/content/res/Configuration;->seq:I

    .line 116
    .line 117
    iput p1, p0, Landroid/content/res/Configuration;->seq:I

    .line 118
    .line 119
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 7
    .line 8
    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 9
    .line 10
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 18
    .line 19
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 20
    .line 21
    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 22
    .line 23
    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 24
    .line 25
    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 26
    .line 27
    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 28
    .line 29
    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 30
    .line 31
    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 32
    .line 33
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 34
    .line 35
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 36
    .line 37
    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 38
    .line 39
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 40
    .line 41
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 42
    .line 43
    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 44
    .line 45
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 46
    .line 47
    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 48
    .line 49
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 50
    .line 51
    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 52
    .line 53
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 54
    .line 55
    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 56
    .line 57
    iput-object v1, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    .line 58
    .line 59
    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 60
    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    const-string/jumbo v1, "{"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->q(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string/jumbo v3, "mcc"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v3, "?mcc"

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :goto_0
    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string/jumbo v3, "mnc"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const-string v3, "?mnc"

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/os/LocaleList;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const-string v3, " ?localeList"

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    :goto_2
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 84
    .line 85
    and-int/lit16 v3, v3, 0xc0

    .line 86
    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    const/16 v4, 0x40

    .line 90
    .line 91
    if-eq v3, v4, :cond_4

    .line 92
    .line 93
    if-eq v3, v0, :cond_3

    .line 94
    .line 95
    const-string v0, " layoutDir="

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    shr-int/lit8 v0, v3, 0x6

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_3
    const-string v0, " ldrtl"

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    const-string v0, " ldltr"

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    const-string v0, " ?layoutDir"

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :goto_3
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 124
    .line 125
    const-string v3, "dp"

    .line 126
    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    const-string v0, " sw"

    .line 130
    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_6
    const-string v0, " ?swdp"

    .line 144
    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    :goto_4
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 149
    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    const-string v0, " w"

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_7
    const-string v0, " ?wdp"

    .line 167
    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    :goto_5
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 172
    .line 173
    if-eqz v0, :cond_8

    .line 174
    .line 175
    const-string v0, " h"

    .line 176
    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_8
    const-string v0, " ?hdp"

    .line 190
    .line 191
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    :goto_6
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 195
    .line 196
    if-eqz v0, :cond_9

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 202
    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v0, "dpi"

    .line 207
    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_9
    const-string v0, " ?density"

    .line 213
    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    :goto_7
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 218
    .line 219
    and-int/lit8 v0, v0, 0xf

    .line 220
    .line 221
    const/4 v2, 0x4

    .line 222
    const/4 v3, 0x3

    .line 223
    const/4 v4, 0x2

    .line 224
    const/4 v5, 0x1

    .line 225
    if-eqz v0, :cond_e

    .line 226
    .line 227
    if-eq v0, v5, :cond_d

    .line 228
    .line 229
    if-eq v0, v4, :cond_c

    .line 230
    .line 231
    if-eq v0, v3, :cond_b

    .line 232
    .line 233
    if-eq v0, v2, :cond_a

    .line 234
    .line 235
    const-string v0, " layoutSize="

    .line 236
    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 241
    .line 242
    and-int/lit8 v0, v0, 0xf

    .line 243
    .line 244
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_a
    const-string v0, " xlrg"

    .line 249
    .line 250
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_b
    const-string v0, " lrg"

    .line 255
    .line 256
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_c
    const-string v0, " nrml"

    .line 261
    .line 262
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_d
    const-string v0, " smll"

    .line 267
    .line 268
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_e
    const-string v0, " ?lsize"

    .line 273
    .line 274
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    :goto_8
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 278
    .line 279
    and-int/lit8 v0, v0, 0x30

    .line 280
    .line 281
    const/16 v6, 0x20

    .line 282
    .line 283
    const/16 v7, 0x10

    .line 284
    .line 285
    if-eqz v0, :cond_10

    .line 286
    .line 287
    if-eq v0, v7, :cond_11

    .line 288
    .line 289
    if-eq v0, v6, :cond_f

    .line 290
    .line 291
    const-string v0, " layoutLong="

    .line 292
    .line 293
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 297
    .line 298
    and-int/lit8 v0, v0, 0x30

    .line 299
    .line 300
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_f
    const-string v0, " long"

    .line 305
    .line 306
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    goto :goto_9

    .line 310
    :cond_10
    const-string v0, " ?long"

    .line 311
    .line 312
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    :cond_11
    :goto_9
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 316
    .line 317
    and-int/lit8 v0, v0, 0xc

    .line 318
    .line 319
    if-eqz v0, :cond_13

    .line 320
    .line 321
    if-eq v0, v2, :cond_14

    .line 322
    .line 323
    const/16 v8, 0x8

    .line 324
    .line 325
    if-eq v0, v8, :cond_12

    .line 326
    .line 327
    const-string v0, " dynamicRange="

    .line 328
    .line 329
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 333
    .line 334
    and-int/lit8 v0, v0, 0xc

    .line 335
    .line 336
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    goto :goto_a

    .line 340
    :cond_12
    const-string v0, " hdr"

    .line 341
    .line 342
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_13
    const-string v0, " ?ldr"

    .line 347
    .line 348
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    :cond_14
    :goto_a
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 352
    .line 353
    and-int/2addr v0, v3

    .line 354
    if-eqz v0, :cond_16

    .line 355
    .line 356
    if-eq v0, v5, :cond_17

    .line 357
    .line 358
    if-eq v0, v4, :cond_15

    .line 359
    .line 360
    const-string v0, " wideColorGamut="

    .line 361
    .line 362
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 366
    .line 367
    and-int/2addr v0, v3

    .line 368
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    goto :goto_b

    .line 372
    :cond_15
    const-string v0, " widecg"

    .line 373
    .line 374
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    goto :goto_b

    .line 378
    :cond_16
    const-string v0, " ?wideColorGamut"

    .line 379
    .line 380
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    :cond_17
    :goto_b
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 384
    .line 385
    if-eqz v0, :cond_1a

    .line 386
    .line 387
    if-eq v0, v5, :cond_19

    .line 388
    .line 389
    if-eq v0, v4, :cond_18

    .line 390
    .line 391
    const-string v0, " orien="

    .line 392
    .line 393
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 397
    .line 398
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    goto :goto_c

    .line 402
    :cond_18
    const-string v0, " land"

    .line 403
    .line 404
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    goto :goto_c

    .line 408
    :cond_19
    const-string v0, " port"

    .line 409
    .line 410
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    goto :goto_c

    .line 414
    :cond_1a
    const-string v0, " ?orien"

    .line 415
    .line 416
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    :goto_c
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 420
    .line 421
    and-int/lit8 v0, v0, 0xf

    .line 422
    .line 423
    packed-switch v0, :pswitch_data_0

    .line 424
    .line 425
    .line 426
    const-string v0, " uimode="

    .line 427
    .line 428
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 432
    .line 433
    and-int/lit8 v0, v0, 0xf

    .line 434
    .line 435
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    goto :goto_d

    .line 439
    :pswitch_0
    const-string v0, " vrheadset"

    .line 440
    .line 441
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    goto :goto_d

    .line 445
    :pswitch_1
    const-string v0, " watch"

    .line 446
    .line 447
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    goto :goto_d

    .line 451
    :pswitch_2
    const-string v0, " appliance"

    .line 452
    .line 453
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    goto :goto_d

    .line 457
    :pswitch_3
    const-string v0, " television"

    .line 458
    .line 459
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    goto :goto_d

    .line 463
    :pswitch_4
    const-string v0, " car"

    .line 464
    .line 465
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    goto :goto_d

    .line 469
    :pswitch_5
    const-string v0, " desk"

    .line 470
    .line 471
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    goto :goto_d

    .line 475
    :pswitch_6
    const-string v0, " ?uimode"

    .line 476
    .line 477
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    :goto_d
    :pswitch_7
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 481
    .line 482
    and-int/lit8 v0, v0, 0x30

    .line 483
    .line 484
    if-eqz v0, :cond_1c

    .line 485
    .line 486
    if-eq v0, v7, :cond_1d

    .line 487
    .line 488
    if-eq v0, v6, :cond_1b

    .line 489
    .line 490
    const-string v0, " night="

    .line 491
    .line 492
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 496
    .line 497
    and-int/lit8 v0, v0, 0x30

    .line 498
    .line 499
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    goto :goto_e

    .line 503
    :cond_1b
    const-string v0, " night"

    .line 504
    .line 505
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    goto :goto_e

    .line 509
    :cond_1c
    const-string v0, " ?night"

    .line 510
    .line 511
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    :cond_1d
    :goto_e
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 515
    .line 516
    if-eqz v0, :cond_21

    .line 517
    .line 518
    if-eq v0, v5, :cond_20

    .line 519
    .line 520
    if-eq v0, v4, :cond_1f

    .line 521
    .line 522
    if-eq v0, v3, :cond_1e

    .line 523
    .line 524
    const-string v0, " touch="

    .line 525
    .line 526
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 530
    .line 531
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    goto :goto_f

    .line 535
    :cond_1e
    const-string v0, " finger"

    .line 536
    .line 537
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    goto :goto_f

    .line 541
    :cond_1f
    const-string v0, " stylus"

    .line 542
    .line 543
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    goto :goto_f

    .line 547
    :cond_20
    const-string v0, " -touch"

    .line 548
    .line 549
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    goto :goto_f

    .line 553
    :cond_21
    const-string v0, " ?touch"

    .line 554
    .line 555
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    :goto_f
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 559
    .line 560
    if-eqz v0, :cond_25

    .line 561
    .line 562
    if-eq v0, v5, :cond_24

    .line 563
    .line 564
    if-eq v0, v4, :cond_23

    .line 565
    .line 566
    if-eq v0, v3, :cond_22

    .line 567
    .line 568
    const-string v0, " keys="

    .line 569
    .line 570
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 574
    .line 575
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    goto :goto_10

    .line 579
    :cond_22
    const-string v0, " 12key"

    .line 580
    .line 581
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    goto :goto_10

    .line 585
    :cond_23
    const-string v0, " qwerty"

    .line 586
    .line 587
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    goto :goto_10

    .line 591
    :cond_24
    const-string v0, " -keyb"

    .line 592
    .line 593
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    goto :goto_10

    .line 597
    :cond_25
    const-string v0, " ?keyb"

    .line 598
    .line 599
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    :goto_10
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 603
    .line 604
    const-string v6, "/"

    .line 605
    .line 606
    const-string v7, "/h"

    .line 607
    .line 608
    const-string v8, "/v"

    .line 609
    .line 610
    const-string v9, "/?"

    .line 611
    .line 612
    if-eqz v0, :cond_29

    .line 613
    .line 614
    if-eq v0, v5, :cond_28

    .line 615
    .line 616
    if-eq v0, v4, :cond_27

    .line 617
    .line 618
    if-eq v0, v3, :cond_26

    .line 619
    .line 620
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 624
    .line 625
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    goto :goto_11

    .line 629
    :cond_26
    const-string v0, "/s"

    .line 630
    .line 631
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    goto :goto_11

    .line 635
    :cond_27
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    goto :goto_11

    .line 639
    :cond_28
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    goto :goto_11

    .line 643
    :cond_29
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    :goto_11
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 647
    .line 648
    if-eqz v0, :cond_2c

    .line 649
    .line 650
    if-eq v0, v5, :cond_2b

    .line 651
    .line 652
    if-eq v0, v4, :cond_2a

    .line 653
    .line 654
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 658
    .line 659
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    goto :goto_12

    .line 663
    :cond_2a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    goto :goto_12

    .line 667
    :cond_2b
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    goto :goto_12

    .line 671
    :cond_2c
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    :goto_12
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 675
    .line 676
    if-eqz v0, :cond_31

    .line 677
    .line 678
    if-eq v0, v5, :cond_30

    .line 679
    .line 680
    if-eq v0, v4, :cond_2f

    .line 681
    .line 682
    if-eq v0, v3, :cond_2e

    .line 683
    .line 684
    if-eq v0, v2, :cond_2d

    .line 685
    .line 686
    const-string v0, " nav="

    .line 687
    .line 688
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 692
    .line 693
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    goto :goto_13

    .line 697
    :cond_2d
    const-string v0, " wheel"

    .line 698
    .line 699
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    goto :goto_13

    .line 703
    :cond_2e
    const-string v0, " tball"

    .line 704
    .line 705
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    goto :goto_13

    .line 709
    :cond_2f
    const-string v0, " dpad"

    .line 710
    .line 711
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    goto :goto_13

    .line 715
    :cond_30
    const-string v0, " -nav"

    .line 716
    .line 717
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    goto :goto_13

    .line 721
    :cond_31
    const-string v0, " ?nav"

    .line 722
    .line 723
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    :goto_13
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 727
    .line 728
    if-eqz v0, :cond_34

    .line 729
    .line 730
    if-eq v0, v5, :cond_33

    .line 731
    .line 732
    if-eq v0, v4, :cond_32

    .line 733
    .line 734
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 738
    .line 739
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    goto :goto_14

    .line 743
    :cond_32
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    goto :goto_14

    .line 747
    :cond_33
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    goto :goto_14

    .line 751
    :cond_34
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    :goto_14
    iget-object v0, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    .line 755
    .line 756
    if-eqz v0, :cond_35

    .line 757
    .line 758
    const-string v0, " appBounds="

    .line 759
    .line 760
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    iget-object v0, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    .line 764
    .line 765
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    :cond_35
    iget v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 769
    .line 770
    if-eqz v0, :cond_36

    .line 771
    .line 772
    const-string v0, " as."

    .line 773
    .line 774
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    iget v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 778
    .line 779
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    :cond_36
    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 783
    .line 784
    if-eqz v0, :cond_37

    .line 785
    .line 786
    const-string v0, " s."

    .line 787
    .line 788
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 792
    .line 793
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    :cond_37
    const/16 v0, 0x7d

    .line 797
    .line 798
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    return-object v0

    .line 806
    nop

    .line 807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unset()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 6
    .line 7
    return-void
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .locals 6

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 9
    .line 10
    cmpl-float v1, v1, v0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 15
    .line 16
    const/high16 v0, 0x40000000    # 2.0f

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    .line 25
    .line 26
    if-eq v2, v1, :cond_1

    .line 27
    .line 28
    or-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 31
    .line 32
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    .line 37
    .line 38
    if-eq v2, v1, :cond_2

    .line 39
    .line 40
    or-int/lit8 v0, v0, 0x2

    .line 41
    .line 42
    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 43
    .line 44
    :cond_2
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 48
    .line 49
    .line 50
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 59
    .line 60
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    or-int/lit8 v0, v0, 0x4

    .line 69
    .line 70
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 71
    .line 72
    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 73
    .line 74
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 75
    .line 76
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Ljava/util/Locale;

    .line 91
    .line 92
    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 93
    .line 94
    or-int/lit16 v0, v0, 0x2000

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 100
    .line 101
    and-int/lit16 v1, v1, 0xc0

    .line 102
    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 106
    .line 107
    and-int/lit16 v3, v2, 0xc0

    .line 108
    .line 109
    if-eq v1, v3, :cond_4

    .line 110
    .line 111
    and-int/lit16 v2, v2, -0xc1

    .line 112
    .line 113
    or-int/2addr v1, v2

    .line 114
    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 115
    .line 116
    or-int/lit16 v0, v0, 0x2000

    .line 117
    .line 118
    :cond_4
    iget-boolean v1, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 119
    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    iget-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 123
    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    and-int/lit8 v1, v0, 0x4

    .line 127
    .line 128
    if-eqz v1, :cond_6

    .line 129
    .line 130
    :cond_5
    or-int/lit8 v0, v0, 0x4

    .line 131
    .line 132
    const/4 v1, 0x1

    .line 133
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 134
    .line 135
    :cond_6
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 136
    .line 137
    if-eqz v1, :cond_7

    .line 138
    .line 139
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 140
    .line 141
    if-eq v2, v1, :cond_7

    .line 142
    .line 143
    or-int/lit8 v0, v0, 0x8

    .line 144
    .line 145
    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 146
    .line 147
    :cond_7
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 148
    .line 149
    if-eqz v1, :cond_8

    .line 150
    .line 151
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 152
    .line 153
    if-eq v2, v1, :cond_8

    .line 154
    .line 155
    or-int/lit8 v0, v0, 0x10

    .line 156
    .line 157
    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 158
    .line 159
    :cond_8
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 160
    .line 161
    if-eqz v1, :cond_9

    .line 162
    .line 163
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 164
    .line 165
    if-eq v2, v1, :cond_9

    .line 166
    .line 167
    or-int/lit8 v0, v0, 0x20

    .line 168
    .line 169
    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 170
    .line 171
    :cond_9
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 172
    .line 173
    if-eqz v1, :cond_a

    .line 174
    .line 175
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 176
    .line 177
    if-eq v2, v1, :cond_a

    .line 178
    .line 179
    or-int/lit8 v0, v0, 0x20

    .line 180
    .line 181
    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 182
    .line 183
    :cond_a
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    .line 184
    .line 185
    if-eqz v1, :cond_b

    .line 186
    .line 187
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    .line 188
    .line 189
    if-eq v2, v1, :cond_b

    .line 190
    .line 191
    or-int/lit8 v0, v0, 0x40

    .line 192
    .line 193
    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    .line 194
    .line 195
    :cond_b
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 196
    .line 197
    if-eqz v1, :cond_c

    .line 198
    .line 199
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 200
    .line 201
    if-eq v2, v1, :cond_c

    .line 202
    .line 203
    or-int/lit8 v0, v0, 0x20

    .line 204
    .line 205
    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 206
    .line 207
    :cond_c
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 208
    .line 209
    if-eqz v1, :cond_d

    .line 210
    .line 211
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    .line 212
    .line 213
    if-eq v2, v1, :cond_d

    .line 214
    .line 215
    or-int/lit16 v0, v0, 0x80

    .line 216
    .line 217
    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    .line 218
    .line 219
    :cond_d
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 220
    .line 221
    and-int/lit8 v2, v1, 0xf

    .line 222
    .line 223
    if-eqz v2, :cond_e

    .line 224
    .line 225
    and-int/lit8 v2, v1, 0xf

    .line 226
    .line 227
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 228
    .line 229
    and-int/lit8 v4, v3, 0xf

    .line 230
    .line 231
    if-eq v2, v4, :cond_e

    .line 232
    .line 233
    or-int/lit16 v0, v0, 0x100

    .line 234
    .line 235
    and-int/lit8 v2, v3, -0x10

    .line 236
    .line 237
    and-int/lit8 v1, v1, 0xf

    .line 238
    .line 239
    or-int/2addr v1, v2

    .line 240
    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 241
    .line 242
    :cond_e
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 243
    .line 244
    and-int/lit8 v2, v1, 0x30

    .line 245
    .line 246
    if-eqz v2, :cond_f

    .line 247
    .line 248
    and-int/lit8 v2, v1, 0x30

    .line 249
    .line 250
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 251
    .line 252
    and-int/lit8 v4, v3, 0x30

    .line 253
    .line 254
    if-eq v2, v4, :cond_f

    .line 255
    .line 256
    or-int/lit16 v0, v0, 0x100

    .line 257
    .line 258
    and-int/lit8 v2, v3, -0x31

    .line 259
    .line 260
    and-int/lit8 v1, v1, 0x30

    .line 261
    .line 262
    or-int/2addr v1, v2

    .line 263
    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 264
    .line 265
    :cond_f
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 266
    .line 267
    and-int/lit16 v2, v1, 0x300

    .line 268
    .line 269
    if-eqz v2, :cond_10

    .line 270
    .line 271
    and-int/lit16 v2, v1, 0x300

    .line 272
    .line 273
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 274
    .line 275
    and-int/lit16 v4, v3, 0x300

    .line 276
    .line 277
    if-eq v2, v4, :cond_10

    .line 278
    .line 279
    or-int/lit16 v0, v0, 0x100

    .line 280
    .line 281
    and-int/lit16 v2, v3, -0x301

    .line 282
    .line 283
    and-int/lit16 v1, v1, 0x300

    .line 284
    .line 285
    or-int/2addr v1, v2

    .line 286
    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 287
    .line 288
    :cond_10
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 289
    .line 290
    const/high16 v2, 0x10000000

    .line 291
    .line 292
    and-int v3, v1, v2

    .line 293
    .line 294
    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 295
    .line 296
    and-int v5, v4, v2

    .line 297
    .line 298
    if-eq v3, v5, :cond_11

    .line 299
    .line 300
    if-eqz v1, :cond_11

    .line 301
    .line 302
    or-int/lit16 v0, v0, 0x100

    .line 303
    .line 304
    const v3, -0x10000001

    .line 305
    .line 306
    .line 307
    and-int/2addr v3, v4

    .line 308
    and-int/2addr v1, v2

    .line 309
    or-int/2addr v1, v3

    .line 310
    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 311
    .line 312
    :cond_11
    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 313
    .line 314
    and-int/lit8 v2, v1, 0x3

    .line 315
    .line 316
    if-eqz v2, :cond_12

    .line 317
    .line 318
    and-int/lit8 v2, v1, 0x3

    .line 319
    .line 320
    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 321
    .line 322
    and-int/lit8 v4, v3, 0x3

    .line 323
    .line 324
    if-eq v2, v4, :cond_12

    .line 325
    .line 326
    or-int/lit16 v0, v0, 0x4000

    .line 327
    .line 328
    and-int/lit8 v2, v3, -0x4

    .line 329
    .line 330
    and-int/lit8 v1, v1, 0x3

    .line 331
    .line 332
    or-int/2addr v1, v2

    .line 333
    iput v1, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 334
    .line 335
    :cond_12
    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 336
    .line 337
    and-int/lit8 v2, v1, 0xc

    .line 338
    .line 339
    if-eqz v2, :cond_13

    .line 340
    .line 341
    and-int/lit8 v2, v1, 0xc

    .line 342
    .line 343
    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 344
    .line 345
    and-int/lit8 v4, v3, 0xc

    .line 346
    .line 347
    if-eq v2, v4, :cond_13

    .line 348
    .line 349
    or-int/lit16 v0, v0, 0x4000

    .line 350
    .line 351
    and-int/lit8 v2, v3, -0xd

    .line 352
    .line 353
    and-int/lit8 v1, v1, 0xc

    .line 354
    .line 355
    or-int/2addr v1, v2

    .line 356
    iput v1, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 357
    .line 358
    :cond_13
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 359
    .line 360
    if-eqz v1, :cond_15

    .line 361
    .line 362
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 363
    .line 364
    if-eq v2, v1, :cond_15

    .line 365
    .line 366
    or-int/lit16 v0, v0, 0x200

    .line 367
    .line 368
    and-int/lit8 v3, v1, 0xf

    .line 369
    .line 370
    if-eqz v3, :cond_14

    .line 371
    .line 372
    and-int/lit8 v2, v2, -0x10

    .line 373
    .line 374
    and-int/lit8 v1, v1, 0xf

    .line 375
    .line 376
    or-int/2addr v1, v2

    .line 377
    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 378
    .line 379
    :cond_14
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 380
    .line 381
    and-int/lit8 v2, v1, 0x30

    .line 382
    .line 383
    if-eqz v2, :cond_15

    .line 384
    .line 385
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 386
    .line 387
    and-int/lit8 v2, v2, -0x31

    .line 388
    .line 389
    and-int/lit8 v1, v1, 0x30

    .line 390
    .line 391
    or-int/2addr v1, v2

    .line 392
    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 393
    .line 394
    :cond_15
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 395
    .line 396
    if-eqz v1, :cond_16

    .line 397
    .line 398
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 399
    .line 400
    if-eq v2, v1, :cond_16

    .line 401
    .line 402
    or-int/lit16 v0, v0, 0x400

    .line 403
    .line 404
    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 405
    .line 406
    :cond_16
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 407
    .line 408
    if-eqz v1, :cond_17

    .line 409
    .line 410
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 411
    .line 412
    if-eq v2, v1, :cond_17

    .line 413
    .line 414
    or-int/lit16 v0, v0, 0x400

    .line 415
    .line 416
    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 417
    .line 418
    :cond_17
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 419
    .line 420
    if-eqz v1, :cond_18

    .line 421
    .line 422
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 423
    .line 424
    if-eq v2, v1, :cond_18

    .line 425
    .line 426
    or-int/lit16 v0, v0, 0x800

    .line 427
    .line 428
    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 429
    .line 430
    :cond_18
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 431
    .line 432
    if-eqz v1, :cond_19

    .line 433
    .line 434
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 435
    .line 436
    if-eq v2, v1, :cond_19

    .line 437
    .line 438
    or-int/lit16 v0, v0, 0x1000

    .line 439
    .line 440
    iput v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 441
    .line 442
    :cond_19
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 443
    .line 444
    if-eqz v1, :cond_1a

    .line 445
    .line 446
    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 447
    .line 448
    :cond_1a
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 449
    .line 450
    if-eqz v1, :cond_1b

    .line 451
    .line 452
    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 453
    .line 454
    :cond_1b
    iget v1, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 455
    .line 456
    if-eqz v1, :cond_1c

    .line 457
    .line 458
    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 459
    .line 460
    :cond_1c
    iget-object v1, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    .line 461
    .line 462
    if-eqz v1, :cond_1d

    .line 463
    .line 464
    iget-object v2, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    .line 465
    .line 466
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    if-nez v1, :cond_1d

    .line 471
    .line 472
    or-int/lit16 v0, v0, 0x400

    .line 473
    .line 474
    iget-object v1, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    .line 475
    .line 476
    invoke-virtual {p0, v1}, Landroid/content/res/Configuration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 477
    .line 478
    .line 479
    :cond_1d
    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    .line 480
    .line 481
    if-eqz v1, :cond_1e

    .line 482
    .line 483
    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 484
    .line 485
    if-eq v1, v2, :cond_1e

    .line 486
    .line 487
    const/high16 v2, -0x80000000

    .line 488
    .line 489
    or-int/2addr v0, v2

    .line 490
    iput v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 491
    .line 492
    :cond_1e
    iget p1, p1, Landroid/content/res/Configuration;->seq:I

    .line 493
    .line 494
    if-eqz p1, :cond_1f

    .line 495
    .line 496
    iput p1, p0, Landroid/content/res/Configuration;->seq:I

    .line 497
    .line 498
    :cond_1f
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget p2, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/content/res/Configuration;->mcc:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/content/res/Configuration;->mnc:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/os/LocaleList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    move v1, v0

    .line 30
    :goto_0
    if-ge v1, p2, :cond_0

    .line 31
    .line 32
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-boolean p2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    const/4 p2, 0x1

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    .line 59
    .line 60
    :goto_1
    iget p2, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    .line 64
    .line 65
    iget p2, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    .line 69
    .line 70
    iget p2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    .line 74
    .line 75
    iget p2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    .line 79
    .line 80
    iget p2, p0, Landroid/content/res/Configuration;->navigation:I

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    .line 84
    .line 85
    iget p2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    .line 89
    .line 90
    iget p2, p0, Landroid/content/res/Configuration;->orientation:I

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    .line 94
    .line 95
    iget p2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    .line 99
    .line 100
    iget p2, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    .line 104
    .line 105
    iget p2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    .line 109
    .line 110
    iget p2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    .line 114
    .line 115
    iget p2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    .line 119
    .line 120
    iget p2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    .line 124
    .line 125
    iget p2, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    .line 129
    .line 130
    iget p2, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    .line 134
    .line 135
    iget p2, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    .line 139
    .line 140
    iget p2, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    .line 144
    .line 145
    iget-object p2, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    iget p2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    .line 154
    .line 155
    iget p2, p0, Landroid/content/res/Configuration;->seq:I

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    .line 159
    .line 160
    return-void
.end method
