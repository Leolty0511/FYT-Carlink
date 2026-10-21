.class Landroid/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupScrollListener"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/ListPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {p1}, Landroid/widget/ListPopupWindow;->access$900(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {p1}, Landroid/widget/ListPopupWindow;->access$1100(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {p2}, Landroid/widget/ListPopupWindow;->access$1000(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object p1, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {p1}, Landroid/widget/ListPopupWindow;->access$1000(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    :cond_0
    return-void
.end method
