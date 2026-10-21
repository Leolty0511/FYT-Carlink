.class Lcom/syu/bt/page/pop/Page_PopHySetAI$10;
.super Ljava/lang/Object;
.source "Page_PopHySetAI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/pop/Page_PopHySetAI;->textMove(I)V
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
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$10;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 274
    const-string v0, "move1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ActBt showMenuSel   iMoveWidth = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$10;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget v2, v2, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$10;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->textMove(I)V

    .line 276
    return-void
.end method
