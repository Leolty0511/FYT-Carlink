.class public Lcom/syu/bt/page/Page_FavoriteItem;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_FavoriteItem.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;

.field vHead:Lcom/lsec/core/frame/ctrl/JView;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 26
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 27
    iput-object p2, p0, Lcom/syu/bt/page/Page_FavoriteItem;->actBt:Lcom/syu/bt/Act_Bt;

    .line 30
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_FavoriteItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x2829

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JView;

    iput-object v0, p0, Lcom/syu/bt/page/Page_FavoriteItem;->vHead:Lcom/lsec/core/frame/ctrl/JView;

    .line 32
    iget-object v0, p0, Lcom/syu/bt/page/Page_FavoriteItem;->vHead:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/syu/bt/page/Page_FavoriteItem;->vHead:Lcom/lsec/core/frame/ctrl/JView;

    new-instance v1, Lcom/syu/bt/page/Page_FavoriteItem$1;

    invoke-direct {v1, p0, p2}, Lcom/syu/bt/page/Page_FavoriteItem$1;-><init>(Lcom/syu/bt/page/Page_FavoriteItem;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 79
    .local v1, "id":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v9

    if-nez v9, :cond_0

    .line 84
    iget-object v9, p0, Lcom/syu/bt/page/Page_FavoriteItem;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v9, v9, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v10, 0x2720

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 85
    .local v5, "pageFavorite":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v5, :cond_0

    .line 86
    const/16 v9, 0x2811

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 87
    .local v0, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_FavoriteItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v6

    .line 89
    .local v6, "position":I
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 90
    .local v4, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v9, 0x281e

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v0    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    .end local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v5    # "pageFavorite":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v6    # "position":I
    :pswitch_1
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v9

    if-nez v9, :cond_0

    .line 100
    const/4 v7, 0x1

    .line 101
    .local v7, "saveFlag":Z
    iget-object v9, p0, Lcom/syu/bt/page/Page_FavoriteItem;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v9, v9, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v10, 0x2720

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 102
    .restart local v5    # "pageFavorite":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v5, :cond_0

    .line 103
    const/16 v9, 0x2840

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 104
    .restart local v0    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_FavoriteItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v6

    .line 106
    .restart local v6    # "position":I
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 107
    .restart local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v9, 0x2823

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 108
    .local v3, "isFav":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 109
    const-string v9, "collect"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 110
    const/16 v9, 0x2823

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 145
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/syu/bt/page/Page_FavoriteItem;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v9}, Lcom/syu/bt/Act_Bt;->getPageFavorite()Lcom/syu/bt/page/Page_Favorite;

    move-result-object v9

    invoke-virtual {v9}, Lcom/syu/bt/page/Page_Favorite;->notifyDataSetChanged()V

    .line 147
    if-eqz v7, :cond_0

    .line 148
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v9

    if-nez v9, :cond_4

    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "YL_BT_1920"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    sget-boolean v9, Lcom/syu/bt/App_Bt;->bFavcontact:Z

    if-eqz v9, :cond_0

    .line 149
    :cond_4
    sget-object v9, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v10, "Thread-DownContact"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v11

    iget-object v11, v11, Lcom/syu/bt/App_Bt;->mRunnable_WriteFavContactToFile:Ljava/lang/Runnable;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v9, v10, v11, v12, v13}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 111
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 112
    .local v8, "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v8, :cond_2

    .line 113
    const/16 v9, 0x281e

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v11, 0x281e

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 114
    const/16 v9, 0x281c

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v11, 0x281c

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 115
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    .end local v8    # "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_6
    const/4 v2, 0x0

    .line 123
    .local v2, "isExist":Z
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 124
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x6

    if-lt v9, v10, :cond_7

    .line 125
    const/4 v7, 0x0

    .line 126
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v9

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v10

    iget-object v10, v10, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v11, "bt_save_number"

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 129
    :cond_7
    if-eqz v7, :cond_3

    .line 130
    const/16 v9, 0x2823

    const-string v10, "collect"

    invoke-virtual {v4, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_9

    .line 140
    :goto_2
    if-nez v2, :cond_3

    .line 141
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 131
    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 132
    .restart local v8    # "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v8, :cond_8

    .line 133
    const/16 v9, 0x281e

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v11, 0x281e

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 134
    const/16 v9, 0x281c

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v11, 0x281c

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 135
    const/4 v2, 0x1

    .line 136
    goto :goto_2

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x2827
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dismissPopBtHead()V
    .locals 5

    .prologue
    .line 64
    iget-object v1, p0, Lcom/syu/bt/page/Page_FavoriteItem;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x272d

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 65
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 71
    :cond_0
    return-void
.end method

.method public popBtHead()V
    .locals 5

    .prologue
    .line 58
    iget-object v1, p0, Lcom/syu/bt/page/Page_FavoriteItem;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x272d

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 59
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 61
    :cond_0
    return-void
.end method
