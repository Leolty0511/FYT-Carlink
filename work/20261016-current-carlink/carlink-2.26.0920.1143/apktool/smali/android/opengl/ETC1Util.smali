.class public Landroid/opengl/ETC1Util;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/ETC1Util$ETC1Texture;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressTexture(Ljava/nio/Buffer;IIII)Landroid/opengl/ETC1Util$ETC1Texture;
    .locals 8

    .line 1
    invoke-static {p1, p2}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v2, p0

    .line 18
    move v3, p1

    .line 19
    move v4, p2

    .line 20
    move v5, p3

    .line 21
    move v6, p4

    .line 22
    move-object v7, v0

    .line 23
    invoke-static/range {v2 .. v7}, Landroid/opengl/ETC1;->encodeImage(Ljava/nio/Buffer;IIIILjava/nio/Buffer;)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Landroid/opengl/ETC1Util$ETC1Texture;

    .line 27
    .line 28
    invoke-direct {p0, p1, p2, v0}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public static createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;
    .locals 10

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x10

    .line 7
    .line 8
    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-ne v4, v3, :cond_3

    .line 13
    .line 14
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    invoke-static {v4}, Landroid/opengl/ETC1;->isValid(Ljava/nio/Buffer;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-static {v4}, Landroid/opengl/ETC1;->getWidth(Ljava/nio/Buffer;)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v4}, Landroid/opengl/ETC1;->getHeight(Ljava/nio/Buffer;)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {v3, v4}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    move v7, v2

    .line 64
    :goto_0
    if-ge v7, v5, :cond_1

    .line 65
    .line 66
    sub-int v8, v5, v7

    .line 67
    .line 68
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    invoke-virtual {p0, v1, v2, v8}, Ljava/io/InputStream;->read([BII)I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-ne v9, v8, :cond_0

    .line 77
    .line 78
    invoke-virtual {v6, v1, v2, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    .line 81
    add-int/2addr v7, v8

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 84
    .line 85
    const-string v0, "Unable to read PKM file data."

    .line 86
    .line 87
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_1
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 92
    .line 93
    .line 94
    new-instance p0, Landroid/opengl/ETC1Util$ETC1Texture;

    .line 95
    .line 96
    invoke-direct {p0, v3, v4, v6}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 101
    .line 102
    const-string v0, "Not a PKM file."

    .line 103
    .line 104
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 109
    .line 110
    const-string v0, "Unable to read PKM file header."

    .line 111
    .line 112
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public static isETC1Supported()Z
    .locals 6

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const v2, 0x86a2

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 10
    .line 11
    .line 12
    aget v2, v1, v3

    .line 13
    .line 14
    if-le v2, v0, :cond_0

    .line 15
    .line 16
    new-array v1, v2, [I

    .line 17
    .line 18
    :cond_0
    const v0, 0x86a3

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 22
    .line 23
    .line 24
    move v0, v3

    .line 25
    :goto_0
    if-ge v0, v2, :cond_2

    .line 26
    .line 27
    aget v4, v1, v0

    .line 28
    .line 29
    const v5, 0x8d64

    .line 30
    .line 31
    .line 32
    if-ne v4, v5, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    return v0

    .line 36
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return v3
.end method

.method public static loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V
    .locals 9

    const/16 v0, 0x1907

    if-ne p3, v0, :cond_5

    const v0, 0x8363

    const/16 v1, 0x1401

    if-eq p4, v0, :cond_1

    if-ne p4, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported fallbackType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v6

    .line 4
    invoke-virtual {p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result v7

    .line 5
    invoke-virtual {p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object p5

    .line 6
    invoke-static {}, Landroid/opengl/ETC1Util;->isETC1Supported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p5}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    const v2, 0x8d64

    move v0, p0

    move v1, p1

    move v3, v6

    move v4, v7

    move v5, p2

    move v6, p3

    move-object v7, p5

    .line 8
    invoke-static/range {v0 .. v7}, Landroid/opengl/GLES10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    goto :goto_3

    :cond_2
    if-eq p4, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    :goto_2
    move v4, v0

    mul-int v5, v4, v6

    mul-int v0, v5, v7

    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 10
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v0, p5

    move-object v1, v8

    move v2, v6

    move v3, v7

    .line 11
    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1;->decodeImage(Ljava/nio/Buffer;Ljava/nio/Buffer;IIII)V

    move v0, p0

    move v1, p1

    move v2, p3

    move v3, v6

    move v4, v7

    move v5, p2

    move v6, p3

    move v7, p4

    .line 12
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_3
    return-void

    .line 13
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fallbackFormat must be GL_RGB"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadTexture(IIIIILjava/io/InputStream;)V
    .locals 6

    .line 1
    invoke-static {p5}, Landroid/opengl/ETC1Util;->createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object v5

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    return-void
.end method

.method public static writeTexture(Landroid/opengl/ETC1Util$ETC1Texture;Ljava/io/OutputStream;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/16 v3, 0x10

    .line 18
    .line 19
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v4, v2, p0}, Landroid/opengl/ETC1;->formatHeader(Ljava/nio/Buffer;II)V

    .line 32
    .line 33
    .line 34
    const/16 v5, 0x1000

    .line 35
    .line 36
    new-array v6, v5, [B

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-virtual {v4, v6, v7, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v6, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2, p0}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    move v2, v7

    .line 50
    :goto_0
    if-ge v2, p0, :cond_0

    .line 51
    .line 52
    sub-int v3, p0, v2

    .line 53
    .line 54
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v0, v6, v7, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v6, v7, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    add-int/2addr v2, v3

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 72
    .line 73
    .line 74
    throw p0
.end method
