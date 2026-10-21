.class public Landroid/filterpacks/base/GLTextureSource;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mFrame:Landroid/filterfw/core/Frame;

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field

.field private mTexId:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "texId"
    .end annotation
.end field

.field private mTimestamp:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "timestamp"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroid/filterpacks/base/GLTextureSource;->mRepeatFrame:Z

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    iput-wide v0, p0, Landroid/filterpacks/base/GLTextureSource;->mTimestamp:J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

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
    iput-object p1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/filterpacks/base/GLTextureSource;->mWidth:I

    .line 6
    .line 7
    iget v1, p0, Landroid/filterpacks/base/GLTextureSource;->mHeight:I

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget v1, p0, Landroid/filterpacks/base/GLTextureSource;->mTexId:I

    .line 19
    .line 20
    int-to-long v1, v1

    .line 21
    const/16 v3, 0x64

    .line 22
    .line 23
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 28
    .line 29
    iget-wide v0, p0, Landroid/filterpacks/base/GLTextureSource;->mTimestamp:J

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 35
    .line 36
    const-string v0, "frame"

    .line 37
    .line 38
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 39
    .line 40
    .line 41
    iget-boolean p1, p0, Landroid/filterpacks/base/GLTextureSource;->mRepeatFrame:Z

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public setupPorts()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
