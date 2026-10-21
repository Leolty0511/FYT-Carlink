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

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x11

    .line 5
    .line 6
    if-eq p2, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x14

    .line 9
    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string/jumbo p2, "only support ImageFormat.NV21 and ImageFormat.YUY2 for now"

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    if-lez p3, :cond_4

    .line 23
    .line 24
    if-lez p4, :cond_4

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    if-nez p5, :cond_2

    .line 29
    .line 30
    invoke-direct {p0, p3, p2}, Landroid/graphics/YuvImage;->calculateStrides(II)[I

    .line 31
    .line 32
    .line 33
    move-result-object p5

    .line 34
    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 38
    .line 39
    :goto_1
    iput-object p1, p0, Landroid/graphics/YuvImage;->mData:[B

    .line 40
    .line 41
    iput p2, p0, Landroid/graphics/YuvImage;->mFormat:I

    .line 42
    .line 43
    iput p3, p0, Landroid/graphics/YuvImage;->mWidth:I

    .line 44
    .line 45
    iput p4, p0, Landroid/graphics/YuvImage;->mHeight:I

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string/jumbo p2, "yuv cannot be null"

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string/jumbo p2, "width and height must large than 0"

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method private adjustRectangle(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    .line 10
    .line 11
    const/16 v3, 0x11

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    and-int/lit8 v0, v0, -0x2

    .line 16
    .line 17
    and-int/lit8 v1, v1, -0x2

    .line 18
    .line 19
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    and-int/lit8 v3, v3, -0x2

    .line 22
    .line 23
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 24
    .line 25
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    and-int/lit8 v4, v4, -0x2

    .line 28
    .line 29
    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    add-int/2addr v3, v0

    .line 32
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 33
    .line 34
    add-int/2addr v4, v1

    .line 35
    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    :cond_0
    const/16 v1, 0x14

    .line 38
    .line 39
    if-ne v2, v1, :cond_1

    .line 40
    .line 41
    and-int/lit8 v0, v0, -0x2

    .line 42
    .line 43
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    and-int/lit8 v1, v1, -0x2

    .line 46
    .line 47
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    add-int/2addr v1, v0

    .line 50
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method private calculateStrides(II)[I
    .locals 4

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p2, v0, :cond_0

    new-array p2, v3, [I

    aput p1, p2, v2

    aput p1, p2, v1

    return-object p2

    :cond_0
    const/16 v0, 0x14

    if-ne p2, v0, :cond_1

    new-array p2, v1, [I

    mul-int/2addr p1, v3

    aput p1, p2, v2

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

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    new-array v0, v4, [I

    .line 11
    .line 12
    iget-object v1, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 13
    .line 14
    aget v5, v1, v3

    .line 15
    .line 16
    mul-int/2addr v5, p2

    .line 17
    add-int/2addr v5, p1

    .line 18
    aput v5, v0, v3

    .line 19
    .line 20
    iget v5, p0, Landroid/graphics/YuvImage;->mHeight:I

    .line 21
    .line 22
    aget v3, v1, v3

    .line 23
    .line 24
    mul-int/2addr v5, v3

    .line 25
    div-int/2addr p2, v4

    .line 26
    aget v1, v1, v2

    .line 27
    .line 28
    mul-int/2addr p2, v1

    .line 29
    add-int/2addr p2, v5

    .line 30
    div-int/2addr p1, v4

    .line 31
    mul-int/2addr p1, v4

    .line 32
    add-int/2addr p1, p2

    .line 33
    aput p1, v0, v2

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    const/16 v1, 0x14

    .line 37
    .line 38
    if-ne v0, v1, :cond_1

    .line 39
    .line 40
    new-array v0, v2, [I

    .line 41
    .line 42
    iget-object v1, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 43
    .line 44
    aget v1, v1, v3

    .line 45
    .line 46
    mul-int/2addr p2, v1

    .line 47
    div-int/2addr p1, v4

    .line 48
    mul-int/lit8 p1, p1, 0x4

    .line 49
    .line 50
    add-int/2addr p1, p2

    .line 51
    aput p1, v0, v3

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    return-object p1
.end method

.method public compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    .locals 11

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p0, Landroid/graphics/YuvImage;->mWidth:I

    .line 4
    .line 5
    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    if-ltz p2, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x64

    .line 20
    .line 21
    if-gt p2, v0, :cond_1

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, p1}, Landroid/graphics/YuvImage;->adjustRectangle(Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/graphics/YuvImage;->calculateOffsets(II)[I

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    iget-object v2, p0, Landroid/graphics/YuvImage;->mData:[B

    .line 37
    .line 38
    iget v3, p0, Landroid/graphics/YuvImage;->mFormat:I

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    iget-object v7, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 49
    .line 50
    const/16 p1, 0x1000

    .line 51
    .line 52
    new-array v10, p1, [B

    .line 53
    .line 54
    move v8, p2

    .line 55
    move-object v9, p3

    .line 56
    invoke-static/range {v2 .. v10}, Landroid/graphics/YuvImage;->nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string/jumbo p2, "stream cannot be null"

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string/jumbo p2, "quality must be 0..100"

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string/jumbo p2, "rectangle is not inside the image"

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/graphics/YuvImage;->mHeight:I

    return v0
.end method

.method public getStrides()[I
    .locals 1

    iget-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/graphics/YuvImage;->mWidth:I

    return v0
.end method

.method public getYuvData()[B
    .locals 1

    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    return-object v0
.end method

.method public getYuvFormat()I
    .locals 1

    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    return v0
.end method
