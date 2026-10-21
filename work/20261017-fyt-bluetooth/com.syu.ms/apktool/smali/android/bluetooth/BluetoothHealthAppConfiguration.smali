.class public final Landroid/bluetooth/BluetoothHealthAppConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHealthAppConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannelType:I

.field private final mDataType:I

.field private final mName:Ljava/lang/String;

.field private final mRole:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    .line 3
    iput p2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    const/16 p1, 0xc

    .line 5
    iput p1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    .line 8
    iput p2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    .line 9
    iput p3, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    .line 10
    iput p4, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 3
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getDataType()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getRole()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getChannelType()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getChannelType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    return v0
.end method

.method public getDataType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothHealthAppConfiguration [mName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mDataType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRole = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mChannelType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
