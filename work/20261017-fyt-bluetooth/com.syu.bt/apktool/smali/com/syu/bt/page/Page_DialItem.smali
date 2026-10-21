.class public Lcom/syu/bt/page/Page_DialItem;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_DialItem.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 20
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 21
    iput-object p2, p0, Lcom/syu/bt/page/Page_DialItem;->actBt:Lcom/syu/bt/Act_Bt;

    .line 22
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 31
    .local v1, "id":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 33
    :pswitch_0
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_0

    .line 36
    iget-object v6, p0, Lcom/syu/bt/page/Page_DialItem;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v7, 0x2713

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    .line 37
    .local v4, "pageDial":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v4, :cond_0

    .line 38
    const/16 v6, 0x27e0

    invoke-virtual {v4, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 39
    .local v0, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_DialItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v5

    .line 41
    .local v5, "position":I
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 42
    .local v2, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v6, 0x281e

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 43
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->setNum(Ljava/lang/String;)V

    .line 44
    invoke-static {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x27b7
        :pswitch_0
    .end packed-switch
.end method
