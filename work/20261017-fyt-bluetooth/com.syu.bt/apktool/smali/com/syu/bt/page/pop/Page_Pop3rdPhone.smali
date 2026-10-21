.class public Lcom/syu/bt/page/pop/Page_Pop3rdPhone;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Pop3rdPhone.java"


# instance fields
.field mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

.field mTxtMergerName1:Lcom/lsec/core/frame/ctrl/JText;

.field mTxtMergerName2:Lcom/lsec/core/frame/ctrl/JText;

.field mTxtMergerTime:Lcom/lsec/core/frame/ctrl/JText;

.field mTxtName:Lcom/lsec/core/frame/ctrl/JText;

.field mTxtState:Lcom/lsec/core/frame/ctrl/JText;

.field mViewMerger:Landroid/view/View;

.field mViewThirdphone:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 32
    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mViewThirdphone:Landroid/view/View;

    .line 33
    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mViewMerger:Landroid/view/View;

    .line 37
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 188
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 190
    :sswitch_0
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v1, :cond_0

    .line 191
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang3rdPhoneHold()V

    .line 192
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/syu/bt/App_Bt;->pop3rdPhone(Z)V

    .line 200
    :goto_1
    const-string v1, "sfth"

    const-string v2, " 000 PagePop3  Pop3rdPhone_Btn_Hang "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang3rdPhoneHold()V

    goto :goto_1

    .line 203
    :sswitch_1
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->switch3rdPhone()V

    .line 204
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v1, :cond_1

    .line 205
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/syu/bt/App_Bt;->pop3rdPhone(Z)V

    .line 206
    :cond_1
    const-string v1, "sfth"

    const-string v2, " 111 PagePop3  Pop3rdPhone_Btn_Accept "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :sswitch_2
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->merge3rdPhone()V

    .line 210
    const-string v1, "sfth"

    const-string v2, " 222 PagePop3  Pop3rdPhone_Btn_merge "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :sswitch_3
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isMerger()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    .line 215
    :cond_2
    const-string v1, "sfth"

    const-string v2, " 333 PagePop3  PopMergerPhone_Btn_Hang "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x50 -> :sswitch_1
        0x51 -> :sswitch_0
        0x53 -> :sswitch_2
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->init()V

    .line 42
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 43
    const/16 v1, 0x50

    .line 42
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

    .line 44
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 45
    const/16 v1, 0x4e

    .line 44
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtName:Lcom/lsec/core/frame/ctrl/JText;

    .line 46
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 47
    const/16 v1, 0x4f

    .line 46
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtState:Lcom/lsec/core/frame/ctrl/JText;

    .line 49
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 50
    const/16 v1, 0x59

    .line 49
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtMergerName1:Lcom/lsec/core/frame/ctrl/JText;

    .line 51
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 52
    const/16 v1, 0x5a

    .line 51
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtMergerName2:Lcom/lsec/core/frame/ctrl/JText;

    .line 53
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 54
    const/16 v1, 0x5b

    .line 53
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtMergerTime:Lcom/lsec/core/frame/ctrl/JText;

    .line 56
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 57
    const/16 v1, 0x4c

    .line 56
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mViewThirdphone:Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mViewMerger:Landroid/view/View;

    .line 60
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->resume()V

    .line 179
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->updateThirdPhoneView()V

    .line 180
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->updateMergerPhoneName()V

    .line 181
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->updatePhoneName()V

    .line 182
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->updateBtnAccept()V

    .line 183
    return-void
.end method

.method public updateBtnAccept()V
    .locals 5

    .prologue
    .line 75
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isMerger()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v2, :cond_3

    .line 79
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 80
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v2

    if-eq v2, v1, :cond_3

    .line 88
    if-eqz v1, :cond_3

    .line 89
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mBtnAccept:Lcom/lsec/core/frame/ctrl/JButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 94
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v1    # "str":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtState:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_0

    .line 95
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtState:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_ring"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    .restart local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v1    # "str":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    goto :goto_1

    .line 98
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v1    # "str":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtState:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_waiting"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateMergerPhoneName()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 142
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isMerger()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtMergerName1:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtMergerName2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 146
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 148
    .local v3, "strPhone":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    .line 152
    const-string v7, "Thread-GetNameByNumber"

    .line 153
    new-instance v0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;

    .line 154
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtMergerName1:Lcom/lsec/core/frame/ctrl/JText;

    move-object v4, v3

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 151
    invoke-static {v6, v7, v0, v8, v9}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 157
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    .line 158
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    .line 159
    const-string v7, "Thread-GetNameByNumber"

    .line 160
    new-instance v0, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;

    .line 161
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtMergerName2:Lcom/lsec/core/frame/ctrl/JText;

    move-object v4, v3

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/syu/bt/runnable/Runnable_getNameByNumberPopBtBook;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    invoke-static {v6, v7, v0, v8, v9}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto :goto_0
.end method

.method public updateMergerTime(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 167
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isMerger()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtMergerTime:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtMergerTime:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 172
    div-int/lit8 v5, p1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-int/lit8 v5, p1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 171
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updatePhoneName()V
    .locals 6

    .prologue
    .line 103
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isMerger()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtName:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_0

    .line 113
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v3, :cond_3

    sget v3, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eqz v3, :cond_2

    sget v3, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 114
    :cond_2
    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone2_WAITING_NUMBER:[Ljava/lang/String;

    sget v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget-object v3, v3, v4

    sput-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    .line 116
    :cond_3
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    .line 117
    .local v2, "strPhone":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v3, :cond_6

    .line 119
    sget v3, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-nez v3, :cond_5

    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    :goto_2
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v3, v2, v0}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "strName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    move-object v1, v2

    .line 126
    :cond_4
    const-string v3, "popname"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 111 PagePop3 updatePhoneName strPhone= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mTxtName:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    .end local v1    # "strName":Ljava/lang/String;
    :cond_5
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    goto :goto_1

    .line 121
    :cond_6
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public updateThirdPhoneView()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mViewThirdphone:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 64
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mViewThirdphone:Landroid/view/View;

    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isMerger()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mViewMerger:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_Pop3rdPhone;->mViewMerger:Landroid/view/View;

    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isMerger()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 65
    goto :goto_0

    :cond_3
    move v2, v1

    .line 70
    goto :goto_1
.end method
