.class public final Landroid/speech/tts/SynthesisRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCallerUid:I

.field private mCountry:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private final mParams:Landroid/os/Bundle;

.field private mPitch:I

.field private mSpeechRate:I

.field private final mText:Ljava/lang/String;

.field private mVariant:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/String;

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getCallerUid()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mCallerUid:I

    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPitch()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    return v0
.end method

.method public getSpeechRate()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    return-object v0
.end method

.method public setCallerUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mCallerUid:I

    return-void
.end method

.method public setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    return-void
.end method

.method public setPitch(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    return-void
.end method

.method public setSpeechRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    return-void
.end method
