.class public Landroid/bluetooth/OobData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/OobData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private leBluetoothDeviceAddress:[B

.field private leSecureConnectionsConfirmation:[B

.field private leSecureConnectionsRandom:[B

.field private securityManagerTk:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/OobData$1;

    invoke-direct {v0}, Landroid/bluetooth/OobData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->leBluetoothDeviceAddress:[B

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->securityManagerTk:[B

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->leSecureConnectionsConfirmation:[B

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/bluetooth/OobData;->leSecureConnectionsRandom:[B

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/OobData$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/bluetooth/OobData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLeBluetoothDeviceAddress()[B
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/OobData;->leBluetoothDeviceAddress:[B

    return-object v0
.end method

.method public getLeSecureConnectionsConfirmation()[B
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/OobData;->leSecureConnectionsConfirmation:[B

    return-object v0
.end method

.method public getLeSecureConnectionsRandom()[B
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/OobData;->leSecureConnectionsRandom:[B

    return-object v0
.end method

.method public getSecurityManagerTk()[B
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/OobData;->securityManagerTk:[B

    return-object v0
.end method

.method public setLeBluetoothDeviceAddress([B)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/OobData;->leBluetoothDeviceAddress:[B

    return-void
.end method

.method public setLeSecureConnectionsConfirmation([B)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/OobData;->leSecureConnectionsConfirmation:[B

    return-void
.end method

.method public setLeSecureConnectionsRandom([B)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/OobData;->leSecureConnectionsRandom:[B

    return-void
.end method

.method public setSecurityManagerTk([B)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/OobData;->securityManagerTk:[B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/bluetooth/OobData;->leBluetoothDeviceAddress:[B

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/bluetooth/OobData;->securityManagerTk:[B

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/bluetooth/OobData;->leSecureConnectionsConfirmation:[B

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/bluetooth/OobData;->leSecureConnectionsRandom:[B

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
