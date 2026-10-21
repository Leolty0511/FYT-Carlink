.class Lcom/syu/bt/util/MyMediaPlayer$5;
.super Ljava/lang/Object;
.source "MyMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/util/MyMediaPlayer;->playUrl(Landroid/content/Context;Ljava/lang/String;ZLandroid/media/MediaPlayer$OnCompletionListener;)V
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
    iput-object p1, p0, Lcom/syu/bt/util/MyMediaPlayer$5;->this$0:Lcom/syu/bt/util/MyMediaPlayer;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer$5;->this$0:Lcom/syu/bt/util/MyMediaPlayer;

    iget-object v0, v0, Lcom/syu/bt/util/MyMediaPlayer;->audioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/syu/bt/util/MyMediaPlayer;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 160
    const/4 v0, 0x0

    return v0
.end method
