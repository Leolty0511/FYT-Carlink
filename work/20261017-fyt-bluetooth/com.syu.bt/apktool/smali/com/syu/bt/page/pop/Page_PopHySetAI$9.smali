.class Lcom/syu/bt/page/pop/Page_PopHySetAI$9;
.super Ljava/lang/Object;
.source "Page_PopHySetAI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$9;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 194
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 175
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$9;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->textMove(I)V

    .line 177
    const-string v1, "move"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " *** moveView ACTION_DOWN  x = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iMoveWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$9;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget v3, v3, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$9;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->textMove(I)V

    .line 182
    const-string v1, "move"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " *** moveView ACTION_MOVE  x = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :pswitch_2
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$9;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    invoke-virtual {v1}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->showHySet()V

    .line 188
    const-string v1, "move"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " *** moveView ACTION_UP  x = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iMoveWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$9;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget v3, v3, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
