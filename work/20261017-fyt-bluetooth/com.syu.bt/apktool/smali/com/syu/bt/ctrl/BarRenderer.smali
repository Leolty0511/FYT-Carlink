.class public Lcom/syu/bt/ctrl/BarRenderer;
.super Ljava/lang/Object;
.source "BarRenderer.java"


# static fields
.field private static final virtrulFrq:[[I

.field private static final virtrulFrq_2:[[I


# instance fields
.field private autoColor:Z

.field b:I

.field private barWidth:F

.field private colorCounter:F

.field private enableLine:Z

.field private f_height:I

.field g:I

.field private iStyle:I

.field private isTop:Z

.field private lineCnt:I

.field protected linePaint:Landroid/graphics/Paint;

.field private mBmpBar:Landroid/graphics/Bitmap;

.field private mBmpBarBk:Landroid/graphics/Bitmap;

.field private mGap:I

.field private mLasteFft:[F

.field private mLasteLine:[F

.field protected mLinePoints:[F

.field protected mLinePointsDown:[F

.field private mPaint:Landroid/graphics/Paint;

.field protected mPoints:[F

.field private mRandom:Ljava/util/Random;

.field private p_height:I

.field r:I

.field private times:[F

.field private virtrulData:[I

.field private virtrulScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x80

    const/16 v2, 0x40

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [[I

    .line 26
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 30
    aput-object v1, v0, v4

    .line 32
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    .line 36
    aput-object v1, v0, v5

    .line 38
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    .line 42
    aput-object v1, v0, v6

    const/4 v1, 0x3

    .line 44
    new-array v2, v2, [I

    fill-array-data v2, :array_3

    .line 48
    aput-object v2, v0, v1

    .line 25
    sput-object v0, Lcom/syu/bt/ctrl/BarRenderer;->virtrulFrq:[[I

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [[I

    .line 52
    new-array v1, v3, [I

    fill-array-data v1, :array_4

    .line 70
    aput-object v1, v0, v4

    .line 73
    new-array v1, v3, [I

    fill-array-data v1, :array_5

    .line 90
    aput-object v1, v0, v5

    .line 93
    new-array v1, v3, [I

    fill-array-data v1, :array_6

    .line 110
    aput-object v1, v0, v6

    const/4 v1, 0x3

    .line 113
    new-array v2, v3, [I

    fill-array-data v2, :array_7

    .line 130
    aput-object v2, v0, v1

    .line 51
    sput-object v0, Lcom/syu/bt/ctrl/BarRenderer;->virtrulFrq_2:[[I

    .line 132
    return-void

    .line 26
    :array_0
    .array-data 4
        0x14
        0x12
        0x18
        0x1a
        0x1c
        0x3d
        0x4c
        0x80
        0x8b
        0x70
        0x50
        0x44
        0x46
        0x37
        0x30
        0x3c
        0x1e
        0x20
        0x24
        0x2a
        0x26
        0x1e
        0x20
        0x1a
        0xf
        0xe
        0x16
        0x12
        0x1c
        0x1f
        0x2e
        0x18
        0x11
        0xe
        0xa
        0xa
        0xa
        0xa
        0x12
        0x16
        0x10
        0xa
        0xa
        0xa
        0xe
        0x11
        0xc
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xe
        0xc
        0x12
        0xa
        0xa
        0xa
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x20
        0x2d
        0x37
        0x3c
        0x34
        0x4c
        0x4e
        0x6e
        0x82
        0x76
        0x56
        0x46
        0x46
        0x42
        0x3e
        0x3c
        0x16
        0x12
        0x10
        0x1a
        0x12
        0x16
        0x28
        0x1a
        0xf
        0xe
        0x16
        0x12
        0x1c
        0x1f
        0x30
        0x18
        0x11
        0xe
        0xa
        0xa
        0xa
        0xa
        0x12
        0x16
        0x10
        0x16
        0x18
        0x14
        0x12
        0x11
        0xc
        0xe
        0xa
        0xa
        0xa
        0x12
        0x10
        0xe
        0xa
        0xa
        0xf
        0x10
        0xe
        0xc
        0x12
        0x14
        0x16
        0x14
    .end array-data

    .line 38
    :array_2
    .array-data 4
        0x2d
        0x27
        0x24
        0x26
        0x30
        0x3d
        0x4c
        0x80
        0x8b
        0x70
        0x48
        0x4b
        0x46
        0x37
        0x30
        0x3c
        0x16
        0x12
        0x10
        0x1a
        0x12
        0x16
        0x28
        0x1a
        0xf
        0xe
        0x16
        0x12
        0x1c
        0x1f
        0x26
        0x18
        0x11
        0xe
        0x10
        0x12
        0x18
        0xa
        0x12
        0x16
        0x10
        0xe
        0xc
        0xa
        0xe
        0x11
        0xc
        0xa
        0xa
        0xa
        0xe
        0x10
        0x12
        0xe
        0xa
        0xc
        0xe
        0xc
        0xa
        0xa
        0x12
        0x11
        0x14
        0xa
    .end array-data

    .line 44
    :array_3
    .array-data 4
        0x18
        0x16
        0x1c
        0x1e
        0x22
        0x30
        0x48
        0x82
        0x78
        0x74
        0x62
        0x5c
        0x44
        0x2d
        0x30
        0x3c
        0x4b
        0x4a
        0x44
        0x2c
        0x12
        0x16
        0x1e
        0x1a
        0x12
        0x18
        0x16
        0x18
        0x1c
        0x1f
        0x2d
        0x18
        0x11
        0xe
        0x14
        0x16
        0x12
        0x13
        0x12
        0x16
        0x18
        0x1a
        0x1e
        0x20
        0x1c
        0x18
        0x16
        0xe
        0x10
        0xc
        0xa
        0xa
        0xe
        0x10
        0xf
        0xc
        0x10
        0x12
        0xe
        0xc
        0x12
        0xa
        0xa
        0xa
    .end array-data

    .line 52
    :array_4
    .array-data 4
        0x14
        0x12
        0x18
        0x1a
        0x1c
        0x3d
        0x4c
        0x80
        0x8b
        0x70
        0x50
        0x44
        0x46
        0x37
        0x30
        0x3c
        0x1e
        0x20
        0x24
        0x2a
        0x26
        0x1e
        0x20
        0x1a
        0xf
        0xe
        0x16
        0x12
        0x1c
        0x1f
        0x2e
        0x18
        0x11
        0xe
        0xa
        0xa
        0xa
        0xa
        0x12
        0x16
        0x10
        0xa
        0xa
        0xa
        0xe
        0x11
        0xc
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xe
        0xc
        0x12
        0xa
        0xa
        0xa
        0xa
        0xa
        0xe
        0xc
        0x12
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0x10
        0xa
        0xa
        0xa
        0xe
        0x11
        0xc
        0xa
        0x11
        0xe
        0xa
        0xa
        0xa
        0xa
        0x12
        0x16
        0xf
        0xe
        0x16
        0x12
        0x1c
        0x1f
        0x2e
        0x18
        0x1e
        0x20
        0x24
        0x2a
        0x26
        0x1e
        0x20
        0x1a
        0x8b
        0x70
        0x50
        0x44
        0x46
        0x37
        0x30
        0x3c
        0x14
        0x12
        0x18
        0x1a
        0x1c
        0x3d
        0x4c
        0x80
    .end array-data

    .line 73
    :array_5
    .array-data 4
        0x20
        0x2d
        0x37
        0x3c
        0x34
        0x4c
        0x4e
        0x6e
        0x82
        0x76
        0x56
        0x46
        0x46
        0x42
        0x3e
        0x3c
        0x16
        0x12
        0x10
        0x1a
        0x12
        0x16
        0x28
        0x1a
        0xf
        0xe
        0x16
        0x12
        0x1c
        0x1f
        0x30
        0x18
        0x11
        0xe
        0xa
        0xa
        0xa
        0xa
        0x12
        0x16
        0x10
        0x16
        0x18
        0x14
        0x12
        0x11
        0xc
        0xe
        0xa
        0xa
        0xa
        0x12
        0x10
        0xe
        0xa
        0xa
        0xf
        0x10
        0xe
        0xc
        0x12
        0x14
        0x16
        0x14
        0xf
        0x10
        0xe
        0xc
        0x12
        0x14
        0x16
        0x14
        0xa
        0xa
        0xa
        0x12
        0x10
        0xe
        0xa
        0xa
        0x10
        0x16
        0x18
        0x14
        0x12
        0x11
        0xc
        0xe
        0x11
        0xe
        0xa
        0xa
        0xa
        0xa
        0x12
        0x16
        0xf
        0xe
        0x16
        0x12
        0x1c
        0x1f
        0x30
        0x18
        0x16
        0x12
        0x10
        0x1a
        0x12
        0x16
        0x28
        0x1a
        0x82
        0x76
        0x56
        0x46
        0x46
        0x42
        0x3e
        0x3c
        0x20
        0x2d
        0x37
        0x3c
        0x34
        0x4c
        0x4e
        0x6e
    .end array-data

    .line 93
    :array_6
    .array-data 4
        0x2d
        0x27
        0x24
        0x26
        0x30
        0x3d
        0x4c
        0x80
        0x8b
        0x70
        0x48
        0x4b
        0x46
        0x37
        0x30
        0x3c
        0x16
        0x12
        0x10
        0x1a
        0x12
        0x16
        0x28
        0x1a
        0xf
        0xe
        0x16
        0x12
        0x1c
        0x1f
        0x26
        0x18
        0x11
        0xe
        0x10
        0x12
        0x18
        0xa
        0x12
        0x16
        0x10
        0xe
        0xc
        0xa
        0xe
        0x11
        0xc
        0xa
        0xa
        0xa
        0xe
        0x10
        0x12
        0xe
        0xa
        0xc
        0xe
        0xc
        0xa
        0xa
        0x12
        0x11
        0x14
        0xa
        0xe
        0xc
        0xa
        0xa
        0x12
        0x11
        0x14
        0xa
        0xa
        0xa
        0xe
        0x10
        0x12
        0xe
        0xa
        0xc
        0x10
        0xe
        0xc
        0xa
        0xe
        0x11
        0xc
        0xa
        0x11
        0xe
        0x10
        0x12
        0x18
        0xa
        0x12
        0x16
        0xf
        0xe
        0x16
        0x12
        0x1c
        0x1f
        0x26
        0x18
        0x16
        0x12
        0x10
        0x1a
        0x12
        0x16
        0x28
        0x1a
        0x8b
        0x70
        0x48
        0x4b
        0x46
        0x37
        0x30
        0x3c
        0x2d
        0x27
        0x24
        0x26
        0x30
        0x3d
        0x4c
        0x80
    .end array-data

    .line 113
    :array_7
    .array-data 4
        0x18
        0x16
        0x1c
        0x1e
        0x22
        0x30
        0x48
        0x82
        0x78
        0x74
        0x62
        0x5c
        0x44
        0x2d
        0x30
        0x3c
        0x4b
        0x4a
        0x44
        0x2c
        0x12
        0x16
        0x1e
        0x1a
        0x12
        0x18
        0x16
        0x18
        0x1c
        0x1f
        0x2d
        0x18
        0x11
        0xe
        0x14
        0x16
        0x12
        0x13
        0x12
        0x16
        0x18
        0x1a
        0x1e
        0x20
        0x1c
        0x18
        0x16
        0xe
        0x10
        0xc
        0xa
        0xa
        0xe
        0x10
        0xf
        0xc
        0x10
        0x12
        0xe
        0xc
        0x12
        0xa
        0xa
        0xa
        0x10
        0x12
        0xe
        0xc
        0x12
        0xa
        0xa
        0xa
        0x10
        0xc
        0xa
        0xa
        0xe
        0x10
        0xf
        0xc
        0x18
        0x1a
        0x1e
        0x20
        0x1c
        0x18
        0x16
        0xe
        0x11
        0xe
        0x14
        0x16
        0x12
        0x13
        0x12
        0x16
        0x12
        0x18
        0x16
        0x18
        0x1c
        0x1f
        0x2d
        0x18
        0x4b
        0x4a
        0x44
        0x2c
        0x12
        0x16
        0x1e
        0x1a
        0x78
        0x74
        0x62
        0x5c
        0x44
        0x2d
        0x30
        0x3c
        0x18
        0x16
        0x1c
        0x1e
        0x22
        0x30
        0x48
        0x82
    .end array-data
.end method

.method public constructor <init>(FIIIZZZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "barwith"    # F
    .param p2, "gap"    # I
    .param p3, "f_height"    # I
    .param p4, "p_height"    # I
    .param p5, "line"    # Z
    .param p6, "top"    # Z
    .param p7, "auto"    # Z
    .param p8, "bmpBar"    # Landroid/graphics/Bitmap;
    .param p9, "bmpBarBk"    # Landroid/graphics/Bitmap;
    .param p10, "Cnt"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->iStyle:I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->colorCounter:F

    .line 136
    const/4 v0, 0x3

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->f_height:I

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->p_height:I

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->r:I

    .line 139
    const/16 v0, 0x40

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->g:I

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->b:I

    .line 142
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->barWidth:F

    .line 143
    const/4 v0, 0x2

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->mGap:I

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->isTop:Z

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteFft:[F

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->times:[F

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePoints:[F

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePointsDown:[F

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->mPaint:Landroid/graphics/Paint;

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->linePaint:Landroid/graphics/Paint;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->enableLine:Z

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->autoColor:Z

    .line 160
    const v0, 0x3f515151

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->virtrulScale:F

    .line 161
    const/16 v0, 0x40

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->lineCnt:I

    .line 164
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 165
    iput p1, p0, Lcom/syu/bt/ctrl/BarRenderer;->barWidth:F

    .line 167
    :cond_0
    if-ltz p2, :cond_1

    .line 168
    iput p2, p0, Lcom/syu/bt/ctrl/BarRenderer;->mGap:I

    .line 170
    :cond_1
    if-ltz p3, :cond_2

    .line 171
    iput p3, p0, Lcom/syu/bt/ctrl/BarRenderer;->f_height:I

    .line 173
    :cond_2
    if-ltz p4, :cond_3

    .line 174
    iput p4, p0, Lcom/syu/bt/ctrl/BarRenderer;->p_height:I

    .line 176
    :cond_3
    iput-boolean p5, p0, Lcom/syu/bt/ctrl/BarRenderer;->enableLine:Z

    .line 177
    iput-boolean p6, p0, Lcom/syu/bt/ctrl/BarRenderer;->isTop:Z

    .line 178
    iput-boolean p7, p0, Lcom/syu/bt/ctrl/BarRenderer;->autoColor:Z

    .line 179
    iput-object p8, p0, Lcom/syu/bt/ctrl/BarRenderer;->mBmpBar:Landroid/graphics/Bitmap;

    .line 180
    iput-object p9, p0, Lcom/syu/bt/ctrl/BarRenderer;->mBmpBarBk:Landroid/graphics/Bitmap;

    .line 181
    iput p10, p0, Lcom/syu/bt/ctrl/BarRenderer;->lineCnt:I

    .line 183
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/syu/bt/ctrl/BarRenderer;->init(I)V

    .line 184
    return-void
.end method

.method private autoColor()V
    .locals 7

    .prologue
    const/16 v6, 0xff

    const-wide/high16 v4, 0x4060000000000000L    # 128.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 399
    iget v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->colorCounter:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->r:I

    .line 400
    iget v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->colorCounter:F

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->g:I

    .line 401
    iget v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->colorCounter:F

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->b:I

    .line 402
    iget-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    iget v2, p0, Lcom/syu/bt/ctrl/BarRenderer;->r:I

    iget v3, p0, Lcom/syu/bt/ctrl/BarRenderer;->g:I

    iget v4, p0, Lcom/syu/bt/ctrl/BarRenderer;->b:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    iget-boolean v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->enableLine:Z

    if-eqz v0, :cond_1

    .line 404
    iget v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->r:I

    iget v1, p0, Lcom/syu/bt/ctrl/BarRenderer;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/syu/bt/ctrl/BarRenderer;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->r:I

    .line 405
    iget v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->r:I

    if-le v0, v6, :cond_0

    .line 406
    iput v6, p0, Lcom/syu/bt/ctrl/BarRenderer;->r:I

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/syu/bt/ctrl/BarRenderer;->r:I

    iget v2, p0, Lcom/syu/bt/ctrl/BarRenderer;->r:I

    iget v3, p0, Lcom/syu/bt/ctrl/BarRenderer;->r:I

    invoke-static {v6, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 411
    :cond_1
    iget v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->colorCounter:F

    float-to-double v0, v0

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->colorCounter:F

    .line 412
    return-void
.end method

.method private init(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    .line 187
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->mPaint:Landroid/graphics/Paint;

    .line 188
    iget-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/syu/bt/ctrl/BarRenderer;->barWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 189
    iget-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    iget-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    iget-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/syu/bt/ctrl/BarRenderer;->f_height:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    iget-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    iget-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->mRandom:Ljava/util/Random;

    .line 197
    return-void
.end method


# virtual methods
.method public onRender(Landroid/graphics/Canvas;FLandroid/graphics/Rect;)V
    .locals 38
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "data"    # F
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v19

    .line 206
    .local v19, "height":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->lineCnt:I

    const/16 v3, 0x40

    if-le v2, v3, :cond_8

    .line 207
    sget-object v2, Lcom/syu/bt/ctrl/BarRenderer;->virtrulFrq_2:[[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->mRandom:Ljava/util/Random;

    sget-object v4, Lcom/syu/bt/ctrl/BarRenderer;->virtrulFrq_2:[[I

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->virtrulData:[I

    .line 211
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->virtrulData:[I

    array-length v11, v2

    .line 212
    .local v11, "cnt":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteFft:[F

    if-nez v2, :cond_0

    .line 213
    new-array v2, v11, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteFft:[F

    .line 215
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    array-length v2, v2

    mul-int/lit8 v3, v11, 0x8

    if-ge v2, v3, :cond_2

    .line 216
    :cond_1
    mul-int/lit8 v2, v11, 0x8

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    .line 218
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->times:[F

    if-nez v2, :cond_3

    .line 219
    new-array v2, v11, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->times:[F

    .line 221
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->enableLine:Z

    if-eqz v2, :cond_6

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    if-nez v2, :cond_4

    .line 223
    new-array v2, v11, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    .line 225
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePoints:[F

    if-nez v2, :cond_5

    .line 226
    mul-int/lit8 v2, v11, 0x8

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePoints:[F

    .line 228
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->iStyle:I

    if-lez v2, :cond_6

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePointsDown:[F

    if-nez v2, :cond_6

    .line 230
    mul-int/lit8 v2, v11, 0x8

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePointsDown:[F

    .line 234
    :cond_6
    move/from16 v28, p2

    .line 235
    .local v28, "scale":F
    const v2, 0x3c03126f    # 0.008f

    cmpg-float v2, v28, v2

    if-gez v2, :cond_9

    const/16 v32, 0x0

    .line 236
    .local v32, "zoom":F
    :goto_1
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    move/from16 v0, v20

    if-lt v0, v11, :cond_a

    .line 309
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mBmpBar:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1d

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mBmpBarBk:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 312
    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    if-lt v0, v11, :cond_19

    .line 396
    :cond_7
    :goto_4
    return-void

    .line 209
    .end local v11    # "cnt":I
    .end local v20    # "i":I
    .end local v28    # "scale":F
    .end local v32    # "zoom":F
    :cond_8
    sget-object v2, Lcom/syu/bt/ctrl/BarRenderer;->virtrulFrq:[[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->mRandom:Ljava/util/Random;

    sget-object v4, Lcom/syu/bt/ctrl/BarRenderer;->virtrulFrq:[[I

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->virtrulData:[I

    goto/16 :goto_0

    .line 235
    .restart local v11    # "cnt":I
    .restart local v28    # "scale":F
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->virtrulScale:F

    sub-float v2, v2, v28

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v32

    goto :goto_1

    .line 237
    .restart local v20    # "i":I
    .restart local v32    # "zoom":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v5, v20, 0x4

    add-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/syu/bt/ctrl/BarRenderer;->mGap:I

    mul-int v6, v6, v20

    int-to-float v6, v6

    mul-int/lit8 v7, v20, 0x2

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/ctrl/BarRenderer;->barWidth:F

    move/from16 v33, v0

    mul-float v7, v7, v33

    const/high16 v33, 0x40000000    # 2.0f

    div-float v7, v7, v33

    add-float/2addr v6, v7

    aput v6, v4, v5

    aput v6, v2, v3

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->virtrulData:[I

    aget v2, v2, v20

    int-to-float v2, v2

    mul-float v2, v2, v28

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->virtrulData:[I

    aget v3, v3, v20

    int-to-float v3, v3

    mul-float v3, v3, v32

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/bt/ctrl/BarRenderer;->virtrulData:[I

    aget v6, v6, v20

    neg-int v6, v6

    int-to-float v6, v6

    mul-float v6, v6, v32

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    float-to-double v6, v3

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->virtrulData:[I

    aget v3, v3, v20

    neg-int v3, v3

    int-to-float v3, v3

    mul-float v3, v3, v32

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v3, v6

    float-to-double v6, v3

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v3, v4

    add-float v31, v2, v3

    .line 239
    .local v31, "value":F
    const/4 v2, 0x0

    cmpg-float v2, v31, v2

    if-gez v2, :cond_b

    const/16 v31, 0x0

    .line 240
    :cond_b
    const v2, -0x44bb645a    # -0.003f

    mul-float v2, v2, v31

    const v3, 0x3f80624e    # 1.003f

    add-float/2addr v2, v3

    mul-float v2, v2, v31

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    move/from16 v0, v19

    int-to-float v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x43820000    # 260.0f

    div-float v31, v2, v3

    .line 242
    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->f_height:I

    int-to-float v2, v2

    add-float v2, v2, v31

    move-object/from16 v0, p0

    iget v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->p_height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-int/lit8 v3, v19, -0xa

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_c

    .line 243
    add-int/lit8 v2, v19, -0xa

    move-object/from16 v0, p0

    iget v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->f_height:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->p_height:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v31, v0

    .line 245
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteFft:[F

    aget v2, v2, v20

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_f

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteFft:[F

    aput v31, v2, v20

    .line 257
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->enableLine:Z

    if-eqz v2, :cond_d

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    aget v2, v2, v20

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_12

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    const/high16 v3, 0x40000000    # 2.0f

    add-float v3, v3, v31

    aput v3, v2, v20

    .line 266
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePoints:[F

    mul-int/lit8 v3, v20, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v5, v20, 0x4

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/syu/bt/ctrl/BarRenderer;->barWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v5, v20, 0x4

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/syu/bt/ctrl/BarRenderer;->barWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 268
    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->iStyle:I

    if-lez v2, :cond_d

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePointsDown:[F

    mul-int/lit8 v3, v20, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v5, v20, 0x4

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/syu/bt/ctrl/BarRenderer;->barWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePointsDown:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v5, v20, 0x4

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/syu/bt/ctrl/BarRenderer;->barWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 274
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->isTop:Z

    if-eqz v2, :cond_14

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteFft:[F

    aget v4, v4, v20

    aput v4, v2, v3

    .line 278
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->enableLine:Z

    if-eqz v2, :cond_e

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePoints:[F

    mul-int/lit8 v5, v20, 0x4

    add-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    aget v6, v6, v20

    aput v6, v4, v5

    aput v6, v2, v3

    .line 280
    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->iStyle:I

    if-lez v2, :cond_e

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePointsDown:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePointsDown:[F

    mul-int/lit8 v5, v20, 0x4

    add-int/lit8 v5, v5, 0x3

    move/from16 v0, v19

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    aget v7, v7, v20

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    aput v6, v4, v5

    aput v6, v2, v3

    .line 236
    :cond_e
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 248
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteFft:[F

    aget v2, v2, v20

    cmpl-float v2, v2, v31

    if-lez v2, :cond_11

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteFft:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteFft:[F

    aget v3, v3, v20

    float-to-double v4, v3

    const-wide v6, 0x4003333340000000L    # 2.4000000953674316

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->times:[F

    aget v3, v3, v20

    float-to-double v0, v3

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v34

    mul-double v6, v6, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v6, v6, v34

    sub-double/2addr v4, v6

    double-to-float v3, v4

    aput v3, v2, v20

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->times:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->times:[F

    aget v2, v2, v20

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_10

    const/high16 v2, 0x3f000000    # 0.5f

    :goto_8
    aput v2, v3, v20

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->times:[F

    aget v2, v2, v20

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    goto :goto_8

    .line 252
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->times:[F

    const/4 v3, 0x0

    aput v3, v2, v20

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteFft:[F

    aput v31, v2, v20

    goto/16 :goto_5

    .line 261
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    aget v2, v2, v20

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v31

    if-lez v2, :cond_13

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    aget v3, v3, v20

    float-to-double v4, v3

    const-wide v6, 0x3ff3333340000000L    # 1.2000000476837158

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->times:[F

    aget v3, v3, v20

    float-to-double v0, v3

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v34

    mul-double v6, v6, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v6, v6, v34

    sub-double/2addr v4, v6

    double-to-float v3, v4

    aput v3, v2, v20

    goto/16 :goto_6

    .line 264
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    const/high16 v3, 0x40000000    # 2.0f

    add-float v3, v3, v31

    aput v3, v2, v20

    goto/16 :goto_6

    .line 285
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v19

    int-to-float v4, v0

    aput v4, v2, v3

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x3

    move/from16 v0, v19

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteFft:[F

    aget v5, v5, v20

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 288
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->enableLine:Z

    if-eqz v2, :cond_e

    .line 289
    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->iStyle:I

    if-lez v2, :cond_18

    .line 290
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    aget v2, v2, v20

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_16

    div-int/lit8 v2, v19, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    aget v3, v3, v20

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v14, v2, v3

    .line 292
    .local v14, "ff":F
    :goto_9
    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v2, v14, v2

    if-gez v2, :cond_15

    .line 293
    const/high16 v14, 0x40000000    # 2.0f

    .line 295
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePoints:[F

    mul-int/lit8 v5, v20, 0x4

    add-int/lit8 v5, v5, 0x3

    aput v14, v4, v5

    aput v14, v2, v3

    .line 301
    .end local v14    # "ff":F
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePointsDown:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePointsDown:[F

    mul-int/lit8 v5, v20, 0x4

    add-int/lit8 v5, v5, 0x3

    div-int/lit8 v6, v19, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    aget v7, v7, v20

    const/high16 v33, 0x40000000    # 2.0f

    div-float v7, v7, v33

    add-float/2addr v6, v7

    aput v6, v4, v5

    aput v6, v2, v3

    goto/16 :goto_7

    .line 291
    :cond_16
    div-int/lit8 v2, v19, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    aget v3, v3, v20

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    sub-float v14, v2, v3

    goto :goto_9

    .line 298
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePoints:[F

    mul-int/lit8 v5, v20, 0x4

    add-int/lit8 v5, v5, 0x3

    div-int/lit8 v6, v19, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    aget v7, v7, v20

    const/high16 v33, 0x40000000    # 2.0f

    div-float v7, v7, v33

    sub-float/2addr v6, v7

    aput v6, v4, v5

    aput v6, v2, v3

    goto :goto_a

    .line 303
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePoints:[F

    mul-int/lit8 v5, v20, 0x4

    add-int/lit8 v5, v5, 0x3

    move/from16 v0, v19

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLasteLine:[F

    aget v7, v7, v20

    sub-float/2addr v6, v7

    aput v6, v4, v5

    aput v6, v2, v3

    goto/16 :goto_7

    .line 313
    .end local v31    # "value":F
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    float-to-int v10, v2

    .line 314
    .local v10, "bottom":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    float-to-int v0, v2

    move/from16 v30, v0

    .line 316
    .local v30, "top":I
    sub-int v2, v10, v30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->mBmpBarBk:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int v24, v2, v3

    .line 317
    .local v24, "nDot":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mBmpBarBk:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int v25, v19, v2

    .line 318
    .local v25, "nDotMax":I
    if-gtz v24, :cond_1a

    .line 319
    const/16 v24, 0x1

    .line 321
    :cond_1a
    move/from16 v10, v19

    .line 322
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_b
    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_1b

    .line 312
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 323
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mBmpBar:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v30, v10, v2

    .line 325
    new-instance v29, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/bt/ctrl/BarRenderer;->mBmpBar:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syu/bt/ctrl/BarRenderer;->mBmpBar:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 326
    .local v29, "src":Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    aget v2, v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v4, v20, 0x4

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/syu/bt/ctrl/BarRenderer;->barWidth:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v0, v30

    invoke-direct {v13, v2, v0, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 327
    .local v13, "dst":Landroid/graphics/Rect;
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1c

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mBmpBar:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1, v13, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 332
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mBmpBar:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v10, v2

    .line 322
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 330
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mBmpBarBk:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1, v13, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_c

    .line 337
    .end local v10    # "bottom":I
    .end local v13    # "dst":Landroid/graphics/Rect;
    .end local v23    # "j":I
    .end local v24    # "nDot":I
    .end local v25    # "nDotMax":I
    .end local v29    # "src":Landroid/graphics/Rect;
    .end local v30    # "top":I
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->autoColor:Z

    if-eqz v2, :cond_1e

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/syu/bt/ctrl/BarRenderer;->autoColor()V

    .line 340
    :cond_1e
    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    if-lt v0, v11, :cond_20

    .line 383
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/syu/bt/ctrl/BarRenderer;->enableLine:Z

    .line 384
    .local v12, "drawline":Z
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 385
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bBtAvPlayState:Z

    if-nez v2, :cond_1f

    .line 386
    const/4 v12, 0x0

    .line 389
    :cond_1f
    if-eqz v12, :cond_7

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePoints:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 391
    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->iStyle:I

    if-lez v2, :cond_7

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mLinePointsDown:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 342
    .end local v12    # "drawline":Z
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->iStyle:I

    if-lez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    div-int/lit8 v17, v2, 0x2

    .line 343
    .local v17, "hLineBase":I
    :goto_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->iStyle:I

    if-lez v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    div-int/lit8 v18, v2, 0x2

    .line 344
    .local v18, "hLineBase2":I
    :goto_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->iStyle:I

    if-lez v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v21, v2, v3

    .line 345
    .local v21, "iDest":F
    :goto_10
    move/from16 v22, v21

    .line 346
    .local v22, "iDestCopy":F
    move/from16 v0, v17

    int-to-float v2, v0

    cmpl-float v2, v2, v21

    if-eqz v2, :cond_21

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 348
    move/from16 v0, v17

    int-to-float v2, v0

    cmpl-float v2, v2, v22

    if-lez v2, :cond_21

    if-lez v17, :cond_21

    .line 350
    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41a00000    # 20.0f

    move/from16 v0, v17

    int-to-float v4, v0

    sub-float v4, v4, v22

    const/high16 v5, 0x42480000    # 50.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v22, v22, v2

    .line 354
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/ctrl/BarRenderer;->r:I

    move/from16 v26, v0

    .local v26, "red":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/syu/bt/ctrl/BarRenderer;->g:I

    .local v15, "green":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/syu/bt/ctrl/BarRenderer;->b:I

    .line 355
    .local v8, "blue":I
    :goto_11
    move/from16 v0, v17

    int-to-float v2, v0

    cmpl-float v2, v2, v22

    if-lez v2, :cond_22

    if-gtz v17, :cond_27

    .line 368
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/ctrl/BarRenderer;->r:I

    move/from16 v27, v0

    .local v27, "red2":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/ctrl/BarRenderer;->g:I

    move/from16 v16, v0

    .local v16, "green2":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/syu/bt/ctrl/BarRenderer;->b:I

    .line 369
    .local v9, "blue2":I
    :goto_12
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v4, v20, 0x4

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    sub-float v3, v3, v21

    cmpg-float v2, v2, v3

    if-gez v2, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->iStyle:I

    if-gtz v2, :cond_2b

    .line 340
    :cond_23
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_d

    .line 342
    .end local v8    # "blue":I
    .end local v9    # "blue2":I
    .end local v15    # "green":I
    .end local v16    # "green2":I
    .end local v17    # "hLineBase":I
    .end local v18    # "hLineBase2":I
    .end local v21    # "iDest":F
    .end local v22    # "iDestCopy":F
    .end local v26    # "red":I
    .end local v27    # "red2":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    float-to-int v0, v2

    move/from16 v17, v0

    goto/16 :goto_e

    .line 343
    .restart local v17    # "hLineBase":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    float-to-int v0, v2

    move/from16 v18, v0

    goto/16 :goto_f

    .line 344
    .restart local v18    # "hLineBase2":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v21, v2, v3

    goto/16 :goto_10

    .line 356
    .restart local v8    # "blue":I
    .restart local v15    # "green":I
    .restart local v21    # "iDest":F
    .restart local v22    # "iDestCopy":F
    .restart local v26    # "red":I
    :cond_27
    add-int/lit8 v2, v15, 0x4

    const/16 v3, 0xff

    if-ge v2, v3, :cond_28

    add-int/lit8 v15, v15, 0x4

    .line 357
    :goto_13
    add-int/lit8 v2, v8, 0x2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_29

    add-int/lit8 v8, v8, 0x2

    .line 359
    :goto_14
    const/16 v2, 0x1e

    move/from16 v0, v26

    if-ge v0, v2, :cond_2a

    const/16 v2, 0x1e

    if-ge v15, v2, :cond_2a

    const/16 v2, 0x1e

    if-ge v8, v2, :cond_2a

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const/16 v5, 0xa0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    aget v3, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->f_height:I

    sub-int v2, v17, v2

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v5, v20, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v5, v2, v5

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 365
    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->f_height:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->p_height:I

    add-int/2addr v2, v3

    sub-int v17, v17, v2

    goto/16 :goto_11

    .line 356
    :cond_28
    const/16 v15, 0xff

    goto :goto_13

    .line 357
    :cond_29
    const/16 v8, 0xff

    goto :goto_14

    .line 362
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v26

    invoke-static {v0, v15, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_15

    .line 370
    .restart local v9    # "blue2":I
    .restart local v16    # "green2":I
    .restart local v27    # "red2":I
    :cond_2b
    add-int/lit8 v2, v16, 0x4

    const/16 v3, 0xff

    if-ge v2, v3, :cond_2c

    add-int/lit8 v16, v16, 0x4

    .line 371
    :goto_16
    add-int/lit8 v2, v9, 0x2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_2d

    add-int/lit8 v9, v9, 0x2

    .line 373
    :goto_17
    const/16 v2, 0x1e

    move/from16 v0, v27

    if-ge v0, v2, :cond_2e

    const/16 v2, 0x1e

    move/from16 v0, v16

    if-ge v0, v2, :cond_2e

    const/16 v2, 0x1e

    if-ge v9, v2, :cond_2e

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const/16 v5, 0xa0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 378
    :goto_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v3, v20, 0x4

    aget v3, v2, v3

    move/from16 v0, v18

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPoints:[F

    mul-int/lit8 v5, v20, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v5, v2, v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->f_height:I

    add-int v2, v2, v18

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 379
    move-object/from16 v0, p0

    iget v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->f_height:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/syu/bt/ctrl/BarRenderer;->p_height:I

    add-int/2addr v2, v3

    add-int v18, v18, v2

    goto/16 :goto_12

    .line 370
    :cond_2c
    const/16 v16, 0xff

    goto :goto_16

    .line 371
    :cond_2d
    const/16 v9, 0xff

    goto :goto_17

    .line 376
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/ctrl/BarRenderer;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v27

    move/from16 v1, v16

    invoke-static {v0, v1, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_18
.end method

.method protected render(Landroid/graphics/Canvas;FLandroid/graphics/Rect;I)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "data"    # F
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "style"    # I

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/syu/bt/ctrl/BarRenderer;->onRender(Landroid/graphics/Canvas;FLandroid/graphics/Rect;)V

    .line 22
    iput p4, p0, Lcom/syu/bt/ctrl/BarRenderer;->iStyle:I

    .line 23
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/syu/bt/ctrl/BarRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    return-void
.end method
