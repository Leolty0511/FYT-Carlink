.class public interface abstract Landroid/net/INetworkPolicyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMeteredIfacesChanged([Ljava/lang/String;)V
.end method

.method public abstract onRestrictBackgroundChanged(Z)V
.end method

.method public abstract onUidRulesChanged(II)V
.end method
