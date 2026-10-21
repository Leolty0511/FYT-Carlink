.class enum Lcom/lsec/core/frame/ninepatch/BitmapType$2;
.super Lcom/lsec/core/frame/ninepatch/BitmapType;
.source "BitmapType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/ninepatch/BitmapType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lsec/core/frame/ninepatch/BitmapType;-><init>(Ljava/lang/String;ILcom/lsec/core/frame/ninepatch/BitmapType;)V

    .line 1
    return-void
.end method

.method private recalculateDivs(FLjava/util/ArrayList;)V
    .locals 3
    .param p1, "densityChange"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/frame/ninepatch/Div;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "divs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lsec/core/frame/ninepatch/Div;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    return-void

    .line 49
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ninepatch/Div;

    .line 50
    .local v0, "div":Lcom/lsec/core/frame/ninepatch/Div;
    iget v2, v0, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    .line 51
    iget v2, v0, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    goto :goto_0
.end method


# virtual methods
.method protected createChunk(Landroid/graphics/Bitmap;)Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 21
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->createChunkFromRawBitmap(Landroid/graphics/Bitmap;Z)Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 23
    :goto_0
    return-object v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->createEmptyChunk()Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    move-result-object v1

    goto :goto_0
.end method

.method protected modifyBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/lsec/core/frame/ninepatch/NinePatchChunk;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "chunk"    # Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    .prologue
    const/4 v7, 0x1

    .line 29
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-static {p2, v7, v7, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    .local v0, "content":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 31
    .local v4, "targetDensity":I
    int-to-float v5, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 32
    .local v1, "densityChange":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 34
    .local v3, "dstWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 35
    .local v2, "dstHeight":I
    invoke-static {v0, v3, v2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 37
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p3, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 38
    iget-object v7, p3, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p3, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 39
    iget-object v9, p3, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 37
    iput-object v5, p3, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    .line 41
    iget-object v5, p3, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v5}, Lcom/lsec/core/frame/ninepatch/BitmapType$2;->recalculateDivs(FLjava/util/ArrayList;)V

    .line 42
    iget-object v5, p3, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v5}, Lcom/lsec/core/frame/ninepatch/BitmapType$2;->recalculateDivs(FLjava/util/ArrayList;)V

    .line 44
    .end local v2    # "dstHeight":I
    .end local v3    # "dstWidth":I
    :cond_0
    move-object p2, v0

    .line 45
    return-object v0
.end method
