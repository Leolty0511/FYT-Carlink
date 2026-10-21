.class public Lcom/syu/bt/page/Page_Pair$HideText;
.super Ljava/lang/Object;
.source "Page_Pair.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HideText"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Pair;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_Pair;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/syu/bt/page/Page_Pair$HideText;->this$0:Lcom/syu/bt/page/Page_Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$HideText;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$HideText;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Pair;->tipText:Lcom/lsec/core/frame/ctrl/JText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 388
    :cond_0
    return-void
.end method
