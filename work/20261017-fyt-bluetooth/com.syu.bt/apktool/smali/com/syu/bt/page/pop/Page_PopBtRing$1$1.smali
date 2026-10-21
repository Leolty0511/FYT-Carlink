.class Lcom/syu/bt/page/pop/Page_PopBtRing$1$1;
.super Ljava/lang/Object;
.source "Page_PopBtRing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/pop/Page_PopBtRing$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syu/bt/page/pop/Page_PopBtRing$1;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopBtRing$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$1$1;->this$1:Lcom/syu/bt/page/pop/Page_PopBtRing$1;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$1$1;->this$1:Lcom/syu/bt/page/pop/Page_PopBtRing$1;

    invoke-static {v0}, Lcom/syu/bt/page/pop/Page_PopBtRing$1;->access$0(Lcom/syu/bt/page/pop/Page_PopBtRing$1;)Lcom/syu/bt/page/pop/Page_PopBtRing;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopBtRing;->listFile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$1$1;->this$1:Lcom/syu/bt/page/pop/Page_PopBtRing$1;

    invoke-static {v0}, Lcom/syu/bt/page/pop/Page_PopBtRing$1;->access$0(Lcom/syu/bt/page/pop/Page_PopBtRing$1;)Lcom/syu/bt/page/pop/Page_PopBtRing;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopBtRing;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$1$1;->this$1:Lcom/syu/bt/page/pop/Page_PopBtRing$1;

    invoke-static {v1}, Lcom/syu/bt/page/pop/Page_PopBtRing$1;->access$0(Lcom/syu/bt/page/pop/Page_PopBtRing$1;)Lcom/syu/bt/page/pop/Page_PopBtRing;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/page/pop/Page_PopBtRing;->listFile:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$1$1;->this$1:Lcom/syu/bt/page/pop/Page_PopBtRing$1;

    invoke-static {v0}, Lcom/syu/bt/page/pop/Page_PopBtRing$1;->access$0(Lcom/syu/bt/page/pop/Page_PopBtRing$1;)Lcom/syu/bt/page/pop/Page_PopBtRing;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopBtRing;->mTip:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$1$1;->this$1:Lcom/syu/bt/page/pop/Page_PopBtRing$1;

    invoke-static {v0}, Lcom/syu/bt/page/pop/Page_PopBtRing$1;->access$0(Lcom/syu/bt/page/pop/Page_PopBtRing$1;)Lcom/syu/bt/page/pop/Page_PopBtRing;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopBtRing;->mTip:Lcom/lsec/core/frame/ctrl/JText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_0
.end method
