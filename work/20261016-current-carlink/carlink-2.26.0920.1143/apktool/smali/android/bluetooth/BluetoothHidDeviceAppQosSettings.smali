.class public final Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:I = -0x1

.field public static final SERVICE_BEST_EFFORT:I = 0x1

.field public static final SERVICE_GUARANTEED:I = 0x2

.field public static final SERVICE_NO_TRAFFIC:I


# instance fields
.field public final delayVariation:I

.field public final latency:I

.field public final peakBandwidth:I

.field public final serviceType:I

.field public final tokenBucketSize:I

.field public final tokenRate:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->serviceType:I

    .line 5
    .line 6
    iput p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenRate:I

    .line 7
    .line 8
    iput p3, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    .line 9
    .line 10
    iput p4, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    .line 11
    .line 12
    iput p5, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->latency:I

    .line 13
    .line 14
    iput p6, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->delayVariation:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 7
    .line 8
    :cond_0
    return v1
.end method

.method public toArray()[I
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->serviceType:I

    .line 6
    .line 7
    aput v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenRate:I

    .line 11
    .line 12
    aput v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    .line 16
    .line 17
    aput v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    .line 21
    .line 22
    aput v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->latency:I

    .line 26
    .line 27
    aput v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->delayVariation:I

    .line 31
    .line 32
    aput v2, v0, v1

    .line 33
    .line 34
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->serviceType:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenRate:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->latency:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->delayVariation:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
