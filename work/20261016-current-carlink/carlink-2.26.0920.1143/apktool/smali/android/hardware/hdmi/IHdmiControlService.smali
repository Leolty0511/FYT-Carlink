.class public interface abstract Landroid/hardware/hdmi/IHdmiControlService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiControlService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
.end method

.method public abstract addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
.end method

.method public abstract addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
.end method

.method public abstract addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
.end method

.method public abstract addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
.end method

.method public abstract canChangeSystemAudioMode()Z
.end method

.method public abstract clearTimerRecording(II[B)V
.end method

.method public abstract deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
.end method

.method public abstract getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
.end method

.method public abstract getDeviceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPortInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedTypes()[I
.end method

.method public abstract getSystemAudioMode()Z
.end method

.method public abstract oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
.end method

.method public abstract portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
.end method

.method public abstract queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
.end method

.method public abstract removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
.end method

.method public abstract removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
.end method

.method public abstract sendKeyEvent(IIZ)V
.end method

.method public abstract sendMhlVendorCommand(III[B)V
.end method

.method public abstract sendStandby(II)V
.end method

.method public abstract sendVendorCommand(II[BZ)V
.end method

.method public abstract setArcMode(Z)V
.end method

.method public abstract setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
.end method

.method public abstract setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
.end method

.method public abstract setProhibitMode(Z)V
.end method

.method public abstract setStandbyMode(Z)V
.end method

.method public abstract setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
.end method

.method public abstract setSystemAudioMute(Z)V
.end method

.method public abstract setSystemAudioVolume(III)V
.end method

.method public abstract startOneTouchRecord(I[B)V
.end method

.method public abstract startTimerRecording(II[B)V
.end method

.method public abstract stopOneTouchRecord(I)V
.end method
