.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$InjectEventQueue;,
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$BaseEventQueue;
    }
.end annotation


# static fields
.field private static final DEBUG_DYNAMIC_SENSOR:Z = true

.field private static final MAX_LISTENER_COUNT:I = 0x80

.field private static final MIN_DIRECT_CHANNEL_BUFFER_SIZE:I = 0x68

.field private static sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue; = null
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sNativeClassInited:Z = false
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDynamicSensorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorManager$DynamicSensorCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mDynamicSensorListDirty:Z

.field private mFullDynamicSensorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandleToSensor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;

.field private final mNativeInstance:J

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

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 20
    .line 21
    new-instance v1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    .line 27
    .line 28
    new-instance v1, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 34
    .line 35
    new-instance v1, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 41
    .line 42
    new-instance v1, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    .line 48
    .line 49
    sget-object v1, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v1

    .line 52
    :try_start_0
    sget-boolean v2, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 53
    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 57
    .line 58
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 59
    .line 60
    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 69
    .line 70
    iput p2, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 71
    .line 72
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Landroid/hardware/SystemSensorManager;->nativeCreate(Ljava/lang/String;)J

    .line 79
    .line 80
    .line 81
    move-result-wide p1

    .line 82
    iput-wide p1, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    :goto_0
    new-instance p2, Landroid/hardware/Sensor;

    .line 86
    .line 87
    invoke-direct {p2}, Landroid/hardware/Sensor;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 91
    .line 92
    invoke-static {v0, v1, p2, p1}, Landroid/hardware/SystemSensorManager;->nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_1

    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    add-int/lit8 p1, p1, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    throw p1
.end method

.method public static synthetic access$002(Landroid/hardware/SystemSensorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    return p1
.end method

.method public static synthetic access$100(Landroid/hardware/SystemSensorManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    return-void
.end method

.method public static synthetic access$200(Landroid/hardware/SystemSensorManager;)J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    return-wide v0
.end method

.method public static synthetic access$300(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/hardware/SystemSensorManager;)I
    .locals 0

    iget p0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return p0
.end method

.method private cleanupSensorConnection(Landroid/hardware/Sensor;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getReportingMode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x2

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 25
    .line 26
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/hardware/TriggerEventListener;

    .line 50
    .line 51
    const-string v3, "SensorManager"

    .line 52
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string/jumbo v5, "removed trigger listener"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v5, " due to sensor disconnection"

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    invoke-virtual {p0, v2, p1, v3}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    monitor-exit v0

    .line 89
    goto :goto_2

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p1

    .line 93
    :cond_1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 94
    .line 95
    monitor-enter v0

    .line 96
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    .line 97
    .line 98
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_2

    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Landroid/hardware/SensorEventListener;

    .line 122
    .line 123
    const-string v3, "SensorManager"

    .line 124
    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string/jumbo v5, "removed event listener"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v5, " due to sensor disconnection"

    .line 144
    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v2, p1}, Landroid/hardware/SystemSensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    monitor-exit v0

    .line 160
    :goto_2
    return-void

    .line 161
    :catchall_1
    move-exception p1

    .line 162
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    throw p1
.end method

.method private static diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ge v0, v3, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v1, v3, :cond_0

    .line 16
    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/hardware/Sensor;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Landroid/hardware/Sensor;

    .line 32
    .line 33
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getHandle()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-le v3, v5, :cond_2

    .line 38
    .line 39
    :cond_0
    if-eqz p4, :cond_1

    .line 40
    .line 41
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    :goto_1
    move v2, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ge v1, v3, :cond_6

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-ge v0, v3, :cond_3

    .line 63
    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Landroid/hardware/Sensor;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Landroid/hardware/Sensor;

    .line 79
    .line 80
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getHandle()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-ge v3, v5, :cond_6

    .line 85
    .line 86
    :cond_3
    if-eqz p3, :cond_4

    .line 87
    .line 88
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_4
    if-eqz p2, :cond_5

    .line 96
    .line 97
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-ge v1, v3, :cond_8

    .line 112
    .line 113
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-ge v0, v3, :cond_8

    .line 118
    .line 119
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Landroid/hardware/Sensor;

    .line 124
    .line 125
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Landroid/hardware/Sensor;

    .line 134
    .line 135
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-ne v3, v4, :cond_8

    .line 140
    .line 141
    if-eqz p2, :cond_7

    .line 142
    .line 143
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 151
    .line 152
    add-int/lit8 v0, v0, 0x1

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_8
    return v2
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeConfigDirectChannel(JIII)I
.end method

.method private static native nativeCreate(Ljava/lang/String;)J
.end method

.method private static native nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I
.end method

.method private static native nativeDestroyDirectChannel(JI)V
.end method

.method private static native nativeGetDynamicSensors(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native nativeIsDataInjectionEnabled(J)Z
.end method

.method private static native nativeSetOperationParameter(JII[F[I)I
.end method

.method private setupDynamicSensorBroadcastReceiver()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/hardware/SystemSensorManager$2;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/hardware/SystemSensorManager$2;-><init>(Landroid/hardware/SystemSensorManager;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    new-instance v0, Landroid/content/IntentFilter;

    .line 13
    .line 14
    const-string v1, "dynamic_sensor_change"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private teardownDynamicSensorBroadcastReceiver()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    return-void
.end method

.method private updateDynamicSensorList()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 5
    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 14
    .line 15
    invoke-static {v2, v3, v1}, Landroid/hardware/SystemSensorManager;->nativeGetDynamicSensors(JLjava/util/List;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v4, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {v5, v1, v2, v3, v4}, Landroid/hardware/SystemSensorManager;->diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    const-string v1, "SensorManager"

    .line 42
    .line 43
    const-string v5, "DYNS dynamic sensor list cached should be updated"

    .line 44
    .line 45
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroid/hardware/Sensor;

    .line 65
    .line 66
    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Landroid/os/Handler;

    .line 81
    .line 82
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_2

    .line 106
    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    check-cast v5, Ljava/util/Map$Entry;

    .line 112
    .line 113
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 118
    .line 119
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    if-nez v7, :cond_1

    .line 124
    .line 125
    move-object v5, v1

    .line 126
    goto :goto_2

    .line 127
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Landroid/os/Handler;

    .line 132
    .line 133
    :goto_2
    new-instance v7, Landroid/hardware/SystemSensorManager$1;

    .line 134
    .line 135
    invoke-direct {v7, p0, v3, v6, v4}, Landroid/hardware/SystemSensorManager$1;-><init>(Landroid/hardware/SystemSensorManager;Ljava/util/List;Landroid/hardware/SensorManager$DynamicSensorCallback;Ljava/util/List;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_3

    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Landroid/hardware/Sensor;

    .line 157
    .line 158
    invoke-direct {p0, v2}, Landroid/hardware/SystemSensorManager;->cleanupSensorConnection(Landroid/hardware/Sensor;)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    const/4 v1, 0x0

    .line 163
    iput-boolean v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 164
    .line 165
    :cond_4
    monitor-exit v0

    .line 166
    return-void

    .line 167
    :catchall_0
    move-exception v1

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    throw v1
.end method


# virtual methods
.method public cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 22
    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeAllSensors()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v2, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    :goto_0
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->hasSensors()Z

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-nez p3, :cond_2

    .line 43
    .line 44
    iget-object p3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose()V

    .line 50
    .line 51
    .line 52
    :cond_2
    monitor-exit v1

    .line 53
    return p2

    .line 54
    :cond_3
    monitor-exit v1

    .line 55
    return v0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1
.end method

.method public configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->isOpen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    if-ltz p3, :cond_6

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-gt p3, v0, :cond_6

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string/jumbo p2, "when sensor is null, rate can only be DIRECT_RATE_STOP"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 27
    .line 28
    const/4 p2, -0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    :goto_1
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->getNativeHandle()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {v0, v1, p1, p2, p3}, Landroid/hardware/SystemSensorManager;->nativeConfigDirectChannel(JIII)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 p2, 0x0

    .line 45
    if-nez p3, :cond_4

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    :cond_3
    return p2

    .line 51
    :cond_4
    if-lez p1, :cond_5

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_5
    move p1, p2

    .line 55
    :goto_2
    return p1

    .line 56
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string/jumbo p2, "rate parameter invalid"

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string p2, "channel is closed"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method public createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .locals 14

    .line 1
    move-object v6, p0

    .line 2
    const/16 v0, 0x68

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    .line 12
    .line 13
    .line 14
    move-result v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    invoke-virtual {p1}, Landroid/os/MemoryFile;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-lt v2, v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/MemoryFile;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-long v2, v0

    .line 26
    iget-wide v7, v6, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 27
    .line 28
    const/4 v11, 0x1

    .line 29
    const/4 v13, 0x0

    .line 30
    move-wide v9, v2

    .line 31
    invoke-static/range {v7 .. v13}, Landroid/hardware/SystemSensorManager;->nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-lez v0, :cond_0

    .line 36
    .line 37
    move-wide v4, v2

    .line 38
    move v2, v0

    .line 39
    move v3, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Landroid/animation/b;->u()V

    .line 42
    .line 43
    .line 44
    new-instance v1, Ljava/io/IOException;

    .line 45
    .line 46
    const-string v2, "create MemoryFile direct channel failed "

    .line 47
    .line 48
    invoke-static {v2, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Landroid/animation/b;->e(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    throw v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string v1, "Size of MemoryFile has to be greater than 104"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    const-string v1, "MemoryFile object is not valid"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_2
    if-eqz p2, :cond_8

    .line 77
    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getFormat()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    const/16 v3, 0x21

    .line 83
    .line 84
    if-ne v2, v3, :cond_7

    .line 85
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-ne v2, v1, :cond_6

    .line 91
    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-lt v1, v0, :cond_5

    .line 97
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getUsage()J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    const-wide/32 v2, 0x800000

    .line 103
    .line 104
    .line 105
    and-long/2addr v0, v2

    .line 106
    const-wide/16 v2, 0x0

    .line 107
    .line 108
    cmp-long v0, v0, v2

    .line 109
    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    int-to-long v0, v0

    .line 117
    iget-wide v7, v6, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 118
    .line 119
    const/4 v11, 0x2

    .line 120
    const/4 v12, -0x1

    .line 121
    move-wide v9, v0

    .line 122
    move-object/from16 v13, p2

    .line 123
    .line 124
    invoke-static/range {v7 .. v13}, Landroid/hardware/SystemSensorManager;->nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-lez v2, :cond_3

    .line 129
    .line 130
    const/4 v3, 0x2

    .line 131
    move-wide v4, v0

    .line 132
    :goto_0
    new-instance v7, Landroid/hardware/SensorDirectChannel;

    .line 133
    .line 134
    move-object v0, v7

    .line 135
    move-object v1, p0

    .line 136
    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorDirectChannel;-><init>(Landroid/hardware/SensorManager;IIJ)V

    .line 137
    .line 138
    .line 139
    return-object v7

    .line 140
    :cond_3
    invoke-static {}, Landroid/animation/b;->u()V

    .line 141
    .line 142
    .line 143
    new-instance v0, Ljava/io/IOException;

    .line 144
    .line 145
    const-string v1, "create HardwareBuffer direct channel failed "

    .line 146
    .line 147
    invoke-static {v1, v2}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v0}, Landroid/animation/b;->e(Ljava/io/IOException;)Ljava/io/UncheckedIOException;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    throw v0

    .line 159
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 160
    .line 161
    const-string v1, "HardwareBuffer must set usage flag USAGE_SENSOR_DIRECT_DATA"

    .line 162
    .line 163
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 168
    .line 169
    const-string v1, "Width if HaradwareBuffer must be greater than 104"

    .line 170
    .line 171
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0

    .line 175
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 176
    .line 177
    const-string v1, "Height of HardwareBuffer must be 1"

    .line 178
    .line 179
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 184
    .line 185
    const-string v1, "Format of HardwareBuffer must be BLOB"

    .line 186
    .line 187
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v0

    .line 191
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 192
    .line 193
    const-string/jumbo v1, "shared memory object cannot be null"

    .line 194
    .line 195
    .line 196
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v0
.end method

.method public destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->getNativeHandle()I

    move-result p1

    invoke-static {v0, v1, p1}, Landroid/hardware/SystemSensorManager;->nativeDestroyDirectChannel(JI)V

    :cond_0
    return-void
.end method

.method public flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return v1

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->flush()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    monitor-exit v0

    .line 27
    return v1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string/jumbo v0, "listener cannot be null"

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public getFullDynamicSensorList()Ljava/util/List;
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
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 8
    .line 9
    return-object v0
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

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initDataInjectionImpl(Z)Z
    .locals 6

    .line 1
    const-string v0, "Cannot create InjectEventQueue: "

    .line 2
    .line 3
    sget-object v1, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    :try_start_0
    iget-wide v3, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 10
    .line 11
    invoke-static {v3, v4}, Landroid/hardware/SystemSensorManager;->nativeIsDataInjectionEnabled(J)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string p1, "SensorManager"

    .line 19
    .line 20
    const-string v0, "Data Injection mode not enabled"

    .line 21
    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    monitor-exit v1

    .line 26
    return v3

    .line 27
    :cond_0
    sget-object p1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    :try_start_1
    new-instance p1, Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 32
    .line 33
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 34
    .line 35
    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-direct {p1, p0, v4, p0, v5}, Landroid/hardware/SystemSensorManager$InjectEventQueue;-><init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    :try_start_2
    const-string v4, "SensorManager"

    .line 49
    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    sget-object p1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v2, v3

    .line 71
    :goto_1
    monitor-exit v1

    .line 72
    return v2

    .line 73
    :cond_3
    sget-object p1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose()V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    sput-object p1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 82
    .line 83
    :cond_4
    monitor-exit v1

    .line 84
    return v2

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    throw p1
.end method

.method public injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .locals 8

    .line 1
    sget-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 5
    .line 6
    const/4 v7, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string p1, "SensorManager"

    .line 10
    .line 11
    const-string p2, "Data injection mode not activated before calling injectSensorData"

    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return v7

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    move-object v3, p2

    .line 23
    move v4, p3

    .line 24
    move-wide v5, p4

    .line 25
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorData(I[FIJ)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    sget-object p2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose()V

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    sput-object p2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 38
    .line 39
    :cond_1
    if-nez p1, :cond_2

    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    :cond_2
    monitor-exit v0

    .line 43
    return v7

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
.end method

.method public registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 2

    .line 1
    const-string v0, "SensorManager"

    .line 2
    .line 3
    const-string v1, "DYNS Register dynamic sensor callback"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p2, "callback cannot be null"

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 5

    .line 1
    const-string/jumbo p6, "versionName = "

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_b

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    const-string p1, "SensorManager"

    .line 19
    .line 20
    const-string p2, "Trigger Sensors should use the requestTriggerSensor."

    .line 21
    .line 22
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    if-ltz p5, :cond_a

    .line 27
    .line 28
    if-gez p3, :cond_2

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_2
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/16 v3, 0x80

    .line 39
    .line 40
    if-ge v1, v3, :cond_9

    .line 41
    .line 42
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const-string v3, "com.antutu.ABenchMark"

    .line 47
    .line 48
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    if-eq v2, v1, :cond_3

    .line 59
    .line 60
    const/4 v2, 0x3

    .line 61
    if-eq v2, v1, :cond_3

    .line 62
    .line 63
    const/16 v2, 0x14

    .line 64
    .line 65
    if-ne v2, v1, :cond_4

    .line 66
    .line 67
    :cond_3
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, "com.antutu.ABenchMark"

    .line 74
    .line 75
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v3, "SensorManager"

    .line 80
    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p6, ",  sensorType = "

    .line 92
    .line 93
    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p6, ",  packageName = "

    .line 100
    .line 101
    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object p6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p6

    .line 113
    invoke-static {v3, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    const-string p6, "6.3.3"

    .line 117
    .line 118
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p6

    .line 124
    if-eqz p6, :cond_4

    .line 125
    .line 126
    const-string p6, "SensorManager"

    .line 127
    .line 128
    const-string/jumbo v1, "registerListenerImpl for MAGNETIC_FIELD by antutu v6.3.3, ignore !!"

    .line 129
    .line 130
    .line 131
    invoke-static {p6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    return v0

    .line 135
    :catch_0
    move-exception p6

    .line 136
    const-string v1, "SensorManager"

    .line 137
    .line 138
    const-string v2, "Exception happened: "

    .line 139
    .line 140
    invoke-static {v1, v2, p6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .line 142
    .line 143
    :cond_4
    iget-object p6, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 144
    .line 145
    monitor-enter p6

    .line 146
    :try_start_1
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 147
    .line 148
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 153
    .line 154
    if-nez v1, :cond_8

    .line 155
    .line 156
    if-eqz p4, :cond_5

    .line 157
    .line 158
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 159
    .line 160
    .line 161
    move-result-object p4

    .line 162
    goto :goto_0

    .line 163
    :cond_5
    iget-object p4, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 164
    .line 165
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    if-eqz v1, :cond_6

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    goto :goto_1

    .line 188
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    :goto_1
    new-instance v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 197
    .line 198
    invoke-direct {v2, p1, p4, p0, v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-nez p2, :cond_7

    .line 206
    .line 207
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose()V

    .line 208
    .line 209
    .line 210
    monitor-exit p6

    .line 211
    return v0

    .line 212
    :cond_7
    iget-object p2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 213
    .line 214
    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    monitor-exit p6

    .line 218
    const/4 p1, 0x1

    .line 219
    return p1

    .line 220
    :cond_8
    invoke-virtual {v1, p2, p3, p5}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    monitor-exit p6

    .line 225
    return p1

    .line 226
    :catchall_0
    move-exception p1

    .line 227
    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    throw p1

    .line 229
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 230
    .line 231
    const-string/jumbo p2, "register failed, the sensor listeners size has exceeded the maximum limit 128"

    .line 232
    .line 233
    .line 234
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p1

    .line 238
    :cond_a
    :goto_2
    const-string p1, "SensorManager"

    .line 239
    .line 240
    const-string/jumbo p2, "maxBatchReportLatencyUs and delayUs should be non-negative"

    .line 241
    .line 242
    .line 243
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    return v0

    .line 247
    :cond_b
    :goto_3
    const-string p1, "SensorManager"

    .line 248
    .line 249
    const-string/jumbo p2, "sensor or listener is null"

    .line 250
    .line 251
    .line 252
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    return v0
.end method

.method public requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 5

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x80

    .line 21
    .line 22
    if-ge v0, v1, :cond_4

    .line 23
    .line 24
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_0
    new-instance v3, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 69
    .line 70
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 71
    .line 72
    invoke-direct {v3, p1, v4, p0, v1}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, p2, v2, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-nez p2, :cond_2

    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose()V

    .line 82
    .line 83
    .line 84
    monitor-exit v0

    .line 85
    return v2

    .line 86
    :cond_2
    iget-object p2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    monitor-exit v0

    .line 92
    const/4 p1, 0x1

    .line 93
    return p1

    .line 94
    :cond_3
    invoke-virtual {v1, p2, v2, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    monitor-exit v0

    .line 99
    return p1

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    throw p1

    .line 103
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    const-string/jumbo p2, "request failed, the trigger listeners size has exceeded the maximum limit 128"

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    const-string/jumbo p2, "listener cannot be null"

    .line 115
    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 122
    .line 123
    const-string/jumbo p2, "sensor cannot be null"

    .line 124
    .line 125
    .line 126
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1
.end method

.method public setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .locals 7

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getHandle()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    :goto_0
    move v3, v0

    .line 12
    iget-wide v1, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 13
    .line 14
    iget v4, p1, Landroid/hardware/SensorAdditionalInfo;->type:I

    .line 15
    .line 16
    iget-object v5, p1, Landroid/hardware/SensorAdditionalInfo;->floatValues:[F

    .line 17
    .line 18
    iget-object v6, p1, Landroid/hardware/SensorAdditionalInfo;->intValues:[I

    .line 19
    .line 20
    invoke-static/range {v1 .. v6}, Landroid/hardware/SystemSensorManager;->nativeSetOperationParameter(JII[F[I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    :goto_1
    return p1
.end method

.method public unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 2

    .line 1
    const-string v0, "SensorManager"

    .line 2
    .line 3
    const-string v1, "Removing dynamic sensor listerner"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeAllSensors()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v1, p2, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    :goto_0
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->hasSensors()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-nez p2, :cond_2

    .line 43
    .line 44
    iget-object p2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose()V

    .line 50
    .line 51
    .line 52
    :cond_2
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p1
.end method
