.class Landroid/widget/CalendarView$WeeksAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeeksAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarView$WeeksAdapter$CalendarGestureListener;
    }
.end annotation


# instance fields
.field private mFocusedMonth:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mSelectedDate:Ljava/util/Calendar;

.field private mSelectedWeek:I

.field private mTotalWeekCount:I

.field public final synthetic this$0:Landroid/widget/CalendarView;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    .line 3
    new-instance v0, Landroid/view/GestureDetector;

    invoke-static {p1}, Landroid/widget/CalendarView;->access$1400(Landroid/widget/CalendarView;)Landroid/content/Context;

    move-result-object p1

    new-instance v1, Landroid/widget/CalendarView$WeeksAdapter$CalendarGestureListener;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$WeeksAdapter$CalendarGestureListener;-><init>(Landroid/widget/CalendarView$WeeksAdapter;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 4
    invoke-direct {p0}, Landroid/widget/CalendarView$WeeksAdapter;->init()V

    return-void
.end method

.method public static synthetic access$400(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/widget/CalendarView$WeeksAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/CalendarView$WeeksAdapter;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/widget/CalendarView;->access$1500(Landroid/widget/CalendarView;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedWeek:I

    .line 2
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$1600(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/CalendarView;->access$1500(Landroid/widget/CalendarView;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    .line 3
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$1700(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$1600(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-static {v1}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 4
    :cond_0
    iget v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onDateTapped(Ljava/util/Calendar;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 2
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0, p1}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;Ljava/util/Calendar;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    check-cast p2, Landroid/widget/CalendarView$WeekView;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Landroid/widget/CalendarView$WeekView;

    iget-object p3, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-static {p3}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Landroid/widget/CalendarView$WeekView;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    .line 3
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p3, 0x1

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setClickable(Z)V

    .line 6
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    :goto_0
    iget p3, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedWeek:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result p3

    goto :goto_1

    :cond_1
    const/4 p3, -0x1

    .line 8
    :goto_1
    iget v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mFocusedMonth:I

    invoke-virtual {p2, p1, p3, v0}, Landroid/widget/CalendarView$WeekView;->init(III)V

    return-object p2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$2000(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Landroid/widget/CalendarView$WeekView;

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/CalendarView$WeekView;->getDayFromLocation(FLjava/util/Calendar;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-static {p1}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$1700(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-static {p1}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$1600(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-static {p1}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeeksAdapter;->onDateTapped(Ljava/util/Calendar;)V

    :cond_2
    :goto_0
    return p2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public setFocusMonth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mFocusedMonth:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroid/widget/CalendarView$WeeksAdapter;->mFocusedMonth:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 3

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3
    iget-object p1, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-static {p1, v0}, Landroid/widget/CalendarView;->access$1500(Landroid/widget/CalendarView;Ljava/util/Calendar;)I

    move-result p1

    iput p1, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedWeek:I

    .line 4
    iget-object p1, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Landroid/widget/CalendarView$WeeksAdapter;->mFocusedMonth:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
