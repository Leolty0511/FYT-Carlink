.class public Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;
.super Landroid/security/keystore/AndroidKeyStorePublicKey;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;


# instance fields
.field private final mModulus:Ljava/math/BigInteger;

.field private final mPublicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/security/interfaces/RSAPublicKey;)V
    .locals 6

    .line 4
    invoke-interface {p3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-interface {p3}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {p3}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;-><init>(Ljava/lang/String;I[BLjava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string p1, "X.509"

    .line 5
    invoke-interface {p3}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported key export format: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-interface {p3}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;I[BLjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const-string v0, "RSA"

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/security/keystore/AndroidKeyStorePublicKey;-><init>(Ljava/lang/String;ILjava/lang/String;[B)V

    .line 2
    iput-object p4, p0, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->mModulus:Ljava/math/BigInteger;

    .line 3
    iput-object p5, p0, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->mPublicExponent:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->mModulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->mPublicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
