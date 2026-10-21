.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x4b00

.field private static final MAX_NUM_PIXELS_THUMBNAIL:I = 0x30000

.field private static final OPTIONS_NONE:I = 0x0

.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final TARGET_SIZE_MINI_THUMBNAIL:I = 0x140

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 9

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2
    .line 3
    int-to-double v0, v0

    .line 4
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 5
    .line 6
    int-to-double v2, p0

    .line 7
    const/4 p0, 0x1

    .line 8
    const/4 v4, -0x1

    .line 9
    if-ne p2, v4, :cond_0

    .line 10
    .line 11
    move v5, p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    mul-double v5, v0, v2

    .line 14
    .line 15
    int-to-double v7, p2

    .line 16
    div-double/2addr v5, v7

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    double-to-int v5, v5

    .line 26
    :goto_0
    if-ne p1, v4, :cond_1

    .line 27
    .line 28
    const/16 v0, 0x80

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    int-to-double v6, p1

    .line 32
    div-double/2addr v0, v6

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    div-double/2addr v2, v6

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    double-to-int v0, v0

    .line 47
    :goto_1
    if-ge v0, v5, :cond_2

    .line 48
    .line 49
    return v5

    .line 50
    :cond_2
    if-ne p2, v4, :cond_3

    .line 51
    .line 52
    if-ne p1, v4, :cond_3

    .line 53
    .line 54
    return p0

    .line 55
    :cond_3
    if-ne p1, v4, :cond_4

    .line 56
    .line 57
    return v5

    .line 58
    :cond_4
    return v0
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 p1, 0x8

    .line 6
    .line 7
    if-gt p0, p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    :goto_0
    if-ge p1, p0, :cond_1

    .line 11
    .line 12
    shl-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 p0, p0, 0x7

    .line 16
    .line 17
    div-int/2addr p0, p1

    .line 18
    mul-int/2addr p1, p0

    .line 19
    :cond_1
    return p1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 14

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "ThumbnailUtils"

    .line 4
    .line 5
    const-string v2, "Unable to decode file "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne p1, v4, :cond_0

    .line 10
    .line 11
    move v5, v4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v5, v3

    .line 14
    :goto_0
    const/16 v6, 0x60

    .line 15
    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    const/16 v7, 0x140

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v7, v6

    .line 22
    :goto_1
    if-eqz v5, :cond_2

    .line 23
    .line 24
    const/high16 v5, 0x30000

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    const/16 v5, 0x4b00

    .line 28
    .line 29
    :goto_2
    new-instance v8, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    invoke-direct {v8, v9}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>(Landroid/media/ThumbnailUtils$1;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    if-eqz v10, :cond_4

    .line 40
    .line 41
    iget v10, v10, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 42
    .line 43
    const/16 v11, 0x1f

    .line 44
    .line 45
    if-eq v10, v11, :cond_3

    .line 46
    .line 47
    invoke-static {v10}, Landroid/media/MediaFile;->isRawImageFileType(I)Z

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-eqz v10, :cond_4

    .line 52
    .line 53
    :cond_3
    invoke-static {p0, v7, v5, v8}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    .line 54
    .line 55
    .line 56
    iget-object v8, v8, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    move-object v8, v9

    .line 60
    :goto_3
    if-nez v8, :cond_9

    .line 61
    .line 62
    invoke-static {p0, v7, v5, v8}, Landroid/media/ThumbnailUtilsEx;->createImageThumbnailEx(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    if-nez v10, :cond_5

    .line 67
    .line 68
    return-object v9

    .line 69
    :cond_5
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    .line 70
    .line 71
    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    .line 73
    .line 74
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    .line 79
    .line 80
    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    .line 82
    .line 83
    iput v4, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 84
    .line 85
    iput-boolean v4, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 86
    .line 87
    invoke-static {v11, v9, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 88
    .line 89
    .line 90
    iget-boolean v4, v12, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 91
    .line 92
    if-nez v4, :cond_7

    .line 93
    .line 94
    iget v4, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 95
    .line 96
    const/4 v13, -0x1

    .line 97
    if-eq v4, v13, :cond_7

    .line 98
    .line 99
    iget v4, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 100
    .line 101
    if-ne v4, v13, :cond_6

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_6
    invoke-static {v12, v7, v5}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    iput v4, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 109
    .line 110
    iput-boolean v3, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 111
    .line 112
    iput-boolean v3, v12, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 113
    .line 114
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 115
    .line 116
    iput-object v3, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 117
    .line 118
    invoke-static {v11, v9, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 119
    .line 120
    .line 121
    move-result-object v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_a

    .line 126
    :catch_0
    move-exception p0

    .line 127
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .line 129
    .line 130
    goto :goto_a

    .line 131
    :cond_7
    :goto_4
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :catch_1
    move-exception p0

    .line 136
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .line 138
    .line 139
    :goto_5
    return-object v9

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    move-object v9, v10

    .line 142
    goto :goto_8

    .line 143
    :catch_2
    move-exception v3

    .line 144
    move-object v9, v10

    .line 145
    goto :goto_6

    .line 146
    :catch_3
    move-exception p0

    .line 147
    move-object v9, v10

    .line 148
    goto :goto_7

    .line 149
    :catchall_1
    move-exception p0

    .line 150
    goto :goto_8

    .line 151
    :catch_4
    move-exception v3

    .line 152
    :goto_6
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p0, ". OutOfMemoryError."

    .line 161
    .line 162
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {v1, p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 170
    .line 171
    .line 172
    if-eqz v9, :cond_9

    .line 173
    .line 174
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_a

    .line 178
    :catch_5
    move-exception p0

    .line 179
    :goto_7
    :try_start_6
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 180
    .line 181
    .line 182
    if-eqz v9, :cond_9

    .line 183
    .line 184
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 185
    .line 186
    .line 187
    goto :goto_a

    .line 188
    :goto_8
    if-eqz v9, :cond_8

    .line 189
    .line 190
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 191
    .line 192
    .line 193
    goto :goto_9

    .line 194
    :catch_6
    move-exception p1

    .line 195
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    .line 197
    .line 198
    :cond_8
    :goto_9
    throw p0

    .line 199
    :cond_9
    :goto_a
    const/4 p0, 0x3

    .line 200
    if-ne p1, p0, :cond_a

    .line 201
    .line 202
    const/4 p0, 0x2

    .line 203
    invoke-static {v8, v6, v6, p0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    :cond_a
    return-object v8
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const-string v1, "ThumbnailUtils"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 27
    .line 28
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 36
    .line 37
    array-length v5, v0

    .line 38
    invoke-static {v0, v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    invoke-static {v2, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 46
    .line 47
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 48
    .line 49
    div-int/2addr v6, v5

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v6, v4

    .line 52
    :goto_1
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 53
    .line 54
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    invoke-static {v1, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 62
    .line 63
    iget p2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 64
    .line 65
    div-int/2addr p2, p1

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    if-lt v6, p2, :cond_2

    .line 69
    .line 70
    iget p0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 71
    .line 72
    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 73
    .line 74
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 75
    .line 76
    array-length p2, v0

    .line 77
    invoke-static {v0, v4, p2, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iput-object p2, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 82
    .line 83
    if-eqz p2, :cond_3

    .line 84
    .line 85
    iput-object v0, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailData:[B

    .line 86
    .line 87
    iput p0, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailWidth:I

    .line 88
    .line 89
    iput p1, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailHeight:I

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 93
    .line 94
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    iput-object p0, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 99
    .line 100
    :cond_3
    :goto_2
    return-void
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, -0x1

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    throw p0

    .line 25
    :catch_1
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 26
    .line 27
    .line 28
    :catch_2
    move-object p0, v1

    .line 29
    :catch_3
    :goto_0
    if-nez p0, :cond_0

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    const/4 v0, 0x1

    .line 33
    if-ne p1, v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/16 v3, 0x200

    .line 48
    .line 49
    if-le v2, v3, :cond_2

    .line 50
    .line 51
    const/high16 v3, 0x44000000    # 512.0f

    .line 52
    .line 53
    int-to-float v2, v2

    .line 54
    div-float/2addr v3, v2

    .line 55
    int-to-float p1, p1

    .line 56
    mul-float/2addr p1, v3

    .line 57
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    int-to-float v1, v1

    .line 62
    mul-float/2addr v3, v1

    .line 63
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const/4 v0, 0x3

    .line 73
    if-ne p1, v0, :cond_2

    .line 74
    .line 75
    const/4 p1, 0x2

    .line 76
    const/16 v0, 0x60

    .line 77
    .line 78
    invoke-static {p0, v0, v0, p1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    int-to-float v0, p1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    int-to-float v0, p2

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    or-int/lit8 p3, p3, 0x1

    .line 7
    invoke-static {v1, p0, p1, p2, p3}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-static {p2, p3}, Landroid/media/ThumbnailUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    move-object p4, p2

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_3

    .line 12
    :catch_0
    move-exception p0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    :goto_0
    if-nez p4, :cond_1

    .line 15
    .line 16
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    if-nez p5, :cond_2

    .line 21
    .line 22
    :try_start_1
    new-instance p5, Landroid/graphics/BitmapFactory$Options;

    .line 23
    .line 24
    invoke-direct {p5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const/4 p3, 0x1

    .line 32
    iput p3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 33
    .line 34
    iput-boolean p3, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 35
    .line 36
    invoke-static {p2, v0, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    iget-boolean p3, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 40
    .line 41
    if-nez p3, :cond_4

    .line 42
    .line 43
    iget p3, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 44
    .line 45
    const/4 v1, -0x1

    .line 46
    if-eq p3, v1, :cond_4

    .line 47
    .line 48
    iget p3, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 49
    .line 50
    if-ne p3, v1, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    invoke-static {p5, p0, p1}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    iput p0, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    iput-boolean p0, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 61
    .line 62
    iput-boolean p0, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 63
    .line 64
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 65
    .line 66
    iput-object p0, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 67
    .line 68
    invoke-static {p2, v0, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 69
    .line 70
    .line 71
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 73
    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_4
    :goto_1
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :goto_2
    :try_start_2
    const-string p1, "ThumbnailUtils"

    .line 81
    .line 82
    const-string p2, "Got oom exception "

    .line 83
    .line 84
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    .line 87
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 88
    .line 89
    .line 90
    return-object v0

    .line 91
    :goto_3
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 92
    .line 93
    .line 94
    throw p0
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 1
    :try_start_0
    const-string/jumbo v0, "r"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p1

    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    move/from16 v9, p3

    .line 6
    .line 7
    and-int/lit8 v1, p4, 0x1

    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v10

    .line 16
    :goto_0
    and-int/lit8 v3, p4, 0x2

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    move v11, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v11, v10

    .line 23
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-int/2addr v2, v8

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    sub-int/2addr v3, v9

    .line 33
    const/4 v4, 0x0

    .line 34
    if-nez v1, :cond_4

    .line 35
    .line 36
    if-ltz v2, :cond_2

    .line 37
    .line 38
    if-gez v3, :cond_4

    .line 39
    .line 40
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 41
    .line 42
    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Landroid/graphics/Canvas;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    .line 50
    .line 51
    div-int/lit8 v2, v2, 0x2

    .line 52
    .line 53
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    div-int/lit8 v3, v3, 0x2

    .line 58
    .line 59
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    new-instance v5, Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    add-int/2addr v6, v2

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    add-int/2addr v10, v3

    .line 83
    invoke-direct {v5, v2, v3, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    sub-int v2, v8, v2

    .line 91
    .line 92
    div-int/lit8 v2, v2, 0x2

    .line 93
    .line 94
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    sub-int v3, v9, v3

    .line 99
    .line 100
    div-int/lit8 v3, v3, 0x2

    .line 101
    .line 102
    new-instance v6, Landroid/graphics/Rect;

    .line 103
    .line 104
    sub-int/2addr v8, v2

    .line 105
    sub-int/2addr v9, v3

    .line 106
    invoke-direct {v6, v2, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p1, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 110
    .line 111
    .line 112
    if-eqz v11, :cond_3

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    int-to-float v1, v1

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    int-to-float v2, v2

    .line 131
    div-float v3, v1, v2

    .line 132
    .line 133
    int-to-float v5, v8

    .line 134
    int-to-float v6, v9

    .line 135
    div-float v12, v5, v6

    .line 136
    .line 137
    cmpl-float v3, v3, v12

    .line 138
    .line 139
    const/high16 v12, 0x3f800000    # 1.0f

    .line 140
    .line 141
    const v13, 0x3f666666    # 0.9f

    .line 142
    .line 143
    .line 144
    if-lez v3, :cond_7

    .line 145
    .line 146
    div-float/2addr v6, v2

    .line 147
    cmpg-float v1, v6, v13

    .line 148
    .line 149
    if-ltz v1, :cond_6

    .line 150
    .line 151
    cmpl-float v1, v6, v12

    .line 152
    .line 153
    if-lez v1, :cond_5

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_5
    move-object v0, v4

    .line 157
    goto :goto_4

    .line 158
    :cond_6
    :goto_2
    invoke-virtual {p0, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_7
    div-float/2addr v5, v1

    .line 163
    cmpg-float v1, v5, v13

    .line 164
    .line 165
    if-ltz v1, :cond_9

    .line 166
    .line 167
    cmpl-float v1, v5, v12

    .line 168
    .line 169
    if-lez v1, :cond_8

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_8
    move-object v5, v4

    .line 173
    goto :goto_5

    .line 174
    :cond_9
    :goto_3
    invoke-virtual {p0, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 175
    .line 176
    .line 177
    :goto_4
    move-object v5, v0

    .line 178
    :goto_5
    if-eqz v5, :cond_a

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    const/4 v2, 0x0

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    const/4 v6, 0x1

    .line 191
    move-object v0, p1

    .line 192
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    goto :goto_6

    .line 197
    :cond_a
    move-object v0, v7

    .line 198
    :goto_6
    if-eqz v11, :cond_b

    .line 199
    .line 200
    if-eq v0, v7, :cond_b

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    .line 204
    .line 205
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    sub-int/2addr v1, v8

    .line 210
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    sub-int/2addr v2, v9

    .line 219
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    div-int/lit8 v1, v1, 0x2

    .line 224
    .line 225
    div-int/lit8 v2, v2, 0x2

    .line 226
    .line 227
    invoke-static {v0, v1, v2, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    if-eq v1, v0, :cond_d

    .line 232
    .line 233
    if-nez v11, :cond_c

    .line 234
    .line 235
    if-eq v0, v7, :cond_d

    .line 236
    .line 237
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    .line 239
    .line 240
    :cond_d
    return-object v1
.end method
