.class Landroid/media/RemoteControlClient$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method public constructor <init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    .line 2
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    const-string v0, "RemoteControlClient"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in RemoteControlClient handler"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/media/IRemoteControlDisplay;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v0, v3, v1}, Landroid/media/RemoteControlClient;->access$1900(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;Z)V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/IRemoteControlDisplay;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3, p1}, Landroid/media/RemoteControlClient;->access$300(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    .line 6
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :pswitch_2
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1}, Landroid/media/RemoteControlClient;->access$1800(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V

    goto/16 :goto_0

    .line 8
    :pswitch_3
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/media/IRemoteControlDisplay;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v0, v3, v1}, Landroid/media/RemoteControlClient;->access$1700(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;Z)V

    goto/16 :goto_0

    .line 9
    :pswitch_4
    iget-object p1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p1}, Landroid/media/RemoteControlClient;->access$1600(Landroid/media/RemoteControlClient;)V

    goto/16 :goto_0

    .line 10
    :pswitch_5
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/media/RemoteControlClient;->access$1500(Landroid/media/RemoteControlClient;IJ)V

    goto/16 :goto_0

    .line 11
    :pswitch_6
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/IRemoteControlDisplay;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, p1}, Landroid/media/RemoteControlClient;->access$1400(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    goto/16 :goto_0

    .line 12
    :pswitch_7
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/IRemoteControlDisplay;

    invoke-static {v0, p1}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V

    goto/16 :goto_0

    .line 13
    :pswitch_8
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/IRemoteControlDisplay;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, p1}, Landroid/media/RemoteControlClient;->access$1200(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    goto :goto_0

    .line 14
    :pswitch_9
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Landroid/media/RemoteControlClient;->access$1100(Landroid/media/RemoteControlClient;I)V

    goto :goto_0

    .line 15
    :pswitch_a
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;I)V

    goto :goto_0

    .line 16
    :pswitch_b
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 17
    :try_start_1
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/IRemoteControlDisplay;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3, p1}, Landroid/media/RemoteControlClient;->access$500(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    .line 18
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 19
    :pswitch_c
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 20
    :try_start_2
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/IRemoteControlDisplay;

    invoke-static {v1, p1}, Landroid/media/RemoteControlClient;->access$900(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V

    .line 21
    monitor-exit v0

    goto :goto_0

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 22
    :pswitch_d
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 23
    :try_start_3
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/IRemoteControlDisplay;

    invoke-static {v1, p1}, Landroid/media/RemoteControlClient;->access$400(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V

    .line 24
    monitor-exit v0

    goto :goto_0

    :catchall_3
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    .line 25
    :pswitch_e
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 26
    :try_start_4
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/IRemoteControlDisplay;

    invoke-static {v1, p1}, Landroid/media/RemoteControlClient;->access$800(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V

    .line 27
    monitor-exit v0

    goto :goto_0

    :catchall_4
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
