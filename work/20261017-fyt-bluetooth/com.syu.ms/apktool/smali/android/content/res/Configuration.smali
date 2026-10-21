.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

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

.field public static final ROTATION_UNDEFINED:I = -0x1

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

.field public static final UI_MODE_TYPE_UNDEFINED:I


# instance fields
.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public densityDpi:I

.field public fontScale:F

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;

.field public mcc:I

.field public mnc:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public rotation:I

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

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 2
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

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

.method private static getScreenLayoutNoDirection(I)I
    .locals 0

    and-int/lit16 p0, p0, -0xc1

    return p0
.end method

.method public static needNewResources(II)Z
    .locals 1

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

.method public static reduceScreenLayout(III)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1d6

    if-ge p1, v2, :cond_0

    move v4, v0

    goto :goto_3

    :cond_0
    const/16 v2, 0x3c0

    const/4 v3, 0x3

    if-lt p1, v2, :cond_1

    const/16 v2, 0x2d0

    if-lt p2, v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/16 v2, 0x280

    if-lt p1, v2, :cond_2

    const/16 v2, 0x1e0

    if-lt p2, v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    const/16 v4, 0x141

    if-gt p2, v4, :cond_4

    const/16 v4, 0x23a

    if-le p1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v1

    :goto_2
    mul-int/2addr p1, v3

    .line 1
    div-int/lit8 p1, p1, 0x5

    sub-int/2addr p2, v1

    if-lt p1, p2, :cond_5

    move v0, v1

    :cond_5
    move v1, v2

    :goto_3
    if-nez v0, :cond_6

    and-int/lit8 p0, p0, -0x31

    or-int/lit8 p0, p0, 0x10

    :cond_6
    if-eqz v4, :cond_7

    const/high16 p1, 0x10000000

    or-int/2addr p0, p1

    :cond_7
    and-int/lit8 p1, p0, 0xf

    if-ge v1, p1, :cond_8

    and-int/lit8 p0, p0, -0x10

    or-int/2addr p0, v1

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


# virtual methods
.method public compareTo(Landroid/content/res/Configuration;)I
    .locals 4

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
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_4

    .line 7
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_8

    return v1

    .line 8
    :cond_4
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v1, :cond_5

    return v3

    .line 9
    :cond_5
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    iget v0, p0, Landroid/content/res/Configuration;->rotation:I

    iget v1, p1, Landroid/content/res/Configuration;->rotation:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int/2addr v0, p1

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
    .locals 3

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    .line 3
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 4
    :cond_2
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    or-int/lit8 v0, v0, 0x4

    or-int/lit16 v0, v0, 0x2000

    .line 5
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    if-eqz v1, :cond_5

    .line 6
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_5

    or-int/lit16 v0, v0, 0x2000

    .line 7
    :cond_5
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v1, :cond_6

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v1, :cond_6

    or-int/lit8 v0, v0, 0x8

    .line 8
    :cond_6
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_7

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v1, :cond_7

    or-int/lit8 v0, v0, 0x10

    .line 9
    :cond_7
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v1, :cond_8

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v1, :cond_8

    or-int/lit8 v0, v0, 0x20

    .line 10
    :cond_8
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v1, :cond_9

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v1, :cond_9

    or-int/lit8 v0, v0, 0x20

    .line 11
    :cond_9
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v1, :cond_a

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v1, :cond_a

    or-int/lit8 v0, v0, 0x40

    .line 12
    :cond_a
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v1, :cond_b

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v1, :cond_b

    or-int/lit8 v0, v0, 0x20

    .line 13
    :cond_b
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_c

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v1, :cond_c

    or-int/lit16 v0, v0, 0x80

    .line 14
    :cond_c
    iget v1, p1, Landroid/content/res/Configuration;->rotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    iget v2, p0, Landroid/content/res/Configuration;->rotation:I

    if-eq v2, v1, :cond_e

    const-string/jumbo v1, "ro.rk.soc"

    const-string/jumbo v2, "unknown"

    .line 15
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rk3288"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 16
    sget-boolean v1, Landroid/os/Build;->USE_LCDC_COMPOSER:Z

    if-eqz v1, :cond_e

    .line 17
    :cond_d
    iget v1, p1, Landroid/content/res/Configuration;->rotation:I

    iget v2, p0, Landroid/content/res/Configuration;->rotation:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    or-int/lit16 v0, v0, 0x80

    .line 18
    :cond_e
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v1

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eq v1, v2, :cond_f

    or-int/lit16 v0, v0, 0x100

    .line 19
    :cond_f
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_10

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v1, :cond_10

    or-int/lit16 v0, v0, 0x200

    .line 20
    :cond_10
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_11

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v1, :cond_11

    or-int/lit16 v0, v0, 0x400

    .line 21
    :cond_11
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_12

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v1, :cond_12

    or-int/lit16 v0, v0, 0x400

    .line 22
    :cond_12
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_13

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v1, :cond_13

    or-int/lit16 v0, v0, 0x800

    .line 23
    :cond_13
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz p1, :cond_14

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, p1, :cond_14

    or-int/lit16 v0, v0, 0x1000

    :cond_14
    return v0
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

    .line 1
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

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 10
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 11
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 12
    iget v0, p0, Landroid/content/res/Configuration;->rotation:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 13
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 14
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 15
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 16
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 17
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 18
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int/2addr v1, v0

    return v1
.end method

.method public isLayoutSizeAtLeast(I)Z
    .locals 2

    .line 1
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

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->seq:I

    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    .line 2
    :cond_1
    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    if-nez v2, :cond_2

    return v1

    :cond_2
    sub-int/2addr p1, v2

    const/high16 v2, 0x10000

    if-le p1, v2, :cond_3

    return v0

    :cond_3
    if-lez p1, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->rotation:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/content/res/Configuration;->seq:I

    return-void
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 2
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, -0xc1

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p1, v0

    iput p1, p0, Landroid/content/res/Configuration;->screenLayout:I

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 3
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 4
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 6
    :cond_0
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 7
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 8
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 9
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 10
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 11
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 12
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 13
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 14
    iget v0, p1, Landroid/content/res/Configuration;->rotation:I

    iput v0, p0, Landroid/content/res/Configuration;->rotation:I

    .line 15
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 16
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 17
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 18
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 19
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 20
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 21
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 22
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 23
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 24
    iget p1, p1, Landroid/content/res/Configuration;->seq:I

    iput p1, p0, Landroid/content/res/Configuration;->seq:I

    return-void
.end method

.method public setToDefaults()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 4
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 5
    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 6
    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 7
    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 8
    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 9
    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 10
    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 11
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Landroid/content/res/Configuration;->rotation:I

    .line 13
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 14
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 15
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 16
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 17
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 18
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 19
    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "{"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "mcc"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v3, "?mcc"

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :goto_0
    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "mnc"

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "?mnc"

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :goto_1
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v3, " ?locale"

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :goto_2
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    if-eqz v3, :cond_5

    const/16 v4, 0x40

    if-eq v3, v4, :cond_4

    if-eq v3, v1, :cond_3

    const-string v1, " layoutDir="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, v3, 0x6

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const-string v1, " ldrtl"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string v1, " ldltr"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v1, " ?layoutDir"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :goto_3
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v3, "dp"

    if-eqz v1, :cond_6

    const-string v1, " sw"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    const-string v1, " ?swdp"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :goto_4
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_7

    const-string v1, " w"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_7
    const-string v1, " ?wdp"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :goto_5
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_8

    const-string v1, " h"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_8
    const-string v1, " ?hdp"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :goto_6
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_9

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_9
    const-string v1, " ?density"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :goto_7
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_e

    if-eq v1, v5, :cond_d

    if-eq v1, v4, :cond_c

    if-eq v1, v3, :cond_b

    if-eq v1, v2, :cond_a

    const-string v1, " layoutSize="

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_a
    const-string v1, " xlrg"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_b
    const-string v1, " lrg"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_c
    const-string v1, " nrml"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_d
    const-string v1, " smll"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_e
    const-string v1, " ?lsize"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :goto_8
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    const/16 v6, 0x20

    const/16 v7, 0x10

    if-eqz v1, :cond_10

    if-eq v1, v7, :cond_11

    if-eq v1, v6, :cond_f

    const-string v1, " layoutLong="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_f
    const-string v1, " long"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_10
    const-string v1, " ?long"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_11
    :goto_9
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_14

    if-eq v1, v5, :cond_13

    if-eq v1, v4, :cond_12

    const-string v1, " orien="

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_12
    const-string v1, " land"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_13
    const-string v1, " port"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_14
    const-string v1, " ?orien"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :goto_a
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_19

    if-eq v1, v5, :cond_1a

    if-eq v1, v4, :cond_18

    if-eq v1, v3, :cond_17

    if-eq v1, v2, :cond_16

    const/4 v8, 0x5

    if-eq v1, v8, :cond_15

    const-string v1, " uimode="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_15
    const-string v1, " appliance"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_16
    const-string v1, " television"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_17
    const-string v1, " car"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_18
    const-string v1, " desk"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_19
    const-string v1, " ?uimode"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_1a
    :goto_b
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-eqz v1, :cond_1c

    if-eq v1, v7, :cond_1d

    if-eq v1, v6, :cond_1b

    const-string v1, " night="

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_1b
    const-string v1, " night"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_1c
    const-string v1, " ?night"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_1d
    :goto_c
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v1, :cond_21

    if-eq v1, v5, :cond_20

    if-eq v1, v4, :cond_1f

    if-eq v1, v3, :cond_1e

    const-string v1, " touch="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1e
    const-string v1, " finger"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1f
    const-string v1, " stylus"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_20
    const-string v1, " -touch"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_21
    const-string v1, " ?touch"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :goto_d
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_25

    if-eq v1, v5, :cond_24

    if-eq v1, v4, :cond_23

    if-eq v1, v3, :cond_22

    const-string v1, " keys="

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_22
    const-string v1, " 12key"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_23
    const-string v1, " qwerty"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_24
    const-string v1, " -keyb"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_25
    const-string v1, " ?keyb"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :goto_e
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    const-string v6, "/"

    const-string v7, "/h"

    const-string v8, "/v"

    const-string v9, "/?"

    if-eqz v1, :cond_29

    if-eq v1, v5, :cond_28

    if-eq v1, v4, :cond_27

    if-eq v1, v3, :cond_26

    .line 77
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_26
    const-string v1, "/s"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 79
    :cond_27
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 80
    :cond_28
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 81
    :cond_29
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :goto_f
    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v1, :cond_2c

    if-eq v1, v5, :cond_2b

    if-eq v1, v4, :cond_2a

    .line 83
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 84
    :cond_2a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 85
    :cond_2b
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 86
    :cond_2c
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :goto_10
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    if-eqz v1, :cond_31

    if-eq v1, v5, :cond_30

    if-eq v1, v4, :cond_2f

    if-eq v1, v3, :cond_2e

    if-eq v1, v2, :cond_2d

    const-string v1, " nav="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_2d
    const-string v1, " wheel"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_2e
    const-string v1, " tball"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_2f
    const-string v1, " dpad"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_30
    const-string v1, " -nav"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_31
    const-string v1, " ?nav"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :goto_11
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v1, :cond_34

    if-eq v1, v5, :cond_33

    if-eq v1, v4, :cond_32

    .line 95
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 96
    :cond_32
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 97
    :cond_33
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 98
    :cond_34
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :goto_12
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_35

    const-string v1, " s."

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_35
    const/16 v1, 0x7d

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .locals 4

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    .line 2
    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v0, :cond_1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v0, :cond_1

    or-int/lit8 v1, v1, 0x1

    .line 4
    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 5
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v0, :cond_2

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v0, :cond_2

    or-int/lit8 v1, v1, 0x2

    .line 6
    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 7
    :cond_2
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_5

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    or-int/lit8 v0, v1, 0x4

    .line 8
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    or-int/lit16 v0, v0, 0x2000

    .line 9
    invoke-virtual {p0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    move v1, v0

    .line 10
    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    if-eqz v0, :cond_6

    .line 11
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0xc0

    if-eq v0, v3, :cond_6

    and-int/lit16 v2, v2, -0xc1

    or-int/2addr v0, v2

    .line 12
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    or-int/lit16 v1, v1, 0x2000

    .line 13
    :cond_6
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_7

    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_8

    :cond_7
    or-int/lit8 v1, v1, 0x4

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 15
    :cond_8
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v0, :cond_9

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v0, :cond_9

    or-int/lit8 v1, v1, 0x8

    .line 16
    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 17
    :cond_9
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v0, :cond_a

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v0, :cond_a

    or-int/lit8 v1, v1, 0x10

    .line 18
    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 19
    :cond_a
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v0, :cond_b

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v0, :cond_b

    or-int/lit8 v1, v1, 0x20

    .line 20
    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 21
    :cond_b
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v0, :cond_c

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v0, :cond_c

    or-int/lit8 v1, v1, 0x20

    .line 22
    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 23
    :cond_c
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v0, :cond_d

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v0, :cond_d

    or-int/lit8 v1, v1, 0x40

    .line 24
    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 25
    :cond_d
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v0, :cond_e

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v0, :cond_e

    or-int/lit8 v1, v1, 0x20

    .line 26
    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 27
    :cond_e
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v0, :cond_f

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v0, :cond_f

    or-int/lit16 v1, v1, 0x80

    .line 28
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 29
    :cond_f
    iget v0, p1, Landroid/content/res/Configuration;->rotation:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_12

    iget v2, p0, Landroid/content/res/Configuration;->rotation:I

    if-eq v2, v0, :cond_12

    const-string/jumbo v0, "ro.rk.soc"

    const-string/jumbo v2, "unknown"

    .line 30
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "rk3288"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 31
    sget-boolean v0, Landroid/os/Build;->USE_LCDC_COMPOSER:Z

    if-eqz v0, :cond_11

    .line 32
    :cond_10
    iget v0, p1, Landroid/content/res/Configuration;->rotation:I

    iget v2, p0, Landroid/content/res/Configuration;->rotation:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    or-int/lit16 v0, v1, 0x80

    move v1, v0

    .line 33
    :cond_11
    iget v0, p1, Landroid/content/res/Configuration;->rotation:I

    iput v0, p0, Landroid/content/res/Configuration;->rotation:I

    .line 34
    :cond_12
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eq v0, v2, :cond_14

    or-int/lit16 v1, v1, 0x100

    .line 35
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v0, 0xc0

    if-nez v2, :cond_13

    .line 36
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    or-int/2addr v0, v2

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_2

    .line 37
    :cond_13
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 38
    :cond_14
    :goto_2
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v0, :cond_16

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v0, :cond_16

    or-int/lit16 v1, v1, 0x200

    and-int/lit8 v3, v0, 0xf

    if-eqz v3, :cond_15

    and-int/lit8 v2, v2, -0x10

    and-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v2

    .line 39
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 40
    :cond_15
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v0, 0x30

    if-eqz v2, :cond_16

    .line 41
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    and-int/lit8 v0, v0, 0x30

    or-int/2addr v0, v2

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 42
    :cond_16
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v0, :cond_17

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v0, :cond_17

    or-int/lit16 v1, v1, 0x400

    .line 43
    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 44
    :cond_17
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v0, :cond_18

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v0, :cond_18

    or-int/lit16 v1, v1, 0x400

    .line 45
    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 46
    :cond_18
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v0, :cond_19

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v0, :cond_19

    or-int/lit16 v1, v1, 0x800

    .line 47
    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 48
    :cond_19
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_1a

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v0, :cond_1a

    or-int/lit16 v1, v1, 0x1000

    .line 49
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 50
    :cond_1a
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v0, :cond_1b

    .line 51
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 52
    :cond_1b
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v0, :cond_1c

    .line 53
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 54
    :cond_1c
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v0, :cond_1d

    .line 55
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 56
    :cond_1d
    iget p1, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz p1, :cond_1e

    .line 57
    iput p1, p0, Landroid/content/res/Configuration;->seq:I

    :cond_1e
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2
    iget p2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    :goto_0
    iget-boolean p2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    :goto_1
    iget p2, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget p2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget p2, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget p2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget p2, p0, Landroid/content/res/Configuration;->rotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget p2, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget p2, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget p2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget p2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget p2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget p2, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget p2, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget p2, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget p2, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget p2, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
