.class public Landroid/bluetooth/SdpPseRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mL2capPsm:I

.field private final mProfileVersion:I

.field private final mRfcommChannelNumber:I

.field private final mServiceName:Ljava/lang/String;

.field private final mSupportedFeatures:I

.field private final mSupportedRepositories:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/SdpPseRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpPseRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpPseRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    .line 3
    iput p2, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    .line 4
    iput p3, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    .line 5
    iput p4, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    .line 6
    iput p5, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    .line 7
    iput-object p6, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getL2capPsm()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    return v0
.end method

.method public getProfileVersion()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    return v0
.end method

.method public getRfcommChannelNumber()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    return v0
.end method

.method public getSupportedRepositories()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    .line 2
    .line 3
    const-string v1, "\n"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v0, v2, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, "Bluetooth MNS SDP Record:\nRFCOMM Chan Number: "

    .line 11
    .line 12
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v3, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    .line 16
    .line 17
    invoke-static {v0, v3, v1}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "Bluetooth MNS SDP Record:\n"

    .line 23
    .line 24
    :goto_0
    iget v3, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    .line 25
    .line 26
    if-eq v3, v2, :cond_1

    .line 27
    .line 28
    const-string v3, "L2CAP PSM: "

    .line 29
    .line 30
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v3, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    .line 35
    .line 36
    invoke-static {v0, v3, v1}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    iget v3, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    .line 41
    .line 42
    if-eq v3, v2, :cond_2

    .line 43
    .line 44
    const-string/jumbo v3, "profile version: "

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget v3, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    .line 52
    .line 53
    invoke-static {v0, v3, v1}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    const-string v3, "Service Name: "

    .line 62
    .line 63
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v3, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0, v3, v1}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :cond_3
    iget v3, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    .line 74
    .line 75
    if-eq v3, v2, :cond_4

    .line 76
    .line 77
    const-string v3, "Supported features: "

    .line 78
    .line 79
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget v3, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    .line 84
    .line 85
    invoke-static {v0, v3, v1}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_4
    iget v3, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    .line 90
    .line 91
    if-eq v3, v2, :cond_5

    .line 92
    .line 93
    const-string v2, "Supported repositories: "

    .line 94
    .line 95
    invoke-static {v0, v2}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget v2, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    .line 100
    .line 101
    invoke-static {v0, v2, v1}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :cond_5
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/bluetooth/SdpPseRecord;->mRfcommChannelNumber:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/bluetooth/SdpPseRecord;->mL2capPsm:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/bluetooth/SdpPseRecord;->mProfileVersion:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedFeatures:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/bluetooth/SdpPseRecord;->mSupportedRepositories:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Landroid/bluetooth/SdpPseRecord;->mServiceName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
