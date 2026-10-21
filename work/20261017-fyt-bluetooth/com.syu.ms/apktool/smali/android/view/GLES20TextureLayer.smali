.class Landroid/view/GLES20TextureLayer;
.super Landroid/view/GLES20Layer;
.source "SourceFile"


# instance fields
.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mTexture:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/GLES20Layer;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    invoke-static {p1, v0}, Landroid/view/GLES20Canvas;->nCreateTextureLayer(Z[I)I

    move-result p1

    iput p1, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 3
    aget v0, v0, v1

    iput v0, p0, Landroid/view/GLES20TextureLayer;->mTexture:I

    .line 4
    new-instance v0, Landroid/view/GLES20Layer$Finalizer;

    invoke-direct {v0, p1}, Landroid/view/GLES20Layer$Finalizer;-><init>(I)V

    iput-object v0, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    :goto_0
    return-void
.end method


# virtual methods
.method public end(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getCanvas()Landroid/view/HardwareCanvas;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/GLES20TextureLayer;->mSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Landroid/view/GLES20TextureLayer;->mTexture:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroid/view/GLES20TextureLayer;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/GLES20TextureLayer;->mSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/GLES20TextureLayer;->mTexture:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public redrawLater(Landroid/view/DisplayList;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public resize(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/GLES20TextureLayer;->isValid()Z

    move-result p1

    return p1
.end method

.method public setOpaque(Z)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use update(int, int, boolean) instead"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/GLES20TextureLayer;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 3
    :cond_0
    iput-object p1, p0, Landroid/view/GLES20TextureLayer;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 4
    iget v0, p0, Landroid/view/GLES20TextureLayer;->mTexture:I

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget p1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nSetTextureLayerTransform(II)V

    return-void
.end method

.method public start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public start(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/view/HardwareCanvas;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(IIZ)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/HardwareLayer;->update(IIZ)V

    .line 2
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget-object v1, p0, Landroid/view/GLES20TextureLayer;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-static {v0, p1, p2, p3, v1}, Landroid/view/GLES20Canvas;->nUpdateTextureLayer(IIIZLandroid/graphics/SurfaceTexture;)V

    return-void
.end method
