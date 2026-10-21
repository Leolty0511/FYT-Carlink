.class Landroid/widget/CalendarViewMaterialDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "SourceFile"


# instance fields
.field private final mDayPickerView:Landroid/widget/DayPickerView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private final mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/widget/CalendarViewMaterialDelegate$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/widget/CalendarViewMaterialDelegate$1;-><init>(Landroid/widget/CalendarViewMaterialDelegate;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    .line 10
    .line 11
    new-instance v1, Landroid/widget/DayPickerView;

    .line 12
    .line 13
    invoke-direct {v1, p2, p3, p4, p5}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic access$000(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object p0
.end method


# virtual methods
.method public getBoundsForDate(JLandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DayPickerView;->getBoundsForDate(JLandroid/graphics/Rect;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    new-array p2, p1, [I

    .line 11
    .line 12
    new-array p1, p1, [I

    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    aget p2, p2, v0

    .line 26
    .line 27
    aget p1, p1, v0

    .line 28
    .line 29
    sub-int/2addr p2, p1

    .line 30
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    add-int/2addr p1, p2

    .line 33
    iput p1, p3, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    add-int/2addr p1, p2

    .line 38
    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    return v0

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public getDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWeekDayTextAppearance()I
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDayOfWeekTextAppearance()I

    move-result v0

    return v0
.end method

.method public setDate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/DayPickerView;->setDate(JZ)V

    return-void
.end method

.method public setDate(JZZ)V
    .locals 0

    .line 2
    iget-object p4, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p4, p1, p2, p3}, Landroid/widget/DayPickerView;->setDate(JZ)V

    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setDayTextAppearance(I)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    return-void
.end method

.method public setMinDate(J)V
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    return-void
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setDayOfWeekTextAppearance(I)V

    return-void
.end method
