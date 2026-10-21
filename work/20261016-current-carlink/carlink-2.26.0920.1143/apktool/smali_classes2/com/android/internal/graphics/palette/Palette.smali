.class public final Lcom/android/internal/graphics/palette/Palette;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/Palette$Filter;,
        Lcom/android/internal/graphics/palette/Palette$Builder;,
        Lcom/android/internal/graphics/palette/Palette$Swatch;,
        Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;
    }
.end annotation


# static fields
.field static final DEFAULT_CALCULATE_NUMBER_COLORS:I = 0x10

.field static final DEFAULT_FILTER:Lcom/android/internal/graphics/palette/Palette$Filter;

.field static final DEFAULT_RESIZE_BITMAP_AREA:I = 0x3100

.field static final LOG_TAG:Ljava/lang/String; = "Palette"

.field static final LOG_TIMINGS:Z = false

.field static final MIN_CONTRAST_BODY_TEXT:F = 4.5f

.field static final MIN_CONTRAST_TITLE_TEXT:F = 3.0f


# instance fields
.field private final mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

.field private final mSelectedSwatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/graphics/palette/Target;",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Target;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsedColors:Landroid/util/SparseBooleanArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/graphics/palette/Palette$1;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Palette$1;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/Palette;->DEFAULT_FILTER:Lcom/android/internal/graphics/palette/Palette$Filter;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Target;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    .line 7
    .line 8
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 14
    .line 15
    new-instance p1, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette;->mSelectedSwatches:Ljava/util/Map;

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/android/internal/graphics/palette/Palette;->findDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 27
    .line 28
    return-void
.end method

.method private static copyHslValues(Lcom/android/internal/graphics/palette/Palette$Swatch;)[F
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 10
    .line 11
    .line 12
    return-object v1
.end method

.method private findDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, -0x80000000

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v0, :cond_1

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-le v5, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    move-object v2, v4

    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object v2
.end method

.method public static from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static from(Ljava/util/List;)Lcom/android/internal/graphics/palette/Palette;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;)",
            "Lcom/android/internal/graphics/palette/Palette;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Landroid/graphics/Bitmap;I)Lcom/android/internal/graphics/palette/Palette;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object p0

    return-object p0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;ILcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/graphics/palette/Palette;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate(Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/graphics/palette/Palette;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate(Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method private generateScore(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)F
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getSaturationWeight()F

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    cmpl-float v3, v3, v4

    .line 22
    .line 23
    const/high16 v5, 0x3f800000    # 1.0f

    .line 24
    .line 25
    if-lez v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getSaturationWeight()F

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    aget v2, v0, v2

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getTargetSaturation()F

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    sub-float/2addr v2, v6

    .line 38
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-float v2, v5, v2

    .line 43
    .line 44
    mul-float/2addr v2, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v2, v4

    .line 47
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getLightnessWeight()F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    cmpl-float v3, v3, v4

    .line 52
    .line 53
    if-lez v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getLightnessWeight()F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v6, 0x2

    .line 60
    aget v0, v0, v6

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getTargetLightness()F

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    sub-float/2addr v0, v6

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sub-float/2addr v5, v0

    .line 72
    mul-float/2addr v5, v3

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move v5, v4

    .line 75
    :goto_2
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getPopulationWeight()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    cmpl-float v0, v0, v4

    .line 80
    .line 81
    if-lez v0, :cond_3

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getPopulationWeight()F

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    int-to-float p1, p1

    .line 92
    int-to-float v0, v1

    .line 93
    div-float/2addr p1, v0

    .line 94
    mul-float v4, p1, p2

    .line 95
    .line 96
    :cond_3
    add-float/2addr v2, v5

    .line 97
    add-float/2addr v2, v4

    .line 98
    return v2
.end method

.method private generateScoredTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/internal/graphics/palette/Palette;->getMaxScoredSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Target;->isExclusive()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object v0
.end method

.method private getMaxScoredSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_2

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 19
    .line 20
    invoke-direct {p0, v4, p1}, Lcom/android/internal/graphics/palette/Palette;->shouldBeScoredForTarget(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, v4, p1}, Lcom/android/internal/graphics/palette/Palette;->generateScore(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)F

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    cmpl-float v6, v5, v1

    .line 33
    .line 34
    if-lez v6, :cond_1

    .line 35
    .line 36
    :cond_0
    move-object v2, v4

    .line 37
    move v1, v5

    .line 38
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-object v2
.end method

.method private shouldBeScoredForTarget(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    aget v2, v0, v1

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMinimumSaturation()F

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    cmpl-float v2, v2, v3

    .line 13
    .line 14
    if-ltz v2, :cond_0

    .line 15
    .line 16
    aget v2, v0, v1

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMaximumSaturation()F

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    cmpg-float v2, v2, v3

    .line 23
    .line 24
    if-gtz v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    aget v3, v0, v2

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMinimumLightness()F

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    cmpl-float v3, v3, v4

    .line 34
    .line 35
    if-ltz v3, :cond_0

    .line 36
    .line 37
    aget v0, v0, v2

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMaximumLightness()F

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    cmpg-float p2, v0, p2

    .line 44
    .line 45
    if-gtz p2, :cond_0

    .line 46
    .line 47
    iget-object p2, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v1, 0x0

    .line 61
    :goto_0
    return v1
.end method


# virtual methods
.method public generate()V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/graphics/palette/Target;

    .line 5
    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Target;->normalizeWeights()V

    .line 6
    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/android/internal/graphics/palette/Palette;->generateScoredTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    :cond_0
    return p2
.end method

.method public getDarkMutedColor(I)I
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result p1

    return p1
.end method

.method public getDarkMutedSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getDarkVibrantColor(I)I
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result p1

    return p1
.end method

.method public getDarkVibrantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getDominantColor(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result p1

    :cond_0
    return p1
.end method

.method public getDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    return-object v0
.end method

.method public getLightMutedColor(I)I
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result p1

    return p1
.end method

.method public getLightMutedSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getLightVibrantColor(I)I
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result p1

    return p1
.end method

.method public getLightVibrantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getMutedColor(I)I
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result p1

    return p1
.end method

.method public getMutedSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/graphics/palette/Palette$Swatch;

    return-object p1
.end method

.method public getSwatches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Target;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVibrantColor(I)I
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result p1

    return p1
.end method

.method public getVibrantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method
