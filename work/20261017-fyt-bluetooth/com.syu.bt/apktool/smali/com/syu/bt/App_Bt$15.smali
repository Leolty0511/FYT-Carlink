.class Lcom/syu/bt/App_Bt$15;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$15;->this$0:Lcom/syu/bt/App_Bt;

    .line 1747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 1750
    sput-boolean v4, Lcom/syu/bt/App_Bt;->pinStatus:Z

    .line 1751
    const-string v1, "pin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  JAVA 11 App_Bt  mRunnable_hideMSG App_Bt.pinStatus= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/syu/bt/App_Bt;->pinStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bPopMsgShow:Z

    if-eqz v1, :cond_1

    .line 1753
    iget-object v1, p0, Lcom/syu/bt/App_Bt$15;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v5}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 1754
    .local v0, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 1755
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1757
    :cond_0
    sput-boolean v4, Lcom/syu/bt/App_Bt;->bPopMsgShow:Z

    .line 1758
    iget-object v1, p0, Lcom/syu/bt/App_Bt$15;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v5}, Lcom/lsec/core/frame/app/MyUi;->removePage(I)V

    .line 1760
    .end local v0    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_1
    return-void
.end method
