.class public Landroid/media/videoeditor/MediaImageItem;
.super Landroid/media/videoeditor/MediaItem;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaImageItem"

.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private final mAspectRatio:I

.field private mDecodedFilename:Ljava/lang/String;

.field private mDurationMs:J

.field private mFileName:Ljava/lang/String;

.field private mGeneratedClipHeight:I

.field private mGeneratedClipWidth:I

.field private final mHeight:I

.field private final mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private mScaledFilename:Ljava/lang/String;

.field private mScaledHeight:I

.field private mScaledWidth:I

.field private final mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

.field private final mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/media/videoeditor/MediaImageItem;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/MediaImageItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move/from16 v4, p6

    .line 2
    invoke-direct {v0, v1, v3, v2, v4}, Landroid/media/videoeditor/MediaItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    check-cast v1, Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {v1}, Landroid/media/videoeditor/VideoEditorImpl;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v3

    iput-object v3, v0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 4
    iput-object v1, v0, Landroid/media/videoeditor/MediaImageItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    .line 5
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v1

    .line 6
    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v1

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported Input File Type"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :cond_1
    :goto_0
    iput-object v2, v0, Landroid/media/videoeditor/MediaImageItem;->mFileName:Ljava/lang/String;

    .line 9
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 10
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 11
    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 12
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v5, v0, Landroid/media/videoeditor/MediaImageItem;->mWidth:I

    .line 13
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, v0, Landroid/media/videoeditor/MediaImageItem;->mHeight:I

    move-wide/from16 v6, p4

    .line 14
    iput-wide v6, v0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getProjectPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "decoded"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".rgb"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/media/videoeditor/MediaImageItem;->mDecodedFilename:Ljava/lang/String;

    .line 16
    :try_start_1
    invoke-virtual {v3, v5, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v6

    iput v6, v0, Landroid/media/videoeditor/MediaImageItem;->mAspectRatio:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    iput v8, v0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipHeight:I

    .line 18
    iput v8, v0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipWidth:I

    .line 19
    invoke-static {v6}, Landroid/media/videoeditor/MediaProperties;->getSupportedResolutions(I)[Landroid/util/Pair;

    move-result-object v6

    .line 20
    array-length v9, v6

    sub-int/2addr v9, v4

    aget-object v6, v6, v9

    .line 21
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v5, v9, :cond_3

    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v1, v9, :cond_2

    goto :goto_1

    .line 22
    :cond_2
    iput-object v2, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    shr-int/lit8 v3, v5, 0x1

    shl-int/2addr v3, v4

    .line 23
    iput v3, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledWidth:I

    shr-int/2addr v1, v4

    shl-int/2addr v1, v4

    .line 24
    iput v1, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledHeight:I

    .line 25
    invoke-static/range {p3 .. p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 26
    :cond_3
    :goto_1
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v0, v2, v1, v5}, Landroid/media/videoeditor/MediaImageItem;->scaleImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getProjectPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "scaled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".JPG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    .line 28
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 29
    iput-boolean v4, v0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    .line 30
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 31
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x32

    invoke-virtual {v1, v3, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 32
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 33
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    shr-int/2addr v2, v4

    shl-int/2addr v2, v4

    iput v2, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledWidth:I

    .line 34
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    shr-int/2addr v2, v4

    shl-int/2addr v2, v4

    iput v2, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledHeight:I

    .line 35
    :goto_2
    iget v2, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledWidth:I

    .line 36
    iget v3, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledHeight:I

    .line 37
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Landroid/media/videoeditor/MediaImageItem;->mDecodedFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 38
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v0, Landroid/media/videoeditor/MediaImageItem;->mDecodedFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    new-array v6, v2, [I

    mul-int/lit8 v7, v2, 0x4

    .line 41
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 42
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    move v14, v8

    :goto_3
    if-ge v14, v3, :cond_5

    const/4 v11, 0x0

    .line 43
    iget v12, v0, Landroid/media/videoeditor/MediaImageItem;->mScaledWidth:I

    const/4 v13, 0x0

    const/16 v16, 0x1

    move-object v9, v1

    move-object v10, v6

    move/from16 v17, v14

    move-object/from16 v18, v15

    move v15, v2

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 44
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v9

    .line 45
    invoke-virtual {v9, v6, v8, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-object/from16 v9, v18

    .line 46
    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v14, v17, 0x1

    move-object v15, v9

    goto :goto_3

    .line 47
    :cond_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 48
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    .line 49
    :catch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null width and height"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :catch_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported file or file not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private adjustEffects()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/Effect;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Effect;

    .line 4
    invoke-virtual {v2}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDuration()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v2}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v3

    .line 6
    :goto_1
    invoke-virtual {v2}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDuration()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDuration()J

    move-result-wide v5

    sub-long/2addr v5, v3

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v2}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v5

    .line 9
    :goto_2
    invoke-virtual {v2}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-nez v7, :cond_3

    invoke-virtual {v2}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    .line 10
    :cond_3
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/media/videoeditor/Effect;->setStartTimeAndDuration(JJ)V

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private adjustOverlays()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/Overlay;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Overlay;

    .line 4
    invoke-virtual {v2}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDuration()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v2}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v3

    .line 6
    :goto_1
    invoke-virtual {v2}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDuration()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDuration()J

    move-result-wide v5

    sub-long/2addr v5, v3

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v2}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v5

    .line 9
    :goto_2
    invoke-virtual {v2}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-nez v7, :cond_3

    invoke-virtual {v2}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    .line 10
    :cond_3
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/media/videoeditor/Overlay;->setStartTimeAndDuration(JJ)V

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private getKenBurns(Landroid/media/videoeditor/EffectKenBurns;)Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .locals 12

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3
    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/media/videoeditor/EffectKenBurns;->getKenBurnsSettings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getWidth()I

    move-result p1

    .line 6
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getHeight()I

    move-result v3

    .line 7
    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_3

    if-gt v4, p1, :cond_3

    iget v5, v0, Landroid/graphics/Rect;->right:I

    if-ltz v5, :cond_3

    if-gt v5, p1, :cond_3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    if-ltz v6, :cond_3

    if-gt v6, v3, :cond_3

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-ltz v7, :cond_3

    if-gt v7, v3, :cond_3

    iget v8, v1, Landroid/graphics/Rect;->left:I

    if-ltz v8, :cond_3

    if-gt v8, p1, :cond_3

    iget v9, v1, Landroid/graphics/Rect;->right:I

    if-ltz v9, :cond_3

    if-gt v9, p1, :cond_3

    iget v10, v1, Landroid/graphics/Rect;->top:I

    if-ltz v10, :cond_3

    if-gt v10, v3, :cond_3

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    if-ltz v11, :cond_3

    if-gt v11, v3, :cond_3

    sub-int/2addr v5, v4

    sub-int v4, p1, v5

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    sub-int/2addr v7, v6

    sub-int v4, v3, v7

    if-nez v4, :cond_1

    :cond_0
    sub-int/2addr v9, v8

    sub-int v4, p1, v9

    if-eqz v4, :cond_2

    sub-int/2addr v11, v10

    sub-int v4, v3, v11

    if-nez v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    div-int/2addr v4, p1

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    div-int/2addr v6, p1

    .line 10
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDecodedImageFileName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 11
    iget-object v7, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getFileType()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemFileType(I)I

    move-result v7

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 12
    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 13
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getTimelineDuration()J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 14
    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutPercent:I

    .line 15
    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutPercent:I

    const/4 v5, 0x1

    .line 16
    iput-boolean v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomEnabled:Z

    .line 17
    iput v4, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentStart:I

    .line 18
    iget v4, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit16 v4, v4, 0x3e8

    div-int/2addr v4, p1

    iput v4, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXStart:I

    .line 19
    iget v0, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, v3

    iput v0, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYStart:I

    .line 20
    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentEnd:I

    .line 21
    iget v0, v1, Landroid/graphics/Rect;->left:I

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p1

    iput v0, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXEnd:I

    .line 22
    iget p1, v1, Landroid/graphics/Rect;->top:I

    mul-int/lit16 p1, p1, 0x3e8

    div-int/2addr p1, v3

    iput p1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYEnd:I

    .line 23
    iget-object p1, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getRenderingMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result p1

    iput p1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 24
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result p1

    iput p1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    .line 25
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result p1

    iput p1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    return-object v2

    .line 26
    :cond_2
    :goto_0
    invoke-virtual {p0, v5}, Landroid/media/videoeditor/MediaItem;->setRegenerateClip(Z)V

    .line 27
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDecodedImageFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    const/4 p1, 0x5

    .line 28
    iput p1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 29
    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 30
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getTimelineDuration()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 31
    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutPercent:I

    .line 32
    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutPercent:I

    .line 33
    iput-boolean v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomEnabled:Z

    .line 34
    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentStart:I

    .line 35
    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXStart:I

    .line 36
    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYStart:I

    .line 37
    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentEnd:I

    .line 38
    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXEnd:I

    .line 39
    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYEnd:I

    .line 40
    iget-object p1, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getRenderingMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result p1

    iput p1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 41
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result p1

    iput p1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    .line 42
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result p1

    iput p1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    return-object v2

    .line 43
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal arguments for KebBurns"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getWidthByAspectRatioAndHeight(II)I
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0x438

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const/16 v4, 0x1e0

    const/4 v5, 0x0

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/16 p1, 0x90

    if-ne p2, p1, :cond_a

    const/16 v1, 0xb0

    goto :goto_1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal arguments for aspectRatio"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ne p2, v4, :cond_a

    const/16 v1, 0x320

    goto :goto_1

    :cond_2
    if-ne p2, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v5

    :goto_0
    if-ne p2, v3, :cond_b

    const/16 v1, 0x3c0

    goto :goto_1

    :cond_4
    const/16 p1, 0x168

    if-ne p2, p1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    if-ne p2, v4, :cond_6

    const/16 v1, 0x356

    goto :goto_1

    :cond_6
    if-ne p2, v3, :cond_7

    const/16 v1, 0x500

    goto :goto_1

    :cond_7
    if-ne p2, v1, :cond_a

    const/16 v1, 0x780

    goto :goto_1

    :cond_8
    if-ne p2, v4, :cond_9

    move v1, v3

    goto :goto_1

    :cond_9
    if-ne p2, v3, :cond_a

    goto :goto_1

    :cond_a
    move v1, v5

    :cond_b
    :goto_1
    return v1
.end method

.method private invalidateBeginTransition(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/Effect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/videoeditor/Overlay;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Effect;

    .line 4
    invoke-virtual {v2}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 5
    iget-object p1, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/videoeditor/Overlay;

    .line 8
    invoke-virtual {p2}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-gez p2, :cond_2

    .line 9
    iget-object p1, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->invalidate()V

    :cond_3
    return-void
.end method

.method private invalidateEndTransition()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/Effect;

    .line 5
    invoke-virtual {v3}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-wide v6, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    sub-long/2addr v6, v0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 6
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 7
    :cond_1
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/Overlay;

    .line 10
    invoke-virtual {v3}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-wide v6, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    sub-long/2addr v6, v0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 11
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    :cond_3
    return-void
.end method

.method public static nextPowerOf2(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private scaleImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 5
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const-string v2, "MediaImageItem"

    const/4 v3, 0x3

    .line 6
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateThumbnail: Input: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", resize to: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gt v1, p2, :cond_2

    if-le v0, p3, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p2, p2

    int-to-float p3, p3

    .line 8
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_4

    :cond_2
    :goto_0
    int-to-float v1, v1

    int-to-float p2, p2

    div-float v3, v1, p2

    int-to-float v0, v0

    int-to-float p3, p3

    div-float v4, v0, p3

    cmpl-float v5, v3, v4

    if-lez v5, :cond_4

    div-float v3, v0, v3

    cmpg-float p3, v3, p3

    if-gez p3, :cond_3

    float-to-double v3, v3

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    goto :goto_1

    :cond_3
    float-to-double v3, v3

    .line 10
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    :goto_1
    double-to-float p3, v3

    goto :goto_3

    :cond_4
    div-float v3, v1, v4

    cmpl-float p2, v3, p2

    if-lez p2, :cond_5

    float-to-double v3, v3

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    goto :goto_2

    :cond_5
    float-to-double v3, v3

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    :goto_2
    double-to-float p2, v3

    :goto_3
    div-float/2addr v1, p2

    div-float/2addr v0, p3

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 14
    invoke-static {v0}, Landroid/media/videoeditor/MediaImageItem;->nextPowerOf2(I)I

    move-result v0

    .line 15
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 16
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 17
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_6

    float-to-int p2, p2

    float-to-int p3, p3

    .line 18
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 19
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object p2, Landroid/media/videoeditor/MediaImageItem;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 p2, 0x0

    .line 21
    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_6
    const-string p1, "generateThumbnail: Cannot decode image bytes"

    .line 23
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot decode file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public generateKenburnsClip(Landroid/media/videoeditor/EffectKenBurns;)Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .locals 4

    .line 1
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 2
    iput-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 3
    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Landroid/media/videoeditor/MediaItem;->initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V

    .line 5
    iget-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaImageItem;->getKenBurns(Landroid/media/videoeditor/EffectKenBurns;)Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 6
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getRegenerateClip()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p1, v0, p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateKenBurnsClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaImageItem;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v3}, Landroid/media/videoeditor/MediaItem;->setRegenerateClip(Z)V

    .line 10
    iput-object p1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 11
    iput v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 12
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result p1

    iput p1, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipHeight:I

    .line 13
    iget-object p1, p0, Landroid/media/videoeditor/MediaImageItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {p1}, Landroid/media/videoeditor/VideoEditorImpl;->getAspectRatio()I

    move-result p1

    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipHeight:I

    invoke-direct {p0, p1, v0}, Landroid/media/videoeditor/MediaImageItem;->getWidthByAspectRatioAndHeight(II)I

    move-result p1

    iput p1, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipWidth:I

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDecodedImageFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    const/4 p1, 0x5

    .line 16
    iput p1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 17
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result p1

    iput p1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    .line 18
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result p1

    iput p1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 20
    iput v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 21
    :goto_0
    iget-object p1, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getRenderingMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result p1

    iput p1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 22
    iput v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 23
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getTimelineDuration()J

    move-result-wide v2

    long-to-int p1, v2

    iput p1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    return-object v1
.end method

.method public getAspectRatio()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mAspectRatio:I

    return v0
.end method

.method public getDecodedImageFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mDecodedFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    return-wide v0
.end method

.method public getFileType()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    const-string v1, ".JPG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    const-string v1, ".JPEG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    const-string v1, ".PNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xff

    return v0

    :cond_2
    :goto_0
    const/16 v0, 0x8

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x5

    return v0
.end method

.method public getGeneratedClipHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipHeight:I

    return v0
.end method

.method public getGeneratedClipWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipWidth:I

    return v0
.end method

.method public getGeneratedImageClip()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/media/videoeditor/MediaItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mHeight:I

    return v0
.end method

.method public getImageClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .locals 5

    .line 1
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Effect;

    .line 4
    instance-of v4, v2, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v4, :cond_0

    .line 5
    check-cast v2, Landroid/media/videoeditor/EffectKenBurns;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Landroid/media/videoeditor/MediaImageItem;->generateKenburnsClip(Landroid/media/videoeditor/EffectKenBurns;)Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaItem;->initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V

    .line 8
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDecodedImageFileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    const/4 v1, 0x5

    .line 9
    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 10
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 11
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getTimelineDuration()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 12
    iget-object v1, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getRenderingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 13
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    .line 14
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    :goto_1
    return-object v0
.end method

.method public getScaledHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mScaledHeight:I

    return v0
.end method

.method public getScaledImageFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getScaledWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mScaledWidth:I

    return v0
.end method

.method public getThumbnail(IIJ)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixels(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p3, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    invoke-direct {p0, p3, p1, p2}, Landroid/media/videoeditor/MediaImageItem;->scaleImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnailList(IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v10, p8

    .line 1
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    move v3, p1

    move v4, p2

    invoke-direct {p0, v1, p1, p2}, Landroid/media/videoeditor/MediaImageItem;->scaleImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v10

    if-ge v2, v3, :cond_1

    .line 4
    aget v3, v10, v2

    move-object/from16 v11, p9

    invoke-interface {v11, v1, v3}, Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;->onThumbnail(Landroid/graphics/Bitmap;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, p1

    move v4, p2

    move-object/from16 v11, p9

    cmp-long v1, p3, p5

    if-gtz v1, :cond_3

    .line 5
    iget-wide v1, v0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    cmp-long v1, p5, v1

    if-gtz v1, :cond_2

    .line 6
    iget-object v1, v0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    move v3, p1

    move v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v1 .. v12}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixelsList(Ljava/lang/String;IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;I)V

    :cond_1
    return-void

    .line 7
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "End time is greater than file duration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Start time is greater than end time"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTimelineDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mWidth:I

    return v0
.end method

.method public invalidate()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3
    invoke-virtual {p0, v1}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaItem;->setRegenerateClip(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6
    iget-object v2, p0, Landroid/media/videoeditor/MediaImageItem;->mFileName:Ljava/lang/String;

    if-eq v2, v0, :cond_1

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 8
    :cond_1
    iput-object v1, p0, Landroid/media/videoeditor/MediaImageItem;->mScaledFilename:Ljava/lang/String;

    .line 9
    :cond_2
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mDecodedFilename:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/media/videoeditor/MediaImageItem;->mDecodedFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 11
    iput-object v1, p0, Landroid/media/videoeditor/MediaImageItem;->mDecodedFilename:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public invalidateTransitions(JJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_0

    const-wide/16 v6, 0x0

    .line 2
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v9}, Landroid/media/videoeditor/MediaItem;->isOverlapping(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v8

    .line 6
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getDuration()J

    move-result-wide v0

    sub-long v6, v0, v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v9}, Landroid/media/videoeditor/MediaItem;->isOverlapping(JJJJ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->invalidate()V

    :cond_1
    return-void
.end method

.method public invalidateTransitions(JJJJ)V
    .locals 13

    move-object v9, p0

    .line 8
    iget-object v0, v9, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v10

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide v7, v10

    .line 10
    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaItem;->isOverlapping(JJJJ)Z

    move-result v12

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    .line 11
    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaItem;->isOverlapping(JJJJ)Z

    move-result v0

    if-eq v0, v12, :cond_0

    .line 12
    iget-object v0, v9, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    cmp-long v0, p1, p5

    if-nez v0, :cond_1

    add-long v0, p1, p3

    cmp-long v0, v0, v10

    if-lez v0, :cond_1

    add-long v0, p5, p7

    cmp-long v0, v0, v10

    if-gtz v0, :cond_2

    .line 13
    :cond_1
    iget-object v0, v9, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 14
    :cond_2
    :goto_0
    iget-object v0, v9, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v10

    .line 16
    iget-wide v0, v9, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    sub-long v5, v0, v10

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaItem;->isOverlapping(JJJJ)Z

    move-result v12

    .line 17
    iget-wide v0, v9, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    sub-long v5, v0, v10

    move-object v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaItem;->isOverlapping(JJJJ)Z

    move-result v0

    if-eq v0, v12, :cond_3

    .line 18
    iget-object v0, v9, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    add-long v0, p1, p3

    add-long v2, p5, p7

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 19
    iget-wide v0, v9, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    sub-long v2, v0, v10

    cmp-long v2, p1, v2

    if-gtz v2, :cond_4

    sub-long/2addr v0, v10

    cmp-long v0, p5, v0

    if-lez v0, :cond_5

    .line 20
    :cond_4
    iget-object v0, v9, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setDuration(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaImageItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 3
    invoke-direct {p0}, Landroid/media/videoeditor/MediaImageItem;->invalidateEndTransition()V

    .line 4
    iput-wide p1, p0, Landroid/media/videoeditor/MediaImageItem;->mDurationMs:J

    .line 5
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->adjustTransitions()V

    .line 6
    invoke-direct {p0}, Landroid/media/videoeditor/MediaImageItem;->adjustOverlays()Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-direct {p0}, Landroid/media/videoeditor/MediaImageItem;->adjustEffects()Ljava/util/List;

    move-result-object p2

    .line 8
    invoke-direct {p0, p2, p1}, Landroid/media/videoeditor/MediaImageItem;->invalidateBeginTransition(Ljava/util/List;Ljava/util/List;)V

    .line 9
    invoke-direct {p0}, Landroid/media/videoeditor/MediaImageItem;->invalidateEndTransition()V

    .line 10
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 13
    invoke-super {p0, v1}, Landroid/media/videoeditor/MediaItem;->setRegenerateClip(Z)V

    .line 14
    :cond_1
    iget-object p1, p0, Landroid/media/videoeditor/MediaImageItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {p1}, Landroid/media/videoeditor/VideoEditorImpl;->updateTimelineDuration()V

    return-void
.end method

.method public setGeneratedImageClip(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/media/videoeditor/MediaItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result p1

    iput p1, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipHeight:I

    .line 3
    iget-object p1, p0, Landroid/media/videoeditor/MediaImageItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {p1}, Landroid/media/videoeditor/VideoEditorImpl;->getAspectRatio()I

    move-result p1

    iget v0, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipHeight:I

    invoke-direct {p0, p1, v0}, Landroid/media/videoeditor/MediaImageItem;->getWidthByAspectRatioAndHeight(II)I

    move-result p1

    iput p1, p0, Landroid/media/videoeditor/MediaImageItem;->mGeneratedClipWidth:I

    return-void
.end method
