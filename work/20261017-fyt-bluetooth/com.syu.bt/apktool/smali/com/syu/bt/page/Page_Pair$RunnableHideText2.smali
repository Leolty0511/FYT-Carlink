.class public Lcom/syu/bt/page/Page_Pair$RunnableHideText2;
.super Ljava/lang/Object;
.source "Page_Pair.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableHideText2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Pair;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_Pair;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText2;->this$0:Lcom/syu/bt/page/Page_Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/syu/bt/page/Page_Pair$RunnableHideText2;)Lcom/syu/bt/page/Page_Pair;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText2;->this$0:Lcom/syu/bt/page/Page_Pair;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText2;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Pair;->isConnectBt:Z

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText2;->this$0:Lcom/syu/bt/page/Page_Pair;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/syu/bt/page/Page_Pair;->isConnectBt:Z

    .line 418
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText2;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText2;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_obd_disconnected"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText2;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v1, Lcom/syu/bt/page/Page_Pair$RunnableHideText2$1;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Pair$RunnableHideText2$1;-><init>(Lcom/syu/bt/page/Page_Pair$RunnableHideText2;)V

    .line 430
    const-wide/16 v2, 0x3e8

    .line 423
    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    :cond_0
    return-void
.end method
