.class Lcom/syu/bt/page/Page_Contact$9;
.super Ljava/lang/Object;
.source "Page_Contact.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Contact;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Contact;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Contact;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Contact$9;->this$0:Lcom/syu/bt/page/Page_Contact;

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 484
    const-string v2, "btttt"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0000 Page_contact mGridView.setOnTouchListener getAction ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-eqz v2, :cond_0

    .line 486
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact$9;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Contact;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_download"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    .line 515
    :goto_0
    return v0

    .line 489
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    .line 515
    goto :goto_0

    .line 491
    :pswitch_0
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "TZY_BT_1920"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 493
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact$9;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v2, v2, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$9;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$9;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 497
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact$9;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v2, v2, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Lcom/syu/bt/App_Bt;->hideInput(Landroid/view/View;)V

    goto :goto_1

    .line 501
    :pswitch_1
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "TZY_BT_1920"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 503
    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact$9;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v2, v2, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 508
    :pswitch_2
    const-string v0, "btt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "001 Page_contact setOnTouchListener getAction ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "TZY_BT_1920"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$9;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
