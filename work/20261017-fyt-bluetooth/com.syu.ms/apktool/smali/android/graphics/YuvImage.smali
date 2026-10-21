.class public Landroid/graphics/YuvImage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000


# instance fields
.field private mData:[B

.field private mFormat:I

.field private mHeight:I

.field private mStrides:[I

.field private mWidth:I


# direct methods
.method public constructor <init>([BIII[I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    if-eq p2, v0, :cond_1

    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only support ImageFormat.NV21 and ImageFormat.YUY2 for now"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-lez p3, :cond_4

    if-lez p4, :cond_4

    if-eqz p1, :cond_3

    if-nez p5, :cond_2

    .line 3
    invoke-direct {p0, p3, p2}, Landroid/graphics/YuvImage;->calculateStrides(II)[I

    move-result-object p5

    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    goto :goto_1

    .line 4
    :cond_2
    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 5
    :goto_1
    iput-object p1, p0, Landroid/graphics/YuvImage;->mData:[B

    .line 6
    iput p2, p0, Landroid/graphics/YuvImage;->mFormat:I

    .line 7
    iput p3, p0, Landroid/graphics/YuvImage;->mWidth:I

    .line 8
    iput p4, p0, Landroid/graphics/YuvImage;->mHeight:I

    return-void

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "yuv cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width and height must large than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private adjustRectangle(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 3
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    and-int/lit8 v0, v0, -0x2

    and-int/lit8 v1, v1, -0x2

    .line 4
    iget v3, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 5
    iget v4, p1, Landroid/graphics/Rect;->top:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    .line 6
    iput v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    .line 7
    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    const/16 v1, 0x14

    if-ne v2, v1, :cond_1

    and-int/lit8 v0, v0, -0x2

    .line 8
    iget v1, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    .line 9
    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    return-void
.end method

.method private calculateStrides(II)[I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x11

    if-ne p2, v3, :cond_0

    new-array p2, v2, [I

    aput p1, p2, v1

    aput p1, p2, v0

    return-object p2

    :cond_0
    const/16 v3, 0x14

    if-ne p2, v3, :cond_1

    new-array p2, v0, [I

    mul-int/2addr p1, v2

    aput p1, p2, v1

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static native nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z
.end method


# virtual methods
.method public calculateOffsets(II)[I
    .locals 6

    .line 1
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x11

    if-ne v0, v4, :cond_0

    new-array v0, v3, [I

    .line 2
    iget-object v4, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v5, v4, v2

    mul-int/2addr v5, p2

    add-int/2addr v5, p1

    aput v5, v0, v2

    iget v5, p0, Landroid/graphics/YuvImage;->mHeight:I

    aget v2, v4, v2

    mul-int/2addr v5, v2

    div-int/2addr p2, v3

    aget v2, v4, v1

    mul-int/2addr p2, v2

    add-int/2addr v5, p2

    div-int/2addr p1, v3

    mul-int/2addr p1, v3

    add-int/2addr v5, p1

    aput v5, v0, v1

    return-object v0

    :cond_0
    const/16 v4, 0x14

    if-ne v0, v4, :cond_1

    new-array v0, v1, [I

    .line 3
    iget-object v1, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v1, v1, v2

    mul-int/2addr p2, v1

    div-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p2, p1

    aput p2, v0, v2

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    .locals 11

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/YuvImage;->mWidth:I

    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-gt p2, v0, :cond_1

    if-eqz p3, :cond_0

    .line 3
    invoke-direct {p0, p1}, Landroid/graphics/YuvImage;->adjustRectangle(Landroid/graphics/Rect;)V

    .line 4
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Landroid/graphics/YuvImage;->calculateOffsets(II)[I

    move-result-object v6

    .line 5
    iget-object v2, p0, Landroid/graphics/YuvImage;->mData:[B

    iget v3, p0, Landroid/graphics/YuvImage;->mFormat:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v7, p0, Landroid/graphics/YuvImage;->mStrides:[I

    const/16 p1, 0x1000

    new-array v10, p1, [B

    move v8, p2

    move-object v9, p3

    invoke-static/range {v2 .. v10}, Landroid/graphics/YuvImage;->nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stream cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "quality must be 0..100"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rectangle is not inside the image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/YuvImage;->mHeight:I

    return v0
.end method

.method public getStrides()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/YuvImage;->mWidth:I

    return v0
.end method

.method public getYuvData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    return-object v0
.end method

.method public getYuvFormat()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    return v0
.end method
