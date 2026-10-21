.class Lcom/syu/bt/Act_Bt$2;
.super Ljava/lang/Object;
.source "Act_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/Act_Bt;->checkAppIdIsRight(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/Act_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/Act_Bt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/Act_Bt$2;->this$0:Lcom/syu/bt/Act_Bt;

    .line 2283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x271a

    .line 2286
    iget-object v0, p0, Lcom/syu/bt/Act_Bt$2;->this$0:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v0, :cond_0

    .line 2287
    iget-object v0, p0, Lcom/syu/bt/Act_Bt$2;->this$0:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isAppIdBtAv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2288
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0, v1}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdRight(I)V

    .line 2291
    :cond_0
    return-void
.end method
