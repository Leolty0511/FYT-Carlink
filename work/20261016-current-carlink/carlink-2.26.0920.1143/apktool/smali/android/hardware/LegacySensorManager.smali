.class final Landroid/hardware/LegacySensorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/LegacySensorManager$LmsFilter;,
        Landroid/hardware/LegacySensorManager$LegacyListener;
    }
.end annotation


# static fields
.field private static sInitialized:Z

.field private static sRotation:I

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private final mLegacyListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorListener;",
            "Landroid/hardware/LegacySensorManager$LegacyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 3

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
    iput-object v0, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 12
    .line 13
    const-class p1, Landroid/hardware/SensorManager;

    .line 14
    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    sget-boolean v0, Landroid/hardware/LegacySensorManager;->sInitialized:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string/jumbo v0, "window"

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    :try_start_1
    new-instance v1, Landroid/hardware/LegacySensorManager$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Landroid/hardware/LegacySensorManager$1;-><init>(Landroid/hardware/LegacySensorManager;)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    sput v0, Landroid/hardware/LegacySensorManager;->sRotation:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit p1

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw v0
.end method

.method public static getRotation()I
    .locals 2

    .line 1
    const-class v0, Landroid/hardware/SensorManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Landroid/hardware/LegacySensorManager;->sRotation:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public static onRotationChanged(I)V
    .locals 1

    .line 1
    const-class v0, Landroid/hardware/SensorManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput p0, Landroid/hardware/LegacySensorManager;->sRotation:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method private registerLegacyListener(IILandroid/hardware/SensorListener;II)Z
    .locals 2

    .line 1
    and-int/2addr p4, p1

    .line 2
    if-eqz p4, :cond_2

    .line 3
    .line 4
    iget-object p4, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 5
    .line 6
    invoke-virtual {p4, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    iget-object p4, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 13
    .line 14
    monitor-enter p4

    .line 15
    :try_start_0
    iget-object v0, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/hardware/LegacySensorManager$LegacyListener;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Landroid/hardware/LegacySensorManager$LegacyListener;

    .line 26
    .line 27
    invoke-direct {v0, p3}, Landroid/hardware/LegacySensorManager$LegacyListener;-><init>(Landroid/hardware/SensorListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->registerSensor(I)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 42
    .line 43
    invoke-virtual {p1, v0, p2, p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p1, 0x1

    .line 49
    :goto_0
    monitor-exit p4

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p1

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    :goto_1
    return p1
.end method

.method private unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V
    .locals 1

    .line 1
    and-int/2addr p4, p1

    .line 2
    if-eqz p4, :cond_1

    .line 3
    .line 4
    iget-object p4, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 5
    .line 6
    invoke-virtual {p4, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object p4, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 13
    .line 14
    monitor-enter p4

    .line 15
    :try_start_0
    iget-object v0, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/hardware/LegacySensorManager$LegacyListener;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->unregisterSensor(I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 32
    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasSensors()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_0
    monitor-exit p4

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p1

    .line 52
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getSensors()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/hardware/Sensor;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eq v2, v3, :cond_2

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    if-eq v2, v3, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x3

    .line 35
    if-eq v2, v3, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    or-int/lit16 v1, v1, 0x81

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    or-int/lit8 v1, v1, 0x8

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    or-int/lit8 v1, v1, 0x2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    return v1
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    move-object v1, p0

    .line 8
    move-object v4, p1

    .line 9
    move v5, p2

    .line 10
    move v6, p3

    .line 11
    invoke-direct/range {v1 .. v6}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    move v1, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v1, v2

    .line 21
    :goto_0
    const/16 v4, 0x8

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    move-object v3, p0

    .line 25
    move-object v6, p1

    .line 26
    move v7, p2

    .line 27
    move v8, p3

    .line 28
    invoke-direct/range {v3 .. v8}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_3

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move v1, v0

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    :goto_1
    move v1, v2

    .line 40
    :goto_2
    const/16 v4, 0x80

    .line 41
    .line 42
    const/4 v5, 0x3

    .line 43
    move-object v3, p0

    .line 44
    move-object v6, p1

    .line 45
    move v7, p2

    .line 46
    move v8, p3

    .line 47
    invoke-direct/range {v3 .. v8}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_5

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    move v1, v0

    .line 57
    goto :goto_4

    .line 58
    :cond_5
    :goto_3
    move v1, v2

    .line 59
    :goto_4
    const/4 v4, 0x1

    .line 60
    const/4 v5, 0x3

    .line 61
    move-object v3, p0

    .line 62
    move-object v6, p1

    .line 63
    move v7, p2

    .line 64
    move v8, p3

    .line 65
    invoke-direct/range {v3 .. v8}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_7

    .line 70
    .line 71
    if-eqz v1, :cond_6

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_6
    move v1, v0

    .line 75
    goto :goto_6

    .line 76
    :cond_7
    :goto_5
    move v1, v2

    .line 77
    :goto_6
    const/4 v4, 0x4

    .line 78
    const/4 v5, 0x7

    .line 79
    move-object v3, p0

    .line 80
    move-object v6, p1

    .line 81
    move v7, p2

    .line 82
    move v8, p3

    .line 83
    invoke-direct/range {v3 .. v8}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_8

    .line 88
    .line 89
    if-eqz v1, :cond_9

    .line 90
    .line 91
    :cond_8
    move v0, v2

    .line 92
    :cond_9
    return v0
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 7
    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-direct {p0, v2, v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x80

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    invoke-direct {p0, v0, v2, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v1, v2, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    const/4 v1, 0x7

    .line 25
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
