.class Lcom/syu/bt/page/Page_Dial$5;
.super Ljava/lang/Object;
.source "Page_Dial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Dial;->disableSaveView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Dial;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Dial;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Dial$5;->this$0:Lcom/syu/bt/page/Page_Dial;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$5;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$5;->this$0:Lcom/syu/bt/page/Page_Dial;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Dial;->hideDialView(Z)V

    .line 428
    return-void
.end method
