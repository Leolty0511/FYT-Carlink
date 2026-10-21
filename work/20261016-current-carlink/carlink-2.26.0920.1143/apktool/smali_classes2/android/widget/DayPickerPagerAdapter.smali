.class Landroid/widget/DayPickerPagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;,
        Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final MONTHS_IN_YEAR:I = 0xc


# instance fields
.field private mCalendarTextColor:Landroid/content/res/ColorStateList;

.field private final mCalendarViewId:I

.field private mCount:I

.field private mDayHighlightColor:Landroid/content/res/ColorStateList;

.field private mDayOfWeekTextAppearance:I

.field private mDaySelectorColor:Landroid/content/res/ColorStateList;

.field private mDayTextAppearance:I

.field private mFirstDayOfWeek:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/DayPickerPagerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutResId:I

.field private final mMaxDate:Landroid/icu/util/Calendar;

.field private final mMinDate:Landroid/icu/util/Calendar;

.field private mMonthTextAppearance:I

.field private final mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

.field private mSelectedDay:Landroid/icu/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/text/format/b;->j()Landroid/icu/util/Calendar;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    .line 9
    .line 10
    invoke-static {}, Landroid/text/format/b;->j()Landroid/icu/util/Calendar;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    .line 15
    .line 16
    new-instance v0, Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    .line 25
    .line 26
    new-instance v0, Landroid/widget/DayPickerPagerAdapter$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Landroid/widget/DayPickerPagerAdapter$1;-><init>(Landroid/widget/DayPickerPagerAdapter;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 32
    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    .line 39
    iput p2, p0, Landroid/widget/DayPickerPagerAdapter;->mLayoutResId:I

    .line 40
    .line 41
    iput p3, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    new-array p2, p2, [I

    .line 45
    .line 46
    const p3, 0x101042c

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    aput p3, p2, v0

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Landroid/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static synthetic access$000(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    return-object p0
.end method

.method private getMonthForPosition(I)I
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v0}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private getPositionForDay(Landroid/icu/util/Calendar;)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    invoke-static {p1}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    .line 21
    .line 22
    invoke-static {v1}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sub-int/2addr p1, v1

    .line 27
    mul-int/lit8 v0, v0, 0xc

    .line 28
    .line 29
    add-int/2addr v0, p1

    .line 30
    return v0
.end method

.method private getYearForPosition(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p1

    .line 8
    div-int/lit8 v0, v0, 0xc

    .line 9
    .line 10
    iget-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    add-int/2addr p1, v0

    .line 17
    return p1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 2
    .line 3
    iget-object p3, p3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/DayPickerPagerAdapter;->getPositionForDay(Landroid/icu/util/Calendar;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    invoke-static {p1}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v0, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mCount:I

    return v0
.end method

.method public getDayOfWeekTextAppearance()I
    .locals 1

    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    return v0
.end method

.method public getDayTextAppearance()I
    .locals 1

    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 2
    .line 3
    iget p1, p1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->position:I

    .line 4
    .line 5
    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 8
    .line 9
    iget-object p1, p1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/SimpleMonthView;->getMonthYearLabel()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public getView(Ljava/lang/Object;)Landroid/widget/SimpleMonthView;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    check-cast p1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 6
    .line 7
    iget-object p1, p1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .line 8
    .line 9
    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/DayPickerPagerAdapter;->mLayoutResId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/widget/SimpleMonthView;

    .line 17
    .line 18
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V

    .line 21
    .line 22
    .line 23
    iget v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setMonthTextAppearance(I)V

    .line 26
    .line 27
    .line 28
    iget v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayOfWeekTextAppearance(I)V

    .line 31
    .line 32
    .line 33
    iget v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayTextAppearance(I)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayHighlightColor(Landroid/content/res/ColorStateList;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setMonthTextColor(Landroid/content/res/ColorStateList;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/SimpleMonthView;->setDayTextColor(Landroid/content/res/ColorStateList;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/DayPickerPagerAdapter;->getMonthForPosition(I)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-direct {p0, p2}, Landroid/widget/DayPickerPagerAdapter;->getYearForPosition(I)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    .line 78
    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    invoke-static {v2}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-ne v2, v4, :cond_3

    .line 86
    .line 87
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    .line 88
    .line 89
    invoke-static {v2}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    const/4 v2, -0x1

    .line 95
    :goto_0
    move v3, v2

    .line 96
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    .line 97
    .line 98
    invoke-static {v2}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-ne v2, v4, :cond_4

    .line 103
    .line 104
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    .line 105
    .line 106
    invoke-static {v2}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-ne v2, v5, :cond_4

    .line 111
    .line 112
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    .line 113
    .line 114
    invoke-static {v2}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    const/4 v2, 0x1

    .line 120
    :goto_1
    move v7, v2

    .line 121
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    .line 122
    .line 123
    invoke-static {v2}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-ne v2, v4, :cond_5

    .line 128
    .line 129
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    .line 130
    .line 131
    invoke-static {v2}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-ne v2, v5, :cond_5

    .line 136
    .line 137
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    .line 138
    .line 139
    invoke-static {v2}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    goto :goto_2

    .line 144
    :cond_5
    const/16 v2, 0x1f

    .line 145
    .line 146
    :goto_2
    move v8, v2

    .line 147
    iget v6, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    .line 148
    .line 149
    move-object v2, v1

    .line 150
    invoke-virtual/range {v2 .. v8}, Landroid/widget/SimpleMonthView;->setMonthParams(IIIIII)V

    .line 151
    .line 152
    .line 153
    new-instance v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 154
    .line 155
    invoke-direct {v2, p2, v0, v1}, Landroid/widget/DayPickerPagerAdapter$ViewHolder;-><init>(ILandroid/view/View;Landroid/widget/SimpleMonthView;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 159
    .line 160
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    .line 165
    .line 166
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 2
    .line 3
    iget-object p2, p2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public setCalendarTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 3

    .line 1
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    .line 2
    .line 3
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 19
    .line 20
    iget-object v2, v2, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Landroid/widget/SimpleMonthView;->setFirstDayOfWeek(I)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public setMonthTextAppearance(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    return-void
.end method

.method public setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    .line 11
    .line 12
    invoke-static {p2}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {p1, v0, v1}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    .line 20
    .line 21
    invoke-static {p1}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object p2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    .line 26
    .line 27
    invoke-static {p2}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    sub-int/2addr p1, p2

    .line 32
    iget-object p2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    .line 33
    .line 34
    invoke-static {p2}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sub-int/2addr p2, v0

    .line 45
    mul-int/lit8 p1, p1, 0xc

    .line 46
    .line 47
    add-int/2addr p1, p2

    .line 48
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mCount:I

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public setSelectedDay(Landroid/icu/util/Calendar;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/widget/DayPickerPagerAdapter;->getPositionForDay(Landroid/icu/util/Calendar;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, p1}, Landroid/widget/DayPickerPagerAdapter;->getPositionForDay(Landroid/icu/util/Calendar;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    invoke-virtual {v0, v3}, Landroid/widget/SimpleMonthView;->setSelectedDay(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    if-ltz v1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-static {p1}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-object v0, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/SimpleMonthView;->setSelectedDay(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    .line 54
    .line 55
    return-void
.end method
