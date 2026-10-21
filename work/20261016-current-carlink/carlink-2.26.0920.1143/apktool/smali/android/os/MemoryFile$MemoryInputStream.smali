.class Landroid/os/MemoryFile$MemoryInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MemoryFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemoryInputStream"
.end annotation


# instance fields
.field private mMark:I

.field private mOffset:I

.field private mSingleByte:[B

.field final synthetic this$0:Landroid/os/MemoryFile;


# direct methods
.method private constructor <init>(Landroid/os/MemoryFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    .line 3
    iput p1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/MemoryFile;->access$200(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/SharedMemory;->getSize()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_0
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/os/MemoryFile;->access$200(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    .line 28
    .line 29
    sub-int/2addr v0, v1

    .line 30
    return v0
.end method

.method public mark(I)V
    .locals 0

    iget p1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    iput p1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [B

    .line 2
    iput-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/os/MemoryFile$MemoryInputStream;->read([BII)I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    aget-byte v0, v0, v2

    return v0
.end method

.method public read([BII)I
    .locals 2

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 5
    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/os/MemoryFile$MemoryInputStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/os/MemoryFile;->readBytes([BIII)I

    move-result p1

    if-lez p1, :cond_1

    .line 8
    iget p2, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    :cond_1
    return p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    return-void
.end method

.method public skip(J)J
    .locals 4

    .line 1
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    add-long/2addr v0, p1

    .line 5
    iget-object v2, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/os/MemoryFile;->access$200(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/os/SharedMemory;->getSize()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    int-to-long v2, v2

    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/os/MemoryFile;->access$200(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/os/SharedMemory;->getSize()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget p2, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    .line 31
    .line 32
    sub-int/2addr p1, p2

    .line 33
    int-to-long p1, p1

    .line 34
    :cond_0
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    .line 35
    .line 36
    int-to-long v0, v0

    .line 37
    add-long/2addr v0, p1

    .line 38
    long-to-int v0, v0

    .line 39
    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    .line 40
    .line 41
    return-wide p1
.end method
