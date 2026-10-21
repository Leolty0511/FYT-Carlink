.class public interface abstract Landroid/media/IMediaRouterService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRouterService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
.end method

.method public abstract isPlaybackActive(Landroid/media/IMediaRouterClient;)Z
.end method

.method public abstract registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
.end method

.method public abstract requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
.end method

.method public abstract requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
.end method

.method public abstract setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
.end method

.method public abstract setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
.end method

.method public abstract unregisterClient(Landroid/media/IMediaRouterClient;)V
.end method
