.class Lcom/syu/bt/App_Bt$10;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$10;->this$0:Lcom/syu/bt/App_Bt;

    .line 1543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x3e8

    const/16 v4, 0xa

    const/4 v1, 0x1

    .line 1547
    iget-object v0, p0, Lcom/syu/bt/App_Bt$10;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v0, v1, v4}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    .line 1548
    .local v8, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v8, :cond_1

    .line 1549
    iget-object v0, p0, Lcom/syu/bt/App_Bt$10;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v0, v0, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    if-eqz v0, :cond_1

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1553
    :cond_1
    if-eqz v8, :cond_0

    .line 1554
    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 1556
    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/app/MyUiItem;

    .line 1557
    .local v6, "item":Lcom/lsec/core/frame/app/MyUiItem;
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1558
    .local v7, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x28

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1559
    const/16 v0, 0x7d2

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1560
    const/16 v0, 0x10

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1561
    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1562
    invoke-virtual {v6}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v0

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1563
    invoke-virtual {v6}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v0

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1564
    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1565
    iget-object v0, p0, Lcom/syu/bt/App_Bt$10;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v1, v0, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    .line 1567
    :cond_2
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, v8, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1568
    const/4 v0, 0x5

    sput v0, Lcom/syu/bt/App_Bt;->iTimerCnt:I

    .line 1569
    iget-object v0, p0, Lcom/syu/bt/App_Bt$10;->this$0:Lcom/syu/bt/App_Bt;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/syu/bt/App_Bt;->timer:Ljava/util/Timer;

    .line 1570
    iget-object v0, p0, Lcom/syu/bt/App_Bt$10;->this$0:Lcom/syu/bt/App_Bt;

    new-instance v1, Lcom/syu/bt/App_Bt$MyTask;

    iget-object v4, p0, Lcom/syu/bt/App_Bt$10;->this$0:Lcom/syu/bt/App_Bt;

    invoke-direct {v1, v4}, Lcom/syu/bt/App_Bt$MyTask;-><init>(Lcom/syu/bt/App_Bt;)V

    iput-object v1, v0, Lcom/syu/bt/App_Bt;->mytask:Lcom/syu/bt/App_Bt$MyTask;

    .line 1571
    iget-object v0, p0, Lcom/syu/bt/App_Bt$10;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/syu/bt/App_Bt$10;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mytask:Lcom/syu/bt/App_Bt$MyTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method
