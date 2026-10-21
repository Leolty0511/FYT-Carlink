.class Landroid/widget/MediaController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method public constructor <init>(Landroid/widget/MediaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->access$000(Landroid/widget/MediaController;)V

    .line 2
    iget-object p1, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->access$100(Landroid/widget/MediaController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    invoke-static {p1}, Landroid/widget/MediaController;->access$400(Landroid/widget/MediaController;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    invoke-static {p2}, Landroid/widget/MediaController;->access$200(Landroid/widget/MediaController;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    invoke-static {p3}, Landroid/widget/MediaController;->access$300(Landroid/widget/MediaController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
