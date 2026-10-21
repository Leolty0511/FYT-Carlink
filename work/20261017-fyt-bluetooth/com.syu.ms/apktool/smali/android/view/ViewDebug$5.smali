.class final Landroid/view/ViewDebug$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$duration:[J

.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$operation:Landroid/view/ViewDebug$ViewOperation;


# direct methods
.method public constructor <init>(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    iput-object p2, p0, Landroid/view/ViewDebug$5;->val$duration:[J

    iput-object p3, p0, Landroid/view/ViewDebug$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    invoke-interface {v0}, Landroid/view/ViewDebug$ViewOperation;->pre()[Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v1

    .line 3
    iget-object v3, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    invoke-interface {v3, v0}, Landroid/view/ViewDebug$ViewOperation;->run([Ljava/lang/Object;)V

    .line 4
    iget-object v3, p0, Landroid/view/ViewDebug$5;->val$duration:[J

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v5

    sub-long/2addr v5, v1

    aput-wide v5, v3, v4

    .line 5
    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    invoke-interface {v1, v0}, Landroid/view/ViewDebug$ViewOperation;->post([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Landroid/view/ViewDebug$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
