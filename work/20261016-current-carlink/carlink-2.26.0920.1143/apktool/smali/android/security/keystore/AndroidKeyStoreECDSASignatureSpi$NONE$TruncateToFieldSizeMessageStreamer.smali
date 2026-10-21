.class Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TruncateToFieldSizeMessageStreamer"
.end annotation


# instance fields
.field private mConsumedInputSizeBytes:J

.field private final mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private final mGroupSizeBits:I

.field private final mInputBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    .line 4
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 5
    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mGroupSizeBits:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;ILandroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;I)V

    return-void
.end method


# virtual methods
.method public doFinal([BII[B[B)[B
    .locals 6

    .line 1
    if-lez p3, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    .line 4
    .line 5
    int-to-long v2, p3

    .line 6
    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    .line 8
    .line 9
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object p1, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    array-length p1, v1

    .line 29
    iget p2, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mGroupSizeBits:I

    .line 30
    .line 31
    add-int/lit8 p2, p2, 0x7

    .line 32
    .line 33
    div-int/lit8 p2, p2, 0x8

    .line 34
    .line 35
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    move-object v4, p4

    .line 40
    move-object v5, p5

    .line 41
    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public getConsumedInputSizeBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    return-wide v0
.end method

.method public getProducedOutputSizeBytes()J
    .locals 2

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getProducedOutputSizeBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public update([BII)[B
    .locals 2

    .line 1
    if-lez p3, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 6
    .line 7
    .line 8
    iget-wide p1, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    .line 9
    .line 10
    int-to-long v0, p3

    .line 11
    add-long/2addr p1, v0

    .line 12
    iput-wide p1, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    .line 13
    .line 14
    :cond_0
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 15
    .line 16
    return-object p1
.end method
