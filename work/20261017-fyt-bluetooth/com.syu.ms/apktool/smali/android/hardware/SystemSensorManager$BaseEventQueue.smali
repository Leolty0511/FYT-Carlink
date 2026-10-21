.class abstract Landroid/hardware/SystemSensorManager$BaseEventQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseEventQueue"
.end annotation


# instance fields
.field private final mActiveSensors:Landroid/util/SparseBooleanArray;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field public final mFirstEvent:Landroid/util/SparseBooleanArray;

.field public final mManager:Landroid/hardware/SystemSensorManager;

.field private final mScratch:[F

.field public final mSensorAccuracies:Landroid/util/SparseIntArray;

.field private nSensorEventQueue:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    .line 4
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mFirstEvent:Landroid/util/SparseBooleanArray;

    .line 5
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 6
    iput-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mScratch:[F

    .line 7
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    invoke-direct {p0, p0, p1, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInitBaseEventQueue(Landroid/hardware/SystemSensorManager$BaseEventQueue;Landroid/os/MessageQueue;[F)I

    move-result p1

    iput p1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    const-string p1, "dispose"

    .line 8
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 9
    iput-object p2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    return-void
.end method

.method private disableSensor(Landroid/hardware/Sensor;)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result p1

    invoke-static {v0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDisableSensor(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method private dispose(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p1}, Ldalvik/system/CloseGuard;->close()V

    .line 5
    :cond_1
    iget p1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDestroySensorEventQueue(I)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    :cond_2
    return-void
.end method

.method private enableSensor(Landroid/hardware/Sensor;III)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result p1

    invoke-static {v0, p1, p2, p3, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeEnableSensor(IIIII)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method private static native nativeDestroySensorEventQueue(I)V
.end method

.method private static native nativeDisableSensor(II)I
.end method

.method private static native nativeEnableSensor(IIIII)I
.end method

.method private static native nativeFlushSensor(I)I
.end method

.method private native nativeInitBaseEventQueue(Landroid/hardware/SystemSensorManager$BaseEventQueue;Landroid/os/MessageQueue;[F)I
.end method


# virtual methods
.method public addSensor(Landroid/hardware/Sensor;III)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensorEvent(Landroid/hardware/Sensor;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;III)I

    move-result p4

    if-eqz p4, :cond_2

    if-eqz p3, :cond_1

    if-lez p3, :cond_2

    .line 6
    invoke-direct {p0, p1, p2, v2, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;III)I

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    return v2

    :cond_2
    return v3
.end method

.method public abstract addSensorEvent(Landroid/hardware/Sensor;)V
.end method

.method public abstract dispatchFlushCompleteEvent(I)V
.end method

.method public abstract dispatchSensorEvent(I[FIJ)V
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V

    return-void
.end method

.method public finalize()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flush()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeFlushSensor(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public hasSensors()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public removeAllSensors()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 3
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 4
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$000()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    if-eqz v3, :cond_0

    .line 5
    invoke-direct {p0, v3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    .line 6
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 7
    invoke-virtual {p0, v3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public removeSensor(Landroid/hardware/Sensor;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    .line 4
    :cond_0
    iget-object p2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public abstract removeSensorEvent(Landroid/hardware/Sensor;)V
.end method
