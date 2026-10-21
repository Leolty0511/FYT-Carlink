.class Lcom/syu/bt/page/pop/Page_PopCODEC$4;
.super Ljava/lang/Object;
.source "Page_PopCODEC.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/pop/Page_PopCODEC;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopCODEC;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopCODEC;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC$4;->this$0:Lcom/syu/bt/page/pop/Page_PopCODEC;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "y":F
    const/4 v0, 0x0

    .line 82
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 93
    :goto_0
    :pswitch_0
    return v3

    .line 88
    :pswitch_1
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopCODEC$4;->this$0:Lcom/syu/bt/page/pop/Page_PopCODEC;

    iput v3, v2, Lcom/syu/bt/page/pop/Page_PopCODEC;->iCodec:I

    .line 89
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopCODEC$4;->this$0:Lcom/syu/bt/page/pop/Page_PopCODEC;

    invoke-virtual {v2}, Lcom/syu/bt/page/pop/Page_PopCODEC;->showCodec()V

    .line 90
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopCODEC$4;->this$0:Lcom/syu/bt/page/pop/Page_PopCODEC;

    invoke-virtual {v2}, Lcom/syu/bt/page/pop/Page_PopCODEC;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
