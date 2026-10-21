.class public Lcom/lsec/core/frame/ctrl/JView;
.super Landroid/view/View;
.source "JView.java"


# instance fields
.field bAttached:Z

.field bWillUpdateBackground:Z

.field public focus:Z

.field iState:I

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

.field mStrDrawableFix:Ljava/lang/String;

.field private page:Lcom/lsec/core/frame/ctrl/JPage;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v1, 0x0

    .line 20
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 9
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JView;->bAttached:Z

    .line 10
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JView;->bWillUpdateBackground:Z

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JView;->iState:I

    .line 15
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JView;->focus:Z

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JView;->mDrawables:Ljava/util/HashMap;

    .line 21
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 22
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JView;->iState:I

    return v0
.end method

.method public getStrDrawable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JView;->mStrDrawable:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JView;->bAttached:Z

    .line 83
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JView;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JView;->bWillUpdateBackground:Z

    .line 85
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JView;->updateBackground()V

    .line 87
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 88
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JView;->bAttached:Z

    .line 93
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 94
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .param p1, "focus"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/lsec/core/frame/ctrl/JView;->focus:Z

    .line 26
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JView;->updateBackground()V

    .line 27
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JView;->iState:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JView;->bWillUpdateBackground:Z

    .line 32
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JView;->mStrDrawable:Ljava/lang/String;

    .line 33
    if-eqz p2, :cond_0

    .line 34
    if-nez p1, :cond_1

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JView;->updateBackground()V

    goto :goto_0
.end method

.method public updateBackground()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JView;->bAttached:Z

    if-nez v2, :cond_1

    .line 51
    iput-boolean v4, p0, Lcom/lsec/core/frame/ctrl/JView;->bWillUpdateBackground:Z

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iput-boolean v3, p0, Lcom/lsec/core/frame/ctrl/JView;->bWillUpdateBackground:Z

    .line 57
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JView;->iState:I

    .line 58
    .local v1, "iStateBak":I
    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JView;->focus:Z

    if-eqz v2, :cond_2

    .line 59
    iput v4, p0, Lcom/lsec/core/frame/ctrl/JView;->iState:I

    .line 63
    :goto_1
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JView;->iState:I

    if-eq v1, v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JView;->mStrDrawable:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JView;->mStrDrawable:Ljava/lang/String;

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JView;->mStrDrawableFix:Ljava/lang/String;

    .line 66
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JView;->iState:I

    packed-switch v2, :pswitch_data_0

    .line 74
    :goto_2
    :pswitch_0
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JView;->mStrDrawableFix:Ljava/lang/String;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JView;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 61
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iput v3, p0, Lcom/lsec/core/frame/ctrl/JView;->iState:I

    goto :goto_1

    .line 70
    :pswitch_1
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JView;->mStrDrawableFix:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_p"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JView;->mStrDrawableFix:Ljava/lang/String;

    goto :goto_2

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
