.class abstract Landroid/nfc/tech/BasicTagTechnology;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/nfc/tech/TagTechnology;


# static fields
.field private static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field mIsConnected:Z

.field mSelectedTechnology:I

.field final mTag:Landroid/nfc/Tag;


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 5
    .line 6
    iput p2, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public checkConnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "Call connect() first!"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public close()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Landroid/nfc/INfcTag;->resetTimeouts()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->reconnect(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception v1

    .line 30
    :try_start_1
    const-string v2, "NFC"

    .line 31
    .line 32
    const-string v3, "NFC service dead"

    .line 33
    .line 34
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    :goto_0
    iput-boolean v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 38
    .line 39
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :goto_1
    iput-boolean v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 46
    .line 47
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    .line 50
    .line 51
    .line 52
    throw v1
.end method

.method public connect()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/nfc/Tag;->getServiceHandle()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Landroid/nfc/INfcTag;->connect(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 22
    .line 23
    iget v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/nfc/Tag;->setConnectedTechnology(I)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const/16 v1, -0x15

    .line 33
    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 37
    .line 38
    const-string v1, "Connecting to this technology is not supported by the NFC adapter."

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string v1, "NFC"

    .line 52
    .line 53
    const-string v2, "NFC service dead"

    .line 54
    .line 55
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    new-instance v0, Ljava/io/IOException;

    .line 59
    .line 60
    const-string v1, "NFC service died"

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public getMaxTransceiveLengthInternal()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->getMaxTransceiveLength(I)I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const-string v1, "NFC"

    .line 16
    .line 17
    const-string v2, "NFC service dead"

    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public getTag()Landroid/nfc/Tag;
    .locals 1

    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    return-object v0
.end method

.method public isConnected()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-interface {v0, v2}, Landroid/nfc/INfcTag;->isPresent(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const-string v2, "NFC"

    .line 26
    .line 27
    const-string v3, "NFC service dead"

    .line 28
    .line 29
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    return v1
.end method

.method public reconnect()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->reconnect(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iput-boolean v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 26
    .line 27
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/io/IOException;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    iput-boolean v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 40
    .line 41
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    .line 44
    .line 45
    .line 46
    const-string v0, "NFC"

    .line 47
    .line 48
    const-string v2, "NFC service dead"

    .line 49
    .line 50
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    new-instance v0, Ljava/io/IOException;

    .line 54
    .line 55
    const-string v1, "NFC service died"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v1, "Technology not connected yet"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method public transceive([BZ)[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/nfc/Tag;->getServiceHandle()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcTag;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/nfc/TransceiveResult;->getResponseOrThrow()[B

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 28
    .line 29
    const-string/jumbo p2, "transceive failed"

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    const-string p2, "NFC"

    .line 38
    .line 39
    const-string v0, "NFC service dead"

    .line 40
    .line 41
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/io/IOException;

    .line 45
    .line 46
    const-string p2, "NFC service died"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method
