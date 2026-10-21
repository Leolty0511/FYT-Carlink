.class Lcom/syu/bt/util/BtLinkTestUtil$1;
.super Ljava/lang/Object;
.source "BtLinkTestUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/util/BtLinkTestUtil;->testLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/util/BtLinkTestUtil;


# direct methods
.method constructor <init>(Lcom/syu/bt/util/BtLinkTestUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/util/BtLinkTestUtil$1;->this$0:Lcom/syu/bt/util/BtLinkTestUtil;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    const-string v1, "\u84dd\u7259\u5df2\u8fde\u63a5\u6216\u5728\u901a\u8bdd\u4e2d"

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/util/BtLinkTestUtil$1;->this$0:Lcom/syu/bt/util/BtLinkTestUtil;

    invoke-static {v0}, Lcom/syu/bt/util/BtLinkTestUtil;->access$0(Lcom/syu/bt/util/BtLinkTestUtil;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->connectDevice(Ljava/lang/String;)V

    .line 76
    return-void
.end method
