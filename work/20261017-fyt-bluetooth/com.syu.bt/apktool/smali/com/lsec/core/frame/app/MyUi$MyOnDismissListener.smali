.class public Lcom/lsec/core/frame/app/MyUi$MyOnDismissListener;
.super Ljava/lang/Object;
.source "MyUi.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/app/MyUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnDismissListener"
.end annotation


# instance fields
.field private page:Lcom/lsec/core/frame/ctrl/JPage;

.field final synthetic this$0:Lcom/lsec/core/frame/app/MyUi;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 0
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUi$MyOnDismissListener;->this$0:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/lsec/core/frame/app/MyUi$MyOnDismissListener;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 235
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 239
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUi$MyOnDismissListener;->page:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 240
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v0}, Lcom/lsec/core/frame/page/IPageNotify;->onDismiss()V

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUi$MyOnDismissListener;->this$0:Lcom/lsec/core/frame/app/MyUi;

    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi$MyOnDismissListener;->page:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->removePage(I)V

    .line 244
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUi$MyOnDismissListener;->this$0:Lcom/lsec/core/frame/app/MyUi;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyUi;->mDlgs:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUi$MyOnDismissListener;->page:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 245
    return-void
.end method
