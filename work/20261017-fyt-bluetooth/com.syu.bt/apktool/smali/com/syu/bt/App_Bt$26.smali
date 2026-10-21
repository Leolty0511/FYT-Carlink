.class Lcom/syu/bt/App_Bt$26;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$26;->this$0:Lcom/syu/bt/App_Bt;

    .line 2171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x3e8

    const/16 v4, 0x9

    const/4 v1, 0x1

    .line 2175
    iget-object v0, p0, Lcom/syu/bt/App_Bt$26;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v0, v1, v4}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    .line 2176
    .local v8, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v8, :cond_1

    .line 2177
    iget-object v0, p0, Lcom/syu/bt/App_Bt$26;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v0, v0, Lcom/syu/bt/App_Bt;->bPopBtAvMicSet:Z

    if-eqz v0, :cond_1

    .line 2201
    :cond_0
    :goto_0
    return-void

    .line 2181
    :cond_1
    if-eqz v8, :cond_0

    .line 2182
    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 2184
    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/app/MyUiItem;

    .line 2185
    .local v6, "item":Lcom/lsec/core/frame/app/MyUiItem;
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2186
    .local v7, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x28

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2187
    const/16 v0, 0x7d2

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2188
    const/16 v0, 0x10

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2189
    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2190
    invoke-virtual {v6}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v0

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2191
    invoke-virtual {v6}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v0

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2192
    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2193
    iget-object v0, p0, Lcom/syu/bt/App_Bt$26;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v1, v0, Lcom/syu/bt/App_Bt;->bPopBtAvMicSet:Z

    .line 2195
    :cond_2
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, v8, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2196
    const/4 v0, 0x5

    sput v0, Lcom/syu/bt/App_Bt;->iTimerCnt:I

    .line 2197
    iget-object v0, p0, Lcom/syu/bt/App_Bt$26;->this$0:Lcom/syu/bt/App_Bt;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/syu/bt/App_Bt;->timer:Ljava/util/Timer;

    .line 2198
    iget-object v0, p0, Lcom/syu/bt/App_Bt$26;->this$0:Lcom/syu/bt/App_Bt;

    new-instance v1, Lcom/syu/bt/App_Bt$MyTask;

    iget-object v4, p0, Lcom/syu/bt/App_Bt$26;->this$0:Lcom/syu/bt/App_Bt;

    invoke-direct {v1, v4}, Lcom/syu/bt/App_Bt$MyTask;-><init>(Lcom/syu/bt/App_Bt;)V

    iput-object v1, v0, Lcom/syu/bt/App_Bt;->mytask:Lcom/syu/bt/App_Bt$MyTask;

    .line 2199
    iget-object v0, p0, Lcom/syu/bt/App_Bt$26;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/syu/bt/App_Bt$26;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mytask:Lcom/syu/bt/App_Bt$MyTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method
