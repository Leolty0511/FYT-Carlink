.class Landroid/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleMonthView$OnDayClickListener;,
        Landroid/widget/SimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field private static final DAYS_IN_WEEK:I = 0x7

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final MAX_WEEKS_IN_MONTH:I = 0x6

.field private static final MONTH_YEAR_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final SELECTED_HIGHLIGHT_ALPHA:I = 0xb0


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Landroid/icu/util/Calendar;

.field private mCellWidth:I

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabels:[Ljava/lang/String;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private mDaySelectorRadius:I

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private final mDesiredCellWidth:I

.field private final mDesiredDayHeight:I

.field private final mDesiredDayOfWeekHeight:I

.field private final mDesiredDaySelectorRadius:I

.field private final mDesiredMonthHeight:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mHighlightedDay:I

.field private mIsTouchHighlighted:Z

.field private final mLocale:Ljava/util/Locale;

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mMonthYearLabel:Ljava/lang/String;

.field private mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mPreviouslyHighlightedDay:I

.field private mToday:I

.field private final mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 6
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 7
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 8
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 9
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 10
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 p2, 0x7

    new-array p2, p2, [Ljava/lang/String;

    .line 11
    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    const/4 p2, -0x1

    .line 12
    iput p2, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 13
    iput p2, p0, Landroid/widget/SimpleMonthView;->mToday:I

    const/4 p3, 0x1

    .line 14
    iput p3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 15
    iput p3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    const/16 p4, 0x1f

    .line 16
    iput p4, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 17
    iput p2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 18
    iput p2, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    const/4 p2, 0x0

    .line 19
    iput-boolean p2, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050054

    .line 21
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    const p2, 0x105004f

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    const p2, 0x105004e

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    const p2, 0x1050053

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    const p2, 0x1050051

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 26
    new-instance p2, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {p2, p0, p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 27
    invoke-virtual {p0, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 28
    invoke-virtual {p0, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 29
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 30
    invoke-static {p2}, Landroid/text/format/b;->k(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    .line 31
    invoke-static {p2}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 32
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 33
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/widget/SimpleMonthView;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Landroid/widget/SimpleMonthView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    return p0
.end method

.method public static synthetic access$200(Landroid/widget/SimpleMonthView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Landroid/widget/SimpleMonthView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    return p0
.end method

.method public static synthetic access$400(Landroid/widget/SimpleMonthView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Landroid/widget/SimpleMonthView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Landroid/widget/SimpleMonthView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    return p0
.end method

.method public static synthetic access$700(Landroid/widget/SimpleMonthView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    return p0
.end method

.method public static synthetic access$800(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;
    .locals 0

    iget-object p0, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object p0
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v1, Lcom/android/internal/R$styleable;->TextAppearance:[I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v2, v1, v3, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/16 v0, 0xc

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    float-to-int v0, v0

    .line 31
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    int-to-float v0, v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    sget-object v1, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 6
    .line 7
    iget v3, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 8
    .line 9
    iget v4, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 10
    .line 11
    add-int/2addr v3, v4

    .line 12
    iget v4, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 13
    .line 14
    iget v5, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    add-float/2addr v7, v6

    .line 25
    const/high16 v6, 0x40000000    # 2.0f

    .line 26
    .line 27
    div-float/2addr v7, v6

    .line 28
    div-int/lit8 v6, v4, 0x2

    .line 29
    .line 30
    add-int/2addr v6, v3

    .line 31
    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v9, 0x1

    .line 36
    :goto_0
    iget v10, v0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 37
    .line 38
    if-gt v9, v10, :cond_a

    .line 39
    .line 40
    mul-int v10, v5, v3

    .line 41
    .line 42
    div-int/lit8 v11, v5, 0x2

    .line 43
    .line 44
    add-int/2addr v11, v10

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    if-eqz v10, :cond_0

    .line 50
    .line 51
    iget v10, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 52
    .line 53
    sub-int v11, v10, v11

    .line 54
    .line 55
    :cond_0
    invoke-direct {v0, v9}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-eqz v10, :cond_1

    .line 60
    .line 61
    const/16 v13, 0x8

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 v13, 0x0

    .line 65
    :goto_1
    iget v14, v0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 66
    .line 67
    if-ne v14, v9, :cond_2

    .line 68
    .line 69
    const/4 v14, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    const/4 v14, 0x0

    .line 72
    :goto_2
    iget v15, v0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 73
    .line 74
    if-ne v15, v9, :cond_3

    .line 75
    .line 76
    const/4 v15, 0x1

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    const/4 v15, 0x0

    .line 79
    :goto_3
    if-eqz v14, :cond_5

    .line 80
    .line 81
    or-int/lit8 v13, v13, 0x20

    .line 82
    .line 83
    if-eqz v15, :cond_4

    .line 84
    .line 85
    iget-object v10, v0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_4
    iget-object v10, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 89
    .line 90
    :goto_4
    int-to-float v15, v11

    .line 91
    int-to-float v8, v6

    .line 92
    iget v12, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    .line 93
    .line 94
    int-to-float v12, v12

    .line 95
    invoke-virtual {v1, v15, v8, v12, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 96
    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_5
    if-eqz v15, :cond_6

    .line 100
    .line 101
    or-int/lit8 v13, v13, 0x10

    .line 102
    .line 103
    if-eqz v10, :cond_6

    .line 104
    .line 105
    int-to-float v8, v11

    .line 106
    int-to-float v10, v6

    .line 107
    iget v12, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    .line 108
    .line 109
    int-to-float v12, v12

    .line 110
    iget-object v15, v0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 111
    .line 112
    invoke-virtual {v1, v8, v10, v12, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    :goto_5
    iget v8, v0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 116
    .line 117
    if-ne v8, v9, :cond_7

    .line 118
    .line 119
    const/4 v8, 0x1

    .line 120
    goto :goto_6

    .line 121
    :cond_7
    const/4 v8, 0x0

    .line 122
    :goto_6
    if-eqz v8, :cond_8

    .line 123
    .line 124
    if-nez v14, :cond_8

    .line 125
    .line 126
    iget-object v8, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 127
    .line 128
    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    const/4 v12, 0x0

    .line 133
    goto :goto_7

    .line 134
    :cond_8
    invoke-static {v13}, Landroid/util/StateSet;->get(I)[I

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    iget-object v10, v0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 139
    .line 140
    const/4 v12, 0x0

    .line 141
    invoke-virtual {v10, v8, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    :goto_7
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    .line 147
    .line 148
    iget-object v8, v0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 149
    .line 150
    int-to-long v13, v9

    .line 151
    invoke-virtual {v8, v13, v14}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    int-to-float v10, v11

    .line 156
    int-to-float v11, v6

    .line 157
    sub-float/2addr v11, v7

    .line 158
    invoke-virtual {v1, v8, v10, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v3, v3, 0x1

    .line 162
    .line 163
    const/4 v8, 0x7

    .line 164
    if-ne v3, v8, :cond_9

    .line 165
    .line 166
    add-int/2addr v6, v4

    .line 167
    move v3, v12

    .line 168
    :cond_9
    add-int/lit8 v9, v9, 0x1

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_a
    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 4
    .line 5
    iget v2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 6
    .line 7
    iget v3, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    add-float/2addr v5, v4

    .line 18
    const/high16 v4, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float/2addr v5, v4

    .line 21
    div-int/lit8 v2, v2, 0x2

    .line 22
    .line 23
    add-int/2addr v2, v1

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    const/4 v4, 0x7

    .line 26
    if-ge v1, v4, :cond_1

    .line 27
    .line 28
    mul-int v4, v3, v1

    .line 29
    .line 30
    div-int/lit8 v6, v3, 0x2

    .line 31
    .line 32
    add-int/2addr v6, v4

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    iget v4, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 40
    .line 41
    sub-int v6, v4, v6

    .line 42
    .line 43
    :cond_0
    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    .line 44
    .line 45
    aget-object v4, v4, v1

    .line 46
    .line 47
    int-to-float v6, v6

    .line 48
    int-to-float v7, v2

    .line 49
    sub-float/2addr v7, v5

    .line 50
    invoke-virtual {p1, v4, v6, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    .line 6
    div-float/2addr v0, v1

    .line 7
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-float/2addr v3, v2

    .line 20
    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 21
    .line 22
    int-to-float v2, v2

    .line 23
    sub-float/2addr v2, v3

    .line 24
    div-float/2addr v2, v1

    .line 25
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private ensureFocusedDay()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 15
    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    const/4 v0, 0x1

    .line 22
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 23
    .line 24
    return-void
.end method

.method private findClosestColumn(Landroid/graphics/Rect;)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 10
    .line 11
    sub-int/2addr p1, v0

    .line 12
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "centerX="

    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "SimpleMonthView"

    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    new-instance p1, Ljava/lang/Throwable;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    const-string v2, "Throw"

    .line 51
    .line 52
    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :cond_1
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 57
    .line 58
    div-int/2addr p1, v0

    .line 59
    const/4 v0, 0x6

    .line 60
    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    rsub-int/lit8 p1, p1, 0x7

    .line 71
    .line 72
    add-int/lit8 p1, p1, -0x1

    .line 73
    .line 74
    :cond_2
    return p1
.end method

.method private findClosestRow(Landroid/graphics/Rect;)I
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 10
    .line 11
    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 12
    .line 13
    iget v2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 14
    .line 15
    add-int/2addr v1, v2

    .line 16
    iget v2, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-float/2addr v0, v3

    .line 27
    const/high16 v3, 0x40000000    # 2.0f

    .line 28
    .line 29
    div-float/2addr v0, v3

    .line 30
    div-int/lit8 v3, v2, 0x2

    .line 31
    .line 32
    add-int/2addr v3, v1

    .line 33
    int-to-float p1, p1

    .line 34
    int-to-float v1, v3

    .line 35
    sub-float/2addr v1, v0

    .line 36
    sub-float/2addr p1, v1

    .line 37
    float-to-int p1, p1

    .line 38
    int-to-float p1, p1

    .line 39
    int-to-float v0, v2

    .line 40
    div-float/2addr p1, v0

    .line 41
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 50
    .line 51
    add-int/2addr v0, v1

    .line 52
    div-int/lit8 v1, v0, 0x7

    .line 53
    .line 54
    rem-int/lit8 v0, v0, 0x7

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v0, v2

    .line 62
    :goto_0
    sub-int/2addr v1, v0

    .line 63
    invoke-static {p1, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method private findDayOffset()I
    .locals 3

    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    sub-int v2, v0, v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v2, v2, 0x7

    :cond_0
    return v2
.end method

.method private getDayAtLocation(II)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr p1, v0

    .line 6
    const/4 v0, -0x1

    .line 7
    if-ltz p1, :cond_4

    .line 8
    .line 9
    iget v1, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 10
    .line 11
    if-lt p1, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 15
    .line 16
    iget v2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 17
    .line 18
    add-int/2addr v1, v2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sub-int/2addr p2, v2

    .line 24
    if-lt p2, v1, :cond_4

    .line 25
    .line 26
    iget v2, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    .line 27
    .line 28
    if-lt p2, v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget v2, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 38
    .line 39
    sub-int p1, v2, p1

    .line 40
    .line 41
    :cond_2
    sub-int/2addr p2, v1

    .line 42
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 43
    .line 44
    div-int/2addr p2, v1

    .line 45
    mul-int/lit8 p1, p1, 0x7

    .line 46
    .line 47
    iget v1, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 48
    .line 49
    div-int/2addr p1, v1

    .line 50
    mul-int/lit8 p2, p2, 0x7

    .line 51
    .line 52
    add-int/2addr p2, p1

    .line 53
    add-int/lit8 p2, p2, 0x1

    .line 54
    .line 55
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    sub-int/2addr p2, p1

    .line 60
    invoke-direct {p0, p2}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    return v0

    .line 67
    :cond_3
    return p2

    .line 68
    :cond_4
    :goto_0
    return v0
.end method

.method private static getDaysInMonth(II)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string p1, "Invalid Month"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0

    .line 12
    :pswitch_0
    const/16 p0, 0x1e

    .line 13
    .line 14
    return p0

    .line 15
    :pswitch_1
    rem-int/lit8 p1, p1, 0x4

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/16 p0, 0x1d

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 p0, 0x1c

    .line 23
    .line 24
    :goto_0
    return p0

    .line 25
    :pswitch_2
    const/16 p0, 0x1f

    .line 26
    .line 27
    return p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initPaints(Landroid/content/res/Resources;)V
    .locals 8

    .line 1
    const v0, 0x104018a

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x1040180

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x1040181

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const v3, 0x1050055

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const v4, 0x1050050

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const v5, 0x1050052

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object v5, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v5, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 50
    .line 51
    int-to-float v3, v3

    .line 52
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 66
    .line 67
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 73
    .line 74
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 75
    .line 76
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 80
    .line 81
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 85
    .line 86
    int-to-float v4, v4

    .line 87
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 91
    .line 92
    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 100
    .line 101
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 105
    .line 106
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 110
    .line 111
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 115
    .line 116
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 120
    .line 121
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 125
    .line 126
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 130
    .line 131
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 140
    .line 141
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 145
    .line 146
    int-to-float p1, p1

    .line 147
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 151
    .line 152
    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 160
    .line 161
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 165
    .line 166
    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method private isDayEnabled(I)Z
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isFirstDayOfWeek(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p1

    .line 6
    const/4 p1, 0x1

    .line 7
    sub-int/2addr v0, p1

    .line 8
    rem-int/lit8 v0, v0, 0x7

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method private isLastDayOfWeek(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p1

    .line 6
    rem-int/lit8 v0, v0, 0x7

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method private isValidDayOfMonth(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidMonth(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private moveOneDay(Z)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isLastDayOfWeek(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 16
    .line 17
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 18
    .line 19
    if-ge p1, v1, :cond_1

    .line 20
    .line 21
    add-int/2addr p1, v0

    .line 22
    iput p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 26
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isFirstDayOfWeek(I)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    iget p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 34
    .line 35
    if-le p1, v0, :cond_1

    .line 36
    .line 37
    sub-int/2addr p1, v0

    .line 38
    iput p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0
.end method

.method private onDayClicked(I)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/text/format/b;->j()Landroid/icu/util/Calendar;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    .line 23
    .line 24
    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    .line 25
    .line 26
    invoke-static {v0, v1, v2, p1}, Landroid/widget/b;->n(Landroid/icu/util/Calendar;III)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 30
    .line 31
    invoke-interface {v1, p0, v0}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Landroid/widget/SimpleMonthView;Landroid/icu/util/Calendar;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method private sameDay(ILandroid/icu/util/Calendar;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    .line 2
    .line 3
    invoke-static {p2}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    .line 10
    .line 11
    invoke-static {p2}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-static {p2}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-ne p1, p2, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method

.method private updateDayOfWeekLabels()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    const/4 v2, 0x7

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    .line 14
    .line 15
    iget v4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 16
    .line 17
    add-int/2addr v4, v1

    .line 18
    add-int/lit8 v4, v4, -0x1

    .line 19
    .line 20
    rem-int/2addr v4, v2

    .line 21
    add-int/lit8 v4, v4, 0x1

    .line 22
    .line 23
    aget-object v2, v0, v4

    .line 24
    .line 25
    aput-object v2, v3, v1

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private updateMonthYearLabel()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 2
    .line 3
    const-string v1, "MMMMy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/widget/d;->g()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/widget/d;->b(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/SimpleDateFormat;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Landroid/widget/b;->d()Landroid/icu/text/DisplayContext;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/widget/d;->h(Landroid/icu/text/SimpleDateFormat;Landroid/icu/text/DisplayContext;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    .line 26
    .line 27
    invoke-static {v1}, Landroid/widget/b;->i(Landroid/icu/util/Calendar;)Ljava/util/Date;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/widget/d;->d(Landroid/icu/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    sub-int/2addr p1, v0

    .line 11
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr p1, v1

    .line 16
    rem-int/lit8 v1, p1, 0x7

    .line 17
    .line 18
    iget v2, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    sub-int/2addr v3, v4

    .line 35
    add-int/2addr v1, v0

    .line 36
    mul-int/2addr v1, v2

    .line 37
    sub-int/2addr v3, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    mul-int/2addr v1, v2

    .line 44
    add-int/2addr v3, v1

    .line 45
    :goto_0
    div-int/lit8 p1, p1, 0x7

    .line 46
    .line 47
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 48
    .line 49
    iget v4, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 50
    .line 51
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 52
    .line 53
    add-int/2addr v4, v5

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    add-int/2addr v5, v4

    .line 59
    mul-int/2addr p1, v1

    .line 60
    add-int/2addr p1, v5

    .line 61
    add-int/2addr v2, v3

    .line 62
    add-int/2addr v1, p1

    .line 63
    invoke-virtual {p2, v3, p1, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 64
    .line 65
    .line 66
    return v0
.end method

.method public getCellWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public getMonthHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    return v0
.end method

.method public getMonthYearLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v2, v0

    .line 10
    int-to-float v3, v1

    .line 11
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    .line 21
    .line 22
    .line 23
    neg-int v0, v0

    .line 24
    int-to-float v0, v0

    .line 25
    neg-int v1, v1

    .line 26
    int-to-float v1, v1

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x11

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq p2, v1, :cond_6

    .line 11
    .line 12
    const/16 v1, 0x21

    .line 13
    .line 14
    if-eq p2, v1, :cond_4

    .line 15
    .line 16
    const/16 v1, 0x42

    .line 17
    .line 18
    if-eq p2, v1, :cond_2

    .line 19
    .line 20
    const/16 v1, 0x82

    .line 21
    .line 22
    if-eq p2, v1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sub-int/2addr v1, v0

    .line 30
    add-int/2addr v1, v2

    .line 31
    if-ge v1, v2, :cond_1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x7

    .line 34
    .line 35
    :cond_1
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    mul-int/lit8 v1, v1, 0x7

    .line 46
    .line 47
    sub-int/2addr v1, v0

    .line 48
    add-int/2addr v2, v1

    .line 49
    :goto_0
    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 57
    .line 58
    add-int v4, v0, v3

    .line 59
    .line 60
    div-int/lit8 v4, v4, 0x7

    .line 61
    .line 62
    sub-int/2addr v1, v0

    .line 63
    mul-int/lit8 v4, v4, 0x7

    .line 64
    .line 65
    add-int/2addr v4, v1

    .line 66
    add-int/2addr v4, v2

    .line 67
    if-le v4, v3, :cond_5

    .line 68
    .line 69
    add-int/lit8 v4, v4, -0x7

    .line 70
    .line 71
    :cond_5
    iput v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_6
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v1, v2

    .line 79
    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 80
    .line 81
    mul-int/lit8 v1, v1, 0x7

    .line 82
    .line 83
    sub-int/2addr v1, v0

    .line 84
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 89
    .line 90
    :goto_1
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 94
    .line 95
    .line 96
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public onFocusLost()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 6
    .line 7
    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onFocusLost()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3d

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x42

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    xor-int/2addr v0, v2

    .line 32
    invoke-direct {p0, v0}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-direct {p0, v0}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    goto :goto_2

    .line 53
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 60
    .line 61
    .line 62
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 63
    .line 64
    iget v4, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 65
    .line 66
    sub-int/2addr v4, v1

    .line 67
    if-gt v0, v4, :cond_6

    .line 68
    .line 69
    add-int/2addr v0, v1

    .line 70
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 80
    .line 81
    .line 82
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 83
    .line 84
    if-le v0, v1, :cond_6

    .line 85
    .line 86
    sub-int/2addr v0, v1

    .line 87
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 88
    .line 89
    :goto_0
    move v3, v2

    .line 90
    goto :goto_2

    .line 91
    :cond_0
    :pswitch_4
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 92
    .line 93
    const/4 v1, -0x1

    .line 94
    if-eq v0, v1, :cond_6

    .line 95
    .line 96
    invoke-direct {p0, v0}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 97
    .line 98
    .line 99
    return v2

    .line 100
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    const/4 v0, 0x2

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    move v0, v2

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    move v0, v3

    .line 117
    :goto_1
    if-eqz v0, :cond_6

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    move-object v4, p0

    .line 124
    :cond_4
    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    if-eq v4, p0, :cond_5

    .line 131
    .line 132
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    if-eq v5, v1, :cond_4

    .line 137
    .line 138
    :cond_5
    if-eqz v4, :cond_6

    .line 139
    .line 140
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 141
    .line 142
    .line 143
    return v2

    .line 144
    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 147
    .line 148
    .line 149
    return v2

    .line 150
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    return p1

    .line 155
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sub-int/2addr p4, p2

    .line 5
    sub-int/2addr p5, p3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sub-int/2addr p4, p3

    .line 23
    sub-int/2addr p5, v0

    .line 24
    sub-int/2addr p4, p1

    .line 25
    sub-int/2addr p5, p2

    .line 26
    iget v1, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 27
    .line 28
    if-eq p4, v1, :cond_2

    .line 29
    .line 30
    iget v1, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    .line 31
    .line 32
    if-ne p5, v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput p4, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 36
    .line 37
    iput p5, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    sub-int/2addr p4, p2

    .line 44
    sub-int/2addr p4, v0

    .line 45
    int-to-float p2, p5

    .line 46
    int-to-float p4, p4

    .line 47
    div-float/2addr p2, p4

    .line 48
    iget p4, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 49
    .line 50
    int-to-float p4, p4

    .line 51
    mul-float/2addr p4, p2

    .line 52
    float-to-int p4, p4

    .line 53
    iget p5, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 54
    .line 55
    div-int/lit8 p5, p5, 0x7

    .line 56
    .line 57
    iput p4, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 58
    .line 59
    iget p4, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 60
    .line 61
    int-to-float p4, p4

    .line 62
    mul-float/2addr p4, p2

    .line 63
    float-to-int p4, p4

    .line 64
    iput p4, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 65
    .line 66
    iget p4, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    .line 67
    .line 68
    int-to-float p4, p4

    .line 69
    mul-float/2addr p4, p2

    .line 70
    float-to-int p2, p4

    .line 71
    iput p2, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 72
    .line 73
    iput p5, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 74
    .line 75
    div-int/lit8 p5, p5, 0x2

    .line 76
    .line 77
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    add-int/2addr p1, p5

    .line 82
    iget p2, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 83
    .line 84
    div-int/lit8 p2, p2, 0x2

    .line 85
    .line 86
    add-int/2addr p2, v0

    .line 87
    iget p3, p0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 88
    .line 89
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    iput p1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    .line 98
    .line 99
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x6

    .line 4
    .line 5
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    .line 22
    .line 23
    mul-int/lit8 v1, v1, 0x7

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/2addr v2, v1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v1, v2

    .line 35
    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/high16 v1, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr v0, v1

    .line 16
    float-to-int v0, v0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-float/2addr v2, v1

    .line 22
    float-to-int v1, v2

    .line 23
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ltz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/16 p2, 0x3ea

    .line 34
    .line 35
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f000000    # 0.5f

    .line 6
    .line 7
    add-float/2addr v0, v1

    .line 8
    float-to-int v0, v0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-float/2addr v2, v1

    .line 14
    float-to-int v1, v2

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    if-eq p1, v3, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    if-eq p1, v4, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p1, -0x1

    .line 40
    iput p1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 41
    .line 42
    iput-boolean v2, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput-boolean v3, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 53
    .line 54
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 55
    .line 56
    if-eq v1, v0, :cond_3

    .line 57
    .line 58
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 59
    .line 60
    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 63
    .line 64
    .line 65
    :cond_3
    if-nez p1, :cond_4

    .line 66
    .line 67
    if-gez v0, :cond_4

    .line 68
    .line 69
    return v2

    .line 70
    :cond_4
    :goto_0
    return v3
.end method

.method public setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 23
    .line 24
    const/16 v0, 0xb0

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/widget/b;->B(Landroid/icu/util/Calendar;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 17
    .line 18
    :goto_0
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setMonthParams(IIIIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 2
    .line 3
    invoke-static {p2}, Landroid/widget/SimpleMonthView;->isValidMonth(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    .line 10
    .line 11
    :cond_0
    iput p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    .line 12
    .line 13
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    .line 14
    .line 15
    iget p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroid/widget/d;->j(Landroid/icu/util/Calendar;I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    .line 21
    .line 22
    iget p2, p0, Landroid/widget/SimpleMonthView;->mYear:I

    .line 23
    .line 24
    invoke-static {p1, p2}, Landroid/widget/b;->w(Landroid/icu/util/Calendar;I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    .line 28
    .line 29
    invoke-static {p1}, Landroid/text/format/b;->s(Landroid/icu/util/Calendar;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    .line 33
    .line 34
    invoke-static {p1}, Landroid/widget/b;->q(Landroid/icu/util/Calendar;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    .line 39
    .line 40
    invoke-static {p4}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iput p4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    .line 50
    .line 51
    invoke-static {p1}, Landroid/widget/b;->B(Landroid/icu/util/Calendar;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 56
    .line 57
    :goto_0
    invoke-static {}, Landroid/text/format/b;->j()Landroid/icu/util/Calendar;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 p2, -0x1

    .line 62
    iput p2, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 63
    .line 64
    iget p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    .line 65
    .line 66
    iget p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    .line 67
    .line 68
    invoke-static {p2, p3}, Landroid/widget/SimpleMonthView;->getDaysInMonth(II)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    iput p2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 73
    .line 74
    const/4 p2, 0x0

    .line 75
    :cond_2
    :goto_1
    iget p3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 76
    .line 77
    if-ge p2, p3, :cond_3

    .line 78
    .line 79
    add-int/lit8 p2, p2, 0x1

    .line 80
    .line 81
    invoke-direct {p0, p2, p1}, Landroid/widget/SimpleMonthView;->sameDay(ILandroid/icu/util/Calendar;)Z

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    if-eqz p3, :cond_2

    .line 86
    .line 87
    iput p2, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/4 p1, 0x1

    .line 91
    invoke-static {p5, p1, p3}, Landroid/util/MathUtils;->constrain(III)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput p1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 96
    .line 97
    iget p2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 98
    .line 99
    invoke-static {p6, p1, p2}, Landroid/util/MathUtils;->constrain(III)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iput p1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 104
    .line 105
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public setMonthTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    return-void
.end method

.method public setSelectedDay(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 2
    .line 3
    iget-object p1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
