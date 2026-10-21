.class public Lcom/lsec/core/frame/ctrl/JLine;
.super Landroid/view/View;
.source "JLine.java"


# instance fields
.field bAttached:Z

.field bWillUpdateBackground:Z

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

.field private mPaint:Landroid/graphics/Paint;

.field mStrDrawable:Ljava/lang/String;

.field public page:Lcom/lsec/core/frame/ctrl/JPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JLine;->bAttached:Z

    .line 16
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JLine;->bWillUpdateBackground:Z

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JLine;->mDrawables:Ljava/util/HashMap;

    .line 21
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/JLine;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 22
    invoke-direct {p0}, Lcom/lsec/core/frame/ctrl/JLine;->Init()V

    .line 23
    return-void
.end method

.method private Init()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JLine;->mPaint:Landroid/graphics/Paint;

    .line 27
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JLine;->bAttached:Z

    .line 84
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JLine;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JLine;->bWillUpdateBackground:Z

    .line 86
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JLine;->updateBackground()V

    .line 89
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 90
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JLine;->bAttached:Z

    .line 95
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 96
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JLine;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JLine;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JLine;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JLine;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JLine;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JLine;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 35
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 36
    if-le p1, p2, :cond_1

    .line 37
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JLine;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 43
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JLine;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JLine;->bWillUpdateBackground:Z

    .line 57
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JLine;->mStrDrawable:Ljava/lang/String;

    .line 58
    if-eqz p2, :cond_0

    .line 59
    if-nez p1, :cond_1

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JLine;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JLine;->updateBackground()V

    goto :goto_0
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 67
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JLine;->bAttached:Z

    if-nez v1, :cond_1

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JLine;->bWillUpdateBackground:Z

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JLine;->bWillUpdateBackground:Z

    .line 73
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JLine;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JLine;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JLine;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JLine;->mStrDrawable:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JLine;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JLine;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JLine;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
