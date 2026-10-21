.class public Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mSensors:Lcom/google/android/projection/protocol/SensorSource;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/SensorSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public reportAccelerometerData(ZFZFZF)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/projection/protocol/SensorSource;->reportAccelerometerData(ZFZFZF)V

    return-void
.end method

.method public reportCompassData(IZIZI)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/projection/protocol/SensorSource;->reportCompassData(IZIZI)V

    return-void
.end method

.method public reportDiagnosticsData([B)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/SensorSource;->reportDiagnosticsData([B)V

    return-void
.end method

.method public reportDrivingStatusData(I)V
    .locals 2

    .line 1
    const-string v0, "===========>> reportDrivingStatusData :"

    .line 2
    .line 3
    const-string v1, "Auto"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroid/app/m;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/SensorSource;->reportDrivingStatusData(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public reportEnvironmentData(FF)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/projection/protocol/SensorSource;->reportEnvironmentData(ZFZFZI)V

    return-void
.end method

.method public reportFuelData(IIZ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x1

    move v2, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/projection/protocol/SensorSource;->reportFuelData(ZIZIZZ)V

    return-void
.end method

.method public reportGearData(I)V
    .locals 2

    .line 1
    const-string v0, "===========>> reportGearData :"

    .line 2
    .line 3
    const-string v1, "Auto"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroid/app/m;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/SensorSource;->reportGearData(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public reportGpsSatelliteData(IZI[I[F[Z[F[F)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/projection/protocol/SensorSource;->reportGpsSatelliteData(IZI[I[F[Z[F[F)V

    return-void
.end method

.method public reportGyroscopeData(ZFZFZF)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/projection/protocol/SensorSource;->reportGyroscopeData(ZFZFZF)V

    return-void
.end method

.method public reportHvacData(FF)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, v1, p2}, Lcom/google/android/projection/protocol/SensorSource;->reportHvacData(ZFZF)V

    return-void
.end method

.method public reportLocation(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/SensorSource;->reportLocation(Landroid/location/Location;)V

    return-void
.end method

.method public reportNightModeData(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/SensorSource;->reportNightModeData(Z)V

    return-void
.end method

.method public reportOdometerData(D)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "===========>> reportOdometerData :"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Auto"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    move-wide v3, p1

    .line 26
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/projection/protocol/SensorSource;->reportOdometerData(DZD)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public reportParkingBrakeData(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "===========>> reportParkingBrakeData :"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Auto"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/SensorSource;->reportParkingBrakeData(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public reportRpmData(D)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "===========>> reportRpmData :"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Auto"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/google/android/projection/protocol/SensorSource;->reportRpmData(D)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public reportSpeedData(F)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "===========>> reportSpeedData :"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Auto"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->mSensors:Lcom/google/android/projection/protocol/SensorSource;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    move v3, p1

    .line 27
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/projection/protocol/SensorSource;->reportSpeedData(FZZZI)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
