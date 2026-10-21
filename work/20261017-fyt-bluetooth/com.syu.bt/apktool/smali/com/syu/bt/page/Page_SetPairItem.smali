.class public Lcom/syu/bt/page/Page_SetPairItem;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_SetPairItem.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 21
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 22
    iput-object p2, p0, Lcom/syu/bt/page/Page_SetPairItem;->actBt:Lcom/syu/bt/Act_Bt;

    .line 23
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 29
    .local v2, "id":I
    packed-switch v2, :pswitch_data_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 31
    :pswitch_0
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v6

    if-nez v6, :cond_0

    .line 33
    iget-object v6, p0, Lcom/syu/bt/page/Page_SetPairItem;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v7, 0x271b

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    .line 34
    .local v4, "pageSet":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v4, :cond_0

    .line 35
    const/16 v6, 0x28ec

    invoke-virtual {v4, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 36
    .local v1, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_SetPairItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v5

    .line 38
    .local v5, "position":I
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 39
    .local v3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v6, 0x28ef

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v6, p0}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncPairLink(Lcom/syu/bt/page/Page_SetPairItem;)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x28f2
        :pswitch_0
    .end packed-switch
.end method

.method public getChoiceName(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 4
    .param p1, "mChoiceAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x28ef

    .line 49
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListSetPair:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 50
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListSetPair:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 50
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 51
    .local v0, "entity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public popPwd()V
    .locals 5

    .prologue
    .line 61
    iget-object v1, p0, Lcom/syu/bt/page/Page_SetPairItem;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2729

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 62
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 64
    :cond_0
    return-void
.end method
