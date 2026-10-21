.class public Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
.super Ljava/lang/Object;
.source "NinePatchChunk.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final DEFAULT_DENSITY:I = 0xa0

.field public static final NO_COLOR:I = 0x1

.field public static final TRANSPARENT_COLOR:I


# instance fields
.field public colors:[I

.field public padding:Landroid/graphics/Rect;

.field public wasSerialized:Z

.field public xDivs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/frame/ninepatch/Div;",
            ">;"
        }
    .end annotation
.end field

.field public yDivs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/frame/ninepatch/Div;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->wasSerialized:Z

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    .line 22
    return-void
.end method

.method private static checkDivCount(B)V
    .locals 3
    .param p0, "divCount"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 316
    if-eqz p0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Div count should be aliquot 2 and more then 0, but was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    return-void
.end method

.method public static create9PatchDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "srcName"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/lsec/core/frame/ninepatch/BitmapType;->getNinePatchDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static create9PatchDrawable(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;ILjava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "byteArrayOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "imageDensity"    # I
    .param p3, "srcName"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p0, p1, p2}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->createChunkFromRawBitmap(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;I)Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;

    move-result-object v0

    .line 101
    .local v0, "loadingResult":Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;->getNinePatchDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static create9PatchDrawable(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "byteArrayOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "srcName"    # Ljava/lang/String;

    .prologue
    .line 89
    const/16 v0, 0xa0

    invoke-static {p0, p1, v0, p2}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->create9PatchDrawable(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;ILjava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static create9PatchDrawable(Landroid/content/Context;Ljava/io/InputStream;ILjava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "imageDensity"    # I
    .param p3, "srcName"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0, p1, p2}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->createChunkFromRawBitmap(Landroid/content/Context;Ljava/io/InputStream;I)Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;

    move-result-object v0

    .line 95
    .local v0, "loadingResult":Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;->getNinePatchDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static create9PatchDrawable(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "srcName"    # Ljava/lang/String;

    .prologue
    .line 84
    const/16 v0, 0xa0

    invoke-static {p0, p1, v0, p2}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->create9PatchDrawable(Landroid/content/Context;Ljava/io/InputStream;ILjava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static createChunkFromRawBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 136
    invoke-static {p1}, Lcom/lsec/core/frame/ninepatch/BitmapType;->determineBitmapType(Landroid/graphics/Bitmap;)Lcom/lsec/core/frame/ninepatch/BitmapType;

    move-result-object v1

    .line 137
    .local v1, "type":Lcom/lsec/core/frame/ninepatch/BitmapType;
    invoke-virtual {v1, p1}, Lcom/lsec/core/frame/ninepatch/BitmapType;->createChunk(Landroid/graphics/Bitmap;)Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    move-result-object v0

    .line 138
    .local v0, "chunk":Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/lsec/core/frame/ninepatch/BitmapType;->modifyBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/lsec/core/frame/ninepatch/NinePatchChunk;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 139
    new-instance v2, Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;

    invoke-direct {v2, p1, v0}, Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;-><init>(Landroid/graphics/Bitmap;Lcom/lsec/core/frame/ninepatch/NinePatchChunk;)V

    return-object v2
.end method

.method public static createChunkFromRawBitmap(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;I)Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "byteArrayOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "imageDensity"    # I

    .prologue
    .line 127
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 129
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 130
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 131
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    .line 130
    invoke-static {v2, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->createChunkFromRawBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;

    move-result-object v2

    return-object v2
.end method

.method public static createChunkFromRawBitmap(Landroid/content/Context;Ljava/io/InputStream;)Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 113
    const/16 v0, 0xa0

    invoke-static {p0, p1, v0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->createChunkFromRawBitmap(Landroid/content/Context;Ljava/io/InputStream;I)Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;

    move-result-object v0

    return-object v0
.end method

.method public static createChunkFromRawBitmap(Landroid/content/Context;Ljava/io/InputStream;I)Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "imageDensity"    # I

    .prologue
    .line 118
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 120
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 121
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->createChunkFromRawBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/lsec/core/frame/ninepatch/ImageLoadingResult;

    move-result-object v2

    return-object v2
.end method

.method public static createChunkFromRawBitmap(Landroid/graphics/Bitmap;)Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 106
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->createChunkFromRawBitmap(Landroid/graphics/Bitmap;Z)Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->createEmptyChunk()Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    move-result-object v1

    goto :goto_0
.end method

.method protected static createChunkFromRawBitmap(Landroid/graphics/Bitmap;Z)Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "checkBitmap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 296
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isRawNinePatchBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    invoke-static {}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->createEmptyChunk()Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 299
    :cond_0
    new-instance v0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    invoke-direct {v0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;-><init>()V

    .line 300
    .local v0, "out":Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    invoke-static {p0, v0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->setupStretchableRegions(Landroid/graphics/Bitmap;Lcom/lsec/core/frame/ninepatch/NinePatchChunk;)V

    .line 301
    invoke-static {p0, v0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->setupPadding(Landroid/graphics/Bitmap;Lcom/lsec/core/frame/ninepatch/NinePatchChunk;)V

    .line 302
    invoke-static {p0, v0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->setupColors(Landroid/graphics/Bitmap;Lcom/lsec/core/frame/ninepatch/NinePatchChunk;)V

    goto :goto_0
.end method

.method public static createColorsArray(Lcom/lsec/core/frame/ninepatch/NinePatchChunk;II)[I
    .locals 5
    .param p0, "chunk"    # Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    .param p1, "bitmapWidth"    # I
    .param p2, "bitmapHeight"    # I

    .prologue
    .line 194
    if-nez p0, :cond_0

    .line 195
    const/4 v3, 0x0

    new-array v0, v3, [I

    .line 201
    :goto_0
    return-object v0

    .line 197
    :cond_0
    iget-object v3, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 198
    .local v1, "xRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lsec/core/frame/ninepatch/Div;>;"
    iget-object v3, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-static {v3, p2}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 199
    .local v2, "yRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lsec/core/frame/ninepatch/Div;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v0, v3, [I

    .line 200
    .local v0, "out":[I
    const/4 v3, 0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0
.end method

.method public static createColorsArrayAndSet(Lcom/lsec/core/frame/ninepatch/NinePatchChunk;II)V
    .locals 1
    .param p0, "chunk"    # Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    .param p1, "bitmapWidth"    # I
    .param p2, "bitmapHeight"    # I

    .prologue
    .line 188
    invoke-static {p0, p1, p2}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->createColorsArray(Lcom/lsec/core/frame/ninepatch/NinePatchChunk;II)[I

    move-result-object v0

    .line 189
    .local v0, "colorsArray":[I
    if-eqz p0, :cond_0

    .line 190
    iput-object v0, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->colors:[I

    .line 191
    :cond_0
    return-void
.end method

.method public static createEmptyChunk()Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    invoke-direct {v0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;-><init>()V

    .line 144
    .local v0, "out":Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    const/4 v1, 0x0

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->colors:[I

    .line 145
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    .line 148
    return-object v0
.end method

.method private static getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/frame/ninepatch/Div;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/frame/ninepatch/Div;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "divs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lsec/core/frame/ninepatch/Div;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lsec/core/frame/ninepatch/Div;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 409
    :cond_0
    return-object v2

    .line 396
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 397
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ninepatch/Div;

    .line 398
    .local v0, "div":Lcom/lsec/core/frame/ninepatch/Div;
    if-nez v1, :cond_2

    iget v3, v0, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    if-eqz v3, :cond_2

    .line 399
    new-instance v3, Lcom/lsec/core/frame/ninepatch/Div;

    const/4 v4, 0x0

    iget v5, v0, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v4, v5}, Lcom/lsec/core/frame/ninepatch/Div;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_2
    if-lez v1, :cond_3

    .line 402
    new-instance v4, Lcom/lsec/core/frame/ninepatch/Div;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ninepatch/Div;

    iget v3, v3, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    iget v5, v0, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v4, v3, v5}, Lcom/lsec/core/frame/ninepatch/Div;-><init>(II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_3
    new-instance v3, Lcom/lsec/core/frame/ninepatch/Div;

    iget v4, v0, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    iget v5, v0, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v4, v5}, Lcom/lsec/core/frame/ninepatch/Div;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_4

    iget v3, v0, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    if-ge v3, p1, :cond_4

    .line 406
    new-instance v3, Lcom/lsec/core/frame/ninepatch/Div;

    iget v4, v0, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    add-int/lit8 v5, p1, -0x1

    invoke-direct {v3, v4, v5}, Lcom/lsec/core/frame/ninepatch/Div;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getXDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "raw"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/frame/ninepatch/Div;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v2, "xDivs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lsec/core/frame/ninepatch/Div;>;"
    const/4 v1, 0x0

    .line 424
    .local v1, "tmpDiv":Lcom/lsec/core/frame/ninepatch/Div;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 427
    return-object v2

    .line 425
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v1, v4, v2}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->processChunk(ILcom/lsec/core/frame/ninepatch/Div;ILjava/util/ArrayList;)Lcom/lsec/core/frame/ninepatch/Div;

    move-result-object v1

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getYDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/frame/ninepatch/Div;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v2, "yDivs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lsec/core/frame/ninepatch/Div;>;"
    const/4 v1, 0x0

    .line 415
    .local v1, "tmpDiv":Lcom/lsec/core/frame/ninepatch/Div;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 418
    return-object v2

    .line 416
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v1, v4, v2}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->processChunk(ILcom/lsec/core/frame/ninepatch/Div;ILjava/util/ArrayList;)Lcom/lsec/core/frame/ninepatch/Div;

    move-result-object v1

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static hasNinePatchBorder(Landroid/graphics/Bitmap;)Z
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 221
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 222
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 223
    .local v0, "height":I
    add-int/lit8 v2, v4, -0x1

    .line 224
    .local v2, "lastXPixel":I
    add-int/lit8 v3, v0, -0x1

    .line 225
    .local v3, "lastYPixel":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 230
    const/4 v1, 0x1

    :goto_1
    if-lt v1, v3, :cond_2

    .line 235
    invoke-static {p0, v5}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->getXDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 247
    :cond_0
    :goto_2
    return v5

    .line 226
    :cond_1
    invoke-virtual {p0, v1, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isBorderPixel(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, v1, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isBorderPixel(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p0, v5, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isBorderPixel(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isBorderPixel(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 238
    :cond_3
    invoke-static {p0, v3}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->getXDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v6, :cond_0

    .line 241
    invoke-static {p0, v5}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->getYDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 244
    invoke-static {p0, v2}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->getYDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v6, :cond_0

    move v5, v6

    .line 247
    goto :goto_2
.end method

.method private static hasSameColor(Landroid/graphics/Bitmap;IIII)Z
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "startX"    # I
    .param p2, "stopX"    # I
    .param p3, "startY"    # I
    .param p4, "stopY"    # I

    .prologue
    .line 346
    invoke-virtual {p0, p1, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 347
    .local v0, "color":I
    move v1, p1

    .local v1, "x":I
    :goto_0
    if-le v1, p2, :cond_0

    .line 354
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 348
    :cond_0
    move v2, p3

    .local v2, "y":I
    :goto_2
    if-le v2, p4, :cond_1

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 350
    const/4 v3, 0x0

    goto :goto_1

    .line 348
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static isBlack(I)Z
    .locals 1
    .param p0, "pixel"    # I

    .prologue
    .line 267
    const/high16 v0, -0x1000000

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isBorderPixel(I)Z
    .locals 1
    .param p0, "tmpPixel1"    # I

    .prologue
    .line 251
    invoke-static {p0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isTransparent(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isBlack(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isCornerPixelsAreTrasperent(Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 256
    .local v1, "lastYPixel":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 257
    .local v0, "lastXPixel":I
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isTransparent(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isTransparent(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isTransparent(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isTransparent(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isRawNinePatchBitmap(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 205
    if-nez p0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 211
    invoke-static {p0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isCornerPixelsAreTrasperent(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-static {p0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->hasNinePatchBorder(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isTransparent(I)Z
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 263
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse([B)Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    .locals 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    invoke-direct {v1}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;-><init>()V

    .line 44
    .local v1, "chunk":Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->wasSerialized:Z

    .line 45
    iget-boolean v7, v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->wasSerialized:Z

    if-nez v7, :cond_1

    .line 46
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 44
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 49
    .local v2, "divXCount":B
    invoke-static {v2}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->checkDivCount(B)V

    .line 50
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 51
    .local v3, "divYCount":B
    invoke-static {v3}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->checkDivCount(B)V

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    new-array v7, v7, [I

    iput-object v7, v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->colors:[I

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    iget-object v7, v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 59
    iget-object v7, v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 60
    iget-object v7, v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 61
    iget-object v7, v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 63
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 65
    shr-int/lit8 v5, v2, 0x1

    .line 66
    .local v5, "xDivs":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    .line 67
    iget-object v7, v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-static {v5, v0, v7}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->readDivs(ILjava/nio/ByteBuffer;Ljava/util/ArrayList;)V

    .line 69
    shr-int/lit8 v6, v3, 0x1

    .line 70
    .local v6, "yDivs":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    .line 71
    iget-object v7, v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-static {v6, v0, v7}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->readDivs(ILjava/nio/ByteBuffer;Ljava/util/ArrayList;)V

    .line 73
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v7, v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->colors:[I

    array-length v7, v7

    if-lt v4, v7, :cond_2

    .line 76
    return-object v1

    .line 74
    :cond_2
    iget-object v7, v1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->colors:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    aput v8, v7, v4

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private static processChunk(ILcom/lsec/core/frame/ninepatch/Div;ILjava/util/ArrayList;)Lcom/lsec/core/frame/ninepatch/Div;
    .locals 1
    .param p0, "pixel"    # I
    .param p1, "tmpDiv"    # Lcom/lsec/core/frame/ninepatch/Div;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/lsec/core/frame/ninepatch/Div;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/frame/ninepatch/Div;",
            ">;)",
            "Lcom/lsec/core/frame/ninepatch/Div;"
        }
    .end annotation

    .prologue
    .line 431
    .local p3, "divs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lsec/core/frame/ninepatch/Div;>;"
    invoke-static {p0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isBlack(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    if-nez p1, :cond_0

    .line 433
    new-instance p1, Lcom/lsec/core/frame/ninepatch/Div;

    .end local p1    # "tmpDiv":Lcom/lsec/core/frame/ninepatch/Div;
    invoke-direct {p1}, Lcom/lsec/core/frame/ninepatch/Div;-><init>()V

    .line 434
    .restart local p1    # "tmpDiv":Lcom/lsec/core/frame/ninepatch/Div;
    iput p2, p1, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    .line 438
    :cond_0
    invoke-static {p0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isTransparent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    if-eqz p1, :cond_1

    .line 440
    iput p2, p1, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    .line 441
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    const/4 p1, 0x0

    .line 446
    :cond_1
    return-object p1
.end method

.method private static readDivs(ILjava/nio/ByteBuffer;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "divs"    # I
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/frame/ninepatch/Div;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "divArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lsec/core/frame/ninepatch/Div;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p0, :cond_0

    .line 313
    return-void

    .line 308
    :cond_0
    new-instance v0, Lcom/lsec/core/frame/ninepatch/Div;

    invoke-direct {v0}, Lcom/lsec/core/frame/ninepatch/Div;-><init>()V

    .line 309
    .local v0, "div":Lcom/lsec/core/frame/ninepatch/Div;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    .line 310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    .line 311
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static setupColors(Landroid/graphics/Bitmap;Lcom/lsec/core/frame/ninepatch/NinePatchChunk;)V
    .locals 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "out"    # Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    .prologue
    .line 321
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/lit8 v1, v10, -0x2

    .line 322
    .local v1, "bitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/lit8 v0, v10, -0x2

    .line 323
    .local v0, "bitmapHeight":I
    iget-object v10, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-static {v10, v1}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v7

    .line 324
    .local v7, "xRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lsec/core/frame/ninepatch/Div;>;"
    iget-object v10, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-static {v10, v0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 325
    .local v9, "yRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lsec/core/frame/ninepatch/Div;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    mul-int/2addr v10, v11

    new-array v10, v10, [I

    iput-object v10, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->colors:[I

    .line 327
    const/4 v2, 0x0

    .line 328
    .local v2, "colorIndex":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 343
    return-void

    .line 328
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ninepatch/Div;

    .line 329
    .local v8, "yDiv":Lcom/lsec/core/frame/ninepatch/Div;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ninepatch/Div;

    .line 330
    .local v6, "xDiv":Lcom/lsec/core/frame/ninepatch/Div;
    iget v12, v6, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    add-int/lit8 v4, v12, 0x1

    .line 331
    .local v4, "startX":I
    iget v12, v8, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    add-int/lit8 v5, v12, 0x1

    .line 332
    .local v5, "startY":I
    iget v12, v6, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    add-int/lit8 v12, v12, 0x1

    iget v13, v8, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    add-int/lit8 v13, v13, 0x1

    invoke-static {p0, v4, v12, v5, v13}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->hasSameColor(Landroid/graphics/Bitmap;IIII)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 333
    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 334
    .local v3, "pixel":I
    invoke-static {v3}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isTransparent(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 335
    const/4 v3, 0x0

    .line 336
    :cond_2
    iget-object v12, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->colors:[I

    aput v3, v12, v2

    .line 340
    .end local v3    # "pixel":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_3
    iget-object v12, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->colors:[I

    const/4 v13, 0x1

    aput v13, v12, v2

    goto :goto_1
.end method

.method private static setupPadding(Landroid/graphics/Bitmap;Lcom/lsec/core/frame/ninepatch/NinePatchChunk;)V
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "out"    # Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 358
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v0, v4, -0x2

    .line 359
    .local v0, "maxXPixels":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v1, v4, -0x2

    .line 360
    .local v1, "maxYPixels":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v4}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->getXDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 361
    .local v2, "xPaddings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lsec/core/frame/ninepatch/Div;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 362
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Raw padding is wrong. Should be only one horizontal padding region"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 364
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v4}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->getYDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 365
    .local v3, "yPaddings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lsec/core/frame/ninepatch/Div;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 366
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Column padding is wrong. Should be only one vertical padding region"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 368
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 369
    iget-object v4, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ninepatch/Div;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 372
    iget-object v4, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ninepatch/Div;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    .line 375
    iget-object v5, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ninepatch/Div;

    iget v4, v4, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 376
    iget-object v5, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ninepatch/Div;

    iget v4, v4, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    sub-int v4, v0, v4

    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 377
    iget-object v5, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ninepatch/Div;

    iget v4, v4, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 378
    iget-object v5, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ninepatch/Div;

    iget v4, v4, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    sub-int v4, v1, v4

    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 379
    return-void
.end method

.method private static setupStretchableRegions(Landroid/graphics/Bitmap;Lcom/lsec/core/frame/ninepatch/NinePatchChunk;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "out"    # Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 382
    invoke-static {p0, v1}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->getXDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    .line 383
    iget-object v0, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "must be at least one horizontal stretchable region"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_0
    invoke-static {p0, v1}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->getYDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    .line 387
    iget-object v0, p1, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 388
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "must be at least one vertical stretchable region"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_1
    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "input"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 273
    .local v1, "length":I
    new-array v0, v1, [B

    .line 274
    .local v0, "bytes":[B
    invoke-interface {p1, v0}, Ljava/io/ObjectInput;->read([B)I

    .line 276
    :try_start_0
    invoke-static {v0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->parse([B)Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    move-result-object v2

    .line 277
    .local v2, "patch":Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    iget-boolean v3, v2, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->wasSerialized:Z

    iput-boolean v3, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->wasSerialized:Z

    .line 278
    iget-object v3, v2, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    .line 279
    iget-object v3, v2, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    .line 280
    iget-object v3, v2, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    .line 281
    iget-object v3, v2, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->colors:[I

    iput-object v3, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->colors:[I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v2    # "patch":Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public toBytes()[B
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v5, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x20

    iget-object v6, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->colors:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x4

    add-int v1, v5, v6

    .line 153
    .local v1, "capacity":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 154
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 155
    iget-object v5, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 156
    iget-object v5, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 157
    iget-object v5, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->colors:[I

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 159
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 160
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 162
    iget-object v5, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    if-nez v5, :cond_0

    .line 163
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    .line 165
    :cond_0
    iget-object v5, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 166
    iget-object v5, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 167
    iget-object v5, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 168
    iget-object v5, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 169
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 170
    iget-object v5, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 175
    iget-object v5, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 180
    iget-object v5, p0, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->colors:[I

    array-length v6, v5

    :goto_2
    if-lt v4, v6, :cond_3

    .line 183
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4

    .line 170
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ninepatch/Div;

    .line 171
    .local v3, "div":Lcom/lsec/core/frame/ninepatch/Div;
    iget v6, v3, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 172
    iget v6, v3, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 175
    .end local v3    # "div":Lcom/lsec/core/frame/ninepatch/Div;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ninepatch/Div;

    .line 176
    .restart local v3    # "div":Lcom/lsec/core/frame/ninepatch/Div;
    iget v6, v3, Lcom/lsec/core/frame/ninepatch/Div;->start:I

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 177
    iget v6, v3, Lcom/lsec/core/frame/ninepatch/Div;->stop:I

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 180
    .end local v3    # "div":Lcom/lsec/core/frame/ninepatch/Div;
    :cond_3
    aget v2, v5, v4

    .line 181
    .local v2, "color":I
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "output"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->toBytes()[B

    move-result-object v0

    .line 290
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 291
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write([B)V

    .line 292
    return-void
.end method
