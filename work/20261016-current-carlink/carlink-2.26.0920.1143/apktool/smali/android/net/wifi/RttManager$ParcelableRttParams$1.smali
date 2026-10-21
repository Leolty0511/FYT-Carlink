.class final Landroid/net/wifi/RttManager$ParcelableRttParams$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ParcelableRttParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/RttManager$ParcelableRttParams;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttParams;
    .locals 7

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3
    new-array v1, v0, [Landroid/net/wifi/RttManager$RttParams;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 4
    new-instance v4, Landroid/net/wifi/RttManager$RttParams;

    invoke-direct {v4}, Landroid/net/wifi/RttManager$RttParams;-><init>()V

    aput-object v4, v1, v3

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    .line 6
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    .line 7
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    iput-boolean v5, v4, Landroid/net/wifi/RttManager$RttParams;->secure:Z

    .line 8
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    .line 9
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    .line 10
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    .line 11
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    .line 12
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    .line 13
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    .line 14
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->interval:I

    .line 15
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    .line 16
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    .line 17
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    .line 18
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v6, :cond_1

    move v5, v6

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    iput-boolean v5, v4, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    .line 19
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v6, :cond_2

    goto :goto_3

    :cond_2
    move v6, v2

    :goto_3
    iput-boolean v6, v4, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    .line 20
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    .line 21
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    .line 22
    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 23
    :cond_3
    new-instance p1, Landroid/net/wifi/RttManager$ParcelableRttParams;

    invoke-direct {p1, v1}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/net/wifi/RttManager$ParcelableRttParams;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;

    move-result-object p1

    return-object p1
.end method
