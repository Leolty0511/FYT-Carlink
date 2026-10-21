.class Lcom/syu/bt/App_Bt$22;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$22;->this$0:Lcom/syu/bt/App_Bt;

    .line 1975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x1

    .line 1979
    const-string v3, "ldd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 00 ** mRunnable_popLDD bPopLDD = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/syu/bt/App_Bt$22;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v5, v5, Lcom/syu/bt/App_Bt;->bPopLDD:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    iget-object v3, p0, Lcom/syu/bt/App_Bt$22;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v3, v6, v7}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 1981
    .local v2, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v2, :cond_1

    .line 1982
    iget-object v3, p0, Lcom/syu/bt/App_Bt$22;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v3, v3, Lcom/syu/bt/App_Bt;->bPopLDD:Z

    if-eqz v3, :cond_1

    .line 2007
    :cond_0
    :goto_0
    return-void

    .line 1986
    :cond_1
    const-string v3, "ldd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 11 ** mRunnable_popLDD bPopLDD = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/syu/bt/App_Bt$22;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v5, v5, Lcom/syu/bt/App_Bt;->bPopLDD:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    if-eqz v2, :cond_0

    .line 1989
    const-string v3, "ldd"

    const-string v4, " 22 ** mRunnable_popLDD page != null  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 1991
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 1992
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1993
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x28

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1994
    const/16 v3, 0x7ea

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1995
    const/16 v3, 0x31

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1996
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1997
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1998
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1999
    const-string v3, "ldd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 00 ** mRunnable_popLDD bPopLDD width = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 2001
    iget-object v3, p0, Lcom/syu/bt/App_Bt$22;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v6, v3, Lcom/syu/bt/App_Bt;->bPopLDD:Z

    .line 2003
    :cond_2
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2005
    iget-object v3, p0, Lcom/syu/bt/App_Bt$22;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->addNotify_PopBt()V

    goto/16 :goto_0
.end method
