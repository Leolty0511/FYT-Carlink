.class public Lcom/lsec/core/sharememory/FastYUVtoRGB;
.super Ljava/lang/Object;
.source "FastYUVtoRGB.java"


# instance fields
.field private in:Landroid/renderscript/Allocation;

.field private out:Landroid/renderscript/Allocation;

.field private rgbaType:Landroid/renderscript/Type$Builder;

.field private rs:Landroid/renderscript/RenderScript;

.field private yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

.field private yuvType:Landroid/renderscript/Type$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->rs:Landroid/renderscript/RenderScript;

    .line 19
    iget-object v0, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->rs:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->rs:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 20
    return-void
.end method


# virtual methods
.method public convertYUVtoRGB([BII)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "yuvData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x1

    .line 23
    if-nez p1, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->yuvType:Landroid/renderscript/Type$Builder;

    if-nez v1, :cond_1

    .line 27
    new-instance v1, Landroid/renderscript/Type$Builder;

    iget-object v2, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->rs:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->rs:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->yuvType:Landroid/renderscript/Type$Builder;

    .line 28
    iget-object v1, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->rs:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->yuvType:Landroid/renderscript/Type$Builder;

    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->in:Landroid/renderscript/Allocation;

    .line 29
    new-instance v1, Landroid/renderscript/Type$Builder;

    iget-object v2, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->rs:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->rs:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {v1, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->rgbaType:Landroid/renderscript/Type$Builder;

    .line 30
    iget-object v1, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->rs:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->rgbaType:Landroid/renderscript/Type$Builder;

    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->out:Landroid/renderscript/Allocation;

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->in:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 34
    iget-object v1, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v2, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->in:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 35
    iget-object v1, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v2, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->out:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 36
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    .local v0, "bmpout":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lsec/core/sharememory/FastYUVtoRGB;->out:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
