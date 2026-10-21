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

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    .line 8
    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v1, Landroid/nfc/tech/MifareClassic;->KEY_MIFARE_APPLICATION_DIRECTORY:[B

    .line 15
    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    fill-array-data v0, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_NFC_FORUM:[B

    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    nop

    .line 33
    :array_1
    .array-data 1
        -0x60t
        -0x5ft
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    nop

    .line 41
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

    .line 1
    const/16 v0, 0x8

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
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/nfc/tech/NfcA;->getSak()S

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x400

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-eq v2, v4, :cond_8

    .line 21
    .line 22
    const/16 v5, 0x18

    .line 23
    .line 24
    const/16 v6, 0x1000

    .line 25
    .line 26
    if-eq v2, v5, :cond_7

    .line 27
    .line 28
    const/16 v5, 0x28

    .line 29
    .line 30
    if-eq v2, v5, :cond_6

    .line 31
    .line 32
    const/16 v5, 0x38

    .line 33
    .line 34
    if-eq v2, v5, :cond_5

    .line 35
    .line 36
    const/16 v5, 0x88

    .line 37
    .line 38
    if-eq v2, v5, :cond_4

    .line 39
    .line 40
    const/16 v5, 0x98

    .line 41
    .line 42
    if-eq v2, v5, :cond_3

    .line 43
    .line 44
    const/16 v5, 0xb8

    .line 45
    .line 46
    if-eq v2, v5, :cond_3

    .line 47
    .line 48
    if-eq v2, v0, :cond_8

    .line 49
    .line 50
    const/16 v0, 0x9

    .line 51
    .line 52
    if-eq v2, v0, :cond_2

    .line 53
    .line 54
    const/16 v0, 0x10

    .line 55
    .line 56
    if-eq v2, v0, :cond_1

    .line 57
    .line 58
    const/16 v0, 0x11

    .line 59
    .line 60
    if-ne v2, v0, :cond_0

    .line 61
    .line 62
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 63
    .line 64
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "Tag incorrectly enumerated as MIFARE Classic, SAK = "

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/nfc/tech/NfcA;->getSak()S

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_1
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 92
    .line 93
    const/16 p1, 0x800

    .line 94
    .line 95
    iput p1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 99
    .line 100
    const/16 p1, 0x140

    .line 101
    .line 102
    iput p1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    const/4 p1, 0x2

    .line 106
    iput p1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 107
    .line 108
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 112
    .line 113
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 117
    .line 118
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 119
    .line 120
    iput-boolean v4, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_6
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 124
    .line 125
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 126
    .line 127
    iput-boolean v4, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 131
    .line 132
    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_8
    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 136
    .line 137
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 138
    .line 139
    :goto_0
    return-void
.end method

.method private authenticate(I[BZ)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0xc

    .line 8
    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    const/16 p3, 0x60

    .line 15
    .line 16
    aput-byte p3, v0, v1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 p3, 0x61

    .line 20
    .line 21
    aput-byte p3, v0, v1

    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-byte p1, p1

    .line 28
    const/4 p3, 0x1

    .line 29
    aput-byte p1, v0, p3

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getTag()Landroid/nfc/Tag;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    array-length v2, p1

    .line 40
    const/4 v3, 0x4

    .line 41
    sub-int/2addr v2, v3

    .line 42
    const/4 v4, 0x2

    .line 43
    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x6

    .line 47
    invoke-static {p2, v1, v0, p1, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    return p3

    .line 57
    :catch_0
    :cond_1
    return v1

    .line 58
    :catch_1
    move-exception p1

    .line 59
    throw p1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;
    .locals 2

    .line 1
    const/16 v0, 0x8

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
    new-instance v0, Landroid/nfc/tech/MifareClassic;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/nfc/tech/MifareClassic;-><init>(Landroid/nfc/Tag;)V
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

.method private static validateBlock(I)V
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
    const-string v1, "block out of bounds: "

    .line 11
    .line 12
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method private static validateSector(I)V
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x28

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
    const-string/jumbo v1, "sector out of bounds: "

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

.method private static validateValueOperand(I)V
    .locals 1

    if-ltz p0, :cond_0

    return-void

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

    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result p1

    return p1
.end method

.method public authenticateSectorWithKeyB(I[B)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result p1

    return p1
.end method

.method public blockToSector(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x80

    .line 5
    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    div-int/lit8 p1, p1, 0x4

    .line 9
    .line 10
    return p1

    .line 11
    :cond_0
    const/16 v1, 0x10

    .line 12
    .line 13
    const/16 v2, 0x20

    .line 14
    .line 15
    invoke-static {p1, v0, v1, v2}, Landroid/app/m;->b(IIII)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

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

.method public decrement(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x6

    .line 11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    const/16 v1, -0x40

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    int-to-byte p1, p1

    .line 26
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public getBlockCount()I
    .locals 1

    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getBlockCountInSector(I)I
    .locals 1

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

    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public getSectorCount()I
    .locals 2

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

    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

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
    const/16 v1, 0x8

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

    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    return v0
.end method

.method public increment(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x6

    .line 11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    const/16 v1, -0x3f

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    int-to-byte p1, p1

    .line 26
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    iget-boolean v0, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    return v0
.end method

.method public readBlock(I)[B
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

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

.method public restore(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

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
    const/16 v1, -0x3e

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

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x8

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

.method public transfer(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

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
    const/16 v1, -0x50

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
    return-void
.end method

.method public writeBlock(I[B)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    .line 5
    .line 6
    .line 7
    array-length v0, p2

    .line 8
    const/16 v1, 0x10

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    array-length v0, p2

    .line 13
    const/4 v1, 0x2

    .line 14
    add-int/2addr v0, v1

    .line 15
    new-array v0, v0, [B

    .line 16
    .line 17
    const/16 v2, -0x60

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    aput-byte v2, v0, v3

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    int-to-byte p1, p1

    .line 24
    aput-byte p1, v0, v2

    .line 25
    .line 26
    array-length p1, p2

    .line 27
    invoke-static {p2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/BasicTagTechnology;->transceive([BZ)[B

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string/jumbo p2, "must write 16-bytes"

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method
