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

.field public final synthetic this$0:Landroid/os/MemoryFile;


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

    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-static {v1}, Landroid/os/MemoryFile;->access$200(Landroid/os/MemoryFile;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-static {v0}, Landroid/os/MemoryFile;->access$200(Landroid/os/MemoryFile;)I

    move-result v0

    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark(I)V
    .locals 0

    .line 1
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

    .line 1
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    return-void
.end method

.method public skip(J)J
    .locals 4

    .line 1
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget-object v2, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-static {v2}, Landroid/os/MemoryFile;->access$200(Landroid/os/MemoryFile;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-static {p1}, Landroid/os/MemoryFile;->access$200(Landroid/os/MemoryFile;)I

    move-result p1

    iget p2, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    sub-int/2addr p1, p2

    int-to-long p1, p1

    .line 3
    :cond_0
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    return-wide p1
.end method
