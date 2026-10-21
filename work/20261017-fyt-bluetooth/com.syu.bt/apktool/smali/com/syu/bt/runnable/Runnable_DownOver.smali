.class public Lcom/syu/bt/runnable/Runnable_DownOver;
.super Ljava/lang/Object;
.source "Runnable_DownOver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field page_Contact:Lcom/syu/bt/page/Page_Contact;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_Contact;)V
    .locals 0
    .param p1, "page_Contact"    # Lcom/syu/bt/page/Page_Contact;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_DownOver;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 30
    const/4 v2, 0x0

    .line 32
    .local v2, "pagePopBook":Lcom/syu/bt/page/pop/Page_PopBt_Book;
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v5, :cond_b

    .line 33
    sget v5, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v5, :cond_9

    .line 34
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 36
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_DownOver;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    if-eqz v5, :cond_0

    .line 37
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_DownOver;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {v5}, Lcom/syu/bt/page/Page_Contact;->endDownload()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 45
    const-string v5, "con3"

    const-string v6, " 22 RunnableDownOver  mListContact "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 83
    :goto_1
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v5}, Lcom/syu/bt/db/Bt_Info;->sortContact()V

    .line 84
    invoke-static {}, Lcom/syu/bt/App_Bt;->queryCallLog()V

    .line 86
    const-string v5, "save2"

    const-string v6, " ** RunDownOver   "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_DownOver;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    if-eqz v5, :cond_2

    .line 89
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_DownOver;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {v5}, Lcom/syu/bt/page/Page_Contact;->endDownload()V

    .line 93
    :cond_2
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bAutoDownPhoneBook:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bAutoSavePhoneBook:Z

    if-eqz v5, :cond_4

    .line 94
    :cond_3
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v5}, Lcom/syu/bt/db/Bt_Info;->savePhoneBook()V

    .line 97
    :cond_4
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-boolean v5, v5, Lcom/syu/bt/App_Bt;->bPopBtBook:Z

    if-eqz v5, :cond_5

    .line 98
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v5, v5, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JPage;

    .line 99
    .local v1, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v1, :cond_5

    .line 100
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v3

    check-cast v3, Lcom/syu/bt/page/pop/Page_PopBt_Book;

    .line 101
    .local v3, "page_PopBt_Book":Lcom/syu/bt/page/pop/Page_PopBt_Book;
    if-eqz v3, :cond_5

    .line 102
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->queryContacts(Ljava/lang/String;)V

    .line 106
    .end local v1    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v3    # "page_PopBt_Book":Lcom/syu/bt/page/pop/Page_PopBt_Book;
    :cond_5
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 107
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 108
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_d

    .line 117
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "TZY_NEW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "TZY_BT_1920"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "TZY_OEM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 118
    :cond_7
    sget-object v5, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v6, "Thread-DownContact"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->mRunnable_setContactHead2:Ljava/lang/Runnable;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 122
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_8
    :goto_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/syu/bt/App_Bt;->updatePhoneName()V

    goto/16 :goto_0

    .line 50
    :cond_9
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContactDownload2:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_a

    .line 52
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_DownOver;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    if-eqz v5, :cond_0

    .line 53
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_DownOver;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {v5}, Lcom/syu/bt/page/Page_Contact;->endDownload()V

    goto/16 :goto_0

    .line 60
    :cond_a
    const-string v5, "save11"

    const-string v6, " 22  mListContact2.clear "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 62
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContactDownload2:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContactDownload2:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    .line 67
    :cond_b
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_c

    .line 69
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_DownOver;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    if-eqz v5, :cond_0

    .line 70
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_DownOver;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {v5}, Lcom/syu/bt/page/Page_Contact;->endDownload()V

    goto/16 :goto_0

    .line 77
    :cond_c
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 78
    const-string v5, "con3"

    const-string v6, " 22 RunnableDownOver  mListContact.addAll "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    .line 109
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 110
    .local v4, "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v4, :cond_6

    .line 111
    const/16 v5, 0x2824

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 120
    .end local v4    # "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_e
    sget-object v5, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v6, "Thread-DownContact"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->mRunnable_WriteFavContactToFile:Ljava/lang/Runnable;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_3
.end method
