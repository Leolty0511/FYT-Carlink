.class Lcom/syu/bt/page/Page_Dial$8;
.super Ljava/lang/Object;
.source "Page_Dial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Dial;->btnClick(Landroid/view/View;)Z
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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Dial$8;->this$0:Lcom/syu/bt/page/Page_Dial;

    .line 1357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1361
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$8;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Dial;->hideDialView(Z)V

    .line 1362
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$8;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    return-void
.end method
