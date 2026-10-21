.class public Lcom/lsec/core/frame/ctrl/JSeekBar;
.super Landroid/view/View;
.source "JSeekBar.java"


# instance fields
.field bAttached:Z

.field public bCanSeekAble:Z

.field public bClickDown:Z

.field public bDrawMidTxt:Z

.field bWillSetIconName:Z

.field bWillUpdateBackground:Z

.field private bmp_seekbar:Landroid/graphics/Bitmap;

.field private bmp_seekbar_focus:Landroid/graphics/Bitmap;

.field private bmp_thumb:Landroid/graphics/Bitmap;

.field private bmp_txtBK:Landroid/graphics/Bitmap;

.field drawable_seekbar:Landroid/graphics/drawable/Drawable;

.field drawable_seekbar_focus:Landroid/graphics/drawable/Drawable;

.field drawable_thumb:Landroid/graphics/drawable/Drawable;

.field drawable_txtBk:Landroid/graphics/drawable/Drawable;

.field private fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field public hExtraTxt:I

.field public hExtraTxtBk:I

.field public hLine:I

.field iconNames:[Ljava/lang/String;

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

.field public mMax:I

.field public mMin:I

.field public mMinDisp:I

.field public mPosMin:I

.field public mPosTarget:I

.field public mProgress:I

.field private mScaleX:F

.field private mScaleY:F

.field public mStep:F

.field mStrDrawable:Ljava/lang/String;

.field private mTextSize:F

.field public mValDisp:[I

.field public mValue:I

.field private mVertical:Z

.field public page:Lcom/lsec/core/frame/ctrl/JPage;

.field private paint:Landroid/graphics/Paint;

.field public rec_seekBar:Landroid/graphics/Rect;

.field public rec_thumb:Landroid/graphics/Rect;

.field public rec_txtMax:Landroid/graphics/Rect;

.field public rec_txtMin:Landroid/graphics/Rect;

.field public szThumb:I


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 3
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 71
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bAttached:Z

    .line 21
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bWillUpdateBackground:Z

    .line 22
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bWillSetIconName:Z

    .line 25
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bClickDown:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bCanSeekAble:Z

    .line 27
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bDrawMidTxt:Z

    .line 44
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mTextSize:F

    .line 45
    iput v2, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mScaleX:F

    .line 46
    iput v2, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mScaleY:F

    .line 48
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    .line 49
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mValue:I

    .line 50
    const v0, 0xf4240

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    .line 51
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->hExtraTxt:I

    .line 52
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->hExtraTxtBk:I

    .line 53
    const/4 v0, 0x5

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->hLine:I

    .line 56
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mVertical:Z

    .line 57
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mProgress:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStep:F

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMin:I

    .line 60
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    .line 61
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosMin:I

    .line 62
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mDrawables:Ljava/util/HashMap;

    .line 72
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 73
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->calcStep()V

    .line 74
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->init()V

    .line 75
    return-void
.end method


# virtual methods
.method public calcStep()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStep:F

    .line 97
    :cond_0
    return-void
.end method

.method public calcValue(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 141
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mVertical:Z

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStep:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mValue:I

    .line 146
    :goto_0
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mValue:I

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    if-le v0, v1, :cond_0

    .line 147
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mValue:I

    .line 149
    :cond_0
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mValue:I

    if-gez v0, :cond_1

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mValue:I

    .line 152
    :cond_1
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mValue:I

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setProgress(I)V

    .line 153
    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStep:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mValue:I

    goto :goto_0
.end method

.method public getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scaleX"    # F
    .param p3, "scaleY"    # F

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    const/4 v2, 0x0

    .line 165
    :goto_0
    return-object v2

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v1, v2

    .line 164
    .local v1, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v0, v2

    .line 165
    .local v0, "h":I
    invoke-static {p1, v1, v0}, Lcom/lsec/core/util/FuncUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mValue:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 209
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    .line 210
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 211
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 212
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 213
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 214
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bAttached:Z

    .line 445
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 446
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bWillUpdateBackground:Z

    .line 447
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->updateBackground()V

    .line 450
    :cond_0
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bWillSetIconName:Z

    if-eqz v0, :cond_1

    .line 451
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bWillSetIconName:Z

    .line 452
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->iconNames:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setIconName([Ljava/lang/String;)V

    .line 455
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 456
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bAttached:Z

    .line 461
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 462
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 225
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_seekbar:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMax:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 228
    add-int/2addr v1, v2

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 228
    sub-int v7, v1, v2

    .line 231
    .local v7, "baseline":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mValDisp:[I

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mValDisp:[I

    array-length v1, v1

    if-lez v1, :cond_7

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mValDisp:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v1, 0x0

    move v15, v1

    :goto_0
    move/from16 v0, v17

    if-lt v15, v0, :cond_6

    .line 270
    .end local v7    # "baseline":I
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_seekbar:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 277
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mVertical:Z

    if-eqz v1, :cond_b

    .line 278
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMin:I

    if-ltz v1, :cond_a

    .line 279
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosMin:I

    .line 280
    .local v11, "min":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    .line 281
    .local v10, "max":I
    if-le v11, v10, :cond_1

    .line 282
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    .line 283
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosMin:I

    .line 286
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 286
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 307
    .end local v10    # "max":I
    .end local v11    # "min":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_seekbar_focus:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 311
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mVertical:Z

    if-eqz v1, :cond_e

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_thumb:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_thumb:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_thumb:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_thumb:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_thumb:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    .line 313
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 315
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMin:I

    if-ltz v1, :cond_2

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_thumb:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_thumb:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosMin:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_thumb:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_thumb:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    .line 316
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 320
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    if-eqz v1, :cond_4

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v8, v1, v2

    .line 322
    .local v8, "iTopTxt":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_txtBK:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_txtBK:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v3, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 326
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 325
    add-int/2addr v1, v8

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 325
    sub-int v7, v1, v2

    .line 329
    .restart local v7    # "baseline":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mProgress:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 331
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMin:I

    if-ltz v1, :cond_4

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosMin:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v8, v1, v2

    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 333
    add-int/2addr v1, v8

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 333
    sub-int v7, v1, v2

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMin:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 369
    .end local v7    # "baseline":I
    .end local v8    # "iTopTxt":I
    :cond_4
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 371
    :cond_5
    return-void

    .line 232
    .restart local v7    # "baseline":I
    :cond_6
    aget v14, v16, v15

    .line 233
    .local v14, "val":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    add-int/2addr v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStep:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 234
    int-to-float v3, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    .line 233
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStep:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    div-int/lit8 v2, v2, 0x2

    add-int v9, v1, v2

    .line 237
    .local v9, "left":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    .line 238
    .local v13, "top":I
    int-to-float v2, v9

    int-to-float v3, v13

    add-int/lit8 v1, v9, 0x2

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->hLine:I

    add-int/2addr v1, v13

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    goto/16 :goto_0

    .line 241
    .end local v9    # "left":I
    .end local v13    # "top":I
    .end local v14    # "val":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mVertical:Z

    if-nez v1, :cond_8

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    .line 243
    .local v12, "textWidth":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v12, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v2, v3

    int-to-float v3, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 247
    .end local v12    # "textWidth":F
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMax:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMax:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMax:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 247
    add-int/2addr v1, v2

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 247
    sub-int v7, v1, v2

    .line 250
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mVertical:Z

    if-nez v1, :cond_9

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    .line 252
    .restart local v12    # "textWidth":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMax:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v12, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    int-to-float v3, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 253
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bDrawMidTxt:Z

    if-eqz v1, :cond_0

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMax:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v12, v3

    sub-float/2addr v2, v3

    int-to-float v3, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    .line 255
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 245
    .end local v12    # "textWidth":F
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 259
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMax:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 260
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bDrawMidTxt:Z

    if-eqz v1, :cond_0

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMax:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMax:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMax:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 261
    add-int/2addr v1, v2

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 261
    sub-int v7, v1, v2

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMax:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 289
    .end local v7    # "baseline":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 289
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_2

    .line 292
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMin:I

    if-ltz v1, :cond_d

    .line 293
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosMin:I

    .line 294
    .restart local v11    # "min":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    .line 295
    .restart local v10    # "max":I
    if-le v11, v10, :cond_c

    .line 296
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    .line 297
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosMin:I

    .line 300
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 300
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_2

    .line 303
    .end local v10    # "max":I
    .end local v11    # "min":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 303
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_2

    .line 341
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_thumb:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_f

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_thumb:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_thumb:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 343
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMin:I

    if-ltz v1, :cond_f

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_thumb:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosMin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_thumb:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 347
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    if-eqz v1, :cond_4

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_txtBK:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_10

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_txtBK:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->hExtraTxtBk:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    .line 349
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 351
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMin:I

    if-ltz v1, :cond_10

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_txtBK:Landroid/graphics/Bitmap;

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosMin:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->hExtraTxtBk:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    .line 352
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 357
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->hExtraTxt:I

    add-int/2addr v1, v2

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_txtMin:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 357
    add-int/2addr v1, v2

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 357
    sub-int v7, v1, v2

    .line 361
    .restart local v7    # "baseline":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mProgress:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v7

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    .line 361
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 363
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMin:I

    if-ltz v1, :cond_4

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMin:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosMin:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v7

    .line 365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    .line 364
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 170
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 172
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->drawable_seekbar:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->drawable_seekbar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->drawable_seekbar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mVertical:Z

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->drawable_seekbar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mScaleX:F

    .line 177
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->drawable_seekbar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mScaleY:F

    .line 182
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->drawable_seekbar:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mScaleX:F

    iget v2, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mScaleY:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JSeekBar;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_seekbar:Landroid/graphics/Bitmap;

    .line 183
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->drawable_seekbar_focus:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mScaleX:F

    iget v2, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mScaleY:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JSeekBar;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_seekbar_focus:Landroid/graphics/Bitmap;

    .line 184
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->drawable_thumb:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mScaleX:F

    iget v2, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mScaleY:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JSeekBar;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_thumb:Landroid/graphics/Bitmap;

    .line 186
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->drawable_txtBk:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v1, v1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v1, v1, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v2, v2, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JSeekBar;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_txtBK:Landroid/graphics/Bitmap;

    .line 188
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mVertical:Z

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_thumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStep:F

    .line 200
    :goto_0
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStep:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    .line 201
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mTextSize:F

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mScaleY:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mTextSize:F

    .line 202
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 203
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 206
    :cond_2
    return-void

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_thumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bmp_thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->rec_seekBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->szThumb:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStep:F

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 375
    iget-boolean v4, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bCanSeekAble:Z

    if-nez v4, :cond_1

    .line 376
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 413
    :cond_0
    :goto_0
    return v3

    .line 378
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 379
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 380
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 382
    :pswitch_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 384
    iput-boolean v3, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bClickDown:Z

    .line 385
    invoke-virtual {p0, v1, v2}, Lcom/lsec/core/frame/ctrl/JSeekBar;->calcValue(II)V

    .line 387
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 388
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0, p0}, Lcom/lsec/core/frame/page/IPageNotify;->ResponseClick(Landroid/view/View;)V

    goto :goto_0

    .line 393
    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :pswitch_1
    iget-boolean v4, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bClickDown:Z

    if-eqz v4, :cond_0

    .line 394
    invoke-virtual {p0, v1, v2}, Lcom/lsec/core/frame/ctrl/JSeekBar;->calcValue(II)V

    .line 396
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 397
    .restart local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_0

    .line 398
    invoke-interface {v0, p0}, Lcom/lsec/core/frame/page/IPageNotify;->ResponseClick(Landroid/view/View;)V

    goto :goto_0

    .line 404
    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :pswitch_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bClickDown:Z

    .line 405
    invoke-virtual {p0, v1, v2}, Lcom/lsec/core/frame/ctrl/JSeekBar;->calcValue(II)V

    .line 407
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 408
    .restart local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0, p0}, Lcom/lsec/core/frame/page/IPageNotify;->ResponseClick(Landroid/view/View;)V

    goto :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setIconName([Ljava/lang/String;)V
    .locals 7
    .param p1, "iconNames"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->iconNames:[Ljava/lang/String;

    .line 79
    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bAttached:Z

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->drawable_seekbar:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    aget-object v1, p1, v4

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->drawable_seekbar_focus:Landroid/graphics/drawable/Drawable;

    .line 85
    array-length v0, p1

    if-le v0, v5, :cond_2

    .line 86
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    aget-object v1, p1, v5

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->drawable_thumb:Landroid/graphics/drawable/Drawable;

    .line 88
    :cond_2
    array-length v0, p1

    if-le v0, v6, :cond_0

    .line 89
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    aget-object v1, p1, v6

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->drawable_txtBk:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 91
    :cond_3
    iput-boolean v4, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bWillSetIconName:Z

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 120
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    .line 121
    .local v0, "pos":I
    if-gez p1, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 123
    const/4 p1, 0x0

    .line 126
    :cond_0
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    if-le p1, v1, :cond_1

    .line 127
    iget p1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    .line 129
    :cond_1
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mProgress:I

    .line 130
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mProgress:I

    iput v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mValue:I

    .line 131
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStep:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 132
    int-to-float v1, p1

    iget v2, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStep:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 134
    :cond_2
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    if-eq v1, v0, :cond_3

    .line 135
    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosTarget:I

    .line 136
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->invalidate()V

    .line 138
    :cond_3
    return-void
.end method

.method public setProgressMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 100
    if-lez p1, :cond_0

    .line 101
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMax:I

    .line 102
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->calcStep()V

    .line 104
    :cond_0
    return-void
.end method

.method public setProgressMin(I)V
    .locals 3
    .param p1, "min"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMin:I

    .line 108
    int-to-float v1, p1

    iget v2, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStep:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 109
    .local v0, "posMin":I
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosMin:I

    if-eq v1, v0, :cond_0

    .line 110
    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mPosMin:I

    .line 111
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->invalidate()V

    .line 113
    :cond_0
    return-void
.end method

.method public setProgressMinDisp(I)V
    .locals 0
    .param p1, "minDisp"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mMinDisp:I

    .line 117
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bWillUpdateBackground:Z

    .line 418
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStrDrawable:Ljava/lang/String;

    .line 419
    if-eqz p2, :cond_0

    .line 420
    if-nez p1, :cond_1

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->updateBackground()V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 217
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mTextSize:F

    .line 218
    return-void
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 428
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bAttached:Z

    if-nez v1, :cond_1

    .line 429
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bWillUpdateBackground:Z

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->bWillUpdateBackground:Z

    .line 434
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mStrDrawable:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSeekBar;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 437
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
