.class Lcom/syu/bt/page/pop/Page_PopHySetAI$2;
.super Ljava/lang/Object;
.source "Page_PopHySetAI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/pop/Page_PopHySetAI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopHySetAI;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$2;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 306
    const-string v0, "persist.btaec.delay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$2;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget v2, v2, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "persist.btaec.delay_p"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$2;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget v2, v2, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet_p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v0

    const/16 v1, 0xfd

    invoke-virtual {v0, v1, v3, v3}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#*"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$2;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget v1, v1, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->dial(Ljava/lang/String;)V

    .line 310
    return-void
.end method
