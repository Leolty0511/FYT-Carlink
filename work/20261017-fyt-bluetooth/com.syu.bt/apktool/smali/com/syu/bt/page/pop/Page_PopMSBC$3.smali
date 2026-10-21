.class Lcom/syu/bt/page/pop/Page_PopMSBC$3;
.super Ljava/lang/Object;
.source "Page_PopMSBC.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/pop/Page_PopMSBC;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopMSBC;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopMSBC;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC$3;->this$0:Lcom/syu/bt/page/pop/Page_PopMSBC;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMSBC$3;->this$0:Lcom/syu/bt/page/pop/Page_PopMSBC;

    const/4 v1, 0x0

    iput v1, v0, Lcom/syu/bt/page/pop/Page_PopMSBC;->iMsbc:I

    .line 63
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMSBC$3;->this$0:Lcom/syu/bt/page/pop/Page_PopMSBC;

    invoke-virtual {v0}, Lcom/syu/bt/page/pop/Page_PopMSBC;->showMsbcSet()V

    .line 64
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMSBC$3;->this$0:Lcom/syu/bt/page/pop/Page_PopMSBC;

    invoke-virtual {v0}, Lcom/syu/bt/page/pop/Page_PopMSBC;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
