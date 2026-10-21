.class Landroid/net/wifi/WifiApConfigStore$DefaultState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/WifiApConfigStore;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiApConfigStore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore$DefaultState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "WifiApConfigStore"

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to handle "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore$DefaultState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    invoke-static {v0}, Landroid/net/wifi/WifiApConfigStore;->access$100(Landroid/net/wifi/WifiApConfigStore;)Lu/b;

    move-result-object v0

    const v1, 0x2001c

    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore$DefaultState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    invoke-static {v2}, Landroid/net/wifi/WifiApConfigStore;->access$000(Landroid/net/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lu/b;->i(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x20019
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
