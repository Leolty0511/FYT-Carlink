.class public interface abstract Landroid/speech/IRecognitionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IRecognitionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBeginningOfSpeech()V
.end method

.method public abstract onBufferReceived([B)V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onEvent(ILandroid/os/Bundle;)V
.end method

.method public abstract onPartialResults(Landroid/os/Bundle;)V
.end method

.method public abstract onReadyForSpeech(Landroid/os/Bundle;)V
.end method

.method public abstract onResults(Landroid/os/Bundle;)V
.end method

.method public abstract onRmsChanged(F)V
.end method
