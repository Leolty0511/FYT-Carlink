.class Lcom/syu/bt/page/Page_Set$17;
.super Ljava/lang/Object;
.source "Page_Set.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Set;->ResponseClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Set;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Set;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Set$17;->this$0:Lcom/syu/bt/page/Page_Set;

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 947
    iget-object v1, p0, Lcom/syu/bt/page/Page_Set$17;->this$0:Lcom/syu/bt/page/Page_Set;

    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const/16 v2, 0x288d

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 948
    .local v0, "edit3":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 949
    return-void
.end method
