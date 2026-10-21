.class Lcom/syu/bt/page/pop/Page_PopAIQR$2;
.super Ljava/lang/Object;
.source "Page_PopAIQR.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/pop/Page_PopAIQR;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopAIQR;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopAIQR;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopAIQR$2;->this$0:Lcom/syu/bt/page/pop/Page_PopAIQR;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/syu/bt/page/pop/Page_PopAIQR$2;)Lcom/syu/bt/page/pop/Page_PopAIQR;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopAIQR$2;->this$0:Lcom/syu/bt/page/pop/Page_PopAIQR;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0xbb8

    const/4 v7, 0x1

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "y":F
    const/4 v1, 0x0

    .line 79
    .local v1, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    :pswitch_0
    return v7

    .line 87
    :pswitch_1
    const-string v3, "AIQR1"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  JAVA 00 Page_PopAIQR AIJH BTN  isRunnAIUvEcnr = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/syu/bt/page/pop/Page_PopAIQR;->isRunnAIUvEcnr:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v3, Lcom/syu/bt/page/Page_Set;->mRunnAIQR:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 89
    sget-object v3, Lcom/syu/bt/page/pop/Page_PopAIQR;->RunnAIUvEcnr:Ljava/lang/Runnable;

    invoke-static {v7, v3, v8, v9}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 91
    sget-boolean v3, Lcom/syu/bt/page/pop/Page_PopAIQR;->isRunnAIUvEcnr:Z

    if-eqz v3, :cond_0

    .line 92
    const/4 v3, 0x0

    sput-boolean v3, Lcom/syu/bt/page/pop/Page_PopAIQR;->isRunnAIUvEcnr:Z

    .line 94
    const-string v3, "AIQR1"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  JAVA 22 Page_PopAIQR AIJH BTN isAiuvoice = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-boolean v3, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-eqz v3, :cond_1

    .line 96
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v3

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_ai5"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 114
    :goto_1
    new-instance v3, Lcom/syu/bt/page/pop/Page_PopAIQR$2$1;

    invoke-direct {v3, p0}, Lcom/syu/bt/page/pop/Page_PopAIQR$2$1;-><init>(Lcom/syu/bt/page/pop/Page_PopAIQR$2;)V

    invoke-static {v7, v3, v8, v9}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->AIUvEcnr()I

    move-result v0

    .line 99
    .local v0, "ok1":I
    const-string v3, "AIQR1"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  JAVA 33 Page_PopAIQR ActivateCreate ok1 ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-nez v0, :cond_3

    .line 101
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopAIQR$2;->this$0:Lcom/syu/bt/page/pop/Page_PopAIQR;

    iget-object v3, v3, Lcom/syu/bt/page/pop/Page_PopAIQR;->txt_aiqc:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopAIQR$2;->this$0:Lcom/syu/bt/page/pop/Page_PopAIQR;

    iget-object v3, v3, Lcom/syu/bt/page/pop/Page_PopAIQR;->txt_aiqc:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_ai5"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_2
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateAI()V

    .line 104
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateAIKG()V

    goto :goto_1

    .line 107
    :cond_3
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopAIQR$2;->this$0:Lcom/syu/bt/page/pop/Page_PopAIQR;

    iget-object v3, v3, Lcom/syu/bt/page/pop/Page_PopAIQR;->txt_aiqc:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_4

    .line 108
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopAIQR$2;->this$0:Lcom/syu/bt/page/pop/Page_PopAIQR;

    iget-object v3, v3, Lcom/syu/bt/page/pop/Page_PopAIQR;->txt_aiqc:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_ai7"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_4
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateAI()V

    .line 110
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateAIKG()V

    goto :goto_1

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
