.class public Landroid/util/MonthDisplayHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mNumDaysInMonth:I

.field private mNumDaysInPrevMonth:I

.field private mOffset:I

.field private final mWeekStartDay:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, p1, p2, v0}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    const/4 v1, 0x7

    if-gt p3, v1, :cond_0

    .line 2
    iput p3, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    iput-object p3, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    .line 4
    invoke-virtual {p3, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 5
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->set(II)V

    .line 6
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    .line 7
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 8
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 9
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 10
    iget-object p1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 11
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private recalculate()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    .line 9
    .line 10
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInPrevMonth:I

    .line 24
    .line 25
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->getFirstDayOfMonth()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    .line 36
    .line 37
    sub-int/2addr v0, v1

    .line 38
    if-gez v0, :cond_0

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x7

    .line 41
    .line 42
    :cond_0
    iput v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public getColumnOf(I)I
    .locals 1

    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    rem-int/lit8 p1, p1, 0x7

    return p1
.end method

.method public getDayAt(II)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    .line 4
    .line 5
    if-ge p2, v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInPrevMonth:I

    .line 8
    .line 9
    add-int/2addr p1, p2

    .line 10
    sub-int/2addr p1, v0

    .line 11
    add-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    mul-int/lit8 p1, p1, 0x7

    .line 15
    .line 16
    add-int/2addr p1, p2

    .line 17
    iget p2, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    .line 18
    .line 19
    sub-int/2addr p1, p2

    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    iget p2, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    .line 23
    .line 24
    if-le p1, p2, :cond_1

    .line 25
    .line 26
    sub-int/2addr p1, p2

    .line 27
    :cond_1
    return p1
.end method

.method public getDigitsForRow(I)[I
    .locals 4

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    if-gt p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, v2}, Landroid/util/MonthDisplayHelper;->getDayAt(II)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    aput v3, v1, v2

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v1, "row "

    .line 25
    .line 26
    const-string v2, " out of range (0-5)"

    .line 27
    .line 28
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public getFirstDayOfMonth()I
    .locals 2

    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberOfDaysInMonth()I
    .locals 1

    iget v0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    return v0
.end method

.method public getRowOf(I)I
    .locals 1

    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x7

    return p1
.end method

.method public getWeekStartDay()I
    .locals 1

    iget v0, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    return v0
.end method

.method public getYear()I
    .locals 2

    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public isWithinCurrentMonth(II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_3

    .line 3
    .line 4
    if-ltz p2, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    if-gt p1, v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x6

    .line 10
    if-le p2, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    .line 16
    .line 17
    if-ge p2, v1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    mul-int/lit8 p1, p1, 0x7

    .line 21
    .line 22
    add-int/2addr p1, p2

    .line 23
    iget p2, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    .line 24
    .line 25
    sub-int/2addr p1, p2

    .line 26
    const/4 p2, 0x1

    .line 27
    add-int/2addr p1, p2

    .line 28
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    .line 29
    .line 30
    if-le p1, v1, :cond_2

    .line 31
    .line 32
    return v0

    .line 33
    :cond_2
    return p2

    .line 34
    :cond_3
    :goto_0
    return v0
.end method

.method public nextMonth()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public previousMonth()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
