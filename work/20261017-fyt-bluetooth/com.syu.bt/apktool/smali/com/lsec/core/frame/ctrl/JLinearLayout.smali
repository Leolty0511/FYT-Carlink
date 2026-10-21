.class public Lcom/lsec/core/frame/ctrl/JLinearLayout;
.super Landroid/widget/LinearLayout;
.source "JLinearLayout.java"


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
.method public constructor <init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 11
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->bAttached:Z

    .line 12
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->bWillUpdateBackground:Z

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->mDrawables:Ljava/util/HashMap;

    .line 18
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 19
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->bAttached:Z

    .line 50
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->bWillUpdateBackground:Z

    .line 52
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JLinearLayout;->updateBackground()V

    .line 54
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 55
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->bAttached:Z

    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 61
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->bWillUpdateBackground:Z

    .line 23
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->mStrDrawable:Ljava/lang/String;

    .line 24
    if-eqz p2, :cond_0

    .line 25
    if-nez p1, :cond_1

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JLinearLayout;->updateBackground()V

    goto :goto_0
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 33
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->bAttached:Z

    if-nez v1, :cond_1

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->bWillUpdateBackground:Z

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->bWillUpdateBackground:Z

    .line 39
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->mStrDrawable:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JLinearLayout;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 42
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
