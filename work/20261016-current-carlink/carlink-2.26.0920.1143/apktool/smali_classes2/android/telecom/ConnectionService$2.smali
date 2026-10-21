.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method public constructor <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "H.CS.r"

    const-string v2, "Enqueueing pre-init request %s"

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 2
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.crCoC"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 6
    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/telecom/ConnectionService$2$2;

    const-string v3, "H.CS.crCoC.pICR"

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4, v0}, Landroid/telecom/ConnectionService$2$2;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Landroid/telecom/Logging/Runnable;->prepare()Ljava/lang/Runnable;

    move-result-object v0

    .line 9
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0}, Landroid/telecom/ConnectionService;->access$600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 12
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    .line 13
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 14
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 15
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 16
    :try_start_1
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.rTRUR"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 17
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 18
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/Connection$RttTextStream;

    .line 19
    iget-object v2, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->access$3000(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 21
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    .line 22
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 23
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 24
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 25
    :try_start_2
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.-RTT"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 26
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 27
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0}, Landroid/telecom/ConnectionService;->access$2900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 28
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 29
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    .line 30
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 31
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 32
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 33
    :try_start_3
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.+RTT"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 34
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 35
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/Connection$RttTextStream;

    .line 36
    iget-object v2, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->access$2800(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 37
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 38
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    .line 39
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 40
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 41
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 42
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.crCoF"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 43
    :try_start_4
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/telecom/ConnectionRequest;

    .line 45
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v4, :cond_1

    move v12, v4

    goto :goto_1

    :cond_1
    move v12, v3

    .line 46
    :goto_1
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/telecom/PhoneAccountHandle;

    .line 47
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v10, v0, v3

    .line 48
    invoke-static {p0, v2, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/telecom/ConnectionService$2$3;

    const-string v7, "H.CS.crCoF.pICR"

    const/4 v8, 0x0

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Landroid/telecom/ConnectionService$2$3;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    .line 50
    invoke-virtual {v1}, Landroid/telecom/Logging/Runnable;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v0, "createConnectionFailed %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v10, v1, v3

    .line 52
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0, v9, v10, v11, v12}, Landroid/telecom/ConnectionService;->access$700(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 54
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 55
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_4
    move-exception v0

    .line 56
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 57
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 58
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 59
    :try_start_5
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.oEC"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 60
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 61
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 62
    iget-object v2, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->access$2700(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 63
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 64
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_5
    move-exception v0

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 66
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 67
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 68
    :try_start_6
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.sCE"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 69
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 70
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 71
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 72
    iget-object v3, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v1, v2}, Landroid/telecom/ConnectionService;->access$2600(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 73
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 74
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_6
    move-exception v0

    .line 75
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 76
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 77
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 78
    :try_start_7
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.pEC"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->access$2500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 81
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_7
    move-exception v0

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 83
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 84
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 85
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.s"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 86
    :try_start_8
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->access$1400(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 87
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 88
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_8
    move-exception v0

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 90
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 91
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 92
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.rWM"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 93
    :try_start_9
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/telecom/ConnectionService;->access$1200(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 94
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 95
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_9
    move-exception v0

    .line 96
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 97
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 98
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 99
    :try_start_a
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.sC"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->access$2300(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 101
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 102
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_a
    move-exception v0

    .line 103
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 104
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 105
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 106
    :try_start_b
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.mC"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->access$2200(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 109
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_b
    move-exception v0

    .line 110
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 111
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 112
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 113
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.anV"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 114
    :try_start_c
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 115
    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 116
    iget-object v2, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->access$1000(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 117
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 118
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_c
    move-exception v0

    .line 119
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 120
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 121
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 122
    :try_start_d
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.rCSA"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 124
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 125
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_d
    move-exception v0

    .line 126
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 127
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 128
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 129
    :try_start_e
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.oPDC"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 130
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 131
    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v1, v4, :cond_3

    move v3, v4

    .line 132
    :cond_3
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v3}, Landroid/telecom/ConnectionService;->access$2400(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 133
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 134
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_e
    move-exception v0

    .line 135
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 136
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 137
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 138
    :try_start_f
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.sFC"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->access$2100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 140
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 141
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_f
    move-exception v0

    .line 142
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 143
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 144
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 145
    :try_start_10
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.c"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 146
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 147
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 148
    iget-object v2, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->access$2000(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 149
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 150
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_10
    move-exception v0

    .line 151
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 152
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 153
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 154
    :try_start_11
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.sDT"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->access$1900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 156
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 157
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_11
    move-exception v0

    .line 158
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 159
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 160
    :pswitch_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 161
    :try_start_12
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.pDT"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/telecom/ConnectionService;->access$1800(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 163
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 164
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_12
    move-exception v0

    .line 165
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 166
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 167
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 168
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.cASC"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 169
    :try_start_13
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 170
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/CallAudioState;

    .line 171
    iget-object v2, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    new-instance v3, Landroid/telecom/CallAudioState;

    invoke-direct {v3, v1}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-static {v2, v0, v3}, Landroid/telecom/ConnectionService;->access$1700(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 172
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 173
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_13
    move-exception v0

    .line 174
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 175
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 176
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 177
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.u"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 178
    :try_start_14
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->access$1600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 179
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 180
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_14
    move-exception v0

    .line 181
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 182
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 183
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 184
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 185
    :try_start_15
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->access$1500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 186
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 187
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_15
    move-exception v0

    .line 188
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 189
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 190
    :pswitch_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 191
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.d"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 192
    :try_start_16
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->access$1300(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    .line 193
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 194
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_16
    move-exception v0

    .line 195
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 196
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 197
    :pswitch_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 198
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 199
    :try_start_17
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->access$1100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 200
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 201
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_17
    move-exception v0

    .line 202
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 203
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 204
    :pswitch_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 205
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.an"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 206
    :try_start_18
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->access$900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    .line 207
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 208
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_18
    move-exception v0

    .line 209
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 210
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 211
    :pswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 212
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.ab"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 213
    :try_start_19
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->access$800(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    .line 214
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 215
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_6

    :catchall_19
    move-exception v0

    .line 216
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 217
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 218
    :pswitch_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 219
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.crCo"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 220
    :try_start_1a
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 221
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 222
    iget-object v5, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v11, v5

    check-cast v11, Landroid/telecom/ConnectionRequest;

    .line 223
    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v5, v4, :cond_4

    move v12, v4

    goto :goto_3

    :cond_4
    move v12, v3

    .line 224
    :goto_3
    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v5, v4, :cond_5

    move v13, v4

    goto :goto_4

    :cond_5
    move v13, v3

    .line 225
    :goto_4
    iget-object v5, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v5}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v5

    if-nez v5, :cond_6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    .line 226
    invoke-static {p0, v2, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v2, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/telecom/ConnectionService$2$1;

    const-string v7, "H.CS.crCo.pICR"

    const/4 v8, 0x0

    move-object v5, v3

    move-object v6, p0

    move-object v9, v0

    move-object v10, v1

    invoke-direct/range {v5 .. v13}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    .line 228
    invoke-virtual {v3}, Landroid/telecom/Logging/Runnable;->prepare()Ljava/lang/Runnable;

    move-result-object v0

    .line 229
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 230
    :cond_6
    iget-object v5, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object v6, v0

    move-object v7, v1

    move-object v8, v11

    move v9, v12

    move v10, v13

    invoke-static/range {v5 .. v10}, Landroid/telecom/ConnectionService;->access$400(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    .line 231
    :goto_5
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 232
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto :goto_6

    :catchall_1a
    move-exception v0

    .line 233
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 234
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    .line 235
    :pswitch_1c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 236
    :try_start_1b
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 237
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.aCSA"

    invoke-static {v1, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 239
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$200(Landroid/telecom/ConnectionService;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    .line 240
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 241
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto :goto_6

    :catchall_1b
    move-exception v0

    .line 242
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 243
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
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
    .end packed-switch
.end method
