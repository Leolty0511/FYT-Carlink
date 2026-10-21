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
.field final synthetic this$0:Landroid/filterpacks/videosrc/MediaSource;


# direct methods
.method public constructor <init>(Landroid/filterpacks/videosrc/MediaSource;)V
    .locals 0

    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/filterpacks/videosrc/MediaSource;->access$000(Landroid/filterpacks/videosrc/MediaSource;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "MediaSource"

    .line 10
    .line 11
    const-string v0, "New frame from media player"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$000(Landroid/filterpacks/videosrc/MediaSource;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v0, "MediaSource"

    .line 28
    .line 29
    const-string v1, "New frame: notify"

    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-static {v0, v1}, Landroid/filterpacks/videosrc/MediaSource;->access$802(Landroid/filterpacks/videosrc/MediaSource;Z)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 46
    .line 47
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$000(Landroid/filterpacks/videosrc/MediaSource;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const-string v0, "MediaSource"

    .line 54
    .line 55
    const-string v1, "New frame: notify done"

    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_2
    monitor-exit p1

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw v0
.end method
