.class public interface abstract Landroid/media/IRemoteDisplayProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteDisplayProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract adjustVolume(Ljava/lang/String;I)V
.end method

.method public abstract connect(Ljava/lang/String;)V
.end method

.method public abstract disconnect(Ljava/lang/String;)V
.end method

.method public abstract setCallback(Landroid/media/IRemoteDisplayCallback;)V
.end method

.method public abstract setDiscoveryMode(I)V
.end method

.method public abstract setVolume(Ljava/lang/String;I)V
.end method
