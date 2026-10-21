.class Landroid/net/wifi/WifiStateMachine$SoftApStartingState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoftApStartingState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$22200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x20015

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Lu/b;

    move-result-object v0

    const v1, 0x2001b

    invoke-virtual {v0, v1}, Lu/b;->k(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Lu/b;

    move-result-object v1

    const v2, 0x20019

    invoke-virtual {v1, v2, v0}, Lu/b;->o(ILjava/lang/Object;)V

    .line 6
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1, v0}, Landroid/net/wifi/WifiStateMachine;->access$22300(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    :goto_0
    return-void

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal transition to SoftApStartingState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 2
    :sswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$22300(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v0, "Softap config is null!"

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$22500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v0, 0x20017

    invoke-virtual {p1, v0}, Lu/m;->sendMessage(I)V

    goto :goto_0

    .line 6
    :sswitch_1
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v0, 0xe

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;I)V

    .line 7
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$22800(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_0

    .line 8
    :sswitch_2
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v0, 0xd

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;I)V

    .line 9
    iget-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/net/wifi/WifiStateMachine;->access$22600(Landroid/net/wifi/WifiStateMachine;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$22700(Landroid/net/wifi/WifiStateMachine;Lu/g;)V

    goto :goto_0

    .line 10
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$22400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_3
        0x2000c -> :sswitch_3
        0x2000d -> :sswitch_3
        0x2000e -> :sswitch_3
        0x20015 -> :sswitch_3
        0x20016 -> :sswitch_2
        0x20017 -> :sswitch_1
        0x20018 -> :sswitch_3
        0x2001c -> :sswitch_0
        0x2001d -> :sswitch_3
        0x20048 -> :sswitch_3
        0x20050 -> :sswitch_3
        0x20054 -> :sswitch_3
        0x20055 -> :sswitch_3
        0x2005a -> :sswitch_3
    .end sparse-switch
.end method
