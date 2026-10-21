.class public Lcom/syu/broadcast/AutoTestReceiver$Runnable_clearContact;
.super Ljava/lang/Object;
.source "AutoTestReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/broadcast/AutoTestReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Runnable_clearContact"
.end annotation


# instance fields
.field data0:I

.field final synthetic this$0:Lcom/syu/broadcast/AutoTestReceiver;


# direct methods
.method public constructor <init>(Lcom/syu/broadcast/AutoTestReceiver;I)V
    .locals 0
    .param p2, "data0"    # I

    .prologue
    .line 44
    iput-object p1, p0, Lcom/syu/broadcast/AutoTestReceiver$Runnable_clearContact;->this$0:Lcom/syu/broadcast/AutoTestReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p2, p0, Lcom/syu/broadcast/AutoTestReceiver$Runnable_clearContact;->data0:I

    .line 46
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 50
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.syu.autotest.bt_recv"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "rspIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isPairing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 52
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 53
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 54
    sget-object v2, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 55
    sget-object v2, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    const-string v2, "data1"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    :goto_1
    const-string v2, "data0"

    iget v3, p0, Lcom/syu/broadcast/AutoTestReceiver$Runnable_clearContact;->data0:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    :try_start_0
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v2, v1}, Lcom/lsec/core/frame/app/MyApplication;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_2
    return-void

    .line 55
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 56
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, v4}, Lcom/syu/bt/InterfaceBt;->ClearAllContact(Z)V

    goto :goto_0

    .line 60
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :cond_1
    const-string v2, "data1"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 62
    :cond_2
    const-string v2, "data1"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 64
    :cond_3
    const-string v2, "data1"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 69
    :catch_0
    move-exception v2

    goto :goto_2
.end method
