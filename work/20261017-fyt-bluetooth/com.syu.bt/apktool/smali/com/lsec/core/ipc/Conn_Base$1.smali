.class Lcom/lsec/core/ipc/Conn_Base$1;
.super Ljava/lang/Object;
.source "Conn_Base.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/Conn_Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/ipc/Conn_Base;


# direct methods
.method constructor <init>(Lcom/lsec/core/ipc/Conn_Base;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lsec/core/ipc/Conn_Base$1;->this$0:Lcom/lsec/core/ipc/Conn_Base;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 70
    iget-object v1, p0, Lcom/lsec/core/ipc/Conn_Base$1;->this$0:Lcom/lsec/core/ipc/Conn_Base;

    invoke-static {v1}, Lcom/lsec/core/ipc/Conn_Base;->access$0(Lcom/lsec/core/ipc/Conn_Base;)Lcom/syu/ipc/IRemoteToolkit;

    move-result-object v1

    if-nez v1, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lsec/core/ipc/Conn_Base$1;->this$0:Lcom/lsec/core/ipc/Conn_Base;

    iget-object v1, v1, Lcom/lsec/core/ipc/Conn_Base;->pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lsec/core/ipc/Conn_Base$1;->this$0:Lcom/lsec/core/ipc/Conn_Base;

    iget-object v2, v2, Lcom/lsec/core/ipc/Conn_Base;->clsName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/lsec/core/ipc/Conn_Base$1;->this$0:Lcom/lsec/core/ipc/Conn_Base;

    invoke-static {v1}, Lcom/lsec/core/ipc/Conn_Base;->access$1(Lcom/lsec/core/ipc/Conn_Base;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lsec/core/ipc/Conn_Base$1;->this$0:Lcom/lsec/core/ipc/Conn_Base;

    iget-object v2, v2, Lcom/lsec/core/ipc/Conn_Base;->mInstance:Lcom/lsec/core/ipc/Conn_Base;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 74
    sget-object v1, Lcom/lsec/core/ipc/Conn_Base;->handler:Landroid/os/Handler;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/lsec/core/ipc/Conn_Base$1;->this$0:Lcom/lsec/core/ipc/Conn_Base;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lsec/core/ipc/Conn_Base;->access$2(Lcom/lsec/core/ipc/Conn_Base;Z)V

    goto :goto_0
.end method
