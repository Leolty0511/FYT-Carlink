.class Lcom/syu/bt/App_Bt$14;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$14;->this$0:Lcom/syu/bt/App_Bt;

    .line 1702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1707
    iget-object v4, p0, Lcom/syu/bt/App_Bt$14;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/16 v5, 0xb

    invoke-virtual {v4, v7, v5}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 1709
    .local v3, "page":Lcom/lsec/core/frame/ctrl/JPage;
    const-string v4, "pddd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  JAVA 11 App_Bt  mRunnable_popMSG bPopMsgShow = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/syu/bt/App_Bt;->bPopMsgShow:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  App_Bt.pinStatus= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/syu/bt/App_Bt;->pinStatus:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    if-eqz v3, :cond_0

    .line 1711
    const-string v4, "ai11"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  JAVA 22 App_Bt  mRunnable_popMSG bPopMsgShow = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/syu/bt/App_Bt;->bPopMsgShow:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bPopMsgShow:Z

    if-eqz v4, :cond_1

    .line 1744
    :cond_0
    :goto_0
    return-void

    .line 1714
    :cond_1
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 1716
    const-string v4, "ai11"

    const-string v5, "  JAVA 33 App_Bt  mRunnable_popMSG "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/app/MyUiItem;

    .line 1718
    .local v1, "item":Lcom/lsec/core/frame/app/MyUiItem;
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1719
    .local v2, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x28

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1721
    const/16 v4, 0x7f6

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1724
    const/16 v4, 0x10

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1725
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1726
    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1727
    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1729
    sput-boolean v7, Lcom/syu/bt/App_Bt;->bPopMsgShow:Z

    .line 1731
    :try_start_0
    const-string v4, "pddd"

    const-string v5, "  JAVA 22 App_Bt try mWindowManager.addView "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    sget-object v4, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, v3, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1734
    iget-object v4, p0, Lcom/syu/bt/App_Bt$14;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->addNotify_PopBt()V

    .line 1736
    const-string v4, "pddd"

    const-string v5, "  JAVA 33 App_Bt try mWindowManager.addView "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1742
    :goto_1
    const-string v4, "ai11"

    const-string v5, "  JAVA 11 App_Bt  ishowMsgDlg "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1737
    :catch_0
    move-exception v0

    .line 1738
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "pddd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  JAVA 44 App_Bt catch  ERROR  ex = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
