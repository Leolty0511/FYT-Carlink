.class Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field private mView:Landroid/widget/AbsListView;

.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method private constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/CalendarViewLegacyDelegate$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    .line 2
    .line 3
    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    .line 4
    .line 5
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 6
    .line 7
    iget-object p1, p1, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 13
    .line 14
    iget-object p1, p1, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    .line 15
    .line 16
    const-wide/16 v0, 0x28

    .line 17
    .line 18
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1002(Landroid/widget/CalendarViewLegacyDelegate;I)I

    .line 6
    .line 7
    .line 8
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1100(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 35
    .line 36
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1200(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sub-int/2addr v1, v2

    .line 41
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 42
    .line 43
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1200(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-le v1, v2, :cond_2

    .line 48
    .line 49
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 50
    .line 51
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1300(Landroid/widget/CalendarViewLegacyDelegate;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/16 v3, 0x1f4

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    sub-int/2addr v1, v0

    .line 66
    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    .line 71
    .line 72
    invoke-virtual {v0, v1, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 76
    .line 77
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    .line 78
    .line 79
    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1102(Landroid/widget/CalendarViewLegacyDelegate;I)I

    .line 80
    .line 81
    .line 82
    return-void
.end method
