.class public Lcom/lsec/core/frame/app/MyUi$MyOnItemClickListener;
.super Ljava/lang/Object;
.source "MyUi.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/app/MyUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/app/MyUi;

.field private view:Lcom/lsec/core/frame/ctrl/JGridView;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 0
    .param p2, "view"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUi$MyOnItemClickListener;->this$0:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p2, p0, Lcom/lsec/core/frame/app/MyUi$MyOnItemClickListener;->view:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 203
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUi$MyOnItemClickListener;->view:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 208
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUi$MyOnItemClickListener;->view:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-interface {v0, v1}, Lcom/lsec/core/frame/page/IPageNotify;->GridClick(Lcom/lsec/core/frame/ctrl/JGridView;)V

    .line 210
    :cond_0
    return-void
.end method
