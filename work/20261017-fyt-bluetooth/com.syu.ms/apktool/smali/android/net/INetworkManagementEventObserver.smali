.class public interface abstract Landroid/net/INetworkManagementEventObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkManagementEventObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract addressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract addressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract interfaceAdded(Ljava/lang/String;)V
.end method

.method public abstract interfaceClassDataActivityChanged(Ljava/lang/String;Z)V
.end method

.method public abstract interfaceLinkStateChanged(Ljava/lang/String;Z)V
.end method

.method public abstract interfaceRemoved(Ljava/lang/String;)V
.end method

.method public abstract interfaceStatusChanged(Ljava/lang/String;Z)V
.end method

.method public abstract limitReached(Ljava/lang/String;Ljava/lang/String;)V
.end method
