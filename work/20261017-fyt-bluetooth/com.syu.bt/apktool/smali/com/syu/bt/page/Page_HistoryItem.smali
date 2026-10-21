.class public Lcom/syu/bt/page/Page_HistoryItem;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_HistoryItem.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;

.field vHead:Lcom/lsec/core/frame/ctrl/JView;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 22
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 23
    iput-object p2, p0, Lcom/syu/bt/page/Page_HistoryItem;->actBt:Lcom/syu/bt/Act_Bt;

    .line 24
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_HistoryItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x2829

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JView;

    iput-object v0, p0, Lcom/syu/bt/page/Page_HistoryItem;->vHead:Lcom/lsec/core/frame/ctrl/JView;

    .line 25
    iget-object v0, p0, Lcom/syu/bt/page/Page_HistoryItem;->vHead:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/syu/bt/page/Page_HistoryItem;->vHead:Lcom/lsec/core/frame/ctrl/JView;

    new-instance v1, Lcom/syu/bt/page/Page_HistoryItem$1;

    invoke-direct {v1, p0, p2}, Lcom/syu/bt/page/Page_HistoryItem$1;-><init>(Lcom/syu/bt/page/Page_HistoryItem;Lcom/syu/bt/Act_Bt;)V

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 55
    .local v1, "id":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 57
    :pswitch_0
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v5

    if-nez v5, :cond_0

    .line 60
    iget-object v5, p0, Lcom/syu/bt/page/Page_HistoryItem;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v6, 0x2718

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 61
    .local v3, "pageHistory":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v3, :cond_0

    .line 62
    const/16 v5, 0x2831

    invoke-virtual {v3, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 63
    .local v0, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_HistoryItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v4

    .line 65
    .local v4, "position":I
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 66
    .local v2, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v5, 0x283b

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x283e
        :pswitch_0
    .end packed-switch
.end method

.method public dismissPopBtHead()V
    .locals 5

    .prologue
    .line 81
    iget-object v1, p0, Lcom/syu/bt/page/Page_HistoryItem;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x272d

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 82
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 87
    :cond_0
    return-void
.end method

.method public popBtHead()V
    .locals 5

    .prologue
    .line 75
    iget-object v1, p0, Lcom/syu/bt/page/Page_HistoryItem;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x272d

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 76
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 78
    :cond_0
    return-void
.end method
