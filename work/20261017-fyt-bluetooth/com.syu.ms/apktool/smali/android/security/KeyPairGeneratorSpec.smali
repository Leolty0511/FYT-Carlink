.class public final Landroid/security/KeyPairGeneratorSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyPairGeneratorSpec$Builder;
    }
.end annotation


# static fields
.field private static final DSA_DEFAULT_KEY_SIZE:I = 0x400

.field private static final DSA_MAX_KEY_SIZE:I = 0x2000

.field private static final DSA_MIN_KEY_SIZE:I = 0x200

.field private static final EC_DEFAULT_KEY_SIZE:I = 0x100

.field private static final EC_MAX_KEY_SIZE:I = 0x209

.field private static final EC_MIN_KEY_SIZE:I = 0xc0

.field private static final RSA_DEFAULT_KEY_SIZE:I = 0x800

.field private static final RSA_MAX_KEY_SIZE:I = 0x2000

.field private static final RSA_MIN_KEY_SIZE:I = 0x200


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEndDate:Ljava/util/Date;

.field private final mFlags:I

.field private final mKeySize:I

.field private final mKeyType:Ljava/lang/String;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mSerialNumber:Ljava/math/BigInteger;

.field private final mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mStartDate:Ljava/util/Date;

.field private final mSubjectDN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p6, :cond_5

    if-eqz p7, :cond_4

    if-eqz p8, :cond_3

    if-eqz p9, :cond_2

    .line 3
    invoke-virtual {p9, p8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p3}, Landroid/security/KeyStore;->getKeyTypeForAlgorithm(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne p4, v1, :cond_0

    .line 5
    invoke-static {v0}, Landroid/security/KeyPairGeneratorSpec;->getDefaultKeySizeForType(I)I

    move-result p4

    .line 6
    :cond_0
    invoke-static {v0, p4, p5}, Landroid/security/KeyPairGeneratorSpec;->checkCorrectParametersSpec(IILjava/security/spec/AlgorithmParameterSpec;)V

    .line 7
    invoke-static {v0, p4}, Landroid/security/KeyPairGeneratorSpec;->checkValidKeySize(II)V

    .line 8
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec;->mContext:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Landroid/security/KeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Landroid/security/KeyPairGeneratorSpec;->mKeyType:Ljava/lang/String;

    .line 11
    iput p4, p0, Landroid/security/KeyPairGeneratorSpec;->mKeySize:I

    .line 12
    iput-object p5, p0, Landroid/security/KeyPairGeneratorSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 13
    iput-object p6, p0, Landroid/security/KeyPairGeneratorSpec;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    .line 14
    iput-object p7, p0, Landroid/security/KeyPairGeneratorSpec;->mSerialNumber:Ljava/math/BigInteger;

    .line 15
    iput-object p8, p0, Landroid/security/KeyPairGeneratorSpec;->mStartDate:Ljava/util/Date;

    .line 16
    iput-object p9, p0, Landroid/security/KeyPairGeneratorSpec;->mEndDate:Ljava/util/Date;

    .line 17
    iput p10, p0, Landroid/security/KeyPairGeneratorSpec;->mFlags:I

    return-void

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endDate < startDate"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endDate == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "startDate == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "serialNumber == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "subjectDN == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keyStoreAlias must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkCorrectParametersSpec(IILjava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    const/16 v0, 0x74

    if-ne p0, v0, :cond_1

    if-eqz p2, :cond_1

    .line 1
    instance-of p0, p2, Ljava/security/spec/DSAParameterSpec;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DSA keys must have DSAParameterSpec specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_4

    if-eqz p2, :cond_4

    .line 3
    instance-of p0, p2, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz p0, :cond_3

    .line 4
    check-cast p2, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/4 p0, -0x1

    if-eq p1, p0, :cond_4

    .line 5
    invoke-virtual {p2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result p0

    if-ne p1, p0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RSA key size must match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA may only use RSAKeyGenParameterSpec"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method private static checkValidKeySize(II)V
    .locals 3

    const/16 v0, 0x2000

    const/16 v1, 0x200

    const/16 v2, 0x74

    if-ne p0, v2, :cond_1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DSA keys must be >= 512 and <= 8192"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v2, 0x198

    if-ne p0, v2, :cond_3

    const/16 p0, 0xc0

    if-lt p1, p0, :cond_2

    const/16 p0, 0x209

    if-gt p1, p0, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "EC keys must be >= 192 and <= 521"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 v2, 0x6

    if-ne p0, v2, :cond_5

    if-lt p1, v1, :cond_4

    if-gt p1, v0, :cond_4

    :goto_0
    return-void

    .line 3
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA keys must be >= 512 and <= 8192"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getDefaultKeySizeForType(I)I
    .locals 3

    const/16 v0, 0x74

    if-ne p0, v0, :cond_0

    const/16 p0, 0x400

    return p0

    :cond_0
    const/16 v0, 0x198

    if-ne p0, v0, :cond_1

    const/16 p0, 0x100

    return p0

    :cond_1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    const/16 p0, 0x800

    return p0

    .line 1
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/security/KeyPairGeneratorSpec;->mFlags:I

    return v0
.end method

.method public getKeySize()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeySize:I

    return v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeyType:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSubjectDN()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public isEncryptionRequired()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/security/KeyPairGeneratorSpec;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
