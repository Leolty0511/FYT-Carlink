.class Lcom/syu/bt/Act_Bt$1;
.super Ljava/lang/Object;
.source "Act_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/Act_Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/Act_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/Act_Bt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/Act_Bt$1;->this$0:Lcom/syu/bt/Act_Bt;

    .line 1838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1841
    iget-object v1, p0, Lcom/syu/bt/Act_Bt$1;->this$0:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-virtual {v1}, Lcom/syu/bt/util/UIUtil;->getShowMsg()Ljava/lang/String;

    move-result-object v0

    .line 1842
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1843
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_download"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1844
    :cond_0
    const-string v1, "pop"

    const-string v2, "mRunnableDisLoading"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iget-object v1, p0, Lcom/syu/bt/Act_Bt$1;->this$0:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-virtual {v1}, Lcom/syu/bt/util/UIUtil;->disLoading()V

    .line 1850
    :cond_1
    :goto_0
    return-void

    .line 1848
    :cond_2
    iget-object v1, p0, Lcom/syu/bt/Act_Bt$1;->this$0:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-virtual {v1}, Lcom/syu/bt/util/UIUtil;->disLoading()V

    goto :goto_0
.end method
