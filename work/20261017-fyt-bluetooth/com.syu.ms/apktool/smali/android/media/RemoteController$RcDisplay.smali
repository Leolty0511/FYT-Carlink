.class Landroid/media/RemoteController$RcDisplay;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RcDisplay"
.end annotation


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/RemoteController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/RemoteController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Landroid/media/RemoteController;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-static {v0}, Landroid/media/RemoteController;->access$100(Landroid/media/RemoteController;)I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 4
    monitor-exit v1

    return-void

    .line 5
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_3

    .line 6
    new-instance p2, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Landroid/os/Bundle;-><init>(I)V

    :cond_3
    move-object v7, p2

    if-eqz p3, :cond_4

    const/16 p2, 0x64

    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    :cond_4
    invoke-static {v0}, Landroid/media/RemoteController;->access$400(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, p1

    invoke-static/range {v2 .. v8}, Landroid/media/RemoteController;->access$500(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/media/RemoteController;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-static {v0}, Landroid/media/RemoteController;->access$100(Landroid/media/RemoteController;)I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 4
    monitor-exit v1

    return-void

    .line 5
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v7, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Landroid/os/Bundle;-><init>(I)V

    const/16 v1, 0x64

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    invoke-static {v0}, Landroid/media/RemoteController;->access$400(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, p1

    invoke-static/range {v2 .. v8}, Landroid/media/RemoteController;->access$500(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 10

    .line 1
    iget-object v1, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/media/RemoteController;

    if-nez v8, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-static {}, Landroid/media/RemoteController;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3
    :try_start_0
    invoke-static {v8}, Landroid/media/RemoteController;->access$100(Landroid/media/RemoteController;)I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 4
    invoke-static {v8, p1}, Landroid/media/RemoteController;->access$102(Landroid/media/RemoteController;I)I

    const/4 v1, 0x1

    :cond_1
    move v9, v1

    .line 5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 6
    invoke-static {v8}, Landroid/media/RemoteController;->access$400(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->access$500(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_2
    if-nez v9, :cond_3

    if-eqz p3, :cond_4

    .line 7
    :cond_3
    invoke-static {v8}, Landroid/media/RemoteController;->access$400(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, p3

    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->access$500(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Landroid/media/RemoteController;->access$400(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->access$500(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Landroid/media/RemoteController;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-static {v0}, Landroid/media/RemoteController;->access$100(Landroid/media/RemoteController;)I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 4
    monitor-exit v1

    return-void

    .line 5
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Landroid/media/RemoteController;->access$400(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, p1

    move-object v7, p2

    invoke-static/range {v2 .. v8}, Landroid/media/RemoteController;->access$500(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPlaybackState(IIJJF)V
    .locals 15

    move-object v1, p0

    .line 1
    iget-object v0, v1, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/media/RemoteController;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3
    :try_start_0
    invoke-static {v0}, Landroid/media/RemoteController;->access$100(Landroid/media/RemoteController;)I

    move-result v3

    move/from16 v7, p1

    if-eq v3, v7, :cond_1

    .line 4
    monitor-exit v2

    return-void

    .line 5
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v2, Landroid/media/RemoteController$PlaybackInfo;

    move-object v8, v2

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move/from16 v14, p7

    invoke-direct/range {v8 .. v14}, Landroid/media/RemoteController$PlaybackInfo;-><init>(IJJF)V

    .line 7
    invoke-static {v0}, Landroid/media/RemoteController;->access$400(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v7, p1

    move-object v9, v2

    invoke-static/range {v4 .. v10}, Landroid/media/RemoteController;->access$500(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setTransportControlInfo(III)V
    .locals 8

    .line 1
    iget-object p3, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/RemoteController;

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/media/RemoteController;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p3}, Landroid/media/RemoteController;->access$100(Landroid/media/RemoteController;)I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {p3}, Landroid/media/RemoteController;->access$400(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, p2

    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->access$500(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
