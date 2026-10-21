.class public Lcom/android/internal/colorextraction/types/Tonal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/colorextraction/types/ExtractionType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;,
        Lcom/android/internal/colorextraction/types/Tonal$ColorRange;,
        Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FIT_WEIGHT_H:F = 1.0f

.field private static final FIT_WEIGHT_L:F = 10.0f

.field private static final FIT_WEIGHT_S:F = 1.0f

.field public static final MAIN_COLOR_DARK:I = -0xdededf

.field public static final MAIN_COLOR_LIGHT:I = -0x1f1f20

.field public static final SECONDARY_COLOR_DARK:I = -0x1000000

.field public static final SECONDARY_COLOR_LIGHT:I = -0x616162

.field private static final TAG:Ljava/lang/String; = "Tonal"


# instance fields
.field private final mBlacklistedColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$ColorRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

.field private mTmpHSL:[F

.field private final mTonalPalettes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [F

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    .line 8
    .line 9
    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getTonalPalettes()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getBlacklistedColors()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const p0, -0x1f1f20

    goto :goto_1

    :cond_1
    const p0, -0xdededf

    :goto_1
    if-eqz v0, :cond_2

    const v1, -0x616162

    goto :goto_2

    :cond_2
    const/high16 v1, -0x1000000

    .line 5
    :goto_2
    invoke-virtual {p1, p0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    return-void
.end method

.method private applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 2
    invoke-static {p1, p3}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 3
    invoke-static {p1, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    return-void
.end method

.method private static bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    .line 6
    .line 7
    array-length v4, v3

    .line 8
    if-ge v2, v4, :cond_1

    .line 9
    .line 10
    aget v3, v3, v2

    .line 11
    .line 12
    sub-float v3, p1, v3

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/high16 v4, 0x3f800000    # 1.0f

    .line 19
    .line 20
    mul-float/2addr v3, v4

    .line 21
    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    .line 22
    .line 23
    aget v5, v5, v2

    .line 24
    .line 25
    sub-float v5, p2, v5

    .line 26
    .line 27
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    mul-float/2addr v5, v4

    .line 32
    add-float/2addr v5, v3

    .line 33
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    .line 34
    .line 35
    aget v3, v3, v2

    .line 36
    .line 37
    sub-float v3, p3, v3

    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/high16 v4, 0x41200000    # 10.0f

    .line 44
    .line 45
    mul-float/2addr v3, v4

    .line 46
    add-float/2addr v3, v5

    .line 47
    cmpg-float v4, v3, v1

    .line 48
    .line 49
    if-gez v4, :cond_0

    .line 50
    .line 51
    move v0, v2

    .line 52
    move v1, v3

    .line 53
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return v0
.end method

.method private findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .locals 8

    .line 1
    const v0, 0x3d4ccccd    # 0.05f

    .line 2
    .line 3
    .line 4
    cmpg-float p2, p2, v0

    .line 5
    .line 6
    if-gez p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v0, 0x0

    .line 18
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, p2, :cond_8

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 30
    .line 31
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 32
    .line 33
    cmpl-float v4, p1, v4

    .line 34
    .line 35
    if-ltz v4, :cond_1

    .line 36
    .line 37
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    .line 38
    .line 39
    cmpg-float v4, p1, v4

    .line 40
    .line 41
    if-gtz v4, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    .line 45
    .line 46
    const/high16 v5, 0x3f800000    # 1.0f

    .line 47
    .line 48
    cmpl-float v6, v4, v5

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    if-lez v6, :cond_2

    .line 52
    .line 53
    cmpl-float v6, p1, v7

    .line 54
    .line 55
    if-ltz v6, :cond_2

    .line 56
    .line 57
    invoke-static {v4}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    cmpg-float v4, p1, v4

    .line 62
    .line 63
    if-gtz v4, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 67
    .line 68
    cmpg-float v6, v4, v7

    .line 69
    .line 70
    if-gez v6, :cond_3

    .line 71
    .line 72
    invoke-static {v4}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    cmpl-float v4, p1, v4

    .line 77
    .line 78
    if-ltz v4, :cond_3

    .line 79
    .line 80
    cmpg-float v4, p1, v5

    .line 81
    .line 82
    if-gtz v4, :cond_3

    .line 83
    .line 84
    :goto_1
    move-object v0, v3

    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :cond_3
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 88
    .line 89
    cmpg-float v6, p1, v4

    .line 90
    .line 91
    if-gtz v6, :cond_4

    .line 92
    .line 93
    sub-float v6, v4, p1

    .line 94
    .line 95
    cmpg-float v6, v6, v1

    .line 96
    .line 97
    if-gez v6, :cond_4

    .line 98
    .line 99
    sub-float/2addr v4, p1

    .line 100
    move-object v0, v3

    .line 101
    move v1, v4

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    .line 104
    .line 105
    cmpl-float v6, p1, v4

    .line 106
    .line 107
    if-ltz v6, :cond_5

    .line 108
    .line 109
    sub-float v6, p1, v4

    .line 110
    .line 111
    cmpg-float v6, v6, v1

    .line 112
    .line 113
    if-gez v6, :cond_5

    .line 114
    .line 115
    sub-float v0, p1, v4

    .line 116
    .line 117
    :goto_2
    move v1, v0

    .line 118
    move-object v0, v3

    .line 119
    goto :goto_3

    .line 120
    :cond_5
    cmpl-float v5, v4, v5

    .line 121
    .line 122
    if-lez v5, :cond_6

    .line 123
    .line 124
    invoke-static {v4}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    cmpl-float v4, p1, v4

    .line 129
    .line 130
    if-ltz v4, :cond_6

    .line 131
    .line 132
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    .line 133
    .line 134
    invoke-static {v4}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    sub-float v4, p1, v4

    .line 139
    .line 140
    cmpg-float v4, v4, v1

    .line 141
    .line 142
    if-gez v4, :cond_6

    .line 143
    .line 144
    iget v0, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    .line 145
    .line 146
    invoke-static {v0}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    sub-float v0, p1, v0

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 154
    .line 155
    cmpg-float v5, v4, v7

    .line 156
    .line 157
    if-gez v5, :cond_7

    .line 158
    .line 159
    invoke-static {v4}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    cmpg-float v4, p1, v4

    .line 164
    .line 165
    if-gtz v4, :cond_7

    .line 166
    .line 167
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 168
    .line 169
    invoke-static {v4}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    sub-float/2addr v4, p1

    .line 174
    cmpg-float v4, v4, v1

    .line 175
    .line 176
    if-gez v4, :cond_7

    .line 177
    .line 178
    iget v0, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 179
    .line 180
    invoke-static {v0}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    sub-float/2addr v0, p1

    .line 185
    goto :goto_2

    .line 186
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_8
    :goto_4
    return-object v0
.end method

.method private static fit([FFIFF)[F
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    aget p2, p0, p2

    .line 5
    .line 6
    sub-float/2addr p1, p2

    .line 7
    const/4 p2, 0x0

    .line 8
    :goto_0
    array-length v1, p0

    .line 9
    if-ge p2, v1, :cond_0

    .line 10
    .line 11
    aget v1, p0, p2

    .line 12
    .line 13
    add-float/2addr v1, p1

    .line 14
    invoke-static {v1, p3, p4}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    aput v1, v0, p2

    .line 19
    .line 20
    add-int/lit8 p2, p2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v0
.end method

.method private static fract(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr p0, v0

    return p0
.end method

.method private getColorInt(I[F[F[F)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    .line 2
    .line 3
    aget p2, p2, p1

    .line 4
    .line 5
    invoke-static {p2}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/high16 v1, 0x43b40000    # 360.0f

    .line 10
    .line 11
    mul-float/2addr p2, v1

    .line 12
    const/4 v1, 0x0

    .line 13
    aput p2, v0, v1

    .line 14
    .line 15
    iget-object p2, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aget p3, p3, p1

    .line 19
    .line 20
    aput p3, p2, v0

    .line 21
    .line 22
    const/4 p3, 0x2

    .line 23
    aget p1, p4, p1

    .line 24
    .line 25
    aput p1, p2, p3

    .line 26
    .line 27
    invoke-static {p2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method private isBlacklisted([F)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    const/4 v2, 0x0

    .line 10
    if-ltz v0, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;

    .line 19
    .line 20
    aget v2, p1, v2

    .line 21
    .line 22
    aget v4, p1, v1

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    aget v5, p1, v5

    .line 26
    .line 27
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->containsColor(FFF)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    return v1

    .line 34
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return v2
.end method

.method private runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    and-int/lit8 v3, p1, 0x1

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    move v3, v4

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v3, v0

    .line 25
    :goto_0
    and-int/lit8 p1, p1, 0x4

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    move p1, v4

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move p1, v0

    .line 32
    :goto_1
    if-nez v2, :cond_3

    .line 33
    .line 34
    return v0

    .line 35
    :cond_3
    const/4 v5, 0x3

    .line 36
    new-array v5, v5, [F

    .line 37
    .line 38
    move v6, v0

    .line 39
    :goto_2
    if-ge v6, v2, :cond_5

    .line 40
    .line 41
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    check-cast v7, Landroid/graphics/Color;

    .line 46
    .line 47
    invoke-virtual {v7}, Landroid/graphics/Color;->toArgb()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    invoke-static {v9, v10, v8, v5}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 64
    .line 65
    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    invoke-direct {p0, v5}, Lcom/android/internal/colorextraction/types/Tonal;->isBlacklisted([F)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-nez v8, :cond_4

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    const/4 v7, 0x0

    .line 79
    :cond_6
    :goto_3
    if-nez v7, :cond_7

    .line 80
    .line 81
    return v0

    .line 82
    :cond_7
    invoke-virtual {v7}, Landroid/graphics/Color;->toArgb()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-static {v1, v2, p1, v5}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 99
    .line 100
    .line 101
    aget p1, v5, v0

    .line 102
    .line 103
    const/high16 v1, 0x43b40000    # 360.0f

    .line 104
    .line 105
    div-float/2addr p1, v1

    .line 106
    aput p1, v5, v0

    .line 107
    .line 108
    aget v1, v5, v4

    .line 109
    .line 110
    invoke-direct {p0, p1, v1}, Lcom/android/internal/colorextraction/types/Tonal;->findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string v1, "Tonal"

    .line 115
    .line 116
    if-nez p1, :cond_8

    .line 117
    .line 118
    const-string p1, "Could not find a tonal palette!"

    .line 119
    .line 120
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    return v0

    .line 124
    :cond_8
    aget v2, v5, v0

    .line 125
    .line 126
    aget v6, v5, v4

    .line 127
    .line 128
    const/4 v7, 0x2

    .line 129
    aget v8, v5, v7

    .line 130
    .line 131
    invoke-static {p1, v2, v6, v8}, Lcom/android/internal/colorextraction/types/Tonal;->bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    const/4 v6, -0x1

    .line 136
    if-ne v2, v6, :cond_9

    .line 137
    .line 138
    const-string p1, "Could not find best fit!"

    .line 139
    .line 140
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    return v0

    .line 144
    :cond_9
    iget-object v6, p1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    .line 145
    .line 146
    aget v0, v5, v0

    .line 147
    .line 148
    const/high16 v8, -0x800000    # Float.NEGATIVE_INFINITY

    .line 149
    .line 150
    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 151
    .line 152
    invoke-static {v6, v0, v2, v8, v9}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v6, p1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    .line 157
    .line 158
    aget v8, v5, v4

    .line 159
    .line 160
    const/4 v9, 0x0

    .line 161
    const/high16 v10, 0x3f800000    # 1.0f

    .line 162
    .line 163
    invoke-static {v6, v8, v2, v9, v10}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    iget-object p1, p1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    .line 168
    .line 169
    aget v5, v5, v7

    .line 170
    .line 171
    invoke-static {p1, v5, v2, v9, v10}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v8, "Tonal Palette - index: "

    .line 178
    .line 179
    const-string v9, ". Main color: "

    .line 180
    .line 181
    invoke-static {v8, v2, v9}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-direct {p0, v2, v0, v6, p1}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v9, "\nColors: "

    .line 197
    .line 198
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const/4 v8, 0x0

    .line 209
    :goto_4
    array-length v9, v0

    .line 210
    if-ge v8, v9, :cond_b

    .line 211
    .line 212
    invoke-direct {p0, v8, v0, v6, p1}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    array-length v9, v0

    .line 224
    sub-int/2addr v9, v4

    .line 225
    if-ge v8, v9, :cond_a

    .line 226
    .line 227
    const-string v9, ", "

    .line 228
    .line 229
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    invoke-direct {p0, v2, v0, v6, p1}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    .line 247
    .line 248
    invoke-static {v4, v5}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 249
    .line 250
    .line 251
    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    .line 252
    .line 253
    aget v8, v5, v7

    .line 254
    .line 255
    const v9, -0x1f1f20

    .line 256
    .line 257
    .line 258
    invoke-static {v9, v5}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 259
    .line 260
    .line 261
    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    .line 262
    .line 263
    aget v9, v5, v7

    .line 264
    .line 265
    cmpl-float v9, v8, v9

    .line 266
    .line 267
    if-lez v9, :cond_c

    .line 268
    .line 269
    const/4 p1, 0x0

    .line 270
    return p1

    .line 271
    :cond_c
    const/4 v9, 0x0

    .line 272
    const v10, -0xdededf

    .line 273
    .line 274
    .line 275
    invoke-static {v10, v5}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 276
    .line 277
    .line 278
    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    .line 279
    .line 280
    aget v5, v5, v7

    .line 281
    .line 282
    cmpg-float v5, v8, v5

    .line 283
    .line 284
    if-gez v5, :cond_d

    .line 285
    .line 286
    return v9

    .line 287
    :cond_d
    invoke-virtual {p2, v4}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 288
    .line 289
    .line 290
    const/4 v4, -0x2

    .line 291
    if-lt v2, v7, :cond_e

    .line 292
    .line 293
    move v5, v4

    .line 294
    goto :goto_5

    .line 295
    :cond_e
    move v5, v7

    .line 296
    :goto_5
    add-int/2addr v5, v2

    .line 297
    invoke-direct {p0, v5, v0, v6, p1}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    invoke-virtual {p2, v5}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 302
    .line 303
    .line 304
    if-eqz v3, :cond_f

    .line 305
    .line 306
    array-length v5, v0

    .line 307
    add-int/lit8 v5, v5, -0x1

    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_f
    if-ge v2, v7, :cond_10

    .line 311
    .line 312
    move v5, v9

    .line 313
    goto :goto_6

    .line 314
    :cond_10
    const/4 v5, 0x3

    .line 315
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    :goto_6
    if-lt v5, v7, :cond_11

    .line 320
    .line 321
    move v8, v4

    .line 322
    goto :goto_7

    .line 323
    :cond_11
    move v8, v7

    .line 324
    :goto_7
    add-int/2addr v8, v5

    .line 325
    invoke-direct {p0, v5, v0, v6, p1}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    invoke-virtual {p3, v5}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 330
    .line 331
    .line 332
    invoke-direct {p0, v8, v0, v6, p1}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    invoke-virtual {p3, v5}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 337
    .line 338
    .line 339
    if-eqz v3, :cond_12

    .line 340
    .line 341
    array-length v2, v0

    .line 342
    add-int/lit8 v9, v2, -0x1

    .line 343
    .line 344
    goto :goto_8

    .line 345
    :cond_12
    if-ge v2, v7, :cond_13

    .line 346
    .line 347
    goto :goto_8

    .line 348
    :cond_13
    move v9, v7

    .line 349
    :goto_8
    if-lt v9, v7, :cond_14

    .line 350
    .line 351
    move v7, v4

    .line 352
    :cond_14
    add-int/2addr v7, v9

    .line 353
    invoke-direct {p0, v9, v0, v6, p1}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    invoke-virtual {p4, v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 358
    .line 359
    .line 360
    invoke-direct {p0, v7, v0, v6, p1}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    invoke-virtual {p4, p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2, v3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p3, v3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p4, v3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 374
    .line 375
    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    const-string v0, "Gradients: \n\tNormal "

    .line 379
    .line 380
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string p2, "\n\tDark "

    .line 387
    .line 388
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string p2, "\n\tExtra dark: "

    .line 395
    .line 396
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    const/4 p1, 0x1

    .line 410
    return p1
.end method


# virtual methods
.method public extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public getBlacklistedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/colorextraction/types/Tonal$ColorRange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    return-object v0
.end method
