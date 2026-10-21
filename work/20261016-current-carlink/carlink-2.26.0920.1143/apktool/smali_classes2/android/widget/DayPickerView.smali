.class Landroid/widget/DayPickerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerView$OnDaySelectedListener;
    }
.end annotation


# static fields
.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_LAYOUT:I = 0x1090051

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAdapter:Landroid/widget/DayPickerPagerAdapter;

.field private final mMaxDate:Landroid/icu/util/Calendar;

.field private final mMinDate:Landroid/icu/util/Calendar;

.field private final mNextButton:Landroid/widget/ImageButton;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private final mPrevButton:Landroid/widget/ImageButton;

.field private final mSelectedDay:Landroid/icu/util/Calendar;

.field private mTempCalendar:Landroid/icu/util/Calendar;

.field private final mViewPager:Lcom/android/internal/widget/ViewPager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x1010098

    .line 6
    .line 7
    .line 8
    aput v2, v0, v1

    .line 9
    .line 10
    sput-object v0, Landroid/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035d

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-static {}, Landroid/text/format/b;->j()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    .line 6
    invoke-static {}, Landroid/text/format/b;->j()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    .line 7
    invoke-static {}, Landroid/text/format/b;->j()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    .line 8
    new-instance v0, Landroid/widget/DayPickerView$2;

    invoke-direct {v0, p0}, Landroid/widget/DayPickerView$2;-><init>(Landroid/widget/DayPickerView;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 9
    new-instance v0, Landroid/widget/DayPickerView$3;

    invoke-direct {v0, p0}, Landroid/widget/DayPickerView$3;-><init>(Landroid/widget/DayPickerView;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    const-string v0, "accessibility"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 11
    sget-object v0, Lcom/android/internal/R$styleable;->CalendarView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {p3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object p3

    iget-object p3, p3, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 p4, 0x0

    .line 13
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v0, 0x2

    .line 14
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 15
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    const v3, 0x103039a

    .line 16
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const v3, 0x1030399

    const/16 v4, 0xb

    .line 17
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/16 v4, 0xc

    const v5, 0x1030398

    .line 18
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/16 v5, 0xf

    .line 19
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 20
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    new-instance p2, Landroid/widget/DayPickerPagerAdapter;

    const v6, 0x109004f

    const v7, 0x1020309

    invoke-direct {p2, p1, v6, v7}, Landroid/widget/DayPickerPagerAdapter;-><init>(Landroid/content/Context;II)V

    iput-object p2, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    .line 22
    invoke-virtual {p2, v2}, Landroid/widget/DayPickerPagerAdapter;->setMonthTextAppearance(I)V

    .line 23
    invoke-virtual {p2, v3}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    .line 24
    invoke-virtual {p2, v4}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    .line 25
    invoke-virtual {p2, v5}, Landroid/widget/DayPickerPagerAdapter;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x1090051

    .line 27
    invoke-virtual {p1, p2, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 28
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 29
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 30
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 31
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const p1, 0x1020379

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 33
    iget-object p2, p0, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x1020318

    .line 34
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 35
    iget-object v3, p0, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x102021a

    .line 36
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager;

    iput-object v3, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    .line 37
    iget-object v4, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .line 38
    iget-object v4, p0, Landroid/widget/DayPickerView;->mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    if-eqz v2, :cond_2

    .line 39
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {v3, v4, v5, p4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 40
    invoke-virtual {v2, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 41
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 42
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 43
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    :cond_2
    invoke-static {}, Landroid/text/format/b;->j()Landroid/icu/util/Calendar;

    move-result-object p1

    .line 45
    invoke-static {v0, p1}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 46
    invoke-static {p1}, Landroid/widget/b;->C(Landroid/icu/util/Calendar;)V

    .line 47
    :cond_3
    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    move-result-wide v8

    .line 48
    invoke-static {v1, p1}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 49
    invoke-static {p1}, Landroid/widget/b;->D(Landroid/icu/util/Calendar;)V

    .line 50
    :cond_4
    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    move-result-wide p1

    cmp-long v0, p1, v8

    if-ltz v0, :cond_5

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v4, v8

    move-wide v6, p1

    .line 52
    invoke-static/range {v2 .. v7}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    .line 53
    invoke-virtual {p0, p3}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 54
    invoke-virtual {p0, v8, v9}, Landroid/widget/DayPickerView;->setMinDate(J)V

    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    .line 56
    invoke-virtual {p0, v0, v1, p4}, Landroid/widget/DayPickerView;->setDate(JZ)V

    .line 57
    iget-object p1, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    new-instance p2, Landroid/widget/DayPickerView$1;

    invoke-direct {p2, p0}, Landroid/widget/DayPickerView$1;-><init>(Landroid/widget/DayPickerView;)V

    invoke-virtual {p1, p2}, Landroid/widget/DayPickerPagerAdapter;->setOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V

    return-void

    .line 58
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxDate must be >= minDate"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Landroid/widget/DayPickerView;)Landroid/widget/DayPickerView$OnDaySelectedListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/widget/DayPickerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method public static synthetic access$400(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    return-object p0
.end method

.method private getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-static {p2}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-static {p1}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sub-int/2addr p2, p1

    .line 19
    mul-int/lit8 v0, v0, 0xc

    .line 20
    .line 21
    add-int/2addr v0, p2

    .line 22
    return v0
.end method

.method private getPositionFromDay(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Landroid/widget/DayPickerView;->getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getTempCalendarForTime(J)Landroid/icu/util/Calendar;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0, v1, p1}, Landroid/widget/DayPickerView;->getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-static {p1, p2, v0}, Landroid/util/MathUtils;->constrain(III)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method private getTempCalendarForTime(J)Landroid/icu/util/Calendar;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/text/format/b;->j()Landroid/icu/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    .line 12
    .line 13
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    .line 17
    .line 18
    return-object p1
.end method

.method private setDate(JZZ)V
    .locals 4

    .line 3
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 4
    iget-object p1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    move-result-wide p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 6
    iget-object p1, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getTempCalendarForTime(J)Landroid/icu/util/Calendar;

    if-nez p4, :cond_2

    if-eqz v1, :cond_3

    .line 8
    :cond_2
    iget-object p4, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-static {p4, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 9
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getPositionFromDay(J)I

    move-result p1

    .line 10
    iget-object p2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p2}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result p2

    if-eq p1, p2, :cond_4

    .line 11
    iget-object p2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    .line 12
    :cond_4
    iget-object p1, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object p2, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/widget/DayPickerPagerAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    return-void
.end method

.method private updateButtonVisibility(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    .line 9
    .line 10
    invoke-virtual {v3}, Landroid/widget/DayPickerPagerAdapter;->getCount()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    sub-int/2addr v3, v0

    .line 15
    if-ge p1, v3, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v0, v1

    .line 19
    :goto_1
    iget-object p1, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    move v2, v1

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v2, v3

    .line 27
    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move v1, v3

    .line 36
    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public getBoundsForDate(JLandroid/graphics/Rect;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getPositionFromDay(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    .line 16
    .line 17
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    .line 21
    .line 22
    iget-object p2, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    .line 23
    .line 24
    invoke-virtual {p1, p2, p3}, Landroid/widget/DayPickerPagerAdapter;->getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public getDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-static {v0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDayOfWeekTextAppearance()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getDayOfWeekTextAppearance()I

    move-result v0

    return v0
.end method

.method public getDayTextAppearance()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMostVisiblePosition()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 15
    .line 16
    :goto_0
    sub-int/2addr p4, p2

    .line 17
    sub-int/2addr p5, p3

    .line 18
    iget-object p2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-virtual {p2, p3, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    .line 25
    .line 26
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroid/widget/SimpleMonthView;

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/widget/SimpleMonthView;->getMonthHeight()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    invoke-virtual {p2}, Landroid/widget/SimpleMonthView;->getCellWidth()I

    .line 37
    .line 38
    .line 39
    move-result p5

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x2

    .line 53
    invoke-static {p3, v2, v4, v3}, Landroid/app/m;->b(IIII)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v5, 0x2

    .line 62
    invoke-static {p5, v1, v5, v4}, Landroid/app/m;->b(IIII)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    add-int/2addr v1, v4

    .line 67
    add-int/2addr v2, v3

    .line 68
    invoke-virtual {p1, v4, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/4 v3, 0x2

    .line 84
    invoke-static {p3, v1, v3, v2}, Landroid/app/m;->b(IIII)I

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    sub-int/2addr p4, p2

    .line 93
    sub-int/2addr p5, p1

    .line 94
    div-int/lit8 p5, p5, 0x2

    .line 95
    .line 96
    sub-int/2addr p4, p5

    .line 97
    sub-int p1, p4, p1

    .line 98
    .line 99
    add-int/2addr v1, p3

    .line 100
    invoke-virtual {v0, p1, p3, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidthAndState()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeightAndState()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const/high16 v0, -0x80000000

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iget-object v0, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 36
    .line 37
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onRangeChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/widget/DayPickerPagerAdapter;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0, v0, v1, v2, v2}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-direct {p0, v0}, Landroid/widget/DayPickerView;->updateButtonVisibility(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setDate(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/DayPickerView;->setDate(JZ)V

    return-void
.end method

.method public setDate(JZ)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setMinDate(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
