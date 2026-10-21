.class public Lcom/lsec/core/frame/ctrl/JIndicator;
.super Landroid/view/View;
.source "JIndicator.java"


# instance fields
.field bAttached:Z

.field bWillSetIconName:Z

.field bWillUpdateBackground:Z

.field private current:I

.field drawable_focus:Landroid/graphics/drawable/Drawable;

.field drawable_normal:Landroid/graphics/drawable/Drawable;

.field private group:Landroid/view/ViewGroup;

.field private height:I

.field iconNames:[Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmap_Focus:Landroid/graphics/Bitmap;

.field private mBitmap_Normal:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field public mDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mLastX:F

.field private mLastY:F

.field mStrDrawable:Ljava/lang/String;

.field private mWidth:I

.field private page:Lcom/lsec/core/frame/ctrl/JPage;

.field private space:I

.field private total:I

.field private width:I

.field private xindex:I

.field private yindex:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 3
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bAttached:Z

    .line 21
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bWillUpdateBackground:Z

    .line 22
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bWillSetIconName:Z

    .line 34
    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mBitmap_Normal:Landroid/graphics/Bitmap;

    .line 36
    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mBitmap_Focus:Landroid/graphics/Bitmap;

    .line 37
    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mCanvas:Landroid/graphics/Canvas;

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->total:I

    .line 39
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->current:I

    .line 43
    const/4 v0, 0x5

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->space:I

    .line 44
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->xindex:I

    .line 45
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->yindex:I

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mDrawables:Ljava/util/HashMap;

    .line 52
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 53
    return-void
.end method


# virtual methods
.method protected Drawing(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 111
    iget v3, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->total:I

    if-gtz v3, :cond_0

    .line 127
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 116
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->xindex:I

    .line 117
    .local v1, "left":I
    iget v3, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->width:I

    iget v4, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->space:I

    add-int v2, v3, v4

    .line 118
    .local v2, "per":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget v3, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->total:I

    if-lt v0, v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 119
    :cond_1
    iget v3, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->current:I

    if-ne v0, v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mBitmap_Focus:Landroid/graphics/Bitmap;

    int-to-float v5, v1

    iget v6, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->yindex:I

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    :goto_2
    add-int/2addr v1, v2

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :cond_2
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mBitmap_Normal:Landroid/graphics/Bitmap;

    int-to-float v5, v1

    iget v6, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->yindex:I

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public Findindex(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "index":I
    :goto_0
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->total:I

    if-lt v0, v2, :cond_1

    .line 199
    :cond_0
    :goto_1
    return-void

    .line 190
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->xindex:I

    iget v3, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->width:I

    iget v4, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->space:I

    add-int/2addr v3, v4

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->xindex:I

    iget v5, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->width:I

    iget v6, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->space:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->width:I

    add-int/2addr v4, v5

    .line 191
    iget v5, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mHeight:I

    .line 190
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 192
    .local v1, "mRect":Landroid/graphics/Rect;
    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->current:I

    if-eq v2, v0, :cond_0

    .line 194
    iput v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->current:I

    goto :goto_1

    .line 189
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public InitIndicator()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->drawable_normal:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->drawable_normal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JIndicator;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mBitmap_Normal:Landroid/graphics/Bitmap;

    .line 76
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->drawable_focus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JIndicator;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mBitmap_Focus:Landroid/graphics/Bitmap;

    .line 77
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mBitmap_Normal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->width:I

    .line 78
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mBitmap_Normal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->height:I

    .line 80
    :cond_0
    return-void
.end method

.method public getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 69
    .local v1, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 70
    .local v0, "h":I
    invoke-static {p1, v1, v0}, Lcom/lsec/core/util/FuncUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public isCilck(FFFFJJJ)Z
    .locals 9
    .param p1, "mlastX"    # F
    .param p2, "mlastY"    # F
    .param p3, "thisX"    # F
    .param p4, "thisY"    # F
    .param p5, "DownTime"    # J
    .param p7, "thiseventtime"    # J
    .param p9, "longPresstime"    # J

    .prologue
    .line 172
    sub-float v5, p1, p3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 173
    .local v2, "offsetx":F
    sub-float v5, p2, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 174
    .local v3, "offsety":F
    sub-long v6, p7, p5

    long-to-float v4, v6

    .line 175
    .local v4, "validtime":F
    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_0

    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_0

    move-wide/from16 v0, p9

    long-to-float v5, v0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    .line 176
    const/4 v5, 0x1

    .line 178
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bAttached:Z

    .line 230
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 231
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bWillUpdateBackground:Z

    .line 232
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JIndicator;->updateBackground()V

    .line 235
    :cond_0
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bWillSetIconName:Z

    if-eqz v0, :cond_1

    .line 236
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bWillSetIconName:Z

    .line 237
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->iconNames:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JIndicator;->setIconName([Ljava/lang/String;)V

    .line 240
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 241
    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mLastX:F

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mLastY:F

    invoke-virtual {p0, v0, v1}, Lcom/lsec/core/frame/ctrl/JIndicator;->Findindex(FF)V

    .line 183
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->group:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/lsec/core/frame/ctrl/JListApp;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->group:Landroid/view/ViewGroup;

    check-cast v0, Lcom/lsec/core/frame/ctrl/JListApp;

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->current:I

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JListApp;->snapToScreen(I)V

    .line 185
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bAttached:Z

    .line 246
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 247
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JIndicator;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mWidth:I

    .line 94
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JIndicator;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mHeight:I

    .line 95
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mWidth:I

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->width:I

    iget v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->total:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->xindex:I

    .line 96
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mHeight:I

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->height:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->yindex:I

    .line 97
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->xindex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->yindex:I

    if-gez v0, :cond_1

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mWidth is not enough! mWidth must be more than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->width:I

    iget v3, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->total:I

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    const-string v2, "or mHeight is not enough! mHeight must be more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->xindex:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->xindex:I

    .line 102
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->yindex:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->yindex:I

    .line 103
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mWidth:I

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mBitmap:Landroid/graphics/Bitmap;

    .line 104
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mCanvas:Landroid/graphics/Canvas;

    .line 106
    :cond_2
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/ctrl/JIndicator;->Drawing(Landroid/graphics/Canvas;)V

    .line 107
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 84
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 86
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JIndicator;->InitIndicator()V

    .line 88
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v4, v1

    .line 132
    .local v4, "touchX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v5, v1

    .line 133
    .local v5, "touchY":F
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->xindex:I

    int-to-float v1, v1

    cmpg-float v1, v4, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mWidth:I

    iget v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->xindex:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v4, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, v5, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mHeight:I

    int-to-float v1, v1

    cmpl-float v1, v5, v1

    if-lez v1, :cond_1

    .line 134
    :cond_0
    const/4 v1, 0x0

    .line 152
    :goto_0
    return v1

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 137
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 152
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 139
    :pswitch_1
    iput v4, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mLastX:F

    .line 140
    iput v5, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mLastY:F

    goto :goto_1

    .line 147
    :pswitch_2
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mLastX:F

    iget v3, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mLastY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/lsec/core/frame/ctrl/JIndicator;->isCilck(FFFFJJJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JIndicator;->onClick()V

    goto :goto_1

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrent(I)V
    .locals 0
    .param p1, "current"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->current:I

    .line 161
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JIndicator;->invalidate()V

    .line 162
    return-void
.end method

.method public setIconName([Ljava/lang/String;)V
    .locals 5
    .param p1, "iconNames"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 56
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->iconNames:[Ljava/lang/String;

    .line 57
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bAttached:Z

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->page:Lcom/lsec/core/frame/ctrl/JPage;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->drawable_normal:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->page:Lcom/lsec/core/frame/ctrl/JPage;

    aget-object v1, p1, v3

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->drawable_focus:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 64
    :cond_1
    iput-boolean v3, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bWillSetIconName:Z

    goto :goto_0
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bWillUpdateBackground:Z

    .line 203
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mStrDrawable:Ljava/lang/String;

    .line 204
    if-eqz p2, :cond_0

    .line 205
    if-nez p1, :cond_1

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JIndicator;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JIndicator;->updateBackground()V

    goto :goto_0
.end method

.method public setTarget(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "pageView"    # Landroid/view/ViewGroup;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->group:Landroid/view/ViewGroup;

    .line 157
    return-void
.end method

.method public setTotal(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->total:I

    .line 166
    const/4 v0, 0x0

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->current:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->total:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->current:I

    .line 167
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JIndicator;->invalidate()V

    .line 168
    return-void
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 213
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bAttached:Z

    if-nez v1, :cond_1

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bWillUpdateBackground:Z

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->bWillUpdateBackground:Z

    .line 219
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mStrDrawable:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JIndicator;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JIndicator;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
