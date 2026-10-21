.class public Lcom/google/android/projection/sink/sensors/SensorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/sensors/SensorManager$SensorHandler;,
        Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;,
        Lcom/google/android/projection/sink/sensors/SensorManager$CompassListener;,
        Lcom/google/android/projection/sink/sensors/SensorManager$LocationListener;
    }
.end annotation


# instance fields
.field private final mCompassListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/sink/sensors/SensorManager$CompassListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGal:Lcom/google/android/projection/sink/GalIntegration;

.field private final mGalLock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private final mLocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/sink/sensors/SensorManager$LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorFeeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/sink/sensors/SensorCollectorBase;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorsInterceptor:Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;

.field private final mSupportedSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateCounter:J


# direct methods
.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mSupportedSensors:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorHandler;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/sink/sensors/SensorManager$SensorHandler;-><init>(Lcom/google/android/projection/sink/sensors/SensorManager;Lcom/google/android/projection/sink/sensors/SensorManager$1;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mSensorFeeds:Ljava/util/List;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mGalLock:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mLocationListeners:Ljava/util/List;

    .line 39
    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mCompassListeners:Ljava/util/List;

    .line 46
    .line 47
    return-void
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/sensors/SensorManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mGalLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/sensors/SensorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendRegularUpdatesLocked()V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/android/projection/sink/sensors/SensorManager;)Lcom/google/android/projection/sink/GalIntegration;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/android/projection/sink/sensors/SensorManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/android/projection/sink/sensors/SensorManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mLocationListeners:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/google/android/projection/sink/sensors/SensorManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/google/android/projection/sink/sensors/SensorManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mCompassListeners:Ljava/util/List;

    return-object p0
.end method

.method private sendRegularUpdatesLocked()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 2
    .line 3
    const-wide/16 v1, 0x64

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->sensors:Lcom/google/android/projection/protocol/SensorSource;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x13

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x14

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 31
    .line 32
    .line 33
    iget-wide v3, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mUpdateCounter:J

    .line 34
    .line 35
    const-wide/16 v5, 0xa

    .line 36
    .line 37
    rem-long/2addr v3, v5

    .line 38
    const-wide/16 v5, 0x0

    .line 39
    .line 40
    cmp-long v0, v3, v5

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    const/16 v0, 0xe

    .line 45
    .line 46
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-wide v3, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mUpdateCounter:J

    .line 50
    .line 51
    rem-long/2addr v3, v1

    .line 52
    cmp-long v0, v3, v5

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    const/16 v0, 0xb

    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-wide v3, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mUpdateCounter:J

    .line 62
    .line 63
    cmp-long v0, v3, v5

    .line 64
    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    const/16 v0, 0xd

    .line 68
    .line 69
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 74
    .line 75
    .line 76
    const/16 v0, 0x15

    .line 77
    .line 78
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 79
    .line 80
    .line 81
    const/16 v0, 0xa

    .line 82
    .line 83
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 84
    .line 85
    .line 86
    const/16 v0, 0x8

    .line 87
    .line 88
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x5

    .line 92
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 93
    .line 94
    .line 95
    const/4 v0, 0x6

    .line 96
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x7

    .line 100
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 101
    .line 102
    .line 103
    const/16 v0, 0x10

    .line 104
    .line 105
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 106
    .line 107
    .line 108
    const/16 v0, 0xc

    .line 109
    .line 110
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 111
    .line 112
    .line 113
    const/16 v0, 0x11

    .line 114
    .line 115
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 116
    .line 117
    .line 118
    const/16 v0, 0x9

    .line 119
    .line 120
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 121
    .line 122
    .line 123
    const/16 v0, 0xf

    .line 124
    .line 125
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 126
    .line 127
    .line 128
    const/16 v0, 0x12

    .line 129
    .line 130
    invoke-direct {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->sendUpdate(I)V

    .line 131
    .line 132
    .line 133
    :cond_2
    iget-wide v3, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mUpdateCounter:J

    .line 134
    .line 135
    const-wide/16 v5, 0x1

    .line 136
    .line 137
    add-long/2addr v3, v5

    .line 138
    iput-wide v3, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mUpdateCounter:J

    .line 139
    .line 140
    :cond_3
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mHandler:Landroid/os/Handler;

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method private sendUpdate(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mSupportedSensors:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mSensorFeeds:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mSensorsInterceptor:Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;

    .line 32
    .line 33
    invoke-virtual {v1, v2, p1}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->sendUpdate(Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public getSupportedSensors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mSupportedSensors:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public varargs init([Lcom/google/android/projection/sink/sensors/SensorCollectorBase;)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    .line 6
    aget-object v3, p1, v2

    .line 7
    .line 8
    iget-object v4, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mSensorFeeds:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mSensorFeeds:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->discoverSensors()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mSupportedSensors:Ljava/util/Set;

    .line 39
    .line 40
    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->registerSensors(Ljava/util/Set;Landroid/os/Handler;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mSupportedSensors:Ljava/util/Set;

    .line 49
    .line 50
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public isReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mGalLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method public registerCompassListener(Lcom/google/android/projection/sink/sensors/SensorManager$CompassListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mCompassListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerLocationListener(Lcom/google/android/projection/sink/sensors/SensorManager$LocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mLocationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportAvailable(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setGalIntegration(Lcom/google/android/projection/sink/GalIntegration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mGalLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->sensors:Lcom/google/android/projection/protocol/SensorSource;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;-><init>(Lcom/google/android/projection/sink/sensors/SensorManager;Lcom/google/android/projection/protocol/SensorSource;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mSensorsInterceptor:Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mSensorsInterceptor:Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;

    .line 20
    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public shutdown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mSensorFeeds:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->unregisterSensors()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mGalLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iput-object v1, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mSensorFeeds:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->shutdown()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    return-void

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw v1
.end method

.method public unregisterCompassListener(Lcom/google/android/projection/sink/sensors/SensorManager$CompassListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mCompassListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterLocationListener(Lcom/google/android/projection/sink/sensors/SensorManager$LocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager;->mLocationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
