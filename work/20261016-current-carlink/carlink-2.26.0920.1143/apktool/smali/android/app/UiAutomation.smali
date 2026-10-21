.class public final Landroid/app/UiAutomation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;,
        Landroid/app/UiAutomation$AccessibilityEventFilter;,
        Landroid/app/UiAutomation$OnAccessibilityEventListener;
    }
.end annotation


# static fields
.field private static final CONNECTION_ID_UNDEFINED:I = -0x1

.field private static final CONNECT_TIMEOUT_MILLIS:J = 0x1388L

.field private static final DEBUG:Z = false

.field public static final FLAG_DONT_SUPPRESS_ACCESSIBILITY_SERVICES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "UiAutomation"

.field public static final ROTATION_FREEZE_0:I = 0x0

.field public static final ROTATION_FREEZE_180:I = 0x2

.field public static final ROTATION_FREEZE_270:I = 0x3

.field public static final ROTATION_FREEZE_90:I = 0x1

.field public static final ROTATION_FREEZE_CURRENT:I = -0x1

.field public static final ROTATION_UNFREEZE:I = -0x2


# instance fields
.field private final mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mConnectionId:I

.field private final mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field private mIsConnecting:Z

.field private mIsDestroyed:Z

.field private mLastEventTimeMillis:J

.field private final mLock:Ljava/lang/Object;

.field private mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

.field private final mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private mWaitingForEventDelivery:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iput-object p2, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 26
    .line 27
    new-instance p2, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;

    .line 28
    .line 29
    invoke-direct {p2, p0, p1}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p2, "Connection cannot be null!"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string p2, "Looper cannot be null!"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public static synthetic access$000(Landroid/app/UiAutomation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/app/UiAutomation;I)I
    .locals 0

    iput p1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    return p1
.end method

.method public static synthetic access$202(Landroid/app/UiAutomation;J)J
    .locals 0

    iput-wide p1, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    return-wide p1
.end method

.method public static synthetic access$300(Landroid/app/UiAutomation;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    return p0
.end method

.method public static synthetic access$400(Landroid/app/UiAutomation;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;
    .locals 0

    iget-object p0, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    return-object p0
.end method

.method private static getDegreesForRotation(I)F
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, 0x42b40000    # 90.0f

    return p0

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    return p0

    :cond_2
    const/high16 p0, 0x43870000    # 270.0f

    return p0
.end method

.method private isConnectedLocked()Z
    .locals 2

    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private throwIfConnectedLocked()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    const-string v1, "UiAutomation not connected!"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method private throwIfNotConnectedLocked()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "UiAutomation not connected!"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method


# virtual methods
.method public clearWindowAnimationFrameStats()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 9
    .line 10
    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->clearWindowAnimationFrameStats()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "Error clearing window animation frame stats!"

    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    throw v1
.end method

.method public clearWindowContentFrameStats(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->clearWindowContentFrameStats(I)Z

    .line 11
    .line 12
    .line 13
    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    return p1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "Error clearing window content frame stats!"

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    throw p1
.end method

.method public connect()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/UiAutomation;->connect(I)V

    return-void
.end method

.method public connect(I)V
    .locals 7

    .line 2
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfConnectedLocked()V

    .line 4
    iget-boolean v1, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    if-eqz v1, :cond_0

    .line 5
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    iget-object v1, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, v1, p1}, Landroid/app/IUiAutomationConnection;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 9
    iput p1, p0, Landroid/app/UiAutomation;->mFlags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 10
    iget-object p1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 11
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    :goto_0
    const/4 v2, 0x0

    .line 12
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    .line 13
    :try_start_4
    iput-boolean v2, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    .line 14
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 15
    :cond_1
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-long/2addr v3, v0

    const-wide/16 v5, 0x1388

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-lez v3, :cond_2

    .line 16
    :try_start_6
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 17
    :cond_2
    :try_start_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error while connecting UiAutomation"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v0

    .line 18
    :try_start_8
    iput-boolean v2, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    throw v0

    :catchall_1
    move-exception v0

    .line 19
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :catch_1
    move-exception p1

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error while connecting UiAutomation"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_2
    move-exception p1

    .line 21
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/UiAutomation;->disconnect()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    .line 6
    .line 7
    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 9
    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 16
    .line 17
    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->disconnect()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string v2, "Error while disconnecting UiAutomation"

    .line 25
    .line 26
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v2, "Cannot call disconnect() while connecting!"

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw v1
.end method

.method public executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v5, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 36
    :try_start_2
    iget-object v6, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    iget-object v6, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 47
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_2

    .line 52
    .line 53
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Landroid/view/accessibility/AccessibilityEvent;

    .line 58
    .line 59
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v6

    .line 63
    cmp-long v6, v6, v0

    .line 64
    .line 65
    if-gez v6, :cond_0

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    invoke-interface {p2, v5}, Landroid/app/UiAutomation$AccessibilityEventFilter;->accept(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 69
    .line 70
    .line 71
    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 72
    if-eqz v6, :cond_1

    .line 73
    .line 74
    iget-object v6, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 75
    .line 76
    monitor-enter v6

    .line 77
    :try_start_4
    iput-boolean p1, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 78
    .line 79
    iget-object p1, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 87
    .line 88
    .line 89
    monitor-exit v6

    .line 90
    return-object v5

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    throw p1

    .line 94
    :cond_1
    :try_start_5
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    sub-long/2addr v4, v2

    .line 103
    sub-long v4, p3, v4

    .line 104
    .line 105
    const-wide/16 v6, 0x0

    .line 106
    .line 107
    cmp-long v6, v4, v6

    .line 108
    .line 109
    if-lez v6, :cond_4

    .line 110
    .line 111
    iget-object v6, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 112
    .line 113
    monitor-enter v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 114
    :try_start_6
    iget-object v7, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 120
    if-eqz v7, :cond_3

    .line 121
    .line 122
    :try_start_7
    iget-object v7, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 123
    .line 124
    invoke-virtual {v7, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 125
    .line 126
    .line 127
    :catch_0
    :cond_3
    :try_start_8
    monitor-exit v6

    .line 128
    goto :goto_0

    .line 129
    :catchall_1
    move-exception p2

    .line 130
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 131
    :try_start_9
    throw p2

    .line 132
    :cond_4
    new-instance p2, Ljava/util/concurrent/TimeoutException;

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v1, "Expected event not received within: "

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p3, " ms."

    .line 148
    .line 149
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    invoke-direct {p2, p3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 160
    :catchall_2
    move-exception p2

    .line 161
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 162
    :try_start_b
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 163
    :catchall_3
    move-exception p2

    .line 164
    iget-object p3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 165
    .line 166
    monitor-enter p3

    .line 167
    :try_start_c
    iput-boolean p1, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 168
    .line 169
    iget-object p1, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 177
    .line 178
    .line 179
    monitor-exit p3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 180
    throw p2

    .line 181
    :catchall_4
    move-exception p1

    .line 182
    :try_start_d
    monitor-exit p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 183
    throw p1

    .line 184
    :catchall_5
    move-exception p1

    .line 185
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 186
    throw p1
.end method

.method public executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    aget-object v2, v1, v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    :try_start_2
    aget-object v1, v1, v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    .line 19
    :try_start_3
    iget-object v3, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 20
    .line 21
    invoke-interface {v3, p1, v1, v0}, Landroid/app/IUiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 25
    .line 26
    .line 27
    goto :goto_3

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    move-object v0, v1

    .line 30
    goto :goto_4

    .line 31
    :catch_0
    move-exception p1

    .line 32
    move-object v0, v1

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception p1

    .line 35
    move-object v0, v1

    .line 36
    goto :goto_1

    .line 37
    :catch_2
    move-exception p1

    .line 38
    goto :goto_0

    .line 39
    :catch_3
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :catchall_1
    move-exception p1

    .line 42
    goto :goto_4

    .line 43
    :catch_4
    move-exception p1

    .line 44
    move-object v2, v0

    .line 45
    :goto_0
    :try_start_4
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 46
    .line 47
    const-string v3, "Error executing shell command!"

    .line 48
    .line 49
    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catch_5
    move-exception p1

    .line 54
    move-object v2, v0

    .line 55
    :goto_1
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 56
    .line 57
    const-string v3, "Error executing shell command!"

    .line 58
    .line 59
    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 60
    .line 61
    .line 62
    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 63
    .line 64
    .line 65
    :goto_3
    return-object v2

    .line 66
    :goto_4
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :catchall_2
    move-exception p1

    .line 71
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 72
    throw p1
.end method

.method public executeShellCommandRw(Ljava/lang/String;)[Landroid/os/ParcelFileDescriptor;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    aget-object v4, v3, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 16
    .line 17
    :try_start_2
    aget-object v3, v3, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18
    .line 19
    :try_start_3
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    aget-object v6, v5, v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    .line 25
    :try_start_4
    aget-object v2, v5, v0

    .line 26
    .line 27
    iget-object v5, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 28
    .line 29
    invoke-interface {v5, p1, v3, v6}, Landroid/app/IUiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    move-object v8, v3

    .line 44
    move-object v3, v2

    .line 45
    move-object v2, v8

    .line 46
    goto :goto_1

    .line 47
    :catch_1
    move-exception p1

    .line 48
    move-object v8, v3

    .line 49
    move-object v3, v2

    .line 50
    move-object v2, v8

    .line 51
    goto :goto_2

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    move-object v6, v2

    .line 54
    :goto_0
    move-object v2, v3

    .line 55
    goto :goto_5

    .line 56
    :catch_2
    move-exception p1

    .line 57
    move-object v6, v2

    .line 58
    move-object v2, v3

    .line 59
    move-object v3, v6

    .line 60
    goto :goto_1

    .line 61
    :catch_3
    move-exception p1

    .line 62
    move-object v6, v2

    .line 63
    move-object v2, v3

    .line 64
    move-object v3, v6

    .line 65
    goto :goto_2

    .line 66
    :catch_4
    move-exception p1

    .line 67
    move-object v3, v2

    .line 68
    move-object v6, v3

    .line 69
    goto :goto_1

    .line 70
    :catch_5
    move-exception p1

    .line 71
    move-object v3, v2

    .line 72
    move-object v6, v3

    .line 73
    goto :goto_2

    .line 74
    :catchall_2
    move-exception p1

    .line 75
    move-object v6, v2

    .line 76
    goto :goto_5

    .line 77
    :catch_6
    move-exception p1

    .line 78
    move-object v3, v2

    .line 79
    move-object v4, v3

    .line 80
    move-object v6, v4

    .line 81
    :goto_1
    :try_start_5
    sget-object v5, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 82
    .line 83
    const-string v7, "Error executing shell command!"

    .line 84
    .line 85
    invoke-static {v5, v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :catch_7
    move-exception p1

    .line 90
    move-object v3, v2

    .line 91
    move-object v4, v3

    .line 92
    move-object v6, v4

    .line 93
    :goto_2
    sget-object v5, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 94
    .line 95
    const-string v7, "Error executing shell command!"

    .line 96
    .line 97
    invoke-static {v5, v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 98
    .line 99
    .line 100
    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 104
    .line 105
    .line 106
    move-object v2, v3

    .line 107
    :goto_4
    const/4 p1, 0x2

    .line 108
    new-array p1, p1, [Landroid/os/ParcelFileDescriptor;

    .line 109
    .line 110
    aput-object v4, p1, v1

    .line 111
    .line 112
    aput-object v2, p1, v0

    .line 113
    .line 114
    return-object p1

    .line 115
    :catchall_3
    move-exception p1

    .line 116
    :goto_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :catchall_4
    move-exception p1

    .line 124
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 125
    throw p1
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v2, -0x2

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionId()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return v1

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/app/UiAutomation;->mFlags:I

    return v0
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v1
.end method

.method public final getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    :try_start_1
    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "Error while getting AccessibilityServiceInfo"

    .line 29
    .line 30
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    return-object v0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    throw v1
.end method

.method public getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 9
    .line 10
    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "Error getting window animation frame stats!"

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    return-object v0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    throw v1
.end method

.method public getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    return-object p1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "Error getting window content frame stats!"

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    throw p1
.end method

.method public getWindows()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindows(I)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v1
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 9
    .line 10
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IUiAutomationConnection;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    sget-object p2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string p3, "Error granting runtime permission"

    .line 23
    .line 24
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    throw p1
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 9
    .line 10
    invoke-interface {v0, p1, p2}, Landroid/app/IUiAutomationConnection;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    return p1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    sget-object p2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "Error while injecting input event!"

    .line 19
    .line 20
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    throw p1
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    return v0
.end method

.method public final performGlobalAction(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    :try_start_1
    invoke-interface {v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z

    .line 21
    .line 22
    .line 23
    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    return p1

    .line 25
    :catch_0
    move-exception p1

    .line 26
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "Error while calling performGlobalAction"

    .line 29
    .line 30
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    throw p1
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 9
    .line 10
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IUiAutomationConnection;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    sget-object p2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string p3, "Error revoking runtime permission"

    .line 23
    .line 24
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    throw p1
.end method

.method public setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public setRotation(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v0, -0x2

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    if-eq p1, v1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Invalid rotation."

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->setRotation(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :catch_0
    move-exception p1

    .line 41
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "Error while setting rotation!"

    .line 44
    .line 45
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    return p1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw p1
.end method

.method public setRunAsMonkey(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setUserIsMonkey(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Error while setting run as monkey!"

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    throw p1
.end method

.method public final setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget v2, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    :try_start_1
    invoke-interface {v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "Error while setting AccessibilityServiceInfo"

    .line 35
    .line 36
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw p1
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v2, Landroid/graphics/Point;

    .line 18
    .line 19
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 23
    .line 24
    .line 25
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 26
    .line 27
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v4, 0x2

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    if-eq v0, v5, :cond_1

    .line 38
    .line 39
    if-eq v0, v4, :cond_2

    .line 40
    .line 41
    const/4 v5, 0x3

    .line 42
    if-ne v0, v5, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string v2, "Invalid rotation: "

    .line 48
    .line 49
    invoke-static {v2, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_1
    :goto_0
    int-to-float v5, v2

    .line 58
    int-to-float v6, v3

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    int-to-float v5, v3

    .line 61
    int-to-float v6, v2

    .line 62
    :goto_1
    const/4 v7, 0x0

    .line 63
    :try_start_1
    iget-object v8, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 64
    .line 65
    float-to-int v9, v5

    .line 66
    float-to-int v10, v6

    .line 67
    invoke-interface {v8, v9, v10}, Landroid/app/IUiAutomationConnection;->takeScreenshot(II)Landroid/graphics/Bitmap;

    .line 68
    .line 69
    .line 70
    move-result-object v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    if-nez v8, :cond_3

    .line 72
    .line 73
    return-object v7

    .line 74
    :cond_3
    if-eqz v0, :cond_4

    .line 75
    .line 76
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 77
    .line 78
    invoke-static {v3, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    new-instance v3, Landroid/graphics/Canvas;

    .line 83
    .line 84
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    div-int/2addr v9, v4

    .line 92
    int-to-float v9, v9

    .line 93
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    div-int/2addr v10, v4

    .line 98
    int-to-float v4, v10

    .line 99
    invoke-virtual {v3, v9, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Landroid/app/UiAutomation;->getDegreesForRotation(I)F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 107
    .line 108
    .line 109
    neg-float v0, v5

    .line 110
    const/high16 v4, 0x40000000    # 2.0f

    .line 111
    .line 112
    div-float/2addr v0, v4

    .line 113
    neg-float v5, v6

    .line 114
    div-float/2addr v5, v4

    .line 115
    invoke-virtual {v3, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    invoke-virtual {v3, v8, v0, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    .line 127
    .line 128
    move-object v8, v2

    .line 129
    :cond_4
    invoke-virtual {v8, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 130
    .line 131
    .line 132
    return-object v8

    .line 133
    :catch_0
    move-exception v0

    .line 134
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 135
    .line 136
    const-string v2, "Error while taking screnshot!"

    .line 137
    .line 138
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .line 140
    .line 141
    return-object v7

    .line 142
    :catchall_0
    move-exception v1

    .line 143
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    throw v1
.end method

.method public waitForIdle(JJ)V
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    move v4, v3

    .line 14
    :goto_0
    if-ge v2, v1, :cond_2

    .line 15
    .line 16
    aget-object v5, v0, v2

    .line 17
    .line 18
    const-string v6, "android.autofillservice.cts.SessionLifecycleTest"

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const/4 v7, 0x1

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    const-string/jumbo v6, "testDatasetAuthResponseWhileAutofilledAppIsLifecycled"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_0

    .line 43
    .line 44
    move v4, v7

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-string v6, "android.support.test.uiautomator.UiDevice"

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    const-string v6, "getDisplayRotation"

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_1

    .line 69
    .line 70
    move v3, v7

    .line 71
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    if-eqz v3, :cond_3

    .line 75
    .line 76
    if-eqz v4, :cond_3

    .line 77
    .line 78
    const-wide/16 v0, 0x7d0

    .line 79
    .line 80
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 84
    .line 85
    const-string/jumbo v1, "waitForIdle workaroud for cts, should be removed if google\'s bug is fixed"

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 94
    .line 95
    const-string v2, "Error while doing workaround!"

    .line 96
    .line 97
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 101
    .line 102
    monitor-enter v0

    .line 103
    :try_start_1
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v1

    .line 110
    iget-wide v3, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    .line 111
    .line 112
    const-wide/16 v5, 0x0

    .line 113
    .line 114
    cmp-long v3, v3, v5

    .line 115
    .line 116
    if-gtz v3, :cond_4

    .line 117
    .line 118
    iput-wide v1, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    .line 119
    .line 120
    :catch_1
    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    sub-long v7, v3, v1

    .line 125
    .line 126
    sub-long v7, p3, v7

    .line 127
    .line 128
    cmp-long v7, v7, v5

    .line 129
    .line 130
    if-lez v7, :cond_6

    .line 131
    .line 132
    iget-wide v7, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    .line 133
    .line 134
    sub-long/2addr v3, v7

    .line 135
    sub-long v3, p1, v3

    .line 136
    .line 137
    cmp-long v7, v3, v5

    .line 138
    .line 139
    if-gtz v7, :cond_5

    .line 140
    .line 141
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    return-void

    .line 143
    :cond_5
    :try_start_2
    iget-object v7, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 144
    .line 145
    invoke-virtual {v7, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_6
    :try_start_3
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    .line 150
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v3, "No idle state with idle timeout: "

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p1, " within global timeout: "

    .line 165
    .line 166
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-direct {v1, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v1

    .line 180
    :catchall_0
    move-exception p1

    .line 181
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    throw p1
.end method
