.class Lcom/syu/bt/App_Bt$9;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/App_Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/App_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/App_Bt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/App_Bt$9;->this$0:Lcom/syu/bt/App_Bt;

    .line 1458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1461
    const-string v1, "gdy10"

    const-string v2, " 01 mRunnable_hideBt  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iget-object v1, p0, Lcom/syu/bt/App_Bt$9;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v1, v1, Lcom/syu/bt/App_Bt;->bPopBtShow:Z

    if-eqz v1, :cond_1

    .line 1463
    iget-object v1, p0, Lcom/syu/bt/App_Bt$9;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->removeNotify_PopBt()V

    .line 1465
    iget-object v1, p0, Lcom/syu/bt/App_Bt$9;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v4}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 1466
    .local v0, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-nez v0, :cond_0

    .line 1467
    iget-object v1, p0, Lcom/syu/bt/App_Bt$9;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v6}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 1469
    :cond_0
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1470
    iget-object v1, p0, Lcom/syu/bt/App_Bt$9;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v3, v1, Lcom/syu/bt/App_Bt;->bPopBtShow:Z

    .line 1474
    .end local v0    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_1
    iget-object v1, p0, Lcom/syu/bt/App_Bt$9;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v1, v1, Lcom/syu/bt/App_Bt;->bPopBtShow_Num:Z

    if-eqz v1, :cond_3

    .line 1475
    iget-object v1, p0, Lcom/syu/bt/App_Bt$9;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v5}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 1476
    .restart local v0    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_2

    .line 1477
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1479
    :cond_2
    iget-object v1, p0, Lcom/syu/bt/App_Bt$9;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v3, v1, Lcom/syu/bt/App_Bt;->bPopBtShow_Num:Z

    .line 1482
    .end local v0    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_3
    iget-object v1, p0, Lcom/syu/bt/App_Bt$9;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v4}, Lcom/lsec/core/frame/app/MyUi;->removePage(I)V

    .line 1483
    iget-object v1, p0, Lcom/syu/bt/App_Bt$9;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v6}, Lcom/lsec/core/frame/app/MyUi;->removePage(I)V

    .line 1484
    iget-object v1, p0, Lcom/syu/bt/App_Bt$9;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v5}, Lcom/lsec/core/frame/app/MyUi;->removePage(I)V

    .line 1486
    return-void
.end method
