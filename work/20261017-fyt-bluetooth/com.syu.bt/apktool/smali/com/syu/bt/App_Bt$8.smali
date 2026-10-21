.class Lcom/syu/bt/App_Bt$8;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$8;->this$0:Lcom/syu/bt/App_Bt;

    .line 1416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1420
    const-string v5, "gdy10"

    const-string v6, " 01 move_PopBt  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v5, p0, Lcom/syu/bt/App_Bt$8;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v5, v9, v7}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 1422
    .local v3, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v3, :cond_0

    .line 1425
    iget-object v5, p0, Lcom/syu/bt/App_Bt$8;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->removeNotify_PopBt()V

    .line 1426
    sget-object v5, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1427
    iget-object v5, p0, Lcom/syu/bt/App_Bt$8;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/app/MyUi;->removePage(I)V

    .line 1429
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/app/MyUiItem;

    .line 1430
    .local v1, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v4

    .line 1431
    .local v4, "width":I
    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v0

    .line 1432
    .local v0, "height":I
    const-string v5, "gdy10"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 02 move_PopBt width = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1435
    .local v2, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x28

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1436
    const/16 v5, 0x7e4

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1438
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1439
    const/16 v5, 0x190

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1440
    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1442
    const-string v5, "gdy10"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 03 mRunnable_PopBt  width = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "+  iPhoneState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/syu/bt/App_Bt;->iPhoneState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1445
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1447
    const-string v5, "gdy10"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 04 move_PopBt width = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :try_start_0
    sget-object v5, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5, v3, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1450
    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    :goto_0
    const-string v5, "gdy10"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 05 move_PopBt width = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    .end local v0    # "height":I
    .end local v1    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v2    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "width":I
    :cond_0
    return-void

    .line 1451
    .restart local v0    # "height":I
    .restart local v1    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v2    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "width":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method
