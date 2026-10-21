.class Lcom/syu/bt/App_Bt$20;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$20;->this$0:Lcom/syu/bt/App_Bt;

    .line 1927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/4 v6, 0x1

    .line 1931
    const-string v3, "yy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 00 ** mRunnable_popPhoneVoice bPopPhoneVoice = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/syu/bt/App_Bt$20;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v5, v5, Lcom/syu/bt/App_Bt;->bPopPhoneVoice:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-object v3, p0, Lcom/syu/bt/App_Bt$20;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v3, v6, v7}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 1933
    .local v2, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v2, :cond_1

    .line 1934
    iget-object v3, p0, Lcom/syu/bt/App_Bt$20;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v3, v3, Lcom/syu/bt/App_Bt;->bPopPhoneVoice:Z

    if-eqz v3, :cond_1

    .line 1954
    :cond_0
    :goto_0
    return-void

    .line 1938
    :cond_1
    if-eqz v2, :cond_0

    .line 1939
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 1940
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 1941
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1942
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x28

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1943
    const/16 v3, 0x7d2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1944
    const/16 v3, 0x10

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1945
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1946
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1947
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1948
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 1949
    iget-object v3, p0, Lcom/syu/bt/App_Bt$20;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v6, v3, Lcom/syu/bt/App_Bt;->bPopPhoneVoice:Z

    .line 1951
    :cond_2
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
