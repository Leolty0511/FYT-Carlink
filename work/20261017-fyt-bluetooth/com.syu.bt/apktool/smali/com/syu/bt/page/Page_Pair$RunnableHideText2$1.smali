.class Lcom/syu/bt/page/Page_Pair$RunnableHideText2$1;
.super Ljava/lang/Object;
.source "Page_Pair.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Pair$RunnableHideText2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syu/bt/page/Page_Pair$RunnableHideText2;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Pair$RunnableHideText2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText2$1;->this$1:Lcom/syu/bt/page/Page_Pair$RunnableHideText2;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$RunnableHideText2$1;->this$1:Lcom/syu/bt/page/Page_Pair$RunnableHideText2;

    invoke-static {v0}, Lcom/syu/bt/page/Page_Pair$RunnableHideText2;->access$0(Lcom/syu/bt/page/Page_Pair$RunnableHideText2;)Lcom/syu/bt/page/Page_Pair;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 429
    return-void
.end method
