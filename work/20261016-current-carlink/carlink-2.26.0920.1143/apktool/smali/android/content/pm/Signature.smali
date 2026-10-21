.class public Landroid/content/pm/Signature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCertificateChain:[Ljava/security/cert/Certificate;

.field private mHashCode:I

.field private mHaveHashCode:Z

.field private final mSignature:[B

.field private mStringRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/Signature$1;

    invoke-direct {v0}, Landroid/content/pm/Signature$1;-><init>()V

    sput-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/Signature;->mSignature:[B

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/Signature$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/pm/Signature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 11
    array-length v0, p1

    .line 12
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    .line 13
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 14
    aget-byte v2, p1, v2

    invoke-static {v2}, Landroid/content/pm/Signature;->parseHexDigit(I)I

    move-result v2

    add-int/lit8 v5, v4, 0x1

    .line 15
    aget-byte v4, p1, v4

    invoke-static {v4}, Landroid/content/pm/Signature;->parseHexDigit(I)I

    move-result v4

    add-int/lit8 v6, v3, 0x1

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v2, v4

    int-to-byte v2, v2

    .line 16
    aput-byte v2, v1, v3

    move v2, v5

    move v3, v6

    goto :goto_0

    .line 17
    :cond_0
    iput-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    return-void

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text size "

    const-string v2, " is not even"

    .line 19
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/content/pm/Signature;->mSignature:[B

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    return-void
.end method

.method public constructor <init>([Ljava/security/cert/Certificate;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 7
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 8
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/Certificate;

    iput-object p1, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    :cond_0
    return-void
.end method

.method public static areEffectiveMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 5

    .line 1
    const-string v0, "X.509"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, p0

    .line 8
    new-array v1, v1, [Landroid/content/pm/Signature;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    array-length v4, p0

    .line 13
    if-ge v3, v4, :cond_0

    .line 14
    .line 15
    aget-object v4, p0, v3

    .line 16
    .line 17
    invoke-static {v0, v4}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    aput-object v4, v1, v3

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    array-length p0, p1

    .line 27
    new-array p0, p0, [Landroid/content/pm/Signature;

    .line 28
    .line 29
    :goto_1
    array-length v3, p1

    .line 30
    if-ge v2, v3, :cond_1

    .line 31
    .line 32
    aget-object v3, p1, v2

    .line 33
    .line 34
    invoke-static {v0, v3}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    aput-object v3, p0, v2

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-static {v1, p0}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public static areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    if-ne v0, v1, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, p0}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public static bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/content/pm/Signature;->mSignature:[B

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 13
    .line 14
    new-instance v0, Landroid/content/pm/Signature;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Landroid/content/pm/Signature;-><init>([B)V

    .line 21
    .line 22
    .line 23
    iget-object p0, v0, Landroid/content/pm/Signature;->mSignature:[B

    .line 24
    .line 25
    array-length p0, p0

    .line 26
    iget-object v1, p1, Landroid/content/pm/Signature;->mSignature:[B

    .line 27
    .line 28
    array-length v1, v1

    .line 29
    sub-int/2addr p0, v1

    .line 30
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/4 v1, 0x2

    .line 35
    if-gt p0, v1, :cond_0

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    new-instance p0, Ljava/security/cert/CertificateException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Bounced cert length looks fishy; before "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Landroid/content/pm/Signature;->mSignature:[B

    .line 48
    .line 49
    array-length p1, p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, ", after "

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p1, v0, Landroid/content/pm/Signature;->mSignature:[B

    .line 59
    .line 60
    array-length p1, p1

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method private static final parseHexDigit(I)I
    .locals 3

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x39

    .line 6
    .line 7
    if-gt p0, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    return p0

    .line 11
    :cond_0
    const/16 v0, 0x61

    .line 12
    .line 13
    if-gt v0, p0, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x66

    .line 16
    .line 17
    if-gt p0, v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/16 v0, 0x41

    .line 21
    .line 22
    if-gt v0, p0, :cond_2

    .line 23
    .line 24
    const/16 v1, 0x46

    .line 25
    .line 26
    if-gt p0, v1, :cond_2

    .line 27
    .line 28
    :goto_0
    sub-int/2addr p0, v0

    .line 29
    add-int/lit8 p0, p0, 0xa

    .line 30
    .line 31
    return p0

    .line 32
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v1, "Invalid character "

    .line 35
    .line 36
    const-string v2, " in hex string"

    .line 37
    .line 38
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    check-cast p1, Landroid/content/pm/Signature;

    .line 5
    .line 6
    if-eq p0, p1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 9
    .line 10
    iget-object p1, p1, Landroid/content/pm/Signature;->mSignature:[B

    .line 11
    .line 12
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 13
    .line 14
    .line 15
    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    :catch_0
    :cond_1
    return v0
.end method

.method public getChainSignatures()[Landroid/content/pm/Signature;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-array v0, v2, [Landroid/content/pm/Signature;

    .line 8
    .line 9
    aput-object p0, v0, v1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    array-length v3, v0

    .line 13
    add-int/2addr v3, v2

    .line 14
    new-array v3, v3, [Landroid/content/pm/Signature;

    .line 15
    .line 16
    aput-object p0, v3, v1

    .line 17
    .line 18
    array-length v4, v0

    .line 19
    :goto_0
    if-ge v1, v4, :cond_1

    .line 20
    .line 21
    aget-object v5, v0, v1

    .line 22
    .line 23
    add-int/lit8 v6, v2, 0x1

    .line 24
    .line 25
    new-instance v7, Landroid/content/pm/Signature;

    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-direct {v7, v5}, Landroid/content/pm/Signature;-><init>([B)V

    .line 32
    .line 33
    .line 34
    aput-object v7, v3, v2

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    move v2, v6

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v3
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 3

    .line 1
    const-string v0, "X.509"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 8
    .line 9
    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    .line 18
    .line 19
    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    array-length v3, v0

    .line 8
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method public toChars()[C
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Landroid/content/pm/Signature;->toChars([C[I)[C

    move-result-object v0

    return-object v0
.end method

.method public toChars([C[I)[C
    .locals 8

    .line 2
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 3
    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    if-eqz p1, :cond_0

    .line 4
    array-length v3, p1

    if-le v2, v3, :cond_1

    :cond_0
    new-array p1, v2, [C

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 5
    aget-byte v4, v0, v3

    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    mul-int/lit8 v6, v3, 0x2

    const/16 v7, 0xa

    if-lt v5, v7, :cond_2

    add-int/lit8 v5, v5, 0x61

    sub-int/2addr v5, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x30

    :goto_1
    int-to-char v5, v5

    .line 6
    aput-char v5, p1, v6

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v6, v6, 0x1

    if-lt v4, v7, :cond_3

    add-int/lit8 v4, v4, 0x61

    sub-int/2addr v4, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x30

    :goto_2
    int-to-char v4, v4

    .line 7
    aput-char v4, p1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 8
    aput v1, p2, v2

    :cond_5
    return-object p1
.end method

.method public toCharsString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toChars()[C

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    .line 31
    .line 32
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
