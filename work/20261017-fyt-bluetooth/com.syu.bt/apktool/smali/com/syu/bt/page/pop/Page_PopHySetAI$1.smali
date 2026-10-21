.class Lcom/syu/bt/page/pop/Page_PopHySetAI$1;
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
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget-boolean v0, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->isPlus:Z

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget v1, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    .line 206
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget v0, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    const/16 v1, 0x7cf

    iput v1, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    .line 213
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->textMove(I)V

    .line 215
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    invoke-static {v1}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->access$0(Lcom/syu/bt/page/pop/Page_PopHySetAI;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget v1, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    .line 210
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget v0, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    if-gtz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    const/4 v1, 0x1

    iput v1, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    goto :goto_0
.end method
