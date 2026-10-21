.class Lcom/syu/broadcast/MyService$2;
.super Ljava/lang/Object;
.source "MyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/broadcast/MyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 86
    const-string v2, "gdy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ** 44 MyService mRunnable_goPageDial   sPage = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget v4, Lcom/syu/bt/App_Bt;->sPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/16 v0, 0x2713

    .line 89
    .local v0, "iPageGo":I
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v2}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bCallinPageFlag:Z

    if-eqz v2, :cond_0

    .line 91
    const/16 v0, 0x2730

    .line 94
    :cond_0
    sget-object v2, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    return-void

    .line 94
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syu/bt/InterfaceBt;

    .line 95
    .local v1, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    instance-of v3, v1, Lcom/syu/bt/Act_Bt;

    if-eqz v3, :cond_1

    .line 96
    check-cast v1, Lcom/syu/bt/Act_Bt;

    .end local v1    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    iget-object v3, v1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_0
.end method
