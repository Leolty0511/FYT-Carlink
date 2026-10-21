.class public Landroid/bluetooth/SdpMasRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SdpMasRecord$MessageType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mL2capPsm:I

.field private final mMasInstanceId:I

.field private final mProfileVersion:I

.field private final mRfcommChannelNumber:I

.field private final mServiceName:Ljava/lang/String;

.field private final mSupportedFeatures:I

.field private final mSupportedMessageTypes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/SdpMasRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpMasRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpMasRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    .line 3
    iput p2, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    .line 4
    iput p3, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    .line 5
    iput p4, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    .line 6
    iput p5, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    .line 7
    iput p6, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    .line 8
    iput-object p7, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

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

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    return v0
.end method

.method public getMasInstanceId()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    return v0
.end method

.method public getProfileVersion()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    return v0
.end method

.method public getRfcommCannelNumber()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    return v0
.end method

.method public getSupportedMessageTypes()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    return v0
.end method

.method public msgSupported(I)Z
    .locals 1

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

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
    const-string v3, "Bluetooth MAS SDP Record:\nMas Instance Id: "

    .line 11
    .line 12
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

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
    const-string v0, "Bluetooth MAS SDP Record:\n"

    .line 23
    .line 24
    :goto_0
    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    .line 25
    .line 26
    if-eq v3, v2, :cond_1

    .line 27
    .line 28
    const-string v3, "RFCOMM Chan Number: "

    .line 29
    .line 30
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    .line 35
    .line 36
    invoke-static {v0, v3, v1}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    .line 41
    .line 42
    if-eq v3, v2, :cond_2

    .line 43
    .line 44
    const-string v3, "L2CAP PSM: "

    .line 45
    .line 46
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    .line 51
    .line 52
    invoke-static {v0, v3, v1}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    const-string v3, "Service Name: "

    .line 61
    .line 62
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v3, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v0, v3, v1}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_3
    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    .line 73
    .line 74
    if-eq v3, v2, :cond_4

    .line 75
    .line 76
    const-string v3, "Profile version: "

    .line 77
    .line 78
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    .line 83
    .line 84
    invoke-static {v0, v3, v1}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :cond_4
    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    .line 89
    .line 90
    if-eq v3, v2, :cond_5

    .line 91
    .line 92
    const-string v3, "Supported msg types: "

    .line 93
    .line 94
    invoke-static {v0, v3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    .line 99
    .line 100
    invoke-static {v0, v3, v1}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :cond_5
    iget v3, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    .line 105
    .line 106
    if-eq v3, v2, :cond_6

    .line 107
    .line 108
    const-string v2, "Supported features: "

    .line 109
    .line 110
    invoke-static {v0, v2}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget v2, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    .line 115
    .line 116
    invoke-static {v0, v2, v1}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :cond_6
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
