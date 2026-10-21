.class public interface abstract Lcom/android/ims/internal/uce/uceservice/IUceService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;
    }
.end annotation


# virtual methods
.method public abstract createOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I
.end method

.method public abstract createPresenceService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I
.end method

.method public abstract destroyOptionsService(I)V
.end method

.method public abstract destroyPresenceService(I)V
.end method

.method public abstract getOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;
.end method

.method public abstract getPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;
.end method

.method public abstract getServiceStatus()Z
.end method

.method public abstract isServiceStarted()Z
.end method

.method public abstract startService(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z
.end method

.method public abstract stopService()Z
.end method
