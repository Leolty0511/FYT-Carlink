.class Lcom/lsec/core/frame/ctrl/JGridView$1;
.super Ljava/lang/Object;
.source "JGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lsec/core/frame/ctrl/JGridView;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/ctrl/JGridView;


# direct methods
.method constructor <init>(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JGridView$1;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 81
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v2, 0x1

    .line 59
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JGridView$1;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-static {v1}, Lcom/lsec/core/frame/ctrl/JGridView;->access$3(Lcom/lsec/core/frame/ctrl/JGridView;)I

    move-result v1

    if-eq v1, v2, :cond_0

    if-ne p2, v2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JGridView$1;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JGridView$1;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-static {v1, p2}, Lcom/lsec/core/frame/ctrl/JGridView;->access$4(Lcom/lsec/core/frame/ctrl/JGridView;I)V

    .line 63
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JGridView$1;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-static {v1}, Lcom/lsec/core/frame/ctrl/JGridView;->access$3(Lcom/lsec/core/frame/ctrl/JGridView;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 65
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 66
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JGridView$1;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 67
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JGridView$1;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v1, v1, Lcom/lsec/core/frame/ctrl/JGridView;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-interface {v0, v1}, Lcom/lsec/core/frame/page/IPageNotify;->LoadGridItemWhenPullDown(Lcom/lsec/core/frame/ctrl/JGridView;)V

    goto :goto_0

    .line 69
    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_2
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JGridView$1;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 71
    .restart local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_1

    .line 72
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JGridView$1;->this$0:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v1, v1, Lcom/lsec/core/frame/ctrl/JGridView;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-interface {v0, v1}, Lcom/lsec/core/frame/page/IPageNotify;->LoadGridItemWhenPullUp(Lcom/lsec/core/frame/ctrl/JGridView;)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
