.class public Landroid/media/videoeditor/OverlayFrame;
.super Landroid/media/videoeditor/Overlay;
.source "SourceFile"


# static fields
.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapFileName:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mOFHeight:I

.field private mOFWidth:I

.field private mResizedRGBHeight:I

.field private mResizedRGBWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/media/videoeditor/OverlayFrame;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Landroid/media/videoeditor/OverlayFrame;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Bitmap;JJ)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-wide v5, p6

    .line 2
    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/Overlay;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V

    .line 3
    iput-object p3, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBWidth:I

    .line 7
    iput p1, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-wide v5, p6

    .line 8
    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/Overlay;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V

    .line 9
    iput-object p3, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    .line 10
    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBWidth:I

    .line 13
    iput p1, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBHeight:I

    return-void
.end method


# virtual methods
.method public generateOverlayWithRenderingMode(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/OverlayFrame;II)V
    .locals 20

    move/from16 v0, p3

    move/from16 v9, p4

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/MediaItem;->getRenderingMode()I

    move-result v1

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeHeight()I

    move-result v3

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeWidth()I

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    :cond_0
    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    :cond_1
    if-ne v4, v9, :cond_2

    if-ne v3, v0, :cond_2

    .line 7
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    .line 8
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 9
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x2

    const/4 v11, 0x0

    if-eqz v1, :cond_6

    const/4 v5, 0x1

    if-eq v1, v5, :cond_5

    if-ne v1, v4, :cond_4

    .line 10
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    .line 11
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    .line 12
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    mul-int/2addr v1, v5

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/2addr v1, v5

    .line 13
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/2addr v5, v4

    .line 14
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v1, v5

    move v6, v5

    move v5, v11

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    mul-int/2addr v1, v5

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    div-int/2addr v1, v5

    .line 16
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/2addr v5, v4

    add-int v4, v5, v1

    .line 17
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move v6, v11

    .line 18
    :goto_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5, v6, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 19
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-direct {v1, v11, v11, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_2

    .line 20
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-direct {v1, v11, v11, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 22
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v7, v11, v11, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    .line 24
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpl-float v1, v1, v5

    if-lez v1, :cond_7

    .line 25
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v1, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v1, v5

    .line 26
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/2addr v5, v4

    .line 27
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    add-int/2addr v1, v5

    move v6, v5

    move v5, v11

    goto :goto_1

    .line 28
    :cond_7
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/2addr v1, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v1, v5

    .line 29
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/2addr v5, v4

    add-int v4, v5, v1

    .line 30
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    move v6, v11

    .line 31
    :goto_1
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5, v6, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 32
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v1, v11, v11, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v19, v7

    move-object v7, v1

    move-object/from16 v1, v19

    .line 33
    :goto_2
    sget-object v4, Landroid/media/videoeditor/OverlayFrame;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v7, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 34
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 35
    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 36
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 37
    :cond_8
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 39
    new-array v14, v9, [I

    mul-int/lit8 v1, v9, 0x4

    .line 40
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 41
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    move v7, v11

    :goto_3
    if-ge v7, v0, :cond_9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x1

    move-object v1, v10

    move-object v2, v14

    move/from16 v4, p4

    move v6, v7

    move/from16 v17, v7

    move/from16 v7, p4

    move-object/from16 v18, v8

    move/from16 v8, v16

    .line 42
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 43
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v14, v11, v9}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-object/from16 v1, v18

    .line 45
    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v7, v17, 0x1

    move-object v8, v1

    goto :goto_3

    .line 46
    :cond_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 47
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v1, p2

    .line 48
    invoke-virtual {v1, v9, v0}, Landroid/media/videoeditor/OverlayFrame;->setResizedRGBSize(II)V

    :cond_a
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapImageFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayFrameHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/OverlayFrame;->mOFHeight:I

    return v0
.end method

.method public getOverlayFrameWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/OverlayFrame;->mOFWidth:I

    return v0
.end method

.method public getResizedRGBSizeHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBHeight:I

    return v0
.end method

.method public getResizedRGBSizeWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBWidth:I

    return v0
.end method

.method public invalidate()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    iput-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 6
    iput-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    iput-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public invalidateGeneratedFiles()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3
    iput-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 6
    iput-object v1, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public save(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Overlay"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmapFileName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 8
    :cond_1
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/media/videoeditor/OverlayFrame;->mOFWidth:I

    .line 9
    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/media/videoeditor/OverlayFrame;->mOFHeight:I

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".rgb"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    .line 11
    invoke-super {p0}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeHelperGetAspectRatio()I

    move-result p1

    invoke-static {p1}, Landroid/media/videoeditor/MediaProperties;->getSupportedResolutions(I)[Landroid/util/Pair;

    move-result-object p1

    .line 13
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    .line 14
    invoke-super {p0}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p0, v1, p1}, Landroid/media/videoeditor/OverlayFrame;->generateOverlayWithRenderingMode(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/OverlayFrame;II)V

    .line 15
    iget-object p1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    return-object p1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/media/videoeditor/OverlayFrame;->invalidate()V

    .line 3
    iput-object p1, p0, Landroid/media/videoeditor/OverlayFrame;->mBitmap:Landroid/graphics/Bitmap;

    .line 4
    iget-object p1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object p1

    iget-wide v0, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    iget-wide v2, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/videoeditor/OverlayFrame;->mFilename:Ljava/lang/String;

    return-void
.end method

.method public setOverlayFrameHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/videoeditor/OverlayFrame;->mOFHeight:I

    return-void
.end method

.method public setOverlayFrameWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/videoeditor/OverlayFrame;->mOFWidth:I

    return-void
.end method

.method public setResizedRGBSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBWidth:I

    .line 2
    iput p2, p0, Landroid/media/videoeditor/OverlayFrame;->mResizedRGBHeight:I

    return-void
.end method
