.class Landroid/os/MemoryFile$MemoryOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MemoryFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemoryOutputStream"
.end annotation


# instance fields
.field private mOffset:I

.field private mSingleByte:[B

.field final synthetic this$0:Landroid/os/MemoryFile;


# direct methods
.method private constructor <init>(Landroid/os/MemoryFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/MemoryFile$MemoryOutputStream;->this$0:Landroid/os/MemoryFile;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mOffset:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/os/MemoryFile$MemoryOutputStream;-><init>(Landroid/os/MemoryFile;)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3

    .line 3
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mSingleByte:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [B

    .line 4
    iput-object v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mSingleByte:[B

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mSingleByte:[B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v0, v2

    .line 6
    invoke-virtual {p0, v0, v2, v1}, Landroid/os/MemoryFile$MemoryOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->this$0:Landroid/os/MemoryFile;

    iget v1, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mOffset:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 2
    iget p1, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mOffset:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mOffset:I

    return-void
.end method
