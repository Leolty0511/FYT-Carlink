.class public final Landroid/net/wifi/hotspot2/pps/UpdateParameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CERTIFICATE_SHA256_BYTES:I = 0x20

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/UpdateParameter;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PASSWORD_BYTES:I = 0xff

.field private static final MAX_URI_BYTES:I = 0x3ff

.field private static final MAX_URL_BYTES:I = 0x3ff

.field private static final MAX_USERNAME_BYTES:I = 0x3f

.field private static final TAG:Ljava/lang/String; = "UpdateParameter"

.field public static final UPDATE_CHECK_INTERVAL_NEVER:J = 0xffffffffL

.field public static final UPDATE_METHOD_OMADM:Ljava/lang/String; = "OMA-DM-ClientInitiated"

.field public static final UPDATE_METHOD_SSP:Ljava/lang/String; = "SSP-ClientInitiated"

.field public static final UPDATE_RESTRICTION_HOMESP:Ljava/lang/String; = "HomeSP"

.field public static final UPDATE_RESTRICTION_ROAMING_PARTNER:Ljava/lang/String; = "RoamingPartner"

.field public static final UPDATE_RESTRICTION_UNRESTRICTED:Ljava/lang/String; = "Unrestricted"


# instance fields
.field private mBase64EncodedPassword:Ljava/lang/String;

.field private mRestriction:Ljava/lang/String;

.field private mServerUri:Ljava/lang/String;

.field private mTrustRootCertSha256Fingerprint:[B

.field private mTrustRootCertUrl:Ljava/lang/String;

.field private mUpdateIntervalInMinutes:J

.field private mUpdateMethod:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 11
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    if-nez p1, :cond_0

    return-void

    .line 19
    :cond_0
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 20
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 26
    iget-object p1, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    if-eqz p1, :cond_1

    .line 27
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

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
    check-cast p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 12
    .line 13
    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 14
    .line 15
    iget-wide v5, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 82
    .line 83
    iget-object p1, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 84
    .line 85
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move v0, v2

    .line 93
    :goto_0
    return v0
.end method

.method public getBase64EncodedPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRestriction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustRootCertSha256Fingerprint()[B
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    return-object v0
.end method

.method public getTrustRootCertUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateIntervalInMinutes()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    return-wide v0
.end method

.method public getUpdateMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 31
    .line 32
    aput-object v2, v0, v1

    .line 33
    .line 34
    const/4 v1, 0x5

    .line 35
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 36
    .line 37
    aput-object v2, v0, v1

    .line 38
    .line 39
    const/4 v1, 0x6

    .line 40
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 41
    .line 42
    aput-object v2, v0, v1

    .line 43
    .line 44
    const/4 v1, 0x7

    .line 45
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 46
    .line 47
    aput-object v2, v0, v1

    .line 48
    .line 49
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0
.end method

.method public setBase64EncodedPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    return-void
.end method

.method public setRestriction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    return-void
.end method

.method public setServerUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    return-void
.end method

.method public setTrustRootCertSha256Fingerprint([B)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    return-void
.end method

.method public setTrustRootCertUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    return-void
.end method

.method public setUpdateIntervalInMinutes(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    return-void
.end method

.method public setUpdateMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UpdateInterval: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\nUpdateMethod: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\nRestriction: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\nServerURI: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\nUsername: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\nTrustRootCertURL: "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 59
    .line 60
    const-string v2, "\n"

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public validate()Z
    .locals 7

    .line 1
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 2
    .line 3
    const-wide/high16 v2, -0x8000000000000000L

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    const-string v3, "UpdateParameter"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const-string v0, "Update interval not specified"

    .line 13
    .line 14
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    const-wide v5, 0xffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    cmp-long v0, v0, v5

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "OMA-DM-ClientInitiated"

    .line 32
    .line 33
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 40
    .line 41
    const-string v2, "SSP-ClientInitiated"

    .line 42
    .line 43
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "Unknown update method: "

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v0, v1, v3}, Landroid/app/m;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return v4

    .line 62
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 63
    .line 64
    const-string v2, "HomeSP"

    .line 65
    .line 66
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 73
    .line 74
    const-string v2, "RoamingPartner"

    .line 75
    .line 76
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 83
    .line 84
    const-string v2, "Unrestricted"

    .line 85
    .line 86
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v1, "Unknown restriction: "

    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v0, v1, v3}, Landroid/app/m;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return v4

    .line 105
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    const-string v0, "Missing update server URI"

    .line 114
    .line 115
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    return v4

    .line 119
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 120
    .line 121
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    array-length v0, v0

    .line 128
    const/16 v2, 0x3ff

    .line 129
    .line 130
    if-le v0, v2, :cond_5

    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v1, "URI bytes exceeded the max: "

    .line 135
    .line 136
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 140
    .line 141
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    array-length v1, v1

    .line 148
    invoke-static {v0, v1, v3}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return v4

    .line 152
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    const-string v5, "Missing username"

    .line 159
    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    return v4

    .line 166
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 167
    .line 168
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 169
    .line 170
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    array-length v0, v0

    .line 175
    const/16 v6, 0x3f

    .line 176
    .line 177
    if-le v0, v6, :cond_7

    .line 178
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v1, "Username bytes exceeded the max: "

    .line 182
    .line 183
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 187
    .line 188
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    array-length v1, v1

    .line 195
    invoke-static {v0, v1, v3}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return v4

    .line 199
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_8

    .line 206
    .line 207
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    return v4

    .line 211
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 212
    .line 213
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 214
    .line 215
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    array-length v0, v0

    .line 220
    const/16 v5, 0xff

    .line 221
    .line 222
    if-le v0, v5, :cond_9

    .line 223
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v1, "Password bytes exceeded the max: "

    .line 227
    .line 228
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 232
    .line 233
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    array-length v1, v1

    .line 240
    invoke-static {v0, v1, v3}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return v4

    .line 244
    :cond_9
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 245
    .line 246
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 250
    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_a

    .line 256
    .line 257
    const-string v0, "Missing trust root certificate URL"

    .line 258
    .line 259
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    return v4

    .line 263
    :cond_a
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 264
    .line 265
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 266
    .line 267
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    array-length v0, v0

    .line 272
    if-le v0, v2, :cond_b

    .line 273
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v1, "Trust root cert URL bytes exceeded the max: "

    .line 277
    .line 278
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 282
    .line 283
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 284
    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    array-length v1, v1

    .line 290
    invoke-static {v0, v1, v3}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    return v4

    .line 294
    :cond_b
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 295
    .line 296
    if-nez v0, :cond_c

    .line 297
    .line 298
    const-string v0, "Missing trust root certificate SHA-256 fingerprint"

    .line 299
    .line 300
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    return v4

    .line 304
    :cond_c
    array-length v0, v0

    .line 305
    const/16 v2, 0x20

    .line 306
    .line 307
    if-eq v0, v2, :cond_d

    .line 308
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v1, "Incorrect size of trust root certificate SHA-256 fingerprint: "

    .line 312
    .line 313
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 317
    .line 318
    array-length v1, v1

    .line 319
    invoke-static {v0, v1, v3}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    return v4

    .line 323
    :cond_d
    return v1

    .line 324
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string v1, "Invalid encoding for password: "

    .line 327
    .line 328
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 332
    .line 333
    invoke-static {v0, v1, v3}, Landroid/app/m;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    return v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
