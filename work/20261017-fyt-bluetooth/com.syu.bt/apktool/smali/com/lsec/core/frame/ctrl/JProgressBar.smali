.class public Lcom/lsec/core/frame/ctrl/JProgressBar;
.super Landroid/widget/ProgressBar;
.source "JProgressBar.java"


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

.field mStrDrawable:Ljava/lang/String;

.field public page:Lcom/lsec/core/frame/ctrl/JPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->bAttached:Z

    .line 15
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->bWillUpdateBackground:Z

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->mDrawables:Ljava/util/HashMap;

    .line 20
    iput-object p4, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 21
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->bAttached:Z

    .line 52
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->bWillUpdateBackground:Z

    .line 54
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JProgressBar;->updateBackground()V

    .line 56
    :cond_0
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 57
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->bAttached:Z

    .line 62
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 63
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->bWillUpdateBackground:Z

    .line 25
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->mStrDrawable:Ljava/lang/String;

    .line 26
    if-eqz p2, :cond_0

    .line 27
    if-nez p1, :cond_1

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JProgressBar;->updateBackground()V

    goto :goto_0
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 35
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->bAttached:Z

    if-nez v1, :cond_1

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->bWillUpdateBackground:Z

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->bWillUpdateBackground:Z

    .line 41
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->mStrDrawable:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JProgressBar;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
