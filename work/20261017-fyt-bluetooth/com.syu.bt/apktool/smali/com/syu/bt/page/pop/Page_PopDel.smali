.class public Lcom/syu/bt/page/pop/Page_PopDel;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopDel.java"


# static fields
.field public static final DEL_CONTACT_ALL:I = 0x1

.field public static final DEL_CONTACT_ONE:I = 0x2

.field public static final DEL_CONTACT_RELOAD:I = 0xb

.field public static final DEL_HISTORY_ALL:I = 0x3

.field public static final DEL_HISTORY_ONE:I = 0x4

.field public static final DEL_LOVE_NUMBER:I = 0xa

.field public static final DEL_PAIRED_ONE:I = 0x9

.field public static final DEL_PAIR_ONE:I = 0x8

.field public static final SAVE_CONTACT:I = 0x5

.field public static final SWITCH_TO_HFP:I = 0x6

.field public static final UPDATE_AIGT:I = 0xe

.field public static final UPDATE_AIJH_CQ:I = 0xd

.field public static final UPDATE_AIJZ:I = 0xc

.field public static final UPDATE_BT:I = 0x7


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 58
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 59
    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopDel;->actBt:Lcom/syu/bt/Act_Bt;

    .line 60
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 28
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 65
    .local v7, "id":I
    packed-switch v7, :pswitch_data_0

    .line 414
    :goto_0
    return-void

    .line 67
    :pswitch_0
    sget v23, Lcom/syu/bt/App_Bt;->mDelType:I

    packed-switch v23, :pswitch_data_1

    .line 398
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopDel;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getDialog()Landroid/app/Dialog;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 70
    :pswitch_1
    const-string v23, "gdy13"

    const-string v24, " 00 DEL_CONTACT_ALL   "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/16 v23, 0x8

    const-string v24, ""

    invoke-static/range {v23 .. v24}, Lcom/syu/app/ipc/Ipc_New;->sendBtPhoneState(ILjava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopDel;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/syu/bt/Act_Bt;->ClearAllContact(Z)V

    .line 73
    sget-boolean v23, Lcom/syu/bt/App_Bt;->bSaveContactsToUrl:Z

    if-eqz v23, :cond_1

    sget-boolean v23, Lcom/syu/bt/App_Bt;->bAutoSavePhoneBook:Z

    if-eqz v23, :cond_0

    .line 75
    :cond_1
    const-string v23, "gdy13"

    const-string v24, " 22 DEL_CONTACT_ALL   "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v23

    sget-object v24, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    const-string v25, ":"

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/syu/bt/util/BTUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopDel;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/syu/bt/Act_Bt;->ClearAllContact(Z)V

    .line 82
    sget-boolean v23, Lcom/syu/bt/App_Bt;->bSaveContactsToUrl:Z

    if-eqz v23, :cond_2

    sget-boolean v23, Lcom/syu/bt/App_Bt;->bAutoSavePhoneBook:Z

    if-eqz v23, :cond_3

    .line 83
    :cond_2
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v23

    sget-object v24, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    const-string v25, ":"

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/syu/bt/util/BTUtil;->deleteFile(Ljava/lang/String;)V

    .line 85
    :cond_3
    if-eqz p1, :cond_0

    .line 86
    new-instance v23, Lcom/syu/bt/page/pop/Page_PopDel$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/syu/bt/page/pop/Page_PopDel$1;-><init>(Lcom/syu/bt/page/pop/Page_PopDel;)V

    .line 91
    const-wide/16 v24, 0x3e8

    .line 86
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 99
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopDel;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v23, v0

    const/16 v24, 0x271b

    invoke-virtual/range {v23 .. v24}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 100
    .local v16, "pageSet":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v16, :cond_0

    .line 101
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/syu/bt/util/BTUtil;->getFilePath()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/syu/app/ipc/Bt_IpcObj;->sendPathToUpdateBt(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 106
    .end local v16    # "pageSet":Lcom/lsec/core/frame/ctrl/JPage;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopDel;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v23, v0

    const/16 v24, 0x2715

    invoke-virtual/range {v23 .. v24}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v14

    .line 107
    .local v14, "pageContact":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v14, :cond_0

    .line 108
    const/16 v23, 0x2811

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 109
    .local v5, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v5, :cond_0

    .line 110
    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView;->getPosition()I

    move-result v19

    .line 112
    .local v19, "position":I
    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 113
    .local v9, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    .line 114
    const/16 v23, 0x281c

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 115
    .local v11, "name":Ljava/lang/String;
    const/16 v23, 0x281e

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 117
    .local v12, "number":Ljava/lang/String;
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v12}, Lcom/syu/bt/db/Bt_Info;->getMapContact(Ljava/lang/String;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v10

    .line 118
    .local v10, "mapRemove":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v10, :cond_5

    .line 119
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    const/16 v23, 0x27e7

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/lsec/core/frame/ctrl/JText;

    .line 121
    .local v21, "tvContact_Num":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v21, :cond_5

    .line 122
    const-string v20, ""

    .line 123
    .local v20, "str_Num":Ljava/lang/String;
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 124
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_4

    .line 125
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "  "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v24, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 126
    :cond_4
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .end local v20    # "str_Num":Ljava/lang/String;
    .end local v21    # "tvContact_Num":Lcom/lsec/core/frame/ctrl/JText;
    :cond_5
    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/lsec/core/frame/app/MyApplication;->remove(Lcom/lsec/core/frame/ctrl/JGridView;I)V

    .line 132
    sget-boolean v23, Lcom/syu/bt/App_Bt;->bSaveContactsToUrl:Z

    if-nez v23, :cond_8

    .line 133
    sget-object v23, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v24, "Thread-DownContact"

    new-instance v25, Lcom/syu/bt/page/pop/Page_PopDel$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/syu/bt/page/pop/Page_PopDel$2;-><init>(Lcom/syu/bt/page/pop/Page_PopDel;)V

    .line 141
    const/16 v26, 0x0

    const/16 v27, 0x1

    .line 133
    invoke-static/range {v23 .. v27}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 147
    :goto_2
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v23

    if-nez v23, :cond_6

    sget-object v23, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v24, "YL_BT_1920"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 148
    :cond_6
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_7
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_9

    .line 156
    :goto_3
    sget-object v23, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v24, "Thread-DownContact"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mRunnable_WriteFavContactToFile:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-static/range {v23 .. v27}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_1

    .line 143
    :cond_8
    sget-object v25, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    const/16 v23, 0x281c

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const/16 v24, 0x281e

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/db/Bt_Info;->delContact(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 148
    :cond_9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/SparseArray;

    .line 149
    .local v22, "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v22, :cond_7

    .line 150
    const/16 v23, 0x281e

    invoke-virtual/range {v22 .. v23}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    const/16 v23, 0x281c

    invoke-virtual/range {v22 .. v23}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 151
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 164
    .end local v5    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    .end local v9    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v10    # "mapRemove":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "number":Ljava/lang/String;
    .end local v14    # "pageContact":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v19    # "position":I
    .end local v22    # "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopDel;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v23, v0

    const/16 v24, 0x2718

    invoke-virtual/range {v23 .. v24}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v15

    .line 165
    .local v15, "pageHistory":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v15, :cond_0

    .line 166
    const/16 v23, 0x2831

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 167
    .restart local v5    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v5, :cond_0

    .line 168
    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView;->getPosition()I

    move-result v19

    .line 169
    .restart local v19    # "position":I
    iget-object v0, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 170
    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 171
    .restart local v9    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    .line 172
    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/lsec/core/frame/app/MyApplication;->remove(Lcom/lsec/core/frame/ctrl/JGridView;I)V

    .line 174
    const/4 v8, 0x0

    .line 175
    .local v8, "listHistory":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-boolean v23, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-eqz v23, :cond_a

    .line 176
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/syu/bt/db/Bt_Info;->mListHistoryAll:Ljava/util/List;

    .line 178
    if-eqz v8, :cond_a

    .line 179
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    .line 180
    move/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 185
    :cond_a
    sget-boolean v23, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-eqz v23, :cond_b

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 186
    :cond_b
    sget v23, Lcom/syu/bt/App_Bt;->sCallsType:I

    packed-switch v23, :pswitch_data_2

    .line 214
    :cond_c
    :goto_4
    sget-object v25, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    const/16 v23, 0x283b

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const/16 v24, 0x2838

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/lsec/core/util/FuncUtils;->myParseLong(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/syu/bt/db/Bt_Info;->delCallLog(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 188
    :pswitch_6
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    .line 189
    if-eqz v8, :cond_c

    .line 191
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 192
    move/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 196
    :pswitch_7
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    .line 197
    if-eqz v8, :cond_c

    .line 199
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 200
    move/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 204
    :pswitch_8
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    .line 205
    if-eqz v8, :cond_c

    .line 207
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 208
    move/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 222
    .end local v5    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    .end local v8    # "listHistory":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .end local v9    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v15    # "pageHistory":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v19    # "position":I
    :pswitch_9
    sget-boolean v23, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-eqz v23, :cond_d

    .line 223
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual/range {v23 .. v23}, Lcom/syu/bt/db/Bt_Info;->clearAllCallLog()V

    goto/16 :goto_1

    .line 225
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopDel;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    move-object/from16 v23, v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v24, v0

    const-string v25, "bt_deling"

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    .line 226
    sget v23, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    sget-boolean v23, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v23, :cond_e

    .line 227
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget v24, Lcom/syu/bt/App_Bt;->sCallsType:I

    sget v25, Lcom/syu/bt/App_Bt;->iPhone2HisStep:I

    add-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Lcom/syu/bt/db/Bt_Info;->clearCallLog(I)V

    goto/16 :goto_1

    .line 229
    :cond_e
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget v24, Lcom/syu/bt/App_Bt;->sCallsType:I

    invoke-virtual/range {v23 .. v24}, Lcom/syu/bt/db/Bt_Info;->clearCallLog(I)V

    goto/16 :goto_1

    .line 234
    :pswitch_a
    const-string v23, "ai"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, " *** 33  UPDATE_AIGT  App_Bt.isAIGT_OnOff = "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v25, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-boolean v23, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    if-eqz v23, :cond_10

    .line 236
    const/16 v23, 0x0

    sput-boolean v23, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    .line 237
    const-string v23, "persist.lsec.aecdelay"

    const-string v24, "-1"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v23, "6316"

    sget-object v24, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 239
    const-string v23, "persist.btaec.switch"

    const-string v24, "2"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_5
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v23

    const/16 v24, 0xfd

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 248
    if-eqz p1, :cond_0

    .line 249
    new-instance v23, Lcom/syu/bt/page/pop/Page_PopDel$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/syu/bt/page/pop/Page_PopDel$3;-><init>(Lcom/syu/bt/page/pop/Page_PopDel;)V

    .line 256
    const-wide/16 v24, 0x3e8

    .line 249
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 241
    :cond_f
    const-string v23, "persist.btaec.switch"

    const-string v24, "1"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 243
    :cond_10
    const/16 v23, 0x1

    sput-boolean v23, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    .line 244
    const-string v23, "persist.lsec.aecdelay"

    const-string v24, "0"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v23, "persist.btaec.switch"

    const-string v24, "2"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 263
    :pswitch_b
    const-string v23, "ai"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, " *** 00 mRunnUpdateAIKG  App_Bt.isAIOnOff = "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v25, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bAI_GT = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-boolean v25, Lcom/syu/bt/App_Bt;->bAI_GT:Z

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-boolean v23, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    if-eqz v23, :cond_12

    .line 266
    const/16 v23, 0x0

    sput-boolean v23, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    .line 267
    const-string v23, "persist.lsec.aecdelay"

    const-string v24, "-1"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v23, "persist.btaec.switch"

    const-string v24, "1"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-boolean v23, Lcom/syu/bt/App_Bt;->bAI_GT:Z

    if-eqz v23, :cond_11

    .line 270
    const-string v23, "persist.blinkbt.qcc3031.ecnr.disable"

    const-string v24, "0"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v23, "ai"

    const-string v24, " *** 11  mRunnUpdateAIKG  persist.blinkbt.qcc3031.ecnr.disable 0 "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_11
    :goto_6
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v23

    const/16 v24, 0xfd

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 293
    if-eqz p1, :cond_0

    .line 294
    new-instance v23, Lcom/syu/bt/page/pop/Page_PopDel$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/syu/bt/page/pop/Page_PopDel$4;-><init>(Lcom/syu/bt/page/pop/Page_PopDel;)V

    .line 301
    const-wide/16 v24, 0x3e8

    .line 294
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 275
    :cond_12
    const/16 v23, 0x1

    sput-boolean v23, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    .line 276
    const-string v23, "persist.lsec.aecdelay"

    const-string v24, "0"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v23, "persist.btaec.switch"

    const-string v24, "2"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-boolean v23, Lcom/syu/bt/App_Bt;->bAI_GT:Z

    if-eqz v23, :cond_11

    .line 279
    const-string v23, "persist.blinkbt.qcc3031.ecnr.disable"

    const-string v24, "1"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v23, "ai"

    const-string v24, " *** 22  mRunnUpdateAIKG  persist.blinkbt.qcc3031.ecnr.disable 1 "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 310
    :pswitch_c
    const-string v23, "ai"

    const-string v24, " *** UPDATE_AIJH_CQ  "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object v23, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v24, 0x13

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    aput v27, v25, v26

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 321
    :pswitch_d
    sget-boolean v23, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v23, :cond_15

    .line 322
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-gtz v23, :cond_14

    .line 323
    :cond_13
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_0

    .line 324
    :cond_14
    const-string v23, "gdy14"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, " 11 Page_PopDel  SAVE_CONTACT mListContact.size"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v25, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual/range {v23 .. v23}, Lcom/syu/bt/db/Bt_Info;->saveDownloadContacts()V

    goto/16 :goto_1

    .line 328
    :cond_15
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_0

    .line 329
    const-string v23, "gdy14"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, " 11 Page_PopDel  SAVE_CONTACT mListContact.size"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v25, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual/range {v23 .. v23}, Lcom/syu/bt/db/Bt_Info;->saveDownloadContacts()V

    goto/16 :goto_1

    .line 336
    :pswitch_e
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->VoiceSwitch()V

    goto/16 :goto_1

    .line 339
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopDel;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/syu/bt/Act_Bt;->getPagePair()Lcom/syu/bt/page/Page_Pair;

    move-result-object v18

    .line 340
    .local v18, "page_Pair":Lcom/syu/bt/page/Page_Pair;
    if-eqz v18, :cond_0

    sget-object v23, Lcom/syu/bt/App_Bt;->mDeletePairAddr:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 341
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-lt v6, v0, :cond_16

    .line 348
    :goto_8
    invoke-virtual/range {v18 .. v18}, Lcom/syu/bt/page/Page_Pair;->refreshList()V

    .line 349
    const/16 v23, 0x0

    sput-object v23, Lcom/syu/bt/App_Bt;->mDeletePairAddr:Ljava/lang/String;

    goto/16 :goto_1

    .line 342
    :cond_16
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    const/16 v24, 0x28da

    invoke-virtual/range {v23 .. v24}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    sget-object v24, Lcom/syu/bt/App_Bt;->mDeletePairAddr:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 343
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 341
    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 354
    .end local v6    # "i":I
    .end local v18    # "page_Pair":Lcom/syu/bt/page/Page_Pair;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopDel;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/syu/bt/Act_Bt;->getPageDial()Lcom/syu/bt/page/Page_Dial;

    move-result-object v17

    .line 355
    .local v17, "page_Dial":Lcom/syu/bt/page/Page_Dial;
    if-eqz v17, :cond_0

    sget v23, Lcom/syu/bt/App_Bt;->mSelectContact:I

    if-lez v23, :cond_0

    .line 356
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 358
    .restart local v9    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v23, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v24, "TZY_NEW"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_18

    sget-object v23, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v24, "TZY_BT_1920"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_18

    sget-object v23, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v24, "TZY_OEM"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 359
    :cond_18
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    sget v24, Lcom/syu/bt/App_Bt;->mSelectContact:I

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    .line 360
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    move-object/from16 v23, v0

    sget v24, Lcom/syu/bt/App_Bt;->mSelectContact:I

    add-int/lit8 v24, v24, -0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 361
    invoke-virtual/range {v17 .. v17}, Lcom/syu/bt/page/Page_Dial;->showLoveNumber()V

    .line 362
    sget-object v23, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v24, "Thread-DownContact"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mRunnable_WriteFavContactToFile:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-static/range {v23 .. v27}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_1

    .line 366
    :cond_19
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "contact_save"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v24, Lcom/syu/bt/App_Bt;->mSelectContact:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v9}, Lcom/syu/bt/util/SpUtil;->saveContact(Ljava/lang/String;Landroid/util/SparseArray;)Z

    .line 367
    invoke-virtual/range {v17 .. v17}, Lcom/syu/bt/page/Page_Dial;->showLoveNumber()V

    goto/16 :goto_1

    .line 373
    .end local v9    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v17    # "page_Dial":Lcom/syu/bt/page/Page_Dial;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopDel;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v23, v0

    const/16 v24, 0x271c

    invoke-virtual/range {v23 .. v24}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v18

    .line 374
    .local v18, "page_Pair":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v18, :cond_0

    .line 375
    const/16 v23, 0x28e1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 376
    .restart local v5    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v5, :cond_0

    .line 377
    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView;->getPosition()I

    move-result v19

    .line 378
    .restart local v19    # "position":I
    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 379
    .restart local v9    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    .line 380
    const/16 v23, 0x28e4

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 381
    .local v4, "addr":Ljava/lang/String;
    invoke-static {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->deleteConnectedDevice(Ljava/lang/String;)V

    .line 382
    sget-object v23, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 384
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v23

    if-eqz v23, :cond_1a

    sget-object v23, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 385
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    .line 387
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopDel;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/syu/bt/Act_Bt;->getPagePair()Lcom/syu/bt/page/Page_Pair;

    move-result-object v13

    .line 388
    .local v13, "page":Lcom/syu/bt/page/Page_Pair;
    if-eqz v13, :cond_0

    .line 389
    invoke-virtual {v13}, Lcom/syu/bt/page/Page_Pair;->refreshPairedList()V

    goto/16 :goto_1

    .line 402
    .end local v4    # "addr":Ljava/lang/String;
    .end local v5    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    .end local v9    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v13    # "page":Lcom/syu/bt/page/Page_Pair;
    .end local v18    # "page_Pair":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v19    # "position":I
    :pswitch_12
    const/16 v23, -0x1

    sput v23, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 403
    sget v23, Lcom/syu/bt/App_Bt;->mDelType:I

    const/16 v24, 0xe

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    .line 404
    sget-object v23, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG2:Lcom/syu/bt/ctrl/JSwitchButon2;

    sget-boolean v24, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    invoke-virtual/range {v23 .. v24}, Lcom/syu/bt/ctrl/JSwitchButon2;->setSwitch(Z)V

    .line 406
    :cond_1b
    sget v23, Lcom/syu/bt/App_Bt;->mDelType:I

    const/16 v24, 0xc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c

    .line 407
    sget-object v23, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG:Lcom/syu/bt/ctrl/JSwitchButon2;

    sget-boolean v24, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    invoke-virtual/range {v23 .. v24}, Lcom/syu/bt/ctrl/JSwitchButon2;->setSwitch(Z)V

    .line 409
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/pop/Page_PopDel;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getDialog()Landroid/app/Dialog;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x28f5
        :pswitch_0
        :pswitch_12
    .end packed-switch

    .line 67
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_9
        :pswitch_5
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_2
        :pswitch_b
        :pswitch_c
        :pswitch_a
    .end packed-switch

    .line 186
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
