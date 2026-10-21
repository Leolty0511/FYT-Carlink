.class Lcom/syu/bt/page/pop/Page_PopSms$2;
.super Ljava/lang/Object;
.source "Page_PopSms.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/pop/Page_PopSms;->updateSms(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopSms;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopSms;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopSms$2;->this$0:Lcom/syu/bt/page/pop/Page_PopSms;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, 0x63

    .line 83
    .local v0, "cur":I
    const/16 v1, 0x77

    if-gt v0, v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms$2;->this$0:Lcom/syu/bt/page/pop/Page_PopSms;

    iget-object v1, v1, Lcom/syu/bt/page/pop/Page_PopSms;->vTime:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v2, Ljava/lang/StringBuilder;

    div-int/lit8 v3, v0, 0x78

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_0
    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 90
    sget-object v1, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms$2;->this$0:Lcom/syu/bt/page/pop/Page_PopSms;

    iget-object v1, v1, Lcom/syu/bt/page/pop/Page_PopSms;->value:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 92
    sget-object v1, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    sget-object v2, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/syu/bt/App_Bt;->handleSMS:Ljava/lang/String;

    .line 93
    sget-object v1, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    sget-object v2, Lcom/syu/bt/App_Bt;->handleSMS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 94
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    sget-object v2, Lcom/syu/bt/App_Bt;->handleSMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/syu/app/ipc/Bt_IpcObj;->requestSMS(Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_1
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms$2;->this$0:Lcom/syu/bt/page/pop/Page_PopSms;

    iget-object v1, v1, Lcom/syu/bt/page/pop/Page_PopSms;->vTime:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v2, Ljava/lang/StringBuilder;

    div-int/lit8 v3, v0, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/syu/bt/App_Bt;->popPhoneSMS(Z)V

    goto :goto_1
.end method
