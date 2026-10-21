.class final Landroid/location/GnssMeasurementsEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssMeasurementsEvent;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurementsEvent;
    .locals 3

    .line 2
    const-class v0, Landroid/location/GnssMeasurementsEvent$1;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/GnssClock;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5
    new-array v1, v1, [Landroid/location/GnssMeasurement;

    .line 6
    sget-object v2, Landroid/location/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 7
    new-instance p1, Landroid/location/GnssMeasurementsEvent;

    invoke-direct {p1, v0, v1}, Landroid/location/GnssMeasurementsEvent;-><init>(Landroid/location/GnssClock;[Landroid/location/GnssMeasurement;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementsEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurementsEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GnssMeasurementsEvent;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/location/GnssMeasurementsEvent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementsEvent$1;->newArray(I)[Landroid/location/GnssMeasurementsEvent;

    move-result-object p1

    return-object p1
.end method
