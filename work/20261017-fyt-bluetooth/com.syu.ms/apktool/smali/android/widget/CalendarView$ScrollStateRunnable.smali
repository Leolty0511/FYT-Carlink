.class Landroid/widget/CalendarView$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field private mView:Landroid/widget/AbsListView;

.field public final synthetic this$0:Landroid/widget/CalendarView;


# direct methods
.method private constructor <init>(Landroid/widget/CalendarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/CalendarView;Landroid/widget/CalendarView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$ScrollStateRunnable;-><init>(Landroid/widget/CalendarView;)V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    .line 2
    iput p2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    .line 3
    iget-object p1, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    const-wide/16 v0, 0x28

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    iget v1, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    invoke-static {v0, v1}, Landroid/widget/CalendarView;->access$1002(Landroid/widget/CalendarView;I)I

    .line 2
    iget v0, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$1100(Landroid/widget/CalendarView;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$1200(Landroid/widget/CalendarView;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$1200(Landroid/widget/CalendarView;)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 6
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$1300(Landroid/widget/CalendarView;)Z

    move-result v2

    const/16 v3, 0x1f4

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    iget v1, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    invoke-static {v0, v1}, Landroid/widget/CalendarView;->access$1102(Landroid/widget/CalendarView;I)I

    return-void
.end method
