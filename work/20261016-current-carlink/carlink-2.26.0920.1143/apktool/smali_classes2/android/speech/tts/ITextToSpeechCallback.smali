.class public interface abstract Landroid/speech/tts/ITextToSpeechCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAudioAvailable(Ljava/lang/String;[B)V
.end method

.method public abstract onBeginSynthesis(Ljava/lang/String;III)V
.end method

.method public abstract onError(Ljava/lang/String;I)V
.end method

.method public abstract onRangeStart(Ljava/lang/String;III)V
.end method

.method public abstract onStart(Ljava/lang/String;)V
.end method

.method public abstract onStop(Ljava/lang/String;Z)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
