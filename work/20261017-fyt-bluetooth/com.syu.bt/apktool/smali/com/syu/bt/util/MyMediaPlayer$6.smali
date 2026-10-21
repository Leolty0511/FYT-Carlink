.class Lcom/syu/bt/util/MyMediaPlayer$6;
.super Ljava/lang/Object;
.source "MyMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/util/MyMediaPlayer;->setMpPrepareMrthod(Landroid/media/MediaPlayer;Z)V
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
    iput-object p1, p0, Lcom/syu/bt/util/MyMediaPlayer$6;->this$0:Lcom/syu/bt/util/MyMediaPlayer;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 177
    return-void
.end method
