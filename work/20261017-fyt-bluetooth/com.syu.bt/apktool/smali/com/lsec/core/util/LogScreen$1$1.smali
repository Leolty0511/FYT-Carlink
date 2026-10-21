.class Lcom/lsec/core/util/LogScreen$1$1;
.super Ljava/lang/Object;
.source "LogScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lsec/core/util/LogScreen$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lsec/core/util/LogScreen$1;


# direct methods
.method constructor <init>(Lcom/lsec/core/util/LogScreen$1;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lsec/core/util/LogScreen$1$1;->this$1:Lcom/lsec/core/util/LogScreen$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lsec/core/util/LogScreen$1$1;->this$1:Lcom/lsec/core/util/LogScreen$1;

    invoke-static {v0}, Lcom/lsec/core/util/LogScreen$1;->access$0(Lcom/lsec/core/util/LogScreen$1;)Lcom/lsec/core/util/LogScreen;

    move-result-object v0

    iget-object v0, v0, Lcom/lsec/core/util/LogScreen;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/lsec/core/util/LogScreen$1$1;->this$1:Lcom/lsec/core/util/LogScreen$1;

    invoke-static {v0}, Lcom/lsec/core/util/LogScreen$1;->access$0(Lcom/lsec/core/util/LogScreen$1;)Lcom/lsec/core/util/LogScreen;

    move-result-object v0

    iget-object v0, v0, Lcom/lsec/core/util/LogScreen;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lsec/core/util/LogScreen$1$1;->this$1:Lcom/lsec/core/util/LogScreen$1;

    invoke-static {v1}, Lcom/lsec/core/util/LogScreen$1;->access$0(Lcom/lsec/core/util/LogScreen$1;)Lcom/lsec/core/util/LogScreen;

    move-result-object v1

    iget-object v1, v1, Lcom/lsec/core/util/LogScreen;->rootView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/lsec/core/util/LogScreen$1$1;->this$1:Lcom/lsec/core/util/LogScreen$1;

    invoke-static {v2}, Lcom/lsec/core/util/LogScreen$1;->access$0(Lcom/lsec/core/util/LogScreen$1;)Lcom/lsec/core/util/LogScreen;

    move-result-object v2

    iget-object v2, v2, Lcom/lsec/core/util/LogScreen;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    :cond_0
    return-void
.end method
