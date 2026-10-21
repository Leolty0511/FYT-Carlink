.class Lcom/syu/bt/page/pop/Page_PopHySetAI$4;
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
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$4;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$4;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$4;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget v1, v1, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet_p:I

    iput v1, v0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    .line 85
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$4;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    invoke-virtual {v0}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->showHySet()V

    .line 86
    return-void
.end method
