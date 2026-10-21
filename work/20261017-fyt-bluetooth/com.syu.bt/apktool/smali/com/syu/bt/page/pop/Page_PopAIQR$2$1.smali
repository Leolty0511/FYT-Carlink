.class Lcom/syu/bt/page/pop/Page_PopAIQR$2$1;
.super Ljava/lang/Object;
.source "Page_PopAIQR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/pop/Page_PopAIQR$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syu/bt/page/pop/Page_PopAIQR$2;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopAIQR$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopAIQR$2$1;->this$1:Lcom/syu/bt/page/pop/Page_PopAIQR$2;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 117
    const-string v0, "AIQR1"

    const-string v1, "  JAVA 44 Page_PopAIQR getDialog().dismiss "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopAIQR$2$1;->this$1:Lcom/syu/bt/page/pop/Page_PopAIQR$2;

    invoke-static {v0}, Lcom/syu/bt/page/pop/Page_PopAIQR$2;->access$0(Lcom/syu/bt/page/pop/Page_PopAIQR$2;)Lcom/syu/bt/page/pop/Page_PopAIQR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/page/pop/Page_PopAIQR;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 119
    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_ai6"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method
