.class public abstract Landroid/view/HardwareCanvas;
.super Landroid/graphics/Canvas;
.source "SourceFile"


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract attachFunctor(I)V
.end method

.method public callDrawGLFunction(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract cancelLayerUpdate(Landroid/view/HardwareLayer;)V
.end method

.method public abstract clearLayerUpdates()V
.end method

.method public abstract detachFunctor(I)V
.end method

.method public abstract drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I
.end method

.method public drawDisplayList(Landroid/view/DisplayList;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    return-void
.end method

.method public abstract drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
.end method

.method public abstract flushLayerUpdates()V
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareCanvas;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public invokeFunctors(Landroid/graphics/Rect;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPostDraw()V
.end method

.method public abstract onPreDraw(Landroid/graphics/Rect;)I
.end method

.method public abstract outputDisplayList(Landroid/view/DisplayList;)V
.end method

.method public abstract pushLayerUpdate(Landroid/view/HardwareLayer;)V
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/HardwareCanvas;->mName:Ljava/lang/String;

    return-void
.end method
