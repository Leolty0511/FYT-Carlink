.class Lcom/lsec/core/frame/ctrl/JPage$3;
.super Ljava/lang/Object;
.source "JPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lsec/core/frame/ctrl/JPage;->addChildView(Landroid/view/View;Lcom/lsec/core/frame/app/MyUiItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/ctrl/JPage;


# direct methods
.method constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JPage$3;->this$0:Lcom/lsec/core/frame/ctrl/JPage;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JPage$3;->this$0:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mNotify:Lcom/lsec/core/frame/page/IPageNotify;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JPage$3;->this$0:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mNotify:Lcom/lsec/core/frame/page/IPageNotify;

    invoke-interface {v0, p1}, Lcom/lsec/core/frame/page/IPageNotify;->ResponseClick(Landroid/view/View;)V

    .line 133
    :cond_0
    return-void
.end method
