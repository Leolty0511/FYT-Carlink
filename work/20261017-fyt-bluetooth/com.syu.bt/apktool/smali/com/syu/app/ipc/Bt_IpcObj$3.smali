.class Lcom/syu/app/ipc/Bt_IpcObj$3;
.super Ljava/lang/Object;
.source "Bt_IpcObj.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/ipc/Bt_IpcObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Bt_IpcObj;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Bt_IpcObj;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Bt_IpcObj$3;->this$0:Lcom/syu/app/ipc/Bt_IpcObj;

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 864
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isAppIdBtAv()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bBtAvPlayState:Z

    if-nez v0, :cond_1

    .line 865
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPlay()V

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bBtAvPlayState:Z

    if-nez v0, :cond_0

    .line 867
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v0, v0, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnableStartPlayAv:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 868
    const/4 v0, 0x1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v1, v1, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnableStartPlayAv:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_0
.end method
