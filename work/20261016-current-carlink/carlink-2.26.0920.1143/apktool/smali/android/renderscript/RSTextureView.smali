.class public Landroid/renderscript/RSTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Landroid/renderscript/RSTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Landroid/renderscript/RSTextureView;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;
    .locals 4

    .line 1
    new-instance v0, Landroid/renderscript/RenderScriptGL;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/renderscript/RSTextureView;->setRenderScriptGL(Landroid/renderscript/RenderScriptGL;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v1, p1, v2, v3}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-object v0
.end method

.method public destroyRenderScriptGL()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 8
    .line 9
    return-void
.end method

.method public getRenderScriptGL()Landroid/renderscript/RenderScriptGL;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    return-object v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    iget-object p1, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1, v1}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->resume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setRenderScriptGL(Landroid/renderscript/RenderScriptGL;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroid/renderscript/RSTextureView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 2
    .line 3
    iget-object v0, p0, Landroid/renderscript/RSTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p1, v0, v1, v2}, Landroid/renderscript/RenderScriptGL;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
