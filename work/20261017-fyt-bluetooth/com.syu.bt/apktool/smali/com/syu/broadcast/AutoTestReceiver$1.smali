.class Lcom/syu/broadcast/AutoTestReceiver$1;
.super Ljava/lang/Object;
.source "AutoTestReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/broadcast/AutoTestReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/broadcast/AutoTestReceiver;


# direct methods
.method constructor <init>(Lcom/syu/broadcast/AutoTestReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/broadcast/AutoTestReceiver$1;->this$0:Lcom/syu/broadcast/AutoTestReceiver;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    return-void

    .line 91
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 92
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/syu/bt/InterfaceBt;->setSwitch(Z)V

    goto :goto_0
.end method
