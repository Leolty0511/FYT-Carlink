.class Lcom/syu/bt/App_Bt$3;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$3;->this$0:Lcom/syu/bt/App_Bt;

    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xff

    const/4 v3, 0x1

    .line 1206
    const-string v0, "gdyy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** mRunnReSetAIOn isAiuvoice = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  - isAIGT_Aiuvoice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const-string v0, "persist.lsec.aecdelay"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-nez v0, :cond_0

    sget v0, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    if-nez v0, :cond_2

    .line 1208
    :cond_0
    const-string v0, "persist.lsec.aecdelay"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v0, "persist.btaec.switch"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bAI_GT:Z

    if-eqz v0, :cond_1

    .line 1211
    const-string v0, "persist.blinkbt.qcc3031.ecnr.disable"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    :cond_1
    sput-boolean v3, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    .line 1213
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v0

    const/16 v1, 0xfd

    invoke-virtual {v0, v1, v5, v5}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 1214
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/syu/bt/App_Bt;->popMsgSet(Z)V

    .line 1216
    :cond_2
    return-void
.end method
