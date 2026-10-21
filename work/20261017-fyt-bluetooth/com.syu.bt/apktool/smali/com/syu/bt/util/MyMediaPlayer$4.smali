.class Lcom/syu/bt/util/MyMediaPlayer$4;
.super Ljava/lang/Object;
.source "MyMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

.field private final synthetic val$listener:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method constructor <init>(Lcom/syu/bt/util/MyMediaPlayer;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/util/MyMediaPlayer$4;->this$0:Lcom/syu/bt/util/MyMediaPlayer;

    iput-object p2, p0, Lcom/syu/bt/util/MyMediaPlayer$4;->val$listener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/syu/bt/util/MyMediaPlayer$4;->this$0:Lcom/syu/bt/util/MyMediaPlayer;

    iget-object v1, p0, Lcom/syu/bt/util/MyMediaPlayer$4;->val$listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-static {v0, p1, v1}, Lcom/syu/bt/util/MyMediaPlayer;->access$3(Lcom/syu/bt/util/MyMediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 154
    return-void
.end method
