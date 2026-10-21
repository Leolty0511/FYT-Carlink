.class Landroid/speech/tts/AudioPlaybackQueueItem$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/AudioPlaybackQueueItem;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/speech/tts/AudioPlaybackQueueItem;


# direct methods
.method public constructor <init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem$2;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem$2;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/speech/tts/AudioPlaybackQueueItem;->access$102(Landroid/speech/tts/AudioPlaybackQueueItem;Z)Z

    .line 2
    iget-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem$2;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    invoke-static {p1}, Landroid/speech/tts/AudioPlaybackQueueItem;->access$000(Landroid/speech/tts/AudioPlaybackQueueItem;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
