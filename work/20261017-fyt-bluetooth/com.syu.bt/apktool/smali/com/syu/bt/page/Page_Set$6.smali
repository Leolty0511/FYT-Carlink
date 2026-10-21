.class Lcom/syu/bt/page/Page_Set$6;
.super Ljava/lang/Object;
.source "Page_Set.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Set;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Set;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Set;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Set$6;->this$0:Lcom/syu/bt/page/Page_Set;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 206
    const-string v0, "gtai"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 11 PageSet resume postRunnable_Ui iAI_GT = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/syu/bt/App_Bt;->iAI_GT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bAI_GT:Z

    if-eqz v0, :cond_1

    .line 208
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateAIKG()V

    .line 209
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateAI()V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    sget v0, Lcom/syu/bt/App_Bt;->iAI_GT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 212
    const/4 v0, 0x1

    const-wide/16 v2, 0x5dc

    invoke-static {v0, p0, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_0
.end method
