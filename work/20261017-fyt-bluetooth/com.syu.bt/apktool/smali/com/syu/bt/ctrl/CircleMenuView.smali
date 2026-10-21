.class public Lcom/syu/bt/ctrl/CircleMenuView;
.super Landroid/view/View;
.source "CircleMenuView.java"


# static fields
.field static degrees:[D


# instance fields
.field centerX:I

.field centerY:I

.field degree:D

.field private height:I

.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field mDrawTime:J

.field paint:Landroid/graphics/Paint;

.field point:Landroid/filterfw/geometry/Point;

.field pointDrawable:Landroid/graphics/drawable/Drawable;

.field progress:I

.field private rotatBitmap:Landroid/graphics/Bitmap;

.field target:D

.field toDirection:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0xe

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/syu/bt/ctrl/CircleMenuView;->degrees:[D

    .line 32
    return-void

    .line 30
    :array_0
    .array-data 8
        0x4061dd999999999aL    # 142.925
        0x4064d64dd2f1a9fcL    # 166.697
        0x4068122d0e560419L    # 192.568
        0x406b427ef9db22d1L    # 218.078
        0x406e493f7ced9168L    # 242.289
        0x4070b82d0e560419L    # 267.511
        0x4072455810624dd3L    # 292.334
        0x4073f1df3b645a1dL    # 319.117
        0x40756f126e978d50L    # 342.942
        0x401f0d4fdf3b645aL    # 7.763
        0x4040100000000000L    # 32.125
        0x404cfeb851eb851fL    # 57.99
        0x4054f09374bc6a7fL    # 83.759
        0x4057a5c28f5c28f6L    # 94.59
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    const-wide v2, 0x4061dd999999999aL    # 142.925

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->paint:Landroid/graphics/Paint;

    .line 24
    iput-wide v2, p0, Lcom/syu/bt/ctrl/CircleMenuView;->degree:D

    .line 25
    iput-wide v2, p0, Lcom/syu/bt/ctrl/CircleMenuView;->target:D

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->mDrawTime:J

    .line 29
    iput v4, p0, Lcom/syu/bt/ctrl/CircleMenuView;->toDirection:I

    .line 56
    iput v4, p0, Lcom/syu/bt/ctrl/CircleMenuView;->progress:I

    .line 42
    if-eqz p2, :cond_0

    .line 43
    iput-object p2, p0, Lcom/syu/bt/ctrl/CircleMenuView;->pointDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/syu/bt/ctrl/CircleMenuView;->initData()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide v4, 0x4061dd999999999aL    # 142.925

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->paint:Landroid/graphics/Paint;

    .line 24
    iput-wide v4, p0, Lcom/syu/bt/ctrl/CircleMenuView;->degree:D

    .line 25
    iput-wide v4, p0, Lcom/syu/bt/ctrl/CircleMenuView;->target:D

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->mDrawTime:J

    .line 29
    iput v2, p0, Lcom/syu/bt/ctrl/CircleMenuView;->toDirection:I

    .line 56
    iput v2, p0, Lcom/syu/bt/ctrl/CircleMenuView;->progress:I

    .line 36
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/syu/bt/ctrl/CircleMenuView;->setPadding(IIII)V

    .line 37
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->pointDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->rotatBitmap:Landroid/graphics/Bitmap;

    .line 51
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->rotatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->width:I

    .line 52
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->rotatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->height:I

    .line 53
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 54
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/syu/bt/ctrl/CircleMenuView;->target:D

    .line 63
    .local v8, "mTmpTarget":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/syu/bt/ctrl/CircleMenuView;->degree:D

    .line 64
    .local v6, "mTmpCurr":D
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/ctrl/CircleMenuView;->getDrawingTime()J

    move-result-wide v2

    .line 65
    .local v2, "currDrawTime":J
    const/4 v5, 0x0

    .line 66
    .local v5, "inva":Z
    cmpl-double v11, v6, v8

    if-eqz v11, :cond_1

    .line 67
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/syu/bt/ctrl/CircleMenuView;->mDrawTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_0

    .line 68
    const-wide/16 v12, 0x11

    sub-long v12, v2, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/syu/bt/ctrl/CircleMenuView;->mDrawTime:J

    .line 70
    :cond_0
    const/4 v5, 0x1

    .line 73
    :cond_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/syu/bt/ctrl/CircleMenuView;->mDrawTime:J

    sub-long v12, v2, v12

    const-wide/16 v14, 0x168

    mul-long/2addr v12, v14

    long-to-float v11, v12

    const/high16 v12, 0x43960000    # 300.0f

    div-float/2addr v11, v12

    float-to-int v11, v11

    int-to-float v4, v11

    .line 74
    .local v4, "dx":F
    const/4 v11, 0x0

    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {v13, v4}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 75
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/syu/bt/ctrl/CircleMenuView;->mDrawTime:J

    .line 77
    sub-double v12, v6, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v14, v11

    cmpg-double v11, v12, v14

    if-gtz v11, :cond_2

    .line 80
    const-wide/16 v12, 0x0

    const-wide v14, 0x4076800000000000L    # 360.0

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 81
    move-wide v8, v6

    .line 82
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/syu/bt/ctrl/CircleMenuView;->degree:D

    .line 84
    const/4 v5, 0x0

    .line 119
    :goto_0
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 120
    .local v10, "matrix":Landroid/graphics/Matrix;
    double-to-float v11, v6

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 122
    move-object/from16 v0, p0

    iget v11, v0, Lcom/syu/bt/ctrl/CircleMenuView;->width:I

    int-to-float v11, v11

    neg-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/syu/bt/ctrl/CircleMenuView;->height:I

    int-to-float v12, v12

    neg-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 123
    move-object/from16 v0, p0

    iget v11, v0, Lcom/syu/bt/ctrl/CircleMenuView;->width:I

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/syu/bt/ctrl/CircleMenuView;->height:I

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 124
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/syu/bt/ctrl/CircleMenuView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/syu/bt/ctrl/CircleMenuView;->rotatBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/ctrl/CircleMenuView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 127
    if-eqz v5, :cond_8

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/ctrl/CircleMenuView;->invalidate()V

    .line 133
    :goto_1
    return-void

    .line 88
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/syu/bt/ctrl/CircleMenuView;->toDirection:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 89
    const-wide v12, 0x4066800000000000L    # 180.0

    cmpl-double v11, v6, v12

    if-lez v11, :cond_4

    .line 90
    const-wide v12, 0x4076800000000000L    # 360.0

    sub-double/2addr v12, v6

    add-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x4076800000000000L    # 360.0

    sub-double/2addr v14, v6

    add-double/2addr v14, v8

    div-double/2addr v12, v14

    float-to-double v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    .line 95
    :goto_2
    const-wide v12, 0x4076800000000000L    # 360.0

    cmpl-double v11, v6, v12

    if-lez v11, :cond_3

    .line 96
    const-wide v12, 0x4076800000000000L    # 360.0

    rem-double v12, v6, v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 114
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/syu/bt/ctrl/CircleMenuView;->degree:D

    goto/16 :goto_0

    .line 92
    :cond_4
    sub-double v12, v6, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    sub-double v14, v8, v6

    div-double/2addr v12, v14

    float-to-double v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    goto :goto_2

    .line 97
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/syu/bt/ctrl/CircleMenuView;->toDirection:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    .line 98
    const-wide v12, 0x4066800000000000L    # 180.0

    cmpg-double v11, v6, v12

    if-gez v11, :cond_6

    .line 99
    const-wide v12, 0x4076800000000000L    # 360.0

    sub-double/2addr v12, v8

    add-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    sub-double v14, v8, v6

    const-wide v16, 0x4076800000000000L    # 360.0

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    float-to-double v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    .line 104
    :goto_4
    const-wide/16 v12, 0x0

    cmpg-double v11, v6, v12

    if-gtz v11, :cond_3

    .line 105
    const-wide v6, 0x4076800000000000L    # 360.0

    .line 106
    goto :goto_3

    .line 101
    :cond_6
    sub-double v12, v6, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    sub-double v14, v8, v6

    div-double/2addr v12, v14

    float-to-double v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    goto :goto_4

    .line 107
    :cond_7
    sub-double v12, v6, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    sub-double v14, v8, v6

    div-double/2addr v12, v14

    float-to-double v14, v4

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    goto :goto_3

    .line 130
    .restart local v10    # "matrix":Landroid/graphics/Matrix;
    :cond_8
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/syu/bt/ctrl/CircleMenuView;->toDirection:I

    .line 131
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/syu/bt/ctrl/CircleMenuView;->mDrawTime:J

    goto/16 :goto_1
.end method

.method public reDrawPic(D)V
    .locals 1
    .param p1, "degree"    # D

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/syu/bt/ctrl/CircleMenuView;->degree:D

    .line 137
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/CircleMenuView;->invalidate()V

    .line 138
    return-void
.end method

.method public reDrawPicByNum(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const-wide v6, 0x4068122d0e560419L    # 192.568

    const-wide v4, 0x404cfeb851eb851fL    # 57.99

    .line 143
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->toDirection:I

    .line 167
    iget-wide v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->degree:D

    iget-wide v2, p0, Lcom/syu/bt/ctrl/CircleMenuView;->target:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 168
    iget-wide v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->degree:D

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->target:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_2

    .line 169
    const/4 v0, 0x1

    iput v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->toDirection:I

    .line 173
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/CircleMenuView;->invalidate()V

    .line 175
    :cond_1
    return-void

    .line 156
    :pswitch_1
    sget-object v0, Lcom/syu/bt/ctrl/CircleMenuView;->degrees:[D

    add-int/lit16 v1, p1, -0x27a2

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->target:D

    goto :goto_0

    .line 159
    :pswitch_2
    sget-object v0, Lcom/syu/bt/ctrl/CircleMenuView;->degrees:[D

    sget-object v1, Lcom/syu/bt/ctrl/CircleMenuView;->degrees:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->target:D

    goto :goto_0

    .line 162
    :pswitch_3
    sget-object v0, Lcom/syu/bt/ctrl/CircleMenuView;->degrees:[D

    sget-object v1, Lcom/syu/bt/ctrl/CircleMenuView;->degrees:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->target:D

    goto :goto_0

    .line 170
    :cond_2
    iget-wide v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->degree:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->target:D

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_0

    .line 171
    const/4 v0, 0x2

    iput v0, p0, Lcom/syu/bt/ctrl/CircleMenuView;->toDirection:I

    goto :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch 0x27a2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
