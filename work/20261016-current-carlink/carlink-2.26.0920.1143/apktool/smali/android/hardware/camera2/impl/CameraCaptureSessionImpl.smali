.class public Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
.super Landroid/hardware/camera2/CameraCaptureSession;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraCaptureSessionCore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;,
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;,
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CameraCaptureSession"


# instance fields
.field private final mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

.field private volatile mAborting:Z

.field private mClosed:Z

.field private final mConfigureSuccess:Z

.field private final mDeviceHandler:Landroid/os/Handler;

.field private final mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field private final mId:I

.field private final mIdString:Ljava/lang/String;

.field private final mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

.field private final mInput:Landroid/view/Surface;

.field private final mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TaskDrainer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipUnconfigure:Z

.field private final mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final mStateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(ILandroid/view/Surface;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iput p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v2, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    aput-object p1, v2, v0

    .line 21
    .line 22
    const-string p1, "Session %d: "

    .line 23
    .line 24
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    .line 31
    .line 32
    invoke-static {p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateHandler:Landroid/os/Handler;

    .line 37
    .line 38
    invoke-direct {p0, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createUserStateCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 43
    .line 44
    const-string p3, "deviceStateHandler must not be null"

    .line 45
    .line 46
    invoke-static {p6, p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    check-cast p3, Landroid/os/Handler;

    .line 51
    .line 52
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    .line 53
    .line 54
    const-string p4, "deviceImpl must not be null"

    .line 55
    .line 56
    invoke-static {p5, p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    check-cast p4, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 61
    .line 62
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 63
    .line 64
    new-instance p4, Landroid/hardware/camera2/utils/TaskDrainer;

    .line 65
    .line 66
    new-instance p5, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;

    .line 67
    .line 68
    const/4 p6, 0x0

    .line 69
    invoke-direct {p5, p0, p6}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;)V

    .line 70
    .line 71
    .line 72
    const-string/jumbo v2, "seq"

    .line 73
    .line 74
    .line 75
    invoke-direct {p4, p3, p5, v2}, Landroid/hardware/camera2/utils/TaskDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    .line 79
    .line 80
    new-instance p4, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 81
    .line 82
    new-instance p5, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;

    .line 83
    .line 84
    invoke-direct {p5, p0, p6}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;)V

    .line 85
    .line 86
    .line 87
    const-string/jumbo v2, "idle"

    .line 88
    .line 89
    .line 90
    invoke-direct {p4, p3, p5, v2}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 94
    .line 95
    new-instance p4, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 96
    .line 97
    new-instance p5, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;

    .line 98
    .line 99
    invoke-direct {p5, p0, p6}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;)V

    .line 100
    .line 101
    .line 102
    const-string p6, "abort"

    .line 103
    .line 104
    invoke-direct {p4, p3, p5, p6}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 108
    .line 109
    if-eqz p7, :cond_0

    .line 110
    .line 111
    invoke-virtual {p2, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 112
    .line 113
    .line 114
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mConfigureSuccess:Z

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p2, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 118
    .line 119
    .line 120
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    .line 121
    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p1, "Failed to create capture session; configuration failed"

    .line 131
    .line 132
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const-string p2, "CameraCaptureSession"

    .line 140
    .line 141
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mConfigureSuccess:Z

    .line 145
    .line 146
    :goto_0
    return-void

    .line 147
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    const-string p2, "callback must not be null"

    .line 150
    .line 151
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1
.end method

.method public static synthetic access$1000(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->finishPendingSequence(I)V

    return-void
.end method

.method public static synthetic access$400(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    return p0
.end method

.method public static synthetic access$702(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    return p1
.end method

.method public static synthetic access$800(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    return-object p0
.end method

.method public static synthetic access$900(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    return p0
.end method

.method private addPendingSequence(I)I
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskStarted(Ljava/lang/Object;)V

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Session has been closed; further changes are illegal."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .locals 3

    .line 1
    new-instance v0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Landroid/hardware/camera2/dispatch/InvokeDispatcher;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroid/hardware/camera2/dispatch/InvokeDispatcher;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/hardware/camera2/dispatch/InvokeDispatcher;

    .line 15
    .line 16
    invoke-direct {v0, p2}, Landroid/hardware/camera2/dispatch/InvokeDispatcher;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance p2, Landroid/hardware/camera2/dispatch/HandlerDispatcher;

    .line 20
    .line 21
    invoke-direct {p2, v0, p1}, Landroid/hardware/camera2/dispatch/HandlerDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Landroid/os/Handler;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;

    .line 25
    .line 26
    const-class v0, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 27
    .line 28
    invoke-direct {p1, p2, v0}, Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {p2, p1, v0, p0}, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Landroid/hardware/camera2/dispatch/BroadcastDispatcher;

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    new-array v2, v2, [Landroid/hardware/camera2/dispatch/Dispatchable;

    .line 41
    .line 42
    aput-object p2, v2, v0

    .line 43
    .line 44
    const/4 p2, 0x1

    .line 45
    aput-object v1, v2, p2

    .line 46
    .line 47
    invoke-direct {p1, v2}, Landroid/hardware/camera2/dispatch/BroadcastDispatcher;-><init>([Landroid/hardware/camera2/dispatch/Dispatchable;)V

    .line 48
    .line 49
    .line 50
    new-instance p2, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;

    .line 51
    .line 52
    invoke-direct {p2, p1}, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;)V

    .line 53
    .line 54
    .line 55
    return-object p2
.end method

.method private createUserStateCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/camera2/dispatch/InvokeDispatcher;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Landroid/hardware/camera2/dispatch/InvokeDispatcher;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Landroid/hardware/camera2/dispatch/HandlerDispatcher;

    .line 7
    .line 8
    invoke-direct {p2, v0, p1}, Landroid/hardware/camera2/dispatch/HandlerDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method private finishPendingSequence(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskFinished(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    const-string v0, "CameraCaptureSession"

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method


# virtual methods
.method public abortCaptures()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v1, "CameraCaptureSession"

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, "abortCaptures - Session is already aborting; doing nothing"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :cond_0
    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    .line 41
    .line 42
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->flush()V

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw v1
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isReprocessable()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string/jumbo p2, "this capture session cannot handle reprocess requests"

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getReprocessableSessionId()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    .line 36
    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string p2, "capture request was created for another session"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 49
    .line 50
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v0

    .line 53
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 54
    .line 55
    .line 56
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 61
    .line 62
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    .line 67
    .line 68
    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    monitor-exit v0

    .line 77
    return p1

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p1

    .line 81
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string/jumbo p2, "request must not be null"

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isReprocessable()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getReprocessableSessionId()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    .line 42
    .line 43
    if-ne v1, v2, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string p2, "Capture request was created for another session"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string p2, "This capture session cannot handle reprocess requests"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 63
    .line 64
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v0

    .line 67
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 68
    .line 69
    .line 70
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 75
    .line 76
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    .line 81
    .line 82
    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    monitor-exit v0

    .line 91
    return p1

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p1

    .line 95
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    const-string p2, "Requests must have at least one element"

    .line 98
    .line 99
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    const-string p2, "Requests must not be null"

    .line 106
    .line 107
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public close()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    :try_start_2
    const-string v2, "CameraCaptureSession"

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, "Exception while stopping repeating: "

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskDrainer;->beginDrain()V

    .line 49
    .line 50
    .line 51
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void

    .line 60
    :catch_1
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 61
    .line 62
    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 63
    .line 64
    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception v1

    .line 68
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    throw v1
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public finalizeOutputConfigurations(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->finalizeOutputConfigs(Ljava/util/List;)V

    return-void
.end method

.method public getDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    return-object v0
.end method

.method public getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 4
    .line 5
    new-instance v1, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;

    .line 6
    .line 7
    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v1
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    return-object v0
.end method

.method public isAborting()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    return v0
.end method

.method public isReprocessable()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare(ILandroid/view/Surface;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->prepare(ILandroid/view/Surface;)V

    return-void
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->prepare(Landroid/view/Surface;)V

    return-void
.end method

.method public replaceSessionClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string/jumbo p2, "repeating reprocess burst requests are not supported"

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 42
    .line 43
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 47
    .line 48
    .line 49
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 54
    .line 55
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    .line 60
    .line 61
    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    monitor-exit v0

    .line 70
    return p1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p1

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string/jumbo p2, "requests must have at least one element"

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    const-string/jumbo p2, "requests must not be null"

    .line 86
    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 15
    .line 16
    .line 17
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 22
    .line 23
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    monitor-exit v0

    .line 38
    return p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string/jumbo p2, "repeating reprocess requests are not supported"

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string/jumbo p2, "request must not be null"

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public stopRepeating()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
.end method

.method public tearDown(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->tearDown(Landroid/view/Surface;)V

    return-void
.end method
