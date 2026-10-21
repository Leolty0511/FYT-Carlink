.class public Landroid/filterfw/core/SimpleFrame;
.super Landroid/filterfw/core/Frame;
.source "SourceFile"


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/filterfw/core/SimpleFrame;->initWithFormat(Landroid/filterfw/core/FrameFormat;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setReusable(Z)V

    return-void
.end method

.method private initWithFormat(Landroid/filterfw/core/FrameFormat;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getLength()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    new-array p1, v0, [D

    iput-object p1, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    new-array p1, v0, [F

    iput-object p1, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_2
    new-array p1, v0, [I

    iput-object p1, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_3
    new-array p1, v0, [S

    iput-object p1, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_4
    new-array p1, v0, [B

    iput-object p1, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private setFormatObjectClass(Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setFormat(Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method

.method public static wrapObject(Ljava/lang/Object;Landroid/filterfw/core/FrameManager;)Landroid/filterfw/core/SimpleFrame;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/filterfw/core/SimpleFrame;

    invoke-direct {v1, v0, p1}, Landroid/filterfw/core/SimpleFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 3
    invoke-virtual {v1, p0}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v1, v0, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFloats()[F
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v1, v0, [F

    if-eqz v1, :cond_0

    check-cast v0, [F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInts()[I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v1, v0, [I

    if-eqz v1, :cond_0

    check-cast v0, [I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public hasNativeAllocation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public releaseNativeAllocation()V
    .locals 0

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setFloats([F)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setGenericObjectValue(Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/filterfw/core/SimpleFrame;->setFormatObjectClass(Ljava/lang/Class;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    :goto_0
    iput-object p1, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    return-void

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to set object value of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SimpleFrame of type \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setInts([I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleFrame ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
