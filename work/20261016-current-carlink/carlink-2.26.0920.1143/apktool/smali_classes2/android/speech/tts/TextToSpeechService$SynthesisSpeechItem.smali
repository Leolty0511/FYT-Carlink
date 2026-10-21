.class Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SynthesisSpeechItem"
.end annotation


# instance fields
.field private final mCallerUid:I

.field private final mDefaultLocale:[Ljava/lang/String;

.field private final mEventLogger:Landroid/speech/tts/EventLogger;

.field private mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

.field private final mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

.field private final mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p7, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput p3, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mCallerUid:I

    .line 9
    .line 10
    new-instance p2, Landroid/speech/tts/SynthesisRequest;

    .line 11
    .line 12
    iget-object p5, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {p2, p7, p5}, Landroid/speech/tts/SynthesisRequest;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->access$800(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p5

    .line 23
    iput-object p5, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {p0, p2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->setRequestParams(Landroid/speech/tts/SynthesisRequest;)V

    .line 26
    .line 27
    .line 28
    new-instance p5, Landroid/speech/tts/EventLogger;

    .line 29
    .line 30
    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->access$900(Landroid/speech/tts/TextToSpeechService;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p5, p2, p3, p4, p1}, Landroid/speech/tts/EventLogger;-><init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput-object p5, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mEventLogger:Landroid/speech/tts/EventLogger;

    .line 38
    .line 39
    return-void
.end method

.method private getCountry()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->hasLanguage()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aget-object v0, v0, v1

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    .line 14
    .line 15
    const-string v1, "country"

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method private getVariant()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->hasLanguage()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    aget-object v0, v0, v1

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    .line 14
    .line 15
    const-string/jumbo v1, "variant"

    .line 16
    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method private setRequestParams(Landroid/speech/tts/SynthesisRequest;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getVoiceName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getLanguage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getCountry()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getVariant()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1, v1, v2, v3}, Landroid/speech/tts/SynthesisRequest;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getVoiceName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/speech/tts/SynthesisRequest;->setVoiceName(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->getSpeechRate()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/speech/tts/SynthesisRequest;->setSpeechRate(I)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mCallerUid:I

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/speech/tts/SynthesisRequest;->setCallerUid(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->getPitch()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p1, v0}, Landroid/speech/tts/SynthesisRequest;->setPitch(I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;
    .locals 8

    .line 1
    new-instance v7, Landroid/speech/tts/PlaybackSynthesisCallback;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object v5, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mEventLogger:Landroid/speech/tts/EventLogger;

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v0, v7

    .line 21
    move-object v3, p0

    .line 22
    invoke-direct/range {v0 .. v6}, Landroid/speech/tts/PlaybackSynthesisCallback;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;Z)V

    .line 23
    .line 24
    .line 25
    return-object v7
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "language"

    invoke-virtual {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getVoiceName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "voiceName"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "TextToSpeechService"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "null synthesis text"

    .line 9
    .line 10
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-lt v0, v3, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "Text too long: "

    .line 27
    .line 28
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, " chars"

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return v1

    .line 53
    :cond_1
    const/4 v0, 0x1

    .line 54
    return v0
.end method

.method public playImpl()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mEventLogger:Landroid/speech/tts/EventLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/speech/tts/AbstractEventLogger;->onRequestProcessingStart()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->isStopped()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

    .line 20
    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 23
    .line 24
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService;->onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Landroid/speech/tts/SynthesisCallback;->hasStarted()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Landroid/speech/tts/SynthesisCallback;->hasFinished()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Landroid/speech/tts/SynthesisCallback;->done()I

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw v0
.end method

.method public stopImpl()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

    .line 3
    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->stop()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService;->onStop()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->dispatchOnStop()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v0
.end method
