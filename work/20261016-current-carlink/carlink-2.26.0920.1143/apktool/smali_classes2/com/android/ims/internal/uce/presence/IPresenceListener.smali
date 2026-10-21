.class public interface abstract Lcom/android/ims/internal/uce/presence/IPresenceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract capInfoReceived(Ljava/lang/String;[Lcom/android/ims/internal/uce/presence/PresTupleInfo;)V
.end method

.method public abstract cmdStatus(Lcom/android/ims/internal/uce/presence/PresCmdStatus;)V
.end method

.method public abstract getVersionCb(Ljava/lang/String;)V
.end method

.method public abstract listCapInfoReceived(Lcom/android/ims/internal/uce/presence/PresRlmiInfo;[Lcom/android/ims/internal/uce/presence/PresResInfo;)V
.end method

.method public abstract publishTriggering(Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;)V
.end method

.method public abstract serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
.end method

.method public abstract serviceUnAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
.end method

.method public abstract sipResponseReceived(Lcom/android/ims/internal/uce/presence/PresSipResponse;)V
.end method

.method public abstract unpublishMessageSent()V
.end method
