.class Landroid/widget/DatePickerCalendarDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/YearPickerView$OnYearSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePickerCalendarDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/DatePickerCalendarDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onYearChanged(Landroid/widget/YearPickerView;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0, p2}, Landroid/widget/DatePickerCalendarDelegate;->getDaysInMonth(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-le p1, v0, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    .line 24
    .line 25
    iget-object p1, p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroid/widget/d;->q(Landroid/icu/util/Calendar;I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    .line 31
    .line 32
    iget-object p1, p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 33
    .line 34
    invoke-static {p1, p2}, Landroid/widget/b;->w(Landroid/icu/util/Calendar;I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    invoke-static {p1, p2, p2}, Landroid/widget/DatePickerCalendarDelegate;->access$000(Landroid/widget/DatePickerCalendarDelegate;ZZ)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-static {p1, p2}, Landroid/widget/DatePickerCalendarDelegate;->access$100(Landroid/widget/DatePickerCalendarDelegate;I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    .line 50
    .line 51
    invoke-static {p1}, Landroid/widget/DatePickerCalendarDelegate;->access$200(Landroid/widget/DatePickerCalendarDelegate;)Landroid/widget/TextView;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 56
    .line 57
    .line 58
    return-void
.end method
