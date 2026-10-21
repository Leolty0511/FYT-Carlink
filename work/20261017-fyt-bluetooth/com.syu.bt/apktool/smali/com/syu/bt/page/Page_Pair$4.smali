.class Lcom/syu/bt/page/Page_Pair$4;
.super Ljava/lang/Object;
.source "Page_Pair.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Pair;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Pair;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Pair;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Pair$4;->this$0:Lcom/syu/bt/page/Page_Pair;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 297
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 309
    :goto_0
    return v2

    .line 301
    :pswitch_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$4;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 306
    :pswitch_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Pair$4;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Pair;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
