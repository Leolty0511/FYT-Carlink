.class Lcom/syu/bt/App_Bt$24;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$24;->this$0:Lcom/syu/bt/App_Bt;

    .line 2079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x1

    .line 2083
    iget-object v3, p0, Lcom/syu/bt/App_Bt$24;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v3, v5, v6}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 2085
    .local v2, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v2, :cond_1

    .line 2086
    iget-object v3, p0, Lcom/syu/bt/App_Bt$24;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v3, v3, Lcom/syu/bt/App_Bt;->bPopPhoneSms:Z

    if-eqz v3, :cond_1

    .line 2121
    :cond_0
    :goto_0
    return-void

    .line 2090
    :cond_1
    const/4 v3, 0x0

    new-instance v4, Lcom/syu/bt/App_Bt$24$1;

    invoke-direct {v4, p0}, Lcom/syu/bt/App_Bt$24$1;-><init>(Lcom/syu/bt/App_Bt$24;)V

    invoke-static {v3, v4}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 2098
    if-eqz v2, :cond_0

    .line 2099
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 2101
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 2102
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2103
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x28

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2105
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_NEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_BT_1920"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_OEM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2106
    :cond_2
    const/16 v3, 0x7e4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2111
    :goto_1
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2112
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2113
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2114
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2115
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 2116
    iget-object v3, p0, Lcom/syu/bt/App_Bt$24;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v5, v3, Lcom/syu/bt/App_Bt;->bPopPhoneSms:Z

    .line 2118
    :cond_3
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2119
    iget-object v3, p0, Lcom/syu/bt/App_Bt$24;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->addNotify_PopBt()V

    goto :goto_0

    .line 2108
    :cond_4
    const/16 v3, 0x7d2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1
.end method
