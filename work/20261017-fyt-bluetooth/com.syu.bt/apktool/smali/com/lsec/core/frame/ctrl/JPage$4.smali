.class Lcom/lsec/core/frame/ctrl/JPage$4;
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
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JPage$4;->this$0:Lcom/lsec/core/frame/ctrl/JPage;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    move-object v0, p1

    check-cast v0, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    .line 144
    .local v0, "switchButton":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setChecked(Z)V

    .line 145
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage$4;->this$0:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v1, v1, Lcom/lsec/core/frame/ctrl/JPage;->mNotify:Lcom/lsec/core/frame/page/IPageNotify;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JPage$4;->this$0:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v1, v1, Lcom/lsec/core/frame/ctrl/JPage;->mNotify:Lcom/lsec/core/frame/page/IPageNotify;

    invoke-interface {v1, p1}, Lcom/lsec/core/frame/page/IPageNotify;->ResponseClick(Landroid/view/View;)V

    .line 147
    :cond_0
    return-void

    .line 144
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
