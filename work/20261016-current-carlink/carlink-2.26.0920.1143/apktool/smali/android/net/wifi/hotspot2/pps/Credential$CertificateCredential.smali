.class public final Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CertificateCredential"
.end annotation


# static fields
.field private static final CERT_SHA256_FINGER_PRINT_LENGTH:I = 0x20

.field public static final CERT_TYPE_X509V3:Ljava/lang/String; = "x509v3"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCertSha256Fingerprint:[B

.field private mCertType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    if-eqz p1, :cond_0

    .line 9
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 24
    .line 25
    iget-object p1, p1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 26
    .line 27
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v0, v2

    .line 35
    :goto_0
    return v0
.end method

.method public getCertSha256Fingerprint()[B
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    return-object v0
.end method

.method public getCertType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public setCertSha256Fingerprint([B)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    return-void
.end method

.method public setCertType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CertificateType: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "\n"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public validate()Z
    .locals 4

    .line 1
    const-string/jumbo v0, "x509v3"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "Credential"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Unsupported certificate type: "

    .line 18
    .line 19
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v3, v2}, Landroid/app/m;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    array-length v0, v0

    .line 33
    const/16 v3, 0x20

    .line 34
    .line 35
    if-eq v0, v3, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x1

    .line 39
    return v0

    .line 40
    :cond_2
    :goto_0
    const-string v0, "Invalid SHA-256 fingerprint"

    .line 41
    .line 42
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertType:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->mCertSha256Fingerprint:[B

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
