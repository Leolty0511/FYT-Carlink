.class public interface abstract Lcom/google/android/projection/protocol/InputOutputThreads$FrameParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/InputOutputThreads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameParser"
.end annotation


# virtual methods
.method public abstract dequeueOutgoingFrame([B)I
.end method

.method public abstract enqueueIncomingFrame([BI)V
.end method

.method public abstract getFrameSizeToRead([BI)I
.end method

.method public abstract onTerminating(Ljava/lang/Runnable;)V
.end method

.method public abstract onThreadsTerminated(Lcom/google/android/projection/protocol/Transport$StopReason;)V
.end method
