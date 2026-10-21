.class public interface abstract Landroid/media/audiopolicy/IAudioPolicyCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
.end method

.method public abstract notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
.end method

.method public abstract notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
.end method

.method public abstract notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
.end method

.method public abstract notifyMixStateUpdate(Ljava/lang/String;I)V
.end method
