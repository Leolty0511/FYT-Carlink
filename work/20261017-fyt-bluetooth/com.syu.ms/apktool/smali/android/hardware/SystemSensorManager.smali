.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$BaseEventQueue;
    }
.end annotation


# static fields
.field private static final sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private static sSensorModuleInitialized:Z = false

.field private static final sSensorModuleLock:Ljava/lang/Object;


# instance fields
.field private final mMainLooper:Landroid/os/Looper;

.field private final mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdkLevel:I

.field private final mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sSensorModuleLock:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 4
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 6
    sget-object p1, Landroid/hardware/SystemSensorManager;->sSensorModuleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7
    :try_start_0
    sget-boolean p2, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 8
    sput-boolean p2, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 9
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 10
    sget-object p2, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 11
    :cond_0
    new-instance v1, Landroid/hardware/Sensor;

    invoke-direct {v1}, Landroid/hardware/Sensor;-><init>()V

    .line 12
    invoke-static {v1, v0}, Landroid/hardware/SystemSensorManager;->nativeGetNextSensor(Landroid/hardware/Sensor;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 13
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v2, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    if-gtz v0, :cond_0

    .line 15
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static synthetic access$100(Landroid/hardware/SystemSensorManager;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return p0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeGetNextSensor(Landroid/hardware/Sensor;I)I
.end method


# virtual methods
.method public cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p2}, Landroid/hardware/Sensor;->getReportingMode(Landroid/hardware/Sensor;)I

    move-result v1

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    if-eq v1, v2, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    if-eqz v2, :cond_3

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeAllSensors()Z

    move-result p2

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->hasSensors()Z

    move-result p3

    if-nez p3, :cond_2

    .line 7
    iget-object p3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose()V

    .line 9
    :cond_2
    monitor-exit v1

    return p2

    .line 10
    :cond_3
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3
    monitor-exit v0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->flush()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-static {p2}, Landroid/hardware/Sensor;->getReportingMode(Landroid/hardware/Sensor;)I

    move-result v1

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    if-ne v1, v2, :cond_1

    const-string p1, "SensorManager"

    const-string p2, "Trigger Sensors should use the requestTriggerSensor."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-ltz p5, :cond_6

    if-gez p3, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    if-nez v2, :cond_5

    if-eqz p4, :cond_3

    .line 5
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p4

    goto :goto_0

    :cond_3
    iget-object p4, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 6
    :goto_0
    new-instance v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    invoke-direct {v2, p1, p4, p0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V

    .line 7
    invoke-virtual {v2, p2, p3, p5, p6}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensor(Landroid/hardware/Sensor;III)Z

    move-result p2

    if-nez p2, :cond_4

    .line 8
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose()V

    .line 9
    monitor-exit v1

    return v0

    .line 10
    :cond_4
    iget-object p2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 11
    monitor-exit v1

    return p1

    .line 12
    :cond_5
    invoke-virtual {v2, p2, p3, p5, p6}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensor(Landroid/hardware/Sensor;III)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_1
    const-string p1, "SensorManager"

    const-string p2, "maxBatchReportLatencyUs and delayUs should be non-negative"

    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    :goto_2
    const-string p1, "SensorManager"

    const-string/jumbo p2, "sensor or listener is null"

    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 4

    if-eqz p2, :cond_3

    .line 1
    invoke-static {p2}, Landroid/hardware/Sensor;->getReportingMode(Landroid/hardware/Sensor;)I

    move-result v0

    sget v1, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    if-nez v1, :cond_2

    .line 4
    new-instance v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v1, p1, v3, p0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V

    .line 5
    invoke-virtual {v1, p2, v2, v2, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensor(Landroid/hardware/Sensor;III)Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose()V

    .line 7
    monitor-exit v0

    return v2

    .line 8
    :cond_1
    iget-object p2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 9
    monitor-exit v0

    return p1

    .line 10
    :cond_2
    invoke-virtual {v1, p2, v2, v2, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensor(Landroid/hardware/Sensor;III)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sensor cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p2}, Landroid/hardware/Sensor;->getReportingMode(Landroid/hardware/Sensor;)I

    move-result v0

    sget v1, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeAllSensors()Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, p2, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->hasSensors()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    iget-object p2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose()V

    .line 9
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
