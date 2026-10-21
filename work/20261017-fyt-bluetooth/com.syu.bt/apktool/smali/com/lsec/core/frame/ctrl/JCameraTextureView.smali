.class public Lcom/lsec/core/frame/ctrl/JCameraTextureView;
.super Landroid/view/TextureView;
.source "JCameraTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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

.field public mInterfaceSurfaceTexture:Lcom/lsec/core/util/InterfaceSurfaceTexture;

.field mStrDrawable:Ljava/lang/String;

.field mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public page:Lcom/lsec/core/frame/ctrl/JPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 18
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bAttached:Z

    .line 19
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bWillUpdateBackground:Z

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mDrawables:Ljava/util/HashMap;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mInterfaceSurfaceTexture:Lcom/lsec/core/util/InterfaceSurfaceTexture;

    .line 35
    invoke-virtual {p0, p0}, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bAttached:Z

    .line 19
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bWillUpdateBackground:Z

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mDrawables:Ljava/util/HashMap;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mInterfaceSurfaceTexture:Lcom/lsec/core/util/InterfaceSurfaceTexture;

    .line 40
    invoke-virtual {p0, p0}, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bAttached:Z

    .line 19
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bWillUpdateBackground:Z

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mDrawables:Ljava/util/HashMap;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mInterfaceSurfaceTexture:Lcom/lsec/core/util/InterfaceSurfaceTexture;

    .line 45
    invoke-virtual {p0, p0}, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 18
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bAttached:Z

    .line 19
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bWillUpdateBackground:Z

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mDrawables:Ljava/util/HashMap;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mInterfaceSurfaceTexture:Lcom/lsec/core/util/InterfaceSurfaceTexture;

    .line 29
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 30
    invoke-virtual {p0, p0}, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bAttached:Z

    .line 102
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bWillUpdateBackground:Z

    .line 104
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->updateBackground()V

    .line 107
    :cond_0
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 108
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bAttached:Z

    .line 113
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 114
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 51
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 56
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mInterfaceSurfaceTexture:Lcom/lsec/core/util/InterfaceSurfaceTexture;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mInterfaceSurfaceTexture:Lcom/lsec/core/util/InterfaceSurfaceTexture;

    invoke-interface {v0, p2, p3}, Lcom/lsec/core/util/InterfaceSurfaceTexture;->onSurfaceTextureSizeChanged(II)V

    .line 58
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 69
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mInterfaceSurfaceTexture:Lcom/lsec/core/util/InterfaceSurfaceTexture;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mInterfaceSurfaceTexture:Lcom/lsec/core/util/InterfaceSurfaceTexture;

    invoke-interface {v0, p1}, Lcom/lsec/core/util/InterfaceSurfaceTexture;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bWillUpdateBackground:Z

    .line 75
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mStrDrawable:Ljava/lang/String;

    .line 76
    if-eqz p2, :cond_0

    .line 77
    if-nez p1, :cond_1

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->updateBackground()V

    goto :goto_0
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 85
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bAttached:Z

    if-nez v1, :cond_1

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bWillUpdateBackground:Z

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->bWillUpdateBackground:Z

    .line 91
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mStrDrawable:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JCameraTextureView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
