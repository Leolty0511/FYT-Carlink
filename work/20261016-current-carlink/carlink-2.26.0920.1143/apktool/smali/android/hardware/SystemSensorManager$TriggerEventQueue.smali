.class final Landroid/hardware/SystemSensorManager$TriggerEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TriggerEventQueue"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/TriggerEventListener;

.field private final mTriggerEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/TriggerEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    new-instance p2, Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    .line 11
    .line 12
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/hardware/TriggerEvent;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->access$500(Landroid/hardware/SystemSensorManager;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Landroid/hardware/TriggerEvent;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v1

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
.end method

.method public dispatchFlushCompleteEvent(I)V
    .locals 0

    return-void
.end method

.method public dispatchSensorEvent(I[FIJ)V
    .locals 3

    .line 1
    iget-object p3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    .line 2
    .line 3
    invoke-static {p3}, Landroid/hardware/SystemSensorManager;->access$400(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    check-cast p3, Landroid/hardware/Sensor;

    .line 16
    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/hardware/TriggerEvent;

    .line 30
    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    const-string p1, "SensorManager"

    .line 35
    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p4, "Error: Trigger Event is null for Sensor: "

    .line 39
    .line 40
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    iget-object v0, p1, Landroid/hardware/TriggerEvent;->values:[F

    .line 55
    .line 56
    array-length v1, v0

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 59
    .line 60
    .line 61
    iput-wide p4, p1, Landroid/hardware/TriggerEvent;->timestamp:J

    .line 62
    .line 63
    iput-object p3, p1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    .line 64
    .line 65
    iget-object p2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    .line 66
    .line 67
    iget-object p4, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    .line 68
    .line 69
    invoke-virtual {p2, p4, p3, v2}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Landroid/hardware/TriggerEventListener;->onTrigger(Landroid/hardware/TriggerEvent;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw p1
.end method

.method public removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method
