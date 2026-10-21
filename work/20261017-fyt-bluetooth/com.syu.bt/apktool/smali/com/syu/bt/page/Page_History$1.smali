.class Lcom/syu/bt/page/Page_History$1;
.super Ljava/lang/Object;
.source "Page_History.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_History;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_History;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_History;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_History$1;->this$0:Lcom/syu/bt/page/Page_History;

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/syu/bt/page/Page_History$1;->this$0:Lcom/syu/bt/page/Page_History;

    iget-object v0, v0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_0

    .line 581
    const-string v0, "gdy6666"

    const-string v1, " ***** Page_History mRun_NotifyDataSetChanged   notifyDataSetChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/syu/bt/page/Page_History$1;->this$0:Lcom/syu/bt/page/Page_History;

    iget-object v0, v0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 584
    :cond_0
    return-void
.end method
