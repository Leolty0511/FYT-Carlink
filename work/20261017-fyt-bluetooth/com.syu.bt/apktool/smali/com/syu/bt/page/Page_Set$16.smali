.class Lcom/syu/bt/page/Page_Set$16;
.super Ljava/lang/Object;
.source "Page_Set.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Set;->updateResetEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Set;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Set;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Set$16;->this$0:Lcom/syu/bt/page/Page_Set;

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v4, 0x1

    .line 856
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 857
    .local v0, "cur":I
    iget-object v1, p0, Lcom/syu/bt/page/Page_Set$16;->this$0:Lcom/syu/bt/page/Page_Set;

    iget v1, v1, Lcom/syu/bt/page/Page_Set;->resetDelay:I

    if-eq v1, v0, :cond_0

    .line 858
    iget-object v1, p0, Lcom/syu/bt/page/Page_Set$16;->this$0:Lcom/syu/bt/page/Page_Set;

    iput v0, v1, Lcom/syu/bt/page/Page_Set;->resetDelay:I

    .line 860
    if-ge v0, v4, :cond_1

    .line 861
    sget-object v1, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-virtual {v1}, Lcom/syu/bt/util/UIUtil;->disLoading()V

    .line 863
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v1

    .line 865
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 866
    const-string v3, "bt_reset_fail"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 864
    invoke-virtual {v1, v2}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 867
    iget-object v1, p0, Lcom/syu/bt/page/Page_Set$16;->this$0:Lcom/syu/bt/page/Page_Set;

    invoke-virtual {v1, v4}, Lcom/syu/bt/page/Page_Set;->updateResetEnable(Z)V

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    iget-object v1, p0, Lcom/syu/bt/page/Page_Set$16;->this$0:Lcom/syu/bt/page/Page_Set;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Set;->tvBtReset:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_0

    .line 870
    iget-object v1, p0, Lcom/syu/bt/page/Page_Set$16;->this$0:Lcom/syu/bt/page/Page_Set;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Set;->tvBtReset:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 871
    const-string v4, "bt_reset"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 870
    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
