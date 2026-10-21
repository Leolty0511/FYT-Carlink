.class Lcom/syu/bt/page/Page_Dial$3;
.super Ljava/lang/Object;
.source "Page_Dial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Dial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Dial;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Dial;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Dial$3;->this$0:Lcom/syu/bt/page/Page_Dial;

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 645
    const-string v1, "gdy8"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 11 mRunnShowTalking isShow_p = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial$3;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-boolean v5, v5, Lcom/syu/bt/page/Page_Dial;->isShow_p:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$3;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewTalking:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$3;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v4, v1, Lcom/syu/bt/page/Page_Dial;->mViewTalking:Landroid/view/View;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$3;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-boolean v1, v1, Lcom/syu/bt/page/Page_Dial;->isShow_p:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$3;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const/16 v4, 0x276b

    invoke-virtual {v1, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 649
    .local v0, "headIco":Landroid/view/View;
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$3;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewContact:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$3;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->mViewContact:Landroid/view/View;

    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial$3;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-boolean v4, v4, Lcom/syu/bt/page/Page_Dial;->isShow_p:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 651
    :cond_1
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$3;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Dial;->updateShowHand()V

    .line 652
    return-void

    .end local v0    # "headIco":Landroid/view/View;
    :cond_2
    move v1, v3

    .line 647
    goto :goto_0

    .restart local v0    # "headIco":Landroid/view/View;
    :cond_3
    move v3, v2

    .line 650
    goto :goto_1
.end method
