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
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method public constructor <init>(Landroid/widget/MediaController;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/widget/MediaController;->access$000(Landroid/widget/MediaController;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/widget/MediaController;->access$100(Landroid/widget/MediaController;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/widget/MediaController;->access$400(Landroid/widget/MediaController;)Landroid/view/WindowManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    .line 21
    .line 22
    invoke-static {p2}, Landroid/widget/MediaController;->access$200(Landroid/widget/MediaController;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object p3, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    .line 27
    .line 28
    invoke-static {p3}, Landroid/widget/MediaController;->access$300(Landroid/widget/MediaController;)Landroid/view/WindowManager$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-interface {p1, p2, p3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
