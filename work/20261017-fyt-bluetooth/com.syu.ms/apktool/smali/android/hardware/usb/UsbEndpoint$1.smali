.class final Landroid/hardware/usb/UsbEndpoint$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/UsbEndpoint;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbEndpoint;
    .locals 4

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6
    new-instance v3, Landroid/hardware/usb/UsbEndpoint;

    invoke-direct {v3, v0, v1, v2, p1}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbEndpoint$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/usb/UsbEndpoint;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/hardware/usb/UsbEndpoint;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbEndpoint$1;->newArray(I)[Landroid/hardware/usb/UsbEndpoint;

    move-result-object p1

    return-object p1
.end method
