.class public Landroid/hardware/camera2/legacy/GLThreadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_ALLOW_FRAMES:I = 0x5

.field private static final MSG_CLEANUP:I = 0x3

.field private static final MSG_DROP_FRAMES:I = 0x4

.field private static final MSG_NEW_CONFIGURATION:I = 0x1

.field private static final MSG_NEW_FRAME:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private final mGLHandlerCb:Landroid/os/Handler$Callback;

.field private final mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

.field private final mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

.field private final mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;


# direct methods
.method public constructor <init>(IILandroid/hardware/camera2/legacy/CameraDeviceState;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    .line 5
    .line 6
    const-string v1, "GL Preview Producer"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    .line 12
    .line 13
    new-instance v0, Landroid/hardware/camera2/legacy/GLThreadManager$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroid/hardware/camera2/legacy/GLThreadManager$1;-><init>(Landroid/hardware/camera2/legacy/GLThreadManager;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerCb:Landroid/os/Handler$Callback;

    .line 19
    .line 20
    new-instance v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    .line 21
    .line 22
    invoke-direct {v1, p2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    new-array p2, p2, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    aput-object p1, p2, v1

    .line 36
    .line 37
    const-string p1, "CameraDeviceGLThread-%d"

    .line 38
    .line 39
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    new-instance p2, Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 46
    .line 47
    invoke-direct {p2, p1, v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 51
    .line 52
    iput-object p3, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 53
    .line 54
    return-void
.end method

.method public static synthetic access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/hardware/camera2/legacy/GLThreadManager;Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CaptureCollector;
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    return-object p1
.end method

.method public static synthetic access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    return-object p0
.end method


# virtual methods
.method public allowNewFrames()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getCurrentSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public ignoreNewFrames()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public queueNewFrame()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "GLThread dropping frame.  Not consuming frames quickly enough!"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public quit()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    aput-object v2, v1, v3

    .line 39
    .line 40
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x1

    .line 51
    aput-object v2, v1, v3

    .line 52
    .line 53
    const-string v2, "Thread %s (%d) interrupted while quitting."

    .line 54
    .line 55
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public setConfigurationAndWait(Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;",
            "Landroid/hardware/camera2/legacy/CaptureCollector;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "collector must not be null"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroid/os/ConditionVariable;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;

    .line 19
    .line 20
    invoke-direct {v3, v1, p1, p2}, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;-><init>(Landroid/os/ConditionVariable;Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {v0, p1, v2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public waitUntilIdle()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilIdle()V

    return-void
.end method

.method public waitUntilStarted()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilStarted()V

    return-void
.end method
