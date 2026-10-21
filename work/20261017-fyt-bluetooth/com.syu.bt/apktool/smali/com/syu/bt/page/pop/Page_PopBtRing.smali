.class public Lcom/syu/bt/page/pop/Page_PopBtRing;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopBtRing.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;

.field public listFile:Ljava/util/List;
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

.field mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

.field mTip:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 30
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRing;->listFile:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopBtRing;->actBt:Lcom/syu/bt/Act_Bt;

    .line 32
    return-void
.end method


# virtual methods
.method public GridClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 9
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v2

    .line 95
    .local v2, "id":I
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPosition()I

    move-result v3

    .line 96
    .local v3, "position":I
    packed-switch v2, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v4, p0, Lcom/syu/bt/page/pop/Page_PopBtRing;->listFile:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 99
    iget-object v4, p0, Lcom/syu/bt/page/pop/Page_PopBtRing;->listFile:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/16 v5, 0x290d

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, "file":Ljava/lang/String;
    iget-object v4, p0, Lcom/syu/bt/page/pop/Page_PopBtRing;->listFile:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/16 v5, 0x290c

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    sget-object v4, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v5, "factoryTest"

    new-instance v6, Lcom/syu/bt/page/pop/Page_PopBtRing$2;

    invoke-direct {v6, p0, v0, v1}, Lcom/syu/bt/page/pop/Page_PopBtRing$2;-><init>(Lcom/syu/bt/page/pop/Page_PopBtRing;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 102
    invoke-static {v4, v5, v6, v7, v8}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x2908
        :pswitch_0
    .end packed-switch
.end method

.method public InitGridItem(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V
    .locals 4
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JGridView;",
            "Lcom/lsec/core/frame/ctrl/JPage;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 72
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v0

    .line 74
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 76
    :pswitch_0
    const/16 v2, 0x290b

    invoke-virtual {p2, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "viewContent":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 79
    invoke-virtual {p2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->setFocus(Z)V

    .line 80
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x2908
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 5

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBtRing;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x290a

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRing;->mTip:Lcom/lsec/core/frame/ctrl/JText;

    .line 37
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopBtRing;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x2908

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JGridView;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRing;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 38
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v1, "factoryTest"

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopBtRing$1;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopBtRing$1;-><init>(Lcom/syu/bt/page/pop/Page_PopBtRing;)V

    .line 56
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    invoke-static {v0, v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 57
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->onDismiss()V

    .line 67
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
