.class public final Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;
.super Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final engineGetOutputSize(I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->getTagLengthBits()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x7

    .line 6
    .line 7
    div-int/lit8 v0, v0, 0x8

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getConsumedInputSizeBytes()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getProducedOutputSizeBytes()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    sub-long/2addr v1, v3

    .line 24
    int-to-long v3, p1

    .line 25
    add-long/2addr v1, v3

    .line 26
    int-to-long v3, v0

    .line 27
    add-long/2addr v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getConsumedInputSizeBytes()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getProducedOutputSizeBytes()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    sub-long/2addr v1, v3

    .line 38
    int-to-long v3, p1

    .line 39
    add-long/2addr v1, v3

    .line 40
    int-to-long v3, v0

    .line 41
    sub-long/2addr v1, v3

    .line 42
    :goto_0
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    cmp-long p1, v1, v3

    .line 45
    .line 46
    if-gez p1, :cond_1

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    return p1

    .line 50
    :cond_1
    const-wide/32 v3, 0x7fffffff

    .line 51
    .line 52
    .line 53
    cmp-long p1, v1, v3

    .line 54
    .line 55
    if-lez p1, :cond_2

    .line 56
    .line 57
    const p1, 0x7fffffff

    .line 58
    .line 59
    .line 60
    return p1

    .line 61
    :cond_2
    long-to-int p1, v1

    .line 62
    return p1
.end method

.method public bridge synthetic finalize()V
    .locals 0

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->finalize()V

    return-void
.end method
