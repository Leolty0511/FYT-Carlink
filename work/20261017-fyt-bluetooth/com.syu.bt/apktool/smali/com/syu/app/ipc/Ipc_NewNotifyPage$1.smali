.class Lcom/syu/app/ipc/Ipc_NewNotifyPage$1;
.super Ljava/lang/Object;
.source "Ipc_NewNotifyPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/ipc/Ipc_NewNotifyPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Ipc_NewNotifyPage;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Ipc_NewNotifyPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage$1;->this$0:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 719
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v0, :cond_1

    .line 720
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/App_Bt;->bDownloading:Z

    .line 721
    const-string v0, "hfp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " --- 000 mRunnableDownOver U_BOOK App_Bt.bDownloading = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v0, v0, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_scanDB:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 724
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v0, v0, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_scanDB:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-static {v4, v0, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 726
    :cond_0
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v1, "Thread-DownContact"

    new-instance v2, Lcom/syu/bt/runnable/Runnable_DownOver1st;

    iget-object v3, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage$1;->this$0:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    iget-object v3, v3, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->Page_Contact_p:Lcom/syu/bt/page/Page_Contact;

    invoke-direct {v2, v3}, Lcom/syu/bt/runnable/Runnable_DownOver1st;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v4, v3}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 728
    :cond_1
    return-void
.end method
