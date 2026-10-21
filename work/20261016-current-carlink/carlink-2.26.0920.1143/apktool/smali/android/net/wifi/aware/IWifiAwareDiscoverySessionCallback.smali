.class public interface abstract Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMatch(I[B[B)V
.end method

.method public abstract onMessageReceived(I[B)V
.end method

.method public abstract onMessageSendFail(II)V
.end method

.method public abstract onMessageSendSuccess(I)V
.end method

.method public abstract onSessionConfigFail(I)V
.end method

.method public abstract onSessionConfigSuccess()V
.end method

.method public abstract onSessionStarted(I)V
.end method

.method public abstract onSessionTerminated(I)V
.end method
