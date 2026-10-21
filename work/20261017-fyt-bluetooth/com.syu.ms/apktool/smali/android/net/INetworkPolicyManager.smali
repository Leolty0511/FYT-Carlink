.class public interface abstract Landroid/net/INetworkPolicyManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getNetworkPolicies()[Landroid/net/NetworkPolicy;
.end method

.method public abstract getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
.end method

.method public abstract getRestrictBackground()Z
.end method

.method public abstract getUidPolicy(I)I
.end method

.method public abstract getUidsWithPolicy(I)[I
.end method

.method public abstract isNetworkMetered(Landroid/net/NetworkState;)Z
.end method

.method public abstract isUidForeground(I)Z
.end method

.method public abstract registerListener(Landroid/net/INetworkPolicyListener;)V
.end method

.method public abstract setNetworkPolicies([Landroid/net/NetworkPolicy;)V
.end method

.method public abstract setRestrictBackground(Z)V
.end method

.method public abstract setUidPolicy(II)V
.end method

.method public abstract snoozeLimit(Landroid/net/NetworkTemplate;)V
.end method

.method public abstract unregisterListener(Landroid/net/INetworkPolicyListener;)V
.end method
