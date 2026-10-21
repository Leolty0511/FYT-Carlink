.class Lcom/syu/broadcast/Receiver_TimeUpdate$1$1;
.super Ljava/lang/Object;
.source "Receiver_TimeUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/broadcast/Receiver_TimeUpdate$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syu/broadcast/Receiver_TimeUpdate$1;


# direct methods
.method constructor <init>(Lcom/syu/broadcast/Receiver_TimeUpdate$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/broadcast/Receiver_TimeUpdate$1$1;->this$1:Lcom/syu/broadcast/Receiver_TimeUpdate$1;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 25
    :cond_0
    return-void

    .line 22
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 23
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->updateSystemTime()V

    goto :goto_0
.end method
