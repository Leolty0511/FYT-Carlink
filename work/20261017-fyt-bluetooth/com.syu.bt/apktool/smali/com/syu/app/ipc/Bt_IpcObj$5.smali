.class Lcom/syu/app/ipc/Bt_IpcObj$5;
.super Ljava/lang/Object;
.source "Bt_IpcObj.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/app/ipc/Bt_IpcObj;->FuncPairLink(Lcom/syu/bt/page/Page_Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Bt_IpcObj;

.field private final synthetic val$page_Pair:Lcom/syu/bt/page/Page_Pair;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Bt_IpcObj;Lcom/syu/bt/page/Page_Pair;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Bt_IpcObj$5;->this$0:Lcom/syu/app/ipc/Bt_IpcObj;

    iput-object p2, p0, Lcom/syu/app/ipc/Bt_IpcObj$5;->val$page_Pair:Lcom/syu/bt/page/Page_Pair;

    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 993
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->connectDevice(Ljava/lang/String;)V

    .line 995
    const-string v0, "con3"

    const-string v1, " 44 FuncPairLink "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj$5;->val$page_Pair:Lcom/syu/bt/page/Page_Pair;

    const/4 v1, 0x1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_linking"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/page/Page_Pair;->showConnectTip(ZLjava/lang/String;)V

    .line 997
    return-void
.end method
