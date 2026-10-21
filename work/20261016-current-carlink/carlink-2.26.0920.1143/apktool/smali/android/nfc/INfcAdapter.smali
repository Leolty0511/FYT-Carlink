.class public interface abstract Landroid/nfc/INfcAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub;
    }
.end annotation


# virtual methods
.method public abstract addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V
.end method

.method public abstract disable(Z)Z
.end method

.method public abstract disableNdefPush()Z
.end method

.method public abstract dispatch(Landroid/nfc/Tag;)V
.end method

.method public abstract enable()Z
.end method

.method public abstract enableNdefPush()Z
.end method

.method public abstract getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;
.end method

.method public abstract getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
.end method

.method public abstract getNfcDtaInterface(Ljava/lang/String;)Landroid/nfc/INfcDta;
.end method

.method public abstract getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;
.end method

.method public abstract getNfcTagInterface()Landroid/nfc/INfcTag;
.end method

.method public abstract getState()I
.end method

.method public abstract ignore(IILandroid/nfc/ITagRemovedCallback;)Z
.end method

.method public abstract invokeBeam()V
.end method

.method public abstract invokeBeamInternal(Landroid/nfc/BeamShareData;)V
.end method

.method public abstract isNdefPushEnabled()Z
.end method

.method public abstract pausePolling(I)V
.end method

.method public abstract removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V
.end method

.method public abstract resumePolling()V
.end method

.method public abstract setAppCallback(Landroid/nfc/IAppCallback;)V
.end method

.method public abstract setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
.end method

.method public abstract setP2pModes(II)V
.end method

.method public abstract setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
.end method

.method public abstract verifyNfcPermission()V
.end method
