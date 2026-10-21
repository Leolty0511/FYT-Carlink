.class public Landroid/widget/CalendarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarView$WeekView;,
        Landroid/widget/CalendarView$WeeksAdapter;,
        Landroid/widget/CalendarView$ScrollStateRunnable;,
        Landroid/widget/CalendarView$OnDateChangeListener;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_MAX_DATE:Ljava/lang/String; = "01/01/2100"

.field private static final DEFAULT_MIN_DATE:Ljava/lang/String; = "01/01/1900"

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "CalendarView"

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDateTextAppearanceResId:I

.field private mDateTextSize:I

.field private mDayLabels:[Ljava/lang/String;

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Ljava/util/Calendar;

.field private mFirstDayOfWeek:I

.field private mFocusedMonthDateColor:I

.field private mFriction:F

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

.field private mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Ljava/util/Calendar;

.field private mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekDayTextAppearanceResId:I

.field private mWeekMinVisibleHeight:I

.field private mWeekNumberColor:I

.field private mWeekSeparatorLineColor:I

.field private final mWeekSeperatorLineWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 p3, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    const/16 v1, 0xc

    .line 5
    iput v1, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    const/16 v2, 0x14

    .line 6
    iput v2, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    const/4 v2, 0x7

    .line 7
    iput v2, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    const v3, 0x3d4ccccd    # 0.05f

    .line 8
    iput v3, p0, Landroid/widget/CalendarView;->mFriction:F

    const v3, 0x3eaa7efa    # 0.333f

    .line 9
    iput v3, p0, Landroid/widget/CalendarView;->mVelocityScale:F

    const/4 v3, -0x1

    .line 10
    iput v3, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    .line 11
    iput-boolean p3, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    .line 12
    iput p3, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    .line 13
    iput p3, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    .line 14
    new-instance v4, Landroid/widget/CalendarView$ScrollStateRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/widget/CalendarView$ScrollStateRunnable;-><init>(Landroid/widget/CalendarView;Landroid/widget/CalendarView$1;)V

    iput-object v4, p0, Landroid/widget/CalendarView;->mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

    .line 15
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "MM/dd/yyyy"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Landroid/widget/CalendarView;->mDateFormat:Ljava/text/DateFormat;

    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/CalendarView;->setCurrentLocale(Ljava/util/Locale;)V

    .line 17
    sget-object v4, Li/a;->CalendarView:[I

    const v6, 0x101035d

    invoke-virtual {p1, p2, v4, v6, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v4, 0x1

    .line 18
    invoke-virtual {p2, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v6

    iget-object v6, v6, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    .line 20
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v6}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 22
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    const-string v6, "01/01/1900"

    invoke-direct {p0, v6, v0}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    :cond_1
    const/4 v0, 0x3

    .line 23
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v6}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 25
    :cond_2
    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    const-string v6, "01/01/2100"

    invoke-direct {p0, v6, v0}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 26
    :cond_3
    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x4

    const/4 v6, 0x6

    .line 27
    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    const/4 v0, 0x5

    .line 28
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    .line 29
    invoke-virtual {p2, v6, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    .line 30
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    const/16 v0, 0x9

    .line 31
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    const/16 v0, 0x8

    .line 32
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    const/16 v0, 0xa

    .line 33
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    const v0, 0x1030046

    .line 34
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    .line 35
    invoke-direct {p0}, Landroid/widget/CalendarView;->updateDateTextSize()V

    const/16 v0, 0xb

    .line 36
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    .line 37
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v0, 0x41400000    # 12.0f

    .line 39
    invoke-static {v4, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 40
    invoke-static {v4, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 41
    invoke-static {v4, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    const/high16 v0, 0x40c00000    # 6.0f

    .line 42
    invoke-static {v4, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    invoke-static {v4, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I

    const-string p2, "layout_inflater"

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x1090031

    .line 45
    invoke-virtual {p1, p2, v5, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p2, 0x102000a

    .line 47
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const p2, 0x102029c

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    const p2, 0x102029b

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    .line 50
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpHeader()V

    .line 51
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpListView()V

    .line 52
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpAdapter()V

    .line 53
    iget-object p1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 54
    iget-object p1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 55
    iget-object p1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, p1, p3, v4, v4}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0

    .line 56
    :cond_4
    iget-object p1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 57
    iget-object p1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, p1, p3, v4, v4}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0

    .line 58
    :cond_5
    iget-object p1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, p1, p3, v4, v4}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    .line 59
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 60
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max date cannot be before min date."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$1002(Landroid/widget/CalendarView;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    return p1
.end method

.method public static synthetic access$1100(Landroid/widget/CalendarView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    return p0
.end method

.method public static synthetic access$1102(Landroid/widget/CalendarView;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    return p1
.end method

.method public static synthetic access$1200(Landroid/widget/CalendarView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    return p0
.end method

.method public static synthetic access$1300(Landroid/widget/CalendarView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    return p0
.end method

.method public static synthetic access$1400(Landroid/widget/CalendarView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1500(Landroid/widget/CalendarView;Ljava/util/Calendar;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1600(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$1700(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$1800(Landroid/widget/CalendarView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    return p0
.end method

.method public static synthetic access$1900(Landroid/widget/CalendarView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$2000(Landroid/widget/CalendarView;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public static synthetic access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$2200(Landroid/widget/CalendarView;Ljava/util/Calendar;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    return-void
.end method

.method public static synthetic access$2300(Landroid/widget/CalendarView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    return p0
.end method

.method public static synthetic access$2400(Landroid/widget/CalendarView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    return p0
.end method

.method public static synthetic access$2500(Landroid/widget/CalendarView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/CalendarView;->mDateTextSize:I

    return p0
.end method

.method public static synthetic access$2600(Landroid/widget/CalendarView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    return p0
.end method

.method public static synthetic access$2700(Landroid/widget/CalendarView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I

    return p0
.end method

.method public static synthetic access$2800(Landroid/widget/CalendarView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    return p0
.end method

.method public static synthetic access$2900(Landroid/widget/CalendarView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    return p0
.end method

.method public static synthetic access$3000(Landroid/widget/CalendarView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    return p0
.end method

.method public static synthetic access$3100(Landroid/widget/CalendarView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    return p0
.end method

.method public static synthetic access$3200(Landroid/widget/CalendarView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I

    return p0
.end method

.method public static synthetic access$3300(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$3400(Landroid/widget/CalendarView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    return p0
.end method

.method public static synthetic access$600(Landroid/widget/CalendarView;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/CalendarView;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/widget/CalendarView;)Landroid/widget/CalendarView$WeeksAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/widget/CalendarView;Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public static synthetic access$900(Landroid/widget/CalendarView;Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarView;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 3
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method private getWeeksSinceMinDate(Ljava/util/Calendar;)I
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 3
    iget-object p1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object p1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    iget-object v4, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 4
    iget-object p1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget v4, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    sub-int/2addr p1, v4

    int-to-long v4, p1

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    const-wide/32 v2, 0x240c8400

    .line 5
    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not precede toDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private goTo(Ljava/util/Calendar;ZZZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 3
    iget-object v1, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 5
    :cond_0
    iget v3, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    add-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v5, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    if-le v1, v5, :cond_1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    if-eqz p3, :cond_2

    .line 7
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v1

    if-lt v1, v0, :cond_4

    if-gt v1, v3, :cond_4

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_7

    .line 9
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_2

    .line 10
    :cond_4
    :goto_0
    iget-object p3, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 11
    iget-object p1, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    const/4 p3, 0x5

    invoke-virtual {p1, p3, v4}, Ljava/util/Calendar;->set(II)V

    .line 12
    iget-object p1, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 13
    iget-object p1, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object p3, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v2

    goto :goto_1

    .line 14
    :cond_5
    iget-object p1, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result p1

    :goto_1
    const/4 p3, 0x2

    .line 15
    iput p3, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    if-eqz p2, :cond_6

    .line 16
    iget-object p2, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget p3, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    const/16 p4, 0x3e8

    invoke-virtual {p2, p1, p3, p4}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    goto :goto_2

    .line 17
    :cond_6
    iget-object p2, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget p3, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    invoke-virtual {p2, p1, p3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 18
    iget-object p1, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, p1, v2}, Landroid/widget/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_7
    :goto_2
    return-void

    .line 19
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Time not between "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " and "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private invalidateAllWeekViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CalendarView$WeekView;

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr p4, v0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr p4, v0

    int-to-long v0, p4

    .line 3
    iget-wide v2, p0, Landroid/widget/CalendarView;->mPreviousScrollPosition:J

    cmp-long p4, v0, v2

    const/4 v4, 0x1

    if-gez p4, :cond_1

    .line 4
    iput-boolean v4, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    goto :goto_0

    :cond_1
    cmp-long p4, v0, v2

    if-lez p4, :cond_c

    .line 5
    iput-boolean p2, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    .line 6
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p4

    iget v2, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    if-ge p4, v2, :cond_2

    move p2, v4

    .line 7
    :cond_2
    iget-boolean p4, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz p4, :cond_3

    add-int/lit8 p2, p2, 0x2

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Landroid/widget/CalendarView$WeekView;

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Landroid/widget/CalendarView$WeekView;

    :cond_4
    :goto_1
    if-eqz p3, :cond_b

    .line 10
    iget-boolean p1, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p3}, Landroid/widget/CalendarView$WeekView;->getMonthOfFirstWeekDay()I

    move-result p1

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual {p3}, Landroid/widget/CalendarView$WeekView;->getMonthOfLastWeekDay()I

    move-result p1

    .line 13
    :goto_2
    iget p2, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    const/16 p4, 0xb

    if-ne p2, p4, :cond_6

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    if-nez p2, :cond_7

    if-ne p1, p4, :cond_7

    const/4 v4, -0x1

    goto :goto_3

    :cond_7
    sub-int v4, p1, p2

    .line 14
    :goto_3
    iget-boolean p1, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-nez p1, :cond_8

    if-gtz v4, :cond_9

    :cond_8
    if-eqz p1, :cond_b

    if-gez v4, :cond_b

    .line 15
    :cond_9
    invoke-virtual {p3}, Landroid/widget/CalendarView$WeekView;->getFirstDay()Ljava/util/Calendar;

    move-result-object p1

    .line 16
    iget-boolean p2, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    const/4 p3, 0x5

    if-eqz p2, :cond_a

    const/4 p2, -0x7

    .line 17
    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    :cond_a
    const/4 p2, 0x7

    .line 18
    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->add(II)V

    .line 19
    :goto_4
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 20
    :cond_b
    iput-wide v0, p0, Landroid/widget/CalendarView;->mPreviousScrollPosition:J

    .line 21
    iget p1, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    iput p1, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    :cond_c
    return-void
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/widget/CalendarView;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 2
    :catch_0
    sget-object p2, Landroid/widget/CalendarView;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in format: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MM/dd/yyyy"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/widget/CalendarView;->mCurrentLocale:Ljava/util/Locale;

    .line 3
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    .line 4
    iget-object v0, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    .line 5
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    .line 6
    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    return-void
.end method

.method private setMonthDisplayed(Ljava/util/Calendar;)V
    .locals 8

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    .line 2
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/CalendarView$WeeksAdapter;->setFocusMonth(I)V

    .line 3
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 4
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/16 v7, 0x34

    move-wide v3, v5

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setUpAdapter()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/CalendarView$WeeksAdapter;

    invoke-direct {v0, p0}, Landroid/widget/CalendarView$WeeksAdapter;-><init>(Landroid/widget/CalendarView;)V

    iput-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    .line 3
    new-instance v1, Landroid/widget/CalendarView$1;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$1;-><init>(Landroid/widget/CalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setUpHeader()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    .line 2
    iget v1, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    iget v3, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    if-ge v2, v3, :cond_1

    .line 4
    iget v3, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    add-int/2addr v3, v2

    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    add-int/lit8 v3, v3, -0x7

    .line 5
    :cond_0
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    aget-object v3, v0, v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7
    iget-boolean v2, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_1
    iget-object v0, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_2
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_5

    .line 11
    iget-object v4, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 12
    iget v6, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_3

    .line 13
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 14
    :cond_3
    iget v6, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    if-ge v2, v6, :cond_4

    .line 15
    iget-object v6, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    aget-object v2, v6, v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 17
    :cond_4
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    move v2, v5

    goto :goto_2

    .line 18
    :cond_5
    iget-object v0, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setUpListView()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 3
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 4
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CalendarView$2;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$2;-><init>(Landroid/widget/CalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 5
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarView;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setFriction(F)V

    .line 6
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarView;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVelocityScale(F)V

    return-void
.end method

.method private updateDateTextSize()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    sget-object v2, Li/a;->TextAppearance:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xe

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarView;->mDateTextSize:I

    .line 3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarView$WeeksAdapter;->access$400(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusedMonthDateColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    return v0
.end method

.method public getShownWeekCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getWeekDayTextAppearance()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDate(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarView;->setDate(JZZ)V

    return-void
.end method

.method public setDate(JZZ)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3
    iget-object p1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-static {p2}, Landroid/widget/CalendarView$WeeksAdapter;->access$400(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2, p4}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    .line 3
    invoke-direct {p0}, Landroid/widget/CalendarView;->updateDateTextSize()V

    .line 4
    invoke-direct {p0}, Landroid/widget/CalendarView;->invalidateAllWeekViews()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    .line 3
    iget-object p1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-static {p1}, Landroid/widget/CalendarView$WeeksAdapter;->access$500(Landroid/widget/CalendarView$WeeksAdapter;)V

    .line 4
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpHeader()V

    return-void
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    .line 3
    iget-object p1, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 4
    iget-object v1, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarView$WeekView;

    .line 5
    invoke-static {v1}, Landroid/widget/CalendarView$WeekView;->access$200(Landroid/widget/CalendarView$WeekView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMaxDate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    iget-object p1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-static {p1}, Landroid/widget/CalendarView$WeeksAdapter;->access$500(Landroid/widget/CalendarView$WeeksAdapter;)V

    .line 5
    iget-object p1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-static {p1}, Landroid/widget/CalendarView$WeeksAdapter;->access$400(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object p1

    .line 6
    iget-object p2, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/CalendarView;->setDate(J)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0, p2, v0}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    :goto_0
    return-void
.end method

.method public setMinDate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    iget-object p1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-static {p1}, Landroid/widget/CalendarView$WeeksAdapter;->access$400(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object p1

    .line 5
    iget-object p2, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Landroid/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 7
    :cond_1
    iget-object p2, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-static {p2}, Landroid/widget/CalendarView$WeeksAdapter;->access$500(Landroid/widget/CalendarView$WeeksAdapter;)V

    .line 8
    iget-object p2, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/CalendarView;->setDate(J)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0, p2, v0}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    :goto_0
    return-void
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/CalendarView;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/CalendarView;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 3
    iget-object v0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 4
    iput-object p1, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object p1, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 6
    iget-object v1, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarView$WeekView;

    .line 7
    invoke-static {v1}, Landroid/widget/CalendarView$WeekView;->access$100(Landroid/widget/CalendarView$WeekView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    .line 3
    iget-object p1, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 4
    iget-object v1, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarView$WeekView;

    .line 5
    invoke-static {v1}, Landroid/widget/CalendarView$WeekView;->access$100(Landroid/widget/CalendarView$WeekView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    .line 3
    iget-object p1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpHeader()V

    return-void
.end method

.method public setShownWeekCount(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    .line 3
    iget-object p1, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 4
    iget-object v1, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarView$WeekView;

    .line 5
    invoke-static {v1}, Landroid/widget/CalendarView$WeekView;->access$300(Landroid/widget/CalendarView$WeekView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    .line 3
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpHeader()V

    :cond_0
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    .line 3
    iget-boolean p1, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Landroid/widget/CalendarView;->invalidateAllWeekViews()V

    :cond_0
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    .line 3
    invoke-direct {p0}, Landroid/widget/CalendarView;->invalidateAllWeekViews()V

    :cond_0
    return-void
.end method
