.class public interface abstract Lcom/google/android/projection/protocol/AudioSink$AudioListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioListener"
.end annotation


# virtual methods
.method public abstract onAudioData(IJ[B)V
.end method

.method public abstract onCodecConfig([B)V
.end method

.method public abstract onSetUp(I)V
.end method

.method public abstract onShutdown()V
.end method

.method public abstract onStart(I)V
.end method

.method public abstract onStop(I)V
.end method
