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
.field private static TAG:Ljava/lang/String; = "MemoryFile"


# instance fields
.field private mAllowPurging:Z

.field private mMapping:Ljava/nio/ByteBuffer;

.field private mSharedMemory:Landroid/os/SharedMemory;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 6
    .line 7
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-static {p1}, Landroid/app/backup/a;->t(Landroid/system/ErrnoException;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public static synthetic access$200(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;
    .locals 0

    iget-object p0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    return-object p0
.end method

.method private beginAccess()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/MemoryFile;->checkActive()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v0, v1}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 23
    .line 24
    const-string v1, "MemoryFile has been purged"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private checkActive()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 7
    .line 8
    const-string v1, "MemoryFile has been deactivated"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private endAccess()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static getSize(Ljava/io/FileDescriptor;)I
    .locals 0

    invoke-static {p0}, Landroid/os/MemoryFile;->native_get_size(Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method private static native native_get_size(Ljava/io/FileDescriptor;)I
.end method

.method private static native native_pin(Ljava/io/FileDescriptor;Z)Z
.end method


# virtual methods
.method public declared-synchronized allowPurging(Z)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-static {v1, v2}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)Z

    .line 18
    .line 19
    .line 20
    iput-boolean p1, p0, Landroid/os/MemoryFile;->mAllowPurging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    :cond_1
    monitor-exit p0

    .line 23
    return v0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0

    .line 26
    throw p1
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/MemoryFile;->deactivate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public deactivate()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Landroid/os/MemoryFile$MemoryInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Landroid/os/MemoryFile$MemoryOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryOutputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public isPurgingAllowed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    move-result v0

    return v0
.end method

.method public readBytes([BIII)I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/MemoryFile;->beginAccess()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    invoke-virtual {p2, p1, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroid/os/MemoryFile;->endAccess()V

    .line 15
    .line 16
    .line 17
    return p4

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    invoke-direct {p0}, Landroid/os/MemoryFile;->endAccess()V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public writeBytes([BIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/MemoryFile;->beginAccess()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    .line 8
    .line 9
    iget-object p3, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    invoke-virtual {p3, p1, p2, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroid/os/MemoryFile;->endAccess()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    invoke-direct {p0}, Landroid/os/MemoryFile;->endAccess()V

    .line 20
    .line 21
    .line 22
    throw p1
.end method
