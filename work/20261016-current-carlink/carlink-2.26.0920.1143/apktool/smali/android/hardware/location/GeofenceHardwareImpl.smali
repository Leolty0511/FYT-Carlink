.class public final Landroid/hardware/location/GeofenceHardwareImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/GeofenceHardwareImpl$Reaper;,
        Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    }
.end annotation


# static fields
.field private static final ADD_GEOFENCE_CALLBACK:I = 0x2

.field private static final CALLBACK_ADD:I = 0x2

.field private static final CALLBACK_REMOVE:I = 0x3

.field private static final CAPABILITY_GNSS:I = 0x1

.field private static final DEBUG:Z

.field private static final FIRST_VERSION_WITH_CAPABILITIES:I = 0x2

.field private static final GEOFENCE_CALLBACK_BINDER_DIED:I = 0x6

.field private static final GEOFENCE_STATUS:I = 0x1

.field private static final GEOFENCE_TRANSITION_CALLBACK:I = 0x1

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MONITOR_CALLBACK_BINDER_DIED:I = 0x4

.field private static final PAUSE_GEOFENCE_CALLBACK:I = 0x4

.field private static final REAPER_GEOFENCE_ADDED:I = 0x1

.field private static final REAPER_MONITOR_CALLBACK_ADDED:I = 0x2

.field private static final REAPER_REMOVED:I = 0x3

.field private static final REMOVE_GEOFENCE_CALLBACK:I = 0x3

.field private static final RESOLUTION_LEVEL_COARSE:I = 0x2

.field private static final RESOLUTION_LEVEL_FINE:I = 0x3

.field private static final RESOLUTION_LEVEL_NONE:I = 0x1

.field private static final RESUME_GEOFENCE_CALLBACK:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GeofenceHardwareImpl"

.field private static sInstance:Landroid/hardware/location/GeofenceHardwareImpl;


# instance fields
.field private final mCallbacks:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/location/IGeofenceHardwareMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksHandler:Landroid/os/Handler;

.field private mCapabilities:I

.field private final mContext:Landroid/content/Context;

.field private mFusedService:Landroid/location/IFusedGeofenceHardware;

.field private mGeofenceHandler:Landroid/os/Handler;

.field private final mGeofences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/location/IGeofenceHardwareCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsService:Landroid/location/IGpsGeofenceHardware;

.field private mReaperHandler:Landroid/os/Handler;

.field private final mReapers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/location/GeofenceHardwareImpl$Reaper;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedMonitorTypes:[I

.field private mVersion:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "GeofenceHardwareImpl"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v1, v0, [Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    .line 25
    .line 26
    new-array v2, v0, [I

    .line 27
    .line 28
    iput-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    .line 29
    .line 30
    new-instance v2, Landroid/hardware/location/GeofenceHardwareImpl$1;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Landroid/hardware/location/GeofenceHardwareImpl$1;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance v2, Landroid/hardware/location/GeofenceHardwareImpl$2;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Landroid/hardware/location/GeofenceHardwareImpl$2;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    .line 43
    .line 44
    new-instance v2, Landroid/hardware/location/GeofenceHardwareImpl$3;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Landroid/hardware/location/GeofenceHardwareImpl$3;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    .line 50
    .line 51
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v1, v0}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static synthetic access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V

    return-void
.end method

.method public static synthetic access$1100(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$1200(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1300(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1400(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    return v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v1, "power"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/os/PowerManager;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v2, "GeofenceHardwareImpl"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 2

    .line 1
    const-class v0, Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/hardware/location/GeofenceHardwareImpl;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method

.method private releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private reportGeofenceOperationStatus(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    iput p3, p1, Landroid/os/Message;->arg2:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private setMonitorAvailability(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    .line 5
    .line 6
    aput p2, v1, p1

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p1
.end method

.method private updateFusedHardwareAvailability()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    if-lt v2, v3, :cond_1

    .line 7
    .line 8
    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCapabilities:I

    .line 9
    .line 10
    and-int/2addr v2, v0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v2, v0

    .line 17
    :goto_1
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    invoke-interface {v3}, Landroid/location/IFusedGeofenceHardware;->isSupported()Z

    .line 22
    .line 23
    .line 24
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    move v2, v0

    .line 30
    goto :goto_2

    .line 31
    :catch_0
    const-string v2, "GeofenceHardwareImpl"

    .line 32
    .line 33
    const-string v3, "RemoteException calling LocationManagerService"

    .line 34
    .line 35
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_2
    move v2, v1

    .line 39
    :goto_2
    if-eqz v2, :cond_3

    .line 40
    .line 41
    invoke-direct {p0, v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 42
    .line 43
    .line 44
    :cond_3
    return-void
.end method

.method private updateGpsHardwareAvailability()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    .line 3
    .line 4
    invoke-interface {v1}, Landroid/location/IGpsGeofenceHardware;->isHardwareGeofenceSupported()Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    const-string v1, "GeofenceHardwareImpl"

    .line 10
    .line 11
    const-string v2, "Remote Exception calling LocationManagerService"

    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move v1, v0

    .line 17
    :goto_0
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, v0, v0}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    sget-boolean v4, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    const-string v4, "addCircularFence: monitoringType=%d, %s"

    .line 18
    .line 19
    const/4 v7, 0x2

    .line 20
    new-array v7, v7, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    aput-object v8, v7, v6

    .line 27
    .line 28
    aput-object p2, v7, v5

    .line 29
    .line 30
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string v7, "GeofenceHardwareImpl"

    .line 35
    .line 36
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v4, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    .line 40
    .line 41
    monitor-enter v4

    .line 42
    :try_start_0
    iget-object v7, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v7, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    if-eq v0, v5, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v4, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    .line 54
    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    return v6

    .line 58
    :cond_2
    :try_start_1
    new-array v7, v5, [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .line 59
    .line 60
    aput-object p2, v7, v6

    .line 61
    .line 62
    invoke-interface {v4, v7}, Landroid/location/IFusedGeofenceHardware;->addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    .line 64
    .line 65
    move v6, v5

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    const-string v4, "GeofenceHardwareImpl"

    .line 68
    .line 69
    const-string v7, "AddGeofence: RemoteException calling LocationManagerService"

    .line 70
    .line 71
    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v8, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    .line 76
    .line 77
    if-nez v8, :cond_4

    .line 78
    .line 79
    return v6

    .line 80
    :cond_4
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getId()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLatitude()D

    .line 85
    .line 86
    .line 87
    move-result-wide v10

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLongitude()D

    .line 89
    .line 90
    .line 91
    move-result-wide v12

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getRadius()D

    .line 93
    .line 94
    .line 95
    move-result-wide v14

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLastTransition()I

    .line 97
    .line 98
    .line 99
    move-result v16

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getMonitorTransitions()I

    .line 101
    .line 102
    .line 103
    move-result v17

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getNotificationResponsiveness()I

    .line 105
    .line 106
    .line 107
    move-result v18

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getUnknownTimer()I

    .line 109
    .line 110
    .line 111
    move-result v19

    .line 112
    invoke-interface/range {v8 .. v19}, Landroid/location/IGpsGeofenceHardware;->addCircularHardwareGeofence(IDDDIIII)Z

    .line 113
    .line 114
    .line 115
    move-result v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    goto :goto_0

    .line 117
    :catch_1
    const-string v4, "GeofenceHardwareImpl"

    .line 118
    .line 119
    const-string v7, "AddGeofence: Remote Exception calling LocationManagerService"

    .line 120
    .line 121
    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :goto_0
    if-eqz v6, :cond_5

    .line 125
    .line 126
    iget-object v3, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    .line 127
    .line 128
    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 133
    .line 134
    iget-object v0, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    iget-object v2, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    .line 141
    .line 142
    monitor-enter v2

    .line 143
    :try_start_3
    iget-object v0, v1, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    .line 144
    .line 145
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 146
    .line 147
    .line 148
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    :goto_1
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    .line 150
    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    const-string v0, "GeofenceHardwareImpl"

    .line 154
    .line 155
    const-string v2, "addCircularFence: Result is: "

    .line 156
    .line 157
    invoke-static {v2, v6, v0}, Landroid/accessibilityservice/c;->z(Ljava/lang/String;ZLjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_6
    return v6

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    throw v0

    .line 164
    :catchall_1
    move-exception v0

    .line 165
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    throw v0
.end method

.method public getAllowedResolutionLevel(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    return p1

    .line 25
    :cond_1
    const/4 p1, 0x1

    .line 26
    return p1
.end method

.method public getCapabilitiesForMonitoringType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    :goto_0
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_1
    iget p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-lt p1, v1, :cond_2

    .line 19
    .line 20
    iget p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCapabilities:I

    .line 21
    .line 22
    return p1

    .line 23
    :cond_2
    return v0
.end method

.method public getMonitoringResolutionLevel(I)I
    .locals 2

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public getMonitoringTypes()[I
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aget v3, v1, v2

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eq v3, v4, :cond_0

    .line 12
    .line 13
    move v3, v5

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v2

    .line 16
    :goto_0
    aget v1, v1, v5

    .line 17
    .line 18
    if-eq v1, v4, :cond_1

    .line 19
    .line 20
    move v1, v5

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v1, v2

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    new-array v0, v4, [I

    .line 29
    .line 30
    fill-array-data v0, :array_0

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_2
    new-array v0, v5, [I

    .line 35
    .line 36
    aput v2, v0, v2

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_3
    if-eqz v1, :cond_4

    .line 40
    .line 41
    new-array v0, v5, [I

    .line 42
    .line 43
    aput v5, v0, v2

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_4
    new-array v0, v2, [I

    .line 47
    .line 48
    return-object v0

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v1

    .line 52
    nop

    .line 53
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public getStatusOfMonitoringType(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    if-ge p1, v2, :cond_0

    .line 8
    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    aget p1, v1, p1

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v1, "Unknown monitoring type"

    .line 18
    .line 19
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

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

.method public onCapabilities(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCapabilities:I

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateFusedHardwareAvailability()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public pauseGeofence(II)Z
    .locals 4

    .line 1
    const-string v0, "Geofence "

    .line 2
    .line 3
    sget-boolean v1, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "GeofenceHardwareImpl"

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "Pause Geofence: GeofenceId: "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    .line 27
    .line 28
    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_6

    .line 36
    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    if-eq p2, v1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    .line 46
    .line 47
    if-nez p2, :cond_2

    .line 48
    .line 49
    return v0

    .line 50
    :cond_2
    :try_start_1
    invoke-interface {p2, p1}, Landroid/location/IFusedGeofenceHardware;->pauseMonitoringGeofence(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    .line 53
    move v0, v1

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    const-string p1, "GeofenceHardwareImpl"

    .line 56
    .line 57
    const-string p2, "PauseGeofence: RemoteException calling LocationManagerService"

    .line 58
    .line 59
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    .line 64
    .line 65
    if-nez p2, :cond_4

    .line 66
    .line 67
    return v0

    .line 68
    :cond_4
    :try_start_2
    invoke-interface {p2, p1}, Landroid/location/IGpsGeofenceHardware;->pauseHardwareGeofence(I)Z

    .line 69
    .line 70
    .line 71
    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 72
    goto :goto_0

    .line 73
    :catch_1
    const-string p1, "GeofenceHardwareImpl"

    .line 74
    .line 75
    const-string p2, "PauseGeofence: Remote Exception calling LocationManagerService"

    .line 76
    .line 77
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :goto_0
    sget-boolean p1, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    const-string p1, "GeofenceHardwareImpl"

    .line 85
    .line 86
    const-string/jumbo p2, "pauseGeofence: Result is: "

    .line 87
    .line 88
    .line 89
    invoke-static {p2, v0, p1}, Landroid/accessibilityservice/c;->z(Ljava/lang/String;ZLjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    return v0

    .line 93
    :cond_6
    :try_start_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, " not registered."

    .line 104
    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p2

    .line 116
    :catchall_0
    move-exception p1

    .line 117
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    throw p1
.end method

.method public registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 22
    .line 23
    iget-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method public removeGeofence(II)Z
    .locals 4

    .line 1
    const-string v0, "Geofence "

    .line 2
    .line 3
    sget-boolean v1, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "GeofenceHardwareImpl"

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "Remove Geofence: GeofenceId: "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    .line 27
    .line 28
    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_6

    .line 36
    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    if-eq p2, v1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    .line 46
    .line 47
    if-nez p2, :cond_2

    .line 48
    .line 49
    return v0

    .line 50
    :cond_2
    :try_start_1
    new-array v2, v1, [I

    .line 51
    .line 52
    aput p1, v2, v0

    .line 53
    .line 54
    invoke-interface {p2, v2}, Landroid/location/IFusedGeofenceHardware;->removeGeofences([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    .line 57
    move v0, v1

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    const-string p1, "GeofenceHardwareImpl"

    .line 60
    .line 61
    const-string p2, "RemoveGeofence: RemoteException calling LocationManagerService"

    .line 62
    .line 63
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    iget-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    .line 68
    .line 69
    if-nez p2, :cond_4

    .line 70
    .line 71
    return v0

    .line 72
    :cond_4
    :try_start_2
    invoke-interface {p2, p1}, Landroid/location/IGpsGeofenceHardware;->removeHardwareGeofence(I)Z

    .line 73
    .line 74
    .line 75
    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 76
    goto :goto_0

    .line 77
    :catch_1
    const-string p1, "GeofenceHardwareImpl"

    .line 78
    .line 79
    const-string p2, "RemoveGeofence: Remote Exception calling LocationManagerService"

    .line 80
    .line 81
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :goto_0
    sget-boolean p1, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    const-string p1, "GeofenceHardwareImpl"

    .line 89
    .line 90
    const-string/jumbo p2, "removeGeofence: Result is: "

    .line 91
    .line 92
    .line 93
    invoke-static {p2, v0, p1}, Landroid/accessibilityservice/c;->z(Ljava/lang/String;ZLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    return v0

    .line 97
    :cond_6
    :try_start_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, " not registered."

    .line 108
    .line 109
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p2

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    throw p1
.end method

.method public reportGeofenceAddStatus(II)V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "AddCallback| id:"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", status:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "GeofenceHardwareImpl"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x2

    .line 33
    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public reportGeofenceMonitorStatus(IILandroid/location/Location;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2, p4, p3}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;-><init>(IIILandroid/location/Location;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public reportGeofencePauseStatus(II)V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "PauseCallbac| id:"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", status"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "GeofenceHardwareImpl"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x4

    .line 33
    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public reportGeofenceRemoveStatus(II)V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "RemoveCallback| id:"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", status:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "GeofenceHardwareImpl"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x3

    .line 33
    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public reportGeofenceResumeStatus(II)V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "ResumeCallback| id:"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", status:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "GeofenceHardwareImpl"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x5

    .line 33
    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public reportGeofenceTransition(ILandroid/location/Location;IJII)V
    .locals 10

    .line 1
    move-object v6, p2

    .line 2
    const-string v0, "GeofenceHardwareImpl"

    .line 3
    .line 4
    if-nez v6, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    const-string v2, "Invalid Geofence Transition: location=null"

    .line 10
    .line 11
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-boolean v1, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "GeofenceTransition| "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", transition:"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move v3, p3

    .line 39
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ", transitionTimestamp:"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-wide v4, p4

    .line 48
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, ", monitoringType:"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move/from16 v7, p6

    .line 57
    .line 58
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, ", sourcesUsed:"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move/from16 v8, p7

    .line 67
    .line 68
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    move v3, p3

    .line 80
    move-wide v4, p4

    .line 81
    move/from16 v7, p6

    .line 82
    .line 83
    move/from16 v8, p7

    .line 84
    .line 85
    :goto_0
    new-instance v9, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    .line 86
    .line 87
    move-object v0, v9

    .line 88
    move-object v1, p0

    .line 89
    move v2, p1

    .line 90
    move v3, p3

    .line 91
    move-wide v4, p4

    .line 92
    move-object v6, p2

    .line 93
    move/from16 v7, p6

    .line 94
    .line 95
    move/from16 v8, p7

    .line 96
    .line 97
    invoke-direct/range {v0 .. v8}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;IIJLandroid/location/Location;II)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    .line 101
    .line 102
    .line 103
    move-object v0, p0

    .line 104
    iget-object v1, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    .line 105
    .line 106
    const/4 v2, 0x1

    .line 107
    invoke-virtual {v1, v2, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public resumeGeofence(III)Z
    .locals 4

    .line 1
    const-string v0, "Geofence "

    .line 2
    .line 3
    sget-boolean v1, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "GeofenceHardwareImpl"

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "Resume Geofence: GeofenceId: "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    .line 27
    .line 28
    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_6

    .line 36
    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    if-eq p2, v1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    .line 46
    .line 47
    if-nez p2, :cond_2

    .line 48
    .line 49
    return v0

    .line 50
    :cond_2
    :try_start_1
    invoke-interface {p2, p1, p3}, Landroid/location/IFusedGeofenceHardware;->resumeMonitoringGeofence(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    .line 53
    move v0, v1

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    const-string p1, "GeofenceHardwareImpl"

    .line 56
    .line 57
    const-string p2, "ResumeGeofence: RemoteException calling LocationManagerService"

    .line 58
    .line 59
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    .line 64
    .line 65
    if-nez p2, :cond_4

    .line 66
    .line 67
    return v0

    .line 68
    :cond_4
    :try_start_2
    invoke-interface {p2, p1, p3}, Landroid/location/IGpsGeofenceHardware;->resumeHardwareGeofence(II)Z

    .line 69
    .line 70
    .line 71
    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 72
    goto :goto_0

    .line 73
    :catch_1
    const-string p1, "GeofenceHardwareImpl"

    .line 74
    .line 75
    const-string p2, "ResumeGeofence: Remote Exception calling LocationManagerService"

    .line 76
    .line 77
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :goto_0
    sget-boolean p1, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    const-string p1, "GeofenceHardwareImpl"

    .line 85
    .line 86
    const-string/jumbo p2, "resumeGeofence: Result is: "

    .line 87
    .line 88
    .line 89
    invoke-static {p2, v0, p1}, Landroid/accessibilityservice/c;->z(Ljava/lang/String;ZLjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    return v0

    .line 93
    :cond_6
    :try_start_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    new-instance p3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, " not registered."

    .line 104
    .line 105
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p2

    .line 116
    :catchall_0
    move-exception p1

    .line 117
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    throw p1
.end method

.method public setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateFusedHardwareAvailability()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "GeofenceHardwareImpl"

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    .line 17
    .line 18
    const-string p1, "Fused Geofence Hardware service seems to have crashed"

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string p1, "Error: FusedService being set again"

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public setGpsHardwareGeofence(Landroid/location/IGpsGeofenceHardware;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateGpsHardwareAvailability()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "GeofenceHardwareImpl"

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    .line 17
    .line 18
    const-string p1, "GPS Geofence Hardware service seems to have crashed"

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string p1, "Error: GpsService being set again."

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mVersion:I

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateFusedHardwareAvailability()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    iget-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1
.end method
