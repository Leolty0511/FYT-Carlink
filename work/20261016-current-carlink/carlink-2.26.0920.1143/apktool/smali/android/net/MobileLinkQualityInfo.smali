.class public Landroid/net/MobileLinkQualityInfo;
.super Landroid/net/LinkQualityInfo;
.source "SourceFile"


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmErrorRate:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mMobileNetworkType:I

.field private mRssi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/LinkQualityInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    .line 8
    .line 9
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    .line 10
    .line 11
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    .line 12
    .line 13
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    .line 14
    .line 15
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    .line 16
    .line 17
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    .line 18
    .line 19
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    .line 20
    .line 21
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    .line 22
    .line 23
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    .line 24
    .line 25
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    .line 26
    .line 27
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    .line 28
    .line 29
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    .line 30
    .line 31
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    .line 32
    .line 33
    return-void
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/net/MobileLinkQualityInfo;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/MobileLinkQualityInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/MobileLinkQualityInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/net/LinkQualityInfo;->initializeFromParcel(Landroid/os/Parcel;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    iput p0, v0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    .line 86
    .line 87
    return-object v0
.end method


# virtual methods
.method public getCdmaDbm()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    return v0
.end method

.method public getEvdoDbm()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    return v0
.end method

.method public getGsmErrorRate()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    return v0
.end method

.method public getLteCqi()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return v0
.end method

.method public getLteRsrp()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    return v0
.end method

.method public getMobileNetworkType()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    return v0
.end method

.method public setCdmaDbm(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    return-void
.end method

.method public setGsmErrorRate(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    return-void
.end method

.method public setLteCqi(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return-void
.end method

.method public setLteRsrp(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    return-void
.end method

.method public setLteRsrq(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    return-void
.end method

.method public setLteRssnr(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    return-void
.end method

.method public setLteSignalStrength(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    return-void
.end method

.method public setMobileNetworkType(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-super {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 3
    .line 4
    .line 5
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    .line 54
    .line 55
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    .line 59
    .line 60
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    .line 64
    .line 65
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
