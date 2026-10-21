.class public interface abstract Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
.end method

.method public abstract onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
.end method

.method public abstract onRecognitionPaused()V
.end method

.method public abstract onRecognitionResumed()V
.end method
