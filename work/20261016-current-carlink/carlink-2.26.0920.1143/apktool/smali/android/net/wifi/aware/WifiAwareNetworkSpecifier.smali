.class public final Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_SPECIFIER_TYPE_IB:I = 0x0

.field public static final NETWORK_SPECIFIER_TYPE_IB_ANY_PEER:I = 0x1

.field public static final NETWORK_SPECIFIER_TYPE_MAX_VALID:I = 0x3

.field public static final NETWORK_SPECIFIER_TYPE_OOB:I = 0x2

.field public static final NETWORK_SPECIFIER_TYPE_OOB_ANY_PEER:I = 0x3


# instance fields
.field public final clientId:I

.field public final passphrase:Ljava/lang/String;

.field public final peerId:I

.field public final peerMac:[B

.field public final pmk:[B

.field public final requestorUid:I

.field public final role:I

.field public final sessionId:I

.field public final type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII[B[BLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    .line 5
    .line 6
    iput p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    .line 7
    .line 8
    iput p3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    .line 9
    .line 10
    iput p4, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    .line 11
    .line 12
    iput p5, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    .line 13
    .line 14
    iput-object p6, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 15
    .line 16
    iput-object p7, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    .line 17
    .line 18
    iput-object p8, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    .line 19
    .line 20
    iput p9, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public assertValidFromUid(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    .line 7
    .line 8
    const-string/jumbo v0, "mismatched UIDs"

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

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
    instance-of v1, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

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
    check-cast p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 12
    .line 13
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    .line 14
    .line 15
    iget v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    .line 20
    .line 21
    iget v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    .line 26
    .line 27
    iget v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    .line 28
    .line 29
    if-ne v1, v3, :cond_2

    .line 30
    .line 31
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    .line 32
    .line 33
    iget v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    .line 34
    .line 35
    if-ne v1, v3, :cond_2

    .line 36
    .line 37
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    .line 38
    .line 39
    iget v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    .line 40
    .line 41
    if-ne v1, v3, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 44
    .line 45
    iget-object v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 46
    .line 47
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    .line 54
    .line 55
    iget-object v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    .line 56
    .line 57
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    .line 74
    .line 75
    iget p1, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    .line 76
    .line 77
    if-ne v1, p1, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move v0, v2

    .line 81
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    .line 8
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    .line 24
    .line 25
    add-int/2addr v0, v1

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 29
    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v1, v0

    .line 35
    mul-int/lit8 v1, v1, 0x1f

    .line 36
    .line 37
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    .line 38
    .line 39
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/2addr v0, v1

    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/2addr v1, v0

    .line 53
    mul-int/lit8 v1, v1, 0x1f

    .line 54
    .line 55
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    .line 56
    .line 57
    add-int/2addr v1, v0

    .line 58
    return v1
.end method

.method public isOutOfBand()Z
    .locals 2

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public satisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->satisfiesAwareNetworkSpecifier(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "WifiAwareNetworkSpecifier [type="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", role="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", clientId="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", sessionId="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", peerId="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", peerMac="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 59
    .line 60
    const-string v2, "<null>"

    .line 61
    .line 62
    const-string v3, "<non-null>"

    .line 63
    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    move-object v1, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move-object v1, v3

    .line 69
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", pmk="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    .line 78
    .line 79
    if-nez v1, :cond_1

    .line 80
    .line 81
    move-object v1, v2

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move-object v1, v3

    .line 84
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ", passphrase="

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v1, :cond_2

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    move-object v2, v3

    .line 98
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ", requestorUid="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    .line 107
    .line 108
    const-string v2, "]"

    .line 109
    .line 110
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
