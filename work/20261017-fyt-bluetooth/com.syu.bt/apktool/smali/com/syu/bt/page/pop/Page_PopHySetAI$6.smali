.class Lcom/syu/bt/page/pop/Page_PopHySetAI$6;
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
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$6;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$6;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    const/4 v1, 0x0

    iput v1, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    .line 106
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$6;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    invoke-virtual {v0}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->showHySet()V

    .line 107
    return-void
.end method
