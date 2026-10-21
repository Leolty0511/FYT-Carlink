.class Lcom/google/android/projection/sink/video/ProjectionRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/video/ProjectionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$1;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$1;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$1;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 5
    .line 6
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {v0, p1, p3, p4}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$800(Lcom/google/android/projection/sink/video/ProjectionRenderer;Landroid/view/Surface;II)V

    .line 11
    .line 12
    .line 13
    monitor-exit p2

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$1;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$1;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$900(Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;->onSurfaceDestroyed(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$1;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$1002(Lcom/google/android/projection/sink/video/ProjectionRenderer;Landroid/view/Surface;)Landroid/view/Surface;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer$1;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->access$1100(Lcom/google/android/projection/sink/video/ProjectionRenderer;)V

    .line 23
    .line 24
    .line 25
    monitor-exit p1

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v0
.end method
