.class public Landroid/graphics/YuvImageEx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "YuvImageEx"

.field public static final YUV_FORMAT_NV12:I = 0x12

.field public static final YUV_FORMAT_NV21:I = 0x11

.field public static final YUV_FORMAT_YUY2:I = 0x14

.field private static sLoadLibrarySuccess:Z = true


# instance fields
.field private mData:[B

.field private mFormat:I

.field private mHeight:I

.field private mWidth:I

.field private mYuvImage:Landroid/graphics/YuvImage;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    :try_start_0
    const-string/jumbo v0, "yuv_jpeg_converter_jni"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const/4 v1, 0x0

    .line 10
    sput-boolean v1, Landroid/graphics/YuvImageEx;->sLoadLibrarySuccess:Z

    .line 11
    .line 12
    const-string v1, "YuvImageEx"

    .line 13
    .line 14
    const-string/jumbo v2, "load libyuv_jpeg_converter_jni.so fail!"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public constructor <init>([BIII[I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_5

    .line 5
    .line 6
    const/16 v0, 0x14

    .line 7
    .line 8
    const/16 v1, 0x11

    .line 9
    .line 10
    if-eq p2, v1, :cond_1

    .line 11
    .line 12
    const/16 v2, 0x12

    .line 13
    .line 14
    if-eq p2, v2, :cond_1

    .line 15
    .line 16
    if-ne p2, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string p2, "YuvImageEx format parameter must be NV12, NV21 or YUY2!"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    :goto_0
    if-lez p3, :cond_4

    .line 28
    .line 29
    if-lez p4, :cond_4

    .line 30
    .line 31
    if-eq p2, v1, :cond_3

    .line 32
    .line 33
    if-ne p2, v0, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const/4 p5, 0x0

    .line 37
    iput-object p5, p0, Landroid/graphics/YuvImageEx;->mYuvImage:Landroid/graphics/YuvImage;

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    :goto_1
    new-instance v6, Landroid/graphics/YuvImage;

    .line 41
    .line 42
    move-object v0, v6

    .line 43
    move-object v1, p1

    .line 44
    move v2, p2

    .line 45
    move v3, p3

    .line 46
    move v4, p4

    .line 47
    move-object v5, p5

    .line 48
    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 49
    .line 50
    .line 51
    iput-object v6, p0, Landroid/graphics/YuvImageEx;->mYuvImage:Landroid/graphics/YuvImage;

    .line 52
    .line 53
    :goto_2
    iput-object p1, p0, Landroid/graphics/YuvImageEx;->mData:[B

    .line 54
    .line 55
    iput p3, p0, Landroid/graphics/YuvImageEx;->mWidth:I

    .line 56
    .line 57
    iput p4, p0, Landroid/graphics/YuvImageEx;->mHeight:I

    .line 58
    .line 59
    iput p2, p0, Landroid/graphics/YuvImageEx;->mFormat:I

    .line 60
    .line 61
    return-void

    .line 62
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string p2, "YuvImageEx width and height must be larger than 0"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string p2, "YuvImageEx yuv cann\'t be null"

    .line 73
    .line 74
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public static decodeJpegToYuv(Ljava/lang/String;)Landroid/graphics/YuvImage;
    .locals 11

    const-string v0, "decodeJpegToYuv close inputstrem error"

    const-string v1, "YuvImageEx"

    const-string v2, "file is empty, filePath: "

    const-string v3, "file is not exist: "

    .line 1
    sget-boolean v4, Landroid/graphics/YuvImageEx;->sLoadLibrarySuccess:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    .line 2
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 6
    :cond_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    long-to-int v2, v6

    .line 7
    :try_start_1
    invoke-static {p0, v2}, Landroid/graphics/YuvImageEx;->nativeDecodeJpegToYuvEx(Ljava/io/InputStream;I)Landroid/graphics/YuvImage;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v4

    move-object v4, p0

    move-object p0, v10

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v4, p0

    move-object p0, v2

    goto :goto_4

    :catch_0
    move-exception v2

    move-object v10, v2

    move-object v2, p0

    move-object p0, v10

    goto :goto_2

    .line 8
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p0, v4

    :goto_0
    if-eqz v4, :cond_2

    .line 9
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    move-object v4, p0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v2, v4

    :goto_2
    :try_start_4
    const-string v3, "decodeJpegToYuv file error"

    .line 12
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_3

    .line 14
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-object v4

    :catchall_2
    move-exception p0

    move-object v4, v2

    :goto_4
    if-eqz v4, :cond_4

    .line 17
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v2

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    :cond_4
    :goto_5
    throw p0

    .line 21
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "decodeJpegToYuv load libyuv_jpeg_converter_jni.so fail"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeJpegToYuv([B)Landroid/graphics/YuvImage;
    .locals 1

    .line 22
    sget-boolean v0, Landroid/graphics/YuvImageEx;->sLoadLibrarySuccess:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Landroid/graphics/YuvImageEx;->nativeDecodeJpegToYuv([BI)Landroid/graphics/YuvImage;

    move-result-object p0

    return-object p0

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "decodeJpegToYuv load libyuv_jpeg_converter_jni.so fail"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeYuvToJpeg([BIII[ILandroid/graphics/Rect;IILjava/io/OutputStream;)Z
    .locals 15

    move/from16 v7, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    .line 21
    sget-boolean v0, Landroid/graphics/YuvImageEx;->sLoadLibrarySuccess:Z

    if-eqz v0, :cond_e

    if-eqz p0, :cond_d

    const/16 v11, 0x14

    const/16 v0, 0x12

    const/16 v12, 0x11

    if-eq v7, v12, :cond_1

    if-eq v7, v0, :cond_1

    if-ne v7, v11, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodeYuvToJpeg format parameter must be NV12, NV21 or YUY2!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-lez p2, :cond_c

    if-lez p3, :cond_c

    if-ltz v8, :cond_b

    const/16 v1, 0x64

    if-gt v8, v1, :cond_b

    if-eqz v9, :cond_3

    const/16 v1, 0x5a

    if-eq v9, v1, :cond_3

    const/16 v1, 0xb4

    if-eq v9, v1, :cond_3

    const/16 v1, 0x10e

    if-ne v9, v1, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodeYuvToJpeg rotation parameter invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-eqz v10, :cond_a

    const/4 v13, 0x0

    const-string v14, "YuvImageEx"

    if-eq v7, v12, :cond_5

    if-ne v7, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v13

    goto :goto_3

    :cond_5
    :goto_2
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    .line 24
    invoke-static/range {v0 .. v6}, Landroid/graphics/YuvImageEx;->nativeEncodeYuvToJpeg([BIIIIILjava/io/OutputStream;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sprd jpeg hardware encoder failed, format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    if-nez v0, :cond_9

    if-eq v7, v12, :cond_7

    if-ne v7, v11, :cond_9

    .line 26
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "try to use software encoder of YuvImage, format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_8

    const-string/jumbo v0, "software encoder YuvImage donn\'t support rotate!"

    .line 27
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 28
    :cond_8
    new-instance v6, Landroid/graphics/YuvImage;

    move-object v0, v6

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    move-object/from16 v0, p5

    .line 29
    invoke-virtual {v6, v0, v8, v10}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v0

    :cond_9
    return v0

    .line 30
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodeYuvToJpeg stream cann\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodeYuvToJpeg quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodeYuvToJpeg width and height must be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodeYuvToJpeg yuv cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "encodeYuvToJpeg load libyuv_jpeg_converter_jni.so fail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isJpegHwCodecAvailable()Z
    .locals 1

    sget-boolean v0, Landroid/graphics/YuvImageEx;->sLoadLibrarySuccess:Z

    return v0
.end method

.method private static native nativeDecodeJpegToYuv([BI)Landroid/graphics/YuvImage;
.end method

.method private static native nativeDecodeJpegToYuvEx(Ljava/io/InputStream;I)Landroid/graphics/YuvImage;
.end method

.method private static native nativeEncodeYuvToJpeg([BIIIIILjava/io/OutputStream;)Z
.end method


# virtual methods
.method public encodeYuvToJpeg(Landroid/graphics/Rect;IILjava/io/OutputStream;)Z
    .locals 10

    .line 1
    sget-boolean v0, Landroid/graphics/YuvImageEx;->sLoadLibrarySuccess:Z

    if-eqz v0, :cond_a

    if-ltz p2, :cond_9

    const/16 v0, 0x64

    if-gt p2, v0, :cond_9

    if-eqz p3, :cond_1

    const/16 v0, 0x5a

    if-eq p3, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p3, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encodeYuvToJpeg rotation parameter invalid, must be 0, 90, 180 or 270!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_8

    .line 3
    iget v1, p0, Landroid/graphics/YuvImageEx;->mFormat:I

    const/16 v7, 0x11

    const/4 v8, 0x0

    const-string v9, "YuvImageEx"

    if-eq v1, v7, :cond_3

    const/16 v0, 0x12

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v8

    goto :goto_2

    .line 4
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/graphics/YuvImageEx;->mData:[B

    iget v2, p0, Landroid/graphics/YuvImageEx;->mWidth:I

    iget v3, p0, Landroid/graphics/YuvImageEx;->mHeight:I

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/YuvImageEx;->nativeEncodeYuvToJpeg([BIIIIILjava/io/OutputStream;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sprd jpeg hardware encoder failed, mFormat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/graphics/YuvImageEx;->mFormat:I

    .line 6
    invoke-static {v1, v2, v9}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_4
    :goto_2
    if-nez v0, :cond_7

    .line 7
    iget-object v1, p0, Landroid/graphics/YuvImageEx;->mYuvImage:Landroid/graphics/YuvImage;

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/graphics/YuvImageEx;->mFormat:I

    if-eq v1, v7, :cond_5

    const/16 v2, 0x14

    if-ne v1, v2, :cond_7

    .line 8
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "try to use software encoder YuvImage, mFormat: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/graphics/YuvImageEx;->mFormat:I

    .line 9
    invoke-static {v0, v1, v9}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eqz p3, :cond_6

    const-string/jumbo p1, "software encoder YuvImage donn\'t support rotate!"

    .line 10
    invoke-static {v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 11
    :cond_6
    iget-object p3, p0, Landroid/graphics/YuvImageEx;->mYuvImage:Landroid/graphics/YuvImage;

    invoke-virtual {p3, p1, p2, p4}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v0

    :cond_7
    return v0

    .line 12
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encodeYuvToJpeg stream cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encodeYuvToJpeg quality must be 0..100"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "encodeYuvToJpeg load libyuv_jpeg_converter_jni.so fail"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
