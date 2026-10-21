.class Lcom/syu/bt/App_Bt$27;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/App_Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/App_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/App_Bt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/App_Bt$27;->this$0:Lcom/syu/bt/App_Bt;

    .line 2204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 2207
    iget-object v1, p0, Lcom/syu/bt/App_Bt$27;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v1, v1, Lcom/syu/bt/App_Bt;->bPopBtAvMicSet:Z

    if-eqz v1, :cond_1

    .line 2208
    iget-object v1, p0, Lcom/syu/bt/App_Bt$27;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 2209
    .local v0, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 2210
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2212
    :cond_0
    iget-object v1, p0, Lcom/syu/bt/App_Bt$27;->this$0:Lcom/syu/bt/App_Bt;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/syu/bt/App_Bt;->bPopBtAvMicSet:Z

    .line 2213
    iget-object v1, p0, Lcom/syu/bt/App_Bt$27;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 2214
    iget-object v1, p0, Lcom/syu/bt/App_Bt$27;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mytask:Lcom/syu/bt/App_Bt$MyTask;

    invoke-virtual {v1}, Lcom/syu/bt/App_Bt$MyTask;->cancel()Z

    .line 2216
    iget-object v1, p0, Lcom/syu/bt/App_Bt$27;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/app/MyUi;->removePage(I)V

    .line 2218
    .end local v0    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_1
    return-void
.end method
