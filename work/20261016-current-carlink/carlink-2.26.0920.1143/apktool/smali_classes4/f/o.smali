.class public final Lf/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;


# instance fields
.field public final synthetic a:Lcom/syu/carlink/auto/AutoFragment;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/auto/AutoFragment;)V
    .locals 0

    iput-object p1, p0, Lf/o;->a:Lcom/syu/carlink/auto/AutoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/o;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->b:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lf/o;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, p1, v2}, Lcom/google/android/projection/protocol/VideoSink;->ackFrames(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public final onSurfaceCreated(IIZ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/o;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/syu/carlink/auto/AutoFragment;->q:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance p2, Lf/n;

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    invoke-direct {p2, p0, p3}, Lf/n;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x3e8

    .line 12
    .line 13
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onSurfaceDestroyed(Z)V
    .locals 0

    return-void
.end method
