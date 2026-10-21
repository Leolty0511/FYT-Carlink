.class Lcom/syu/app/ipc/Ipc_NewNotifyPage$2;
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
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage$2;->this$0:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 733
    const-string v0, "down"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 111 mRunnable_showLoading App_Bt.bDownloading = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage$2;->this$0:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->Page_Contact_p:Lcom/syu/bt/page/Page_Contact;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/syu/app/ipc/Ipc_NewNotifyPage$2;->this$0:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->Page_Contact_p:Lcom/syu/bt/page/Page_Contact;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_download"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    .line 736
    :cond_0
    return-void
.end method
