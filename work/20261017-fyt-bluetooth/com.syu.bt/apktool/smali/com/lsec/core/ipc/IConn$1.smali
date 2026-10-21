.class Lcom/lsec/core/ipc/IConn$1;
.super Landroid/os/Handler;
.source "IConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/IConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/ipc/IConn;


# direct methods
.method constructor <init>(Lcom/lsec/core/ipc/IConn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lsec/core/ipc/IConn$1;->this$0:Lcom/lsec/core/ipc/IConn;

    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/lsec/core/ipc/IConn$1;->removeMessages(I)V

    .line 58
    iget-object v0, p0, Lcom/lsec/core/ipc/IConn$1;->this$0:Lcom/lsec/core/ipc/IConn;

    iget-object v0, v0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/lsec/core/ipc/IConn$1;->this$0:Lcom/lsec/core/ipc/IConn;

    invoke-static {v0}, Lcom/lsec/core/ipc/IConn;->access$0(Lcom/lsec/core/ipc/IConn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lsec/core/ipc/IConn$1;->this$0:Lcom/lsec/core/ipc/IConn;

    invoke-static {v1}, Lcom/lsec/core/ipc/IConn;->access$1(Lcom/lsec/core/ipc/IConn;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/ipc/IConn$1;->this$0:Lcom/lsec/core/ipc/IConn;

    invoke-static {v2}, Lcom/lsec/core/ipc/IConn;->access$2(Lcom/lsec/core/ipc/IConn;)Lcom/lsec/core/ipc/IConn;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 60
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v4, v0, v1}, Lcom/lsec/core/ipc/IConn$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
