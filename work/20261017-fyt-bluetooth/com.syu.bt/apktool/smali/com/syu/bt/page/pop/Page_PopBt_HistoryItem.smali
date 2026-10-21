.class public Lcom/syu/bt/page/pop/Page_PopBt_HistoryItem;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopBt_HistoryItem.java"


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 17
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 18
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 23
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 25
    :pswitch_0
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v5

    if-nez v5, :cond_0

    .line 28
    iget-object v5, p0, Lcom/syu/bt/page/pop/Page_PopBt_HistoryItem;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v5, v5, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JPage;

    .line 29
    .local v2, "pagePopBook":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v3

    .line 30
    check-cast v3, Lcom/syu/bt/page/pop/Page_PopBt_Book;

    .line 32
    .local v3, "page_PopBt_Book":Lcom/syu/bt/page/pop/Page_PopBt_Book;
    if-eqz v3, :cond_0

    .line 33
    iget-object v5, v3, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridHistory:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v5, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBt_HistoryItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v4

    .line 35
    .local v4, "position":I
    iget-object v5, v3, Lcom/syu/bt/page/pop/Page_PopBt_Book;->mGridHistory:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 36
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v5, 0x283b

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method
