.class public Landroid/media/ThumbnailUtilsEx;
.super Landroid/media/ThumbnailUtils;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailUtilsEx"

.field private static mDrmClient:Landroid/drm/DrmManagerClientEx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/media/ThumbnailUtils;-><init>()V

    return-void
.end method

.method public static createImageThumbnailEx(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    const-string v2, ""

    .line 3
    .line 4
    const-string v3, "ThumbnailUtilsEx"

    .line 5
    .line 6
    const-string v4, "Unable to decode file "

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    iget v5, v5, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 14
    .line 15
    invoke-static {v5}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    .line 16
    .line 17
    .line 18
    move-result v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move v5, v0

    .line 21
    :goto_0
    const/4 v6, 0x0

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    invoke-static {}, Landroid/media/ThumbnailUtilsEx;->getDrmClient()Landroid/drm/DrmManagerClientEx;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-virtual {v7, p0}, Landroid/drm/DrmManagerClientEx;->openDecryptSession(Ljava/lang/String;)Landroid/drm/DecryptHandle;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    if-nez v8, :cond_1

    .line 33
    .line 34
    return-object v6

    .line 35
    :cond_0
    move-object v7, v6

    .line 36
    move-object v8, v7

    .line 37
    :cond_1
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    .line 38
    .line 39
    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    .line 42
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    .line 47
    .line 48
    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    .line 50
    .line 51
    const/4 v12, 0x1

    .line 52
    iput v12, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 53
    .line 54
    iput-boolean v12, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 55
    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    invoke-static {v7, v8, v11}, Landroid/graphics/BitmapFactoryEx;->decodeDrmStream(Landroid/drm/DrmManagerClientEx;Landroid/drm/DecryptHandle;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-static {v10, v6, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 63
    .line 64
    .line 65
    :goto_1
    iget-boolean v12, v11, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 66
    .line 67
    if-nez v12, :cond_5

    .line 68
    .line 69
    iget v12, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 70
    .line 71
    const/4 v13, -0x1

    .line 72
    if-eq v12, v13, :cond_5

    .line 73
    .line 74
    iget v12, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 75
    .line 76
    if-ne v12, v13, :cond_3

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    new-instance v12, Landroid/media/ThumbnailUtils;

    .line 80
    .line 81
    invoke-direct {v12}, Landroid/media/ThumbnailUtils;-><init>()V

    .line 82
    .line 83
    .line 84
    move v12, p1

    .line 85
    move/from16 v13, p2

    .line 86
    .line 87
    invoke-static {v11, p1, v13}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    iput v12, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 92
    .line 93
    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 94
    .line 95
    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 96
    .line 97
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 98
    .line 99
    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 100
    .line 101
    if-eqz v5, :cond_4

    .line 102
    .line 103
    invoke-static {v7, v8, v11}, Landroid/graphics/BitmapFactoryEx;->decodeDrmStream(Landroid/drm/DrmManagerClientEx;Landroid/drm/DecryptHandle;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    invoke-static {v10, v6, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 109
    .line 110
    .line 111
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :goto_2
    move-object v1, v0

    .line 113
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 114
    .line 115
    .line 116
    if-eqz v8, :cond_a

    .line 117
    .line 118
    invoke-virtual {v7, v8}, Landroid/drm/DrmManagerClientEx;->closeDecryptSession(Landroid/drm/DecryptHandle;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 119
    .line 120
    .line 121
    goto :goto_a

    .line 122
    :catch_1
    move-exception v0

    .line 123
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    goto :goto_a

    .line 127
    :cond_5
    :goto_3
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 128
    .line 129
    .line 130
    if-eqz v8, :cond_6

    .line 131
    .line 132
    invoke-virtual {v7, v8}, Landroid/drm/DrmManagerClientEx;->closeDecryptSession(Landroid/drm/DecryptHandle;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :catch_2
    move-exception v0

    .line 137
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_4
    return-object v6

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    move-object v1, v0

    .line 143
    move-object v6, v9

    .line 144
    goto :goto_b

    .line 145
    :catch_3
    move-exception v0

    .line 146
    move-object v6, v9

    .line 147
    goto :goto_5

    .line 148
    :catch_4
    move-exception v0

    .line 149
    move-object v6, v9

    .line 150
    goto :goto_6

    .line 151
    :catchall_1
    move-exception v0

    .line 152
    move-object v1, v0

    .line 153
    goto :goto_b

    .line 154
    :catch_5
    move-exception v0

    .line 155
    :goto_5
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, ". OutOfMemoryError."

    .line 164
    .line 165
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 173
    .line 174
    .line 175
    if-eqz v6, :cond_7

    .line 176
    .line 177
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 178
    .line 179
    .line 180
    :cond_7
    if-eqz v8, :cond_9

    .line 181
    .line 182
    invoke-virtual {v7, v8}, Landroid/drm/DrmManagerClientEx;->closeDecryptSession(Landroid/drm/DecryptHandle;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 183
    .line 184
    .line 185
    goto :goto_9

    .line 186
    :catch_6
    move-exception v0

    .line 187
    :goto_6
    :try_start_7
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 188
    .line 189
    .line 190
    if-eqz v6, :cond_8

    .line 191
    .line 192
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 193
    .line 194
    .line 195
    goto :goto_7

    .line 196
    :catch_7
    move-exception v0

    .line 197
    goto :goto_8

    .line 198
    :cond_8
    :goto_7
    if-eqz v8, :cond_9

    .line 199
    .line 200
    invoke-virtual {v7, v8}, Landroid/drm/DrmManagerClientEx;->closeDecryptSession(Landroid/drm/DecryptHandle;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 201
    .line 202
    .line 203
    goto :goto_9

    .line 204
    :goto_8
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .line 206
    .line 207
    :cond_9
    :goto_9
    move-object/from16 v1, p3

    .line 208
    .line 209
    :cond_a
    :goto_a
    return-object v1

    .line 210
    :goto_b
    if-eqz v6, :cond_b

    .line 211
    .line 212
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 213
    .line 214
    .line 215
    goto :goto_c

    .line 216
    :catch_8
    move-exception v0

    .line 217
    goto :goto_d

    .line 218
    :cond_b
    :goto_c
    if-eqz v8, :cond_c

    .line 219
    .line 220
    invoke-virtual {v7, v8}, Landroid/drm/DrmManagerClientEx;->closeDecryptSession(Landroid/drm/DecryptHandle;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 221
    .line 222
    .line 223
    goto :goto_e

    .line 224
    :goto_d
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .line 226
    .line 227
    :cond_c
    :goto_e
    throw v1
.end method

.method private static getDrmClient()Landroid/drm/DrmManagerClientEx;
    .locals 3

    .line 1
    const-class v0, Landroid/media/ThumbnailUtils;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/media/ThumbnailUtilsEx;->mDrmClient:Landroid/drm/DrmManagerClientEx;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/drm/DrmManagerClientEx;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Landroid/drm/DrmManagerClientEx;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Landroid/media/ThumbnailUtilsEx;->mDrmClient:Landroid/drm/DrmManagerClientEx;

    .line 15
    .line 16
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    sget-object v0, Landroid/media/ThumbnailUtilsEx;->mDrmClient:Landroid/drm/DrmManagerClientEx;

    .line 18
    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v1
.end method
