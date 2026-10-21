.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_COMPAT_RES:I = 0x10

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 7
    .line 8
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 26
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1, v1}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 23
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 24
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 25
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5
    :goto_0
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_11

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v4, :cond_11

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v4, :cond_1

    goto/16 :goto_6

    .line 6
    :cond_1
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p3, p1, 0x800

    const/4 v1, 0x1

    const/16 v4, 0x8

    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    const/16 v2, 0x2a

    move p3, v1

    goto :goto_1

    :cond_2
    move p3, v1

    move v2, v4

    goto :goto_1

    :cond_3
    move p3, v2

    :goto_1
    const/high16 v5, 0x80000

    and-int v6, p1, v5

    if-eqz v6, :cond_5

    if-nez p4, :cond_4

    or-int/lit8 v2, v2, 0x22

    :cond_4
    move p3, v1

    :cond_5
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_6

    or-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_6
    move v1, p3

    :goto_2
    if-eqz p4, :cond_7

    and-int/lit8 v2, v2, -0x3

    :cond_7
    or-int/lit8 p3, v0, 0x8

    and-int/lit8 p4, p2, 0xf

    const/4 v0, 0x3

    const/4 v4, 0x4

    if-eq p4, v0, :cond_a

    if-eq p4, v4, :cond_8

    goto :goto_4

    :cond_8
    and-int/lit8 p4, v2, 0x20

    if-eqz p4, :cond_9

    and-int/lit8 p3, p3, -0x9

    :cond_9
    and-int p4, p1, v5

    if-eqz p4, :cond_c

    goto :goto_3

    :cond_a
    and-int/lit8 p4, v2, 0x8

    if-eqz p4, :cond_b

    and-int/lit8 p3, p3, -0x9

    :cond_b
    and-int/lit16 p4, p1, 0x800

    if-eqz p4, :cond_c

    :goto_3
    or-int/lit8 p3, p3, 0x4

    :cond_c
    :goto_4
    const/high16 p4, 0x10000000

    and-int/2addr p2, p4

    if-eqz p2, :cond_e

    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_d

    and-int/lit8 p3, p3, -0x9

    goto :goto_5

    :cond_d
    if-nez v1, :cond_f

    or-int/lit8 p3, p3, 0x2

    goto :goto_5

    :cond_e
    and-int/lit8 p2, p3, -0x9

    or-int/lit8 p3, p2, 0x4

    :cond_f
    :goto_5
    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_10

    .line 7
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 8
    iput v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 9
    iput v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_b

    :cond_10
    const/16 p1, 0xa0

    .line 10
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 11
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float p1, p1

    const/high16 p2, 0x43200000    # 160.0f

    div-float/2addr p1, p2

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v3, p1

    .line 12
    iput v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    or-int/lit8 p3, p3, 0x1

    goto :goto_b

    :cond_11
    :goto_6
    if-eqz v1, :cond_12

    goto :goto_7

    .line 13
    :cond_12
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    :goto_7
    if-nez v1, :cond_13

    .line 14
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 15
    :cond_13
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz p2, :cond_14

    goto :goto_8

    :cond_14
    move p2, v1

    :goto_8
    if-ge p2, v1, :cond_15

    move p2, v1

    .line 16
    :cond_15
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const/16 v2, 0x140

    if-le v1, v2, :cond_16

    :goto_9
    or-int/lit8 v0, v0, 0x4

    goto :goto_a

    :cond_16
    if-eqz p1, :cond_17

    if-le p3, p1, :cond_17

    or-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_17
    if-lt p2, p3, :cond_18

    goto :goto_9

    :cond_18
    if-eqz p4, :cond_19

    or-int/lit8 v0, v0, 0x8

    .line 17
    :cond_19
    :goto_a
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 18
    iput v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 19
    iput v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    move p3, v0

    .line 20
    :goto_b
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 7

    .line 1
    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 2
    .line 3
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    move v3, v0

    .line 8
    move v2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v2, v0

    .line 11
    move v3, v1

    .line 12
    :goto_0
    const/high16 v4, 0x43a00000    # 320.0f

    .line 13
    .line 14
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 15
    .line 16
    mul-float/2addr p0, v4

    .line 17
    const/high16 v4, 0x3f000000    # 0.5f

    .line 18
    .line 19
    add-float/2addr p0, v4

    .line 20
    float-to-int p0, p0

    .line 21
    int-to-float v2, v2

    .line 22
    int-to-float v3, v3

    .line 23
    div-float/2addr v2, v3

    .line 24
    const v3, 0x3fe3bbbc

    .line 25
    .line 26
    .line 27
    cmpl-float v5, v2, v3

    .line 28
    .line 29
    if-lez v5, :cond_1

    .line 30
    .line 31
    move v2, v3

    .line 32
    :cond_1
    int-to-float v3, p0

    .line 33
    mul-float/2addr v3, v2

    .line 34
    add-float/2addr v3, v4

    .line 35
    float-to-int v2, v3

    .line 36
    if-ge v0, v1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v6, v2

    .line 40
    move v2, p0

    .line 41
    move p0, v6

    .line 42
    :goto_1
    int-to-float v0, v0

    .line 43
    int-to-float v3, p0

    .line 44
    div-float/2addr v0, v3

    .line 45
    int-to-float v1, v1

    .line 46
    int-to-float v3, v2

    .line 47
    div-float/2addr v1, v3

    .line 48
    cmpg-float v3, v0, v1

    .line 49
    .line 50
    if-gez v3, :cond_3

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move v0, v1

    .line 54
    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 55
    .line 56
    cmpg-float v3, v0, v1

    .line 57
    .line 58
    if-gez v3, :cond_4

    .line 59
    .line 60
    move v0, v1

    .line 61
    :cond_4
    if-eqz p1, :cond_5

    .line 62
    .line 63
    iput p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 64
    .line 65
    iput v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 66
    .line 67
    :cond_5
    return v0
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x10

    .line 10
    .line 11
    or-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    iput v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 14
    .line 15
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 16
    .line 17
    iput v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 18
    .line 19
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 20
    .line 21
    iput v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 22
    .line 23
    iget v0, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 24
    .line 25
    iput v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 26
    .line 27
    :cond_0
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget p1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 36
    .line 37
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 38
    .line 39
    int-to-float v0, v0

    .line 40
    mul-float/2addr v0, p1

    .line 41
    const/high16 p1, 0x3f000000    # 0.5f

    .line 42
    .line 43
    add-float/2addr v0, p1

    .line 44
    float-to-int p1, v0

    .line 45
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 12
    .line 13
    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 14
    .line 15
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 16
    .line 17
    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 26
    .line 27
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    .line 28
    .line 29
    mul-float/2addr v1, v0

    .line 30
    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 31
    .line 32
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 33
    .line 34
    int-to-float v1, v1

    .line 35
    mul-float/2addr v1, v0

    .line 36
    const/high16 v2, 0x3f000000    # 0.5f

    .line 37
    .line 38
    add-float/2addr v1, v2

    .line 39
    float-to-int v1, v1

    .line 40
    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 41
    .line 42
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    .line 43
    .line 44
    mul-float/2addr v1, v0

    .line 45
    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 46
    .line 47
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    .line 48
    .line 49
    mul-float/2addr v1, v0

    .line 50
    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 51
    .line 52
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    .line 53
    .line 54
    mul-float/2addr v1, v0

    .line 55
    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 56
    .line 57
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 58
    .line 59
    int-to-float v1, v1

    .line 60
    mul-float/2addr v1, v0

    .line 61
    add-float/2addr v1, v2

    .line 62
    float-to-int v1, v1

    .line 63
    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 64
    .line 65
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 66
    .line 67
    int-to-float v1, v1

    .line 68
    mul-float/2addr v1, v0

    .line 69
    add-float/2addr v1, v2

    .line 70
    float-to-int v0, v1

    .line 71
    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    :try_start_0
    check-cast p1, Landroid/content/res/CompatibilityInfo;

    .line 7
    .line 8
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 9
    .line 10
    iget v3, p1, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 11
    .line 12
    if-eq v2, v3, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 16
    .line 17
    iget v3, p1, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 18
    .line 19
    if-eq v2, v3, :cond_2

    .line 20
    .line 21
    return v1

    .line 22
    :cond_2
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 23
    .line 24
    iget v3, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 25
    .line 26
    cmpl-float v2, v2, v3

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 32
    .line 33
    iget p1, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    cmpl-float p1, v2, p1

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    return v1

    .line 40
    :cond_4
    return v0

    .line 41
    :catch_0
    return v1
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    .line 8
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, v0

    .line 20
    mul-int/lit8 v1, v1, 0x1f

    .line 21
    .line 22
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/2addr v0, v1

    .line 29
    return v0
.end method

.method public isScalingRequired()Z
    .locals 2

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public needsCompatResources()Z
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public neverSupportsScreen()Z
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsScreen()Z
    .locals 1

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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
    move-result-object v0

    .line 10
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "dpi"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string v1, " "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string/jumbo v1, "x"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    const-string v1, " resizing"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    const-string v1, " never-compat"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    const-string v1, " always-compat"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    :cond_3
    const-string/jumbo v1, "}"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
