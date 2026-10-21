.class public interface abstract Landroid/media/IAudioService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub;
    }
.end annotation


# virtual methods
.method public abstract abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
.end method

.method public abstract adjustStreamVolume(IIILjava/lang/String;)V
.end method

.method public abstract adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
.end method

.method public abstract disableRingtoneSync(I)V
.end method

.method public abstract disableSafeMediaVolume(Ljava/lang/String;)V
.end method

.method public abstract dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
.end method

.method public abstract forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
.end method

.method public abstract forceVolumeControlStream(ILandroid/os/IBinder;)V
.end method

.method public abstract getActivePlaybackConfigurations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActiveRecordingConfigurations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentAudioFocus()I
.end method

.method public abstract getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
.end method

.method public abstract getLastAudibleStreamVolume(I)I
.end method

.method public abstract getMode()I
.end method

.method public abstract getRingerModeExternal()I
.end method

.method public abstract getRingerModeInternal()I
.end method

.method public abstract getRingtonePlayer()Landroid/media/IRingtonePlayer;
.end method

.method public abstract getSafeMediaVolumeEnabled(Ljava/lang/String;)Z
.end method

.method public abstract getStreamMaxVolume(I)I
.end method

.method public abstract getStreamMinVolume(I)I
.end method

.method public abstract getStreamVolume(I)I
.end method

.method public abstract getUiSoundsStreamType()I
.end method

.method public abstract getVibrateSetting(I)I
.end method

.method public abstract handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract isBluetoothA2dpOn()Z
.end method

.method public abstract isBluetoothScoOn()Z
.end method

.method public abstract isCameraSoundForced()Z
.end method

.method public abstract isHdmiSystemAudioSupported()Z
.end method

.method public abstract isMasterMute()Z
.end method

.method public abstract isSpeakerphoneOn()Z
.end method

.method public abstract isStreamAffectedByMute(I)Z
.end method

.method public abstract isStreamAffectedByRingerMode(I)Z
.end method

.method public abstract isStreamMute(I)Z
.end method

.method public abstract isValidRingerMode(I)Z
.end method

.method public abstract loadSoundEffects()Z
.end method

.method public abstract notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
.end method

.method public abstract playSoundEffect(I)V
.end method

.method public abstract playSoundEffectVolume(IF)V
.end method

.method public abstract playerAttributes(ILandroid/media/AudioAttributes;)V
.end method

.method public abstract playerEvent(II)V
.end method

.method public abstract playerHasOpPlayAudio(IZ)V
.end method

.method public abstract registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZ)Ljava/lang/String;
.end method

.method public abstract registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
.end method

.method public abstract registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
.end method

.method public abstract releasePlayer(I)V
.end method

.method public abstract reloadAudioSettings()V
.end method

.method public abstract requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
.end method

.method public abstract setAudioSwitch2iis(Z)V
.end method

.method public abstract setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
.end method

.method public abstract setBluetoothA2dpOn(Z)V
.end method

.method public abstract setBluetoothScoOn(Z)V
.end method

.method public abstract setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
.end method

.method public abstract setForceUseSpeaker(IZLandroid/os/IBinder;Ljava/lang/String;)V
.end method

.method public abstract setHdmiSystemAudioSupported(Z)I
.end method

.method public abstract setMasterMute(ZILjava/lang/String;I)V
.end method

.method public abstract setMicrophoneMute(ZLjava/lang/String;I)V
.end method

.method public abstract setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
.end method

.method public abstract setRingerModeExternal(ILjava/lang/String;)V
.end method

.method public abstract setRingerModeInternal(ILjava/lang/String;)V
.end method

.method public abstract setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
.end method

.method public abstract setSpeakerphoneOn(Z)V
.end method

.method public abstract setStreamVolume(IIILjava/lang/String;)V
.end method

.method public abstract setVibrateSetting(II)V
.end method

.method public abstract setVoiceSwitch2iis(Z)V
.end method

.method public abstract setVolumeController(Landroid/media/IVolumeController;)V
.end method

.method public abstract setVolumePolicy(Landroid/media/VolumePolicy;)V
.end method

.method public abstract setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract shouldVibrate(I)Z
.end method

.method public abstract startBluetoothSco(Landroid/os/IBinder;I)V
.end method

.method public abstract startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
.end method

.method public abstract startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
.end method

.method public abstract stopBluetoothSco(Landroid/os/IBinder;)V
.end method

.method public abstract trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
.end method

.method public abstract unloadSoundEffects()V
.end method

.method public abstract unregisterAudioFocusClient(Ljava/lang/String;)V
.end method

.method public abstract unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
.end method

.method public abstract unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
.end method

.method public abstract unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
.end method
