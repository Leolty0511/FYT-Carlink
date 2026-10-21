.class Landroid/speech/tts/EventLogger;
.super Landroid/speech/tts/AbstractEventLogger;
.source "SourceFile"


# instance fields
.field private final mRequest:Landroid/speech/tts/SynthesisRequest;


# direct methods
.method public constructor <init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Landroid/speech/tts/AbstractEventLogger;-><init>(IILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 5
    .line 6
    return-void
.end method

.method private getLocaleString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const/16 v1, 0x2d

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method private getUtteranceLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getText()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    return v0
.end method


# virtual methods
.method public logFailure(I)V
    .locals 8

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Landroid/speech/tts/AbstractEventLogger;->mServiceApp:Ljava/lang/String;

    .line 5
    .line 6
    iget v2, p0, Landroid/speech/tts/AbstractEventLogger;->mCallerUid:I

    .line 7
    .line 8
    iget v3, p0, Landroid/speech/tts/AbstractEventLogger;->mCallerPid:I

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getUtteranceLength()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getLocaleString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object p1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    iget-object p1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-static/range {v1 .. v7}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakFailure(Ljava/lang/String;IIILjava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public logSuccess(JJJ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroid/speech/tts/AbstractEventLogger;->mServiceApp:Ljava/lang/String;

    .line 3
    .line 4
    iget v2, v0, Landroid/speech/tts/AbstractEventLogger;->mCallerUid:I

    .line 5
    .line 6
    iget v3, v0, Landroid/speech/tts/AbstractEventLogger;->mCallerPid:I

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getUtteranceLength()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getLocaleString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    iget-object v6, v0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 17
    .line 18
    invoke-virtual {v6}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    iget-object v7, v0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 23
    .line 24
    invoke-virtual {v7}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    move-wide/from16 v8, p3

    .line 29
    .line 30
    move-wide/from16 v10, p5

    .line 31
    .line 32
    move-wide v12, p1

    .line 33
    invoke-static/range {v1 .. v13}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakSuccess(Ljava/lang/String;IIILjava/lang/String;IIJJJ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
