.class Lcom/syu/bt/page/Page_ContactItem$1;
.super Ljava/lang/Object;
.source "Page_ContactItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_ContactItem;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_ContactItem;

.field private final synthetic val$actBt:Lcom/syu/bt/Act_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_ContactItem;Lcom/syu/bt/Act_Bt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_ContactItem$1;->this$0:Lcom/syu/bt/page/Page_ContactItem;

    iput-object p2, p0, Lcom/syu/bt/page/Page_ContactItem$1;->val$actBt:Lcom/syu/bt/Act_Bt;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 39
    const-string v3, "btttt"

    const-string v4, "0000 Page_contactItem vHead.setOnClickListener "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/syu/bt/page/Page_ContactItem$1;->val$actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, v3, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v4, 0x2715

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 46
    .local v2, "pageContact":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v2, :cond_1

    .line 47
    const/16 v3, 0x2811

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 48
    .local v0, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/syu/bt/page/Page_ContactItem$1;->this$0:Lcom/syu/bt/page/Page_ContactItem;

    invoke-virtual {v4}, Lcom/syu/bt/page/Page_ContactItem;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 50
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x281e

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/syu/bt/App_Bt;->mIcoNumber:Ljava/lang/String;

    .line 54
    .end local v0    # "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/syu/bt/page/Page_ContactItem$1;->this$0:Lcom/syu/bt/page/Page_ContactItem;

    invoke-virtual {v3}, Lcom/syu/bt/page/Page_ContactItem;->popBtHead()V

    goto :goto_0
.end method
