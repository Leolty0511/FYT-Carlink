.class abstract Landroid/view/GLES20Layer;
.super Landroid/view/HardwareLayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GLES20Layer$Finalizer;
    }
.end annotation


# instance fields
.field public mFinalizer:Landroid/view/GLES20Layer$Finalizer;

.field public mLayer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/HardwareLayer;-><init>()V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/HardwareLayer;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public clearStorage()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nClearLayerTexture(I)V

    :cond_0
    return-void
.end method

.method public copyInto(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget p1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nCopyLayer(II)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/HardwareLayer;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/DisplayList;->reset()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/GLES20Layer$Finalizer;->destroy()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    return-void
.end method

.method public getLayer()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    return v0
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nSetLayerPaint(II)V

    .line 2
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p1

    iget p1, p1, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nSetLayerColorFilter(II)V

    :cond_1
    return-void
.end method
