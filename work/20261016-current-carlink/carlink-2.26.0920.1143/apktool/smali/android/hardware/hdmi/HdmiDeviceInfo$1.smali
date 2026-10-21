.class final Landroid/hardware/hdmi/HdmiDeviceInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/hdmi/HdmiDeviceInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 9

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/16 p1, 0x64

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    sget-object p1, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-direct {p1, v3, v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 9
    new-instance v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-direct {v1, v3, v4, p1, v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIII)V

    return-object v1

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 15
    new-instance p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;I)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$1;->newArray(I)[Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    return-object p1
.end method
