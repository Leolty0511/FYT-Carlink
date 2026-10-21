.class public Lcom/lsec/core/frame/app/MyUi$MyOnChildClickListener;
.super Ljava/lang/Object;
.source "MyUi.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/app/MyUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnChildClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/app/MyUi;

.field private view:Lcom/lsec/core/frame/ctrl/JListViewEx;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/frame/ctrl/JListViewEx;)V
    .locals 0
    .param p2, "view"    # Lcom/lsec/core/frame/ctrl/JListViewEx;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUi$MyOnChildClickListener;->this$0:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/lsec/core/frame/app/MyUi$MyOnChildClickListener;->view:Lcom/lsec/core/frame/ctrl/JListViewEx;

    .line 186
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 190
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUi$MyOnChildClickListener;->view:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JListViewEx;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 191
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUi$MyOnChildClickListener;->view:Lcom/lsec/core/frame/ctrl/JListViewEx;

    invoke-interface {v0, v1}, Lcom/lsec/core/frame/page/IPageNotify;->ListExChildClick(Lcom/lsec/core/frame/ctrl/JListViewEx;)V

    .line 194
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
