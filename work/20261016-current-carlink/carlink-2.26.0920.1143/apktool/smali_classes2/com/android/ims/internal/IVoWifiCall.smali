.class public interface abstract Lcom/android/ims/internal/IVoWifiCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IVoWifiCall$Stub;
    }
.end annotation


# virtual methods
.method public abstract cameraAttach(ZIZ)I
.end method

.method public abstract cameraDetach(ZI)I
.end method

.method public abstract captureStart(ZIII)I
.end method

.method public abstract captureStop(Z)I
.end method

.method public abstract captureStopAll()I
.end method

.method public abstract confAcceptInvite(I)I
.end method

.method public abstract confAddMembers(I[Ljava/lang/String;[I)I
.end method

.method public abstract confCall([Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public abstract confHold(I)I
.end method

.method public abstract confInit(Z)I
.end method

.method public abstract confKickMembers(I[Ljava/lang/String;)I
.end method

.method public abstract confRelease(I)I
.end method

.method public abstract confResume(I)I
.end method

.method public abstract confSetLocalImageForTrans(ILjava/lang/String;Z)I
.end method

.method public abstract confSetMute(IZ)I
.end method

.method public abstract confSetup(ILjava/lang/String;)I
.end method

.method public abstract confTerm(II)I
.end method

.method public abstract confUpdateSRVCCResult(II)I
.end method

.method public abstract getDefaultVideoLevel()I
.end method

.method public abstract getMediaJitter(IZZ)I
.end method

.method public abstract getMediaLostRatio(IZZ)I
.end method

.method public abstract getMediaRtt(IZZ)I
.end method

.method public abstract localRenderAdd(Landroid/view/Surface;Z)I
.end method

.method public abstract localRenderRemove(Landroid/view/Surface;Z)I
.end method

.method public abstract localRenderRotate(ZII)I
.end method

.method public abstract registerCallback(Lcom/android/ims/internal/IVoWifiCallCallback;)V
.end method

.method public abstract remoteRenderAdd(Landroid/view/Surface;ZI)I
.end method

.method public abstract remoteRenderRemove(Landroid/view/Surface;ZI)I
.end method

.method public abstract remoteRenderRotate(ZII)I
.end method

.method public abstract sendSessionModifyRequest(II)I
.end method

.method public abstract sendSessionModifyResponse(II)I
.end method

.method public abstract sendUSSDMessage(ILjava/lang/String;)I
.end method

.method public abstract sessAnswer(ILjava/lang/String;ZZ)I
.end method

.method public abstract sessCall(Ljava/lang/String;Ljava/lang/String;ZZZZ)I
.end method

.method public abstract sessDtmf(II)I
.end method

.method public abstract sessHold(I)I
.end method

.method public abstract sessRelease(I)I
.end method

.method public abstract sessResume(I)I
.end method

.method public abstract sessSetMicMute(IZ)I
.end method

.method public abstract sessTerm(II)I
.end method

.method public abstract sessUpdate(II)I
.end method

.method public abstract sessUpdateSRVCCResult(II)I
.end method

.method public abstract setDefaultVideoLevel(I)I
.end method

.method public abstract startAudioStream()V
.end method

.method public abstract stopAudioStream()V
.end method

.method public abstract unregisterCallback(Lcom/android/ims/internal/IVoWifiCallCallback;)V
.end method

.method public abstract updateDataRouterState(I)I
.end method

.method public abstract videoStart(ZI)I
.end method

.method public abstract videoStop(ZI)I
.end method
