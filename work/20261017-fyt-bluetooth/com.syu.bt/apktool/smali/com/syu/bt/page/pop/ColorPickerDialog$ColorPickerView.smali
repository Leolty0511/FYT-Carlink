.class Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/pop/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorPickerView"
.end annotation


# instance fields
.field private centerRadius:F

.field private downInCircle:Z

.field private downInRect:Z

.field private highlightCenter:Z

.field private highlightCenterLittle:Z

.field private mCenterPaint:Landroid/graphics/Paint;

.field private final mCircleColors:[I

.field private mHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintText:Landroid/graphics/Paint;

.field private final mRectColors:[I

.field private mRectPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private r:F

.field private rectBottom:F

.field private rectLeft:F

.field private rectRight:F

.field private rectShader:Landroid/graphics/Shader;

.field private rectTop:F

.field final synthetic this$0:Lcom/syu/bt/page/pop/ColorPickerDialog;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/pop/ColorPickerDialog;Landroid/content/Context;II)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "height"    # I
    .param p4, "width"    # I

    .prologue
    const v7, 0x3f333333    # 0.7f

    const v6, 0x3da3d70a    # 0.08f

    const/4 v3, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    .line 100
    iput-object p1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->this$0:Lcom/syu/bt/page/pop/ColorPickerDialog;

    .line 101
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 95
    iput-boolean v4, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->downInCircle:Z

    .line 104
    add-int/lit8 v1, p3, -0x24

    iput v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mHeight:I

    .line 105
    iput p4, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mWidth:I

    .line 106
    add-int/lit8 v1, p3, -0x24

    invoke-virtual {p0, v1}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->setMinimumHeight(I)V

    .line 107
    invoke-virtual {p0, p4}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->setMinimumWidth(I)V

    .line 110
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCircleColors:[I

    .line 112
    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCircleColors:[I

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 113
    .local v0, "s":Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    .line 114
    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 115
    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    iget v2, p1, Lcom/syu/bt/page/pop/ColorPickerDialog;->dlg_height:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    div-int/lit8 v1, p4, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v7

    iget-object v2, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->r:F

    .line 121
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    .line 122
    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/syu/bt/page/pop/ColorPickerDialog;->access$0(Lcom/syu/bt/page/pop/ColorPickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->r:F

    iget-object v2, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, v7

    iput v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->centerRadius:F

    .line 127
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    .line 128
    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    aput v3, v1, v2

    iget-object v2, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x2

    const/4 v3, -0x1

    aput v3, v1, v2

    iput-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mRectColors:[I

    .line 133
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mRectPaint:Landroid/graphics/Paint;

    .line 134
    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mRectPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    iget v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->r:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectLeft:F

    .line 136
    iget v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->r:F

    iget-object v2, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 137
    iget-object v2, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iget v2, p1, Lcom/syu/bt/page/pop/ColorPickerDialog;->dlg_height:I

    int-to-float v2, v2

    const v3, 0x3d8f5c29    # 0.07f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 136
    iput v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectTop:F

    .line 138
    iget v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->r:F

    iget-object v2, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectRight:F

    .line 139
    iget v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectTop:F

    iget v2, p1, Lcom/syu/bt/page/pop/ColorPickerDialog;->dlg_height:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectBottom:F

    .line 141
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaintText:Landroid/graphics/Paint;

    .line 142
    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaintText:Landroid/graphics/Paint;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaintText:Landroid/graphics/Paint;

    iget v2, p1, Lcom/syu/bt/page/pop/ColorPickerDialog;->dlg_height:I

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 144
    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaintText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 145
    return-void

    .line 110
    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method private ave(IIF)I
    .locals 1
    .param p1, "s"    # I
    .param p2, "d"    # I
    .param p3, "p"    # F

    .prologue
    .line 371
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private inCenter(FFF)Z
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "centerRadius"    # F

    .prologue
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    .line 293
    float-to-double v4, p3

    mul-double/2addr v4, v8

    float-to-double v6, p3

    mul-double v0, v4, v6

    .line 294
    .local v0, "centerCircle":D
    mul-float v4, p1, p1

    mul-float v5, p2, p2

    add-float/2addr v4, v5

    float-to-double v4, v4

    mul-double v2, v8, v4

    .line 295
    .local v2, "fingerCircle":D
    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    .line 296
    const/4 v4, 0x1

    .line 298
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private inColorCircle(FFFF)Z
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outRadius"    # F
    .param p4, "inRadius"    # F

    .prologue
    .line 275
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    float-to-double v8, p3

    mul-double/2addr v6, v8

    float-to-double v8, p3

    mul-double v4, v6, v8

    .line 276
    .local v4, "outCircle":D
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    float-to-double v8, p4

    mul-double/2addr v6, v8

    float-to-double v8, p4

    mul-double v2, v6, v8

    .line 277
    .local v2, "inCircle":D
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-float v8, p1, p1

    mul-float v9, p2, p2

    add-float/2addr v8, v9

    float-to-double v8, v8

    mul-double v0, v6, v8

    .line 278
    .local v0, "fingerCircle":D
    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    .line 279
    const/4 v6, 0x1

    .line 281
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private inRect(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 309
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectRight:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectLeft:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectBottom:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectTop:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 310
    const/4 v0, 0x1

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private interpCircleColor([IF)I
    .locals 10
    .param p1, "colors"    # [I
    .param p2, "unit"    # F

    .prologue
    .line 323
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gtz v8, :cond_0

    .line 324
    const/4 v8, 0x0

    aget v8, p1, v8

    .line 342
    :goto_0
    return v8

    .line 326
    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p2, v8

    if-ltz v8, :cond_1

    .line 327
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    aget v8, p1, v8

    goto :goto_0

    .line 330
    :cond_1
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float v6, p2, v8

    .line 331
    .local v6, "p":F
    float-to-int v5, v6

    .line 332
    .local v5, "i":I
    int-to-float v8, v5

    sub-float/2addr v6, v8

    .line 335
    aget v2, p1, v5

    .line 336
    .local v2, "c0":I
    add-int/lit8 v8, v5, 0x1

    aget v3, p1, v8

    .line 337
    .local v3, "c1":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v0

    .line 338
    .local v0, "a":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v7

    .line 339
    .local v7, "r":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v4

    .line 340
    .local v4, "g":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v1

    .line 342
    .local v1, "b":I
    invoke-static {v0, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    goto :goto_0
.end method

.method private interpRectColor([IF)I
    .locals 9
    .param p1, "colors"    # [I
    .param p2, "x"    # F

    .prologue
    const/4 v8, 0x1

    .line 354
    const/4 v7, 0x0

    cmpg-float v7, p2, v7

    if-gez v7, :cond_0

    .line 355
    const/4 v7, 0x0

    aget v2, p1, v7

    .line 356
    .local v2, "c0":I
    aget v3, p1, v8

    .line 357
    .local v3, "c1":I
    iget v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectRight:F

    add-float/2addr v7, p2

    iget v8, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectRight:F

    div-float v5, v7, v8

    .line 363
    .local v5, "p":F
    :goto_0
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-direct {p0, v7, v8, v5}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v0

    .line 364
    .local v0, "a":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-direct {p0, v7, v8, v5}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v6

    .line 365
    .local v6, "r":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-direct {p0, v7, v8, v5}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v4

    .line 366
    .local v4, "g":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-direct {p0, v7, v8, v5}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v1

    .line 367
    .local v1, "b":I
    invoke-static {v0, v6, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    return v7

    .line 359
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "c0":I
    .end local v3    # "c1":I
    .end local v4    # "g":I
    .end local v5    # "p":F
    .end local v6    # "r":I
    :cond_0
    aget v2, p1, v8

    .line 360
    .restart local v2    # "c0":I
    const/4 v7, 0x2

    aget v3, p1, v7

    .line 361
    .restart local v3    # "c1":I
    iget v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectRight:F

    div-float v5, p2, v7

    .restart local v5    # "p":F
    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 150
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mHeight:I

    int-to-float v1, v1

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->centerRadius:F

    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 154
    iget-boolean v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    if-eqz v0, :cond_2

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    .line 156
    .local v8, "c":I
    iget-object v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iget-boolean v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    if-eqz v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 163
    :cond_1
    :goto_0
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->centerRadius:F

    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    .line 162
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 165
    iget-object v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    iget-object v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    .end local v8    # "c":I
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->r:F

    neg-float v1, v1

    iget v3, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->r:F

    neg-float v3, v3

    iget v4, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->r:F

    iget v5, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->r:F

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 174
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->this$0:Lcom/syu/bt/page/pop/ColorPickerDialog;

    iget v1, v1, Lcom/syu/bt/page/pop/ColorPickerDialog;->dlg_height:I

    int-to-float v1, v1

    const v3, 0x3c8b4396    # 0.017f

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 176
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v1, "bt_bt_color"

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->this$0:Lcom/syu/bt/page/pop/ColorPickerDialog;

    iget v1, v1, Lcom/syu/bt/page/pop/ColorPickerDialog;->dlg_height:I

    neg-int v1, v1

    int-to-float v1, v1

    const v3, 0x3ebd70a4    # 0.37f

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 179
    iget-boolean v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->downInCircle:Z

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mRectColors:[I

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    aput v3, v0, v1

    .line 182
    :cond_3
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectLeft:F

    iget v3, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectRight:F

    iget-object v5, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mRectColors:[I

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectShader:Landroid/graphics/Shader;

    .line 183
    iget-object v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mRectPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 184
    iget v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectLeft:F

    iget v2, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectTop:F

    iget v3, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectRight:F

    iget v4, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectBottom:F

    iget-object v5, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 185
    iget-object v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float v9, v0, v10

    .line 186
    .local v9, "offset":F
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectLeft:F

    sub-float v1, v0, v9

    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectTop:F

    mul-float v2, v9, v10

    sub-float v2, v0, v2

    .line 187
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectLeft:F

    sub-float v3, v0, v9

    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectBottom:F

    mul-float v4, v9, v10

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 186
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 188
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectLeft:F

    mul-float v1, v9, v10

    sub-float v1, v0, v1

    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectTop:F

    sub-float v2, v0, v9

    .line 189
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectRight:F

    mul-float v3, v9, v10

    add-float/2addr v3, v0

    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectTop:F

    sub-float v4, v0, v9

    iget-object v5, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 188
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 190
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectRight:F

    add-float v1, v0, v9

    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectTop:F

    mul-float v2, v9, v10

    sub-float v2, v0, v2

    .line 191
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectRight:F

    add-float v3, v0, v9

    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectBottom:F

    mul-float v4, v9, v10

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 190
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 192
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectLeft:F

    mul-float v1, v9, v10

    sub-float v1, v0, v1

    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectBottom:F

    add-float v2, v0, v9

    .line 193
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectRight:F

    mul-float v3, v9, v10

    add-float/2addr v3, v0

    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->rectBottom:F

    add-float v4, v0, v9

    iget-object v5, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 192
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 194
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    return-void

    .line 159
    .end local v9    # "offset":F
    .restart local v8    # "c":I
    :cond_4
    iget-boolean v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 263
    iget v0, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mWidth:I

    iget v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mHeight:I

    invoke-super {p0, v0, v1}, Landroid/view/View;->onMeasure(II)V

    .line 264
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v5, v7, v8

    .line 200
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mHeight:I

    int-to-float v8, v8

    const v9, 0x3ee66666    # 0.45f

    mul-float/2addr v8, v9

    sub-float v6, v7, v8

    .line 202
    .local v6, "y":F
    iget v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->r:F

    iget-object v8, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    iget v8, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->r:F

    iget-object v9, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    .line 201
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->inColorCircle(FFFF)Z

    move-result v2

    .line 203
    .local v2, "inCircle":Z
    iget v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->centerRadius:F

    invoke-direct {p0, v5, v6, v7}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->inCenter(FFF)Z

    move-result v1

    .line 204
    .local v1, "inCenter":Z
    invoke-direct {p0, v5, v6}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->inRect(FF)Z

    move-result v3

    .line 206
    .local v3, "inRect":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 258
    :goto_0
    return v13

    .line 208
    :pswitch_0
    iput-boolean v2, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->downInCircle:Z

    .line 209
    iput-boolean v3, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->downInRect:Z

    .line 210
    iput-boolean v1, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    .line 212
    :pswitch_1
    iget-boolean v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->downInCircle:Z

    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    .line 213
    float-to-double v8, v6

    float-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v0, v8

    .line 214
    .local v0, "angle":F
    float-to-double v8, v0

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v8, v10

    double-to-float v4, v8

    .line 215
    .local v4, "unit":F
    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_0

    .line 216
    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v4, v7

    .line 218
    :cond_0
    iget-object v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCircleColors:[I

    invoke-direct {p0, v8, v4}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->interpCircleColor([IF)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    const-string v7, "ColorPicker"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u8272\u73af\u5185, \u5750\u6807: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "angle":F
    .end local v4    # "unit":F
    :cond_1
    :goto_1
    const-string v7, "ColorPicker"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[MOVE] \u9ad8\u4eae: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5fae\u4eae: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u4e2d\u5fc3: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-boolean v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    if-eqz v7, :cond_2

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    if-eqz v7, :cond_5

    if-eqz v1, :cond_5

    .line 225
    :cond_3
    iput-boolean v13, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    .line 226
    iput-boolean v12, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    .line 234
    :goto_2
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto/16 :goto_0

    .line 220
    :cond_4
    iget-boolean v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->downInRect:Z

    if-eqz v7, :cond_1

    if-eqz v3, :cond_1

    .line 221
    iget-object v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mRectColors:[I

    invoke-direct {p0, v8, v5}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->interpRectColor([IF)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 227
    :cond_5
    iget-boolean v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    if-eqz v7, :cond_7

    .line 228
    :cond_6
    iput-boolean v12, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    .line 229
    iput-boolean v13, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    goto :goto_2

    .line 231
    :cond_7
    iput-boolean v12, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    .line 232
    iput-boolean v12, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    goto :goto_2

    .line 237
    :pswitch_2
    iget-boolean v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    if-eqz v7, :cond_8

    if-eqz v1, :cond_8

    .line 238
    iget-object v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->this$0:Lcom/syu/bt/page/pop/ColorPickerDialog;

    invoke-static {v7}, Lcom/syu/bt/page/pop/ColorPickerDialog;->access$1(Lcom/syu/bt/page/pop/ColorPickerDialog;)Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 239
    iget-object v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->this$0:Lcom/syu/bt/page/pop/ColorPickerDialog;

    invoke-static {v7}, Lcom/syu/bt/page/pop/ColorPickerDialog;->access$1(Lcom/syu/bt/page/pop/ColorPickerDialog;)Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;

    move-result-object v7

    iget-object v8, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 240
    iget-object v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->this$0:Lcom/syu/bt/page/pop/ColorPickerDialog;

    invoke-virtual {v7}, Lcom/syu/bt/page/pop/ColorPickerDialog;->dismiss()V

    .line 243
    :cond_8
    iget-boolean v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->downInCircle:Z

    if-eqz v7, :cond_9

    .line 244
    iput-boolean v12, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->downInCircle:Z

    .line 246
    :cond_9
    iget-boolean v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->downInRect:Z

    if-eqz v7, :cond_a

    .line 247
    iput-boolean v12, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->downInRect:Z

    .line 249
    :cond_a
    iget-boolean v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    if-eqz v7, :cond_b

    .line 250
    iput-boolean v12, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenter:Z

    .line 252
    :cond_b
    iget-boolean v7, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    if-eqz v7, :cond_c

    .line 253
    iput-boolean v12, p0, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->highlightCenterLittle:Z

    .line 255
    :cond_c
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto/16 :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
