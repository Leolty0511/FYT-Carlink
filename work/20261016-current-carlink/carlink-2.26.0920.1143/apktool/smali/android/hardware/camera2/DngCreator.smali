.class public final Landroid/hardware/camera2/DngCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final BYTES_PER_RGB_PIX:I = 0x3

.field private static final DEFAULT_PIXEL_STRIDE:I = 0x2

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field private static final GPS_LAT_REF_NORTH:Ljava/lang/String; = "N"

.field private static final GPS_LAT_REF_SOUTH:Ljava/lang/String; = "S"

.field private static final GPS_LONG_REF_EAST:Ljava/lang/String; = "E"

.field private static final GPS_LONG_REF_WEST:Ljava/lang/String; = "W"

.field public static final MAX_THUMBNAIL_DIMENSION:I = 0x100

.field private static final TAG:Ljava/lang/String; = "DngCreator"

.field private static final TAG_ORIENTATION_UNKNOWN:I = 0x9

.field private static final TIFF_DATETIME_FORMAT:Ljava/lang/String; = "yyyy:MM:dd HH:mm:ss"

.field private static final sExifGPSDateStamp:Ljava/text/DateFormat;


# instance fields
.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mNativeContext:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string/jumbo v1, "yyyy:MM:dd"

    .line 4
    .line 5
    .line 6
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    .line 12
    .line 13
    const-string v1, "UTC"

    .line 14
    .line 15
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/hardware/camera2/DngCreator;->nativeClassInit()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "UTC"

    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    if-eqz p2, :cond_3

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x1

    .line 37
    if-ne v2, v3, :cond_0

    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    :goto_0
    sub-long v2, v0, v2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    if-nez v2, :cond_1

    .line 47
    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v4, "Sensor timestamp source is unexpected: "

    .line 56
    .line 57
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "DngCreator"

    .line 68
    .line 69
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    goto :goto_0

    .line 77
    :goto_1
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 78
    .line 79
    invoke-virtual {p2, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/lang/Long;

    .line 84
    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    const-wide/32 v4, 0xf4240

    .line 92
    .line 93
    .line 94
    div-long/2addr v0, v4

    .line 95
    add-long/2addr v0, v2

    .line 96
    :cond_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 97
    .line 98
    const-string/jumbo v3, "yyyy:MM:dd HH:mm:ss"

    .line 99
    .line 100
    .line 101
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 102
    .line 103
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v2, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/DngCreator;->nativeInit(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    const-string p2, "Null argument to DngCreator constructor"

    .line 136
    .line 137
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1
.end method

.method private static colorToRgb(II[B)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-byte v0, v0

    .line 6
    aput-byte v0, p2, p1

    .line 7
    .line 8
    add-int/lit8 v0, p1, 0x1

    .line 9
    .line 10
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-byte v1, v1

    .line 15
    aput-byte v1, p2, v0

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x2

    .line 18
    .line 19
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    int-to-byte p0, p0

    .line 24
    aput-byte p0, p2, p1

    .line 25
    .line 26
    return-void
.end method

.method private static convertToRGB(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 15

    .line 41
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 42
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/lit8 v0, v8, 0x3

    mul-int v1, v0, v9

    .line 43
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 44
    new-array v11, v8, [I

    .line 45
    new-array v12, v0, [B

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-ge v14, v9, :cond_1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v11

    move v3, v8

    move v5, v14

    move v6, v8

    .line 46
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v13

    :goto_1
    if-ge v0, v8, :cond_0

    .line 47
    aget v1, v11, v0

    mul-int/lit8 v2, v0, 0x3

    invoke-static {v1, v2, v12}, Landroid/hardware/camera2/DngCreator;->colorToRgb(II[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v10
.end method

.method private static convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .locals 21

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x3

    mul-int v3, v2, v1

    .line 3
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    .line 7
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 8
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 9
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 10
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 11
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 13
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    .line 14
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    .line 15
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    .line 16
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    .line 17
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    .line 18
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    const/4 v13, 0x3

    new-array v13, v13, [B

    .line 19
    fill-array-data v13, :array_0

    add-int/lit8 v14, v0, -0x1

    mul-int/2addr v14, v4

    add-int/lit8 v14, v14, 0x1

    .line 20
    new-array v14, v14, [B

    .line 21
    div-int/lit8 v15, v0, 0x2

    add-int/lit8 v15, v15, -0x1

    mul-int v16, v5, v15

    move-object/from16 v17, v3

    add-int/lit8 v3, v16, 0x1

    new-array v3, v3, [B

    mul-int/2addr v15, v6

    add-int/lit8 v15, v15, 0x1

    .line 22
    new-array v15, v15, [B

    .line 23
    new-array v2, v2, [B

    const/16 v16, 0x0

    move-object/from16 p0, v2

    move/from16 v2, v16

    :goto_0
    if-ge v2, v1, :cond_1

    .line 24
    div-int/lit8 v16, v2, 0x2

    move/from16 v18, v1

    mul-int v1, v10, v2

    .line 25
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26
    invoke-virtual {v7, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    mul-int v1, v12, v16

    .line 27
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    mul-int v1, v11, v16

    .line 29
    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 30
    invoke-virtual {v9, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    .line 31
    div-int/lit8 v16, v1, 0x2

    mul-int v19, v4, v1

    .line 32
    aget-byte v19, v14, v19

    const/16 v20, 0x0

    aput-byte v19, v13, v20

    mul-int v19, v5, v16

    .line 33
    aget-byte v19, v3, v19

    const/16 v20, 0x1

    aput-byte v19, v13, v20

    mul-int v16, v16, v6

    .line 34
    aget-byte v16, v15, v16

    const/16 v19, 0x2

    aput-byte v16, v13, v19

    move/from16 v16, v0

    mul-int/lit8 v0, v1, 0x3

    move-object/from16 v19, v3

    move-object/from16 v3, p0

    .line 35
    invoke-static {v13, v0, v3}, Landroid/hardware/camera2/DngCreator;->yuvToRgb([BI[B)V

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v16

    move-object/from16 v3, v19

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v17

    move-object/from16 v3, p0

    .line 36
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v3, v19

    goto :goto_0

    :cond_1
    move-object/from16 v0, v17

    .line 37
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 38
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 39
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 40
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native nativeDestroy()V
.end method

.method private synchronized native nativeInit(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;)V
.end method

.method private synchronized native nativeSetDescription(Ljava/lang/String;)V
.end method

.method private synchronized native nativeSetGpsTags([ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;[I)V
.end method

.method private synchronized native nativeSetOrientation(I)V
.end method

.method private synchronized native nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V
.end method

.method private synchronized native nativeWriteImage(Ljava/io/OutputStream;IILjava/nio/ByteBuffer;IIJZ)V
.end method

.method private synchronized native nativeWriteInputStream(Ljava/io/OutputStream;Ljava/io/InputStream;IIJ)V
.end method

.method private static toExifLatLong(D)[I
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int v0, p0

    int-to-double v1, v0

    sub-double/2addr p0, v1

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v1

    double-to-int v1, p0

    int-to-double v2, v1

    sub-double/2addr p0, v2

    const-wide v2, 0x40b7700000000000L    # 6000.0

    mul-double/2addr p0, v2

    double-to-int p0, p0

    const/4 p1, 0x6

    new-array p1, p1, [I

    const/4 v2, 0x0

    aput v0, p1, v2

    const/4 v0, 0x1

    aput v0, p1, v0

    const/4 v2, 0x2

    aput v1, p1, v2

    const/4 v1, 0x3

    aput v0, p1, v1

    const/4 v0, 0x4

    aput p0, p1, v0

    const/4 p0, 0x5

    const/16 v0, 0x64

    aput v0, p1, p0

    return-object p1
.end method

.method private writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V
    .locals 10

    move v2, p1

    move v3, p2

    move/from16 v5, p6

    if-lez v2, :cond_2

    if-lez v3, :cond_2

    .line 8
    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    int-to-long v6, v5

    int-to-long v8, v3

    mul-long/2addr v6, v8

    add-long v6, v6, p7

    cmp-long v4, v0, v6

    if-ltz v4, :cond_1

    mul-int v0, p5, v2

    if-gt v0, v5, :cond_0

    .line 9
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 10
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v9

    move-object v0, p0

    move-object v1, p4

    move v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p6

    move v6, p5

    move-wide/from16 v7, p7

    .line 11
    invoke-direct/range {v0 .. v9}, Landroid/hardware/camera2/DngCreator;->nativeWriteImage(Ljava/io/OutputStream;IILjava/nio/ByteBuffer;IIJZ)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void

    .line 13
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid image pixel stride, row byte width "

    const-string v3, " is too large, expecting "

    .line 14
    invoke-static {v2, v0, v3, v5}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Image size "

    const-string v4, " is too small (must be larger than "

    .line 17
    invoke-static {v3, v0, v1, v4}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 18
    invoke-static {v0, v6, v7, v1}, Landroid/app/m;->k(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image with invalid width, height: ("

    const-string v4, ","

    const-string v5, ") passed to write"

    .line 21
    invoke-static {v1, p1, v4, p2, v5}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static yuvToRgb([BI[B)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v0, p0, v0

    .line 3
    .line 4
    and-int/lit16 v0, v0, 0xff

    .line 5
    .line 6
    int-to-float v0, v0

    .line 7
    const/4 v1, 0x1

    .line 8
    aget-byte v1, p0, v1

    .line 9
    .line 10
    and-int/lit16 v1, v1, 0xff

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    const/4 v2, 0x2

    .line 14
    aget-byte p0, p0, v2

    .line 15
    .line 16
    and-int/lit16 p0, p0, 0xff

    .line 17
    .line 18
    int-to-float p0, p0

    .line 19
    const/high16 v3, 0x43000000    # 128.0f

    .line 20
    .line 21
    sub-float/2addr p0, v3

    .line 22
    const v4, 0x3fb374bc    # 1.402f

    .line 23
    .line 24
    .line 25
    mul-float/2addr v4, p0

    .line 26
    add-float/2addr v4, v0

    .line 27
    sub-float/2addr v1, v3

    .line 28
    const v3, 0x3eb0331e    # 0.34414f

    .line 29
    .line 30
    .line 31
    mul-float/2addr v3, v1

    .line 32
    sub-float v3, v0, v3

    .line 33
    .line 34
    const v5, 0x3f36d1e1    # 0.71414f

    .line 35
    .line 36
    .line 37
    mul-float/2addr p0, v5

    .line 38
    sub-float/2addr v3, p0

    .line 39
    const p0, 0x3fe2d0e5    # 1.772f

    .line 40
    .line 41
    .line 42
    mul-float/2addr v1, p0

    .line 43
    add-float/2addr v1, v0

    .line 44
    const/high16 p0, 0x437f0000    # 255.0f

    .line 45
    .line 46
    invoke-static {p0, v4}, Ljava/lang/Math;->min(FF)F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    float-to-int v0, v0

    .line 56
    int-to-byte v0, v0

    .line 57
    aput-byte v0, p2, p1

    .line 58
    .line 59
    add-int/lit8 v0, p1, 0x1

    .line 60
    .line 61
    invoke-static {p0, v3}, Ljava/lang/Math;->min(FF)F

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    float-to-int v3, v3

    .line 70
    int-to-byte v3, v3

    .line 71
    aput-byte v3, p2, v0

    .line 72
    .line 73
    add-int/2addr p1, v2

    .line 74
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    invoke-static {v4, p0}, Ljava/lang/Math;->max(FF)F

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    float-to-int p0, p0

    .line 83
    int-to-byte p0, p0

    .line 84
    aput-byte p0, p2, p1

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/DngCreator;->nativeDestroy()V

    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/hardware/camera2/DngCreator;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/hardware/camera2/DngCreator;->nativeSetDescription(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v0, "Null description passed to setDescription."

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;
    .locals 13

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    invoke-static {v0, v1}, Landroid/hardware/camera2/DngCreator;->toExifLatLong(D)[I

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    invoke-static {v2, v3}, Landroid/hardware/camera2/DngCreator;->toExifLatLong(D)[I

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    const-wide/16 v10, 0x0

    .line 24
    .line 25
    cmpl-double p1, v0, v10

    .line 26
    .line 27
    if-ltz p1, :cond_0

    .line 28
    .line 29
    const-string p1, "N"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p1, "S"

    .line 33
    .line 34
    :goto_0
    move-object v8, p1

    .line 35
    cmpl-double p1, v2, v10

    .line 36
    .line 37
    if-ltz p1, :cond_1

    .line 38
    .line 39
    const-string p1, "E"

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p1, "W"

    .line 43
    .line 44
    :goto_1
    move-object v10, p1

    .line 45
    sget-object p1, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    .line 46
    .line 47
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    iget-object p1, p0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 56
    .line 57
    invoke-virtual {p1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x6

    .line 61
    new-array v12, p1, [I

    .line 62
    .line 63
    iget-object p1, p0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 64
    .line 65
    const/16 v0, 0xb

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 v0, 0x0

    .line 72
    aput p1, v12, v0

    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    aput p1, v12, p1

    .line 76
    .line 77
    iget-object v0, p0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 78
    .line 79
    const/16 v1, 0xc

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/4 v1, 0x2

    .line 86
    aput v0, v12, v1

    .line 87
    .line 88
    const/4 v0, 0x3

    .line 89
    aput p1, v12, v0

    .line 90
    .line 91
    iget-object v0, p0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 92
    .line 93
    const/16 v1, 0xd

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    const/4 v1, 0x4

    .line 100
    aput v0, v12, v1

    .line 101
    .line 102
    const/4 v0, 0x5

    .line 103
    aput p1, v12, v0

    .line 104
    .line 105
    move-object v6, p0

    .line 106
    invoke-direct/range {v6 .. v12}, Landroid/hardware/camera2/DngCreator;->nativeSetGpsTags([ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;[I)V

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 111
    .line 112
    const-string v0, "Null location passed to setLocation"

    .line 113
    .line 114
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1
.end method

.method public setOrientation(I)Landroid/hardware/camera2/DngCreator;
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    if-gt p1, v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/16 p1, 0x9

    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/DngCreator;->nativeSetOrientation(I)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v1, "Orientation "

    .line 18
    .line 19
    const-string v2, " is not a valid EXIF orientation value"

    .line 20
    .line 21
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)Landroid/hardware/camera2/DngCreator;
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0x100

    if-gt v0, v2, :cond_0

    if-gt v1, v2, :cond_0

    .line 3
    invoke-static {p1}, Landroid/hardware/camera2/DngCreator;->convertToRGB(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/camera2/DngCreator;->nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Thumbnail dimensions width,height ("

    const-string v3, ","

    const-string v4, ") too large, dimensions must be smaller than 256"

    .line 6
    invoke-static {v2, v0, v3, v1, v4}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null argument to setThumbnail"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setThumbnail(Landroid/media/Image;)Landroid/hardware/camera2/DngCreator;
    .locals 5

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 17
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 18
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    const/16 v2, 0x100

    if-gt v0, v2, :cond_0

    if-gt v1, v2, :cond_0

    .line 19
    invoke-static {p1}, Landroid/hardware/camera2/DngCreator;->convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 20
    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/camera2/DngCreator;->nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V

    return-object p0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Thumbnail dimensions width,height ("

    const-string v3, ","

    const-string v4, ") too large, dimensions must be smaller than 256"

    .line 22
    invoke-static {v2, v0, v3, v1, v4}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported Image format "

    .line 25
    invoke-static {v1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null argument to setThumbnail"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V
    .locals 10

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 2
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    move-object v1, p0

    move-object v4, p3

    move-object v5, p1

    move-wide v8, p4

    .line 3
    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative offset passed to writeByteBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null pixels passed to writeByteBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null size passed to writeByteBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null dngOutput passed to writeByteBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V
    .locals 12

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x20

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    array-length v1, v0

    .line 20
    if-lez v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aget-object v2, v0, v1

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {p2}, Landroid/media/Image;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {p2}, Landroid/media/Image;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    aget-object p2, v0, v1

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    aget-object p2, v0, v1

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getRowStride()I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    const-wide/16 v10, 0x0

    .line 50
    .line 51
    move-object v3, p0

    .line 52
    move-object v7, p1

    .line 53
    invoke-direct/range {v3 .. v11}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string p2, "Image with no planes passed to writeImage"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string p2, "Unsupported image format "

    .line 68
    .line 69
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    const-string p2, "Null pixels to writeImage"

    .line 80
    .line 81
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string p2, "Null dngOutput to writeImage"

    .line 88
    .line 89
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public writeInputStream(Ljava/io/OutputStream;Landroid/util/Size;Ljava/io/InputStream;J)V
    .locals 8

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    if-eqz p3, :cond_2

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v0, p4, v0

    .line 10
    .line 11
    if-ltz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-lez v4, :cond_0

    .line 22
    .line 23
    if-lez v5, :cond_0

    .line 24
    .line 25
    move-object v1, p0

    .line 26
    move-object v2, p1

    .line 27
    move-object v3, p3

    .line 28
    move-wide v6, p4

    .line 29
    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/DngCreator;->nativeWriteInputStream(Ljava/io/OutputStream;Ljava/io/InputStream;IIJ)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p2, "Size with invalid width, height: ("

    .line 36
    .line 37
    const-string p3, ","

    .line 38
    .line 39
    const-string p4, ") passed to writeInputStream"

    .line 40
    .line 41
    invoke-static {p2, v4, p3, v5, p4}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p2, "Negative offset passed to writeInputStream"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string p2, "Null pixels passed to writeInputStream"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string p2, "Null size passed to writeInputStream"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string p2, "Null dngOutput passed to writeInputStream"

    .line 76
    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method
