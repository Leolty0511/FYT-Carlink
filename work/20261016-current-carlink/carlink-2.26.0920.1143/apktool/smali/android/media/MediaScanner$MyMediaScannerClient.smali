.class public Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDate:J

.field private final mDateFormatter:Ljava/text/SimpleDateFormat;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    const-string/jumbo v0, "yyyyMMdd\'T\'HHmmss"

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    .line 15
    .line 16
    const-string v0, "UTC"

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const-string v1, "\'"

    .line 14
    .line 15
    const-string v2, "\' -> \'"

    .line 16
    .line 17
    const-string v3, "\', expected \'"

    .line 18
    .line 19
    invoke-static {v1, p1, v2, v0, v3}, Landroid/accessibilityservice/c;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "MediaScanner"

    .line 34
    .line 35
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    return p1
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 2
    :cond_0
    iget-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 3
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string/jumbo v3, "title"

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_data"

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v3, "album"

    .line 8
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "<unknown>"

    .line 9
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    .line 10
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x2f

    .line 11
    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-ltz v8, :cond_6

    move v9, v6

    :goto_0
    add-int/lit8 v10, v9, 0x1

    .line 12
    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    if-ltz v11, :cond_5

    if-lt v11, v8, :cond_4

    goto :goto_1

    :cond_4
    move v9, v11

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v9, :cond_6

    .line 13
    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_6
    iget-wide v3, v1, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 16
    iget v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v7}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    if-eqz v7, :cond_8

    cmp-long v7, v3, v10

    if-eqz v7, :cond_7

    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    const-string/jumbo v6, "is_ringtone"

    .line 17
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "is_notification"

    .line 18
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "is_alarm"

    .line 19
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "is_music"

    .line 20
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "is_podcast"

    .line 21
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_5

    .line 22
    :cond_8
    iget v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v13, 0x1f

    if-eq v7, v13, :cond_9

    .line 23
    invoke-static {v7}, Landroid/media/MediaFile;->isRawImageFileType(I)Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_9
    iget-boolean v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v7, :cond_11

    .line 24
    :try_start_0
    new-instance v7, Landroid/media/ExifInterface;

    iget-object v14, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-direct {v7, v14}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_11

    new-array v9, v9, [F

    .line 25
    invoke-virtual {v7, v9}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v14

    if-eqz v14, :cond_a

    aget v6, v9, v6

    .line 26
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string/jumbo v14, "latitude"

    invoke-virtual {v2, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    aget v6, v9, v12

    .line 27
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string/jumbo v9, "longitude"

    invoke-virtual {v2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 28
    :cond_a
    invoke-virtual {v7}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v6, v14, v16

    const-string v9, "datetaken"

    if-eqz v6, :cond_b

    .line 29
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    .line 30
    :cond_b
    invoke-virtual {v7}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v14

    cmp-long v6, v14, v16

    if-eqz v6, :cond_c

    .line 31
    iget-wide v10, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v18, 0x3e8

    mul-long v10, v10, v18

    sub-long/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v18, 0x5265c00

    cmp-long v6, v10, v18

    if-ltz v6, :cond_c

    .line 32
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    :cond_c
    :goto_3
    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-ne v6, v13, :cond_d

    .line 34
    invoke-direct {v0, v7, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->updateContentValuesForSpecialPictures(Landroid/media/ExifInterface;Landroid/content/ContentValues;)V

    :cond_d
    const-string v6, "Orientation"

    const/4 v9, -0x1

    .line 35
    invoke-virtual {v7, v6, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v9, :cond_11

    if-eq v6, v8, :cond_10

    const/4 v7, 0x6

    if-eq v6, v7, :cond_f

    const/16 v7, 0x8

    if-eq v6, v7, :cond_e

    const/4 v6, 0x0

    goto :goto_4

    :cond_e
    const/16 v6, 0x10e

    goto :goto_4

    :cond_f
    const/16 v6, 0x5a

    goto :goto_4

    :cond_10
    const/16 v6, 0xb4

    :goto_4
    const-string/jumbo v7, "orientation"

    .line 36
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    :cond_11
    :goto_5
    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v6}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v6

    .line 38
    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v7

    .line 39
    iget-boolean v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v8, :cond_14

    .line 40
    iget v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 41
    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v6}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_6

    .line 42
    :cond_12
    iget v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 43
    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v6}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_6

    .line 44
    :cond_13
    iget v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 45
    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v6}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v6

    :cond_14
    :goto_6
    if-eqz p3, :cond_1b

    .line 46
    iget-object v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v8}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 47
    iget-object v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v8}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v9, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 48
    invoke-static {v9}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    :cond_15
    const/4 v8, 0x1

    const/4 v9, 0x1

    goto :goto_7

    :cond_16
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_7
    const/4 v10, 0x0

    .line 49
    :goto_8
    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget v12, v11, Landroid/media/MediaScanner;->mPhoneCount:I

    if-ge v10, v12, :cond_1a

    .line 50
    iget-object v12, v11, Landroid/media/MediaScanner;->mDefaultMessageSet:[Z

    aget-boolean v12, v12, v10

    if-nez v12, :cond_17

    iget-object v11, v11, Landroid/media/MediaScanner;->mDefaultMessageFilename:[Ljava/lang/String;

    aget-object v11, v11, v10

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_18

    :cond_17
    iget-object v11, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v12, v12, Landroid/media/MediaScanner;->mDefaultMessageFilename:[Ljava/lang/String;

    aget-object v12, v12, v10

    .line 51
    invoke-virtual {v0, v11, v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    :cond_18
    const/4 v8, 0x1

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    move/from16 v20, v9

    move v9, v8

    move v8, v10

    move/from16 v10, v20

    goto/16 :goto_d

    :cond_19
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_1a
    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move/from16 v20, v10

    move v10, v9

    move/from16 v9, v20

    goto :goto_d

    :cond_1b
    if-eqz p2, :cond_1f

    const/4 v8, 0x0

    .line 52
    :goto_9
    iget-object v9, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget v10, v9, Landroid/media/MediaScanner;->mPhoneCount:I

    if-ge v8, v10, :cond_1e

    .line 53
    iget-object v10, v9, Landroid/media/MediaScanner;->mDefaultRingtoneSet:[Z

    aget-boolean v10, v10, v8

    if-nez v10, :cond_1d

    iget-object v9, v9, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1c

    iget-object v9, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v10, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v10, v10, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:[Ljava/lang/String;

    aget-object v10, v10, v8

    .line 54
    invoke-virtual {v0, v9, v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    :cond_1c
    const/4 v8, 0x1

    goto :goto_a

    :cond_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_1e
    const/4 v8, 0x0

    :goto_a
    const/4 v9, 0x0

    goto :goto_c

    :cond_1f
    if-eqz p4, :cond_21

    .line 55
    iget-object v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v8}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Z

    move-result v8

    if-nez v8, :cond_21

    .line 56
    iget-object v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v8}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_20

    iget-object v8, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v9, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 57
    invoke-static {v9}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    :cond_20
    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_b

    :cond_21
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_b
    move/from16 v20, v9

    move v9, v8

    move/from16 v8, v20

    :goto_c
    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    :goto_d
    cmp-long v11, v3, v11

    if-nez v11, :cond_29

    .line 58
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v5

    if-eqz v5, :cond_22

    .line 59
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v11, "media_scanner_new_object_id"

    invoke-virtual {v2, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    :cond_22
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v5

    if-ne v6, v5, :cond_24

    .line 61
    iget v5, v1, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    if-nez v5, :cond_23

    .line 62
    iget-object v5, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v5, v11}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :cond_23
    const-string v11, "format"

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_24
    if-eqz v7, :cond_27

    if-eqz v8, :cond_25

    goto :goto_f

    .line 64
    :cond_25
    iget v5, v1, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v11, 0x3001

    if-ne v5, v11, :cond_26

    .line 65
    invoke-virtual {v7, v6, v2}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_e

    .line 66
    :cond_26
    invoke-virtual {v7, v6, v2}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    :goto_e
    const/4 v2, 0x0

    goto :goto_10

    :cond_27
    :goto_f
    if-eqz v7, :cond_28

    .line 67
    invoke-virtual {v7}, Landroid/media/MediaInserter;->flushAll()V

    .line 68
    :cond_28
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    :goto_10
    if-eqz v2, :cond_2f

    .line 69
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 70
    iput-wide v3, v1, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    goto :goto_12

    .line 71
    :cond_29
    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 72
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 73
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/media/MediaScannerExUtils;

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v5

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v2, v11}, Landroid/media/MediaScannerExUtils;->updateNewPathValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 74
    iget-object v5, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 75
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v5}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v5

    .line 76
    invoke-static {v5}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v11

    if-eqz v11, :cond_2a

    const/4 v5, 0x2

    goto :goto_11

    .line 77
    :cond_2a
    invoke-static {v5}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v11

    if-eqz v11, :cond_2b

    const/4 v5, 0x3

    goto :goto_11

    .line 78
    :cond_2b
    invoke-static {v5}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v11

    if-eqz v11, :cond_2c

    const/4 v5, 0x1

    goto :goto_11

    .line 79
    :cond_2c
    invoke-static {v5}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    const/4 v5, 0x4

    goto :goto_11

    :cond_2d
    const/4 v5, 0x0

    :goto_11
    const-string/jumbo v11, "media_type"

    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    :cond_2e
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v5, v7, v2, v11, v11}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v2, v7

    :cond_2f
    :goto_12
    if-eqz v8, :cond_37

    if-eqz p3, :cond_33

    if-eqz v10, :cond_30

    .line 82
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v5

    if-nez v5, :cond_30

    const-string/jumbo v5, "notification_sound"

    .line 83
    invoke-direct {v0, v5, v6, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 84
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "default_notification"

    invoke-static {v5, v7, v6, v3, v4}, Landroid/media/MediaScannerExUtils;->saveUriToSettingsDB(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 85
    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/media/MediaScanner;->access$502(Landroid/media/MediaScanner;Z)Z

    :cond_30
    if-eqz v9, :cond_37

    const/4 v5, 0x0

    .line 86
    :goto_13
    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget v8, v7, Landroid/media/MediaScanner;->mPhoneCount:I

    if-ge v5, v8, :cond_37

    .line 87
    iget-object v8, v7, Landroid/media/MediaScanner;->mDefaultMessageSet:[Z

    aget-boolean v8, v8, v5

    if-nez v8, :cond_32

    iget-object v7, v7, Landroid/media/MediaScanner;->mDefaultMessageFilename:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_31

    iget-object v7, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v8, v8, Landroid/media/MediaScanner;->mDefaultMessageFilename:[Ljava/lang/String;

    aget-object v8, v8, v5

    .line 88
    invoke-virtual {v0, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 89
    :cond_31
    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "default_message"

    .line 90
    invoke-static {v8, v5}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 91
    invoke-static {v7, v8, v6, v3, v4}, Landroid/media/MediaScannerExUtils;->saveUriToSettingsDB(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 92
    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "messagetone"

    .line 93
    invoke-static {v8, v5}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 94
    invoke-static {v7, v8, v6, v3, v4}, Landroid/media/MediaScannerExUtils;->saveUriToSettingsDB(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 95
    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v7, v7, Landroid/media/MediaScanner;->mDefaultMessageSet:[Z

    const/4 v8, 0x1

    aput-boolean v8, v7, v5

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_33
    if-eqz p2, :cond_36

    const/4 v5, 0x0

    .line 96
    :goto_14
    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget v8, v7, Landroid/media/MediaScanner;->mPhoneCount:I

    if-ge v5, v8, :cond_37

    .line 97
    iget-object v8, v7, Landroid/media/MediaScanner;->mDefaultRingtoneSet:[Z

    aget-boolean v8, v8, v5

    if-nez v8, :cond_35

    iget-object v7, v7, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34

    iget-object v7, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v8, v8, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:[Ljava/lang/String;

    aget-object v8, v8, v5

    .line 98
    invoke-virtual {v0, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 99
    :cond_34
    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "default_ringtone"

    .line 100
    invoke-static {v8, v5}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 101
    invoke-static {v7, v8, v6, v3, v4}, Landroid/media/MediaScannerExUtils;->saveUriToSettingsDB(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 102
    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/media/MediaScannerExUtils;

    move-result-object v8

    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v7}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "ringtone"

    move-object v11, v6

    move-wide v12, v3

    move v14, v5

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaScannerExUtils;->setRingtoneIfNotSetForMultiSim(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;JI)V

    .line 103
    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v7, v7, Landroid/media/MediaScanner;->mDefaultRingtoneSet:[Z

    const/4 v8, 0x1

    aput-boolean v8, v7, v5

    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_36
    if-eqz p4, :cond_37

    const-string v1, "alarm_alert"

    .line 104
    invoke-direct {v0, v1, v6, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 105
    iget-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "default_alarm"

    invoke-static {v1, v5, v6, v3, v4}, Landroid/media/MediaScannerExUtils;->saveUriToSettingsDB(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 106
    iget-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/media/MediaScanner;->access$802(Landroid/media/MediaScanner;Z)Z

    :cond_37
    return-object v2
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClientEx;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 20
    .line 21
    new-instance v2, Landroid/drm/DrmManagerClientEx;

    .line 22
    .line 23
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 24
    .line 25
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v2, v3}, Landroid/drm/DrmManagerClientEx;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2}, Landroid/media/MediaScanner;->access$2402(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClientEx;)Landroid/drm/DrmManagerClientEx;

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 36
    .line 37
    invoke-static {v0}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClientEx;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, p1, v2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 50
    .line 51
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 52
    .line 53
    invoke-static {v0}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClientEx;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    :cond_2
    return v1
.end method

.method private parseDate(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    return p3

    .line 8
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/16 v2, 0x30

    .line 15
    .line 16
    if-lt p2, v2, :cond_4

    .line 17
    .line 18
    const/16 v3, 0x39

    .line 19
    .line 20
    if-le p2, v3, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    sub-int/2addr p2, v2

    .line 24
    :goto_0
    if-ge v1, v0, :cond_3

    .line 25
    .line 26
    add-int/lit8 p3, v1, 0x1

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lt v1, v2, :cond_3

    .line 33
    .line 34
    if-le v1, v3, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    mul-int/lit8 p2, p2, 0xa

    .line 38
    .line 39
    add-int/lit8 v1, v1, -0x30

    .line 40
    .line 41
    add-int/2addr p2, v1

    .line 42
    move v1, p3

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    :goto_1
    return p2

    .line 45
    :cond_4
    :goto_2
    return p3
.end method

.method private processDrmImageFile(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "MediaScanner"

    .line 2
    .line 3
    const-string v1, " enter MediaScannnerEx.processDrmImageFile()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 16
    .line 17
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 24
    .line 25
    new-instance v0, Landroid/drm/DrmManagerClientEx;

    .line 26
    .line 27
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 28
    .line 29
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClientEx;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClientEx;->openDecryptSession(Ljava/lang/String;)Landroid/drm/DecryptHandle;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 43
    .line 44
    invoke-static {p1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactoryEx;->decodeDrmStream(Landroid/drm/DrmManagerClientEx;Landroid/drm/DecryptHandle;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClientEx;->closeDecryptSession(Landroid/drm/DecryptHandle;)I

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 56
    .line 57
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 65
    .line 66
    invoke-static {p1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 71
    .line 72
    iput p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 73
    .line 74
    iget-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 75
    .line 76
    invoke-static {p1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 81
    .line 82
    iput p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    :catchall_0
    return-void
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 9
    .line 10
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 17
    .line 18
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 28
    .line 29
    invoke-static {p1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 34
    .line 35
    iput p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 36
    .line 37
    iget-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 38
    .line 39
    invoke-static {p1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 44
    .line 45
    iput p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    :catchall_0
    return-void
.end method

.method private setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 39
    .line 40
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {v3, v1, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string/jumbo v2, "settingName = "

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, ", uri = "

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p2, ",rowId = "

    .line 75
    .line 76
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const-string p3, "MediaScanner"

    .line 87
    .line 88
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/4 p2, 0x1

    .line 98
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .line 1
    const-string v0, "2"

    .line 2
    .line 3
    const-string v1, "Country"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    const-string v0, "(2)"

    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const-string v0, "(2"

    .line 14
    .line 15
    invoke-direct {p0, v0, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    const-string v0, "2 Foo"

    .line 19
    .line 20
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    const-string v0, "(2) Foo"

    .line 24
    .line 25
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    const-string v0, "(2 Foo"

    .line 29
    .line 30
    invoke-direct {p0, v0, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    const-string v0, "2Foo"

    .line 34
    .line 35
    invoke-direct {p0, v0, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    const-string v0, "(2)Foo"

    .line 39
    .line 40
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    const-string v0, "200 Foo"

    .line 44
    .line 45
    const-string v1, "Foo"

    .line 46
    .line 47
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    const-string v0, "(200) Foo"

    .line 51
    .line 52
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    const-string v0, "200Foo"

    .line 56
    .line 57
    invoke-direct {p0, v0, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    const-string v0, "(200)Foo"

    .line 61
    .line 62
    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    const-string v0, "200)Foo"

    .line 66
    .line 67
    invoke-direct {p0, v0, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    const-string v0, "200) Foo"

    .line 71
    .line 72
    invoke-direct {p0, v0, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 8

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "_data"

    .line 7
    .line 8
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "title"

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 22
    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "date_modified"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    .line 31
    .line 32
    iget-wide v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 33
    .line 34
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "_size"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "mime_type"

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string/jumbo v2, "is_drm"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 61
    .line 62
    .line 63
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    if-lez v1, :cond_0

    .line 67
    .line 68
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 69
    .line 70
    if-lez v3, :cond_0

    .line 71
    .line 72
    const-string/jumbo v3, "width"

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    .line 81
    .line 82
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 83
    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string/jumbo v3, "height"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string/jumbo v3, "x"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    goto :goto_0

    .line 120
    :cond_0
    move-object v1, v2

    .line 121
    :goto_0
    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 122
    .line 123
    if-nez v3, :cond_a

    .line 124
    .line 125
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 126
    .line 127
    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    const-string v4, "duration"

    .line 132
    .line 133
    const-string v5, "album"

    .line 134
    .line 135
    const-string v6, "artist"

    .line 136
    .line 137
    const-string v7, "<unknown>"

    .line 138
    .line 139
    if-eqz v3, :cond_4

    .line 140
    .line 141
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 142
    .line 143
    if-eqz v2, :cond_1

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-lez v2, :cond_1

    .line 150
    .line 151
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_1
    move-object v2, v7

    .line 155
    :goto_1
    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 159
    .line 160
    if-eqz v2, :cond_2

    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-lez v2, :cond_2

    .line 167
    .line 168
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 169
    .line 170
    :cond_2
    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 174
    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    .line 181
    .line 182
    if-eqz v1, :cond_3

    .line 183
    .line 184
    const-string/jumbo v2, "resolution"

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_3
    iget-wide v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    .line 191
    .line 192
    const-wide/16 v3, 0x0

    .line 193
    .line 194
    cmp-long v3, v1, v3

    .line 195
    .line 196
    if-lez v3, :cond_a

    .line 197
    .line 198
    const-string v3, "datetaken"

    .line 199
    .line 200
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_3

    .line 208
    .line 209
    :cond_4
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 210
    .line 211
    invoke-static {v1}, Landroid/media/MediaFile;->isImageFileType(I)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_5

    .line 216
    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :cond_5
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 220
    .line 221
    invoke-static {v1}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_a

    .line 226
    .line 227
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 228
    .line 229
    if-eqz v1, :cond_6

    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-lez v1, :cond_6

    .line 236
    .line 237
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_6
    move-object v1, v7

    .line 241
    :goto_2
    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 245
    .line 246
    if-eqz v1, :cond_7

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-lez v1, :cond_7

    .line 253
    .line 254
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 255
    .line 256
    :cond_7
    const-string v1, "album_artist"

    .line 257
    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 262
    .line 263
    if-eqz v1, :cond_8

    .line 264
    .line 265
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-lez v1, :cond_8

    .line 270
    .line 271
    iget-object v7, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 272
    .line 273
    :cond_8
    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string v1, "composer"

    .line 277
    .line 278
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const-string v1, "genre"

    .line 284
    .line 285
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 291
    .line 292
    if-eqz v1, :cond_9

    .line 293
    .line 294
    const-string/jumbo v2, "year"

    .line 295
    .line 296
    .line 297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    .line 303
    .line 304
    :cond_9
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 305
    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    const-string/jumbo v2, "track"

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    .line 315
    .line 316
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 317
    .line 318
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    .line 324
    .line 325
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 326
    .line 327
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    const-string v2, "compilation"

    .line 332
    .line 333
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    .line 335
    .line 336
    :cond_a
    :goto_3
    return-object v0
.end method

.method private updateContentValuesForSpecialPictures(Landroid/media/ExifInterface;Landroid/content/ContentValues;)V
    .locals 2

    .line 1
    const-string v0, "CameraType"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const-string v0, "file_flag"

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0xc

    .line 13
    .line 14
    if-eq p1, v1, :cond_0

    .line 15
    .line 16
    const/16 v1, 0x10

    .line 17
    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    const/16 v1, 0x10c

    .line 21
    .line 22
    if-eq p1, v1, :cond_0

    .line 23
    .line 24
    const/16 v1, 0x110

    .line 25
    .line 26
    if-eq p1, v1, :cond_0

    .line 27
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_0
    const/16 p1, 0x34

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_1
    const/4 p1, 0x0

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-wide/from16 v9, p3

    .line 8
    .line 9
    iput-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v11, 0x0

    .line 12
    iput v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 13
    .line 14
    move-wide/from16 v2, p5

    .line 15
    .line 16
    iput-wide v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 17
    .line 18
    iput-boolean v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 19
    .line 20
    const/4 v12, 0x1

    .line 21
    if-nez p7, :cond_3

    .line 22
    .line 23
    if-nez p8, :cond_0

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->access$000(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    move v2, v12

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move/from16 v2, p8

    .line 34
    .line 35
    :goto_0
    iput-boolean v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 44
    .line 45
    :cond_1
    iget v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget v2, v1, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 56
    .line 57
    iput v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 58
    .line 59
    iget-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 60
    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    iget-object v1, v1, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 64
    .line 65
    iput-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 66
    .line 67
    :cond_2
    iget-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 68
    .line 69
    invoke-static {v1}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    iget v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 76
    .line 77
    invoke-static {v1}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 88
    .line 89
    :cond_3
    iget-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 90
    .line 91
    invoke-virtual {v1, v8}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-wide/16 v13, 0x0

    .line 96
    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    iget-wide v2, v1, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 100
    .line 101
    sub-long v2, v9, v2

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    move-wide v2, v13

    .line 105
    :goto_1
    const-wide/16 v4, 0x1

    .line 106
    .line 107
    cmp-long v4, v2, v4

    .line 108
    .line 109
    if-gtz v4, :cond_6

    .line 110
    .line 111
    const-wide/16 v4, -0x1

    .line 112
    .line 113
    cmp-long v2, v2, v4

    .line 114
    .line 115
    if-gez v2, :cond_5

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    move v2, v11

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    :goto_2
    move v2, v12

    .line 121
    :goto_3
    if-eqz v1, :cond_7

    .line 122
    .line 123
    if-eqz v2, :cond_a

    .line 124
    .line 125
    :cond_7
    if-eqz v2, :cond_8

    .line 126
    .line 127
    iput-wide v9, v1, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_8
    new-instance v15, Landroid/media/MediaScanner$FileEntry;

    .line 131
    .line 132
    const-wide/16 v2, 0x0

    .line 133
    .line 134
    if-eqz p7, :cond_9

    .line 135
    .line 136
    const/16 v1, 0x3001

    .line 137
    .line 138
    move v7, v1

    .line 139
    goto :goto_4

    .line 140
    :cond_9
    move v7, v11

    .line 141
    :goto_4
    move-object v1, v15

    .line 142
    move-object/from16 v4, p1

    .line 143
    .line 144
    move-wide/from16 v5, p3

    .line 145
    .line 146
    invoke-direct/range {v1 .. v7}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .line 147
    .line 148
    .line 149
    :goto_5
    iput-boolean v12, v1, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 150
    .line 151
    :cond_a
    iget-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 152
    .line 153
    invoke-static {v2}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    const/4 v3, 0x0

    .line 158
    if-eqz v2, :cond_b

    .line 159
    .line 160
    iget v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 161
    .line 162
    invoke-static {v2}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_b

    .line 167
    .line 168
    iget-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 169
    .line 170
    invoke-static {v2}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    return-object v3

    .line 178
    :cond_b
    iput-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 179
    .line 180
    iput-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 181
    .line 182
    iput-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 183
    .line 184
    iput-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 185
    .line 186
    iput-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 187
    .line 188
    iput-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 189
    .line 190
    iput v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 191
    .line 192
    iput v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 193
    .line 194
    iput v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 195
    .line 196
    iput-object v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 197
    .line 198
    iput-wide v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    .line 199
    .line 200
    iput-wide v9, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 201
    .line 202
    iput-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 203
    .line 204
    iput v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 205
    .line 206
    iput v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 207
    .line 208
    iput v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 209
    .line 210
    return-object v1
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 15

    .line 1
    move-object v10, p0

    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    const-string v11, "MediaScanner"

    .line 5
    .line 6
    const/4 v12, 0x0

    .line 7
    move-object v1, p0

    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    move-wide/from16 v4, p3

    .line 13
    .line 14
    move-wide/from16 v6, p5

    .line 15
    .line 16
    move/from16 v8, p7

    .line 17
    .line 18
    move/from16 v9, p9

    .line 19
    .line 20
    :try_start_0
    invoke-virtual/range {v1 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    return-object v12

    .line 27
    :cond_0
    iget-object v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 28
    .line 29
    invoke-static {v2}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    iput-wide v2, v1, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 38
    .line 39
    :cond_1
    iget-object v2, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    if-eqz v2, :cond_5

    .line 43
    .line 44
    iget-object v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 45
    .line 46
    invoke-static {v2}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    .line 47
    .line 48
    .line 49
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const-string v4, "forcing rescan of "

    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    :try_start_1
    iget-object v2, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v5, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 57
    .line 58
    invoke-static {v5}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {p0, v2, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    :cond_2
    iget-object v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 69
    .line 70
    invoke-static {v2}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Landroid/media/MediaScannerExUtils;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2, v1}, Landroid/media/MediaScannerExUtils;->isNeedScanRingtone(Landroid/media/MediaScanner$FileEntry;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_4

    .line 79
    .line 80
    iget-object v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 81
    .line 82
    invoke-static {v2}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_3

    .line 87
    .line 88
    iget-object v2, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v5, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 91
    .line 92
    invoke-static {v5}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {p0, v2, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    iget-object v2, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1000(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_5

    .line 110
    .line 111
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {}, Landroid/media/MediaScanner;->access$1100()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-nez v2, :cond_5

    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v4, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v4, " since build fingerprint changed"

    .line 134
    .line 135
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v4, v1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string/jumbo v4, "since ringtone setting didn\'t finish"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    :goto_1
    move v2, v3

    .line 170
    goto :goto_2

    .line 171
    :cond_5
    move/from16 v2, p8

    .line 172
    .line 173
    :goto_2
    iget-boolean v4, v1, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 174
    .line 175
    if-nez v4, :cond_6

    .line 176
    .line 177
    if-eqz v2, :cond_14

    .line 178
    .line 179
    :cond_6
    if-eqz p9, :cond_7

    .line 180
    .line 181
    const/4 v0, 0x0

    .line 182
    const/4 v2, 0x0

    .line 183
    const/4 v3, 0x0

    .line 184
    const/4 v4, 0x0

    .line 185
    const/4 v5, 0x0

    .line 186
    move-object/from16 p1, p0

    .line 187
    .line 188
    move-object/from16 p2, v1

    .line 189
    .line 190
    move/from16 p3, v0

    .line 191
    .line 192
    move/from16 p4, v2

    .line 193
    .line 194
    move/from16 p5, v3

    .line 195
    .line 196
    move/from16 p6, v4

    .line 197
    .line 198
    move/from16 p7, v5

    .line 199
    .line 200
    invoke-direct/range {p1 .. p7}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    .line 201
    .line 202
    .line 203
    move-result-object v12

    .line 204
    goto/16 :goto_8

    .line 205
    .line 206
    :cond_7
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    const-string v4, "/ringtones/"

    .line 213
    .line 214
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    const/4 v5, 0x0

    .line 219
    if-lez v4, :cond_8

    .line 220
    .line 221
    move v4, v3

    .line 222
    goto :goto_3

    .line 223
    :cond_8
    move v4, v5

    .line 224
    :goto_3
    const-string v6, "/notifications/"

    .line 225
    .line 226
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-lez v6, :cond_9

    .line 231
    .line 232
    move v6, v3

    .line 233
    goto :goto_4

    .line 234
    :cond_9
    move v6, v5

    .line 235
    :goto_4
    const-string v7, "/alarms/"

    .line 236
    .line 237
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    if-lez v7, :cond_a

    .line 242
    .line 243
    move v7, v3

    .line 244
    goto :goto_5

    .line 245
    :cond_a
    move v7, v5

    .line 246
    :goto_5
    const-string v8, "/podcasts/"

    .line 247
    .line 248
    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    if-lez v8, :cond_b

    .line 253
    .line 254
    move v8, v3

    .line 255
    goto :goto_6

    .line 256
    :cond_b
    move v8, v5

    .line 257
    :goto_6
    const-string v9, "/music/"

    .line 258
    .line 259
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-gtz v2, :cond_c

    .line 264
    .line 265
    if-nez v4, :cond_d

    .line 266
    .line 267
    if-nez v6, :cond_d

    .line 268
    .line 269
    if-nez v7, :cond_d

    .line 270
    .line 271
    if-nez v8, :cond_d

    .line 272
    .line 273
    :cond_c
    move v5, v3

    .line 274
    :cond_d
    iget v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 275
    .line 276
    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    iget v9, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 281
    .line 282
    invoke-static {v9}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    .line 283
    .line 284
    .line 285
    move-result v9

    .line 286
    iget v13, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 287
    .line 288
    invoke-static {v13}, Landroid/media/MediaFile;->isImageFileType(I)Z

    .line 289
    .line 290
    .line 291
    move-result v13

    .line 292
    if-nez v2, :cond_e

    .line 293
    .line 294
    if-nez v9, :cond_e

    .line 295
    .line 296
    if-eqz v13, :cond_f

    .line 297
    .line 298
    :cond_e
    new-instance v14, Ljava/io/File;

    .line 299
    .line 300
    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-static {v14}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    :cond_f
    if-nez v2, :cond_10

    .line 312
    .line 313
    if-eqz v9, :cond_11

    .line 314
    .line 315
    :cond_10
    iget-object v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 316
    .line 317
    move-object/from16 v9, p2

    .line 318
    .line 319
    invoke-static {v2, v0, v9, p0}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 320
    .line 321
    .line 322
    :cond_11
    if-eqz v13, :cond_13

    .line 323
    .line 324
    iget-object v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 325
    .line 326
    invoke-static {v2}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_12

    .line 331
    .line 332
    invoke-static {v0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    if-eqz v2, :cond_12

    .line 337
    .line 338
    invoke-static {v0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    iget v2, v2, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 343
    .line 344
    invoke-static {v2}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-eqz v2, :cond_12

    .line 349
    .line 350
    invoke-direct {p0, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iput-boolean v3, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 354
    .line 355
    invoke-direct {p0, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->processDrmImageFile(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_12
    invoke-direct {p0, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    :cond_13
    :goto_7
    move-object/from16 p1, p0

    .line 363
    .line 364
    move-object/from16 p2, v1

    .line 365
    .line 366
    move/from16 p3, v4

    .line 367
    .line 368
    move/from16 p4, v6

    .line 369
    .line 370
    move/from16 p5, v7

    .line 371
    .line 372
    move/from16 p6, v5

    .line 373
    .line 374
    move/from16 p7, v8

    .line 375
    .line 376
    invoke-direct/range {p1 .. p7}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    .line 377
    .line 378
    .line 379
    move-result-object v12
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 380
    goto :goto_8

    .line 381
    :catch_0
    move-exception v0

    .line 382
    const-string v1, "RemoteException in MediaScanner.scanFile()"

    .line 383
    .line 384
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .line 386
    .line 387
    :cond_14
    :goto_8
    return-object v12
.end method

.method public doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p1, v0, p2, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    add-int/2addr v0, v2

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-ne v0, p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v3

    .line 29
    :goto_0
    return v1
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_a

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuffer;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v3, v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    const/16 v6, 0x28

    .line 27
    .line 28
    if-ne v5, v6, :cond_1

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    if-ge v3, v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    const/16 v5, 0x20

    .line 52
    .line 53
    :goto_2
    const/16 v6, 0x29

    .line 54
    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    if-eq v5, v6, :cond_5

    .line 58
    .line 59
    :cond_4
    if-nez v4, :cond_a

    .line 60
    .line 61
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_a

    .line 66
    .line 67
    :cond_5
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-static {v7}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-ltz v7, :cond_a

    .line 76
    .line 77
    invoke-static {}, Landroid/media/MediaScanner;->access$1400()[Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    array-length v8, v8

    .line 82
    if-ge v7, v8, :cond_6

    .line 83
    .line 84
    invoke-static {}, Landroid/media/MediaScanner;->access$1400()[Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    aget-object v8, v8, v7

    .line 89
    .line 90
    if-eqz v8, :cond_6

    .line 91
    .line 92
    invoke-static {}, Landroid/media/MediaScanner;->access$1400()[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    aget-object p1, v0, v7

    .line 97
    .line 98
    return-object p1

    .line 99
    :cond_6
    const/16 v8, 0xff

    .line 100
    .line 101
    if-ne v7, v8, :cond_7

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_7
    if-ge v7, v8, :cond_9

    .line 105
    .line 106
    add-int/lit8 v0, v3, 0x1

    .line 107
    .line 108
    if-ge v0, v1, :cond_9

    .line 109
    .line 110
    if-eqz v4, :cond_8

    .line 111
    .line 112
    if-ne v5, v6, :cond_8

    .line 113
    .line 114
    move v3, v0

    .line 115
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_a

    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :catch_0
    :cond_a
    return-object p1
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "title"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_19

    .line 9
    .line 10
    const-string/jumbo v0, "title;"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_0
    const-string v0, "artist"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_18

    .line 28
    .line 29
    const-string v0, "artist;"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto/16 :goto_7

    .line 38
    .line 39
    :cond_1
    const-string v0, "albumartist"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_17

    .line 46
    .line 47
    const-string v0, "albumartist;"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_17

    .line 54
    .line 55
    const-string v0, "band"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_17

    .line 62
    .line 63
    const-string v0, "band;"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    goto/16 :goto_6

    .line 72
    .line 73
    :cond_2
    const-string v0, "album"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_16

    .line 80
    .line 81
    const-string v0, "album;"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :cond_3
    const-string v0, "composer"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_15

    .line 98
    .line 99
    const-string v0, "composer;"

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_4
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 110
    .line 111
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    const-string v0, "genre"

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_5

    .line 124
    .line 125
    const-string v0, "genre;"

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    :cond_5
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 138
    .line 139
    goto/16 :goto_9

    .line 140
    .line 141
    :cond_6
    const-string/jumbo v0, "year"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    const/4 v1, 0x0

    .line 149
    if-nez v0, :cond_14

    .line 150
    .line 151
    const-string/jumbo v0, "year;"

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_7

    .line 159
    .line 160
    goto/16 :goto_3

    .line 161
    .line 162
    :cond_7
    const-string/jumbo v0, "tracknumber"

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_13

    .line 170
    .line 171
    const-string/jumbo v0, "tracknumber;"

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_8

    .line 179
    .line 180
    goto/16 :goto_2

    .line 181
    .line 182
    :cond_8
    const-string v0, "discnumber"

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-nez v0, :cond_12

    .line 189
    .line 190
    const-string/jumbo v0, "set"

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_12

    .line 198
    .line 199
    const-string/jumbo v0, "set;"

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_9

    .line 207
    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :cond_9
    const-string v0, "duration"

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_a

    .line 217
    .line 218
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    iput p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 223
    .line 224
    goto/16 :goto_9

    .line 225
    .line 226
    :cond_a
    const-string/jumbo v0, "writer"

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-nez v0, :cond_11

    .line 234
    .line 235
    const-string/jumbo v0, "writer;"

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_b

    .line 243
    .line 244
    goto :goto_0

    .line 245
    :cond_b
    const-string v0, "compilation"

    .line 246
    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_c

    .line 252
    .line 253
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    iput p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 258
    .line 259
    goto/16 :goto_9

    .line 260
    .line 261
    :cond_c
    const-string/jumbo v0, "isdrm"

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_e

    .line 269
    .line 270
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    const/4 p2, 0x1

    .line 275
    if-ne p1, p2, :cond_d

    .line 276
    .line 277
    move v1, p2

    .line 278
    :cond_d
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 279
    .line 280
    goto/16 :goto_9

    .line 281
    .line 282
    :cond_e
    const-string v0, "date"

    .line 283
    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_f

    .line 289
    .line 290
    invoke-direct {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseDate(Ljava/lang/String;)J

    .line 291
    .line 292
    .line 293
    move-result-wide p1

    .line 294
    iput-wide p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    .line 295
    .line 296
    goto :goto_9

    .line 297
    :cond_f
    const-string/jumbo v0, "width"

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_10

    .line 305
    .line 306
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    iput p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_10
    const-string/jumbo v0, "height"

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-eqz p1, :cond_1a

    .line 321
    .line 322
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    iput p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_11
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 334
    .line 335
    goto :goto_9

    .line 336
    :cond_12
    :goto_1
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    mul-int/lit16 p1, p1, 0x3e8

    .line 341
    .line 342
    iget p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 343
    .line 344
    rem-int/lit16 p2, p2, 0x3e8

    .line 345
    .line 346
    add-int/2addr p2, p1

    .line 347
    iput p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 348
    .line 349
    goto :goto_9

    .line 350
    :cond_13
    :goto_2
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    iget p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 355
    .line 356
    div-int/lit16 p2, p2, 0x3e8

    .line 357
    .line 358
    mul-int/lit16 p2, p2, 0x3e8

    .line 359
    .line 360
    add-int/2addr p2, p1

    .line 361
    iput p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 362
    .line 363
    goto :goto_9

    .line 364
    :cond_14
    :goto_3
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    iput p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_15
    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 376
    .line 377
    goto :goto_9

    .line 378
    :cond_16
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_17
    :goto_6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 390
    .line 391
    goto :goto_9

    .line 392
    :cond_18
    :goto_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 397
    .line 398
    goto :goto_9

    .line 399
    :cond_19
    :goto_8
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 400
    .line 401
    :cond_1a
    :goto_9
    return-void
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 10

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "audio/mp4"

    .line 2
    .line 3
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v0, "video"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 28
    .line 29
    return-void
.end method
