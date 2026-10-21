.class public interface abstract Landroid/media/tv/ITvInputHardware;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputHardware$Stub;
    }
.end annotation


# virtual methods
.method public abstract dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z
.end method

.method public abstract overrideAudioSink(ILjava/lang/String;III)V
.end method

.method public abstract setStreamVolume(F)V
.end method

.method public abstract setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
.end method
