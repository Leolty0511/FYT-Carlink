.class final Landroid/net/wifi/RttManager$ParcelableRttResults$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ParcelableRttResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/RttManager$ParcelableRttResults;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttResults;
    .locals 7

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance p1, Landroid/net/wifi/RttManager$ParcelableRttResults;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    return-object p1

    .line 4
    :cond_0
    new-array v1, v0, [Landroid/net/wifi/RttManager$RttResult;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 5
    new-instance v4, Landroid/net/wifi/RttManager$RttResult;

    invoke-direct {v4}, Landroid/net/wifi/RttManager$RttResult;-><init>()V

    aput-object v4, v1, v3

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    .line 7
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    .line 8
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    .line 9
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    .line 10
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    .line 11
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->status:I

    .line 12
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    .line 13
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    .line 14
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/net/wifi/RttManager$RttResult;->ts:J

    .line 15
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    .line 16
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    .line 17
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    .line 18
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    .line 19
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    .line 20
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    .line 21
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->distance:I

    .line 22
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    .line 23
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    .line 24
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    .line 25
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    .line 26
    aget-object v4, v1, v3

    new-instance v5, Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-direct {v5}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    iput-object v5, v4, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 27
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    iput-byte v5, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    .line 28
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 30
    aget-object v6, v1, v3

    iget-object v6, v6, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    new-array v4, v4, [B

    iput-object v4, v6, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    .line 31
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 32
    :cond_1
    aget-object v4, v1, v3

    new-instance v6, Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-direct {v6}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    iput-object v6, v4, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 33
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    iput-byte v6, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    .line 34
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    if-eq v4, v5, :cond_2

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 36
    aget-object v5, v1, v3

    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    new-array v4, v4, [B

    iput-object v4, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    .line 37
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 38
    :cond_2
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    iput-boolean v5, v4, Landroid/net/wifi/RttManager$RttResult;->secure:Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 39
    :cond_4
    new-instance p1, Landroid/net/wifi/RttManager$ParcelableRttResults;

    invoke-direct {p1, v1}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttResults;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttResults;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/net/wifi/RttManager$ParcelableRttResults;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttResults;

    move-result-object p1

    return-object p1
.end method
