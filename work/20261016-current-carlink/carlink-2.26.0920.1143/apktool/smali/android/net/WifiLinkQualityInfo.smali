.class public Landroid/net/WifiLinkQualityInfo;
.super Landroid/net/LinkQualityInfo;
.source "SourceFile"


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mRssi:I

.field private mTxBad:J

.field private mTxGood:J

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/net/LinkQualityInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    .line 8
    .line 9
    iput v0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    .line 10
    .line 11
    const-wide v0, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    .line 17
    .line 18
    iput-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    .line 19
    .line 20
    return-void
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/net/WifiLinkQualityInfo;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/WifiLinkQualityInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/WifiLinkQualityInfo;-><init>()V

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
    iput v1, v0, Landroid/net/WifiLinkQualityInfo;->mType:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, v0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iput-wide v1, v0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    iput-wide v1, v0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iput-object p0, v0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    .line 38
    .line 39
    return-object v0
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    return v0
.end method

.method public getTxBad()J
    .locals 2

    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    return-wide v0
.end method

.method public getTxGood()J
    .locals 2

    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    return v0
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    iput p1, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    return-void
.end method

.method public setTxBad(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    return-void
.end method

.method public setTxGood(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-super {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 3
    .line 4
    .line 5
    iget p2, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    iget p2, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    .line 19
    .line 20
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
