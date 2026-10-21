.class Lcom/syu/bt/page/Page_Contact$6;
.super Ljava/lang/Object;
.source "Page_Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Contact;
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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Contact$6;->this$0:Lcom/syu/bt/page/Page_Contact;

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$6;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_0

    .line 808
    const-string v0, "gdy6666"

    const-string v1, " ***** mRun_NotifyDataSetChanged   notifyDataSetChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/syu/bt/page/Page_Contact$6;->this$0:Lcom/syu/bt/page/Page_Contact;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Contact;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 811
    :cond_0
    return-void
.end method
