.class Lcom/syu/bt/App_Bt$45;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/App_Bt;->AIUvEcnr()I
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$45;->this$0:Lcom/syu/bt/App_Bt;

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 609
    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-eqz v0, :cond_1

    .line 610
    const-string v0, "persist.lsec.aecdelay"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v0, "persist.btaec.switch"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bAI_GT:Z

    if-eqz v0, :cond_0

    .line 613
    const-string v0, "persist.blinkbt.qcc3031.ecnr.disable"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_0
    sput-boolean v2, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    .line 615
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v0

    const/16 v1, 0xfd

    invoke-virtual {v0, v1, v3, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 617
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/syu/bt/App_Bt;->popMsgSet(Z)V

    .line 627
    :cond_1
    return-void
.end method
