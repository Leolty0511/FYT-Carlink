.class public Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;
.super Ljava/lang/Object;
.source "ImageLoadingResult.java"


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final chunk:Lcom/lsec/core/frame/ninepatch/NinePatchChunk;


# direct methods
.method protected constructor <init>(Landroid/graphics/Bitmap;Lcom/lsec/core/frame/ninepatch/NinePatchChunk;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;->bitmap:Landroid/graphics/Bitmap;

    .line 16
    iput-object p2, p0, Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;->chunk:Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    .line 17
    return-void
.end method


# virtual methods
.method public getNinePatchDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "strName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 20
    iget-object v0, p0, Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    move-object v0, v3

    .line 26
    :goto_0
    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;->chunk:Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v2, p0, Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;->bitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_1
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v2, p0, Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;->chunk:Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->toBytes()[B

    move-result-object v3

    iget-object v1, p0, Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;->chunk:Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    iget-object v4, v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    goto :goto_0
.end method
