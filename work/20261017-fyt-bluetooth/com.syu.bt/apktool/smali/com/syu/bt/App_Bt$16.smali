.class Lcom/syu/bt/App_Bt$16;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$16;->this$0:Lcom/syu/bt/App_Bt;

    .line 1766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1770
    iget-object v6, p0, Lcom/syu/bt/App_Bt$16;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/16 v7, 0xc

    invoke-virtual {v6, v9, v7}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 1771
    .local v3, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v3, :cond_1

    .line 1772
    sget-boolean v6, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    if-eqz v6, :cond_1

    .line 1808
    :cond_0
    :goto_0
    return-void

    .line 1776
    :cond_1
    if-eqz v3, :cond_0

    .line 1777
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 1779
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 1780
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1781
    .local v2, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x28

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1783
    const/16 v6, 0x7e4

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1786
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "BT_23NEW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1787
    const/16 v6, 0x13

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1790
    :goto_1
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1791
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1792
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1794
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "SYU_DS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1795
    const/16 v6, 0x53

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1796
    iget-object v6, p0, Lcom/syu/bt/App_Bt$16;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v7, 0x3

    invoke-virtual {v6, v9, v7}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    .line 1797
    .local v4, "pageFunc":Lcom/lsec/core/frame/ctrl/JPage;
    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/app/MyUiItem;

    .line 1798
    .local v1, "itemFunc":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v5

    .line 1799
    .local v5, "y":I
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-boolean v6, v6, Lcom/syu/bt/App_Bt;->bPopBtShow_Num:Z

    if-eqz v6, :cond_2

    .line 1800
    const/16 v5, 0x276

    .line 1801
    :cond_2
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1802
    const-string v6, "btpop"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 00 mRunnable_pop3rdPhone layoutParams.y = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    .end local v1    # "itemFunc":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v4    # "pageFunc":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v5    # "y":I
    :cond_3
    sput-boolean v9, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    .line 1805
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6, v3, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1806
    iget-object v6, p0, Lcom/syu/bt/App_Bt$16;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v6}, Lcom/syu/app/ipc/Bt_IpcObj;->addNotify_PopBt()V

    goto/16 :goto_0

    .line 1789
    :cond_4
    const/16 v6, 0x10

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1
.end method
