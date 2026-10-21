.class public final Landroid/nfc/tech/NfcV;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "SourceFile"


# static fields
.field public static final EXTRA_DSFID:Ljava/lang/String; = "dsfid"

.field public static final EXTRA_RESP_FLAGS:Ljava/lang/String; = "respflags"


# instance fields
.field private mDsfId:B

.field private mRespFlags:B


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "respflags"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Landroid/nfc/tech/NfcV;->mRespFlags:B

    const-string v0, "dsfid"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result p1

    iput-byte p1, p0, Landroid/nfc/tech/NfcV;->mDsfId:B

    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcV;
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Landroid/nfc/tech/NfcV;

    invoke-direct {v0, p0}, Landroid/nfc/tech/NfcV;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getDsfId()B
    .locals 1

    .line 1
    iget-byte v0, p0, Landroid/nfc/tech/NfcV;->mDsfId:B

    return v0
.end method

.method public getMaxTransceiveLength()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public getResponseFlags()B
    .locals 1

    .line 1
    iget-byte v0, p0, Landroid/nfc/tech/NfcV;->mRespFlags:B

    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic reconnect()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public transceive([B)[B
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    move-result-object p1

    return-object p1
.end method
