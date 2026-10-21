.class public abstract Landroid/filterfw/core/Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_BINDING:I = 0x0

.field public static final TIMESTAMP_NOT_SET:J = -0x2L

.field public static final TIMESTAMP_UNKNOWN:J = -0x1L


# instance fields
.field private mBindingId:J

.field private mBindingType:I

.field private mFormat:Landroid/filterfw/core/FrameFormat;

.field private mFrameManager:Landroid/filterfw/core/FrameManager;

.field private mReadOnly:Z

.field private mRefCount:I

.field private mReusable:Z

.field private mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 3
    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 5
    iput v0, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    const-wide/16 v0, -0x2

    .line 7
    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    .line 8
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 9
    iput-object p2, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 12
    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    const/4 v1, 0x1

    .line 13
    iput v1, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 14
    iput v0, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    const-wide/16 v0, -0x2

    .line 16
    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    .line 17
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 18
    iput-object p2, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 19
    iput p3, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    .line 20
    iput-wide p4, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    return-void
.end method

.method public static convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    mul-int/lit8 v1, v1, 0x4

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    const-string v0, "Unsupported row byte count in bitmap!"

    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    const-string v0, "Error converting bitmap to RGBA!"

    .line 41
    .line 42
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method


# virtual methods
.method public assertFrameMutable()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->isReadOnly()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string v1, "Attempting to modify read-only frame!"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public final decRefCount()I
    .locals 1

    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return v0
.end method

.method public getBindingId()J
    .locals 2

    iget-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    return-wide v0
.end method

.method public getBindingType()I
    .locals 1

    iget v0, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    return v0
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public getCapacity()I
    .locals 1

    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    return v0
.end method

.method public abstract getData()Ljava/nio/ByteBuffer;
.end method

.method public abstract getFloats()[F
.end method

.method public getFormat()Landroid/filterfw/core/FrameFormat;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    return-object v0
.end method

.method public getFrameManager()Landroid/filterfw/core/FrameManager;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    return-object v0
.end method

.method public abstract getInts()[I
.end method

.method public abstract getObjectValue()Ljava/lang/Object;
.end method

.method public getRefCount()I
    .locals 1

    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    return-wide v0
.end method

.method public abstract hasNativeAllocation()Z
.end method

.method public final incRefCount()I
    .locals 1

    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    return v0
.end method

.method public final isReusable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    return v0
.end method

.method public final markReadOnly()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    return-void
.end method

.method public onFrameFetch()V
    .locals 0

    return-void
.end method

.method public onFrameStore()V
    .locals 0

    return-void
.end method

.method public release()Landroid/filterfw/core/Frame;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/filterfw/core/FrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    return-object p0
.end method

.method public abstract releaseNativeAllocation()V
.end method

.method public requestResize([I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public reset(Landroid/filterfw/core/FrameFormat;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 12
    .line 13
    return-void
.end method

.method public retain()Landroid/filterfw/core/Frame;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/filterfw/core/FrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    return-object p0
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public abstract setData(Ljava/nio/ByteBuffer;II)V
.end method

.method public setData([BII)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .locals 0

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public abstract setFloats([F)V
.end method

.method public setFormat(Landroid/filterfw/core/FrameFormat;)V
    .locals 0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    return-void
.end method

.method public setGenericObjectValue(Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Cannot set object value of unsupported type: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public abstract setInts([I)V
.end method

.method public setObjectValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, [I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, [I

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setInts([I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v0, p1, [F

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, [F

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setFloats([F)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    instance-of v0, p1, Landroid/graphics/Bitmap;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    check-cast p1, Landroid/graphics/Bitmap;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public setReusable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    return-void
.end method
