.class Lcom/syu/bt/util/MyMediaPlayer$3;
.super Ljava/util/TimerTask;
.source "MyMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/util/MyMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/util/MyMediaPlayer;


# direct methods
.method constructor <init>(Lcom/syu/bt/util/MyMediaPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/util/MyMediaPlayer$3;->this$0:Lcom/syu/bt/util/MyMediaPlayer;

    .line 70
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer$3;->this$0:Lcom/syu/bt/util/MyMediaPlayer;

    invoke-static {v0, v2}, Lcom/syu/bt/util/MyMediaPlayer;->access$1(Lcom/syu/bt/util/MyMediaPlayer;Z)V

    .line 74
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer$3;->this$0:Lcom/syu/bt/util/MyMediaPlayer;

    invoke-static {v0}, Lcom/syu/bt/util/MyMediaPlayer;->access$0(Lcom/syu/bt/util/MyMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer$3;->this$0:Lcom/syu/bt/util/MyMediaPlayer;

    invoke-static {v0}, Lcom/syu/bt/util/MyMediaPlayer;->access$0(Lcom/syu/bt/util/MyMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer$3;->this$0:Lcom/syu/bt/util/MyMediaPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/syu/bt/util/MyMediaPlayer;->access$1(Lcom/syu/bt/util/MyMediaPlayer;Z)V

    .line 78
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer$3;->this$0:Lcom/syu/bt/util/MyMediaPlayer;

    invoke-static {v0}, Lcom/syu/bt/util/MyMediaPlayer;->access$2(Lcom/syu/bt/util/MyMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
