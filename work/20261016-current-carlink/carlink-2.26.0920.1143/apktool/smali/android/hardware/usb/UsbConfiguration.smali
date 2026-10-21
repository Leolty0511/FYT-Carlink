.class public Landroid/hardware/usb/UsbConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ATTR_REMOTE_WAKEUP:I = 0x20

.field private static final ATTR_SELF_POWERED:I = 0x40

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributes:I

.field private final mId:I

.field private mInterfaces:[Landroid/os/Parcelable;

.field private final mMaxPower:I

.field private final mName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/usb/UsbConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    .line 5
    .line 6
    iput-object p2, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    .line 9
    .line 10
    iput p4, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

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

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    return v0
.end method

.method public getInterface(I)Landroid/hardware/usb/UsbInterface;
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    aget-object p1, v0, p1

    check-cast p1, Landroid/hardware/usb/UsbInterface;

    return-object p1
.end method

.method public getInterfaceCount()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    array-length v0, v0

    return v0
.end method

.method public getMaxPower()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isRemoteWakeup()Z
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelfPowered()Z
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setInterfaces([Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "interfaces"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, [Landroid/os/Parcelable;

    .line 9
    .line 10
    iput-object p1, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    .line 11
    .line 12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "UsbConfiguration[mId="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ",mName="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ",mAttributes="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",mMaxPower="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    .line 41
    .line 42
    const-string v3, ",mInterfaces=["

    .line 43
    .line 44
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    .line 53
    .line 54
    array-length v2, v2

    .line 55
    if-ge v1, v2, :cond_0

    .line 56
    .line 57
    const-string v2, "\n"

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    .line 63
    .line 64
    aget-object v2, v2, v1

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const-string v1, "]"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget p2, p0, Landroid/hardware/usb/UsbConfiguration;->mId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/hardware/usb/UsbConfiguration;->mName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/hardware/usb/UsbConfiguration;->mAttributes:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/hardware/usb/UsbConfiguration;->mMaxPower:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroid/hardware/usb/UsbConfiguration;->mInterfaces:[Landroid/os/Parcelable;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
