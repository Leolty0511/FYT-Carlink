.class public Lcom/syu/bt/db/Bt_Info$GetListContact;
.super Ljava/lang/Object;
.source "Bt_Info.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/db/Bt_Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetListContact"
.end annotation


# instance fields
.field public bRun:Z

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

.field final synthetic this$0:Lcom/syu/bt/db/Bt_Info;


# direct methods
.method public constructor <init>(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p2, "listContact":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->this$0:Lcom/syu/bt/db/Bt_Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->bRun:Z

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->listContact:Ljava/util/List;

    .line 629
    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->listContact:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 630
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 638
    iget-boolean v5, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->bRun:Z

    if-eqz v5, :cond_2

    .line 640
    const-string v5, "save11"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 00  GetListContact listContact = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->listContact:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v5, :cond_5

    .line 643
    iget-object v5, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 644
    const-string v5, "save11"

    const-string v6, " 11 GetListContact mListContact2.clear "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v5, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 646
    iget-object v5, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->listContact:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 655
    const-string v5, "save11"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 22  GetListContact mListContact2 = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v7, v7, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :goto_1
    iget-object v5, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->this$0:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v5}, Lcom/syu/bt/db/Bt_Info;->sortContact()V

    .line 663
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-boolean v5, v5, Lcom/syu/bt/App_Bt;->bPopBtBook:Z

    if-eqz v5, :cond_0

    .line 664
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 665
    .local v3, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v3, :cond_0

    .line 666
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v4

    check-cast v4, Lcom/syu/bt/page/pop/Page_PopBt_Book;

    .line 667
    .local v4, "page_PopBt_Book":Lcom/syu/bt/page/pop/Page_PopBt_Book;
    if-eqz v4, :cond_0

    .line 668
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->queryContacts(Ljava/lang/String;)V

    .line 672
    .end local v3    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v4    # "page_PopBt_Book":Lcom/syu/bt/page/pop/Page_PopBt_Book;
    :cond_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/syu/bt/App_Bt;->updatePhoneName()V

    .line 673
    sget-object v5, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 676
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "TZY_NEW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "TZY_BT_1920"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "TZY_OEM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 677
    :cond_1
    sget-object v5, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v6, "Thread-DownContact"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->mRunnable_setContactHead:Ljava/lang/Runnable;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 680
    :cond_2
    return-void

    .line 646
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 648
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v6, 0x281c

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 649
    .local v2, "name":Ljava/lang/String;
    const-string v6, "hfp2"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 651
    iget-object v6, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 653
    :cond_4
    iget-object v6, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 658
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 659
    iget-object v5, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    iget-object v6, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->listContact:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 673
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 674
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->resetList()V

    goto :goto_2
.end method

.method public stopRun()V
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/db/Bt_Info$GetListContact;->bRun:Z

    .line 634
    return-void
.end method
