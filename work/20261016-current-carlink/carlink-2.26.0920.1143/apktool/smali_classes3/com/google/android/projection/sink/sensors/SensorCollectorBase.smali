.class public abstract Lcom/google/android/projection/sink/sensors/SensorCollectorBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mRegisterdSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->mRegisterdSensors:Ljava/util/Set;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final discoverSensors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->discoverSensorsImpl(Ljava/util/Set;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public abstract discoverSensorsImpl(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public isHandled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->mRegisterdSensors:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final registerSensors(Ljava/util/Set;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->mRegisterdSensors:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->registerSensorsImpl()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public abstract registerSensorsImpl()V
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reportAvailable(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final sendUpdate(Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->isHandled(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->sendUpdateImpl(Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public abstract sendUpdateImpl(Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;I)Z
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public final unregisterSensors()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->unregisterSensorsImpl()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->mRegisterdSensors:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public abstract unregisterSensorsImpl()V
.end method
