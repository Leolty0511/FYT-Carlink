.class public interface abstract Landroid/net/IIpConnectivityMetrics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpConnectivityMetrics$Stub;
    }
.end annotation


# virtual methods
.method public abstract logEvent(Landroid/net/ConnectivityMetricsEvent;)I
.end method

.method public abstract registerNetdEventCallback(Landroid/net/INetdEventCallback;)Z
.end method

.method public abstract unregisterNetdEventCallback()Z
.end method
