.class Lcom/syu/bt/page/pop/Page_PopHySet$1;
.super Ljava/lang/Object;
.source "Page_PopHySet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/pop/Page_PopHySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopHySet;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopHySet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopHySet$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySet;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v2, 0x7d0

    .line 114
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySet;

    iget-boolean v0, v0, Lcom/syu/bt/page/pop/Page_PopHySet;->isPlus:Z

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySet;

    iget v1, v0, Lcom/syu/bt/page/pop/Page_PopHySet;->iHySet:I

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/syu/bt/page/pop/Page_PopHySet;->iHySet:I

    .line 116
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySet;

    iget v0, v0, Lcom/syu/bt/page/pop/Page_PopHySet;->iHySet:I

    if-le v0, v2, :cond_0

    .line 117
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySet;

    iput v2, v0, Lcom/syu/bt/page/pop/Page_PopHySet;->iHySet:I

    .line 123
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySet;

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopHySet;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySet;

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopHySet;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySet$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySet;

    iget v2, v2, Lcom/syu/bt/page/pop/Page_PopHySet;->iHySet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySet;

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopHySet;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySet$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySet;

    invoke-static {v1}, Lcom/syu/bt/page/pop/Page_PopHySet;->access$0(Lcom/syu/bt/page/pop/Page_PopHySet;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    return-void

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySet;

    iget v1, v0, Lcom/syu/bt/page/pop/Page_PopHySet;->iHySet:I

    add-int/lit8 v1, v1, -0xa

    iput v1, v0, Lcom/syu/bt/page/pop/Page_PopHySet;->iHySet:I

    .line 120
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySet;

    iget v0, v0, Lcom/syu/bt/page/pop/Page_PopHySet;->iHySet:I

    if-gez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet$1;->this$0:Lcom/syu/bt/page/pop/Page_PopHySet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/syu/bt/page/pop/Page_PopHySet;->iHySet:I

    goto :goto_0
.end method
