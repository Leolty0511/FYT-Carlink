.class Lcom/syu/app/ipc/Ipc_786$2;
.super Ljava/lang/Object;
.source "Ipc_786.java"

# interfaces
.implements Lcom/lsec/core/util/IUiNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/ipc/Ipc_786;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Ipc_786;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Ipc_786;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_786$2;->this$0:Lcom/syu/app/ipc/Ipc_786;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 5
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 577
    sparse-switch p1, :sswitch_data_0

    .line 596
    :cond_0
    :goto_0
    sget-object v3, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 599
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_786$2;->this$0:Lcom/syu/app/ipc/Ipc_786;

    iget-object v3, v3, Lcom/syu/app/ipc/Ipc_786;->notify_Bt_Pop:Lcom/lsec/core/util/IUiNotify;

    if-eqz v3, :cond_1

    .line 600
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_786$2;->this$0:Lcom/syu/app/ipc/Ipc_786;

    iget-object v3, v3, Lcom/syu/app/ipc/Ipc_786;->notify_Bt_Pop:Lcom/lsec/core/util/IUiNotify;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/lsec/core/util/IUiNotify;->onNotify(I[I[F[Ljava/lang/String;)V

    .line 601
    :cond_1
    return-void

    .line 579
    :sswitch_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyName()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "strDiyBtName":Ljava/lang/String;
    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyPin()Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "strDiyPin":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 582
    invoke-static {v1}, Lcom/syu/app/ipc/Ipc_786;->setDevName(Ljava/lang/String;)V

    .line 584
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 585
    invoke-static {v2}, Lcom/syu/app/ipc/Ipc_786;->setDevPin(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    .end local v1    # "strDiyBtName":Ljava/lang/String;
    .end local v2    # "strDiyPin":Ljava/lang/String;
    :sswitch_1
    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_786$2;->this$0:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Ipc_786;->phoneState()V

    .line 590
    sget-object v3, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 591
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->phoneState()V

    goto :goto_2

    .line 596
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 597
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_1

    .line 577
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
