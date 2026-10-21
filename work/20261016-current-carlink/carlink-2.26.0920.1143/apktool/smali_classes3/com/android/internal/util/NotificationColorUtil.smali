.class public Lcom/android/internal/util/NotificationColorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationColorUtil"

.field private static sInstance:Lcom/android/internal/util/NotificationColorUtil;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mGrayscaleBitmapCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGrayscaleIconMaxSize:I

.field private final mImageUtils:Lcom/android/internal/util/ImageUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/internal/util/ImageUtils;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/internal/util/ImageUtils;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    .line 10
    .line 11
    new-instance v0, Ljava/util/WeakHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const v0, 0x1050005

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    .line 30
    .line 31
    return-void
.end method

.method public static calculateContrast(II)D
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide p0

    return-wide p0
.end method

.method public static calculateLuminance(I)D
    .locals 2

    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static changeColorLightness(II)I
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    aget-wide v1, v0, p0

    .line 10
    .line 11
    int-to-double v3, p1

    .line 12
    add-double/2addr v1, v3

    .line 13
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 14
    .line 15
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    aput-wide v5, v0, p0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    aget-wide v7, v0, p0

    .line 29
    .line 30
    const/4 p0, 0x2

    .line 31
    aget-wide v9, v0, p0

    .line 32
    .line 33
    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public static clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 14

    .line 1
    instance-of v0, p0, Landroid/text/Spanned;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    check-cast p0, Landroid/text/Spanned;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-class v1, Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    array-length v3, v0

    .line 28
    :goto_0
    if-ge v2, v3, :cond_5

    .line 29
    .line 30
    aget-object v4, v0, v2

    .line 31
    .line 32
    instance-of v5, v4, Landroid/text/style/CharacterStyle;

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    move-object v5, v4

    .line 37
    check-cast v5, Landroid/text/style/CharacterStyle;

    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move-object v5, v4

    .line 45
    :goto_1
    instance-of v6, v5, Landroid/text/style/TextAppearanceSpan;

    .line 46
    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    move-object v6, v5

    .line 50
    check-cast v6, Landroid/text/style/TextAppearanceSpan;

    .line 51
    .line 52
    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    if-eqz v7, :cond_3

    .line 57
    .line 58
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    .line 59
    .line 60
    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    const/4 v12, 0x0

    .line 73
    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    move-object v8, v5

    .line 78
    invoke-direct/range {v8 .. v13}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_1
    instance-of v6, v5, Landroid/text/style/ForegroundColorSpan;

    .line 83
    .line 84
    if-nez v6, :cond_4

    .line 85
    .line 86
    instance-of v5, v5, Landroid/text/style/BackgroundColorSpan;

    .line 87
    .line 88
    if-eqz v5, :cond_2

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_2
    move-object v5, v4

    .line 92
    :cond_3
    :goto_2
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    return-object v1

    .line 111
    :cond_6
    return-object p0
.end method

.method public static compositeColors(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeColors(II)I

    move-result p0

    return p0
.end method

.method private static contrastChange(III)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {p0, p2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v1, 0x0

    .line 13
    aput-object p0, v0, v1

    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 p1, 0x1

    .line 24
    aput-object p0, v0, p1

    .line 25
    .line 26
    const-string p0, "from %.2f:1 to %.2f:1"

    .line 27
    .line 28
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static ensureLargeTextContrast(IIZ)I
    .locals 3

    .line 1
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    :goto_0
    return p0
.end method

.method public static ensureTextBackgroundColor(III)I
    .locals 3

    .line 1
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, p2, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    .line 9
    .line 10
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static ensureTextContrast(IIZ)I
    .locals 3

    .line 1
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    :goto_0
    return p0
.end method

.method public static ensureTextContrastOnBlack(I)I
    .locals 4

    const/4 v0, 0x1

    const-wide/high16 v1, 0x4028000000000000L    # 12.0

    const/high16 v3, -0x1000000

    invoke-static {p0, v3, v0, v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result p0

    return p0
.end method

.method public static findAlphaToMeetContrast(IID)I
    .locals 8

    .line 1
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmpl-double v0, v0, p2

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/16 v3, 0xff

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    :goto_0
    const/16 v5, 0xf

    .line 30
    .line 31
    if-ge v4, v5, :cond_2

    .line 32
    .line 33
    sub-int v5, v3, v0

    .line 34
    .line 35
    if-lez v5, :cond_2

    .line 36
    .line 37
    add-int v5, v0, v3

    .line 38
    .line 39
    div-int/lit8 v5, v5, 0x2

    .line 40
    .line 41
    invoke-static {v5, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-static {v6, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    cmpl-double v6, v6, p2

    .line 50
    .line 51
    if-lez v6, :cond_1

    .line 52
    .line 53
    move v3, v5

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v0, v5

    .line 56
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-static {v3, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    return p0
.end method

.method public static findContrastColor(IIZD)I
    .locals 21

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    move/from16 v0, p0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move/from16 v0, p1

    .line 7
    .line 8
    :goto_0
    if-eqz p2, :cond_1

    .line 9
    .line 10
    move/from16 v1, p1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    move/from16 v1, p0

    .line 14
    .line 15
    :goto_1
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    cmpl-double v2, v2, p3

    .line 20
    .line 21
    if-ltz v2, :cond_2

    .line 22
    .line 23
    return p0

    .line 24
    :cond_2
    const/4 v2, 0x3

    .line 25
    new-array v2, v2, [D

    .line 26
    .line 27
    if-eqz p2, :cond_3

    .line 28
    .line 29
    move v3, v0

    .line 30
    goto :goto_2

    .line 31
    :cond_3
    move v3, v1

    .line 32
    :goto_2
    invoke-static {v3, v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    aget-wide v4, v2, v3

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    aget-wide v13, v2, v6

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    aget-wide v15, v2, v6

    .line 43
    .line 44
    const-wide/16 v6, 0x0

    .line 45
    .line 46
    move-wide/from16 v17, v6

    .line 47
    .line 48
    :goto_3
    const/16 v2, 0xf

    .line 49
    .line 50
    if-ge v3, v2, :cond_6

    .line 51
    .line 52
    sub-double v6, v4, v17

    .line 53
    .line 54
    const-wide v8, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    cmpl-double v2, v6, v8

    .line 60
    .line 61
    if-lez v2, :cond_6

    .line 62
    .line 63
    add-double v6, v17, v4

    .line 64
    .line 65
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 66
    .line 67
    div-double v19, v6, v8

    .line 68
    .line 69
    if-eqz p2, :cond_4

    .line 70
    .line 71
    move-wide/from16 v7, v19

    .line 72
    .line 73
    move-wide v9, v13

    .line 74
    move-wide v11, v15

    .line 75
    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    move-wide/from16 v7, v19

    .line 81
    .line 82
    move-wide v9, v13

    .line 83
    move-wide v11, v15

    .line 84
    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    :goto_4
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    cmpl-double v2, v6, p3

    .line 93
    .line 94
    if-lez v2, :cond_5

    .line 95
    .line 96
    move-wide/from16 v17, v19

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_5
    move-wide/from16 v4, v19

    .line 100
    .line 101
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_6
    move-wide/from16 v7, v17

    .line 105
    .line 106
    move-wide v9, v13

    .line 107
    move-wide v11, v15

    .line 108
    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    return v0
.end method

.method public static findContrastColorAgainstDark(IIZD)I
    .locals 9

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    move v0, p0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    move v0, p1

    .line 6
    :goto_0
    if-eqz p2, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    move p1, p0

    .line 10
    :goto_1
    invoke-static {v0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    cmpl-double v1, v1, p3

    .line 15
    .line 16
    if-ltz v1, :cond_2

    .line 17
    .line 18
    return p0

    .line 19
    :cond_2
    const/4 p0, 0x3

    .line 20
    new-array p0, p0, [F

    .line 21
    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    move v1, v0

    .line 25
    goto :goto_2

    .line 26
    :cond_3
    move v1, p1

    .line 27
    :goto_2
    invoke-static {v1, p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToHSL(I[F)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    aget v2, p0, v1

    .line 32
    .line 33
    const/high16 v3, 0x3f800000    # 1.0f

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_3
    const/16 v5, 0xf

    .line 37
    .line 38
    if-ge v4, v5, :cond_6

    .line 39
    .line 40
    sub-float v5, v3, v2

    .line 41
    .line 42
    float-to-double v5, v5

    .line 43
    const-wide v7, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    cmpl-double v5, v5, v7

    .line 49
    .line 50
    if-lez v5, :cond_6

    .line 51
    .line 52
    add-float v5, v2, v3

    .line 53
    .line 54
    const/high16 v6, 0x40000000    # 2.0f

    .line 55
    .line 56
    div-float/2addr v5, v6

    .line 57
    aput v5, p0, v1

    .line 58
    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    goto :goto_4

    .line 66
    :cond_4
    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    :goto_4
    invoke-static {v0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    cmpl-double v6, v6, p3

    .line 75
    .line 76
    if-lez v6, :cond_5

    .line 77
    .line 78
    move v3, v5

    .line 79
    goto :goto_5

    .line 80
    :cond_5
    move v2, v5

    .line 81
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_6
    if-eqz p2, :cond_7

    .line 85
    .line 86
    move p1, v0

    .line 87
    :cond_7
    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/internal/util/NotificationColorUtil;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/internal/util/NotificationColorUtil;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public static getShiftedColor(II)I
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    aget-wide v1, v0, p0

    .line 10
    .line 11
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    .line 12
    .line 13
    cmpl-double v3, v1, v3

    .line 14
    .line 15
    if-ltz v3, :cond_0

    .line 16
    .line 17
    int-to-double v3, p1

    .line 18
    sub-double/2addr v1, v3

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    aput-wide v1, v0, p0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    int-to-double v3, p1

    .line 29
    add-double/2addr v1, v3

    .line 30
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 31
    .line 32
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    aput-wide v1, v0, p0

    .line 37
    .line 38
    :goto_0
    aget-wide v3, v0, p0

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    aget-wide v5, v0, p0

    .line 42
    .line 43
    const/4 p0, 0x2

    .line 44
    aget-wide v7, v0, p0

    .line 45
    .line 46
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public static isColorLight(I)Z
    .locals 4

    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processColor(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    rsub-int v1, v1, 0xff

    .line 10
    .line 11
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    rsub-int v2, v2, 0xff

    .line 16
    .line 17
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    rsub-int p1, p1, 0xff

    .line 22
    .line 23
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method private processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getColors()[I

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    array-length v4, v1

    .line 14
    if-ge v2, v4, :cond_2

    .line 15
    .line 16
    aget v4, v1, v2

    .line 17
    .line 18
    invoke-static {v4}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    array-length v3, v1

    .line 27
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_0
    aget v3, v1, v2

    .line 32
    .line 33
    invoke-direct {p0, v3}, Lcom/android/internal/util/NotificationColorUtil;->processColor(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    aput v3, v1, v2

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    if-eqz v3, :cond_3

    .line 44
    .line 45
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getStates()[[I

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {v8, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    move-object v4, v2

    .line 73
    invoke-direct/range {v4 .. v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 74
    .line 75
    .line 76
    return-object v2

    .line 77
    :cond_3
    return-object p1
.end method

.method public static resolveActionBarColor(Landroid/content/Context;I)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const p1, 0x10600e9

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x7

    .line 12
    invoke-static {p1, p0}, Lcom/android/internal/util/NotificationColorUtil;->getShiftedColor(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static resolveAmbientColor(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextContrastOnBlack(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x10600ec

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static resolveContrastColor(Landroid/content/Context;II)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result p0

    return p0
.end method

.method public static resolveContrastColor(Landroid/content/Context;IIZ)I
    .locals 1

    .line 2
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    const v0, 0x10600e9

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 4
    invoke-static {p1, p0, p3}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result p0

    .line 5
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextContrast(IIZ)I

    move-result p0

    return p0
.end method

.method public static resolvePrimaryColor(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->shouldUseDark(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const p1, 0x10600ef

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    const p1, 0x10600ee

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public static resolveSecondaryColor(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->shouldUseDark(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const p1, 0x10600f2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    const p1, 0x10600f1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public static satisfiesTextContrast(II)Z
    .locals 2

    invoke-static {p1, p0}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide p0

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static shouldUseDark(I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v2, v4

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move v2, v0

    :cond_2
    return v2
.end method


# virtual methods
.method public invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8

    .line 1
    instance-of v0, p1, Landroid/text/Spanned;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    check-cast p1, Landroid/text/Spanned;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-class v1, Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    array-length v3, v0

    .line 28
    :goto_0
    if-ge v2, v3, :cond_3

    .line 29
    .line 30
    aget-object v4, v0, v2

    .line 31
    .line 32
    instance-of v5, v4, Landroid/text/style/CharacterStyle;

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    move-object v5, v4

    .line 37
    check-cast v5, Landroid/text/style/CharacterStyle;

    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move-object v5, v4

    .line 45
    :goto_1
    instance-of v6, v5, Landroid/text/style/TextAppearanceSpan;

    .line 46
    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    move-object v6, v4

    .line 50
    check-cast v6, Landroid/text/style/TextAppearanceSpan;

    .line 51
    .line 52
    invoke-direct {p0, v6}, Lcom/android/internal/util/NotificationColorUtil;->processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    if-eq v6, v5, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    instance-of v6, v5, Landroid/text/style/ForegroundColorSpan;

    .line 60
    .line 61
    if-eqz v6, :cond_2

    .line 62
    .line 63
    check-cast v5, Landroid/text/style/ForegroundColorSpan;

    .line 64
    .line 65
    invoke-virtual {v5}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    .line 70
    .line 71
    invoke-direct {p0, v5}, Lcom/android/internal/util/NotificationColorUtil;->processColor(I)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-direct {v6, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move-object v6, v4

    .line 80
    :goto_2
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v1, v6, v5, v7, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    return-object v1

    .line 99
    :cond_4
    return-object p1
.end method

.method public isGrayscaleIcon(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 28
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p1, "Drawable not found: "

    const-string v1, "NotificationColorUtil"

    .line 29
    invoke-static {p1, p2, v1}, Landroid/app/m;->p(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return v0
.end method

.method public isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 25
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return v0

    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    move-result p1

    return p1

    .line 27
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public isGrayscaleIcon(Landroid/graphics/Bitmap;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    if-gt v0, v1, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 6
    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    iget-object v1, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    monitor-enter v1

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/ImageUtils;->isGrayscale(Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    .line 11
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    monitor-enter v0

    .line 13
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 16
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 18
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 19
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 20
    :cond_2
    instance-of v1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_4

    .line 21
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    if-lez v1, :cond_3

    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 24
    :cond_4
    instance-of p1, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method
