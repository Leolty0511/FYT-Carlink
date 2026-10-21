.class public Landroid/hardware/usb/UsbEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress:I

.field private final mAttributes:I

.field private final mInterval:I

.field private final mMaxPacketSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/usb/UsbEndpoint$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbEndpoint$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    .line 5
    .line 6
    iput p2, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    .line 7
    .line 8
    iput p3, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    .line 9
    .line 10
    iput p4, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    return v0
.end method

.method public getAttributes()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    and-int/lit16 v0, v0, 0x80

    return v0
.end method

.method public getEndpointNumber()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getInterval()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    return v0
.end method

.method public getMaxPacketSize()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UsbEndpoint[mAddress="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",mAttributes="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",mMaxPacketSize="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",mInterval="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    .line 39
    .line 40
    const-string v2, "]"

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
