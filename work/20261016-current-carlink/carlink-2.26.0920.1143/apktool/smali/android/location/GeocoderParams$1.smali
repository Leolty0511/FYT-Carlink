.class final Landroid/location/GeocoderParams$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GeocoderParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GeocoderParams;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GeocoderParams;
    .locals 5

    .line 2
    new-instance v0, Landroid/location/GeocoderParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/location/GeocoderParams;-><init>(Landroid/location/GeocoderParams$1;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4}, Landroid/location/GeocoderParams;->access$102(Landroid/location/GeocoderParams;Ljava/util/Locale;)Ljava/util/Locale;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/location/GeocoderParams;->access$202(Landroid/location/GeocoderParams;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/location/GeocoderParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GeocoderParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GeocoderParams;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/location/GeocoderParams;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/location/GeocoderParams$1;->newArray(I)[Landroid/location/GeocoderParams;

    move-result-object p1

    return-object p1
.end method
