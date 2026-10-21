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

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    .line 3
    iput v0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    iput-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    .line 5
    iput-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    return-void
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/net/WifiLinkQualityInfo;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/WifiLinkQualityInfo;

    invoke-direct {v0}, Landroid/net/WifiLinkQualityInfo;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/net/LinkQualityInfo;->initializeFromParcel(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/WifiLinkQualityInfo;->mType:I

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    return v0
.end method

.method public getTxBad()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    return-wide v0
.end method

.method public getTxGood()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    return v0
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    return-void
.end method

.method public setTxBad(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    return-void
.end method

.method public setTxGood(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-super {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 2
    iget p2, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    iget-object p2, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
