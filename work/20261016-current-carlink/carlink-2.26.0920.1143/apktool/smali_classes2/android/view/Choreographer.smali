.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$FrameCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_ANIMATION:I = 0x1

.field public static final CALLBACK_COMMIT:I = 0x3

.field public static final CALLBACK_INPUT:I = 0x0

.field private static final CALLBACK_LAST:I = 0x3

.field private static final CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field public static final CALLBACK_TRAVERSAL:I = 0x2

.field private static final DEBUG_FRAMES:Z = false

.field private static final DEBUG_JANK:Z = false

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final MSG_DO_FRAME:I = 0x0

.field private static final MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static final USE_FRAME_TIME:Z

.field private static final USE_VSYNC:Z

.field private static volatile sFrameDelay:J = 0xaL

.field private static final sSfThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private mCallbacksRunning:Z

.field private mDebugPrintNextFrameTimeDelta:Z

.field private final mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field mFrameInfo:Landroid/view/FrameInfo;

.field private mFrameIntervalNanos:J

.field private mFrameScheduled:Z

.field private final mHandler:Landroid/view/Choreographer$FrameHandler;

.field private mLastFrameTimeNanos:J

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/Choreographer$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Landroid/view/Choreographer$2;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    const-string v0, "debug.choreographer.vsync"

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    .line 23
    .line 24
    const-string v0, "debug.choreographer.frametime"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    .line 31
    .line 32
    const-string v0, "debug.choreographer.skipwarning"

    .line 33
    .line 34
    const/16 v1, 0x1e

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    .line 41
    .line 42
    new-instance v0, Landroid/view/Choreographer$3;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/view/Choreographer$3;-><init>()V

    .line 45
    .line 46
    .line 47
    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 48
    .line 49
    const-string/jumbo v0, "traversal"

    .line 50
    .line 51
    .line 52
    const-string v1, "commit"

    .line 53
    .line 54
    const-string v2, "input"

    .line 55
    .line 56
    const-string v3, "animation"

    .line 57
    .line 58
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    .line 63
    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Landroid/view/FrameInfo;

    invoke-direct {v0}, Landroid/view/FrameInfo;-><init>()V

    iput-object v0, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    .line 5
    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    .line 6
    new-instance v0, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v0, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 7
    sget-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;I)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    const-wide/high16 p1, -0x8000000000000000L

    .line 8
    iput-wide p1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const p1, 0x4e6e6b28    # 1.0E9f

    .line 9
    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result p2

    div-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/view/Choreographer$CallbackQueue;

    .line 10
    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    const/4 p1, 0x0

    :goto_1
    const/4 p2, 0x3

    if-gt p1, p2, :cond_1

    .line 11
    iget-object p2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v0, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v0, p0, v1}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$1;)V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Looper;ILandroid/view/Choreographer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method public static synthetic access$300(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .locals 0

    iget-object p0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object p0
.end method

.method public static synthetic access$400()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$500(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method private dispose()V
    .locals 1

    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver;->dispose()V

    return-void
.end method

.method public static getFrameDelay()J
    .locals 2

    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static getInstance()Landroid/view/Choreographer;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private static getRefreshRate()F
    .locals 2

    .line 1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public static getSfInstance()Landroid/view/Choreographer;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private isRunningOnLooperThreadLocked()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/view/Choreographer$CallbackRecord;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$1;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 13
    .line 14
    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 15
    .line 16
    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 17
    .line 18
    :goto_0
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 19
    .line 20
    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 23
    .line 24
    return-object v0
.end method

.method private postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    add-long/2addr p4, v1

    .line 9
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 10
    .line 11
    aget-object v3, v3, p1

    .line 12
    .line 13
    invoke-virtual {v3, p4, p5, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    cmp-long p3, p4, v1

    .line 17
    .line 18
    if-gtz p3, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p3, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    invoke-virtual {p2, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 38
    .line 39
    invoke-virtual {p1, p2, p4, p5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 40
    .line 41
    .line 42
    :goto_0
    monitor-exit v0

    .line 43
    return-void

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

.method private recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 3
    .line 4
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 7
    .line 8
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 9
    .line 10
    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 11
    .line 12
    return-void
.end method

.method public static releaseInstance()V
    .locals 2

    .line 1
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/view/Choreographer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Landroid/view/Choreographer;->dispose()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 5
    .line 6
    aget-object p1, v1, p1

    .line 7
    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 16
    .line 17
    const/4 p3, 0x2

    .line 18
    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
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

.method private scheduleFrameLocked(J)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 7
    .line 8
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 38
    .line 39
    const-wide/32 v3, 0xf4240

    .line 40
    .line 41
    .line 42
    div-long/2addr v1, v3

    .line 43
    sget-wide v3, Landroid/view/Choreographer;->sFrameDelay:J

    .line 44
    .line 45
    add-long/2addr v1, v3

    .line 46
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 61
    .line 62
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method private scheduleVsyncLocked()V
    .locals 1

    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver;->scheduleVsync()V

    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0

    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    return-void
.end method

.method public static subtractFrameDelay(J)J
    .locals 3

    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    sub-long/2addr p0, v0

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public doCallbacks(IJ)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move/from16 v0, p1

    .line 3
    .line 4
    iget-object v2, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v2

    .line 7
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    iget-object v5, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 12
    .line 13
    aget-object v5, v5, v0

    .line 14
    .line 15
    const-wide/32 v6, 0xf4240

    .line 16
    .line 17
    .line 18
    div-long v6, v3, v6

    .line 19
    .line 20
    invoke-virtual {v5, v6, v7}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    monitor-exit v2

    .line 27
    return-void

    .line 28
    :cond_0
    const/4 v6, 0x1

    .line 29
    iput-boolean v6, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 30
    .line 31
    const/4 v6, 0x3

    .line 32
    const-wide/16 v7, 0x8

    .line 33
    .line 34
    if-ne v0, v6, :cond_1

    .line 35
    .line 36
    sub-long v9, v3, p2

    .line 37
    .line 38
    const-string v6, "jitterNanos"

    .line 39
    .line 40
    long-to-int v11, v9

    .line 41
    invoke-static {v7, v8, v6, v11}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    iget-wide v11, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 45
    .line 46
    const-wide/16 v13, 0x2

    .line 47
    .line 48
    mul-long/2addr v13, v11

    .line 49
    cmp-long v6, v9, v13

    .line 50
    .line 51
    if-ltz v6, :cond_1

    .line 52
    .line 53
    rem-long/2addr v9, v11

    .line 54
    add-long/2addr v9, v11

    .line 55
    sub-long/2addr v3, v9

    .line 56
    iput-wide v3, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-wide/from16 v3, p2

    .line 60
    .line 61
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 62
    const/4 v2, 0x0

    .line 63
    :try_start_1
    sget-object v6, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    .line 64
    .line 65
    aget-object v0, v6, v0

    .line 66
    .line 67
    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    move-object v0, v5

    .line 71
    :goto_1
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0, v3, v4}, Landroid/view/Choreographer$CallbackRecord;->run(J)V

    .line 74
    .line 75
    .line 76
    iget-object v0, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter v3

    .line 82
    :try_start_2
    iput-boolean v2, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 83
    .line 84
    :goto_2
    iget-object v0, v5, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 85
    .line 86
    invoke-direct {p0, v5}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 87
    .line 88
    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    move-object v5, v0

    .line 97
    goto :goto_2

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    throw v0

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 103
    .line 104
    monitor-enter v3

    .line 105
    :try_start_4
    iput-boolean v2, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 106
    .line 107
    :goto_3
    iget-object v2, v5, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 108
    .line 109
    invoke-direct {p0, v5}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 110
    .line 111
    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    move-object v5, v2

    .line 115
    goto :goto_3

    .line 116
    :cond_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 117
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :catchall_2
    move-exception v0

    .line 122
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 123
    throw v0

    .line 124
    :catchall_3
    move-exception v0

    .line 125
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 126
    throw v0
.end method

.method public doFrame(JI)V
    .locals 9

    .line 1
    const-string p3, "Skipped "

    .line 2
    .line 3
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    sub-long v3, v1, p1

    .line 17
    .line 18
    iget-wide v5, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 19
    .line 20
    cmp-long v7, v3, v5

    .line 21
    .line 22
    if-ltz v7, :cond_2

    .line 23
    .line 24
    div-long v5, v3, v5

    .line 25
    .line 26
    sget v7, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    .line 27
    .line 28
    int-to-long v7, v7

    .line 29
    cmp-long v7, v5, v7

    .line 30
    .line 31
    if-ltz v7, :cond_1

    .line 32
    .line 33
    const-string v7, "Choreographer"

    .line 34
    .line 35
    new-instance v8, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v8, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p3, " frames!  The application may be doing too much work on its main thread."

    .line 44
    .line 45
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-static {v7, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-wide v5, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 56
    .line 57
    rem-long/2addr v3, v5

    .line 58
    sub-long/2addr v1, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move-wide v1, p1

    .line 61
    :goto_0
    iget-wide v3, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 62
    .line 63
    cmp-long p3, v1, v3

    .line 64
    .line 65
    if-gez p3, :cond_3

    .line 66
    .line 67
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 68
    .line 69
    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :cond_3
    iget-object p3, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    .line 73
    .line 74
    invoke-virtual {p3, p1, p2, v1, v2}, Landroid/view/FrameInfo;->setVsync(JJ)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 79
    .line 80
    iput-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 81
    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    const-wide/16 p2, 0x8

    .line 84
    .line 85
    :try_start_1
    const-string v0, "Choreographer#doFrame"

    .line 86
    .line 87
    invoke-static {p2, p3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-wide/32 v3, 0xf4240

    .line 91
    .line 92
    .line 93
    div-long v3, v1, v3

    .line 94
    .line 95
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(J)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/view/FrameInfo;->markInputHandlingStart()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/FrameInfo;->markAnimationsStart()V

    .line 109
    .line 110
    .line 111
    const/4 p1, 0x1

    .line 112
    invoke-virtual {p0, p1, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/view/FrameInfo;->markPerformTraversalsStart()V

    .line 118
    .line 119
    .line 120
    const/4 p1, 0x2

    .line 121
    invoke-virtual {p0, p1, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 122
    .line 123
    .line 124
    const/4 p1, 0x3

    .line 125
    invoke-virtual {p0, p1, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 129
    .line 130
    .line 131
    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :catchall_0
    move-exception p1

    .line 136
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 137
    .line 138
    .line 139
    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :catchall_1
    move-exception p1

    .line 144
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    throw p1
.end method

.method public doScheduleCallback(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 13
    .line 14
    aget-object p1, v3, p1

    .line 15
    .line 16
    invoke-virtual {p1, v1, v2}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 23
    .line 24
    .line 25
    :cond_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method

.method public doScheduleVsync()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 9
    .line 10
    .line 11
    :cond_0
    monitor-exit v0

    .line 12
    return-void

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

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, "  "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "Choreographer:"

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p1, "mFrameScheduled="

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean p1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 35
    .line 36
    const-string v1, "mLastFrameTime="

    .line 37
    .line 38
    invoke-static {p2, p1, v0, v1}, Landroid/accessibilityservice/c;->y(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 42
    .line 43
    const-wide/32 v2, 0xf4240

    .line 44
    .line 45
    .line 46
    div-long/2addr v0, v2

    .line 47
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public getFrameIntervalNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    return-wide v0
.end method

.method public getFrameTime()J
    .locals 4

    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrameTimeNanos()J
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-wide v1

    .line 21
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v2, "This method must only be called as part of a callback while a frame is in progress."

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v1

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method

.method public getLastFrameTimeNanos()J
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return-wide v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    return-void
.end method

.method public postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p2, "callbackType is invalid"

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "action must not be null"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v2, p1

    .line 8
    move-wide v4, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string p2, "callback must not be null"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string p2, "callbackType is invalid"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "callback must not be null"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method
