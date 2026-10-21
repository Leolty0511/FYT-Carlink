.class public Landroid/drm/DrmOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmOutputStream"


# instance fields
.field private final mClient:Landroid/drm/DrmManagerClient;

.field private final mFile:Ljava/io/RandomAccessFile;

.field private mSessionId:I


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 3
    iput-object p1, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    .line 4
    iput-object p2, p0, Landroid/drm/DrmOutputStream;->mFile:Ljava/io/RandomAccessFile;

    .line 5
    invoke-virtual {p1, p3}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/net/UnknownServiceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to open DRM session for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "DrmOutputStream"

    const-string v1, "Closing stream without finishing"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public finish()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    iget v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Landroid/drm/DrmOutputStream;->mFile:Ljava/io/RandomAccessFile;

    iget v2, v0, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    iget-object v1, p0, Landroid/drm/DrmOutputStream;->mFile:Ljava/io/RandomAccessFile;

    iget-object v0, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected DRM status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 5
    :goto_0
    iget-object p2, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    iget p3, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    invoke-virtual {p2, p3, p1}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object p1

    .line 6
    iget p2, p1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 7
    iget-object p2, p0, Landroid/drm/DrmOutputStream;->mFile:Ljava/io/RandomAccessFile;

    iget-object p1, p1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    invoke-virtual {p2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void

    .line 8
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected DRM status: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
