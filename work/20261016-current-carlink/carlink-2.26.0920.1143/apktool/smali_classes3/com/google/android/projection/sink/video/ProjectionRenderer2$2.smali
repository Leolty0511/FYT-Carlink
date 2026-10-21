.class Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/video/ProjectionRenderer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field isSurfaceCreated:Z

.field final synthetic this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->isSurfaceCreated:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->isSurfaceCreated:Z

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->isSurfaceCreated:Z

    .line 8
    .line 9
    iget-object p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$1000(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p2}, Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;->onSurfaceCreated()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 19
    .line 20
    invoke-static {p2}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$000(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Landroid/view/SurfaceView;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Landroid/view/View;

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    iget-object p3, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 33
    .line 34
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-static {p3, p1, p4, p2}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$1100(Lcom/google/android/projection/sink/video/ProjectionRenderer2;Landroid/view/Surface;II)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p2, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 51
    .line 52
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p2, p1, p3, p4}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$1100(Lcom/google/android/projection/sink/video/ProjectionRenderer2;Landroid/view/Surface;II)V

    .line 57
    .line 58
    .line 59
    :goto_0
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    const/4 p1, 0x1

    .line 3
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->isSurfaceCreated:Z

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$1000(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;->onSurfaceCreated()V

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$1000(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;->onSurfaceDestroyed(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$1000(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Lcom/google/android/projection/sink/video/ProjectionRenderer2$Listener;->onSurfaceDestroyed()V

    .line 19
    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->isSurfaceCreated:Z

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$1202(Lcom/google/android/projection/sink/video/ProjectionRenderer2;Landroid/view/Surface;)Landroid/view/Surface;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/projection/sink/video/ProjectionRenderer2$2;->this$0:Lcom/google/android/projection/sink/video/ProjectionRenderer2;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/google/android/projection/sink/video/ProjectionRenderer2;->access$1300(Lcom/google/android/projection/sink/video/ProjectionRenderer2;)V

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method
