.class Landroid/view/GLES20RenderLayer;
.super Landroid/view/GLES20Layer;
.source "SourceFile"


# instance fields
.field private final mCanvas:Landroid/view/GLES20Canvas;

.field private mLayerHeight:I

.field private mLayerWidth:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GLES20Layer;-><init>(IIZ)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    invoke-static {p1, p2, p3, v0}, Landroid/view/GLES20Canvas;->nCreateLayer(IIZ[I)I

    move-result p1

    iput p1, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    aget p1, v0, p1

    iput p1, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    const/4 p1, 0x1

    .line 4
    aget p2, v0, p1

    iput p2, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    .line 5
    new-instance p2, Landroid/view/GLES20Canvas;

    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    xor-int/2addr p1, p3

    invoke-direct {p2, v0, p1}, Landroid/view/GLES20Canvas;-><init>(IZ)V

    iput-object p2, p0, Landroid/view/GLES20RenderLayer;->mCanvas:Landroid/view/GLES20Canvas;

    .line 6
    new-instance p1, Landroid/view/GLES20Layer$Finalizer;

    iget p2, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-direct {p1, p2}, Landroid/view/GLES20Layer$Finalizer;-><init>(I)V

    iput-object p1, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroid/view/GLES20RenderLayer;->mCanvas:Landroid/view/GLES20Canvas;

    .line 8
    iput-object p1, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    :goto_0
    return-void
.end method


# virtual methods
.method public end(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/GLES20RenderLayer;->getCanvas()Landroid/view/HardwareCanvas;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Landroid/view/GLES20Canvas;

    invoke-virtual {p1}, Landroid/view/GLES20Canvas;->resume()V

    :cond_1
    return-void
.end method

.method public getCanvas()Landroid/view/HardwareCanvas;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/GLES20RenderLayer;->mCanvas:Landroid/view/GLES20Canvas;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public redrawLater(Landroid/view/DisplayList;Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget-object v1, p0, Landroid/view/GLES20RenderLayer;->mCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v1}, Landroid/view/GLES20Canvas;->getRenderer()I

    move-result v1

    check-cast p1, Landroid/view/GLES20DisplayList;

    invoke-virtual {p1}, Landroid/view/GLES20DisplayList;->getNativeDisplayList()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nUpdateRenderLayer(IIIIIII)V

    return-void
.end method

.method public resize(II)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/GLES20RenderLayer;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-lez p1, :cond_4

    if-gtz p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iput p1, p0, Landroid/view/HardwareLayer;->mWidth:I

    .line 3
    iput p2, p0, Landroid/view/HardwareLayer;->mHeight:I

    .line 4
    iget v0, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    if-eq p2, v0, :cond_3

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iget v2, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-static {v2, p1, p2, v0}, Landroid/view/GLES20Canvas;->nResizeLayer(III[I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    aget p1, v0, v1

    iput p1, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    const/4 p1, 0x1

    .line 7
    aget p1, v0, p1

    iput p1, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    goto :goto_0

    .line 8
    :cond_2
    iput v1, p0, Landroid/view/GLES20Layer;->mLayer:I

    .line 9
    iput v1, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    .line 10
    iput v1, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/GLES20RenderLayer;->isValid()Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public setOpaque(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Landroid/view/HardwareLayer;->mOpaque:Z

    .line 2
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nSetOpaqueLayer(IZ)V

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method

.method public start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/view/GLES20RenderLayer;->start(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/view/HardwareCanvas;

    move-result-object p1

    return-object p1
.end method

.method public start(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/view/HardwareCanvas;
    .locals 2

    .line 2
    instance-of v0, p1, Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/view/GLES20Canvas;

    invoke-virtual {p1}, Landroid/view/GLES20Canvas;->interrupt()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/GLES20RenderLayer;->getCanvas()Landroid/view/HardwareCanvas;

    move-result-object p1

    .line 5
    iget v0, p0, Landroid/view/HardwareLayer;->mWidth:I

    iget v1, p0, Landroid/view/HardwareLayer;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)I

    return-object p1
.end method
