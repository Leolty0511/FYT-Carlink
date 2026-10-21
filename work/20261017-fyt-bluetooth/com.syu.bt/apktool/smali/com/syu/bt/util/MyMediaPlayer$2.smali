.class Lcom/syu/bt/util/MyMediaPlayer$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/syu/bt/util/MyMediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/util/MyMediaPlayer$2;->this$0:Lcom/syu/bt/util/MyMediaPlayer;

    .line 54
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer$2;->this$0:Lcom/syu/bt/util/MyMediaPlayer;

    invoke-static {v0}, Lcom/syu/bt/util/MyMediaPlayer;->access$0(Lcom/syu/bt/util/MyMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer$2;->this$0:Lcom/syu/bt/util/MyMediaPlayer;

    invoke-static {v0}, Lcom/syu/bt/util/MyMediaPlayer;->access$0(Lcom/syu/bt/util/MyMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 65
    :cond_0
    return-void
.end method
