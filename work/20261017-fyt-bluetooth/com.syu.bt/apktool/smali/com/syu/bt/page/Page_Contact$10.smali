.class Lcom/syu/bt/page/Page_Contact$10;
.super Ljava/lang/Object;
.source "Page_Contact.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Contact$10;->this$0:Lcom/syu/bt/page/Page_Contact;

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 559
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I

    .prologue
    .line 549
    if-lez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/syu/bt/page/Page_Contact;->bDrawListAlbum:Z

    .line 550
    const-string v0, "gdy6666"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "000 Page_contact mGridView.setOnScrollListener arg1 ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bDrawListAlbum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/syu/bt/page/Page_Contact;->bDrawListAlbum:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-boolean v0, Lcom/syu/bt/page/Page_Contact;->bDrawListAlbum:Z

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$10;->this$0:Lcom/syu/bt/page/Page_Contact;

    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Contact;->notifyDataSetChanged()V

    .line 555
    :cond_0
    return-void

    .line 549
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
