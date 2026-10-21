.class public Landroid/graphics/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/GradientDrawable$GradientState;,
        Landroid/graphics/drawable/GradientDrawable$Orientation;,
        Landroid/graphics/drawable/GradientDrawable$RadiusType;,
        Landroid/graphics/drawable/GradientDrawable$GradientType;,
        Landroid/graphics/drawable/GradientDrawable$Shape;
    }
.end annotation


# static fields
.field private static final DEFAULT_INNER_RADIUS_RATIO:F = 3.0f

.field private static final DEFAULT_THICKNESS_RATIO:F = 9.0f

.field public static final LINE:I = 0x2

.field public static final LINEAR_GRADIENT:I = 0x0

.field public static final OVAL:I = 0x1

.field public static final RADIAL_GRADIENT:I = 0x1

.field private static final RADIUS_TYPE_FRACTION:I = 0x1

.field private static final RADIUS_TYPE_FRACTION_PARENT:I = 0x2

.field private static final RADIUS_TYPE_PIXELS:I = 0x0

.field public static final RECTANGLE:I = 0x0

.field public static final RING:I = 0x3

.field public static final SWEEP_GRADIENT:I = 0x2


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mGradientIsDirty:Z

.field private mGradientRadius:F

.field private mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

.field private mLayerPaint:Landroid/graphics/Paint;

.field private mMutated:Z

.field private mPadding:Landroid/graphics/Rect;

.field private final mPath:Landroid/graphics/Path;

.field private mPathIsDirty:Z

.field private final mRect:Landroid/graphics/RectF;

.field private mRingPath:Landroid/graphics/Path;

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    .line 6
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 7
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 9
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 10
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 11
    invoke-direct {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 1

    .line 3
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private applyThemeChildElements(Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    .line 24
    .line 25
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {p0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception v2

    .line 43
    :try_start_1
    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_2
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    .line 56
    .line 57
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    .line 72
    .line 73
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    sget-object v2, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    .line 88
    .line 89
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    .line 98
    .line 99
    :cond_4
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    sget-object v1, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    .line 104
    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    .line 114
    .line 115
    :cond_5
    return-void
.end method

.method private buildPathIfDirty()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    .line 16
    .line 17
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 18
    .line 19
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 20
    .line 21
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 22
    .line 23
    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 16
    .line 17
    iget-boolean v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 18
    .line 19
    const/high16 v2, 0x43b40000    # 360.0f

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    mul-float/2addr v1, v2

    .line 29
    const v3, 0x461c4000    # 10000.0f

    .line 30
    .line 31
    .line 32
    div-float/2addr v1, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v1, v2

    .line 35
    :goto_0
    new-instance v3, Landroid/graphics/RectF;

    .line 36
    .line 37
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 38
    .line 39
    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/high16 v5, 0x40000000    # 2.0f

    .line 47
    .line 48
    div-float/2addr v4, v5

    .line 49
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    div-float/2addr v6, v5

    .line 54
    iget v5, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 55
    .line 56
    const/4 v7, -0x1

    .line 57
    if-eq v5, v7, :cond_3

    .line 58
    .line 59
    int-to-float v5, v5

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 66
    .line 67
    div-float/2addr v5, v8

    .line 68
    :goto_1
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 69
    .line 70
    if-eq v8, v7, :cond_4

    .line 71
    .line 72
    int-to-float p1, v8

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    iget p1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 79
    .line 80
    div-float p1, v7, p1

    .line 81
    .line 82
    :goto_2
    new-instance v7, Landroid/graphics/RectF;

    .line 83
    .line 84
    invoke-direct {v7, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 85
    .line 86
    .line 87
    sub-float v3, v4, p1

    .line 88
    .line 89
    sub-float v8, v6, p1

    .line 90
    .line 91
    invoke-virtual {v7, v3, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 92
    .line 93
    .line 94
    new-instance v3, Landroid/graphics/RectF;

    .line 95
    .line 96
    invoke-direct {v3, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 97
    .line 98
    .line 99
    neg-float v8, v5

    .line 100
    invoke-virtual {v3, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 101
    .line 102
    .line 103
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 104
    .line 105
    if-nez v8, :cond_5

    .line 106
    .line 107
    new-instance v8, Landroid/graphics/Path;

    .line 108
    .line 109
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 116
    .line 117
    .line 118
    :goto_3
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 119
    .line 120
    cmpg-float v2, v1, v2

    .line 121
    .line 122
    if-gez v2, :cond_6

    .line 123
    .line 124
    const/high16 v2, -0x3c4c0000    # -360.0f

    .line 125
    .line 126
    cmpl-float v2, v1, v2

    .line 127
    .line 128
    if-lez v2, :cond_6

    .line 129
    .line 130
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 131
    .line 132
    invoke-virtual {v8, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 133
    .line 134
    .line 135
    add-float/2addr v4, p1

    .line 136
    invoke-virtual {v8, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 137
    .line 138
    .line 139
    add-float/2addr v4, v5

    .line 140
    invoke-virtual {v8, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 141
    .line 142
    .line 143
    const/4 p1, 0x0

    .line 144
    invoke-virtual {v8, v3, p1, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 145
    .line 146
    .line 147
    neg-float p1, v1

    .line 148
    invoke-virtual {v8, v7, v1, p1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_6
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 156
    .line 157
    invoke-virtual {v8, v3, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 158
    .line 159
    .line 160
    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 161
    .line 162
    invoke-virtual {v8, v7, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 163
    .line 164
    .line 165
    :goto_4
    return-object v8
.end method

.method private ensureValidRect()Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_11

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/high16 v6, 0x3f000000    # 0.5f

    .line 25
    .line 26
    mul-float/2addr v4, v6

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v4, v5

    .line 29
    :goto_0
    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 30
    .line 31
    iget-object v7, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 32
    .line 33
    iget v8, v3, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    int-to-float v8, v8

    .line 36
    add-float/2addr v8, v4

    .line 37
    iget v9, v3, Landroid/graphics/Rect;->top:I

    .line 38
    .line 39
    int-to-float v9, v9

    .line 40
    add-float/2addr v9, v4

    .line 41
    iget v10, v3, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    int-to-float v10, v10

    .line 44
    sub-float/2addr v10, v4

    .line 45
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 46
    .line 47
    int-to-float v3, v3

    .line 48
    sub-float/2addr v3, v4

    .line 49
    invoke-virtual {v7, v8, v9, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    .line 51
    .line 52
    iget-object v3, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    .line 53
    .line 54
    if-eqz v3, :cond_11

    .line 55
    .line 56
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 57
    .line 58
    iget v7, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 59
    .line 60
    const v8, 0x461c4000    # 10000.0f

    .line 61
    .line 62
    .line 63
    const/high16 v9, 0x3f800000    # 1.0f

    .line 64
    .line 65
    if-nez v7, :cond_2

    .line 66
    .line 67
    iget-boolean v1, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    int-to-float v1, v1

    .line 76
    div-float v9, v1, v8

    .line 77
    .line 78
    :cond_1
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$1;->$SwitchMap$android$graphics$drawable$GradientDrawable$Orientation:[I

    .line 79
    .line 80
    iget-object v5, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    aget v1, v1, v5

    .line 87
    .line 88
    packed-switch v1, :pswitch_data_0

    .line 89
    .line 90
    .line 91
    iget v1, v4, Landroid/graphics/RectF;->left:F

    .line 92
    .line 93
    iget v5, v4, Landroid/graphics/RectF;->top:F

    .line 94
    .line 95
    iget v7, v4, Landroid/graphics/RectF;->right:F

    .line 96
    .line 97
    mul-float/2addr v7, v9

    .line 98
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :pswitch_0
    iget v1, v4, Landroid/graphics/RectF;->left:F

    .line 102
    .line 103
    iget v5, v4, Landroid/graphics/RectF;->top:F

    .line 104
    .line 105
    iget v4, v4, Landroid/graphics/RectF;->right:F

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :pswitch_1
    iget v1, v4, Landroid/graphics/RectF;->left:F

    .line 109
    .line 110
    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 111
    .line 112
    iget v7, v4, Landroid/graphics/RectF;->right:F

    .line 113
    .line 114
    mul-float/2addr v7, v9

    .line 115
    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :pswitch_2
    iget v1, v4, Landroid/graphics/RectF;->left:F

    .line 119
    .line 120
    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 121
    .line 122
    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :pswitch_3
    iget v1, v4, Landroid/graphics/RectF;->right:F

    .line 126
    .line 127
    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 128
    .line 129
    iget v7, v4, Landroid/graphics/RectF;->left:F

    .line 130
    .line 131
    mul-float/2addr v7, v9

    .line 132
    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :pswitch_4
    iget v1, v4, Landroid/graphics/RectF;->right:F

    .line 136
    .line 137
    iget v5, v4, Landroid/graphics/RectF;->top:F

    .line 138
    .line 139
    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 140
    .line 141
    :goto_1
    mul-float/2addr v9, v4

    .line 142
    move v12, v1

    .line 143
    move v13, v5

    .line 144
    move v15, v13

    .line 145
    move v14, v9

    .line 146
    goto :goto_5

    .line 147
    :pswitch_5
    iget v1, v4, Landroid/graphics/RectF;->right:F

    .line 148
    .line 149
    iget v5, v4, Landroid/graphics/RectF;->top:F

    .line 150
    .line 151
    iget v7, v4, Landroid/graphics/RectF;->left:F

    .line 152
    .line 153
    mul-float/2addr v7, v9

    .line 154
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 155
    .line 156
    :goto_2
    mul-float/2addr v9, v4

    .line 157
    move v12, v1

    .line 158
    move v13, v5

    .line 159
    move v14, v7

    .line 160
    goto :goto_4

    .line 161
    :pswitch_6
    iget v1, v4, Landroid/graphics/RectF;->left:F

    .line 162
    .line 163
    iget v5, v4, Landroid/graphics/RectF;->top:F

    .line 164
    .line 165
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 166
    .line 167
    :goto_3
    mul-float/2addr v9, v4

    .line 168
    move v12, v1

    .line 169
    move v14, v12

    .line 170
    move v13, v5

    .line 171
    :goto_4
    move v15, v9

    .line 172
    :goto_5
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 173
    .line 174
    new-instance v4, Landroid/graphics/LinearGradient;

    .line 175
    .line 176
    iget-object v5, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 177
    .line 178
    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 179
    .line 180
    move-object v11, v4

    .line 181
    move-object/from16 v16, v3

    .line 182
    .line 183
    move-object/from16 v17, v5

    .line 184
    .line 185
    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 189
    .line 190
    .line 191
    goto/16 :goto_b

    .line 192
    .line 193
    :cond_2
    const/4 v10, 0x2

    .line 194
    if-ne v7, v2, :cond_9

    .line 195
    .line 196
    iget v1, v4, Landroid/graphics/RectF;->left:F

    .line 197
    .line 198
    iget v7, v4, Landroid/graphics/RectF;->right:F

    .line 199
    .line 200
    sub-float/2addr v7, v1

    .line 201
    iget v9, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 202
    .line 203
    mul-float/2addr v7, v9

    .line 204
    add-float v12, v7, v1

    .line 205
    .line 206
    iget v1, v4, Landroid/graphics/RectF;->top:F

    .line 207
    .line 208
    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    .line 209
    .line 210
    sub-float/2addr v7, v1

    .line 211
    iget v9, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 212
    .line 213
    mul-float/2addr v7, v9

    .line 214
    add-float v13, v7, v1

    .line 215
    .line 216
    iget v1, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 217
    .line 218
    iget v7, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    .line 219
    .line 220
    if-ne v7, v2, :cond_5

    .line 221
    .line 222
    iget v7, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 223
    .line 224
    if-ltz v7, :cond_3

    .line 225
    .line 226
    int-to-float v7, v7

    .line 227
    goto :goto_6

    .line 228
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    :goto_6
    iget v9, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 233
    .line 234
    if-ltz v9, :cond_4

    .line 235
    .line 236
    int-to-float v4, v9

    .line 237
    goto :goto_7

    .line 238
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    :goto_7
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    goto :goto_8

    .line 247
    :cond_5
    if-ne v7, v10, :cond_6

    .line 248
    .line 249
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    :goto_8
    mul-float/2addr v1, v4

    .line 262
    :cond_6
    iget-boolean v4, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 263
    .line 264
    if-eqz v4, :cond_7

    .line 265
    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    int-to-float v4, v4

    .line 271
    div-float/2addr v4, v8

    .line 272
    mul-float/2addr v1, v4

    .line 273
    :cond_7
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    .line 274
    .line 275
    cmpg-float v4, v1, v5

    .line 276
    .line 277
    if-gtz v4, :cond_8

    .line 278
    .line 279
    const v1, 0x3a83126f    # 0.001f

    .line 280
    .line 281
    .line 282
    :cond_8
    move v14, v1

    .line 283
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 284
    .line 285
    new-instance v4, Landroid/graphics/RadialGradient;

    .line 286
    .line 287
    const/16 v16, 0x0

    .line 288
    .line 289
    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 290
    .line 291
    move-object v11, v4

    .line 292
    move-object v15, v3

    .line 293
    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 297
    .line 298
    .line 299
    goto :goto_b

    .line 300
    :cond_9
    if-ne v7, v10, :cond_10

    .line 301
    .line 302
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 303
    .line 304
    iget v7, v4, Landroid/graphics/RectF;->right:F

    .line 305
    .line 306
    sub-float/2addr v7, v5

    .line 307
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 308
    .line 309
    mul-float/2addr v7, v10

    .line 310
    add-float/2addr v7, v5

    .line 311
    iget v5, v4, Landroid/graphics/RectF;->top:F

    .line 312
    .line 313
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 314
    .line 315
    sub-float/2addr v4, v5

    .line 316
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 317
    .line 318
    mul-float/2addr v4, v10

    .line 319
    add-float/2addr v4, v5

    .line 320
    iget-boolean v5, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 321
    .line 322
    if-eqz v5, :cond_f

    .line 323
    .line 324
    iget-object v5, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    .line 325
    .line 326
    array-length v10, v3

    .line 327
    if-eqz v5, :cond_a

    .line 328
    .line 329
    array-length v11, v5

    .line 330
    add-int/lit8 v12, v10, 0x1

    .line 331
    .line 332
    if-eq v11, v12, :cond_b

    .line 333
    .line 334
    :cond_a
    add-int/lit8 v5, v10, 0x1

    .line 335
    .line 336
    new-array v5, v5, [I

    .line 337
    .line 338
    iput-object v5, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    .line 339
    .line 340
    :cond_b
    invoke-static {v3, v1, v5, v1, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 341
    .line 342
    .line 343
    add-int/lit8 v11, v10, -0x1

    .line 344
    .line 345
    aget v3, v3, v11

    .line 346
    .line 347
    aput v3, v5, v10

    .line 348
    .line 349
    iget-object v3, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    .line 350
    .line 351
    int-to-float v11, v11

    .line 352
    div-float v11, v9, v11

    .line 353
    .line 354
    if-eqz v3, :cond_c

    .line 355
    .line 356
    array-length v12, v3

    .line 357
    add-int/lit8 v13, v10, 0x1

    .line 358
    .line 359
    if-eq v12, v13, :cond_d

    .line 360
    .line 361
    :cond_c
    add-int/lit8 v3, v10, 0x1

    .line 362
    .line 363
    new-array v3, v3, [F

    .line 364
    .line 365
    iput-object v3, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    .line 366
    .line 367
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 368
    .line 369
    .line 370
    move-result v12

    .line 371
    int-to-float v12, v12

    .line 372
    div-float/2addr v12, v8

    .line 373
    :goto_9
    if-ge v1, v10, :cond_e

    .line 374
    .line 375
    int-to-float v8, v1

    .line 376
    mul-float/2addr v8, v11

    .line 377
    mul-float/2addr v8, v12

    .line 378
    aput v8, v3, v1

    .line 379
    .line 380
    add-int/lit8 v1, v1, 0x1

    .line 381
    .line 382
    goto :goto_9

    .line 383
    :cond_e
    aput v9, v3, v10

    .line 384
    .line 385
    move-object v1, v3

    .line 386
    move-object v3, v5

    .line 387
    goto :goto_a

    .line 388
    :cond_f
    const/4 v1, 0x0

    .line 389
    :goto_a
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 390
    .line 391
    new-instance v8, Landroid/graphics/SweepGradient;

    .line 392
    .line 393
    invoke-direct {v8, v7, v4, v3, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 397
    .line 398
    .line 399
    :cond_10
    :goto_b
    iget-object v1, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 400
    .line 401
    if-nez v1, :cond_11

    .line 402
    .line 403
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 404
    .line 405
    const/high16 v3, -0x1000000

    .line 406
    .line 407
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 408
    .line 409
    .line 410
    :cond_11
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 411
    .line 412
    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    xor-int/2addr v1, v2

    .line 417
    return v1

    .line 418
    nop

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFloatOrFraction(Landroid/content/res/TypedArray;IF)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    iget p1, p0, Landroid/util/TypedValue;->type:I

    .line 8
    .line 9
    const/4 p2, 0x6

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-virtual {p0, p1, p1}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    :goto_1
    move p2, p0

    .line 29
    :cond_2
    return p2
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eq v2, v1, :cond_9

    .line 12
    .line 13
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ge v3, v0, :cond_0

    .line 18
    .line 19
    const/4 v4, 0x3

    .line 20
    if-eq v2, v4, :cond_9

    .line 21
    .line 22
    :cond_0
    const/4 v4, 0x2

    .line 23
    if-eq v2, v4, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-le v3, v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string/jumbo v3, "size"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    .line 43
    .line 44
    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const-string/jumbo v3, "gradient"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    .line 65
    .line 66
    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-direct {p0, p1, v2}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const-string/jumbo v3, "solid"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_5

    .line 85
    .line 86
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    .line 87
    .line 88
    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    const-string/jumbo v3, "stroke"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_6

    .line 107
    .line 108
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    .line 109
    .line 110
    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    const-string v3, "corners"

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_7

    .line 128
    .line 129
    sget-object v2, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    .line 130
    .line 131
    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_7
    const-string/jumbo v3, "padding"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_8

    .line 151
    .line 152
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    .line 153
    .line 154
    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_8
    const-string v3, "Bad element under <shape>: "

    .line 167
    .line 168
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    const-string v3, "drawable"

    .line 173
    .line 174
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_9
    return-void
.end method

.method public static isOpaque(I)Z
    .locals 1

    shr-int/lit8 p0, p0, 0x18

    const/16 v0, 0xff

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOpaqueForState()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 24
    .line 25
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    const/4 v0, 0x1

    .line 43
    return v0
.end method

.method private modulateAlpha(I)I
    .locals 2

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    shr-int/lit8 p1, v0, 0x8

    return p1
.end method

.method private setStrokeInternal(IIFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    int-to-float p1, p1

    .line 21
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    cmpl-float p2, p3, p1

    .line 31
    .line 32
    if-lez p2, :cond_1

    .line 33
    .line 34
    new-instance p2, Landroid/graphics/DashPathEffect;

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [F

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    aput p3, v0, v2

    .line 41
    .line 42
    aput p4, v0, v1

    .line 43
    .line 44
    invoke-direct {p2, v0, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p2, 0x0

    .line 49
    :goto_0
    iget-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private updateDrawableCorners(Landroid/content/res/TypedArray;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    or-int/2addr v1, v2

    .line 10
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    .line 17
    .line 18
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 19
    .line 20
    float-to-int v0, v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v2, v0

    .line 27
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x2

    .line 36
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const/4 v6, 0x3

    .line 41
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const/4 v8, 0x4

    .line 46
    invoke-virtual {p1, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-ne v3, v0, :cond_0

    .line 51
    .line 52
    if-ne v5, v0, :cond_0

    .line 53
    .line 54
    if-ne v7, v0, :cond_0

    .line 55
    .line 56
    if-eq p1, v0, :cond_1

    .line 57
    .line 58
    :cond_0
    const/16 v0, 0x8

    .line 59
    .line 60
    new-array v0, v0, [F

    .line 61
    .line 62
    int-to-float v3, v3

    .line 63
    aput v3, v0, v1

    .line 64
    .line 65
    aput v3, v0, v2

    .line 66
    .line 67
    int-to-float v1, v5

    .line 68
    aput v1, v0, v4

    .line 69
    .line 70
    aput v1, v0, v6

    .line 71
    .line 72
    int-to-float p1, p1

    .line 73
    aput p1, v0, v8

    .line 74
    .line 75
    const/4 v1, 0x5

    .line 76
    aput p1, v0, v1

    .line 77
    .line 78
    int-to-float p1, v7

    .line 79
    const/4 v1, 0x6

    .line 80
    aput p1, v0, v1

    .line 81
    .line 82
    const/4 v1, 0x7

    .line 83
    aput p1, v0, v1

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method private updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    or-int/2addr v1, v2

    .line 10
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    .line 17
    .line 18
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 19
    .line 20
    const/4 v2, 0x5

    .line 21
    invoke-static {p2, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 26
    .line 27
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 28
    .line 29
    const/4 v3, 0x6

    .line 30
    invoke-static {p2, v3, v1}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 35
    .line 36
    iget-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 44
    .line 45
    const/4 v1, 0x4

    .line 46
    iget v5, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 47
    .line 48
    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    const/16 v6, 0x8

    .line 60
    .line 61
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    const/4 v8, 0x1

    .line 70
    invoke-virtual {p2, v8, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    const/high16 v10, 0x3f800000    # 1.0f

    .line 75
    .line 76
    const/4 v11, 0x3

    .line 77
    if-eqz v7, :cond_1

    .line 78
    .line 79
    new-array v7, v11, [I

    .line 80
    .line 81
    iput-object v7, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    .line 82
    .line 83
    aput v5, v7, v1

    .line 84
    .line 85
    aput v6, v7, v8

    .line 86
    .line 87
    aput v9, v7, v4

    .line 88
    .line 89
    new-array v5, v11, [F

    .line 90
    .line 91
    iput-object v5, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 92
    .line 93
    const/4 v6, 0x0

    .line 94
    aput v6, v5, v1

    .line 95
    .line 96
    iget v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 97
    .line 98
    const/high16 v7, 0x3f000000    # 0.5f

    .line 99
    .line 100
    cmpl-float v7, v6, v7

    .line 101
    .line 102
    if-eqz v7, :cond_0

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    iget v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 106
    .line 107
    :goto_0
    aput v6, v5, v8

    .line 108
    .line 109
    aput v10, v5, v4

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    new-array v6, v4, [I

    .line 113
    .line 114
    iput-object v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    .line 115
    .line 116
    aput v5, v6, v1

    .line 117
    .line 118
    aput v9, v6, v8

    .line 119
    .line 120
    :goto_1
    iget v5, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 121
    .line 122
    if-nez v5, :cond_b

    .line 123
    .line 124
    iget p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    .line 125
    .line 126
    int-to-float p1, p1

    .line 127
    invoke-virtual {p2, v11, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    float-to-int p1, p1

    .line 132
    rem-int/lit16 p1, p1, 0x168

    .line 133
    .line 134
    rem-int/lit8 v1, p1, 0x2d

    .line 135
    .line 136
    if-nez v1, :cond_a

    .line 137
    .line 138
    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    .line 139
    .line 140
    if-eqz p1, :cond_9

    .line 141
    .line 142
    const/16 p2, 0x2d

    .line 143
    .line 144
    if-eq p1, p2, :cond_8

    .line 145
    .line 146
    const/16 p2, 0x5a

    .line 147
    .line 148
    if-eq p1, p2, :cond_7

    .line 149
    .line 150
    const/16 p2, 0x87

    .line 151
    .line 152
    if-eq p1, p2, :cond_6

    .line 153
    .line 154
    const/16 p2, 0xb4

    .line 155
    .line 156
    if-eq p1, p2, :cond_5

    .line 157
    .line 158
    const/16 p2, 0xe1

    .line 159
    .line 160
    if-eq p1, p2, :cond_4

    .line 161
    .line 162
    const/16 p2, 0x10e

    .line 163
    .line 164
    if-eq p1, p2, :cond_3

    .line 165
    .line 166
    const/16 p2, 0x13b

    .line 167
    .line 168
    if-eq p1, p2, :cond_2

    .line 169
    .line 170
    goto/16 :goto_4

    .line 171
    .line 172
    :cond_2
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 173
    .line 174
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 175
    .line 176
    goto/16 :goto_4

    .line 177
    .line 178
    :cond_3
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 179
    .line 180
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 181
    .line 182
    goto/16 :goto_4

    .line 183
    .line 184
    :cond_4
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 185
    .line 186
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_5
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 190
    .line 191
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_6
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 195
    .line 196
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_7
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 200
    .line 201
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_8
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 205
    .line 206
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_9
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 210
    .line 211
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_a
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 215
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v1, "<gradient> tag requires \'angle\' attribute to be a multiple of 45"

    .line 222
    .line 223
    invoke-static {p2, v0, v1}, Landroid/accessibilityservice/c;->c(Landroid/content/res/TypedArray;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p1

    .line 231
    :cond_b
    const/4 v5, 0x7

    .line 232
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    if-eqz v5, :cond_f

    .line 237
    .line 238
    iget p2, v5, Landroid/util/TypedValue;->type:I

    .line 239
    .line 240
    if-ne p2, v3, :cond_d

    .line 241
    .line 242
    invoke-virtual {v5, v10, v10}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    iget p2, v5, Landroid/util/TypedValue;->data:I

    .line 247
    .line 248
    shr-int/2addr p2, v1

    .line 249
    and-int/lit8 p2, p2, 0xf

    .line 250
    .line 251
    if-ne p2, v8, :cond_c

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_c
    move v4, v8

    .line 255
    :goto_2
    move v1, v4

    .line 256
    goto :goto_3

    .line 257
    :cond_d
    if-ne p2, v2, :cond_e

    .line 258
    .line 259
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-virtual {v5, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    goto :goto_3

    .line 268
    :cond_e
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    :goto_3
    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 273
    .line 274
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_f
    iget p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 278
    .line 279
    if-eq p1, v8, :cond_10

    .line 280
    .line 281
    :goto_4
    return-void

    .line 282
    :cond_10
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 283
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    .line 290
    .line 291
    invoke-static {p2, v0, v1}, Landroid/accessibilityservice/c;->c(Landroid/content/res/TypedArray;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw p1
.end method

.method private updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    or-int/2addr v1, v2

    .line 10
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    .line 17
    .line 18
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 28
    .line 29
    :cond_0
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x1

    .line 39
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x2

    .line 46
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 47
    .line 48
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x3

    .line 53
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 54
    .line 55
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 63
    .line 64
    return-void
.end method

.method private updateGradientDrawableSize(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    or-int/2addr v1, v2

    .line 10
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 20
    .line 21
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 29
    .line 30
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 35
    .line 36
    return-void
.end method

.method private updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    or-int/2addr v1, v2

    .line 10
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method private updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    or-int/2addr v1, v2

    .line 10
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    .line 17
    .line 18
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x2

    .line 30
    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 31
    .line 32
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    :cond_0
    const/4 v4, 0x0

    .line 46
    cmpl-float v4, v2, v4

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    const/4 v4, 0x3

    .line 51
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 52
    .line 53
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {p0, v1, v3, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 6

    .line 1
    iget-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 35
    .line 36
    const/high16 v2, -0x1000000

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 42
    .line 43
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 44
    .line 45
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-ltz v0, :cond_3

    .line 49
    .line 50
    new-instance v0, Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 56
    .line 57
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 63
    .line 64
    iget v3, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 65
    .line 66
    int-to-float v3, v3

    .line 67
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v3, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 79
    .line 80
    invoke-virtual {v3, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    cmpl-float v4, v0, v3

    .line 93
    .line 94
    if-eqz v4, :cond_3

    .line 95
    .line 96
    new-instance v4, Landroid/graphics/DashPathEffect;

    .line 97
    .line 98
    const/4 v5, 0x2

    .line 99
    new-array v5, v5, [F

    .line 100
    .line 101
    aput v0, v5, v1

    .line 102
    .line 103
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 104
    .line 105
    aput v0, v5, v2

    .line 106
    .line 107
    invoke-direct {v4, v5, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 111
    .line 112
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 113
    .line 114
    .line 115
    :cond_3
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 116
    .line 117
    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 118
    .line 119
    iget-object v3, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 120
    .line 121
    invoke-virtual {p0, v0, v1, v3}, Landroid/graphics/drawable/Drawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 126
    .line 127
    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 128
    .line 129
    invoke-static {p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    or-int/2addr v1, v2

    .line 10
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    .line 17
    .line 18
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iget-boolean v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 29
    .line 30
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 35
    .line 36
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 37
    .line 38
    const/4 v3, -0x1

    .line 39
    if-ne v1, v2, :cond_2

    .line 40
    .line 41
    const/4 v1, 0x7

    .line 42
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 43
    .line 44
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 49
    .line 50
    if-ne v1, v3, :cond_0

    .line 51
    .line 52
    const/4 v1, 0x4

    .line 53
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 54
    .line 55
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 60
    .line 61
    :cond_0
    const/16 v1, 0x8

    .line 62
    .line 63
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 64
    .line 65
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 70
    .line 71
    if-ne v1, v3, :cond_1

    .line 72
    .line 73
    const/4 v1, 0x5

    .line 74
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 75
    .line 76
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 81
    .line 82
    :cond_1
    const/4 v1, 0x6

    .line 83
    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 84
    .line 85
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 90
    .line 91
    :cond_2
    const/16 v1, 0x9

    .line 92
    .line 93
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eq v1, v3, :cond_3

    .line 98
    .line 99
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 100
    .line 101
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 106
    .line 107
    :cond_3
    const/4 v1, 0x1

    .line 108
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 115
    .line 116
    :cond_4
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 117
    .line 118
    iget v1, v1, Landroid/graphics/Insets;->left:I

    .line 119
    .line 120
    const/16 v2, 0xb

    .line 121
    .line 122
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 127
    .line 128
    iget v2, v2, Landroid/graphics/Insets;->top:I

    .line 129
    .line 130
    const/16 v3, 0xd

    .line 131
    .line 132
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 137
    .line 138
    iget v3, v3, Landroid/graphics/Insets;->right:I

    .line 139
    .line 140
    const/16 v4, 0xc

    .line 141
    .line 142
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 147
    .line 148
    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    .line 149
    .line 150
    const/16 v5, 0xa

    .line 151
    .line 152
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 161
    .line 162
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    .line 26
    .line 27
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 54
    .line 55
    :cond_2
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 72
    .line 73
    :cond_3
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 90
    .line 91
    :cond_4
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->applyThemeChildElements(Landroid/content/res/Resources$Theme;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearMutated()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    .line 6
    .line 7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 15
    .line 16
    .line 17
    move-result v8

    .line 18
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    move v9, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v9, v2

    .line 30
    :goto_0
    invoke-direct {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-direct {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v10, 0x0

    .line 39
    const/4 v11, 0x1

    .line 40
    if-lez v3, :cond_2

    .line 41
    .line 42
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    cmpl-float v4, v4, v10

    .line 51
    .line 52
    if-lez v4, :cond_2

    .line 53
    .line 54
    move v12, v11

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v12, v2

    .line 57
    :goto_1
    if-lez v1, :cond_3

    .line 58
    .line 59
    move v4, v11

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move v4, v2

    .line 62
    :goto_2
    iget-object v13, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 63
    .line 64
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 65
    .line 66
    if-eqz v5, :cond_4

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 70
    .line 71
    :goto_3
    move-object v14, v5

    .line 72
    const/4 v15, 0x2

    .line 73
    if-eqz v12, :cond_6

    .line 74
    .line 75
    if-eqz v4, :cond_6

    .line 76
    .line 77
    iget v4, v13, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 78
    .line 79
    if-eq v4, v15, :cond_6

    .line 80
    .line 81
    const/16 v4, 0xff

    .line 82
    .line 83
    if-ge v3, v4, :cond_6

    .line 84
    .line 85
    iget v5, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 86
    .line 87
    if-lt v5, v4, :cond_5

    .line 88
    .line 89
    if-eqz v14, :cond_6

    .line 90
    .line 91
    :cond_5
    move/from16 v16, v11

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_6
    move/from16 v16, v2

    .line 95
    .line 96
    :goto_4
    if-eqz v16, :cond_8

    .line 97
    .line 98
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    .line 99
    .line 100
    if-nez v1, :cond_7

    .line 101
    .line 102
    new-instance v1, Landroid/graphics/Paint;

    .line 103
    .line 104
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    .line 108
    .line 109
    :cond_7
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    .line 110
    .line 111
    iget-boolean v2, v13, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    .line 117
    .line 118
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    .line 124
    .line 125
    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 135
    .line 136
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 137
    .line 138
    sub-float/2addr v3, v1

    .line 139
    iget v4, v2, Landroid/graphics/RectF;->top:F

    .line 140
    .line 141
    sub-float/2addr v4, v1

    .line 142
    iget v5, v2, Landroid/graphics/RectF;->right:F

    .line 143
    .line 144
    add-float/2addr v5, v1

    .line 145
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 146
    .line 147
    add-float v6, v2, v1

    .line 148
    .line 149
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    .line 150
    .line 151
    move-object/from16 v1, p1

    .line 152
    .line 153
    move-object/from16 v17, v2

    .line 154
    .line 155
    move v2, v3

    .line 156
    move v3, v4

    .line 157
    move v4, v5

    .line 158
    move v5, v6

    .line 159
    move-object/from16 v6, v17

    .line 160
    .line 161
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 165
    .line 166
    const/4 v2, 0x0

    .line 167
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 173
    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_8
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 177
    .line 178
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 182
    .line 183
    iget-boolean v2, v13, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 184
    .line 185
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 186
    .line 187
    .line 188
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 189
    .line 190
    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 191
    .line 192
    .line 193
    if-eqz v14, :cond_9

    .line 194
    .line 195
    iget-object v1, v13, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 196
    .line 197
    if-nez v1, :cond_9

    .line 198
    .line 199
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 200
    .line 201
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 202
    .line 203
    shl-int/lit8 v2, v2, 0x18

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    .line 207
    .line 208
    :cond_9
    if-eqz v12, :cond_a

    .line 209
    .line 210
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 211
    .line 212
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 213
    .line 214
    .line 215
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 216
    .line 217
    iget-boolean v2, v13, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 220
    .line 221
    .line 222
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 223
    .line 224
    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 225
    .line 226
    .line 227
    :cond_a
    :goto_5
    iget v1, v13, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 228
    .line 229
    if-eqz v1, :cond_e

    .line 230
    .line 231
    if-eq v1, v11, :cond_d

    .line 232
    .line 233
    if-eq v1, v15, :cond_c

    .line 234
    .line 235
    const/4 v2, 0x3

    .line 236
    if-eq v1, v2, :cond_b

    .line 237
    .line 238
    goto/16 :goto_6

    .line 239
    .line 240
    :cond_b
    invoke-direct {v0, v13}, Landroid/graphics/drawable/GradientDrawable;->buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 245
    .line 246
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 247
    .line 248
    .line 249
    if-eqz v12, :cond_13

    .line 250
    .line 251
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 252
    .line 253
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_6

    .line 257
    .line 258
    :cond_c
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 259
    .line 260
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    if-eqz v12, :cond_13

    .line 265
    .line 266
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 267
    .line 268
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 269
    .line 270
    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 271
    .line 272
    move-object/from16 v1, p1

    .line 273
    .line 274
    move v3, v5

    .line 275
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_6

    .line 279
    .line 280
    :cond_d
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 281
    .line 282
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 283
    .line 284
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 285
    .line 286
    .line 287
    if-eqz v12, :cond_13

    .line 288
    .line 289
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 290
    .line 291
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 292
    .line 293
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 294
    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_e
    iget-object v1, v13, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 298
    .line 299
    if-eqz v1, :cond_f

    .line 300
    .line 301
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    .line 302
    .line 303
    .line 304
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    .line 305
    .line 306
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 307
    .line 308
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 309
    .line 310
    .line 311
    if-eqz v12, :cond_13

    .line 312
    .line 313
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    .line 314
    .line 315
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 316
    .line 317
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 318
    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_f
    iget v1, v13, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 322
    .line 323
    cmpl-float v2, v1, v10

    .line 324
    .line 325
    if-lez v2, :cond_10

    .line 326
    .line 327
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 328
    .line 329
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 334
    .line 335
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    const/high16 v3, 0x3f000000    # 0.5f

    .line 344
    .line 345
    mul-float/2addr v2, v3

    .line 346
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 351
    .line 352
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 353
    .line 354
    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 355
    .line 356
    .line 357
    if-eqz v12, :cond_13

    .line 358
    .line 359
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 360
    .line 361
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 362
    .line 363
    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 364
    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_10
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 368
    .line 369
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-nez v1, :cond_11

    .line 374
    .line 375
    if-nez v14, :cond_11

    .line 376
    .line 377
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 378
    .line 379
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    if-eqz v1, :cond_12

    .line 384
    .line 385
    :cond_11
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 386
    .line 387
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 388
    .line 389
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 390
    .line 391
    .line 392
    :cond_12
    if-eqz v12, :cond_13

    .line 393
    .line 394
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 395
    .line 396
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 397
    .line 398
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 399
    .line 400
    .line 401
    :cond_13
    :goto_6
    if-eqz v16, :cond_14

    .line 402
    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 404
    .line 405
    .line 406
    goto :goto_7

    .line 407
    :cond_14
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 408
    .line 409
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 410
    .line 411
    .line 412
    if-eqz v12, :cond_15

    .line 413
    .line 414
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 415
    .line 416
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 417
    .line 418
    .line 419
    :cond_15
    :goto_7
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getColors()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [I

    .line 14
    .line 15
    :goto_0
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getChangingConfigurations()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 8
    .line 9
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 10
    .line 11
    return-object v0
.end method

.method public getCornerRadii()[F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    return v0
.end method

.method public getGradientCenterX()F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return v0
.end method

.method public getGradientCenterY()F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return v0
.end method

.method public getGradientRadius()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    .line 11
    .line 12
    .line 13
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    .line 14
    .line 15
    return v0
.end method

.method public getGradientType()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->isOpaqueForState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 13
    .line 14
    iget v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-ne v2, v4, :cond_1

    .line 33
    .line 34
    :cond_0
    move v2, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x0

    .line 37
    :goto_0
    const/4 v4, 0x0

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    int-to-float v2, v2

    .line 51
    const/high16 v5, 0x437f0000    # 255.0f

    .line 52
    .line 53
    div-float/2addr v2, v5

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v2, v4

    .line 56
    :goto_1
    invoke-virtual {p1, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 57
    .line 58
    .line 59
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 60
    .line 61
    const/high16 v5, 0x3f000000    # 0.5f

    .line 62
    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    if-eq v2, v3, :cond_5

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    if-eq v2, v0, :cond_3

    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 72
    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    const v0, 0x38d1b717    # 1.0E-4f

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    mul-float/2addr v0, v5

    .line 84
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    int-to-float v2, v2

    .line 89
    sub-float v3, v2, v0

    .line 90
    .line 91
    float-to-double v3, v3

    .line 92
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    double-to-int v3, v3

    .line 97
    add-float/2addr v2, v0

    .line 98
    float-to-double v4, v2

    .line 99
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 100
    .line 101
    .line 102
    move-result-wide v4

    .line 103
    double-to-int v0, v4

    .line 104
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 105
    .line 106
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 107
    .line 108
    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_5
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_6
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 117
    .line 118
    if-eqz v2, :cond_7

    .line 119
    .line 120
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_7
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 130
    .line 131
    cmpl-float v2, v0, v4

    .line 132
    .line 133
    if-lez v2, :cond_8

    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    int-to-float v2, v2

    .line 148
    mul-float/2addr v2, v5

    .line 149
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    :cond_8
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getShape()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    return v0
.end method

.method public getUseLevel()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    :cond_1
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    :cond_2
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    .line 15
    .line 16
    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public isStateful()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    :cond_1
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v0, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 43
    :goto_1
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne v0, p0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 20
    .line 21
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    .line 26
    .line 27
    :cond_0
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 11
    .line 12
    return-void
.end method

.method public onLevelChange(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return p1
.end method

.method public onStateChange([I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eq v4, v1, :cond_0

    .line 20
    .line 21
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v3

    .line 29
    :goto_0
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    invoke-virtual {v5, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eq v5, p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    .line 49
    .line 50
    move v1, v2

    .line 51
    :cond_1
    iget-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 60
    .line 61
    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/drawable/Drawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 66
    .line 67
    move v1, v2

    .line 68
    :cond_2
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 71
    .line 72
    .line 73
    return v2

    .line 74
    :cond_3
    return v3
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    .line 2
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 4
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 7
    :goto_0
    iget-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setColors([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setCornerRadii([F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadii([F)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadius(F)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setDither(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 4
    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientCenter(FF)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setGradientRadius(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientRadius(FI)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setGradientType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientType(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShape(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setShape(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setSize(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSize(II)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setStroke(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    return-void
.end method

.method public setStroke(IIFF)V
    .locals 2

    .line 3
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;FF)V
    .locals 2

    .line 5
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    .line 7
    invoke-virtual {p2, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 8
    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    .line 7
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/drawable/Drawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    .line 7
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0, p1}, Landroid/graphics/drawable/Drawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setUseLevel(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2
    .line 3
    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
