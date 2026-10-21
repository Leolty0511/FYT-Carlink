.class Lcom/syu/bt/page/pop/Page_PopHySetAI$8;
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
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$8;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "y":F
    const/4 v0, 0x0

    .line 146
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 161
    :goto_0
    :pswitch_0
    return v6

    .line 148
    :pswitch_1
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$8;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iput-boolean v6, v2, Lcom/syu/bt/page/pop/Page_PopHySetAI;->isPlus:Z

    .line 149
    const-string v2, "hy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 11  Pophyset_Btn_minus ACTION_DOWN  isPlus = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$8;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget-boolean v4, v4, Lcom/syu/bt/page/pop/Page_PopHySetAI;->isPlus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$8;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget-object v2, v2, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$8;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    invoke-static {v3}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->access$0(Lcom/syu/bt/page/pop/Page_PopHySetAI;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 151
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$8;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget-object v2, v2, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$8;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    invoke-static {v3}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->access$0(Lcom/syu/bt/page/pop/Page_PopHySetAI;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/ctrl/JText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 156
    :pswitch_2
    const-string v2, "hy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 11  Pophyset_Btn_minus ACTION_UP  isPlus = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$8;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget-boolean v4, v4, Lcom/syu/bt/page/pop/Page_PopHySetAI;->isPlus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$8;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    iget-object v2, v2, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$8;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    invoke-static {v3}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->access$0(Lcom/syu/bt/page/pop/Page_PopHySetAI;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 158
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI$8;->this$0:Lcom/syu/bt/page/pop/Page_PopHySetAI;

    invoke-virtual {v2}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->showHySet()V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
