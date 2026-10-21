.class Landroid/widget/DropDownListView$ResolveHoverRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResolveHoverRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DropDownListView;


# direct methods
.method private constructor <init>(Landroid/widget/DropDownListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/widget/DropDownListView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/widget/DropDownListView;->access$102(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)Landroid/widget/DropDownListView$ResolveHoverRunnable;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public post()V
    .locals 1

    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/widget/DropDownListView;->access$102(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)Landroid/widget/DropDownListView$ResolveHoverRunnable;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->drawableStateChanged()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
