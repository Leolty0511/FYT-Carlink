.class public final Landroid/app/WallpaperColors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BRIGHT_IMAGE_MEAN_LUMINANCE:F = 0.75f

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/WallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private static final DARK_PIXEL_LUMINANCE:F = 0.45f

.field private static final DARK_THEME_MEAN_LUMINANCE:F = 0.25f

.field public static final HINT_FROM_BITMAP:I = 0x4

.field public static final HINT_SUPPORTS_DARK_TEXT:I = 0x1

.field public static final HINT_SUPPORTS_DARK_THEME:I = 0x2

.field private static final MAX_BITMAP_SIZE:I = 0x70

.field private static final MAX_DARK_AREA:F = 0.05f

.field private static final MAX_WALLPAPER_EXTRACTION_AREA:I = 0x3100

.field private static final MIN_COLOR_OCCURRENCE:F = 0.05f


# instance fields
.field private mColorHints:I

.field private final mMainColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/WallpaperColors$1;

    invoke-direct {v0}, Landroid/app/WallpaperColors$1;-><init>()V

    sput-object v0, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "tertiaryColor can\'t be specified when secondaryColor is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    :goto_0
    iput p4, p0, Landroid/app/WallpaperColors;->mColorHints:I

    return-void

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Primary color should never be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5
    invoke-static {v2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v2

    .line 6
    iget-object v3, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    return-void
.end method

.method public static synthetic a(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Palette$Swatch;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/app/WallpaperColors;->lambda$fromBitmap$1(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Palette$Swatch;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(FLcom/android/internal/graphics/palette/Palette$Swatch;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/app/WallpaperColors;->lambda$fromBitmap$0(FLcom/android/internal/graphics/palette/Palette$Swatch;)Z

    move-result p0

    return p0
.end method

.method private static calculateDarkHints(Landroid/graphics/Bitmap;)I
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    mul-int/2addr v2, v1

    .line 14
    new-array v1, v2, [I

    .line 15
    .line 16
    int-to-float v3, v2

    .line 17
    const v4, 0x3d4ccccd    # 0.05f

    .line 18
    .line 19
    .line 20
    mul-float/2addr v3, v4

    .line 21
    float-to-int v11, v3

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    move-object v3, p0

    .line 38
    move-object v4, v1

    .line 39
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x3

    .line 43
    new-array p0, p0, [F

    .line 44
    .line 45
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    move v5, v0

    .line 48
    move v6, v5

    .line 49
    :goto_0
    if-ge v5, v2, :cond_2

    .line 50
    .line 51
    aget v7, v1, v5

    .line 52
    .line 53
    invoke-static {v7, p0}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 54
    .line 55
    .line 56
    const/4 v7, 0x2

    .line 57
    aget v7, p0, v7

    .line 58
    .line 59
    aget v8, v1, v5

    .line 60
    .line 61
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    const v9, 0x3ee66666    # 0.45f

    .line 66
    .line 67
    .line 68
    cmpg-float v9, v7, v9

    .line 69
    .line 70
    if-gez v9, :cond_1

    .line 71
    .line 72
    if-eqz v8, :cond_1

    .line 73
    .line 74
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    :cond_1
    float-to-double v7, v7

    .line 77
    add-double/2addr v3, v7

    .line 78
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    int-to-double v1, v2

    .line 82
    div-double/2addr v3, v1

    .line 83
    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    .line 84
    .line 85
    cmpl-double p0, v3, v1

    .line 86
    .line 87
    if-lez p0, :cond_3

    .line 88
    .line 89
    if-ge v6, v11, :cond_3

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    :cond_3
    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    .line 93
    .line 94
    cmpg-double p0, v3, v1

    .line 95
    .line 96
    if-gez p0, :cond_4

    .line 97
    .line 98
    or-int/lit8 v0, v0, 0x2

    .line 99
    .line 100
    :cond_4
    return v0
.end method

.method private static calculateOptimalSize(II)Landroid/util/Size;
    .locals 5

    .line 1
    mul-int v0, p0, p1

    .line 2
    .line 3
    const/16 v1, 0x3100

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    const-wide v1, 0x40c8800000000000L    # 12544.0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    int-to-double v3, v0

    .line 13
    div-double/2addr v1, v3

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 20
    .line 21
    :goto_0
    int-to-double v2, p0

    .line 22
    mul-double/2addr v2, v0

    .line 23
    double-to-int p0, v2

    .line 24
    int-to-double v2, p1

    .line 25
    mul-double/2addr v2, v0

    .line 26
    double-to-int p1, v2

    .line 27
    const/4 v0, 0x1

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    move p0, v0

    .line 31
    :cond_1
    if-nez p1, :cond_2

    .line 32
    .line 33
    move p1, v0

    .line 34
    :cond_2
    new-instance v0, Landroid/util/Size;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;
    .locals 10

    .line 1
    if-eqz p0, :cond_6

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    mul-int/2addr v1, v0

    .line 12
    const/4 v0, 0x1

    .line 13
    const/16 v2, 0x3100

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-le v1, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-static {v1, v4}, Landroid/app/WallpaperColors;->calculateOptimalSize(II)Landroid/util/Size;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {p0, v4, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    move v1, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v1, v3

    .line 45
    :goto_0
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    new-instance v5, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;

    .line 50
    .line 51
    invoke-direct {v5}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v5}, Lcom/android/internal/graphics/palette/Palette$Builder;->setQuantizer(Lcom/android/internal/graphics/palette/Quantizer;)Lcom/android/internal/graphics/palette/Palette$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/4 v5, 0x5

    .line 59
    invoke-virtual {v4, v5}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Builder;->clearFilters()Lcom/android/internal/graphics/palette/Palette$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4, v2}, Lcom/android/internal/graphics/palette/Palette$Builder;->resizeBitmapArea(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    mul-int/2addr v5, v2

    .line 93
    int-to-float v2, v5

    .line 94
    const v5, 0x3d4ccccd    # 0.05f

    .line 95
    .line 96
    .line 97
    mul-float/2addr v2, v5

    .line 98
    new-instance v5, Landroid/app/q;

    .line 99
    .line 100
    invoke-direct {v5, v2}, Landroid/app/q;-><init>(F)V

    .line 101
    .line 102
    .line 103
    invoke-static {v4, v5}, Landroid/animation/b;->v(Ljava/util/ArrayList;Landroid/app/q;)V

    .line 104
    .line 105
    .line 106
    new-instance v2, Landroid/app/r;

    .line 107
    .line 108
    invoke-direct {v2, v3}, Landroid/app/r;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-static {v4, v2}, Landroid/animation/b;->w(Ljava/util/ArrayList;Landroid/app/r;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    const/4 v5, 0x0

    .line 119
    move-object v6, v5

    .line 120
    move-object v7, v6

    .line 121
    :goto_1
    if-ge v3, v2, :cond_4

    .line 122
    .line 123
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    check-cast v8, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 128
    .line 129
    invoke-virtual {v8}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    invoke-static {v8}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    if-eqz v3, :cond_3

    .line 138
    .line 139
    if-eq v3, v0, :cond_2

    .line 140
    .line 141
    const/4 v9, 0x2

    .line 142
    if-eq v3, v9, :cond_1

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_1
    move-object v7, v8

    .line 146
    goto :goto_2

    .line 147
    :cond_2
    move-object v6, v8

    .line 148
    goto :goto_2

    .line 149
    :cond_3
    move-object v5, v8

    .line 150
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    :goto_3
    invoke-static {p0}, Landroid/app/WallpaperColors;->calculateDarkHints(Landroid/graphics/Bitmap;)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v1, :cond_5

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    .line 161
    .line 162
    :cond_5
    new-instance p0, Landroid/app/WallpaperColors;

    .line 163
    .line 164
    or-int/lit8 v0, v0, 0x4

    .line 165
    .line 166
    invoke-direct {p0, v5, v6, v7, v0}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    .line 167
    .line 168
    .line 169
    return-object p0

    .line 170
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    const-string v0, "Bitmap can\'t be null"

    .line 173
    .line 174
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    if-gtz v1, :cond_1

    .line 12
    .line 13
    :cond_0
    const/16 v0, 0x70

    .line 14
    .line 15
    move v1, v0

    .line 16
    :cond_1
    invoke-static {v0, v1}, Landroid/app/WallpaperColors;->calculateOptimalSize(II)Landroid/util/Size;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 29
    .line 30
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Landroid/graphics/Canvas;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 59
    .line 60
    .line 61
    return-object p0
.end method

.method private static synthetic lambda$fromBitmap$0(FLcom/android/internal/graphics/palette/Palette$Swatch;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$fromBitmap$1(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Palette$Swatch;)I
    .locals 0

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    const-class v1, Landroid/app/WallpaperColors;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Landroid/app/WallpaperColors;

    .line 14
    .line 15
    iget-object v1, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v2, p1, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget v1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 26
    .line 27
    iget p1, p1, Landroid/app/WallpaperColors;->mColorHints:I

    .line 28
    .line 29
    if-ne v1, p1, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    :cond_1
    :goto_0
    return v0
.end method

.method public getColorHints()I
    .locals 1

    iget v0, p0, Landroid/app/WallpaperColors;->mColorHints:I

    return v0
.end method

.method public getMainColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryColor()Landroid/graphics/Color;
    .locals 2

    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    return-object v0
.end method

.method public getSecondaryColor()Landroid/graphics/Color;
    .locals 2

    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    :goto_0
    return-object v0
.end method

.method public getTertiaryColor()Landroid/graphics/Color;
    .locals 2

    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setColorHints(I)V
    .locals 0

    iput p1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

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
    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/graphics/Color;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, " "

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "[WallpaperColors: "

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string/jumbo v0, "h: "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v0, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 63
    .line 64
    const-string v2, "]"

    .line 65
    .line 66
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/graphics/Color;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget p2, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
