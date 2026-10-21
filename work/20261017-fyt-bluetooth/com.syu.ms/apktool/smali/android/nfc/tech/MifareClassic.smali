.class public final Landroid/nfc/tech/MifareClassic;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "SourceFile"


# static fields
.field public static final BLOCK_SIZE:I = 0x10

.field public static final KEY_DEFAULT:[B

.field public static final KEY_MIFARE_APPLICATION_DIRECTORY:[B

.field public static final KEY_NFC_FORUM:[B

.field private static final MAX_BLOCK_COUNT:I = 0x100

.field private static final MAX_SECTOR_COUNT:I = 0x28

.field public static final SIZE_1K:I = 0x400

.field public static final SIZE_2K:I = 0x800

.field public static final SIZE_4K:I = 0x1000

.field public static final SIZE_MINI:I = 0x140

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_CLASSIC:I = 0x0

.field public static final TYPE_PLUS:I = 0x1

.field public static final TYPE_PRO:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mIsEmulated:Z

.field private mSize:I

.field private mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    new-array v1, v0, [B

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Landroid/nfc/tech/MifareClassic;->KEY_MIFARE_APPLICATION_DIRECTORY:[B

    new-array v0, v0, [B

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_NFC_FORUM:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x60t
        -0x5ft
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
    .end array-data
.end method

.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 7

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 2
    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    .line 4
    invoke-virtual {p1}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v2

    const/16 v3, 0x400

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8

    const/16 v5, 0x18

    const/16 v6, 0x1000

    if-eq v2, v5, :cond_7

    const/16 v5, 0x28

    if-eq v2, v5, :cond_6

    const/16 v5, 0x38

    if-eq v2, v5, :cond_5

    const/16 v5, 0x88

    if-eq v2, v5, :cond_4

    const/16 v5, 0x98

    if-eq v2, v5, :cond_3

    const/16 v5, 0xb8

    if-eq v2, v5, :cond_3

    if-eq v2, v0, :cond_8

    const/16 v0, 0x9

    if-eq v2, v0, :cond_2

    const/16 v0, 0x10

    if-eq v2, v0, :cond_1

    const/16 v0, 0x11

    if-ne v2, v0, :cond_0

    .line 5
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 6
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag incorrectly enumerated as MIFARE Classic, SAK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    const/16 p1, 0x800

    .line 9
    iput p1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    .line 10
    :cond_2
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    const/16 p1, 0x140

    .line 11
    iput p1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    .line 12
    iput p1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 13
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    .line 14
    :cond_4
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 15
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    .line 16
    :cond_5
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 17
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 18
    iput-boolean v4, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    goto :goto_0

    .line 19
    :cond_6
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 20
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 21
    iput-boolean v4, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    goto :goto_0

    .line 22
    :cond_7
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 23
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    .line 24
    :cond_8
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 25
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    :goto_0
    return-void
.end method

.method private authenticate(I[BZ)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    .line 2
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/16 p3, 0x60

    aput-byte p3, v0, v1

    goto :goto_0

    :cond_0
    const/16 p3, 0x61

    aput-byte p3, v0, v1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result p1

    int-to-byte p1, p1

    const/4 p3, 0x1

    aput-byte p1, v0, p3

    .line 4
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getTag()Landroid/nfc/Tag;

    move-result-object p1

    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object p1

    .line 5
    array-length v2, p1

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    const/4 v4, 0x2

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x6

    .line 6
    invoke-static {p2, v1, v0, p1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    move-result-object p1
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return p3

    :catch_0
    :cond_1
    return v1

    :catch_1
    move-exception p1

    .line 8
    throw p1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Landroid/nfc/tech/MifareClassic;

    invoke-direct {v0, p0}, Landroid/nfc/tech/MifareClassic;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method private static validateBlock(I)V
    .locals 3

    if-ltz p0, :cond_0

    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "block out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateSector(I)V
    .locals 3

    if-ltz p0, :cond_0

    const/16 v0, 0x28

    if-ge p0, v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sector out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateValueOperand(I)V
    .locals 1

    if-ltz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "value operand negative"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public authenticateSectorWithKeyA(I[B)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result p1

    return p1
.end method

.method public authenticateSectorWithKeyB(I[B)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result p1

    return p1
.end method

.method public blockToSector(I)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 2
    div-int/lit8 p1, p1, 0x4

    return p1

    :cond_0
    sub-int/2addr p1, v0

    .line 3
    div-int/lit8 p1, p1, 0x10

    add-int/lit8 p1, p1, 0x20

    return p1
.end method

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

.method public decrement(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 2
    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    .line 3
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    const/4 v0, 0x6

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, -0x40

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    return-void
.end method

.method public getBlockCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getBlockCountInSector(I)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    const/16 p1, 0x10

    return p1
.end method

.method public getMaxTransceiveLength()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public getSectorCount()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    const/16 v1, 0x140

    if-eq v0, v1, :cond_3

    const/16 v1, 0x400

    if-eq v0, v1, :cond_2

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x28

    return v0

    :cond_1
    const/16 v0, 0x20

    return v0

    :cond_2
    const/16 v0, 0x10

    return v0

    :cond_3
    const/4 v0, 0x5

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->getTimeout(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    return v0
.end method

.method public increment(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 2
    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    .line 3
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    const/4 v0, 0x6

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, -0x3f

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    return-void
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    return v0
.end method

.method public readBlock(I)[B
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 2
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, 0x30

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 3
    invoke-virtual {p0, v0, v2}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reconnect()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public restore(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 2
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, -0x3e

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 3
    invoke-virtual {p0, v0, v2}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    return-void
.end method

.method public sectorToBlock(I)I
    .locals 1

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_0
    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x10

    add-int/lit16 p1, p1, 0x80

    return p1
.end method

.method public setTimeout(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The supplied timeout is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "NFC"

    const-string v1, "NFC service dead"

    .line 3
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
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

.method public transfer(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 2
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, -0x50

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 3
    invoke-virtual {p0, v0, v2}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    return-void
.end method

.method public writeBlock(I[B)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 2
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    .line 3
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 4
    array-length v0, p2

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/16 v2, -0x60

    const/4 v3, 0x0

    .line 5
    aput-byte v2, v0, v3

    const/4 v2, 0x1

    int-to-byte p1, p1

    .line 6
    aput-byte p1, v0, v2

    .line 7
    array-length p1, p2

    invoke-static {p2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "must write 16-bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
