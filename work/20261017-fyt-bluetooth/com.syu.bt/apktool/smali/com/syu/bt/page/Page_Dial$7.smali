.class Lcom/syu/bt/page/Page_Dial$7;
.super Ljava/lang/Object;
.source "Page_Dial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Dial;->initHead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Dial;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Dial;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Dial$7;->this$0:Lcom/syu/bt/page/Page_Dial;

    iput p2, p0, Lcom/syu/bt/page/Page_Dial$7;->val$type:I

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 633
    iget v0, p0, Lcom/syu/bt/page/Page_Dial$7;->val$type:I

    sput v0, Lcom/syu/bt/App_Bt;->iIcoType:I

    .line 635
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$7;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Dial;->popBtHead()V

    .line 636
    return-void
.end method
