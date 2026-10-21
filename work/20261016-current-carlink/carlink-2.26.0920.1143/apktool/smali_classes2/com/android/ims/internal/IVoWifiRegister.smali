.class public interface abstract Lcom/android/ims/internal/IVoWifiRegister;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IVoWifiRegister$Stub;
    }
.end annotation


# virtual methods
.method public abstract cliLogin(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public abstract cliLogout()I
.end method

.method public abstract cliOpen(I)I
.end method

.method public abstract cliRefresh(ILjava/lang/String;)I
.end method

.method public abstract cliReset()I
.end method

.method public abstract cliStart()I
.end method

.method public abstract cliUpdateSettings(Z)I
.end method

.method public abstract registerCallback(Lcom/android/ims/internal/IVoWifiRegisterCallback;)V
.end method

.method public abstract unregisterCallback(Lcom/android/ims/internal/IVoWifiRegisterCallback;)V
.end method
