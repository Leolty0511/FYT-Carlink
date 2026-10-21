.class public Landroid/os/MemoryFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MemoryFile$MemoryOutputStream;,
        Landroid/os/MemoryFile$MemoryInputStream;
    }
.end annotation


# static fields
.field private static final PROT_READ:I = 0x1

.field private static final PROT_WRITE:I = 0x2

.field private static TAG:Ljava/lang/String; = "MemoryFile"


# instance fields
.field private mAddress:I

.field private mAllowPurging:Z

.field private mFD:Ljava/io/FileDescriptor;

.field private mLength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 3
    iput p2, p0, Landroid/os/MemoryFile;->mLength:I

    .line 4
    invoke-static {p1, p2}, Landroid/os/MemoryFile;->native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    if-lez p2, :cond_0

    const/4 v0, 0x3

    .line 5
    invoke-static {p1, p2, v0}, Landroid/os/MemoryFile;->native_mmap(Ljava/io/FileDescriptor;II)I

    move-result p1

    iput p1, p0, Landroid/os/MemoryFile;->mAddress:I

    goto :goto_0

    .line 6
    :cond_0
    iput v0, p0, Landroid/os/MemoryFile;->mAddress:I

    :goto_0
    return-void
.end method

.method public static synthetic access$200(Landroid/os/MemoryFile;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/os/MemoryFile;->mLength:I

    return p0
.end method

.method public static getSize(Ljava/io/FileDescriptor;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/os/MemoryFile;->native_get_size(Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method private isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isDeactivated()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/os/MemoryFile;->mAddress:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native native_close(Ljava/io/FileDescriptor;)V
.end method

.method private static native native_get_size(Ljava/io/FileDescriptor;)I
.end method

.method private static native native_mmap(Ljava/io/FileDescriptor;II)I
.end method

.method private static native native_munmap(II)V
.end method

.method private static native native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
.end method

.method private static native native_pin(Ljava/io/FileDescriptor;Z)V
.end method

.method private static native native_read(Ljava/io/FileDescriptor;I[BIIIZ)I
.end method

.method private static native native_write(Ljava/io/FileDescriptor;I[BIIIZ)V
.end method


# virtual methods
.method public declared-synchronized allowPurging(Z)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    if-eq v0, p1, :cond_1

    .line 2
    iget-object v1, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)V

    .line 3
    iput-boolean p1, p0, Landroid/os/MemoryFile;->mAllowPurging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/MemoryFile;->deactivate()V

    .line 2
    invoke-direct {p0}, Landroid/os/MemoryFile;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/os/MemoryFile;->native_close(Ljava/io/FileDescriptor;)V

    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/os/MemoryFile;->mAddress:I

    iget v1, p0, Landroid/os/MemoryFile;->mLength:I

    invoke-static {v0, v1}, Landroid/os/MemoryFile;->native_munmap(II)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/os/MemoryFile;->mAddress:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public finalize()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/MemoryFile;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    const-string v1, "MemoryFile.finalize() called while ashmem still open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroid/os/MemoryFile;->close()V

    :cond_0
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/MemoryFile$MemoryInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/MemoryFile$MemoryOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryOutputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public isPurgingAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    return v0
.end method

.method public length()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    return v0
.end method

.method public readBytes([BIII)I
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p3, :cond_0

    .line 2
    array-length v0, p1

    if-gt p3, v0, :cond_0

    if-ltz p4, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    if-gt p2, v0, :cond_0

    sub-int/2addr v0, p2

    if-gt p4, v0, :cond_0

    .line 3
    iget-object v1, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    iget v2, p0, Landroid/os/MemoryFile;->mAddress:I

    iget-boolean v7, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v7}, Landroid/os/MemoryFile;->native_read(Ljava/io/FileDescriptor;I[BIIIZ)I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Can\'t read from deactivated memory file."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeBytes([BIII)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    .line 2
    array-length v0, p1

    if-gt p2, v0, :cond_0

    if-ltz p4, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p4, v0, :cond_0

    if-ltz p3, :cond_0

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    if-gt p3, v0, :cond_0

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_0

    .line 3
    iget-object v1, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    iget v2, p0, Landroid/os/MemoryFile;->mAddress:I

    iget-boolean v7, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v7}, Landroid/os/MemoryFile;->native_write(Ljava/io/FileDescriptor;I[BIIIZ)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Can\'t write to deactivated memory file."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
