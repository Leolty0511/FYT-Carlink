.class public Landroid/filterpacks/imageproc/BitmapSource;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "bitmap"
    .end annotation
.end field

.field private mImageFrame:Landroid/filterfw/core/Frame;

.field private mRecycleBitmap:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recycleBitmap"
    .end annotation
.end field

.field mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field

.field private mTarget:I

.field mTargetString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRecycleBitmap:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRepeatFrame:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    const-string p2, "bitmap"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const-string/jumbo p2, "target"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public loadImage(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTargetString:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/filterfw/core/FrameFormat;->readTargetString(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTarget:I

    .line 8
    .line 9
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x3

    .line 22
    iget v3, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTarget:I

    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 37
    .line 38
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 44
    .line 45
    const-wide/16 v0, -0x1

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 48
    .line 49
    .line 50
    iget-boolean p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRecycleBitmap:Z

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    .line 58
    .line 59
    :cond_0
    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    .line 62
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/filterpacks/imageproc/BitmapSource;->loadImage(Landroid/filterfw/core/FilterContext;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 9
    .line 10
    const-string/jumbo v0, "image"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 14
    .line 15
    .line 16
    iget-boolean p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRepeatFrame:Z

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "image"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
