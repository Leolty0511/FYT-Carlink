.class public Landroid/util/DayOfMonthCursor;
.super Landroid/util/MonthDisplayHelper;
.source "SourceFile"


# instance fields
.field private mColumn:I

.field private mRow:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p3}, Landroid/util/MonthDisplayHelper;->getRowOf(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 9
    .line 10
    invoke-virtual {p0, p3}, Landroid/util/MonthDisplayHelper;->getColumnOf(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public down()Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 6
    .line 7
    invoke-virtual {p0, v0, v2}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->nextMonth()V

    .line 21
    .line 22
    .line 23
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 24
    .line 25
    :goto_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 26
    .line 27
    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 28
    .line 29
    invoke-virtual {p0, v0, v2}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 36
    .line 37
    add-int/2addr v0, v1

    .line 38
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return v1
.end method

.method public getSelectedColumn()I
    .locals 1

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .locals 2

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/MonthDisplayHelper;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 2
    .line 3
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    return v0

    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 20
    return v0
.end method

.method public getSelectedRow()I
    .locals 1

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    return v0
.end method

.method public isSelected(II)Z
    .locals 1

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public left()Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 10
    .line 11
    const/4 v0, 0x6

    .line 12
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sub-int/2addr v0, v1

    .line 16
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 17
    .line 18
    :goto_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 19
    .line 20
    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 21
    .line 22
    invoke-virtual {p0, v0, v2}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    return v0

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->previousMonth()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->getNumberOfDaysInMonth()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0, v0}, Landroid/util/MonthDisplayHelper;->getRowOf(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/util/MonthDisplayHelper;->getColumnOf(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 48
    .line 49
    return v1
.end method

.method public right()Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 9
    .line 10
    add-int/2addr v0, v3

    .line 11
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 12
    .line 13
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    add-int/2addr v0, v3

    .line 17
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 18
    .line 19
    :goto_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 20
    .line 21
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->nextMonth()V

    .line 31
    .line 32
    .line 33
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 34
    .line 35
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 36
    .line 37
    :goto_1
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 38
    .line 39
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 48
    .line 49
    add-int/2addr v0, v3

    .line 50
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    return v3
.end method

.method public setSelectedDayOfMonth(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/MonthDisplayHelper;->getRowOf(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/MonthDisplayHelper;->getColumnOf(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 12
    .line 13
    return-void
.end method

.method public setSelectedRowColumn(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 2
    .line 3
    iput p2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 4
    .line 5
    return-void
.end method

.method public up()Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 6
    .line 7
    invoke-virtual {p0, v0, v2}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->previousMonth()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 25
    .line 26
    :goto_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 27
    .line 28
    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 29
    .line 30
    invoke-virtual {p0, v0, v2}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 37
    .line 38
    sub-int/2addr v0, v1

    .line 39
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return v1
.end method
