.class public final Landroid/hardware/input/InputDeviceIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/InputDeviceIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDescriptor:Ljava/lang/String;

.field private final mProductId:I

.field private final mVendorId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/input/InputDeviceIdentifier$1;

    invoke-direct {v0}, Landroid/hardware/input/InputDeviceIdentifier$1;-><init>()V

    sput-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/input/InputDeviceIdentifier$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    .line 4
    iput p2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    .line 5
    iput p3, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    instance-of v2, p1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 14
    .line 15
    iget v2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    .line 16
    .line 17
    iget v3, p1, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    .line 18
    .line 19
    if-ne v2, v3, :cond_2

    .line 20
    .line 21
    iget v2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    .line 22
    .line 23
    iget v3, p1, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p1, p1, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v0, v1

    .line 39
    :goto_0
    return v0

    .line 40
    :cond_3
    :goto_1
    return v1
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    return v0
.end method

.method public getVendorId()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    iget v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    iget v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x2

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
