.class public Lcom/lsec/core/frame/ctrl/JCameraTexture;
.super Landroid/view/SurfaceView;
.source "JCameraTexture.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

.field public mHolder:Landroid/view/SurfaceHolder;

.field mStrDrawable:Ljava/lang/String;

.field public page:Lcom/lsec/core/frame/ctrl/JPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 16
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bAttached:Z

    .line 17
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bWillUpdateBackground:Z

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->mDrawables:Ljava/util/HashMap;

    .line 28
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCameraTexture;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bAttached:Z

    .line 17
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bWillUpdateBackground:Z

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->mDrawables:Ljava/util/HashMap;

    .line 33
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCameraTexture;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bAttached:Z

    .line 17
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bWillUpdateBackground:Z

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->mDrawables:Ljava/util/HashMap;

    .line 38
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCameraTexture;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 16
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bAttached:Z

    .line 17
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bWillUpdateBackground:Z

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->mDrawables:Ljava/util/HashMap;

    .line 22
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 23
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCameraTexture;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bAttached:Z

    .line 89
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bWillUpdateBackground:Z

    .line 91
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCameraTexture;->updateBackground()V

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 95
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bAttached:Z

    .line 100
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 101
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bWillUpdateBackground:Z

    .line 62
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->mStrDrawable:Ljava/lang/String;

    .line 63
    if-eqz p2, :cond_0

    .line 64
    if-nez p1, :cond_1

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JCameraTexture;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCameraTexture;->updateBackground()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->mHolder:Landroid/view/SurfaceHolder;

    .line 49
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->mHolder:Landroid/view/SurfaceHolder;

    .line 44
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->mHolder:Landroid/view/SurfaceHolder;

    .line 54
    return-void
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 72
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bAttached:Z

    if-nez v1, :cond_1

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bWillUpdateBackground:Z

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->bWillUpdateBackground:Z

    .line 78
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->mStrDrawable:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JCameraTexture;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JCameraTexture;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
