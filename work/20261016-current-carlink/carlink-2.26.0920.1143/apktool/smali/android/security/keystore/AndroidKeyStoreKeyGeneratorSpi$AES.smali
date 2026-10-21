.class public Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$AES;
.super Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;-><init>(II)V

    return-void
.end method


# virtual methods
.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    .line 5
    .line 6
    const/16 p2, 0x80

    .line 7
    .line 8
    if-eq p1, p2, :cond_1

    .line 9
    .line 10
    const/16 p2, 0xc0

    .line 11
    .line 12
    if-eq p1, p2, :cond_1

    .line 13
    .line 14
    const/16 p2, 0x100

    .line 15
    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "Unsupported key size: "

    .line 24
    .line 25
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    .line 29
    .line 30
    const-string v1, ". Supported: 128, 192, 256."

    .line 31
    .line 32
    invoke-static {p2, v0, v1}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    :goto_0
    return-void
.end method
