.class final Landroid/location/GnssNavigationMessage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssNavigationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssNavigationMessage;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssNavigationMessage;
    .locals 2

    .line 2
    new-instance v0, Landroid/location/GnssNavigationMessage;

    invoke-direct {v0}, Landroid/location/GnssNavigationMessage;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GnssNavigationMessage;->setType(I)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GnssNavigationMessage;->setSvid(I)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GnssNavigationMessage;->setMessageId(I)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GnssNavigationMessage;->setSubmessageId(I)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 8
    new-array v1, v1, [B

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/location/GnssNavigationMessage;->setData([B)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/location/GnssNavigationMessage;->setStatus(I)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/location/GnssNavigationMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssNavigationMessage;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GnssNavigationMessage;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/location/GnssNavigationMessage;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/location/GnssNavigationMessage$1;->newArray(I)[Landroid/location/GnssNavigationMessage;

    move-result-object p1

    return-object p1
.end method
