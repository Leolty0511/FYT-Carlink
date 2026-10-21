.class Landroid/hardware/location/GeofenceHardwareService$1;
.super Landroid/hardware/location/IGeofenceHardware$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareService;


# direct methods
.method public constructor <init>(Landroid/hardware/location/GeofenceHardwareService;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-direct {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.LOCATION_HARDWARE"

    .line 8
    .line 9
    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v0, v1, v2, p1}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareImpl;->addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public getMonitoringTypes()[I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.LOCATION_HARDWARE"

    .line 8
    .line 9
    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getMonitoringTypes()[I

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public getStatusOfMonitoringType(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.LOCATION_HARDWARE"

    .line 8
    .line 9
    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->getStatusOfMonitoringType(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public pauseGeofence(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.LOCATION_HARDWARE"

    .line 8
    .line 9
    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->pauseGeofence(II)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.LOCATION_HARDWARE"

    .line 8
    .line 9
    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v0, v1, v2, p1}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public removeGeofence(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.LOCATION_HARDWARE"

    .line 8
    .line 9
    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->removeGeofence(II)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public resumeGeofence(III)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.LOCATION_HARDWARE"

    .line 8
    .line 9
    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareImpl;->resumeGeofence(III)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V

    return-void
.end method

.method public setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->setGpsHardwareGeofence(Landroid/location/IGpsGeofenceHardware;)V

    return-void
.end method

.method public unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.LOCATION_HARDWARE"

    .line 8
    .line 9
    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v0, v1, v2, p1}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method
