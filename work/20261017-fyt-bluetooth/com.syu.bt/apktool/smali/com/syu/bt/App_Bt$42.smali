.class Lcom/syu/bt/App_Bt$42;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$42;->this$0:Lcom/syu/bt/App_Bt;

    .line 3611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 3616
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->chechTopActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3617
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v0, v0, v2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3618
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v0, v0, v2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3619
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v0, v0, v2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3620
    :cond_0
    const-string v0, "showPopBtWhen360Top"

    invoke-static {v0}, Lcom/syu/bt/util/BTUtil;->writeLogToFile(Ljava/lang/String;)V

    .line 3622
    const-string v0, "gdy666"

    const-string v1, " 005 App_bt showPopBtWhen360Top "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    .line 3627
    :cond_1
    return-void
.end method
