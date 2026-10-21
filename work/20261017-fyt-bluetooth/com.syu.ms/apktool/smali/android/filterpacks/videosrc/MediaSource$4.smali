.class Landroid/filterpacks/videosrc/MediaSource$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/filterpacks/videosrc/MediaSource;


# direct methods
.method public constructor <init>(Landroid/filterpacks/videosrc/MediaSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {p1}, Landroid/filterpacks/videosrc/MediaSource;->access$000(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MediaSource"

    const-string v0, "New frame from media player"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$000(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MediaSource"

    const-string v1, "New frame: notify"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterpacks/videosrc/MediaSource;->access$802(Landroid/filterpacks/videosrc/MediaSource;Z)Z

    .line 5
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 6
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$000(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MediaSource"

    const-string v1, "New frame: notify done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
