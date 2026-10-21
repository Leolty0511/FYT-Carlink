.class Lcom/syu/bt/App_Bt$17;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$17;->this$0:Lcom/syu/bt/App_Bt;

    .line 1811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 1815
    const-string v1, "gdy14"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 mRunnable_hide3rdPhone bPop3rdPhone = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    if-eqz v1, :cond_1

    .line 1817
    iget-object v1, p0, Lcom/syu/bt/App_Bt$17;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v4}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 1818
    .local v0, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 1819
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1821
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    .line 1822
    iget-object v1, p0, Lcom/syu/bt/App_Bt$17;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v4}, Lcom/lsec/core/frame/app/MyUi;->removePage(I)V

    .line 1824
    .end local v0    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_1
    return-void
.end method
