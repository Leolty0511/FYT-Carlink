.class Landroid/media/RemoteControlClient$1;
.super Landroid/media/IRemoteControlClient$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method public constructor <init>(Landroid/media/RemoteControlClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Landroid/media/IRemoteControlClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 4
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p2}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p2

    iget-object p3, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p3}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p3

    const/4 v0, 0x2

    invoke-virtual {p3, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onInformationRequested(II)V
    .locals 5

    .line 1
    iget-object p2, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p2}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p2}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object p2, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p2}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p2

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4
    iget-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p1

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p1

    iget-object v3, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v3}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    iget-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p1

    iget-object p2, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p2}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p2

    invoke-virtual {p2, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    iget-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p1

    iget-object p2, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p2}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object p2

    invoke-virtual {p2, v1, v2, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public seekTo(IJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v2, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v2}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v1, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setCurrentClientGenerationId(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v2, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v2}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public updateMetadata(IILandroid/media/Rating;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
