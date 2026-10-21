.class public interface abstract Landroid/hardware/hdmi/IHdmiRecordListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiRecordListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract getOneTouchRecordSource(I)[B
.end method

.method public abstract onClearTimerRecordingResult(II)V
.end method

.method public abstract onOneTouchRecordResult(II)V
.end method

.method public abstract onTimerRecordingResult(II)V
.end method
