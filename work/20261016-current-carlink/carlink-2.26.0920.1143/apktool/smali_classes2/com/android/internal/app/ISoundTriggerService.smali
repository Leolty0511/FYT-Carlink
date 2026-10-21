.class public interface abstract Lcom/android/internal/app/ISoundTriggerService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ISoundTriggerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract deleteSoundModel(Landroid/os/ParcelUuid;)V
.end method

.method public abstract getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
.end method

.method public abstract isRecognitionActive(Landroid/os/ParcelUuid;)Z
.end method

.method public abstract loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I
.end method

.method public abstract loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
.end method

.method public abstract startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
.end method

.method public abstract startRecognitionForIntent(Landroid/os/ParcelUuid;Landroid/app/PendingIntent;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
.end method

.method public abstract stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
.end method

.method public abstract stopRecognitionForIntent(Landroid/os/ParcelUuid;)I
.end method

.method public abstract unloadSoundModel(Landroid/os/ParcelUuid;)I
.end method

.method public abstract updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
.end method
