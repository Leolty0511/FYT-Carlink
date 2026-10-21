.class Lcom/lsec/core/frame/ctrl/JListViewEx$1;
.super Ljava/lang/Object;
.source "JListViewEx.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lsec/core/frame/ctrl/JListViewEx;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;


# direct methods
.method constructor <init>(Lcom/lsec/core/frame/ctrl/JListViewEx;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx$1;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    .line 51
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
    .line 63
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v1, 0x1

    .line 54
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx$1;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-static {v0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->access$3(Lcom/lsec/core/frame/ctrl/JListViewEx;)I

    move-result v0

    if-eq v0, v1, :cond_0

    if-ne p2, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx$1;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->notifyDataSetChanged()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx$1;->this$0:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-static {v0, p2}, Lcom/lsec/core/frame/ctrl/JListViewEx;->access$4(Lcom/lsec/core/frame/ctrl/JListViewEx;I)V

    .line 58
    return-void
.end method
