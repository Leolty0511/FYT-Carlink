.class public Landroid/content/pm/ContainerEncryptionParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ContainerEncryptionParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENC_PARAMS_IV_PARAMETERS:I = 0x1

.field private static final MAC_PARAMS_NONE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ContainerEncryptionParams"

.field private static final TO_STRING_PREFIX:Ljava/lang/String; = "ContainerEncryptionParams{"


# instance fields
.field private final mAuthenticatedDataStart:J

.field private final mDataEnd:J

.field private final mEncryptedDataStart:J

.field private final mEncryptionAlgorithm:Ljava/lang/String;

.field private final mEncryptionKey:Ljavax/crypto/SecretKey;

.field private final mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

.field private final mMacAlgorithm:Ljava/lang/String;

.field private final mMacKey:Ljavax/crypto/SecretKey;

.field private final mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mMacTag:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/pm/ContainerEncryptionParams$1;

    invoke-direct {v0}, Landroid/content/pm/ContainerEncryptionParams$1;-><init>()V

    sput-object v0, Landroid/content/pm/ContainerEncryptionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljavax/crypto/SecretKey;

    iput-object v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljavax/crypto/SecretKey;

    iput-object v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    const-string p1, "Unknown parameter type "

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 35
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    if-ne v3, v4, :cond_0

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    const-string p1, "encryptionKey == null"

    .line 37
    invoke-static {v2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ContainerEncryptionParams$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;)V
    .locals 14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2
    invoke-direct/range {v0 .. v13}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "encryptionSpec == null"

    .line 5
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "encryptionKey == null"

    .line 6
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "macKey == null"

    .line 8
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    :cond_0
    instance-of v0, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_1

    .line 10
    iput-object p1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    .line 11
    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    iput-object p2, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    .line 12
    iput-object p3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 13
    iput-object p4, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 15
    iput-object p6, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    .line 16
    iput-object p7, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    .line 17
    iput-wide p8, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    .line 18
    iput-wide p10, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    .line 19
    iput-wide p12, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    return-void

    .line 20
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Unknown parameter spec class; must be IvParameters"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "algorithm == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eq v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    if-eq p0, p1, :cond_3

    return v2

    .line 4
    :cond_1
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroid/content/pm/ContainerEncryptionParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Landroid/content/pm/ContainerEncryptionParams;

    .line 3
    iget-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    iget-wide v5, p1, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    iget-wide v5, p1, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    iget-wide v5, p1, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    iget-object v3, p1, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-static {v1, v3}, Landroid/content/pm/ContainerEncryptionParams;->isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    iget-object v3, p1, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-static {v1, v3}, Landroid/content/pm/ContainerEncryptionParams;->isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    iget-object v3, p1, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    iget-object v3, p1, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object p1, p1, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eq v1, p1, :cond_5

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v2
.end method

.method public getAuthenticatedDataStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    return-wide v0
.end method

.method public getDataEnd()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    return-wide v0
.end method

.method public getEncryptedDataStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    return-wide v0
.end method

.method public getEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getEncryptionSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method

.method public getMacAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getMacKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getMacSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getMacTag()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x3

    .line 2
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 7
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    const-wide/16 v4, 0x17

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    .line 8
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    const-wide/16 v4, 0x1d

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    .line 9
    iget-wide v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContainerEncryptionParams{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mEncryptionAlgorithm=\""

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\","

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mEncryptionSpec="

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mEncryptionKey="

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mMacAlgorithm=\""

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v2, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMacSpec="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMacKey="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mAuthenticatedDataStart="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-wide v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mEncryptedDataStart="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-wide v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mDataEnd="

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-wide v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 5
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    new-array p2, p2, [B

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8
    iget-object p2, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 9
    iget-object p2, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 10
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
