.class public interface abstract Landroid/media/tv/ITvInputService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputService$Stub;
    }
.end annotation


# virtual methods
.method public abstract createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V
.end method

.method public abstract createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V
.end method

.method public abstract notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
.end method

.method public abstract notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
.end method

.method public abstract notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
.end method

.method public abstract notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
.end method

.method public abstract registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
.end method

.method public abstract unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
.end method
