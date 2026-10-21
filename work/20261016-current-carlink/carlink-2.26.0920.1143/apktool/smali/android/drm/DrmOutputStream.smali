.class public Landroid/drm/DrmOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmOutputStream"


# instance fields
.field private final mClient:Landroid/drm/DrmManagerClientEx;

.field private final mFd:Ljava/io/FileDescriptor;

.field private final mPfd:Landroid/os/ParcelFileDescriptor;

.field private mSessionId:I


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClientEx;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 6
    .line 7
    iput-object p1, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClientEx;

    .line 8
    .line 9
    iput-object p2, p0, Landroid/drm/DrmOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    .line 16
    .line 17
    invoke-virtual {p1, p3}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/net/UnknownServiceException;

    .line 27
    .line 28
    const-string p2, "Failed to open DRM session for "

    .line 29
    .line 30
    invoke-static {p2, p3}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string v0, "DrmOutputStream"

    .line 7
    .line 8
    const-string v1, "Closing stream without finishing"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public finish()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClientEx;

    .line 2
    .line 3
    iget v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v1, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    .line 15
    .line 16
    iget v2, v0, Landroid/drm/DrmConvertedStatus;->offset:I

    .line 17
    .line 18
    int-to-long v2, v2

    .line 19
    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    .line 20
    .line 21
    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    invoke-static {v1}, Landroid/app/backup/a;->t(Landroid/system/ErrnoException;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    .line 30
    .line 31
    iget-object v0, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    .line 32
    .line 33
    array-length v2, v0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static {v1, v0, v3, v2}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 36
    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "Unexpected DRM status: "

    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v0, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v1
.end method

.method public write(I)V
    .locals 0

    .line 9
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 1
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-array v0, p3, [B

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object p1, v0

    .line 5
    :goto_0
    iget-object p2, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClientEx;

    iget p3, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    invoke-virtual {p2, p3, p1}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object p1

    .line 6
    iget p2, p1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 7
    iget-object p2, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    iget-object p1, p1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    array-length p3, p1

    invoke-static {p2, p1, v1, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    return-void

    .line 8
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected DRM status: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
