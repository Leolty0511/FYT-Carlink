.class public Landroid/hardware/location/GeofenceHardwareService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/hardware/location/GeofenceHardwareService$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/hardware/location/GeofenceHardwareService$1;-><init>(Landroid/hardware/location/GeofenceHardwareService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mBinder:Landroid/os/IBinder;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/hardware/location/GeofenceHardwareService;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V

    return-void
.end method

.method private checkPermission(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->getAllowedResolutionLevel(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 8
    .line 9
    invoke-virtual {p2, p3}, Landroid/hardware/location/GeofenceHardwareImpl;->getMonitoringResolutionLevel(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-lt p1, p2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    .line 17
    .line 18
    const-string p2, "Insufficient permissions to access hardware geofence for type: "

    .line 19
    .line 20
    invoke-static {p2, p3}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Landroid/hardware/location/GeofenceHardwareService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    iput-object p0, p0, Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 8
    .line 9
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
