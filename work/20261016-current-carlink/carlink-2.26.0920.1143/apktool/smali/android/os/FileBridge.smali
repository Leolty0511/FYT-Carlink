.class public Landroid/os/FileBridge;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileBridge$FileBridgeOutputStream;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CMD_CLOSE:I = 0x3

.field private static final CMD_FSYNC:I = 0x2

.field private static final CMD_WRITE:I = 0x1

.field private static final MSG_LENGTH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "FileBridge"


# instance fields
.field private final mClient:Ljava/io/FileDescriptor;

.field private volatile mClosed:Z

.field private final mServer:Ljava/io/FileDescriptor;

.field private mTarget:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/FileDescriptor;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    .line 10
    .line 11
    new-instance v1, Ljava/io/FileDescriptor;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    .line 17
    .line 18
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    .line 19
    .line 20
    sget v3, Landroid/system/OsConstants;->SOCK_STREAM:I

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v2, v3, v4, v0, v1}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 28
    .line 29
    const-string v1, "Failed to create bridge"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method


# virtual methods
.method public forceClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    .line 2
    .line 3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    .line 7
    .line 8
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    .line 12
    .line 13
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    .line 18
    .line 19
    return-void
.end method

.method public getClientSocket()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    return v0
.end method

.method public run()V
    .locals 7

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v2, v1, v4, v3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ne v2, v3, :cond_4

    .line 15
    .line 16
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 17
    .line 18
    invoke-static {v1, v4, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v6, 0x1

    .line 23
    if-ne v5, v6, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x4

    .line 26
    invoke-static {v1, v3, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    :goto_1
    if-lez v2, :cond_0

    .line 31
    .line 32
    iget-object v3, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    .line 33
    .line 34
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-static {v3, v1, v4, v5}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v5, -0x1

    .line 43
    if-eq v3, v5, :cond_1

    .line 44
    .line 45
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    .line 46
    .line 47
    invoke-static {v5, v1, v4, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 48
    .line 49
    .line 50
    sub-int/2addr v2, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "Unexpected EOF; still expected "

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " bytes"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_2
    const/4 v2, 0x2

    .line 81
    if-ne v5, v2, :cond_3

    .line 82
    .line 83
    iget-object v2, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    .line 84
    .line 85
    invoke-static {v2}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    .line 89
    .line 90
    invoke-static {v2, v1, v4, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    const/4 v2, 0x3

    .line 95
    if-ne v5, v2, :cond_0

    .line 96
    .line 97
    iget-object v0, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    .line 98
    .line 99
    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    .line 103
    .line 104
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 105
    .line 106
    .line 107
    iput-boolean v6, p0, Landroid/os/FileBridge;->mClosed:Z

    .line 108
    .line 109
    iget-object v0, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    .line 110
    .line 111
    invoke-static {v0, v1, v4, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    goto :goto_5

    .line 120
    :catch_0
    move-exception v0

    .line 121
    goto :goto_3

    .line 122
    :catch_1
    move-exception v0

    .line 123
    :goto_3
    :try_start_1
    const-string v1, "FileBridge"

    .line 124
    .line 125
    const-string v2, "Failed during bridge"

    .line 126
    .line 127
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :goto_4
    return-void

    .line 132
    :goto_5
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    .line 133
    .line 134
    .line 135
    throw v0
.end method

.method public setTargetFile(Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    return-void
.end method
