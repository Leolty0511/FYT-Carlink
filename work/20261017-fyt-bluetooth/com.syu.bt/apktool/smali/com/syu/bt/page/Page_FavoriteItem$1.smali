.class Lcom/syu/bt/page/Page_FavoriteItem$1;
.super Ljava/lang/Object;
.source "Page_FavoriteItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_FavoriteItem;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_FavoriteItem;

.field private final synthetic val$actBt:Lcom/syu/bt/Act_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_FavoriteItem;Lcom/syu/bt/Act_Bt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_FavoriteItem$1;->this$0:Lcom/syu/bt/page/Page_FavoriteItem;

    iput-object p2, p0, Lcom/syu/bt/page/Page_FavoriteItem$1;->val$actBt:Lcom/syu/bt/Act_Bt;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/syu/bt/page/Page_FavoriteItem$1;->val$actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, v3, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v4, 0x2720

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 42
    .local v2, "pageFavorite":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v2, :cond_1

    .line 43
    const/16 v3, 0x2840

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 44
    .local v0, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/syu/bt/page/Page_FavoriteItem$1;->this$0:Lcom/syu/bt/page/Page_FavoriteItem;

    invoke-virtual {v4}, Lcom/syu/bt/page/Page_FavoriteItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 46
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x281e

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    .line 50
    .end local v0    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/syu/bt/page/Page_FavoriteItem$1;->this$0:Lcom/syu/bt/page/Page_FavoriteItem;

    invoke-virtual {v3}, Lcom/syu/bt/page/Page_FavoriteItem;->popBtHead()V

    goto :goto_0
.end method
