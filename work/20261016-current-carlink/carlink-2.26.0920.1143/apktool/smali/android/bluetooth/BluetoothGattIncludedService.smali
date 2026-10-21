.class public Landroid/bluetooth/BluetoothGattIncludedService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothGattIncludedService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mInstanceId:I

.field protected mServiceType:I

.field protected mUuid:Ljava/util/UUID;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothGattIncludedService$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothGattIncludedService$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothGattIncludedService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothGattIncludedService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattIncludedService;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    .line 4
    iput p2, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    .line 5
    iput p3, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInstanceId()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    new-instance p2, Landroid/os/ParcelUuid;

    .line 2
    .line 3
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    .line 4
    .line 5
    invoke-direct {p2, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10
    .line 11
    .line 12
    iget p2, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    iget p2, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
