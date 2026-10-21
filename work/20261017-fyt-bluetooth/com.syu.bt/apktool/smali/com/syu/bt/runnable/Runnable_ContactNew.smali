.class public Lcom/syu/bt/runnable/Runnable_ContactNew;
.super Ljava/lang/Object;
.source "Runnable_ContactNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field map:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field page_Contact:Lcom/syu/bt/page/Page_Contact;


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;Lcom/syu/bt/page/Page_Contact;)V
    .locals 0
    .param p2, "page_Contact"    # Lcom/syu/bt/page/Page_Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/syu/bt/page/Page_Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_ContactNew;->map:Landroid/util/SparseArray;

    .line 20
    iput-object p2, p0, Lcom/syu/bt/runnable/Runnable_ContactNew;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 25
    sget v1, Lcom/syu/bt/App_Bt;->iDownloadCnt:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/syu/bt/App_Bt;->iDownloadCnt:I

    .line 26
    const-string v1, "save"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 111 RunnableContNew  mListContact.add map = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/syu/bt/runnable/Runnable_ContactNew;->map:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  sPhone2_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iDownloadCnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/syu/bt/App_Bt;->iDownloadCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v1, :cond_2

    .line 28
    sget v1, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v1, :cond_1

    .line 29
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    iget-object v2, p0, Lcom/syu/bt/runnable/Runnable_ContactNew;->map:Landroid/util/SparseArray;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/syu/bt/runnable/Runnable_ContactNew;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/syu/bt/runnable/Runnable_ContactNew;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Contact;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const/16 v2, 0x2811

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v2, p0, Lcom/syu/bt/runnable/Runnable_ContactNew;->map:Landroid/util/SparseArray;

    invoke-static {v1, v2}, Lcom/lsec/core/frame/app/MyApplication;->add(Lcom/lsec/core/frame/ctrl/JGridView;Landroid/util/SparseArray;)V

    .line 43
    iget-object v1, p0, Lcom/syu/bt/runnable/Runnable_ContactNew;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    sget v2, Lcom/syu/bt/App_Bt;->iDownloadCnt:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/syu/bt/page/Page_Contact;->setContactNum(Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/syu/bt/runnable/Runnable_ContactNew;->map:Landroid/util/SparseArray;

    const/16 v2, 0x281c

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    iget-object v2, p0, Lcom/syu/bt/runnable/Runnable_ContactNew;->map:Landroid/util/SparseArray;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    iget-object v2, p0, Lcom/syu/bt/runnable/Runnable_ContactNew;->map:Landroid/util/SparseArray;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
