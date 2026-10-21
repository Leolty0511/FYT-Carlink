.class Lcom/syu/bt/page/Page_Contact$8;
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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Contact$8;->this$0:Lcom/syu/bt/page/Page_Contact;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$8;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$8;->this$0:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Contact;->clearPageFocus()V

    .line 463
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$8;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 464
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$8;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 465
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact$8;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Contact;->mEditSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/syu/bt/App_Bt;->showInput(Landroid/view/View;)V

    .line 467
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
