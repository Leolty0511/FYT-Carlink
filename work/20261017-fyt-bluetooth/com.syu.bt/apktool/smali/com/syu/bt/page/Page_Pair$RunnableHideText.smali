.class public Lcom/syu/bt/page/Page_Pair$RunnableHideText;
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
    name = "RunnableHideText"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Pair;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_Pair;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText;->this$0:Lcom/syu/bt/page/Page_Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 397
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Pair;->isConnectBt:Z

    if-eqz v0, :cond_1

    .line 401
    const-string v0, "hfp3"

    const-string v1, " 11 bt_linking "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText;->this$0:Lcom/syu/bt/page/Page_Pair;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_linking"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/syu/bt/page/Page_Pair;->showConnectTip(ZLjava/lang/String;)V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Pair;->isStartDiscovey:Z

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText;->this$0:Lcom/syu/bt/page/Page_Pair;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_discovering"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/syu/bt/page/Page_Pair;->showDiscover(ZLjava/lang/String;)V

    .line 407
    :cond_2
    return-void
.end method
