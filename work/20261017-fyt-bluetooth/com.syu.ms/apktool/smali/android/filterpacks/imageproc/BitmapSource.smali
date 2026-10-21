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

.field public mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field

.field private mTarget:I

.field public mTargetString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRecycleBitmap:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRepeatFrame:Z

    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    const-string p2, "bitmap"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string/jumbo p2, "target"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    :cond_1
    return-void
.end method

.method public loadImage(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTargetString:Ljava/lang/String;

    invoke-static {v0}, Landroid/filterfw/core/FrameFormat;->readTargetString(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTarget:I

    .line 2
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTarget:I

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    iput-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 4
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    iget-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 6
    iget-boolean p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRecycleBitmap:Z

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/filterpacks/imageproc/BitmapSource;->loadImage(Landroid/filterfw/core/FilterContext;)V

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    const-string v0, "image"

    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 4
    iget-boolean p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRepeatFrame:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setupPorts()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    :cond_0
    return-void
.end method
