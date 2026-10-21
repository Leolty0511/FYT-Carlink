.class public final Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHash:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 7
    .line 8
    iget-wide v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    .line 9
    .line 10
    iget-wide v4, p1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    .line 11
    .line 12
    cmp-long p1, v2, v4

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_0
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
