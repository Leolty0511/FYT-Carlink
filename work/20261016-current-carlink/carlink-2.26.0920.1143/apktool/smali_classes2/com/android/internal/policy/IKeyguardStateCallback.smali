.class public interface abstract Lcom/android/internal/policy/IKeyguardStateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onHasLockscreenWallpaperChanged(Z)V
.end method

.method public abstract onInputRestrictedStateChanged(Z)V
.end method

.method public abstract onShowingStateChanged(Z)V
.end method

.method public abstract onSimSecureStateChanged(Z)V
.end method

.method public abstract onTrustedChanged(Z)V
.end method
