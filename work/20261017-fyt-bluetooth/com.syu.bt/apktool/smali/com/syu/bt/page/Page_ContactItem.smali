.class public Lcom/syu/bt/page/Page_ContactItem;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_ContactItem.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;

.field vHead:Lcom/lsec/core/frame/ctrl/JView;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 28
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 29
    iput-object p2, p0, Lcom/syu/bt/page/Page_ContactItem;->actBt:Lcom/syu/bt/Act_Bt;

    .line 32
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_ContactItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x2829

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JView;

    iput-object v0, p0, Lcom/syu/bt/page/Page_ContactItem;->vHead:Lcom/lsec/core/frame/ctrl/JView;

    .line 34
    iget-object v0, p0, Lcom/syu/bt/page/Page_ContactItem;->vHead:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/syu/bt/page/Page_ContactItem;->vHead:Lcom/lsec/core/frame/ctrl/JView;

    new-instance v1, Lcom/syu/bt/page/Page_ContactItem$1;

    invoke-direct {v1, p0, p2}, Lcom/syu/bt/page/Page_ContactItem$1;-><init>(Lcom/syu/bt/page/Page_ContactItem;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 84
    .local v1, "id":I
    const-string v9, "btttt"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "0000 Page_contactItem ResponseClick id ="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v9

    if-nez v9, :cond_0

    .line 90
    iget-object v9, p0, Lcom/syu/bt/page/Page_ContactItem;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v9, v9, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v10, 0x2715

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 91
    .local v5, "pageContact":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v5, :cond_0

    .line 92
    const/16 v9, 0x2811

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 93
    .local v0, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_ContactItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v6

    .line 95
    .local v6, "position":I
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 96
    .local v4, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v9, 0x281e

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v0    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    .end local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v5    # "pageContact":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v6    # "position":I
    :pswitch_1
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v9

    if-nez v9, :cond_0

    .line 106
    const/4 v7, 0x1

    .line 107
    .local v7, "saveFlag":Z
    iget-object v9, p0, Lcom/syu/bt/page/Page_ContactItem;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v9, v9, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v10, 0x2715

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 108
    .restart local v5    # "pageContact":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v5, :cond_0

    .line 109
    const/16 v9, 0x2811

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 110
    .restart local v0    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_ContactItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v6

    .line 112
    .restart local v6    # "position":I
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 113
    .restart local v4    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v9, 0x2823

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 114
    .local v3, "isFav":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 115
    const-string v9, "collect"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 116
    const/16 v9, 0x2823

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 151
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/syu/bt/page/Page_ContactItem;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v9}, Lcom/syu/bt/Act_Bt;->getPageContact()Lcom/syu/bt/page/Page_Contact;

    move-result-object v9

    invoke-virtual {v9}, Lcom/syu/bt/page/Page_Contact;->notifyDataSetChanged()V

    .line 153
    if-eqz v7, :cond_0

    .line 154
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

    .line 155
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

    .line 117
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 118
    .local v8, "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v8, :cond_2

    .line 119
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

    .line 120
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

    .line 121
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    .end local v8    # "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_6
    const/4 v2, 0x0

    .line 129
    .local v2, "isExist":Z
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 130
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x6

    if-lt v9, v10, :cond_7

    .line 131
    const/4 v7, 0x0

    .line 132
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v9

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v10

    iget-object v10, v10, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v11, "bt_save_number"

    invoke-virtual {v10, v11}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 135
    :cond_7
    if-eqz v7, :cond_3

    .line 136
    const/16 v9, 0x2823

    const-string v10, "collect"

    invoke-virtual {v4, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_9

    .line 146
    :goto_2
    if-nez v2, :cond_3

    .line 147
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 137
    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 138
    .restart local v8    # "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v8, :cond_8

    .line 139
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

    .line 140
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

    .line 141
    const/4 v2, 0x1

    .line 142
    goto :goto_2

    .line 85
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
    .line 68
    iget-object v1, p0, Lcom/syu/bt/page/Page_ContactItem;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x272d

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 69
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 75
    :cond_0
    return-void
.end method

.method public popBtHead()V
    .locals 5

    .prologue
    .line 62
    iget-object v1, p0, Lcom/syu/bt/page/Page_ContactItem;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x272d

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 63
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 65
    :cond_0
    return-void
.end method
