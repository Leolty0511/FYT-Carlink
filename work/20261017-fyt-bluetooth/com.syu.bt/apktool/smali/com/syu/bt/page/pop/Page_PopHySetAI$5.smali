.class Lcom/syu/bt/page/pop/Page_PopHySetAI$5;
.super Ljava/lang/Object;
.source "Page_PopHySetAI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/pop/Page_PopHySetAI;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
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
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$5;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x7d0

    .line 94
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$5;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget v0, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$5;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget v0, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    if-eq v0, v2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$5;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$5;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget v1, v1, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    iput v1, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet_p:I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$5;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iput v2, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    .line 97
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$5;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    invoke-virtual {v0}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->showHySet()V

    .line 98
    return-void
.end method
