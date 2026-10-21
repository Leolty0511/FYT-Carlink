.class public Lcom/syu/bt/page/Page_PairedItem;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PairedItem.java"


# instance fields
.field actGrid:Lcom/syu/bt/Act_Bt;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actGrid"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 26
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 27
    iput-object p2, p0, Lcom/syu/bt/page/Page_PairedItem;->actGrid:Lcom/syu/bt/Act_Bt;

    .line 28
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x28e4

    const/16 v11, 0x28e1

    const/16 v10, 0x271c

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 33
    .local v2, "id":I
    packed-switch v2, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 35
    :pswitch_0
    sget-boolean v7, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v7, :cond_0

    .line 36
    iget-object v7, p0, Lcom/syu/bt/page/Page_PairedItem;->actGrid:Lcom/syu/bt/Act_Bt;

    iget-object v7, v7, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v7, v10}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 37
    .local v6, "page_Pair1":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v6, :cond_0

    .line 38
    invoke-virtual {v6, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 39
    .local v1, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_PairedItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 41
    .local v3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 46
    const-string v7, "a2dp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 111 PairedItem_Btav addr = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v8, 0x3e

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v13, v13, v9}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v7

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v9, "btav_phone"

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    .end local v3    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v6    # "page_Pair1":Lcom/lsec/core/frame/ctrl/JPage;
    :pswitch_1
    const-string v7, "gdy1"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 22 PairedItem_Delete1 = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v7, p0, Lcom/syu/bt/page/Page_PairedItem;->actGrid:Lcom/syu/bt/Act_Bt;

    iget-object v7, v7, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v7, v10}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 60
    .local v5, "page_Pair":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v5, :cond_0

    .line 62
    invoke-virtual {v5, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 63
    .restart local v1    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_PairedItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 65
    .restart local v3    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 70
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "BT_23NEW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 71
    iget-object v8, p0, Lcom/syu/bt/page/Page_PairedItem;->actGrid:Lcom/syu/bt/Act_Bt;

    const/16 v7, 0x28e5

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_PairedItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v9

    invoke-virtual {v8, v7, v0, v9}, Lcom/syu/bt/Act_Bt;->popDeleteContacts2(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 73
    :cond_1
    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->deleteConnectedDevice(Ljava/lang/String;)V

    .line 74
    sget-object v7, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v7, v7, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 75
    const-string v7, ""

    invoke-static {v7}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 78
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    .line 81
    :cond_2
    iget-object v7, p0, Lcom/syu/bt/page/Page_PairedItem;->actGrid:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v7}, Lcom/syu/bt/Act_Bt;->getPagePair()Lcom/syu/bt/page/Page_Pair;

    move-result-object v4

    .line 82
    .local v4, "page":Lcom/syu/bt/page/Page_Pair;
    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {v4}, Lcom/syu/bt/page/Page_Pair;->refreshPairedList()V

    goto/16 :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x28e9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
