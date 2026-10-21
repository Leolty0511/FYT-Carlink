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

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    .line 3
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    .line 4
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    .line 5
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    .line 6
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    .line 7
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    .line 8
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    .line 9
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    .line 10
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    .line 11
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    .line 12
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    .line 13
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    .line 14
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return-void
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/net/MobileLinkQualityInfo;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/MobileLinkQualityInfo;

    invoke-direct {v0}, Landroid/net/MobileLinkQualityInfo;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/net/LinkQualityInfo;->initializeFromParcel(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    .line 8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    .line 9
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    .line 10
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    .line 11
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    .line 13
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    .line 14
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    .line 15
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    iput p0, v0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return-object v0
.end method


# virtual methods
.method public getCdmaDbm()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    return v0
.end method

.method public getEvdoDbm()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    return v0
.end method

.method public getGsmErrorRate()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    return v0
.end method

.method public getLteCqi()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return v0
.end method

.method public getLteRsrp()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    return v0
.end method

.method public getMobileNetworkType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    return v0
.end method

.method public setCdmaDbm(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    return-void
.end method

.method public setGsmErrorRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    return-void
.end method

.method public setLteCqi(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return-void
.end method

.method public setLteRsrp(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    return-void
.end method

.method public setLteRsrq(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    return-void
.end method

.method public setLteRssnr(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    return-void
.end method

.method public setLteSignalStrength(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    return-void
.end method

.method public setMobileNetworkType(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-super {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 2
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
