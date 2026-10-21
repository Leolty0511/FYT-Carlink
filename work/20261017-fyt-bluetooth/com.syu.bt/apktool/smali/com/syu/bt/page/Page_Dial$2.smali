.class Lcom/syu/bt/page/Page_Dial$2;
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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Dial$2;->this$0:Lcom/syu/bt/page/Page_Dial;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x271c

    .line 289
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$2;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 291
    sget-object v0, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v1, "yl_dn1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$2;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$2;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->txtLinkName:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$2;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->txtLinkName:Lcom/lsec/core/frame/ctrl/JText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$2;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->txtLinkName:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$2;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->textOperator:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/syu/bt/App_Bt;->mOperator:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$2;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->textOperator:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v1, Lcom/syu/bt/App_Bt;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_3
    const-string v0, "gdy16"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 00 Page_Dial mRunnJumpPair  Bt.sPhoneName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " App_Bt.mOperator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/syu/bt/App_Bt;->mOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  textOperator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$2;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v2, v2, Lcom/syu/bt/page/Page_Dial;->textOperator:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$2;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName()V

    goto :goto_0
.end method
