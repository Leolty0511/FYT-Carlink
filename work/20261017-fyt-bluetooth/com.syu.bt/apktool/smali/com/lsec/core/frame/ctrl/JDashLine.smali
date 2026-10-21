.class public Lcom/lsec/core/frame/ctrl/JDashLine;
.super Landroid/view/View;
.source "JDashLine.java"


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

.field mPath:Landroid/graphics/Path;

.field mPathEffects:Landroid/graphics/PathEffect;

.field mStrDrawable:Ljava/lang/String;

.field public page:Lcom/lsec/core/frame/ctrl/JPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->bAttached:Z

    .line 19
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->bWillUpdateBackground:Z

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mDrawables:Ljava/util/HashMap;

    .line 22
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPathEffects:Landroid/graphics/PathEffect;

    .line 26
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 27
    invoke-direct {p0}, Lcom/lsec/core/frame/ctrl/JDashLine;->Init()V

    .line 28
    return-void

    .line 22
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private Init()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPaint:Landroid/graphics/Paint;

    .line 32
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->bAttached:Z

    .line 96
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->bWillUpdateBackground:Z

    .line 98
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JDashLine;->updateBackground()V

    .line 101
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 102
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->bAttached:Z

    .line 107
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 108
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPathEffects:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 64
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 65
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v2, 0x0

    .line 41
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 42
    if-le p1, p2, :cond_1

    .line 43
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    :goto_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPath:Landroid/graphics/Path;

    .line 48
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JDashLine;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JDashLine;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 49
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 50
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JDashLine;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 57
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 58
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 53
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JDashLine;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->bWillUpdateBackground:Z

    .line 69
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mStrDrawable:Ljava/lang/String;

    .line 70
    if-eqz p2, :cond_0

    .line 71
    if-nez p1, :cond_1

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JDashLine;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JDashLine;->updateBackground()V

    goto :goto_0
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 79
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->bAttached:Z

    if-nez v1, :cond_1

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->bWillUpdateBackground:Z

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->bWillUpdateBackground:Z

    .line 85
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mStrDrawable:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JDashLine;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JDashLine;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
