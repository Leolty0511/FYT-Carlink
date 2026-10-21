.class public Landroid/os/FileBridge$FileBridgeOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FileBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileBridgeOutputStream"
.end annotation


# instance fields
.field private final mClient:Ljava/io/FileDescriptor;

.field private final mClientPfd:Landroid/os/ParcelFileDescriptor;

.field private final mTemp:[B


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    .line 3
    iput-object p1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    .line 4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    .line 8
    iput-object p1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    return-void
.end method

.method private writeCommandAndBlock(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    .line 2
    .line 3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2, p1, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    .line 10
    .line 11
    iget-object v3, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    .line 12
    .line 13
    const/16 v4, 0x8

    .line 14
    .line 15
    invoke-static {v0, v3, v2, v4}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    .line 19
    .line 20
    iget-object v3, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    .line 21
    .line 22
    invoke-static {v0, v3, v2, v4}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ne v0, v4, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    .line 29
    .line 30
    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ne v0, p1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 38
    .line 39
    const-string v0, "Failed to execute "

    .line 40
    .line 41
    const-string v1, " across bridge"

    .line 42
    .line 43
    invoke-static {v0, p2, v1}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "close()"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {p0, v1, v0}, Landroid/os/FileBridge$FileBridgeOutputStream;->writeCommandAndBlock(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    .line 8
    .line 9
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    .line 13
    .line 14
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    .line 20
    .line 21
    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    .line 25
    .line 26
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public fsync()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "fsync()"

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Landroid/os/FileBridge$FileBridgeOutputStream;->writeCommandAndBlock(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public write(I)V
    .locals 0

    .line 6
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    .line 1
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 2
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 3
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    const/4 v3, 0x4

    invoke-static {v0, v3, p3, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 4
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 5
    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    return-void
.end method
