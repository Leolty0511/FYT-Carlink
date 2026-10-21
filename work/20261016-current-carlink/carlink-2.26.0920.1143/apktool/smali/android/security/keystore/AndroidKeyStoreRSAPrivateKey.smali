.class public Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;
.super Landroid/security/keystore/AndroidKeyStorePrivateKey;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/RSAKey;


# instance fields
.field private final mModulus:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/math/BigInteger;)V
    .locals 1

    .line 1
    const-string v0, "RSA"

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore/AndroidKeyStorePrivateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    return-object v0
.end method
