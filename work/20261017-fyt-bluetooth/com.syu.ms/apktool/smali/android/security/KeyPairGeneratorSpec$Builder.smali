.class public final Landroid/security/KeyPairGeneratorSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyPairGeneratorSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEndDate:Ljava/util/Date;

.field private mFlags:I

.field private mKeySize:I

.field private mKeyType:Ljava/lang/String;

.field private mKeystoreAlias:Ljava/lang/String;

.field private mSerialNumber:Ljava/math/BigInteger;

.field private mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private mStartDate:Ljava/util/Date;

.field private mSubjectDN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RSA"

    .line 2
    iput-object v0, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeyType:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeySize:I

    const-string v0, "context == null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Landroid/security/KeyPairGeneratorSpec;
    .locals 12

    .line 1
    new-instance v11, Landroid/security/KeyPairGeneratorSpec;

    iget-object v1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    iget-object v3, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeyType:Ljava/lang/String;

    iget v4, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeySize:I

    iget-object v5, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v6, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    iget-object v7, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSerialNumber:Ljava/math/BigInteger;

    iget-object v8, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mStartDate:Ljava/util/Date;

    iget-object v9, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mEndDate:Ljava/util/Date;

    iget v10, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mFlags:I

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/security/KeyPairGeneratorSpec;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;I)V

    return-object v11
.end method

.method public setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 1

    const-string/jumbo v0, "spec == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object p0
.end method

.method public setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 1

    const-string v0, "alias == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    return-object p0
.end method

.method public setEncryptionRequired()Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 1

    .line 1
    iget v0, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mFlags:I

    return-object p0
.end method

.method public setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 1

    const-string v0, "endDate == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mEndDate:Ljava/util/Date;

    return-object p0
.end method

.method public setKeySize(I)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeySize:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "keySize < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyType(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 3

    const-string v0, "keyType == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/security/KeyStore;->getKeyTypeForAlgorithm(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeyType:Ljava/lang/String;

    return-object p0

    .line 4
    :catch_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 1

    const-string/jumbo v0, "serialNumber == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSerialNumber:Ljava/math/BigInteger;

    return-object p0
.end method

.method public setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 1

    const-string/jumbo v0, "startDate == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mStartDate:Ljava/util/Date;

    return-object p0
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 1

    const-string/jumbo v0, "subject == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    return-object p0
.end method
