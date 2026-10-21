.class public Landroid/filterfw/core/MutableFrameFormat;
.super Landroid/filterfw/core/FrameFormat;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FrameFormat;-><init>(II)V

    return-void
.end method


# virtual methods
.method public setBaseType(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    .line 2
    .line 3
    invoke-static {p1}, Landroid/filterfw/core/FrameFormat;->bytesPerSampleOf(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    .line 8
    .line 9
    return-void
.end method

.method public setBytesPerSample(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    .line 5
    .line 6
    return-void
.end method

.method public setDimensionCount(I)V
    .locals 0

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    return-void
.end method

.method public setDimensions(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 3
    iput-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    return-void
.end method

.method public setDimensions(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 5
    iput-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    return-void
.end method

.method public setDimensions(III)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    .line 7
    iput-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    return-void
.end method

.method public setDimensions([I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    return-void
.end method

.method public setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setObjectClass(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Landroid/filterfw/core/FrameFormat;->mObjectClass:Ljava/lang/Class;

    return-void
.end method

.method public setTarget(I)V
    .locals 0

    iput p1, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    return-void
.end method
