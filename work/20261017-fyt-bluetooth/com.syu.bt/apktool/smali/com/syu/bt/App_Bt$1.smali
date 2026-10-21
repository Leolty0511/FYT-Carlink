.class Lcom/syu/bt/App_Bt$1;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$1;->this$0:Lcom/syu/bt/App_Bt;

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 726
    const-string v0, "net"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  000  mRunnAIUvEcnr AI\u964d\u566a\u6fc0\u6d3b   isAiuvoice = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isAIType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/syu/bt/App_Bt;->isAIType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bLinkNet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkNet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-nez v0, :cond_0

    sget v0, Lcom/syu/bt/App_Bt;->isAIType:I

    if-ne v0, v4, :cond_0

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkNet:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/syu/bt/App_Bt;->iRunnStep:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 728
    sget v0, Lcom/syu/bt/App_Bt;->iRunnStep:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/syu/bt/App_Bt;->iRunnStep:I

    .line 729
    iget-object v0, p0, Lcom/syu/bt/App_Bt$1;->this$0:Lcom/syu/bt/App_Bt;

    invoke-virtual {v0}, Lcom/syu/bt/App_Bt;->AIUvEcnr()I

    .line 731
    iget-object v0, p0, Lcom/syu/bt/App_Bt$1;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mRunnAIUvEcnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-static {v4, v0, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 737
    :cond_0
    return-void
.end method
