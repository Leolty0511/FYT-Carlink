.class public final Landroid/nfc/tech/MifareUltralight;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "SourceFile"


# static fields
.field public static final EXTRA_IS_UL_C:Ljava/lang/String; = "isulc"

.field private static final MAX_PAGE_COUNT:I = 0x100

.field private static final NXP_MANUFACTURER_ID:I = 0x4

.field public static final PAGE_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_ULTRALIGHT:I = 0x1

.field public static final TYPE_ULTRALIGHT_C:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, -0x1

    .line 11
    iput v2, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/nfc/tech/NfcA;->getSak()S

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    aget-byte v1, v1, v2

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string/jumbo v0, "isulc"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    const/4 p1, 0x2

    .line 43
    iput p1, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p1, 0x1

    .line 47
    iput p1, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareUltralight;
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Landroid/nfc/tech/MifareUltralight;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/nfc/tech/MifareUltralight;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    return-object v1
.end method

.method private static validatePageIndex(I)V
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x100

    .line 4
    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 9
    .line 10
    const-string/jumbo v1, "page out of bounds: "

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getMaxTransceiveLength()I
    .locals 1

    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
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
    const/16 v1, 0x9

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->getTimeout(I)I

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

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

    return v0
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public readPages(I)[B
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareUltralight;->validatePageIndex(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    const/16 v1, 0x30

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-byte v1, v0, v2

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    int-to-byte p1, p1

    .line 17
    aput-byte p1, v0, v1

    .line 18
    .line 19
    invoke-virtual {p0, v0, v2}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public bridge synthetic reconnect()V
    .locals 0

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public setTimeout(I)V
    .locals 2

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
    const/16 v1, 0x9

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v0, "The supplied timeout is not valid"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    const-string v0, "NFC"

    .line 26
    .line 27
    const-string v1, "NFC service dead"

    .line 28
    .line 29
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public transceive([B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    move-result-object p1

    return-object p1
.end method

.method public writePage(I[B)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareUltralight;->validatePageIndex(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    .line 5
    .line 6
    .line 7
    array-length v0, p2

    .line 8
    const/4 v1, 0x2

    .line 9
    add-int/2addr v0, v1

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    const/16 v2, -0x5e

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-byte v2, v0, v3

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    int-to-byte p1, p1

    .line 19
    aput-byte p1, v0, v2

    .line 20
    .line 21
    array-length p1, p2

    .line 22
    invoke-static {p2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    .line 26
    .line 27
    .line 28
    return-void
.end method
