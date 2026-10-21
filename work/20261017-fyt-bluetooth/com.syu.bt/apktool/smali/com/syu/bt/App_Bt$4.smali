.class Lcom/syu/bt/App_Bt$4;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$4;->this$0:Lcom/syu/bt/App_Bt;

    .line 1218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1222
    iget-object v1, p0, Lcom/syu/bt/App_Bt$4;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v1, v1, Lcom/syu/bt/App_Bt;->bPopBtShow_Num:Z

    if-eqz v1, :cond_1

    .line 1223
    iget-object v1, p0, Lcom/syu/bt/App_Bt$4;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 1224
    .local v0, "pageNum":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 1225
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1227
    :cond_0
    iget-object v1, p0, Lcom/syu/bt/App_Bt$4;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v2, v1, Lcom/syu/bt/App_Bt;->bPopBtShow_Num:Z

    .line 1228
    iget-object v1, p0, Lcom/syu/bt/App_Bt$4;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v2, v1, Lcom/syu/bt/App_Bt;->bPopBtShowBak_Num:Z

    .line 1230
    iget-object v1, p0, Lcom/syu/bt/App_Bt$4;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/app/MyUi;->removePage(I)V

    .line 1232
    .end local v0    # "pageNum":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_1
    return-void
.end method
