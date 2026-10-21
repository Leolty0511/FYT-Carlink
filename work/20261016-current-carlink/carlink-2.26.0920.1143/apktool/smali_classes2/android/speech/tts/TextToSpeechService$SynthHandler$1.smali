.class Landroid/speech/tts/TextToSpeechService$SynthHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

.field final synthetic val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->access$100(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    .line 18
    .line 19
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->access$200(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->play()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->access$200(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
