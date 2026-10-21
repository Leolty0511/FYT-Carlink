.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1000000

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_HID:I = 0x3

.field public static final PROFILE_NAP:I = 0x5

.field public static final PROFILE_OPP:I = 0x2

.field public static final PROFILE_PANU:I = 0x4


# instance fields
.field private final mClass:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doesClassMatch(I)Z
    .locals 4

    const/16 v0, 0x420

    const/high16 v1, 0x40000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 1
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v3

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p1

    const/16 v1, 0x414

    if-eq p1, v1, :cond_1

    const/16 v1, 0x418

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x428

    if-eq p1, v0, :cond_1

    return v2

    :cond_1
    return v3

    :cond_2
    if-nez p1, :cond_5

    .line 3
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p1

    const/16 v1, 0x404

    if-eq p1, v1, :cond_4

    const/16 v1, 0x408

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_4

    return v2

    :cond_4
    return v3

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    const/high16 p1, 0x100000

    .line 5
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result p1

    if-eqz p1, :cond_6

    return v3

    .line 6
    :cond_6
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    return v2

    :sswitch_0
    return v3

    :cond_7
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 7
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p1

    const/16 v0, 0x500

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_8

    move v2, v3

    :cond_8
    return v2

    :cond_9
    const/4 v0, 0x4

    if-eq p1, v0, :cond_b

    const/4 v0, 0x5

    if-ne p1, v0, :cond_a

    goto :goto_0

    :cond_a
    return v2

    :cond_b
    :goto_0
    const/high16 p1, 0x20000

    .line 8
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result p1

    if-eqz p1, :cond_c

    return v3

    .line 9
    :cond_c
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p1

    const/16 v0, 0x300

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_d

    move v2, v3

    :cond_d
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x104 -> :sswitch_0
        0x108 -> :sswitch_0
        0x10c -> :sswitch_0
        0x110 -> :sswitch_0
        0x114 -> :sswitch_0
        0x118 -> :sswitch_0
        0x200 -> :sswitch_0
        0x204 -> :sswitch_0
        0x208 -> :sswitch_0
        0x20c -> :sswitch_0
        0x210 -> :sswitch_0
        0x214 -> :sswitch_0
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/bluetooth/BluetoothClass;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    check-cast p1, Landroid/bluetooth/BluetoothClass;

    iget p1, p1, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getDeviceClass()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public getMajorDeviceClass()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public hasService(I)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v1, 0xffe000

    and-int/2addr v0, v1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
