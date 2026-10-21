.class public Landroid/media/videoeditor/TransitionAlpha;
.super Landroid/media/videoeditor/Transition;
.source "SourceFile"


# instance fields
.field private final mBlendingPercent:I

.field private mHeight:I

.field private final mIsInvert:Z

.field private final mMaskFilename:Ljava/lang/String;

.field private mRGBMaskFile:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v9}, Landroid/media/videoeditor/TransitionAlpha;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JILjava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JILjava/lang/String;IZ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    .line 2
    invoke-direct/range {p0 .. p6}, Landroid/media/videoeditor/Transition;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .line 3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 7
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, v0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    .line 8
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, v0, Landroid/media/videoeditor/TransitionAlpha;->mHeight:I

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getProjectPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".rgb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/media/videoeditor/TransitionAlpha;->mRGBMaskFile:Ljava/lang/String;

    const/4 v2, 0x0

    .line 10
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v0, Landroid/media/videoeditor/TransitionAlpha;->mRGBMaskFile:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 11
    :catch_0
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz v2, :cond_1

    .line 12
    invoke-static/range {p7 .. p7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 13
    iget v5, v0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    new-array v14, v5, [I

    mul-int/lit8 v5, v5, 0x4

    .line 14
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 15
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    move v11, v3

    .line 16
    :goto_0
    iget v5, v0, Landroid/media/videoeditor/TransitionAlpha;->mHeight:I

    if-ge v11, v5, :cond_0

    const/4 v7, 0x0

    .line 17
    iget v10, v0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    const/4 v9, 0x0

    const/16 v16, 0x1

    move-object v5, v13

    move-object v6, v14

    move v8, v10

    move/from16 v17, v10

    move v10, v11

    move/from16 v18, v11

    move/from16 v11, v17

    move-object/from16 v19, v12

    move/from16 v12, v16

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 18
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    .line 19
    iget v6, v0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    invoke-virtual {v5, v14, v3, v6}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-object/from16 v5, v19

    .line 20
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v11, v18, 0x1

    move-object v12, v5

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 22
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 23
    :catch_2
    :cond_1
    iput-object v1, v0, Landroid/media/videoeditor/TransitionAlpha;->mMaskFilename:Ljava/lang/String;

    move/from16 v1, p8

    .line 24
    iput v1, v0, Landroid/media/videoeditor/TransitionAlpha;->mBlendingPercent:I

    move/from16 v1, p9

    .line 25
    iput-boolean v1, v0, Landroid/media/videoeditor/TransitionAlpha;->mIsInvert:Z

    return-void

    .line 26
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public generate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/media/videoeditor/Transition;->generate()V

    return-void
.end method

.method public getBlendingPercent()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mBlendingPercent:I

    return v0
.end method

.method public getMaskFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mMaskFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getPNGMaskFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mRGBMaskFile:Ljava/lang/String;

    return-object v0
.end method

.method public getRGBFileHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mHeight:I

    return v0
.end method

.method public getRGBFileWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    return v0
.end method

.method public isInvert()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mIsInvert:Z

    return v0
.end method
