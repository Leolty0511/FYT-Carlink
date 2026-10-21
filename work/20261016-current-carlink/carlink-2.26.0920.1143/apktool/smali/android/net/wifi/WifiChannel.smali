.class public Landroid/net/wifi/WifiChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_CHANNEL_NUM:I = 0xc4

.field private static final MAX_FREQ_MHZ:I = 0x16c1

.field private static final MIN_CHANNEL_NUM:I = 0x1

.field private static final MIN_FREQ_MHZ:I = 0x96c


# instance fields
.field public channelNum:I

.field public freqMHz:I

.field public isDFS:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/WifiChannel$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiChannel$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    .line 2
    .line 3
    const/16 v1, 0x96c

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    const/16 v1, 0x16c1

    .line 9
    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiChannel;->channelNum:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-lt v0, v1, :cond_2

    .line 17
    .line 18
    const/16 v3, 0xc4

    .line 19
    .line 20
    if-le v0, v3, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v1

    .line 24
    :cond_2
    :goto_0
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/net/wifi/WifiChannel;->channelNum:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
