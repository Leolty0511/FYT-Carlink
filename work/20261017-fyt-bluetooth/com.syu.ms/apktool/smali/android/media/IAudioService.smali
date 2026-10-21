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
.method public abstract abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
.end method

.method public abstract adjustLocalOrRemoteStreamVolume(IILjava/lang/String;)V
.end method

.method public abstract adjustMasterVolume(IILjava/lang/String;)V
.end method

.method public abstract adjustStreamVolume(IIILjava/lang/String;)V
.end method

.method public abstract adjustSuggestedStreamVolume(IIILjava/lang/String;)V
.end method

.method public abstract adjustVolume(IILjava/lang/String;)V
.end method

.method public abstract avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
.end method

.method public abstract dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public abstract dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
.end method

.method public abstract forceVolumeControlStream(ILandroid/os/IBinder;)V
.end method

.method public abstract getCurrentAudioFocus()I
.end method

.method public abstract getLastAudibleMasterVolume()I
.end method

.method public abstract getLastAudibleStreamVolume(I)I
.end method

.method public abstract getMasterMaxVolume()I
.end method

.method public abstract getMasterStreamType()I
.end method

.method public abstract getMasterVolume()I
.end method

.method public abstract getMode()I
.end method

.method public abstract getRemoteStreamMaxVolume()I
.end method

.method public abstract getRemoteStreamVolume()I
.end method

.method public abstract getRingerMode()I
.end method

.method public abstract getRingtonePlayer()Landroid/media/IRingtonePlayer;
.end method

.method public abstract getStreamMaxVolume(I)I
.end method

.method public abstract getStreamVolume(I)I
.end method

.method public abstract getVibrateSetting(I)I
.end method

.method public abstract isBluetoothA2dpOn()Z
.end method

.method public abstract isBluetoothScoOn()Z
.end method

.method public abstract isCameraSoundForced()Z
.end method

.method public abstract isLocalOrRemoteMusicActive()Z
.end method

.method public abstract isMasterMute()Z
.end method

.method public abstract isSpeakerphoneOn()Z
.end method

.method public abstract isStreamMute(I)Z
.end method

.method public abstract ismapapplication(I)I
.end method

.method public abstract loadSoundEffects()Z
.end method

.method public abstract playSoundEffect(I)V
.end method

.method public abstract playSoundEffectVolume(IF)V
.end method

.method public abstract procName(I)Ljava/lang/String;
.end method

.method public abstract registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
.end method

.method public abstract registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public abstract registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
.end method

.method public abstract registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
.end method

.method public abstract registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
.end method

.method public abstract registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
.end method

.method public abstract reloadAudioSettings()V
.end method

.method public abstract remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
.end method

.method public abstract remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
.end method

.method public abstract requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract sendToSyuServiceAudioInformation(I[I[F[Ljava/lang/String;)V
.end method

.method public abstract setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
.end method

.method public abstract setBluetoothA2dpOn(Z)V
.end method

.method public abstract setBluetoothScoOn(Z)V
.end method

.method public abstract setMasterMute(ZILandroid/os/IBinder;)V
.end method

.method public abstract setMasterVolume(IILjava/lang/String;)V
.end method

.method public abstract setMode(ILandroid/os/IBinder;)V
.end method

.method public abstract setPlaybackInfoForRcc(III)V
.end method

.method public abstract setPlaybackStateForRcc(IIJF)V
.end method

.method public abstract setRemoteControlClientPlaybackPosition(IJ)V
.end method

.method public abstract setRemoteStreamVolume(I)V
.end method

.method public abstract setRingerMode(I)V
.end method

.method public abstract setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
.end method

.method public abstract setSpeakerphoneOn(Z)V
.end method

.method public abstract setStreamMute(IZLandroid/os/IBinder;)V
.end method

.method public abstract setStreamSolo(IZLandroid/os/IBinder;)V
.end method

.method public abstract setStreamVolume(IIILjava/lang/String;)V
.end method

.method public abstract setVibrateSetting(II)V
.end method

.method public abstract setWiredDeviceConnectionState(IILjava/lang/String;)V
.end method

.method public abstract shouldVibrate(I)Z
.end method

.method public abstract startBluetoothSco(Landroid/os/IBinder;I)V
.end method

.method public abstract startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
.end method

.method public abstract stopBluetoothSco(Landroid/os/IBinder;)V
.end method

.method public abstract unloadSoundEffects()V
.end method

.method public abstract unregisterAudioFocusClient(Ljava/lang/String;)V
.end method

.method public abstract unregisterMediaButtonEventReceiverForCalls()V
.end method

.method public abstract unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
.end method

.method public abstract unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
.end method

.method public abstract unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
.end method

.method public abstract updateRemoteControlClientMetadata(IILandroid/media/Rating;)V
.end method

.method public abstract verifyX509CertChain(I[BLjava/lang/String;Ljava/lang/String;)I
.end method
