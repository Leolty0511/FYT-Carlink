.class public Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;
.super Lcom/google/android/projection/sink/sensors/SensorCollectorBase;
.source "SourceFile"


# static fields
.field private static final GPS_UPDATE_INTERVAL:I = 0x3e8


# instance fields
.field private final mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

.field private final mEnabled:Z

.field private final mGpsStatusUpdate:Ljava/lang/Runnable;

.field private mLocation:Landroid/location/Location;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLocationProvider:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

.field private final mSimulateMissingAccuracy:Z

.field private final mSimulateMissingBearing:Z

.field private final mSimulateMissingSpeed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/projection/sink/debug/DebugContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$1;-><init>(Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mGpsStatusUpdate:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$2;-><init>(Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mLocationListener:Landroid/location/LocationListener;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/google/android/projection/sink/debug/DebugContext;->getSimulatedLocationProvider()Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mLocationProvider:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 27
    .line 28
    new-instance p2, Lcom/google/android/projection/sink/settings/Settings;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Lcom/google/android/projection/sink/settings/Settings;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/google/android/projection/sink/settings/Settings;->isGpsSimulationEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mEnabled:Z

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/google/android/projection/sink/settings/Settings;->isSimulateMissingAccuracyEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mSimulateMissingAccuracy:Z

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/google/android/projection/sink/settings/Settings;->isSimulateMissingBearingEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mSimulateMissingBearing:Z

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/google/android/projection/sink/settings/Settings;->isSimulateMissingSpeedEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mSimulateMissingSpeed:Z

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mLocationProvider:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mEnabled:Z

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mSimulateMissingAccuracy:Z

    .line 66
    .line 67
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mSimulateMissingBearing:Z

    .line 68
    .line 69
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mSimulateMissingSpeed:Z

    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mSimulateMissingAccuracy:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mSimulateMissingBearing:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mSimulateMissingSpeed:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mLocation:Landroid/location/Location;

    return-object p1
.end method


# virtual methods
.method public discoverSensorsImpl(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const/16 v0, 0x15

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    const/16 v0, 0xd

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public registerSensorsImpl()V
    .locals 2

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->isHandled(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mGpsStatusUpdate:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->post(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->isHandled(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mLocationProvider:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mLocationListener:Landroid/location/LocationListener;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->requestUpdates(Landroid/location/LocationListener;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public sendUpdateImpl(Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;I)Z
    .locals 11

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    const/4 v3, 0x6

    .line 7
    const/4 v4, 0x1

    .line 8
    const/16 v5, 0x8

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    const/4 v10, 0x0

    .line 15
    move-object v2, p1

    .line 16
    invoke-virtual/range {v2 .. v10}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportGpsSatelliteData(IZI[I[F[Z[F[F)V

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    if-ne p2, v1, :cond_1

    .line 21
    .line 22
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mLocation:Landroid/location/Location;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportLocation(Landroid/location/Location;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mLocation:Landroid/location/Location;

    .line 30
    .line 31
    invoke-static {p2, p1, v0}, Lcom/google/android/projection/sink/sensors/LocationSensors;->reportKeyboardLockout(Lcom/google/android/projection/sink/debug/DebugContext;Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;Landroid/location/Location;)V

    .line 32
    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    const/16 v0, 0xd

    .line 36
    .line 37
    if-ne p2, v0, :cond_2

    .line 38
    .line 39
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mLocation:Landroid/location/Location;

    .line 42
    .line 43
    invoke-static {p2, p1, v0}, Lcom/google/android/projection/sink/sensors/LocationSensors;->reportKeyboardLockout(Lcom/google/android/projection/sink/debug/DebugContext;Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;Landroid/location/Location;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public unregisterSensorsImpl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mLocationProvider:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mLocationListener:Landroid/location/LocationListener;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->removeUpdates(Landroid/location/LocationListener;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->mGpsStatusUpdate:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
