.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$SavedState;,
        Landroid/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final LOG_TAG:Ljava/lang/String; = "DatePicker"


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v0, Landroid/widget/DatePicker;->mIsEnabled:Z

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 7
    sget-object v3, Li/a;->DatePicker:[I

    const/4 v4, 0x0

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual {v1, v5, v3, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v5, 0x4

    .line 8
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/4 v6, 0x5

    .line 9
    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    const/16 v8, 0x76c

    .line 10
    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/16 v9, 0x834

    .line 11
    invoke-virtual {v3, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    const/4 v10, 0x2

    .line 12
    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    .line 13
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x6

    const v14, 0x1090038

    .line 14
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 15
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const-string v3, "layout_inflater"

    .line 16
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 17
    invoke-virtual {v1, v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    new-instance v1, Landroid/widget/DatePicker$1;

    invoke-direct {v1, v0}, Landroid/widget/DatePicker$1;-><init>(Landroid/widget/DatePicker;)V

    const v3, 0x10202a1

    .line 19
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    const v3, 0x10202a5

    .line 20
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CalendarView;

    iput-object v3, v0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    .line 21
    new-instance v13, Landroid/widget/DatePicker$2;

    invoke-direct {v13, v0}, Landroid/widget/DatePicker$2;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v3, v13}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    const v3, 0x10202a3

    .line 22
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    iput-object v3, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 23
    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    const-wide/16 v13, 0x64

    .line 24
    invoke-virtual {v3, v13, v14}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 25
    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    const v15, 0x10202f9

    .line 26
    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v0, Landroid/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    const v3, 0x10202a2

    .line 27
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    iput-object v3, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 28
    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 29
    iget v6, v0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    sub-int/2addr v6, v2

    invoke-virtual {v3, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 30
    iget-object v6, v0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    move-object v6, v11

    const-wide/16 v10, 0xc8

    .line 31
    invoke-virtual {v3, v10, v11}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 32
    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 33
    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v0, Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    const v3, 0x10202a4

    .line 34
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    iput-object v3, v0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 35
    invoke-virtual {v3, v13, v14}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 36
    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 37
    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroid/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    if-nez v5, :cond_0

    if-nez v7, :cond_0

    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/DatePicker;->setSpinnersShown(Z)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/DatePicker;->setSpinnersShown(Z)V

    .line 40
    invoke-virtual {v0, v7}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 41
    :goto_0
    iget-object v1, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 42
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    iget-object v1, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {v0, v6, v1}, Landroid/widget/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 44
    iget-object v1, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v8, v4, v2}, Ljava/util/Calendar;->set(III)V

    goto :goto_1

    .line 45
    :cond_1
    iget-object v1, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v8, v4, v2}, Ljava/util/Calendar;->set(III)V

    .line 46
    :cond_2
    :goto_1
    iget-object v1, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 47
    iget-object v1, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 48
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x1f

    const/16 v4, 0xb

    if-nez v1, :cond_3

    .line 49
    iget-object v1, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {v0, v12, v1}, Landroid/widget/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 50
    iget-object v1, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v9, v4, v3}, Ljava/util/Calendar;->set(III)V

    goto :goto_2

    .line 51
    :cond_3
    iget-object v1, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v9, v4, v3}, Ljava/util/Calendar;->set(III)V

    .line 52
    :cond_4
    :goto_2
    iget-object v1, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 53
    iget-object v1, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 54
    iget-object v1, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 55
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker;->reorderSpinners()V

    .line 56
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker;->setContentDescriptions()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_5
    return-void
.end method

.method public static synthetic access$000(Landroid/widget/DatePicker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateInputState()V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->setDate(III)V

    return-void
.end method

.method public static synthetic access$700(Landroid/widget/DatePicker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method public static synthetic access$800(Landroid/widget/DatePicker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    return-void
.end method

.method public static synthetic access$900(Landroid/widget/DatePicker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

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

.method private isNewDate(III)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 p3, 0x5

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private notifyDateChanged()V
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 2
    :catch_0
    sget-object p2, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

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

.method private reorderSpinners()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yyyyMMMdd"

    invoke-static {v1, v0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v0

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 5
    aget-char v3, v0, v2

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x64

    if-eq v3, v4, :cond_1

    const/16 v4, 0x79

    if-ne v3, v4, :cond_0

    .line 6
    iget-object v3, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    iget-object v3, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    iget-object v3, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    iget-object v3, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v3, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    iget-object v3, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x10202f8

    const v2, 0x10404f9

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 2
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const v2, 0x10202fa

    const v3, 0x10404fa

    invoke-direct {p0, v0, v2, v3}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 3
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v3, 0x10404f7

    invoke-direct {p0, v0, v1, v3}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 4
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v3, 0x10404f8

    invoke-direct {p0, v0, v2, v3}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 5
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v3, 0x10404fb

    invoke-direct {p0, v0, v1, v3}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 6
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404fc

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 3
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    .line 4
    iget-object v0, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    .line 5
    iget-object v0, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 6
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 7
    iget-object p1, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    .line 8
    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Landroid/widget/DatePicker;->usingNumericMonths()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget p1, p0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    const/4 p1, 0x0

    move v1, p1

    .line 11
    :goto_0
    iget v2, p0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    if-ge v1, v2, :cond_1

    .line 12
    iget-object v2, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, p1

    const-string v5, "%d"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDate(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 2
    iget-object p1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    if-ge p3, p2, :cond_0

    const/4 p2, 0x5

    goto :goto_0

    :cond_0
    const/4 p2, 0x6

    :goto_0
    const p3, 0x10202f9

    .line 1
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateCalendarView()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/CalendarView;->setDate(JZZ)V

    return-void
.end method

.method private updateInputState()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSpinners()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 3
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 4
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 5
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 7
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 8
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v6, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 11
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 12
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 13
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 15
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 16
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 18
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 19
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 20
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 22
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 23
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 24
    :goto_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    iget-object v6, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v0, v1, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 25
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 27
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 28
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 29
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 30
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 31
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 32
    invoke-direct {p0}, Landroid/widget/DatePicker;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    :cond_2
    return-void
.end method

.method private usingNumericMonths()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->setDate(III)V

    .line 2
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 3
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    .line 4
    iput-object p4, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/DatePicker;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Landroid/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/widget/DatePicker;

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
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/widget/DatePicker$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    invoke-static {p1}, Landroid/widget/DatePicker$SavedState;->access$1100(Landroid/widget/DatePicker$SavedState;)I

    move-result v0

    invoke-static {p1}, Landroid/widget/DatePicker$SavedState;->access$1200(Landroid/widget/DatePicker$SavedState;)I

    move-result v1

    invoke-static {p1}, Landroid/widget/DatePicker$SavedState;->access$1300(Landroid/widget/DatePicker$SavedState;)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/DatePicker;->setDate(III)V

    .line 4
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 5
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2
    new-instance v6, Landroid/widget/DatePicker$SavedState;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V

    return-object v6
.end method

.method public setCalendarViewShown(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/DatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 6
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 7
    iput-boolean p1, p0, Landroid/widget/DatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 5
    iget-object p1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 7
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    .line 8
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 5
    iget-object p1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 7
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    .line 8
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->setDate(III)V

    .line 3
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 4
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    .line 5
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method
