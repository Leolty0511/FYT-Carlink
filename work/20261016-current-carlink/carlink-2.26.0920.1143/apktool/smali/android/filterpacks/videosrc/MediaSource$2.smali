.class Landroid/filterpacks/videosrc/MediaSource$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

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
    const-string v0, "MediaPlayer is prepared"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {v0, v1}, Landroid/filterpacks/videosrc/MediaSource;->access$602(Landroid/filterpacks/videosrc/MediaSource;Z)Z

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 28
    .line 29
    .line 30
    monitor-exit p1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0
.end method
