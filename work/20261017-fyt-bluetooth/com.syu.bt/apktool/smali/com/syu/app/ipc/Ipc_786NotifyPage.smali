.class public Lcom/syu/app/ipc/Ipc_786NotifyPage;
.super Ljava/lang/Object;
.source "Ipc_786NotifyPage.java"


# instance fields
.field listContact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field listContactDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_786NotifyPage;->listContactDownload:Ljava/util/List;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/app/ipc/Ipc_786NotifyPage;->listContact:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public onNotify(Lcom/syu/bt/page/Page_Av;I[I[F[Ljava/lang/String;)V
    .locals 11
    .param p1, "page_Av"    # Lcom/syu/bt/page/Page_Av;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 178
    sparse-switch p2, :sswitch_data_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 180
    :sswitch_0
    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v7, v9, p2

    .line 181
    .local v7, "value":I
    const/4 v2, 0x0

    .line 182
    .local v2, "bRun":Z
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_1

    .line 183
    const/4 v2, 0x1

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x2841

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/syu/bt/ctrl/JRotView;

    .line 186
    .local v4, "rotCd":Lcom/syu/bt/ctrl/JRotView;
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x2843

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/syu/bt/ctrl/JPinBar;

    .line 187
    .local v3, "pinBar":Lcom/syu/bt/ctrl/JPinBar;
    if-eqz v4, :cond_2

    .line 188
    invoke-virtual {v4, v2}, Lcom/syu/bt/ctrl/JRotView;->setRun(Z)V

    .line 190
    :cond_2
    if-eqz v3, :cond_3

    .line 191
    invoke-virtual {v3, v2}, Lcom/syu/bt/ctrl/JPinBar;->setRun(Z)V

    .line 193
    :cond_3
    const/4 v1, 0x0

    .line 194
    .local v1, "bId3InfoGone":Z
    if-nez v7, :cond_4

    iget-boolean v9, p1, Lcom/syu/bt/page/Page_Av;->misAvStop:Z

    if-eqz v9, :cond_4

    .line 195
    const/4 v1, 0x1

    .line 197
    :cond_4
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x2857

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    .line 198
    .local v8, "viewId3Info":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 199
    if-eqz v1, :cond_5

    .line 200
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 208
    .end local v1    # "bId3InfoGone":Z
    .end local v2    # "bRun":Z
    .end local v3    # "pinBar":Lcom/syu/bt/ctrl/JPinBar;
    .end local v4    # "rotCd":Lcom/syu/bt/ctrl/JRotView;
    .end local v7    # "value":I
    .end local v8    # "viewId3Info":Landroid/view/View;
    :sswitch_1
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sId3Title:Ljava/lang/String;

    .line 209
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x284f

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 210
    .local v5, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v5, :cond_6

    .line 211
    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_6
    const-string v9, "id3"

    const-string v10, " 00  Ipc786_FinalBt.U_ID3_NAME"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    .end local v5    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v6    # "title":Ljava/lang/String;
    :sswitch_2
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sId3Artist:Ljava/lang/String;

    .line 218
    .local v0, "artist":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x2851

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 219
    .restart local v5    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v5, :cond_0

    .line 220
    invoke-virtual {v5, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 224
    .end local v0    # "artist":Ljava/lang/String;
    .end local v5    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_3
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x284f

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 226
    .restart local v5    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v5, :cond_7

    .line 227
    const-string v9, ""

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_7
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x2851

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "text":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 230
    .restart local v5    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v5, :cond_8

    .line 231
    const-string v9, ""

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_8
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Av;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x2857

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    .line 234
    .restart local v8    # "viewId3Info":Landroid/view/View;
    if-eqz v8, :cond_9

    .line 235
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_9
    const/4 v9, 0x0

    iput-boolean v9, p1, Lcom/syu/bt/page/Page_Av;->misAvStop:Z

    goto/16 :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_2
    .end sparse-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Contact;I[I[F[Ljava/lang/String;)V
    .locals 13
    .param p1, "page_Contact"    # Lcom/syu/bt/page/Page_Contact;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 248
    sparse-switch p2, :sswitch_data_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 250
    :sswitch_0
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    const/4 v2, 0x2

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v2, :cond_0

    .line 253
    const/4 v2, 0x1

    sput-boolean v2, Lcom/syu/bt/App_Bt;->bHasDownBook:Z

    .line 255
    const/4 v2, 0x0

    aget-object v3, p5, v2

    .line 256
    .local v3, "name":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v4, p5, v2

    .line 258
    .local v4, "number":Ljava/lang/String;
    const/4 v8, 0x0

    .line 259
    .local v8, "bRepaceOk":Z
    const-string v2, "+"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 260
    .local v9, "pos":I
    if-nez v9, :cond_1

    .line 261
    const/4 v8, 0x1

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\D"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 266
    :cond_1
    if-nez v8, :cond_2

    .line 267
    const-string v2, "[\\D]"

    const-string v5, ""

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 269
    :cond_2
    const-string v2, "/H"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 270
    const/4 v2, 0x0

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 274
    :cond_3
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 275
    move-object v3, v4

    .line 277
    :cond_4
    sget-object v11, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v12, "Thread-DownContact"

    .line 278
    new-instance v2, Lcom/syu/bt/runnable/Runnable_UBook;

    iget-object v5, p0, Lcom/syu/app/ipc/Ipc_786NotifyPage;->listContact:Ljava/util/List;

    iget-object v6, p0, Lcom/syu/app/ipc/Ipc_786NotifyPage;->listContactDownload:Ljava/util/List;

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/syu/bt/runnable/Runnable_UBook;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/syu/bt/page/Page_Contact;)V

    const/4 v5, 0x0

    .line 279
    const/16 v6, 0xa

    .line 277
    invoke-static {v11, v12, v2, v5, v6}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 271
    :cond_5
    const-string v2, "/M"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 272
    const/4 v2, 0x0

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 285
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v8    # "bRepaceOk":Z
    .end local v9    # "pos":I
    :sswitch_1
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, p2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_7

    .line 286
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-nez v2, :cond_6

    .line 287
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_786NotifyPage;->listContactDownload:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 288
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_786NotifyPage;->listContactDownload:Ljava/util/List;

    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 289
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_786NotifyPage;->listContact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 290
    iget-object v2, p0, Lcom/syu/app/ipc/Ipc_786NotifyPage;->listContact:Ljava/util/List;

    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 293
    :cond_6
    const/4 v2, 0x1

    sput-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    .line 295
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAutoDownPhoneBook:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 296
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_download"

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 297
    .local v10, "strDownload":Ljava/lang/String;
    iget-object v2, p1, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, v2, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-virtual {v2, v10}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    .end local v10    # "strDownload":Ljava/lang/String;
    :cond_7
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v2, :cond_0

    .line 301
    const/4 v2, 0x0

    sput-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    .line 302
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 303
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v2, v2, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_scanDB:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 304
    const/4 v2, 0x1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v5, v5, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_scanDB:Ljava/lang/Runnable;

    const-wide/16 v6, 0xc8

    invoke-static {v2, v5, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 307
    :cond_8
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v5, "Thread-DownContact"

    .line 308
    new-instance v6, Lcom/syu/bt/runnable/Runnable_DownOver1st;

    invoke-direct {v6, p1}, Lcom/syu/bt/runnable/Runnable_DownOver1st;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    const/4 v7, 0x0

    const/16 v11, 0xa

    .line 307
    invoke-static {v2, v5, v6, v7, v11}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 248
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Dial;I[I[F[Ljava/lang/String;)V
    .locals 9
    .param p1, "page_Dial"    # Lcom/syu/bt/page/Page_Dial;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 94
    sparse-switch p2, :sswitch_data_0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 96
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/syu/app/ipc/Ipc_786NotifyPage;->phoneState(Lcom/syu/bt/page/Page_Dial;)V

    goto :goto_0

    .line 99
    :sswitch_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x2761

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 100
    .local v2, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_1

    .line 101
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x2763

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 104
    .restart local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_0

    .line 105
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "unknown"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "strUnKnown":Ljava/lang/String;
    sget-object v4, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v5, "Thread-GetNameByNumber"

    .line 113
    new-instance v6, Lcom/syu/bt/runnable/Runnable_getNameByNumber;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v2, v1, v7}, Lcom/syu/bt/runnable/Runnable_getNameByNumber;-><init>(Ljava/util/List;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    const/4 v8, 0x5

    .line 112
    invoke-static {v4, v5, v6, v7, v8}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto :goto_0

    .line 119
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .end local v1    # "strUnKnown":Ljava/lang/String;
    .end local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_2
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x2765

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 120
    .restart local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_0

    .line 121
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    .line 122
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    .end local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v3    # "value":Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x2767

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 128
    .restart local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_0

    .line 129
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    .line 130
    .restart local v3    # "value":Ljava/lang/String;
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 131
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_5

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 133
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x6

    const/16 v6, 0x8

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x8

    const/16 v6, 0xa

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 134
    const/16 v5, 0xa

    const/16 v6, 0xc

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_3
    :goto_1
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 140
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 143
    :cond_4
    :goto_2
    sget v4, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v5, 0x8b

    if-ne v4, v5, :cond_0

    .line 144
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_0

    .line 136
    :cond_5
    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 141
    :cond_6
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-nez v4, :cond_4

    .line 142
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_2

    .line 149
    .end local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v3    # "value":Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x2764

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 150
    .restart local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_0

    .line 151
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v4, v4, p2

    add-int/lit8 v4, v4, 0x64

    div-int/lit16 v3, v4, 0x3e8

    .line 152
    .local v3, "value":I
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    div-int/lit8 v8, v3, 0x3c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    rem-int/lit8 v8, v3, 0x3c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 157
    .end local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    .end local v3    # "value":I
    :sswitch_5
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    if-gtz v4, :cond_7

    .line 158
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 160
    :cond_7
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    if-lez v4, :cond_0

    .line 161
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x2764

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 163
    .restart local v2    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_0

    .line 164
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/lit16 v4, v4, 0xc8

    div-int/lit16 v3, v4, 0x3e8

    .line 165
    .restart local v3    # "value":I
    if-lez v3, :cond_8

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_auto_suspend"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 168
    :cond_8
    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_4
        0xc -> :sswitch_5
        0xe -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Pair;I[I[F[Ljava/lang/String;)V
    .locals 14
    .param p1, "page_Pair"    # Lcom/syu/bt/page/Page_Pair;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 316
    sparse-switch p2, :sswitch_data_0

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 318
    :sswitch_0
    if-nez p5, :cond_1

    .line 319
    const/4 v11, 0x0

    const-string v12, ""

    invoke-virtual {p1, v11, v12}, Lcom/syu/bt/page/Page_Pair;->showDiscover(ZLjava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    move-object/from16 v0, p5

    array-length v11, v0

    const/4 v12, 0x3

    if-lt v11, v12, :cond_0

    .line 327
    const/4 v6, 0x0

    .line 328
    .local v6, "isExists":Z
    :try_start_0
    sget-object v11, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v11, v11, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 333
    const-string v11, "gdy6"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, " 11 mListPair.add name = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x2

    aget-object v13, p5, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isExists = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-nez v6, :cond_0

    .line 336
    const/4 v11, 0x2

    aget-object v11, p5, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 339
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 340
    .local v1, "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v11, 0x28da

    const/4 v12, 0x1

    aget-object v12, p5, v12

    invoke-virtual {v1, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    const/16 v11, 0x28db

    const/4 v12, 0x2

    aget-object v12, p5, v12

    invoke-virtual {v1, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    const/16 v11, 0x28d9

    const/4 v12, 0x0

    aget-object v12, p5, v12

    invoke-virtual {v1, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    sget-object v11, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v11, v11, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Pair;->refreshList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v1    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 328
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 329
    .restart local v1    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v11, 0x28da

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v13, p5, v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    if-eqz v11, :cond_2

    .line 330
    const/4 v6, 0x1

    goto :goto_1

    .line 353
    .end local v1    # "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v6    # "isExists":Z
    :sswitch_1
    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->sChoiceAddr:Ljava/lang/String;

    invoke-virtual {p1, v11}, Lcom/syu/bt/page/Page_Pair;->getChoiceName(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 354
    .local v3, "entity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 357
    const/16 v11, 0x28d9

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 358
    .local v7, "strIndex":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 361
    invoke-static {v7}, Lcom/lsec/core/util/FuncUtils;->myParseInt(Ljava/lang/String;)I

    move-result v5

    .line 362
    .local v5, "iIndex":I
    iget-boolean v11, p1, Lcom/syu/bt/page/Page_Pair;->isSelfLink:Z

    if-eqz v11, :cond_0

    const/4 v11, 0x2

    if-eq v5, v11, :cond_0

    .line 365
    const/4 v11, 0x0

    iput-boolean v11, p1, Lcom/syu/bt/page/Page_Pair;->isSelfLink:Z

    .line 367
    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v11, v11, p2

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 368
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v11

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v13, "bt_obd_connected"

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    :cond_4
    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v11, v11, p2

    if-nez v11, :cond_0

    .line 370
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v11

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v13, "bt_obd_disconnected"

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    .end local v3    # "entity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v5    # "iIndex":I
    .end local v7    # "strIndex":Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    const/16 v12, 0x28d3

    invoke-virtual {v11, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 375
    .local v4, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v4, :cond_0

    .line 376
    const-string v11, "gdy6666"

    const-string v12, " *****000 Ipc_786 notifyDataSetChanged    "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 383
    .end local v4    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    :sswitch_3
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    const/16 v12, 0x28d6

    invoke-virtual {v11, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JText;

    .line 384
    .local v8, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v8, :cond_5

    .line 385
    sget-object v10, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    .line 386
    .local v10, "value":Ljava/lang/String;
    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 387
    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xc

    if-ne v11, v12, :cond_6

    .line 388
    new-instance v11, Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, 0x4

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x4

    const/4 v13, 0x6

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 389
    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x6

    const/16 v13, 0x8

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x8

    const/16 v13, 0xa

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 390
    const/16 v12, 0xa

    const/16 v13, 0xc

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 388
    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 397
    .end local v10    # "value":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Pair;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    const/16 v12, 0x28d7

    invoke-virtual {v11, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/ctrl/JText;

    .line 398
    .local v9, "text_Err":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v9, :cond_0

    .line 399
    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x14

    if-le v11, v12, :cond_7

    .line 400
    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 392
    .end local v9    # "text_Err":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v10    # "value":Ljava/lang/String;
    :cond_6
    invoke-virtual {v8, v10}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 402
    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "text_Err":Lcom/lsec/core/frame/ctrl/JText;
    :cond_7
    const-string v11, ""

    invoke-virtual {v9, v11}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 316
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xf -> :sswitch_3
        0x15 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Set;I[I[F[Ljava/lang/String;)V
    .locals 10
    .param p1, "page_Set"    # Lcom/syu/bt/page/Page_Set;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 410
    sparse-switch p2, :sswitch_data_0

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 412
    :sswitch_0
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x288d

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 413
    .local v2, "editDevName":Landroid/widget/EditText;
    if-eqz v2, :cond_0

    .line 414
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 418
    .end local v2    # "editDevName":Landroid/widget/EditText;
    :sswitch_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x288f

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 419
    .local v3, "editPin":Landroid/widget/EditText;
    if-eqz v3, :cond_0

    .line 420
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    .end local v3    # "editPin":Landroid/widget/EditText;
    :sswitch_2
    const/4 v0, 0x0

    .line 425
    .local v0, "bAutoPick":Z
    const/4 v4, 0x0

    .line 426
    .local v4, "str":Ljava/lang/String;
    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v7, v7, p2

    if-lez v7, :cond_3

    .line 427
    const/4 v0, 0x1

    .line 428
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_opened"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 432
    :goto_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    const/16 v8, 0x2890

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 433
    .local v5, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v5, :cond_1

    .line 434
    invoke-virtual {v5, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    .line 437
    const/16 v8, 0x288c

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .line 436
    check-cast v1, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    .line 438
    .local v1, "check":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    if-eqz v1, :cond_2

    .line 439
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setChecked(Z)V

    .line 441
    :cond_2
    const/16 v7, 0x2873

    invoke-virtual {p1, v7, v0}, Lcom/syu/bt/page/Page_Set;->updateAutoSelected(IZ)V

    .line 442
    const/16 v7, 0x2874

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {p1, v7, v6}, Lcom/syu/bt/page/Page_Set;->updateAutoSelected(IZ)V

    goto :goto_0

    .line 430
    .end local v1    # "check":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    .end local v5    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_closed"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 442
    .restart local v1    # "check":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    .restart local v5    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_4
    const/4 v6, 0x1

    goto :goto_2

    .line 446
    .end local v0    # "bAutoPick":Z
    .end local v1    # "check":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_3
    iget-boolean v7, p1, Lcom/syu/bt/page/Page_Set;->isClickReSet:Z

    if-eqz v7, :cond_6

    .line 447
    sget-object v7, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v7, v7, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-virtual {v7}, Lcom/syu/bt/util/UIUtil;->disLoading()V

    .line 448
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v7

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v9, "bt_reset_success"

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 449
    sget-object v7, Lcom/syu/bt/App_Bt;->strDefaultName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/syu/bt/App_Bt;->strDefaultName:Ljava/lang/String;

    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 450
    sget-object v7, Lcom/syu/bt/App_Bt;->strDefaultName:Ljava/lang/String;

    invoke-static {v7}, Lcom/syu/app/ipc/Bt_IpcObj;->setDevName(Ljava/lang/String;)V

    .line 452
    :cond_5
    sget-object v7, Lcom/syu/bt/App_Bt;->strDefaultPin:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v7, Lcom/syu/bt/App_Bt;->strDefaultPin:Ljava/lang/String;

    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 453
    sget-object v7, Lcom/syu/bt/App_Bt;->strDefaultPin:Ljava/lang/String;

    invoke-static {v7}, Lcom/syu/app/ipc/Bt_IpcObj;->setDevPin(Ljava/lang/String;)V

    .line 456
    :cond_6
    iput-boolean v6, p1, Lcom/syu/bt/page/Page_Set;->isClickReSet:Z

    goto/16 :goto_0

    .line 410
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x8 -> :sswitch_1
        0xb -> :sswitch_2
        0x16 -> :sswitch_3
    .end sparse-switch
.end method

.method public onNotify_Sound(Lcom/syu/bt/page/Page_Set;I[I[F[Ljava/lang/String;)V
    .locals 0
    .param p1, "page_Set"    # Lcom/syu/bt/page/Page_Set;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 463
    return-void
.end method

.method public phoneState(Lcom/syu/bt/page/Page_Dial;)V
    .locals 8
    .param p1, "page_Dial"    # Lcom/syu/bt/page/Page_Dial;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v3, v6

    .line 44
    .local v2, "value":I
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x2760

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 45
    .local v1, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_0

    .line 46
    const/4 v0, -0x1

    .line 47
    .local v0, "iState":I
    packed-switch v2, :pswitch_data_0

    .line 71
    :goto_0
    if-ltz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v4, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .end local v0    # "iState":I
    :cond_0
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x2764

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "text":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 76
    .restart local v1    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_2

    .line 77
    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 78
    if-ne v2, v7, :cond_4

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    if-lez v3, :cond_4

    .line 79
    :cond_1
    invoke-virtual {v1, v5}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 84
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x2765

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "text":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 85
    .restart local v1    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_3

    .line 86
    if-ne v2, v6, :cond_5

    .line 87
    invoke-virtual {v1, v5}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 91
    :cond_3
    :goto_2
    return-void

    .line 49
    .restart local v0    # "iState":I
    :pswitch_0
    const/4 v0, 0x0

    .line 50
    goto :goto_0

    .line 52
    :pswitch_1
    const/4 v0, 0x1

    .line 53
    goto :goto_0

    .line 55
    :pswitch_2
    const/4 v0, 0x2

    .line 56
    goto :goto_0

    .line 58
    :pswitch_3
    const/4 v0, 0x3

    .line 59
    goto :goto_0

    .line 61
    :pswitch_4
    const/4 v0, 0x4

    .line 62
    goto :goto_0

    .line 64
    :pswitch_5
    const/4 v0, 0x5

    .line 65
    goto :goto_0

    .line 67
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 81
    .end local v0    # "iState":I
    :cond_4
    invoke-virtual {v1, v7}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_1

    .line 88
    :cond_5
    if-nez v2, :cond_3

    .line 89
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_2

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
