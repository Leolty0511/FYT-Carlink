.class Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioSpeechItem"
.end annotation


# instance fields
.field private final mItem:Landroid/speech/tts/AudioPlaybackQueueItem;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6

    .line 1
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Landroid/speech/tts/AudioPlaybackQueueItem;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    move-object v0, p2

    .line 17
    move-object v1, p0

    .line 18
    move-object v3, p1

    .line 19
    move-object v4, p7

    .line 20
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/AudioPlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/speech/tts/TextToSpeechService$AudioOutputParams;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->mItem:Landroid/speech/tts/AudioPlaybackQueueItem;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->createFromParamsBundle(Landroid/os/Bundle;Z)Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    move-result-object v0

    return-object v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "utteranceId"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public playImpl()V
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->mItem:Landroid/speech/tts/AudioPlaybackQueueItem;

    invoke-virtual {v0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->enqueue(Landroid/speech/tts/PlaybackQueueItem;)V

    return-void
.end method

.method public stopImpl()V
    .locals 0

    return-void
.end method
