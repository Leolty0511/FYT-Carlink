.class public final Landroid/hardware/location/GeofenceHardware;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;,
        Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    }
.end annotation


# static fields
.field public static final GEOFENCE_ENTERED:I = 0x1

.field public static final GEOFENCE_ERROR_ID_EXISTS:I = 0x2

.field public static final GEOFENCE_ERROR_ID_UNKNOWN:I = 0x3

.field public static final GEOFENCE_ERROR_INSUFFICIENT_MEMORY:I = 0x6

.field public static final GEOFENCE_ERROR_INVALID_TRANSITION:I = 0x4

.field public static final GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x1

.field public static final GEOFENCE_EXITED:I = 0x2

.field public static final GEOFENCE_FAILURE:I = 0x5

.field public static final GEOFENCE_SUCCESS:I = 0x0

.field public static final GEOFENCE_UNCERTAIN:I = 0x4

.field public static final MONITORING_TYPE_FUSED_HARDWARE:I = 0x1

.field public static final MONITORING_TYPE_GPS_HARDWARE:I = 0x0

.field public static final MONITOR_CURRENTLY_AVAILABLE:I = 0x0

.field public static final MONITOR_CURRENTLY_UNAVAILABLE:I = 0x1

.field public static final MONITOR_UNSUPPORTED:I = 0x2

.field static final NUM_MONITORS:I = 0x2

.field public static final SOURCE_TECHNOLOGY_BLUETOOTH:I = 0x10

.field public static final SOURCE_TECHNOLOGY_CELL:I = 0x8

.field public static final SOURCE_TECHNOLOGY_GNSS:I = 0x1

.field public static final SOURCE_TECHNOLOGY_SENSORS:I = 0x4

.field public static final SOURCE_TECHNOLOGY_WIFI:I = 0x2


# instance fields
.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/location/GeofenceHardwareCallback;",
            "Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/location/GeofenceHardwareMonitorCallback;",
            "Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/hardware/location/IGeofenceHardware;


# direct methods
.method public constructor <init>(Landroid/hardware/location/IGeofenceHardware;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    .line 17
    .line 18
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic access$000(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/GeofenceHardware;->removeCallback(Landroid/hardware/location/GeofenceHardwareCallback;)V

    return-void
.end method

.method private getCallbackWrapper(Landroid/hardware/location/GeofenceHardwareCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;-><init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method

.method private getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;-><init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method

.method private removeCallback(Landroid/hardware/location/GeofenceHardwareCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method private removeMonitorCallback(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method


# virtual methods
.method public addGeofence(IILandroid/hardware/location/GeofenceHardwareRequest;Landroid/hardware/location/GeofenceHardwareCallback;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p3}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    .line 8
    .line 9
    new-instance v1, Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .line 10
    .line 11
    invoke-direct {v1, p1, p3}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;-><init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p4}, Landroid/hardware/location/GeofenceHardware;->getCallbackWrapper(Landroid/hardware/location/GeofenceHardwareCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v0, p2, v1, p1}, Landroid/hardware/location/IGeofenceHardware;->addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p2, "Geofence Request type not supported"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public getMonitoringTypes()[I
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardware;->getMonitoringTypes()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getStatusOfMonitoringType(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IGeofenceHardware;->getStatusOfMonitoringType(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x2

    return p1
.end method

.method public pauseGeofence(II)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IGeofenceHardware;->pauseGeofence(II)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerForMonitorStateChangeCallback(ILandroid/hardware/location/GeofenceHardwareMonitorCallback;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IGeofenceHardware;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p1

    .line 12
    :catch_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public removeGeofence(II)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IGeofenceHardware;->removeGeofence(II)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public resumeGeofence(III)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/location/IGeofenceHardware;->resumeGeofence(III)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/GeofenceHardwareMonitorCallback;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    .line 3
    .line 4
    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-interface {v1, p1, v2}, Landroid/hardware/location/IGeofenceHardware;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->removeMonitorCallback(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    :cond_0
    return v0
.end method
