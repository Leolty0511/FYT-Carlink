.class public Lcom/syu/bt/page/pop/Page_PopDel2;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopDel2.java"


# instance fields
.field actGrid:Lcom/syu/bt/Act_Bt;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 36
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 37
    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopDel2;->actGrid:Lcom/syu/bt/Act_Bt;

    .line 38
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 43
    .local v3, "id":I
    packed-switch v3, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 46
    :pswitch_0
    :try_start_0
    iget-object v7, p0, Lcom/syu/bt/page/pop/Page_PopDel2;->actGrid:Lcom/syu/bt/Act_Bt;

    iget-object v7, v7, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v8, 0x271c

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 47
    .local v6, "page_Pair":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v6, :cond_1

    .line 48
    const/16 v7, 0x28e1

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 49
    .local v2, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v2, :cond_1

    .line 50
    const-string v7, "gdy6"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 05 PopDel_Btn_Ok actBt.Sel_Id = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/syu/bt/Act_Bt;->Sel_Id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  mListHasPaired.size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v7

    sget v8, Lcom/syu/bt/Act_Bt;->Sel_Id:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 52
    .local v4, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v7, 0x28e4

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->deleteConnectedDevice(Ljava/lang/String;)V

    .line 54
    sget-object v7, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v7, v7, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 55
    const-string v7, "gdy6"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 06 PopDel_Btn_Ok actBt.str_addr = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  mListHasPaired.size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v7, ""

    invoke-static {v7}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v7}, Lcom/syu/app/ipc/Bt_IpcObj;->queryPairList()V

    .line 58
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 60
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    .line 62
    :cond_0
    iget-object v7, p0, Lcom/syu/bt/page/pop/Page_PopDel2;->actGrid:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v7}, Lcom/syu/bt/Act_Bt;->getPagePair()Lcom/syu/bt/page/Page_Pair;

    move-result-object v5

    .line 63
    .local v5, "page":Lcom/syu/bt/page/Page_Pair;
    if-eqz v5, :cond_1

    .line 64
    invoke-virtual {v5}, Lcom/syu/bt/page/Page_Pair;->refreshPairedList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    .end local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v5    # "page":Lcom/syu/bt/page/Page_Pair;
    .end local v6    # "page_Pair":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopDel2;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopDel2;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x28f5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
