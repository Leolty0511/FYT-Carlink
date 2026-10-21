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

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 2
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 25
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v0, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 22
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 23
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 24
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 8

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-nez v0, :cond_10

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v5, :cond_10

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v5, :cond_0

    goto/16 :goto_5

    .line 5
    :cond_0
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p3, p1, 0x800

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    const/16 p3, 0x2a

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v0

    move p3, v1

    goto :goto_0

    :cond_2
    move p3, v3

    move v5, p3

    :goto_0
    const/high16 v6, 0x80000

    and-int v7, p1, v6

    if-eqz v7, :cond_4

    if-nez p4, :cond_3

    or-int/lit8 p3, p3, 0x22

    :cond_3
    move v5, v0

    :cond_4
    and-int/lit16 v7, p1, 0x1000

    if-eqz v7, :cond_5

    or-int/lit8 p3, p3, 0x2

    goto :goto_1

    :cond_5
    move v0, v5

    :goto_1
    if-eqz p4, :cond_6

    and-int/lit8 p3, p3, -0x3

    :cond_6
    and-int/lit8 p4, p2, 0xf

    const/4 v5, 0x3

    if-eq p4, v5, :cond_9

    if-eq p4, v4, :cond_7

    goto :goto_3

    :cond_7
    and-int/lit8 p4, p3, 0x20

    if-eqz p4, :cond_8

    move v1, v3

    :cond_8
    and-int p4, p1, v6

    if-eqz p4, :cond_b

    goto :goto_2

    :cond_9
    and-int/lit8 p4, p3, 0x8

    if-eqz p4, :cond_a

    move v1, v3

    :cond_a
    and-int/lit16 p4, p1, 0x800

    if-eqz p4, :cond_b

    :goto_2
    or-int/lit8 v1, v1, 0x4

    :cond_b
    :goto_3
    const/high16 p4, 0x10000000

    and-int/2addr p2, p4

    if-eqz p2, :cond_d

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_c

    and-int/lit8 v1, v1, -0x9

    goto :goto_4

    :cond_c
    if-nez v0, :cond_e

    or-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_d
    and-int/lit8 p2, v1, -0x9

    or-int/lit8 v1, p2, 0x4

    :cond_e
    :goto_4
    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_f

    .line 6
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 7
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 8
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_a

    :cond_f
    const/16 p1, 0xa0

    .line 9
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 10
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float p1, p1

    const/high16 p2, 0x43200000    # 160.0f

    div-float/2addr p1, p2

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v2, p1

    .line 11
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    or-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    :goto_5
    if-eqz v0, :cond_11

    goto :goto_6

    .line 12
    :cond_11
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    :goto_6
    if-nez v0, :cond_12

    .line 13
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 14
    :cond_12
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz p2, :cond_13

    goto :goto_7

    :cond_13
    move p2, v0

    :goto_7
    if-ge p2, v0, :cond_14

    move p2, v0

    .line 15
    :cond_14
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const/16 v5, 0x140

    if-le v0, v5, :cond_15

    :goto_8
    move v1, v4

    goto :goto_9

    :cond_15
    if-eqz p1, :cond_16

    if-le p3, p1, :cond_16

    const/16 v1, 0xa

    goto :goto_9

    :cond_16
    if-lt p2, p3, :cond_17

    goto :goto_8

    :cond_17
    if-eqz p4, :cond_18

    goto :goto_9

    :cond_18
    move v1, v3

    .line 16
    :goto_9
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 17
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 18
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 19
    :goto_a
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 30
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
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    if-ge v0, v1, :cond_0

    move v3, v0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    move v3, v1

    :goto_0
    const/high16 v4, 0x43a00000    # 320.0f

    .line 3
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr p0, v4

    float-to-int p0, p0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3fe3bbbc

    cmpl-float v5, v2, v3

    if-lez v5, :cond_1

    move v2, v3

    :cond_1
    int-to-float v3, p0

    mul-float/2addr v3, v2

    add-float/2addr v3, v4

    float-to-int v2, v3

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v6, v2

    move v2, p0

    move p0, v6

    :goto_1
    int-to-float v0, v0

    int-to-float v3, p0

    div-float/2addr v0, v3

    int-to-float v1, v1

    int-to-float v3, v2

    div-float/2addr v1, v3

    cmpg-float v3, v0, v1

    if-gez v3, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v1

    if-gez v3, :cond_4

    move v0, v1

    :cond_4
    if-eqz p1, :cond_5

    .line 4
    iput p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 5
    iput v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_5
    return v0
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 1

    .line 1
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

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 3
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 4
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 5
    iget v0, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 6
    :cond_0
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 7
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget p1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 9
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    :cond_1
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 7
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 8
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 9
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 10
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 11
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 12
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

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

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :try_start_0
    check-cast p1, Landroid/content/res/CompatibilityInfo;

    .line 2
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v3, p1, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v2, v3, :cond_1

    return v1

    .line 3
    :cond_1
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v3, p1, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v3, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget p1, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v0

    :catch_0
    return v1
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .line 1
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
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isScalingRequired()Z
    .locals 2

    .line 1
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

.method public neverSupportsScreen()Z
    .locals 1

    .line 1
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

    .line 1
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
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " resizing"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " never-compat"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " always-compat"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, "}"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
