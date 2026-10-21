.class public Lcom/syu/bt/ctrl/JSpecView;
.super Landroid/view/View;
.source "JSpecView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/ctrl/JSpecView$ElectricReader;
    }
.end annotation


# instance fields
.field private data:F

.field private iStyle:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mHandler:Landroid/os/Handler;

.field private mRect:Landroid/graphics/Rect;

.field private mRenderer:Lcom/syu/bt/ctrl/BarRenderer;

.field private mTimer:Ljava/util/Timer;

.field private readElec:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;FIIILcom/lsec/core/frame/app/MyUiItem;II)V
    .locals 11
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "barwidth"    # F
    .param p3, "gap"    # I
    .param p4, "h1"    # I
    .param p5, "h2"    # I
    .param p6, "item"    # Lcom/lsec/core/frame/app/MyUiItem;
    .param p7, "Cnt"    # I
    .param p8, "style"    # I

    .prologue
    .line 44
    iget-object v1, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/syu/bt/ctrl/JSpecView;->mBitmap:Landroid/graphics/Bitmap;

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/syu/bt/ctrl/JSpecView;->mCanvas:Landroid/graphics/Canvas;

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/syu/bt/ctrl/JSpecView;->mRect:Landroid/graphics/Rect;

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/syu/bt/ctrl/JSpecView;->mRenderer:Lcom/syu/bt/ctrl/BarRenderer;

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/syu/bt/ctrl/JSpecView;->mTimer:Ljava/util/Timer;

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/syu/bt/ctrl/JSpecView;->readElec:Ljava/util/TimerTask;

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/syu/bt/ctrl/JSpecView;->iStyle:I

    .line 33
    new-instance v1, Lcom/syu/bt/ctrl/JSpecView$1;

    invoke-direct {v1, p0}, Lcom/syu/bt/ctrl/JSpecView$1;-><init>(Lcom/syu/bt/ctrl/JSpecView;)V

    iput-object v1, p0, Lcom/syu/bt/ctrl/JSpecView;->mHandler:Landroid/os/Handler;

    .line 45
    const/4 v9, 0x0

    .line 46
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    .line 47
    .local v10, "drawableBk":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p6 .. p6}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual/range {p6 .. p6}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p1, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 49
    invoke-virtual/range {p6 .. p6}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 50
    invoke-virtual/range {p6 .. p6}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p1, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 53
    :cond_0
    const/4 v6, 0x0

    .line 54
    .local v6, "bmp":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_1

    .line 55
    iget-object v1, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v1, v1, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 56
    iget-object v2, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v2, v2, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 55
    invoke-static {v9, v1, v2}, Lcom/lsec/core/util/FuncUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 58
    :cond_1
    const/4 v7, 0x0

    .line 59
    .local v7, "bmpBk":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_2

    .line 60
    iget-object v1, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v1, v1, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 61
    iget-object v2, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v2, v2, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 60
    invoke-static {v10, v1, v2}, Lcom/lsec/core/util/FuncUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_2
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v8, p7

    .line 62
    invoke-direct/range {v1 .. v8}, Lcom/syu/bt/ctrl/JSpecView;->init(FIIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 63
    move/from16 v0, p8

    iput v0, p0, Lcom/syu/bt/ctrl/JSpecView;->iStyle:I

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/syu/bt/ctrl/JSpecView;F)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/syu/bt/ctrl/JSpecView;->data:F

    return-void
.end method

.method static synthetic access$1(Lcom/syu/bt/ctrl/JSpecView;)F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/syu/bt/ctrl/JSpecView;->data:F

    return v0
.end method

.method static synthetic access$2(Lcom/syu/bt/ctrl/JSpecView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init(FIIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 11
    .param p1, "barwidth"    # F
    .param p2, "gap"    # I
    .param p3, "h1"    # I
    .param p4, "h2"    # I
    .param p5, "bmpBar"    # Landroid/graphics/Bitmap;
    .param p6, "bmpBarBk"    # Landroid/graphics/Bitmap;
    .param p7, "Cnt"    # I

    .prologue
    .line 67
    new-instance v0, Lcom/syu/bt/ctrl/BarRenderer;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/syu/bt/ctrl/BarRenderer;-><init>(FIIIZZZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 68
    .local v0, "barRenderer":Lcom/syu/bt/ctrl/BarRenderer;
    invoke-virtual {p0, v0}, Lcom/syu/bt/ctrl/JSpecView;->setElecRenderer(Lcom/syu/bt/ctrl/BarRenderer;)V

    .line 69
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JSpecView;->enable()V

    .line 70
    return-void
.end method


# virtual methods
.method public disEnable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->readElec:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 85
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->readElec:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 86
    iput-object v1, p0, Lcom/syu/bt/ctrl/JSpecView;->readElec:Ljava/util/TimerTask;

    .line 87
    iput-object v1, p0, Lcom/syu/bt/ctrl/JSpecView;->mTimer:Ljava/util/Timer;

    .line 89
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 6

    .prologue
    .line 73
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->mTimer:Ljava/util/Timer;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->readElec:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Lcom/syu/bt/ctrl/JSpecView$ElectricReader;

    invoke-direct {v0, p0}, Lcom/syu/bt/ctrl/JSpecView$ElectricReader;-><init>(Lcom/syu/bt/ctrl/JSpecView;)V

    iput-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->readElec:Ljava/util/TimerTask;

    .line 78
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/syu/bt/ctrl/JSpecView;->readElec:Ljava/util/TimerTask;

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 80
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 120
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->mRenderer:Lcom/syu/bt/ctrl/BarRenderer;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->mRenderer:Lcom/syu/bt/ctrl/BarRenderer;

    iget-object v1, p0, Lcom/syu/bt/ctrl/JSpecView;->mCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/syu/bt/ctrl/JSpecView;->data:F

    iget-object v3, p0, Lcom/syu/bt/ctrl/JSpecView;->mRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/syu/bt/ctrl/JSpecView;->iStyle:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/syu/bt/ctrl/BarRenderer;->render(Landroid/graphics/Canvas;FLandroid/graphics/Rect;I)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 127
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 110
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JSpecView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JSpecView;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->mRect:Landroid/graphics/Rect;

    .line 113
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JSpecView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JSpecView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->mBitmap:Landroid/graphics/Bitmap;

    .line 114
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/syu/bt/ctrl/JSpecView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/syu/bt/ctrl/JSpecView;->mCanvas:Landroid/graphics/Canvas;

    .line 116
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JSpecView;->disEnable()V

    .line 93
    return-void
.end method

.method public setElecRenderer(Lcom/syu/bt/ctrl/BarRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/syu/bt/ctrl/BarRenderer;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/syu/bt/ctrl/JSpecView;->mRenderer:Lcom/syu/bt/ctrl/BarRenderer;

    .line 97
    return-void
.end method
