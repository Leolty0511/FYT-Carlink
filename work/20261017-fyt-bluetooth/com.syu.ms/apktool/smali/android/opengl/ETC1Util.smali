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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressTexture(Ljava/nio/Buffer;IIII)Landroid/opengl/ETC1Util$ETC1Texture;
    .locals 8

    .line 1
    invoke-static {p1, p2}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v0

    .line 3
    invoke-static/range {v2 .. v7}, Landroid/opengl/ETC1;->encodeImage(Ljava/nio/Buffer;IIIILjava/nio/Buffer;)V

    .line 4
    new-instance p0, Landroid/opengl/ETC1Util$ETC1Texture;

    invoke-direct {p0, p1, p2, v0}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public static createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;
    .locals 10

    const/16 v0, 0x1000

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x10

    .line 1
    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 3
    invoke-virtual {v4, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    invoke-static {v4}, Landroid/opengl/ETC1;->isValid(Ljava/nio/Buffer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-static {v4}, Landroid/opengl/ETC1;->getWidth(Ljava/nio/Buffer;)I

    move-result v3

    .line 6
    invoke-static {v4}, Landroid/opengl/ETC1;->getHeight(Ljava/nio/Buffer;)I

    move-result v4

    .line 7
    invoke-static {v3, v4}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v5

    .line 8
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    move v7, v2

    :goto_0
    if-ge v7, v5, :cond_1

    sub-int v8, v5, v7

    .line 9
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 10
    invoke-virtual {p0, v1, v2, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-ne v9, v8, :cond_0

    .line 11
    invoke-virtual {v6, v1, v2, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v7, v8

    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unable to read PKM file data."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_1
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    new-instance p0, Landroid/opengl/ETC1Util$ETC1Texture;

    invoke-direct {p0, v3, v4, v6}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    return-object p0

    .line 15
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Not a PKM file."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unable to read PKM file header."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isETC1Supported()Z
    .locals 6

    const/16 v0, 0x14

    new-array v1, v0, [I

    const v2, 0x86a2

    const/4 v3, 0x0

    .line 1
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 2
    aget v2, v1, v3

    if-le v2, v0, :cond_0

    .line 3
    new-array v1, v2, [I

    :cond_0
    const v0, 0x86a3

    .line 4
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_2

    .line 5
    aget v4, v1, v0

    const v5, 0x8d64

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v0, p5

    move-object v1, v8

    move v2, v6

    move v3, v7

    .line 10
    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1;->decodeImage(Ljava/nio/Buffer;Ljava/nio/Buffer;IIII)V

    move v0, p0

    move v1, p1

    move v2, p3

    move v3, v6

    move v4, v7

    move v5, p2

    move v6, p3

    move v7, p4

    .line 11
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_3
    return-void

    .line 12
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

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result p0

    const/16 v3, 0x10

    .line 5
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 6
    invoke-static {v4, v2, p0}, Landroid/opengl/ETC1;->formatHeader(Ljava/nio/Buffer;II)V

    const/16 v5, 0x1000

    new-array v6, v5, [B

    const/4 v7, 0x0

    .line 7
    invoke-virtual {v4, v6, v7, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {p1, v6, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 9
    invoke-static {v2, p0}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result p0

    move v2, v7

    :goto_0
    if-ge v2, p0, :cond_0

    sub-int v3, p0, v2

    .line 10
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 11
    invoke-virtual {v0, v6, v7, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {p1, v6, v7, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v3

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw p0
.end method
