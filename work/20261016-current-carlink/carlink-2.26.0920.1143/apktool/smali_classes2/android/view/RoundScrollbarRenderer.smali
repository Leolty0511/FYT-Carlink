.class Landroid/view/RoundScrollbarRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_THUMB_COLOR:I = 0x4cffffff

.field private static final DEFAULT_TRACK_COLOR:I = 0x26ffffff

.field private static final MAX_SCROLLBAR_ANGLE_SWIPE:I = 0x10

.field private static final MIN_SCROLLBAR_ANGLE_SWIPE:I = 0x6

.field private static final SCROLLBAR_ANGLE_RANGE:I = 0x5a

.field private static final WIDTH_PERCENTAGE:F = 0.02f


# instance fields
.field private final mParent:Landroid/view/View;

.field private final mRect:Landroid/graphics/RectF;

.field private final mThumbPaint:Landroid/graphics/Paint;

.field private final mTrackPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    .line 17
    .line 18
    new-instance v2, Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    .line 28
    .line 29
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 32
    .line 33
    .line 34
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    .line 49
    .line 50
    return-void
.end method

.method private static applyAlpha(IF)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    mul-float/2addr v0, p1

    .line 7
    float-to-int p1, v0

    .line 8
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method private static clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method private setThumbColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private setTrackColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public drawRoundScrollbars(Landroid/graphics/Canvas;FLandroid/graphics/Rect;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    cmpl-float v4, v1, v3

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v4, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v4}, Landroid/view/View;->computeVerticalScrollRange()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    int-to-float v4, v4

    .line 20
    iget-object v5, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v5}, Landroid/view/View;->computeVerticalScrollExtent()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    int-to-float v5, v5

    .line 27
    cmpg-float v3, v5, v3

    .line 28
    .line 29
    if-lez v3, :cond_2

    .line 30
    .line 31
    cmpg-float v3, v4, v5

    .line 32
    .line 33
    if-gtz v3, :cond_1

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object v3, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/view/View;->computeVerticalScrollOffset()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    int-to-float v3, v3

    .line 49
    iget-object v5, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v5}, Landroid/view/View;->computeVerticalScrollExtent()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    int-to-float v5, v5

    .line 56
    iget-object v6, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    int-to-float v6, v6

    .line 63
    const v7, 0x3ca3d70a    # 0.02f

    .line 64
    .line 65
    .line 66
    mul-float/2addr v6, v7

    .line 67
    iget-object v7, v0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    .line 71
    .line 72
    iget-object v7, v0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    .line 76
    .line 77
    const v7, 0x4cffffff    # 1.3421772E8f

    .line 78
    .line 79
    .line 80
    invoke-static {v7, v1}, Landroid/view/RoundScrollbarRenderer;->applyAlpha(IF)I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    invoke-direct {v0, v7}, Landroid/view/RoundScrollbarRenderer;->setThumbColor(I)V

    .line 85
    .line 86
    .line 87
    const v7, 0x26ffffff

    .line 88
    .line 89
    .line 90
    invoke-static {v7, v1}, Landroid/view/RoundScrollbarRenderer;->applyAlpha(IF)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-direct {v0, v1}, Landroid/view/RoundScrollbarRenderer;->setTrackColor(I)V

    .line 95
    .line 96
    .line 97
    div-float v1, v5, v4

    .line 98
    .line 99
    const/high16 v7, 0x42b40000    # 90.0f

    .line 100
    .line 101
    mul-float/2addr v1, v7

    .line 102
    const/high16 v8, 0x40c00000    # 6.0f

    .line 103
    .line 104
    const/high16 v9, 0x41800000    # 16.0f

    .line 105
    .line 106
    invoke-static {v1, v8, v9}, Landroid/view/RoundScrollbarRenderer;->clamp(FFF)F

    .line 107
    .line 108
    .line 109
    move-result v13

    .line 110
    sub-float/2addr v7, v13

    .line 111
    mul-float/2addr v7, v3

    .line 112
    sub-float/2addr v4, v5

    .line 113
    div-float/2addr v7, v4

    .line 114
    const/high16 v1, 0x42340000    # 45.0f

    .line 115
    .line 116
    sub-float/2addr v7, v1

    .line 117
    const/high16 v3, -0x3dcc0000    # -45.0f

    .line 118
    .line 119
    sub-float/2addr v1, v13

    .line 120
    invoke-static {v7, v3, v1}, Landroid/view/RoundScrollbarRenderer;->clamp(FFF)F

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    iget-object v1, v0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    .line 125
    .line 126
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 127
    .line 128
    int-to-float v3, v3

    .line 129
    const/high16 v4, 0x40000000    # 2.0f

    .line 130
    .line 131
    div-float/2addr v6, v4

    .line 132
    sub-float/2addr v3, v6

    .line 133
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 134
    .line 135
    int-to-float v4, v4

    .line 136
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 137
    .line 138
    int-to-float v5, v5

    .line 139
    sub-float/2addr v5, v6

    .line 140
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 141
    .line 142
    int-to-float v2, v2

    .line 143
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    .line 145
    .line 146
    iget-object v7, v0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    .line 147
    .line 148
    const/high16 v8, -0x3dcc0000    # -45.0f

    .line 149
    .line 150
    const/high16 v9, 0x42b40000    # 90.0f

    .line 151
    .line 152
    const/4 v10, 0x0

    .line 153
    iget-object v11, v0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    .line 154
    .line 155
    move-object/from16 v6, p1

    .line 156
    .line 157
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 158
    .line 159
    .line 160
    iget-object v11, v0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    .line 161
    .line 162
    const/4 v14, 0x0

    .line 163
    iget-object v15, v0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    .line 164
    .line 165
    move-object/from16 v10, p1

    .line 166
    .line 167
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 168
    .line 169
    .line 170
    :cond_2
    :goto_0
    return-void
.end method
