.class Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/SerializedFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DirectByteOutputStream"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mDataOffset:I

.field private mOffset:I

.field final synthetic this$0:Landroid/filterfw/core/SerializedFrame;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/SerializedFrame;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->this$0:Landroid/filterfw/core/SerializedFrame;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    .line 11
    .line 12
    iput p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mDataOffset:I

    .line 13
    .line 14
    new-array p1, p2, [B

    .line 15
    .line 16
    iput-object p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    .line 17
    .line 18
    return-void
.end method

.method private final ensureFit(I)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    .line 2
    .line 3
    add-int v1, v0, p1

    .line 4
    .line 5
    iget-object v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    if-le v1, v3, :cond_0

    .line 9
    .line 10
    add-int/2addr v0, p1

    .line 11
    array-length p1, v2

    .line 12
    mul-int/lit8 p1, p1, 0x2

    .line 13
    .line 14
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    new-array p1, p1, [B

    .line 19
    .line 20
    iput-object p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    .line 21
    .line 22
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    return-object v0
.end method

.method public final getInputStream()Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;
    .locals 4

    new-instance v0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;

    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->this$0:Landroid/filterfw/core/SerializedFrame;

    iget-object v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    iget v3, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    invoke-direct {v0, v1, v2, v3}, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;-><init>(Landroid/filterfw/core/SerializedFrame;[BI)V

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    return v0
.end method

.method public final markHeaderEnd()V
    .locals 1

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mDataOffset:I

    return-void
.end method

.method public final reset()V
    .locals 1

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mDataOffset:I

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    return-void
.end method

.method public final write(I)V
    .locals 3

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->ensureFit(I)V

    .line 6
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public final write([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    .line 2
    invoke-direct {p0, p3}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->ensureFit(I)V

    .line 3
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 4
    iget p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    return-void
.end method
