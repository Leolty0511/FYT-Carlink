.class Lcom/syu/bt/App_Bt$13;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$13;->this$0:Lcom/syu/bt/App_Bt;

    .line 1648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 1651
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bPopSwitchPhone:Z

    if-eqz v1, :cond_1

    .line 1652
    iget-object v1, p0, Lcom/syu/bt/App_Bt$13;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 1653
    .local v0, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 1654
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1656
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/syu/bt/App_Bt;->bPopSwitchPhone:Z

    .line 1657
    iget-object v1, p0, Lcom/syu/bt/App_Bt$13;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->removePage(I)V

    .line 1659
    .end local v0    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_1
    return-void
.end method
