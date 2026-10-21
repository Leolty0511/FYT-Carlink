.class Landroid/widget/DayPickerPagerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SimpleMonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DayPickerPagerAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/DayPickerPagerAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDayClick(Landroid/widget/SimpleMonthView;Landroid/icu/util/Calendar;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/DayPickerPagerAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    .line 9
    .line 10
    invoke-static {p1}, Landroid/widget/DayPickerPagerAdapter;->access$000(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/widget/DayPickerPagerAdapter;->access$000(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    .line 23
    .line 24
    invoke-interface {p1, v0, p2}, Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;->onDaySelected(Landroid/widget/DayPickerPagerAdapter;Landroid/icu/util/Calendar;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
