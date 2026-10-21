.class public interface abstract Lcom/android/internal/app/IVoiceInteractionManagerService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract activeServiceSupportsAssist()Z
.end method

.method public abstract activeServiceSupportsLaunchFromKeyguard()Z
.end method

.method public abstract closeSystemDialogs(Landroid/os/IBinder;)V
.end method

.method public abstract deleteKeyphraseSoundModel(ILjava/lang/String;)I
.end method

.method public abstract deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
.end method

.method public abstract finish(Landroid/os/IBinder;)V
.end method

.method public abstract getActiveServiceComponentName()Landroid/content/ComponentName;
.end method

.method public abstract getDisabledShowContext()I
.end method

.method public abstract getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
.end method

.method public abstract getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
.end method

.method public abstract getUserDisabledShowContext()I
.end method

.method public abstract hideCurrentSession()V
.end method

.method public abstract hideSessionFromSession(Landroid/os/IBinder;)Z
.end method

.method public abstract isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z
.end method

.method public abstract isSessionRunning()Z
.end method

.method public abstract launchVoiceAssistFromKeyguard()V
.end method

.method public abstract onLockscreenShown()V
.end method

.method public abstract registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
.end method

.method public abstract setDisabledShowContext(I)V
.end method

.method public abstract setKeepAwake(Landroid/os/IBinder;Z)V
.end method

.method public abstract showSession(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;I)V
.end method

.method public abstract showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
.end method

.method public abstract showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
.end method

.method public abstract startAssistantActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
.end method

.method public abstract startRecognition(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
.end method

.method public abstract startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
.end method

.method public abstract stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
.end method

.method public abstract updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
.end method
