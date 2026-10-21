.class Lcom/syu/bt/App_Bt$12;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$12;->this$0:Lcom/syu/bt/App_Bt;

    .line 1613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1617
    const-string v3, "sfth2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " **00  mRunnable_popSwitchPhone  bPopSwitchPhone = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bPopSwitchPhone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget-object v3, p0, Lcom/syu/bt/App_Bt$12;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/16 v4, 0xe

    invoke-virtual {v3, v6, v4}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 1620
    .local v2, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-nez v2, :cond_0

    .line 1621
    const-string v3, "sfth2"

    const-string v4, " **11  mRunnable_popSwitchPhone  page == null  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_0
    if-eqz v2, :cond_1

    .line 1624
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bPopSwitchPhone:Z

    if-eqz v3, :cond_2

    .line 1646
    :cond_1
    :goto_0
    return-void

    .line 1626
    :cond_2
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 1627
    const-string v3, "sfth2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " **22  mRunnable_popSwitchPhone  bPopSwitchPhone = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bPopSwitchPhone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 1629
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1630
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x28

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1632
    const/16 v3, 0x7e4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1635
    const/16 v3, 0x15

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1637
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1638
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1639
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1641
    sput-boolean v6, Lcom/syu/bt/App_Bt;->bPopSwitchPhone:Z

    .line 1642
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1643
    iget-object v3, p0, Lcom/syu/bt/App_Bt$12;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->addNotify_PopBt()V

    .line 1644
    const-string v3, "sfth2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " **33  mRunnable_popSwitchPhone  bPopSwitchPhone = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bPopSwitchPhone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
