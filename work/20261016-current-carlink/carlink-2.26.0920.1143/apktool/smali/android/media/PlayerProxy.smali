.class public Landroid/media/PlayerProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PlayerProxy"


# instance fields
.field private final mConf:Landroid/media/AudioPlaybackConfiguration;


# direct methods
.method public constructor <init>(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "Illegal null AudioPlaybackConfiguration"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Landroid/media/IPlayer;->applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p1

    .line 14
    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "No player to proxy for applyVolumeShaper operation, player already released?"

    .line 17
    .line 18
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw p2
.end method

.method public pause()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/media/IPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception v0

    .line 14
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v2, "No player to proxy for pause operation, player already released?"

    .line 17
    .line 18
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v1
.end method

.method public setPan(F)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Landroid/media/IPlayer;->setPan(F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p1

    .line 14
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "No player to proxy for setPan operation, player already released?"

    .line 17
    .line 18
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public setStartDelayMs(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Landroid/media/IPlayer;->setStartDelayMs(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p1

    .line 14
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "No player to proxy for setStartDelayMs operation, player already released?"

    .line 17
    .line 18
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public setVolume(F)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Landroid/media/IPlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p1

    .line 14
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "No player to proxy for setVolume operation, player already released?"

    .line 17
    .line 18
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public start()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/media/IPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception v0

    .line 14
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v2, "No player to proxy for start operation, player already released?"

    .line 17
    .line 18
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v1
.end method

.method public stop()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/media/IPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception v0

    .line 14
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v2, "No player to proxy for stop operation, player already released?"

    .line 17
    .line 18
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v1
.end method
