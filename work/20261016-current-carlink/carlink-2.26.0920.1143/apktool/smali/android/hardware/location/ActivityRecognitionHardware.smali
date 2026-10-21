.class public Landroid/hardware/location/ActivityRecognitionHardware;
.super Landroid/hardware/location/IActivityRecognitionHardware$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ActivityRecognitionHardware$SinkList;,
        Landroid/hardware/location/ActivityRecognitionHardware$Event;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ActivityRecognitionHardware"

.field private static final EVENT_TYPE_COUNT:I = 0x3

.field private static final EVENT_TYPE_DISABLED:I = 0x0

.field private static final EVENT_TYPE_ENABLED:I = 0x1

.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final INVALID_ACTIVITY_TYPE:I = -0x1

.field private static final NATIVE_SUCCESS_RESULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionHW"

.field private static sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private static final sSingletonInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

.field private final mSupportedActivities:[Ljava/lang/String;

.field private final mSupportedActivitiesCount:I

.field private final mSupportedActivitiesEnabledEvents:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ActivityRecognitionHW"

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
    sput-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeClassInit()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;-><init>(Landroid/hardware/location/ActivityRecognitionHardware;Landroid/hardware/location/ActivityRecognitionHardware$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeInitialize()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->fetchSupportedActivities()[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    .line 22
    .line 23
    array-length p1, p1

    .line 24
    iput p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    const/4 v2, 0x3

    .line 31
    aput v2, v0, v1

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    aput p1, v0, v1

    .line 35
    .line 36
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, [[I

    .line 43
    .line 44
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic access$100(Landroid/hardware/location/ActivityRecognitionHardware;)Landroid/hardware/location/ActivityRecognitionHardware$SinkList;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    return-object p0
.end method

.method public static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    return v0
.end method

.method public static synthetic access$300(Landroid/hardware/location/ActivityRecognitionHardware;)I
    .locals 0

    iget p0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    return p0
.end method

.method public static synthetic access$400(Landroid/hardware/location/ActivityRecognitionHardware;)[[I
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    return-object p0
.end method

.method public static synthetic access$500(Landroid/hardware/location/ActivityRecognitionHardware;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    move-result p0

    return p0
.end method

.method private checkPermissions()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ActivityRecognitionHardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fetchSupportedActivities()[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeGetSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method private getActivityName(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-lt p1, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    aget-object p1, v0, p1

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    aput-object p1, v0, v1

    .line 21
    .line 22
    iget-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    .line 23
    .line 24
    array-length p1, p1

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v1, 0x1

    .line 30
    aput-object p1, v0, v1

    .line 31
    .line 32
    const-string p1, "Invalid ActivityType: %d, SupportedActivities: %d"

    .line 33
    .line 34
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "ActivityRecognitionHW"

    .line 39
    .line 40
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method private getActivityType(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    .line 10
    .line 11
    array-length v0, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v0, :cond_2

    .line 14
    .line 15
    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    .line 16
    .line 17
    aget-object v3, v3, v2

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;
    .locals 2

    .line 1
    sget-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/hardware/location/ActivityRecognitionHardware;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Landroid/hardware/location/ActivityRecognitionHardware;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public static isSupported()Z
    .locals 1

    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeIsSupported()Z

    move-result v0

    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDisableActivityEvent(II)I
.end method

.method private native nativeEnableActivityEvent(IIJ)I
.end method

.method private native nativeFlush()I
.end method

.method private native nativeGetSupportedActivities()[Ljava/lang/String;
.end method

.method private native nativeInitialize()V
.end method

.method private static native nativeIsSupported()Z
.end method

.method private native nativeRelease()V
.end method

.method private onActivityChanged([Landroid/hardware/location/ActivityRecognitionHardware$Event;)V
    .locals 11

    .line 1
    const-string v0, "ActivityRecognitionHW"

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_0
    array-length v1, p1

    .line 10
    new-array v2, v1, [Landroid/hardware/location/ActivityRecognitionEvent;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    if-ge v4, v1, :cond_1

    .line 15
    .line 16
    aget-object v5, p1, v4

    .line 17
    .line 18
    iget v6, v5, Landroid/hardware/location/ActivityRecognitionHardware$Event;->activity:I

    .line 19
    .line 20
    invoke-direct {p0, v6}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityName(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    new-instance v7, Landroid/hardware/location/ActivityRecognitionEvent;

    .line 25
    .line 26
    iget v8, v5, Landroid/hardware/location/ActivityRecognitionHardware$Event;->type:I

    .line 27
    .line 28
    iget-wide v9, v5, Landroid/hardware/location/ActivityRecognitionHardware$Event;->timestamp:J

    .line 29
    .line 30
    invoke-direct {v7, v6, v8, v9, v10}, Landroid/hardware/location/ActivityRecognitionEvent;-><init>(Ljava/lang/String;IJ)V

    .line 31
    .line 32
    .line 33
    aput-object v7, v2, v4

    .line 34
    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance p1, Landroid/hardware/location/ActivityChangedEvent;

    .line 39
    .line 40
    invoke-direct {p1, v2}, Landroid/hardware/location/ActivityChangedEvent;-><init>([Landroid/hardware/location/ActivityRecognitionEvent;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :goto_1
    if-ge v3, v1, :cond_2

    .line 50
    .line 51
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/hardware/location/IActivityRecognitionHardwareSink;

    .line 58
    .line 59
    :try_start_0
    invoke-interface {v2, p1}, Landroid/hardware/location/IActivityRecognitionHardwareSink;->onActivityChanged(Landroid/hardware/location/ActivityChangedEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception v2

    .line 64
    const-string v4, "Error delivering activity changed event."

    .line 65
    .line 66
    invoke-static {v0, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    :goto_3
    sget-boolean p1, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    .line 79
    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    const-string p1, "No events to broadcast for onActivityChanged."

    .line 83
    .line 84
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_4
    return-void
.end method


# virtual methods
.method public disableActivityEvent(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, -0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    .line 20
    .line 21
    aget-object p1, v0, p1

    .line 22
    .line 23
    aput v1, p1, p2

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    return v1
.end method

.method public enableActivityEvent(Ljava/lang/String;IJ)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, -0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeEnableActivityEvent(IIJ)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-nez p3, :cond_1

    .line 18
    .line 19
    iget-object p3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    .line 20
    .line 21
    aget-object p1, p3, p1

    .line 22
    .line 23
    const/4 p3, 0x1

    .line 24
    aput p3, p1, p2

    .line 25
    .line 26
    return p3

    .line 27
    :cond_1
    return v1
.end method

.method public flush()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeFlush()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public getSupportedActivities()[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    .line 5
    .line 6
    return-object v0
.end method

.method public isActivitySupported(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, -0x1

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method
