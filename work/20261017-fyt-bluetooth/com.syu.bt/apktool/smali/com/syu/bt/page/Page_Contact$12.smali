.class Lcom/syu/bt/page/Page_Contact$12;
.super Ljava/lang/Object;
.source "Page_Contact.java"

# interfaces
.implements Lcom/syu/bt/ctrl/SlideBarView$OnTouchLettersChangedListener;


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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Contact$12;->this$0:Lcom/syu/bt/page/Page_Contact;

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchLettersChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 609
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact$12;->this$0:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/syu/bt/page/Page_Contact;->getPositionForSection(I)I

    move-result v0

    .line 610
    .local v0, "position":I
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact$12;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact$12;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v1, v1, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v1, :cond_0

    .line 612
    const-string v1, "#"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact$12;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact$12;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 617
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/syu/bt/page/Page_Contact$12;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v2, v2, Lcom/syu/bt/page/Page_Contact;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-static {v1, v2, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 619
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact$12;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v1, v1, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/syu/bt/page/Page_Contact$12;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    goto :goto_0
.end method
