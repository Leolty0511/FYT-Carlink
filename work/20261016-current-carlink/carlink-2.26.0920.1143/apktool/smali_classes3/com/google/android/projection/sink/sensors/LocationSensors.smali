.class public Lcom/google/android/projection/sink/sensors/LocationSensors;
.super Lcom/google/android/projection/sink/sensors/SensorCollectorBase;
.source "SourceFile"


# instance fields
.field private final mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

.field private mGpsStatus:Landroid/location/GpsStatus;

.field private final mGpsStatusListener:Landroid/location/GpsStatus$Listener;

.field private mLocation:Landroid/location/Location;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/projection/sink/debug/DebugContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/projection/sink/sensors/LocationSensors$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/sensors/LocationSensors$1;-><init>(Lcom/google/android/projection/sink/sensors/LocationSensors;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/sink/sensors/LocationSensors$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/sensors/LocationSensors$2;-><init>(Lcom/google/android/projection/sink/sensors/LocationSensors;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mLocationListener:Landroid/location/LocationListener;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 19
    .line 20
    const-string p2, "location"

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/location/LocationManager;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mLocationManager:Landroid/location/LocationManager;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/sink/sensors/LocationSensors;)Landroid/location/GpsStatus;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mGpsStatus:Landroid/location/GpsStatus;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/google/android/projection/sink/sensors/LocationSensors;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mGpsStatus:Landroid/location/GpsStatus;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/sensors/LocationSensors;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/google/android/projection/sink/sensors/LocationSensors;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method public static reportKeyboardLockout(Lcom/google/android/projection/sink/debug/DebugContext;Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;Landroid/location/Location;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/sink/debug/DebugContext;->getKeyboardLockoutMode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    if-eq p0, p2, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x2

    .line 11
    if-eq p0, p2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_UNRESTRICTED:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$DrivingStatus;->getNumber()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-virtual {p1, p0}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportDrivingStatusData(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_NO_KEYBOARD_INPUT:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$DrivingStatus;->getNumber()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {p1, p0}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportDrivingStatusData(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    if-eqz p2, :cond_4

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_4

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    float-to-double v0, p0

    .line 53
    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    cmpg-double p0, v0, v2

    .line 59
    .line 60
    if-gez p0, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_NO_KEYBOARD_INPUT:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$DrivingStatus;->getNumber()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-virtual {p1, p0}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportDrivingStatusData(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$DrivingStatus;->DRIVE_STATUS_UNRESTRICTED:Lcom/google/android/projection/proto/Protos$DrivingStatus;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$DrivingStatus;->getNumber()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-virtual {p1, p0}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportDrivingStatusData(I)V

    .line 80
    .line 81
    .line 82
    :goto_1
    return-void
.end method


# virtual methods
.method public discoverSensorsImpl(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mLocationManager:Landroid/location/LocationManager;

    .line 2
    .line 3
    const-string v1, "gps"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x15

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    const/16 v0, 0xd

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public registerSensorsImpl()V
    .locals 7

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
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mLocationManager:Landroid/location/LocationManager;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->isHandled(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mLocationManager:Landroid/location/LocationManager;

    .line 24
    .line 25
    const-string v2, "gps"

    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    iget-object v6, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mLocationListener:Landroid/location/LocationListener;

    .line 31
    .line 32
    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public sendUpdateImpl(Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;I)Z
    .locals 12

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p2, v0, :cond_4

    .line 6
    .line 7
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mGpsStatus:Landroid/location/GpsStatus;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    move v4, v1

    .line 21
    move v6, v4

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/location/GpsSatellite;

    .line 33
    .line 34
    add-int/lit8 v6, v6, 0x1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-array v7, v6, [I

    .line 46
    .line 47
    new-array v8, v6, [F

    .line 48
    .line 49
    new-array v9, v6, [Z

    .line 50
    .line 51
    new-array v10, v6, [F

    .line 52
    .line 53
    new-array v11, v6, [F

    .line 54
    .line 55
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mGpsStatus:Landroid/location/GpsStatus;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/location/GpsSatellite;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getPrn()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    aput v3, v7, v1

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    aput v3, v8, v1

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    aput-boolean v3, v9, v1

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getAzimuth()F

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    aput v3, v10, v1

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getElevation()F

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    aput v0, v11, v1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    const/4 v5, 0x1

    .line 109
    move-object v3, p1

    .line 110
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportGpsSatelliteData(IZI[I[F[Z[F[F)V

    .line 111
    .line 112
    .line 113
    return v2

    .line 114
    :cond_4
    if-ne p2, v2, :cond_6

    .line 115
    .line 116
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mLocation:Landroid/location/Location;

    .line 117
    .line 118
    if-nez p2, :cond_5

    .line 119
    .line 120
    return v1

    .line 121
    :cond_5
    invoke-virtual {p1, p2}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportLocation(Landroid/location/Location;)V

    .line 122
    .line 123
    .line 124
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mLocation:Landroid/location/Location;

    .line 127
    .line 128
    invoke-static {p2, p1, v0}, Lcom/google/android/projection/sink/sensors/LocationSensors;->reportKeyboardLockout(Lcom/google/android/projection/sink/debug/DebugContext;Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;Landroid/location/Location;)V

    .line 129
    .line 130
    .line 131
    return v2

    .line 132
    :cond_6
    const/16 v0, 0xd

    .line 133
    .line 134
    if-ne p2, v0, :cond_7

    .line 135
    .line 136
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 137
    .line 138
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mLocation:Landroid/location/Location;

    .line 139
    .line 140
    invoke-static {p2, p1, v0}, Lcom/google/android/projection/sink/sensors/LocationSensors;->reportKeyboardLockout(Lcom/google/android/projection/sink/debug/DebugContext;Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;Landroid/location/Location;)V

    .line 141
    .line 142
    .line 143
    return v2

    .line 144
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 145
    .line 146
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 147
    .line 148
    .line 149
    throw p1
.end method

.method public unregisterSensorsImpl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mLocationManager:Landroid/location/LocationManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mLocationListener:Landroid/location/LocationListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mLocationManager:Landroid/location/LocationManager;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/LocationSensors;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
