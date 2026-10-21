.class public Lcom/syu/bt/page/Page_Set$RunnableHideText;
.super Ljava/lang/Object;
.source "Page_Set.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableHideText"
.end annotation


# instance fields
.field private text:Lcom/lsec/core/frame/ctrl/JText;

.field final synthetic this$0:Lcom/syu/bt/page/Page_Set;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_Set;Lcom/lsec/core/frame/ctrl/JText;)V
    .locals 0
    .param p2, "text"    # Lcom/lsec/core/frame/ctrl/JText;

    .prologue
    .line 1534
    iput-object p1, p0, Lcom/syu/bt/page/Page_Set$RunnableHideText;->this$0:Lcom/syu/bt/page/Page_Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1535
    iput-object p2, p0, Lcom/syu/bt/page/Page_Set$RunnableHideText;->text:Lcom/lsec/core/frame/ctrl/JText;

    .line 1536
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set$RunnableHideText;->text:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set$RunnableHideText;->text:Lcom/lsec/core/frame/ctrl/JText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 1542
    :cond_0
    return-void
.end method
