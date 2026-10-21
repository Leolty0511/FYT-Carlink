.class public Landroid/net/LinkQualityInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/LinkQualityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NORMALIZED_MAX_SIGNAL_STRENGTH:I = 0x63

.field public static final NORMALIZED_MIN_SIGNAL_STRENGTH:I = 0x0

.field public static final NORMALIZED_SIGNAL_STRENGTH_RANGE:I = 0x64

.field protected static final OBJECT_TYPE_LINK_QUALITY_INFO:I = 0x1

.field protected static final OBJECT_TYPE_MOBILE_LINK_QUALITY_INFO:I = 0x3

.field protected static final OBJECT_TYPE_WIFI_LINK_QUALITY_INFO:I = 0x2

.field public static final UNKNOWN_INT:I = 0x7fffffff

.field public static final UNKNOWN_LONG:J = 0x7fffffffffffffffL


# instance fields
.field private mDataSampleDuration:I

.field private mLastDataSampleTime:J

.field private mNetworkType:I

.field private mNormalizedSignalStrength:I

.field private mPacketCount:J

.field private mPacketErrorCount:J

.field private mTheoreticalLatency:I

.field private mTheoreticalRxBandwidth:I

.field private mTheoreticalTxBandwidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/LinkQualityInfo$1;

    invoke-direct {v0}, Landroid/net/LinkQualityInfo$1;-><init>()V

    sput-object v0, Landroid/net/LinkQualityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    .line 6
    .line 7
    const v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    iput v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    .line 11
    .line 12
    const-wide v1, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    iput-wide v1, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    .line 18
    .line 19
    iput-wide v1, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    .line 20
    .line 21
    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    .line 22
    .line 23
    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    .line 24
    .line 25
    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    .line 26
    .line 27
    iput-wide v1, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    .line 28
    .line 29
    iput v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDataSampleDuration()I
    .locals 1

    iget v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    return v0
.end method

.method public getLastDataSampleTime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    return-wide v0
.end method

.method public getNetworkType()I
    .locals 1

    iget v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    return v0
.end method

.method public getNormalizedSignalStrength()I
    .locals 1

    iget v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    return v0
.end method

.method public getPacketCount()J
    .locals 2

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    return-wide v0
.end method

.method public getPacketErrorCount()J
    .locals 2

    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    return-wide v0
.end method

.method public getTheoreticalLatency()I
    .locals 1

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    return v0
.end method

.method public getTheoreticalRxBandwidth()I
    .locals 1

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    return v0
.end method

.method public getTheoreticalTxBandwidth()I
    .locals 1

    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    return v0
.end method

.method public initializeFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    .line 54
    .line 55
    return-void
.end method

.method public setDataSampleDuration(I)V
    .locals 0

    iput p1, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    return-void
.end method

.method public setLastDataSampleTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    return-void
.end method

.method public setNetworkType(I)V
    .locals 0

    iput p1, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    return-void
.end method

.method public setNormalizedSignalStrength(I)V
    .locals 0

    iput p1, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    return-void
.end method

.method public setPacketCount(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    return-void
.end method

.method public setPacketErrorCount(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    return-void
.end method

.method public setTheoreticalLatency(I)V
    .locals 0

    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    return-void
.end method

.method public setTheoreticalRxBandwidth(I)V
    .locals 0

    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    return-void
.end method

.method public setTheoreticalTxBandwidth(I)V
    .locals 0

    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;II)V
    .locals 0

    .line 2
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-wide p2, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    iget-wide p2, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget p2, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-wide p2, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget p2, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
