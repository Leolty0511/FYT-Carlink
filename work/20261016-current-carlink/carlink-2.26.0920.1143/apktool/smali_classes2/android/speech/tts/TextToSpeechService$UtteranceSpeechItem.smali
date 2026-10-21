.class abstract Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$SpeechItem;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "UtteranceSpeechItem"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$SpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public dispatchOnAudioAvailable([B)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$500(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2, v0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnAudioAvailable(Ljava/lang/Object;Ljava/lang/String;[B)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public dispatchOnBeginSynthesis(III)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$500(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move v3, p1

    .line 18
    move v4, p2

    .line 19
    move v5, p3

    .line 20
    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnBeginSynthesis(Ljava/lang/Object;Ljava/lang/String;III)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public dispatchOnError(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$500(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2, v0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnError(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public dispatchOnRangeStart(III)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$500(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move v3, p1

    .line 18
    move v4, p2

    .line 19
    move v5, p3

    .line 20
    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnRangeStart(Ljava/lang/Object;Ljava/lang/String;III)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public dispatchOnStart()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$500(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnStart(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public dispatchOnStop()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$500(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->isStarted()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v1, v2, v0, v3}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnStop(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public dispatchOnSuccess()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$500(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public getFloatParam(Landroid/os/Bundle;Ljava/lang/String;F)F
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p3

    :goto_0
    return p3
.end method

.method public getIntParam(Landroid/os/Bundle;Ljava/lang/String;I)I
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    :goto_0
    return p3
.end method

.method public getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    return-object p3
.end method

.method public abstract getUtteranceId()Ljava/lang/String;
.end method
