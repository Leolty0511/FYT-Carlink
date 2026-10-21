.class public Landroid/hardware/location/GeofenceHardwareMonitorEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/GeofenceHardwareMonitorEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLocation:Landroid/location/Location;

.field private final mMonitoringStatus:I

.field private final mMonitoringType:I

.field private final mSourceTechnologies:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;

    invoke-direct {v0}, Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILandroid/location/Location;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    .line 5
    .line 6
    iput p2, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    .line 7
    .line 8
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    .line 9
    .line 10
    iput-object p4, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

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

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getMonitoringStatus()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    return v0
.end method

.method public getMonitoringType()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    return v0
.end method

.method public getSourceTechnologies()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    .line 33
    .line 34
    aput-object v2, v0, v1

    .line 35
    .line 36
    const-string v1, "GeofenceHardwareMonitorEvent: type=%d, status=%d, sources=%d, location=%s"

    .line 37
    .line 38
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    .line 17
    .line 18
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
