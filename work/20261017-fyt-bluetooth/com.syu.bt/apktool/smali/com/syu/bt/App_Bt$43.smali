.class Lcom/syu/bt/App_Bt$43;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/App_Bt;->onCreate(Lcom/lsec/core/frame/app/MyApplication;)V
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$43;->this$0:Lcom/syu/bt/App_Bt;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 498
    const-string v0, "sys.blinkbt.ai.noise.code"

    const v2, 0xffff

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    .line 499
    const-string v0, "persist.lsec.aecdelay"

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    .line 500
    sget v0, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    if-eqz v0, :cond_0

    .line 501
    const-wide/16 v2, 0x1388

    invoke-static {v1, p0, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 502
    :cond_0
    sget v0, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    if-nez v0, :cond_1

    .line 504
    const-string v0, "persist.lsec.aecdelay"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v0, "persist.btaec.switch"

    const-string v2, "2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v0

    const/16 v2, 0xfd

    invoke-virtual {v0, v2, v4, v4}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 507
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/syu/bt/App_Bt;->popMsgSet(Z)V

    .line 510
    :cond_1
    const-string v0, "ai11"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  App_Bt 33  getAIType isAIGT_Aiuvoice = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isAIGT_OnOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void

    .line 499
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
