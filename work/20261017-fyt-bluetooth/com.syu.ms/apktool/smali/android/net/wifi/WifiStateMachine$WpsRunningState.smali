.class Landroid/net/wifi/WifiStateMachine$WpsRunningState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WpsRunningState"
.end annotation


# instance fields
.field private mSourceMessage:Landroid/os/Message;

.field public final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$21400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    return-void
.end method

.method public exit()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x2500c

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    return v1

    .line 2
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->cancelWps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x25010

    invoke-static {v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x2500f

    invoke-static {v0, p1, v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 5
    :goto_0
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$22000(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto/16 :goto_1

    .line 6
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1, v3, v2}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7
    :sswitch_2
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const/4 v1, 0x7

    invoke-static {p1, v0, v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 9
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 10
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$21900(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_1

    .line 11
    :sswitch_3
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const/4 v1, 0x3

    invoke-static {p1, v0, v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 12
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 13
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 14
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$21700(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_1

    .line 15
    :sswitch_4
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v3, p1}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 16
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 17
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 18
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$21800(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_1

    .line 19
    :sswitch_5
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;)V

    goto :goto_1

    .line 20
    :sswitch_6
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const v3, 0x2500d

    invoke-static {v0, v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 21
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 22
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 23
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$21500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 24
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$21600(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_1

    .line 25
    :sswitch_7
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$22100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    :goto_1
    :sswitch_8
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2000e -> :sswitch_7
        0x20036 -> :sswitch_7
        0x20048 -> :sswitch_7
        0x2004a -> :sswitch_7
        0x2004b -> :sswitch_7
        0x24003 -> :sswitch_6
        0x24004 -> :sswitch_5
        0x24006 -> :sswitch_8
        0x24007 -> :sswitch_8
        0x24008 -> :sswitch_8
        0x24009 -> :sswitch_4
        0x2400a -> :sswitch_3
        0x2400b -> :sswitch_2
        0x2402b -> :sswitch_8
        0x25001 -> :sswitch_7
        0x2500a -> :sswitch_1
        0x2500e -> :sswitch_0
    .end sparse-switch
.end method
