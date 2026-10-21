.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "_id"

    .line 2
    .line 3
    const-string v1, "_data"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .locals 6

    .line 1
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const-string v0, "cancel"

    .line 6
    .line 7
    const-string v1, "1"

    .line 8
    .line 9
    invoke-virtual {p3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    const-string/jumbo v0, "orig_id"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p3, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string/jumbo p2, "group_id"

    .line 25
    .line 26
    .line 27
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    move-object v0, p0

    .line 45
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_0

    .line 50
    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    const-string v0, "couldn\'t open thumbnail "

    .line 2
    .line 3
    const-string v1, "; "

    .line 4
    .line 5
    const-string v2, "MediaStore"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    :try_start_0
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 21
    :try_start_1
    const-string/jumbo p1, "r"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p0, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2, v4, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :catch_0
    move-exception p1

    .line 42
    move-object v7, v4

    .line 43
    move-object v4, p0

    .line 44
    move-object p0, v7

    .line 45
    goto :goto_0

    .line 46
    :catch_1
    move-exception p1

    .line 47
    move-object v7, v4

    .line 48
    move-object v4, p0

    .line 49
    move-object p0, v7

    .line 50
    goto :goto_1

    .line 51
    :catch_2
    move-exception p1

    .line 52
    move-object v7, v4

    .line 53
    move-object v4, p0

    .line 54
    move-object p0, v7

    .line 55
    goto :goto_2

    .line 56
    :catch_3
    move-exception p1

    .line 57
    move-object p0, v4

    .line 58
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p3, "failed to allocate memory for thumbnail "

    .line 61
    .line 62
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :catch_4
    move-exception p1

    .line 83
    move-object p0, v4

    .line 84
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :catch_5
    move-exception p1

    .line 107
    move-object p0, v4

    .line 108
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :goto_3
    move-object v4, p0

    .line 130
    :goto_4
    return-object v4
.end method

.method public static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v7, p1

    .line 4
    .line 5
    move/from16 v9, p5

    .line 6
    .line 7
    move-object/from16 v10, p6

    .line 8
    .line 9
    move-object/from16 v11, p7

    .line 10
    .line 11
    move/from16 v12, p8

    .line 12
    .line 13
    const-string v13, "Create the thumbnail in memory: origId="

    .line 14
    .line 15
    const-string v14, "Unsupported kind: "

    .line 16
    .line 17
    new-instance v15, Landroid/media/MiniThumbFile;

    .line 18
    .line 19
    if-eqz v12, :cond_0

    .line 20
    .line 21
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 25
    .line 26
    :goto_0
    invoke-direct {v15, v1}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 27
    .line 28
    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v15, v7, v8}, Landroid/media/MiniThumbFile;->getMagic(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    cmp-long v1, v1, v3

    .line 38
    .line 39
    const/16 v6, 0x2710

    .line 40
    .line 41
    const/4 v5, 0x3

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v3, 0x1

    .line 44
    if-eqz v1, :cond_8

    .line 45
    .line 46
    if-ne v9, v5, :cond_4

    .line 47
    .line 48
    sget-object v1, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 51
    :try_start_1
    sget-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    new-array v0, v6, [B

    .line 56
    .line 57
    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 58
    .line 59
    :cond_1
    sget-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 60
    .line 61
    invoke-virtual {v15, v7, v8, v0}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    sget-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 68
    .line 69
    array-length v2, v0

    .line 70
    invoke-static {v0, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 71
    .line 72
    .line 73
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    :try_start_2
    const-string v0, "MediaStore"

    .line 77
    .line 78
    const-string v3, "couldn\'t decode byte array."

    .line 79
    .line 80
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move-object/from16 v2, v16

    .line 85
    .line 86
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    invoke-virtual {v15}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 88
    .line 89
    .line 90
    return-object v2

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    move-object/from16 v2, v16

    .line 93
    .line 94
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    .line 96
    :catch_0
    move-exception v0

    .line 97
    move-object/from16 v19, v2

    .line 98
    .line 99
    goto/16 :goto_d

    .line 100
    .line 101
    :catchall_1
    move-exception v0

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    if-ne v9, v3, :cond_8

    .line 104
    .line 105
    if-eqz v12, :cond_5

    .line 106
    .line 107
    :try_start_5
    const-string/jumbo v1, "video_id="

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    const-string/jumbo v1, "image_id="

    .line 112
    .line 113
    .line 114
    :goto_3
    sget-object v17, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v18

    .line 131
    const/16 v19, 0x0

    .line 132
    .line 133
    const/16 v20, 0x0

    .line 134
    .line 135
    move-object/from16 v1, p0

    .line 136
    .line 137
    move-object/from16 v2, p7

    .line 138
    .line 139
    move-object/from16 v3, v17

    .line 140
    .line 141
    move-object/from16 v4, v18

    .line 142
    .line 143
    move-object/from16 v17, v14

    .line 144
    .line 145
    move v14, v5

    .line 146
    move-object/from16 v5, v19

    .line 147
    .line 148
    move-object/from16 v6, v20

    .line 149
    .line 150
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 151
    .line 152
    .line 153
    move-result-object v1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    .line 154
    if-eqz v1, :cond_7

    .line 155
    .line 156
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_7

    .line 161
    .line 162
    invoke-static {v1, v11, v0, v10}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 163
    .line 164
    .line 165
    move-result-object v2
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 166
    if-eqz v2, :cond_6

    .line 167
    .line 168
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v15}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 172
    .line 173
    .line 174
    return-object v2

    .line 175
    :cond_6
    move-object/from16 v18, v1

    .line 176
    .line 177
    move-object/from16 v19, v2

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :catchall_2
    move-exception v0

    .line 181
    move-object/from16 v16, v1

    .line 182
    .line 183
    goto/16 :goto_f

    .line 184
    .line 185
    :catch_1
    move-exception v0

    .line 186
    move-object/from16 v19, v16

    .line 187
    .line 188
    move-object/from16 v16, v1

    .line 189
    .line 190
    goto/16 :goto_d

    .line 191
    .line 192
    :cond_7
    move-object/from16 v18, v1

    .line 193
    .line 194
    move-object/from16 v19, v16

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_8
    move-object/from16 v17, v14

    .line 198
    .line 199
    move v14, v5

    .line 200
    move-object/from16 v18, v16

    .line 201
    .line 202
    move-object/from16 v19, v18

    .line 203
    .line 204
    :goto_4
    :try_start_7
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const-string v2, "blocking"

    .line 209
    .line 210
    const-string v3, "1"

    .line 211
    .line 212
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const-string/jumbo v2, "orig_id"

    .line 217
    .line 218
    .line 219
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    const-string/jumbo v2, "group_id"

    .line 228
    .line 229
    .line 230
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    if-eqz v18, :cond_9

    .line 243
    .line 244
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 245
    .line 246
    .line 247
    :cond_9
    sget-object v20, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 248
    .line 249
    const/4 v4, 0x0

    .line 250
    const/4 v5, 0x0

    .line 251
    const/4 v6, 0x0

    .line 252
    move-object/from16 v1, p0

    .line 253
    .line 254
    move-object/from16 v3, v20

    .line 255
    .line 256
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 257
    .line 258
    .line 259
    move-result-object v6
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 260
    if-nez v6, :cond_b

    .line 261
    .line 262
    if-eqz v6, :cond_a

    .line 263
    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 265
    .line 266
    .line 267
    :cond_a
    invoke-virtual {v15}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 268
    .line 269
    .line 270
    return-object v16

    .line 271
    :cond_b
    if-ne v9, v14, :cond_f

    .line 272
    .line 273
    :try_start_8
    sget-object v1, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .line 274
    .line 275
    monitor-enter v1
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 276
    :try_start_9
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 277
    .line 278
    if-nez v2, :cond_c

    .line 279
    .line 280
    const/16 v2, 0x2710

    .line 281
    .line 282
    new-array v2, v2, [B

    .line 283
    .line 284
    sput-object v2, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 285
    .line 286
    :cond_c
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 287
    .line 288
    const/4 v3, 0x0

    .line 289
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 290
    .line 291
    .line 292
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 293
    .line 294
    invoke-virtual {v15, v7, v8, v2}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    if-eqz v2, :cond_e

    .line 299
    .line 300
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 301
    .line 302
    array-length v4, v2

    .line 303
    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 304
    .line 305
    .line 306
    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 307
    if-nez v2, :cond_d

    .line 308
    .line 309
    :try_start_a
    const-string v3, "MediaStore"

    .line 310
    .line 311
    const-string v4, "couldn\'t decode byte array."

    .line 312
    .line 313
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 314
    .line 315
    .line 316
    goto :goto_5

    .line 317
    :catchall_3
    move-exception v0

    .line 318
    move-object/from16 v16, v2

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_d
    :goto_5
    move-object/from16 v19, v2

    .line 322
    .line 323
    :cond_e
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 324
    const/4 v14, 0x1

    .line 325
    goto :goto_8

    .line 326
    :catchall_4
    move-exception v0

    .line 327
    move-object/from16 v16, v19

    .line 328
    .line 329
    :goto_6
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 330
    :try_start_d
    throw v0
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 331
    :catch_2
    move-exception v0

    .line 332
    move-object/from16 v19, v16

    .line 333
    .line 334
    goto :goto_7

    .line 335
    :catchall_5
    move-exception v0

    .line 336
    goto :goto_6

    .line 337
    :catchall_6
    move-exception v0

    .line 338
    move-object/from16 v16, v6

    .line 339
    .line 340
    goto/16 :goto_f

    .line 341
    .line 342
    :catch_3
    move-exception v0

    .line 343
    :goto_7
    move-object/from16 v16, v6

    .line 344
    .line 345
    goto/16 :goto_d

    .line 346
    .line 347
    :cond_f
    const/4 v14, 0x1

    .line 348
    if-ne v9, v14, :cond_17

    .line 349
    .line 350
    :try_start_e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 351
    .line 352
    .line 353
    move-result v1
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 354
    if-eqz v1, :cond_10

    .line 355
    .line 356
    :try_start_f
    invoke-static {v6, v11, v0, v10}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 357
    .line 358
    .line 359
    move-result-object v19
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 360
    :cond_10
    :goto_8
    if-nez v19, :cond_15

    .line 361
    .line 362
    :try_start_10
    const-string v1, "MediaStore"

    .line 363
    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v3, ", kind="

    .line 373
    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string v3, ", isVideo="

    .line 381
    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    const-string/jumbo v2, "thumbnails"

    .line 412
    .line 413
    .line 414
    const-string/jumbo v3, "media"

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 426
    .line 427
    .line 428
    const/4 v4, 0x0

    .line 429
    const/4 v5, 0x0

    .line 430
    const/4 v7, 0x0

    .line 431
    move-object/from16 v1, p0

    .line 432
    .line 433
    move-object/from16 v3, v20

    .line 434
    .line 435
    move-object v8, v6

    .line 436
    move-object v6, v7

    .line 437
    :try_start_11
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 438
    .line 439
    .line 440
    move-result-object v6
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 441
    if-eqz v6, :cond_13

    .line 442
    .line 443
    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-nez v0, :cond_11

    .line 448
    .line 449
    goto :goto_9

    .line 450
    :cond_11
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    if-eqz v0, :cond_16

    .line 455
    .line 456
    if-eqz v12, :cond_12

    .line 457
    .line 458
    invoke-static {v0, v9}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 459
    .line 460
    .line 461
    move-result-object v19

    .line 462
    goto :goto_a

    .line 463
    :cond_12
    invoke-static {v0, v9}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 464
    .line 465
    .line 466
    move-result-object v19
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 467
    goto :goto_a

    .line 468
    :cond_13
    :goto_9
    if-eqz v6, :cond_14

    .line 469
    .line 470
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 471
    .line 472
    .line 473
    :cond_14
    invoke-virtual {v15}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 474
    .line 475
    .line 476
    return-object v16

    .line 477
    :cond_15
    move-object v8, v6

    .line 478
    :cond_16
    :goto_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 479
    .line 480
    .line 481
    goto :goto_e

    .line 482
    :catchall_7
    move-exception v0

    .line 483
    move-object v8, v6

    .line 484
    goto :goto_b

    .line 485
    :catch_4
    move-exception v0

    .line 486
    move-object v8, v6

    .line 487
    goto :goto_c

    .line 488
    :cond_17
    move-object v8, v6

    .line 489
    :try_start_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 490
    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    move-object/from16 v2, v17

    .line 494
    .line 495
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    throw v0
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 509
    :catchall_8
    move-exception v0

    .line 510
    :goto_b
    move-object/from16 v16, v8

    .line 511
    .line 512
    goto :goto_f

    .line 513
    :catch_5
    move-exception v0

    .line 514
    :goto_c
    move-object/from16 v16, v8

    .line 515
    .line 516
    goto :goto_d

    .line 517
    :catchall_9
    move-exception v0

    .line 518
    move-object/from16 v16, v18

    .line 519
    .line 520
    goto :goto_f

    .line 521
    :catch_6
    move-exception v0

    .line 522
    move-object/from16 v16, v18

    .line 523
    .line 524
    goto :goto_d

    .line 525
    :catchall_a
    move-exception v0

    .line 526
    goto :goto_f

    .line 527
    :catch_7
    move-exception v0

    .line 528
    move-object/from16 v19, v16

    .line 529
    .line 530
    :goto_d
    :try_start_14
    const-string v1, "MediaStore"

    .line 531
    .line 532
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 533
    .line 534
    .line 535
    if-eqz v16, :cond_18

    .line 536
    .line 537
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 538
    .line 539
    .line 540
    :cond_18
    :goto_e
    invoke-virtual {v15}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 541
    .line 542
    .line 543
    return-object v19

    .line 544
    :goto_f
    if-eqz v16, :cond_19

    .line 545
    .line 546
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 547
    .line 548
    .line 549
    :cond_19
    invoke-virtual {v15}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 550
    .line 551
    .line 552
    throw v0
.end method
