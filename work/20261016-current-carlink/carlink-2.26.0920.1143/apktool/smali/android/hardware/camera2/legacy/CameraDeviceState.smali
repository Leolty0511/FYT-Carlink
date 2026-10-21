.class public Landroid/hardware/camera2/legacy/CameraDeviceState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final NO_CAPTURE_ERROR:I = -0x1

.field private static final STATE_CAPTURING:I = 0x4

.field private static final STATE_CONFIGURING:I = 0x2

.field private static final STATE_ERROR:I = 0x0

.field private static final STATE_IDLE:I = 0x3

.field private static final STATE_UNCONFIGURED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraDeviceState"

.field private static final sStateNames:[Ljava/lang/String;


# instance fields
.field private mCurrentError:I

.field private mCurrentHandler:Landroid/os/Handler;

.field private mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

.field private mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

.field private mCurrentState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "IDLE"

    .line 2
    .line 3
    const-string v1, "CAPTURING"

    .line 4
    .line 5
    const-string v2, "ERROR"

    .line 6
    .line 7
    const-string v3, "UNCONFIGURED"

    .line 8
    .line 9
    const-string v4, "CONFIGURING"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroid/hardware/camera2/legacy/CameraDeviceState;->sStateNames:[Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 12
    .line 13
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$000(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/hardware/camera2/legacy/CameraDeviceState;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    return p0
.end method

.method public static synthetic access$200(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    return-object p0
.end method

.method private doStateTransition(I)V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(IJI)V

    return-void
.end method

.method private doStateTransition(IJI)V
    .locals 6

    .line 2
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    const-string v1, "CameraDeviceState"

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_0

    .line 3
    sget-object v0, Landroid/hardware/camera2/legacy/CameraDeviceState;->sStateNames:[Ljava/lang/String;

    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 4
    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "UNKNOWN"

    .line 5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Legacy camera service transitioning to state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x3

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    .line 6
    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v2, p1, :cond_2

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v3, :cond_2

    .line 7
    new-instance v3, Landroid/hardware/camera2/legacy/CameraDeviceState$5;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$5;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 v2, 0x0

    if-eqz p1, :cond_e

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_b

    const/4 v5, 0x4

    if-eq p1, v0, :cond_7

    if-ne p1, v5, :cond_6

    .line 8
    iget p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq p1, v0, :cond_3

    if-eq p1, v5, :cond_3

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot call capture while in state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    .line 10
    invoke-static {p1, p2, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 11
    iput v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 12
    invoke-direct {p0, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    goto/16 :goto_2

    .line 13
    :cond_3
    iget-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    if-eq p4, v0, :cond_4

    .line 14
    new-instance p2, Landroid/hardware/camera2/legacy/CameraDeviceState$9;

    invoke-direct {p2, p0, p4}, Landroid/hardware/camera2/legacy/CameraDeviceState$9;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 15
    :cond_4
    new-instance p4, Landroid/hardware/camera2/legacy/CameraDeviceState$10;

    invoke-direct {p4, p0, p2, p3}, Landroid/hardware/camera2/legacy/CameraDeviceState$10;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;J)V

    invoke-virtual {p1, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    :cond_5
    :goto_1
    iput v5, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    goto/16 :goto_2

    .line 17
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Transition to unknown state: "

    .line 18
    invoke-static {p3, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_7
    iget p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-ne p1, v0, :cond_8

    goto/16 :goto_2

    :cond_8
    if-eq p1, v4, :cond_9

    if-eq p1, v5, :cond_9

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot call idle while in state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    .line 22
    invoke-static {p1, p2, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    iput v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 24
    invoke-direct {p0, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    goto :goto_2

    :cond_9
    if-eq p1, v0, :cond_a

    .line 25
    iget-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz p1, :cond_a

    iget-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz p2, :cond_a

    .line 26
    new-instance p2, Landroid/hardware/camera2/legacy/CameraDeviceState$8;

    invoke-direct {p2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$8;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    :cond_a
    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    goto :goto_2

    .line 28
    :cond_b
    iget p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq p1, v3, :cond_c

    if-eq p1, v0, :cond_c

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot call configure while in state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    .line 30
    invoke-static {p1, p2, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 31
    iput v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 32
    invoke-direct {p0, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    goto :goto_2

    :cond_c
    if-eq p1, v4, :cond_d

    .line 33
    iget-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz p1, :cond_d

    iget-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz p2, :cond_d

    .line 34
    new-instance p2, Landroid/hardware/camera2/legacy/CameraDeviceState$7;

    invoke-direct {p2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$7;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    :cond_d
    iput v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    goto :goto_2

    .line 36
    :cond_e
    iget p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz p1, :cond_f

    iget-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz p2, :cond_f

    .line 37
    new-instance p2, Landroid/hardware/camera2/legacy/CameraDeviceState$6;

    invoke-direct {p2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$6;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    :cond_f
    iput v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    :goto_2
    return-void
.end method


# virtual methods
.method public declared-synchronized setCameraDeviceCallbacks(Landroid/os/Handler;Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    .line 3
    .line 4
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method public declared-synchronized setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z
    .locals 6

    const-string v0, "Cannot receive result while in state: "

    monitor-enter p0

    .line 1
    :try_start_0
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v1, v2, :cond_1

    const-string p1, "CameraDeviceState"

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 4
    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    .line 5
    iget p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v5, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    monitor-exit p0

    return v3

    .line 6
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v1, :cond_3

    if-eq p3, v5, :cond_2

    .line 7
    new-instance p2, Landroid/hardware/camera2/legacy/CameraDeviceState$1;

    invoke-direct {p2, p0, p3, p4, p1}, Landroid/hardware/camera2/legacy/CameraDeviceState$1;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;ILjava/lang/Object;Landroid/hardware/camera2/legacy/RequestHolder;)V

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 8
    :cond_2
    new-instance p3, Landroid/hardware/camera2/legacy/CameraDeviceState$2;

    invoke-direct {p3, p0, p2, p1}, Landroid/hardware/camera2/legacy/CameraDeviceState$2;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/RequestHolder;)V

    invoke-virtual {v0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    :cond_3
    :goto_1
    iget p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v5, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 3
    .line 4
    const/4 p1, 0x4

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(IJI)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    const/4 p2, -0x1

    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    monitor-exit p0

    .line 17
    return p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public declared-synchronized setConfiguring()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x2

    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    monitor-exit p0

    .line 15
    return v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public declared-synchronized setError(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public declared-synchronized setIdle()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x3

    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    monitor-exit p0

    .line 15
    return v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public declared-synchronized setRepeatingRequestError(JI)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    .line 3
    .line 4
    new-instance v1, Landroid/hardware/camera2/legacy/CameraDeviceState$3;

    .line 5
    .line 6
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/camera2/legacy/CameraDeviceState$3;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;JI)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public declared-synchronized setRequestQueueEmpty()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    .line 3
    .line 4
    new-instance v1, Landroid/hardware/camera2/legacy/CameraDeviceState$4;

    .line 5
    .line 6
    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$4;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method
