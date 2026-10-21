.class Lcom/syu/bt/App_Bt$21;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$21;->this$0:Lcom/syu/bt/App_Bt;

    .line 1957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    .line 1960
    const-string v1, "ldd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 ** mRunnable_hidePhoneVoice bPopLDD = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/syu/bt/App_Bt$21;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v3, v3, Lcom/syu/bt/App_Bt;->bPopLDD:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget-object v1, p0, Lcom/syu/bt/App_Bt$21;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v1, v1, Lcom/syu/bt/App_Bt;->bPopPhoneVoice:Z

    if-eqz v1, :cond_1

    .line 1962
    iget-object v1, p0, Lcom/syu/bt/App_Bt$21;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v4}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 1963
    .local v0, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 1964
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1965
    :cond_0
    const-string v1, "ldd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 11 ** mRunnable_hidePhoneVoice bPopPhoneVoice = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/syu/bt/App_Bt$21;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v3, v3, Lcom/syu/bt/App_Bt;->bPopPhoneVoice:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iget-object v1, p0, Lcom/syu/bt/App_Bt$21;->this$0:Lcom/syu/bt/App_Bt;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/syu/bt/App_Bt;->bPopPhoneVoice:Z

    .line 1967
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1970
    .end local v0    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_1
    return-void
.end method
