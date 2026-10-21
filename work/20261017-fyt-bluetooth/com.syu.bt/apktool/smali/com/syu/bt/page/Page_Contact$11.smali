.class Lcom/syu/bt/page/Page_Contact$11;
.super Ljava/lang/Object;
.source "Page_Contact.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Contact$11;->this$0:Lcom/syu/bt/page/Page_Contact;

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "arg4"    # I
    .param p6, "arg5"    # I
    .param p7, "arg6"    # I
    .param p8, "arg7"    # I
    .param p9, "arg8"    # I

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, "check":Z
    sget-object v4, Lcom/syu/bt/App_Bt;->myPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 575
    if-nez v0, :cond_2

    .line 576
    sget-object v4, Lcom/syu/bt/App_Bt;->myPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 590
    :goto_1
    return-void

    .line 569
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 570
    .local v2, "path":Ljava/lang/String;
    sget-object v5, Lcom/syu/bt/App_Bt;->myAlbum:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 571
    const/4 v0, 0x1

    goto :goto_0

    .line 580
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/syu/bt/App_Bt;->myPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 581
    .local v3, "sss":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v4, Lcom/syu/bt/App_Bt;->myPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_4

    .line 584
    iget-object v4, p0, Lcom/syu/bt/page/Page_Contact$11;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v4, v4, Lcom/syu/bt/page/Page_Contact;->myListTask:Lcom/syu/bt/util/MyListCoverTask;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/syu/bt/page/Page_Contact$11;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v4, v4, Lcom/syu/bt/page/Page_Contact;->myListTask:Lcom/syu/bt/util/MyListCoverTask;

    invoke-virtual {v4}, Lcom/syu/bt/util/MyListCoverTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/syu/bt/page/Page_Contact$11;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v4, v4, Lcom/syu/bt/page/Page_Contact;->myListTask:Lcom/syu/bt/util/MyListCoverTask;

    invoke-virtual {v4}, Lcom/syu/bt/util/MyListCoverTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v4, v5, :cond_3

    .line 585
    iget-object v4, p0, Lcom/syu/bt/page/Page_Contact$11;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v4, v4, Lcom/syu/bt/page/Page_Contact;->myListTask:Lcom/syu/bt/util/MyListCoverTask;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/syu/bt/util/MyListCoverTask;->cancel(Z)Z

    .line 586
    iget-object v4, p0, Lcom/syu/bt/page/Page_Contact$11;->this$0:Lcom/syu/bt/page/Page_Contact;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/syu/bt/page/Page_Contact;->myListTask:Lcom/syu/bt/util/MyListCoverTask;

    .line 588
    :cond_3
    iget-object v4, p0, Lcom/syu/bt/page/Page_Contact$11;->this$0:Lcom/syu/bt/page/Page_Contact;

    new-instance v5, Lcom/syu/bt/util/MyListCoverTask;

    invoke-direct {v5}, Lcom/syu/bt/util/MyListCoverTask;-><init>()V

    iput-object v5, v4, Lcom/syu/bt/page/Page_Contact;->myListTask:Lcom/syu/bt/util/MyListCoverTask;

    .line 589
    iget-object v4, p0, Lcom/syu/bt/page/Page_Contact$11;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v4, v4, Lcom/syu/bt/page/Page_Contact;->myListTask:Lcom/syu/bt/util/MyListCoverTask;

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v5, v3}, Lcom/syu/bt/util/MyListCoverTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 582
    :cond_4
    sget-object v4, Lcom/syu/bt/App_Bt;->myPaths:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v1

    .line 581
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
