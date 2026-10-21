.class Landroid/widget/CalendarViewLegacyDelegate$WeekView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeekView"
.end annotation


# instance fields
.field private mDayNumbers:[Ljava/lang/String;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFirstDay:Landroid/icu/util/Calendar;

.field private mFocusDay:[Z

.field private mHasFocusedDay:Z

.field private mHasSelectedDay:Z

.field private mHasUnfocusedDay:Z

.field private mHeight:I

.field private mLastWeekDayMonth:I

.field private final mMonthNumDrawPaint:Landroid/graphics/Paint;

.field private mMonthOfFirstWeekDay:I

.field private mNumCells:I

.field private mSelectedDay:I

.field private mSelectedLeft:I

.field private mSelectedRight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWeek:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    new-instance p1, Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/4 p1, -0x1

    .line 28
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    .line 29
    .line 30
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    .line 31
    .line 32
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    .line 36
    .line 37
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    .line 38
    .line 39
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    .line 40
    .line 41
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    .line 42
    .line 43
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->initializePaints()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static synthetic access$100(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    return p0
.end method

.method public static synthetic access$200(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    return p0
.end method

.method public static synthetic access$300(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    return p0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2400(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 18
    .line 19
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 20
    .line 21
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2500(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    .line 30
    .line 31
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 41
    .line 42
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    .line 45
    .line 46
    add-int/lit8 v1, v1, -0x2

    .line 47
    .line 48
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 52
    .line 53
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 54
    .line 55
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 62
    .line 63
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 64
    .line 65
    div-int/2addr v1, v3

    .line 66
    :cond_2
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 67
    .line 68
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 69
    .line 70
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    .line 71
    .line 72
    add-int/lit8 v2, v2, -0x2

    .line 73
    .line 74
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 75
    .line 76
    :goto_0
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 77
    .line 78
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 79
    .line 80
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 81
    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 86
    .line 87
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x3

    .line 90
    .line 91
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 92
    .line 93
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 94
    .line 95
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 102
    .line 103
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 104
    .line 105
    div-int v2, v1, v2

    .line 106
    .line 107
    sub-int/2addr v1, v2

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 110
    .line 111
    :goto_1
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 115
    .line 116
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    .line 117
    .line 118
    add-int/lit8 v1, v1, 0x3

    .line 119
    .line 120
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 121
    .line 122
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 123
    .line 124
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 125
    .line 126
    :goto_2
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 127
    .line 128
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 129
    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method private drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$3100(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    .line 13
    .line 14
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 15
    .line 16
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$3000(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    div-int/lit8 v2, v2, 0x2

    .line 21
    .line 22
    sub-int/2addr v1, v2

    .line 23
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 24
    .line 25
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2500(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    .line 30
    .line 31
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 32
    .line 33
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$3000(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    div-int/lit8 v4, v4, 0x2

    .line 38
    .line 39
    add-int/2addr v4, v3

    .line 40
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 46
    .line 47
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$3100(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 55
    .line 56
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$3100(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    .line 61
    .line 62
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 63
    .line 64
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$3000(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    div-int/lit8 v2, v2, 0x2

    .line 69
    .line 70
    sub-int/2addr v1, v2

    .line 71
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 72
    .line 73
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2500(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    .line 78
    .line 79
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 80
    .line 81
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$3000(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    div-int/lit8 v4, v4, 0x2

    .line 86
    .line 87
    add-int/2addr v4, v3

    .line 88
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 94
    .line 95
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$3100(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method private drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    add-float/2addr v1, v0

    .line 11
    const/high16 v0, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr v1, v0

    .line 14
    float-to-int v0, v1

    .line 15
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2500(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 23
    .line 24
    mul-int/lit8 v2, v1, 0x2

    .line 25
    .line 26
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 34
    .line 35
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 36
    .line 37
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$2300(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    int-to-float v4, v4

    .line 42
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/4 v4, 0x1

    .line 50
    const/4 v5, 0x0

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    move v3, v5

    .line 54
    :goto_0
    add-int/lit8 v6, v1, -0x1

    .line 55
    .line 56
    if-ge v3, v6, :cond_1

    .line 57
    .line 58
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 59
    .line 60
    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    .line 61
    .line 62
    aget-boolean v8, v8, v3

    .line 63
    .line 64
    if-eqz v8, :cond_0

    .line 65
    .line 66
    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 67
    .line 68
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$2600(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 74
    .line 75
    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->access$2700(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    :goto_1
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    .line 81
    .line 82
    mul-int/lit8 v7, v3, 0x2

    .line 83
    .line 84
    add-int/2addr v7, v4

    .line 85
    iget v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 86
    .line 87
    mul-int/2addr v7, v8

    .line 88
    div-int/2addr v7, v2

    .line 89
    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 90
    .line 91
    sub-int/2addr v6, v3

    .line 92
    aget-object v6, v8, v6

    .line 93
    .line 94
    int-to-float v7, v7

    .line 95
    int-to-float v8, v0

    .line 96
    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 97
    .line 98
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 105
    .line 106
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 113
    .line 114
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 115
    .line 116
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    .line 122
    .line 123
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 124
    .line 125
    div-int v2, v1, v2

    .line 126
    .line 127
    sub-int/2addr v1, v2

    .line 128
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 129
    .line 130
    aget-object v2, v2, v5

    .line 131
    .line 132
    int-to-float v1, v1

    .line 133
    int-to-float v0, v0

    .line 134
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_2
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 141
    .line 142
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_3

    .line 147
    .line 148
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 149
    .line 150
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 151
    .line 152
    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    .line 158
    .line 159
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 160
    .line 161
    div-int/2addr v3, v2

    .line 162
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 163
    .line 164
    aget-object v5, v6, v5

    .line 165
    .line 166
    int-to-float v3, v3

    .line 167
    int-to-float v6, v0

    .line 168
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 169
    .line 170
    invoke-virtual {p1, v5, v3, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 171
    .line 172
    .line 173
    move v5, v4

    .line 174
    :cond_3
    :goto_2
    if-ge v5, v1, :cond_5

    .line 175
    .line 176
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 177
    .line 178
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    .line 179
    .line 180
    aget-boolean v6, v6, v5

    .line 181
    .line 182
    if-eqz v6, :cond_4

    .line 183
    .line 184
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 185
    .line 186
    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->access$2600(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    goto :goto_3

    .line 191
    :cond_4
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 192
    .line 193
    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->access$2700(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    :goto_3
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    .line 199
    .line 200
    mul-int/lit8 v3, v5, 0x2

    .line 201
    .line 202
    add-int/2addr v3, v4

    .line 203
    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 204
    .line 205
    mul-int/2addr v3, v6

    .line 206
    div-int/2addr v3, v2

    .line 207
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 208
    .line 209
    aget-object v6, v6, v5

    .line 210
    .line 211
    int-to-float v3, v3

    .line 212
    int-to-float v7, v0

    .line 213
    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 214
    .line 215
    invoke-virtual {p1, v6, v3, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 216
    .line 217
    .line 218
    add-int/lit8 v5, v5, 0x1

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_5
    :goto_4
    return-void
.end method

.method private drawWeekSeparators(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-gez v1, :cond_0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    :cond_0
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 36
    .line 37
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 38
    .line 39
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2900(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 47
    .line 48
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 49
    .line 50
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2500(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    int-to-float v1, v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v1, 0x0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 66
    .line 67
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 74
    .line 75
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 76
    .line 77
    div-int v2, v0, v2

    .line 78
    .line 79
    sub-int/2addr v0, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 85
    .line 86
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 93
    .line 94
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 95
    .line 96
    div-int/2addr v0, v1

    .line 97
    int-to-float v0, v0

    .line 98
    move v1, v0

    .line 99
    :cond_4
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 100
    .line 101
    :goto_0
    int-to-float v0, v0

    .line 102
    move v5, v0

    .line 103
    move v3, v1

    .line 104
    const/4 v4, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 107
    .line 108
    move-object v2, p1

    .line 109
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method private initializePaints()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 36
    .line 37
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 43
    .line 44
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 45
    .line 46
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2300(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    int-to-float v1, v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private updateSelectionPositions()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    .line 10
    .line 11
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 12
    .line 13
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sub-int/2addr v1, v2

    .line 18
    if-gez v1, :cond_0

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x7

    .line 21
    .line 22
    :cond_0
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 23
    .line 24
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    :cond_1
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    sub-int/2addr v0, v1

    .line 45
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 46
    .line 47
    mul-int/2addr v0, v1

    .line 48
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 49
    .line 50
    div-int/2addr v0, v1

    .line 51
    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 55
    .line 56
    mul-int/2addr v1, v0

    .line 57
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 58
    .line 59
    div-int/2addr v1, v0

    .line 60
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    .line 61
    .line 62
    :goto_0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    .line 63
    .line 64
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 65
    .line 66
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 67
    .line 68
    div-int/2addr v1, v2

    .line 69
    add-int/2addr v1, v0

    .line 70
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    .line 71
    .line 72
    :cond_3
    return-void
.end method


# virtual methods
.method public getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/text/format/b;->j()Landroid/icu/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Landroid/icu/util/Calendar;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/widget/b;->i(Landroid/icu/util/Calendar;)Ljava/util/Date;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Landroid/text/format/b;->t(Landroid/icu/util/Calendar;Ljava/util/Date;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 17
    .line 18
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_4

    .line 23
    .line 24
    invoke-static {p1}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v0}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-ne v3, v4, :cond_3

    .line 33
    .line 34
    invoke-static {p1}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v0}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-ne v3, v4, :cond_3

    .line 43
    .line 44
    invoke-static {p1}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-static {v0}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-ne v3, v4, :cond_3

    .line 53
    .line 54
    iget p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 55
    .line 56
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 57
    .line 58
    div-int/2addr p1, v0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v3, 0x1

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 67
    .line 68
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 75
    .line 76
    sub-int/2addr v0, v2

    .line 77
    add-int/lit8 v0, v0, -0x2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 81
    .line 82
    sub-int/2addr v0, v2

    .line 83
    sub-int/2addr v0, v3

    .line 84
    :goto_1
    mul-int/2addr v0, p1

    .line 85
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 89
    .line 90
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    :cond_2
    mul-int/2addr v2, p1

    .line 99
    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 100
    .line 101
    :goto_2
    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 102
    .line 103
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 104
    .line 105
    add-int/2addr v0, p1

    .line 106
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 113
    .line 114
    return v3

    .line 115
    :cond_3
    invoke-static {v0}, Landroid/widget/b;->y(Landroid/icu/util/Calendar;)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v2, v2, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    return v1
.end method

.method public getDayFromLocation(FLandroid/icu/util/Calendar;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 9
    .line 10
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 17
    .line 18
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 19
    .line 20
    div-int v3, v2, v3

    .line 21
    .line 22
    sub-int/2addr v2, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 25
    .line 26
    :goto_0
    move v3, v2

    .line 27
    move v2, v1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 30
    .line 31
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 38
    .line 39
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 40
    .line 41
    div-int/2addr v2, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v2, v1

    .line 44
    :goto_1
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 45
    .line 46
    :goto_2
    int-to-float v4, v2

    .line 47
    cmpg-float v5, p1, v4

    .line 48
    .line 49
    if-ltz v5, :cond_5

    .line 50
    .line 51
    int-to-float v5, v3

    .line 52
    cmpl-float v5, p1, v5

    .line 53
    .line 54
    if-lez v5, :cond_3

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    sub-float/2addr p1, v4

    .line 58
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 59
    .line 60
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    int-to-float v1, v1

    .line 65
    mul-float/2addr p1, v1

    .line 66
    sub-int/2addr v3, v2

    .line 67
    int-to-float v1, v3

    .line 68
    div-float/2addr p1, v1

    .line 69
    float-to-int p1, p1

    .line 70
    const/4 v1, 0x1

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 74
    .line 75
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sub-int/2addr v0, v1

    .line 80
    sub-int p1, v0, p1

    .line 81
    .line 82
    :cond_4
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Landroid/icu/util/Calendar;

    .line 83
    .line 84
    invoke-static {v0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    invoke-static {p2, v2, v3}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 89
    .line 90
    .line 91
    invoke-static {p2, p1}, Landroid/widget/b;->m(Landroid/icu/util/Calendar;I)V

    .line 92
    .line 93
    .line 94
    return v1

    .line 95
    :cond_5
    :goto_3
    invoke-static {p2}, Landroid/widget/b;->v(Landroid/icu/util/Calendar;)V

    .line 96
    .line 97
    .line 98
    return v1
.end method

.method public getFirstDay()Landroid/icu/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public getMonthOfFirstWeekDay()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    return v0
.end method

.method public getMonthOfLastWeekDay()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    return v0
.end method

.method public init(III)V
    .locals 6

    .line 1
    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq p2, v0, :cond_0

    .line 7
    .line 8
    move p2, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p2, v1

    .line 11
    :goto_0
    iput-boolean p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    .line 12
    .line 13
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 14
    .line 15
    invoke-static {p2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 22
    .line 23
    invoke-static {p2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    add-int/2addr p2, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 30
    .line 31
    invoke-static {p2}, Landroid/widget/CalendarViewLegacyDelegate;->access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    :goto_1
    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 36
    .line 37
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    .line 38
    .line 39
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 40
    .line 41
    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 46
    .line 47
    invoke-static {p2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1600(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p2}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    invoke-static {p1, v3, v4}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 59
    .line 60
    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    .line 65
    .line 66
    invoke-static {p1, p2}, Landroid/widget/b;->t(Landroid/icu/util/Calendar;I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 70
    .line 71
    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 76
    .line 77
    invoke-static {p2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-static {p2, p1}, Landroid/widget/b;->j(ILandroid/icu/util/Calendar;)V

    .line 82
    .line 83
    .line 84
    iget p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 85
    .line 86
    new-array p2, p1, [Ljava/lang/String;

    .line 87
    .line 88
    iput-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 89
    .line 90
    new-array p1, p1, [Z

    .line 91
    .line 92
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    .line 93
    .line 94
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 95
    .line 96
    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate;->access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    const-string p2, "%d"

    .line 101
    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-array v3, v2, [Ljava/lang/Object;

    .line 111
    .line 112
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 113
    .line 114
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-static {v4}, Landroid/widget/b;->z(Landroid/icu/util/Calendar;)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    aput-object v4, v3, v1

    .line 127
    .line 128
    invoke-static {v0, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    aput-object v0, p1, v1

    .line 133
    .line 134
    move p1, v2

    .line 135
    goto :goto_2

    .line 136
    :cond_2
    move p1, v1

    .line 137
    :goto_2
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 138
    .line 139
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 144
    .line 145
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static {v3}, Landroid/widget/b;->q(Landroid/icu/util/Calendar;)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    sub-int/2addr v0, v3

    .line 154
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 155
    .line 156
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-static {v3, v0}, Landroid/widget/b;->m(Landroid/icu/util/Calendar;I)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 164
    .line 165
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/widget/b;->g(Landroid/icu/util/Calendar;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/widget/b;->e(Ljava/lang/Object;)Landroid/icu/util/Calendar;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Landroid/icu/util/Calendar;

    .line 178
    .line 179
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 180
    .line 181
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    .line 190
    .line 191
    iput-boolean v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    .line 192
    .line 193
    :goto_3
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 194
    .line 195
    if-ge p1, v0, :cond_6

    .line 196
    .line 197
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 198
    .line 199
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-ne v0, p3, :cond_3

    .line 208
    .line 209
    move v0, v2

    .line 210
    goto :goto_4

    .line 211
    :cond_3
    move v0, v1

    .line 212
    :goto_4
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    .line 213
    .line 214
    aput-boolean v0, v3, p1

    .line 215
    .line 216
    iget-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    .line 217
    .line 218
    or-int/2addr v3, v0

    .line 219
    iput-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    .line 220
    .line 221
    iget-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    .line 222
    .line 223
    xor-int/2addr v0, v2

    .line 224
    and-int/2addr v0, v3

    .line 225
    iput-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    .line 226
    .line 227
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 228
    .line 229
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 234
    .line 235
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1600(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-static {v0, v3}, Landroid/widget/b;->p(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_5

    .line 244
    .line 245
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 246
    .line 247
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 252
    .line 253
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1500(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-static {v0, v3}, Landroid/text/format/b;->x(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_4

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_4
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 265
    .line 266
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    new-array v4, v2, [Ljava/lang/Object;

    .line 271
    .line 272
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 273
    .line 274
    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-static {v5}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    aput-object v5, v4, v1

    .line 287
    .line 288
    invoke-static {v3, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    aput-object v3, v0, p1

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_5
    :goto_5
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 296
    .line 297
    const-string v3, ""

    .line 298
    .line 299
    aput-object v3, v0, p1

    .line 300
    .line 301
    :goto_6
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 302
    .line 303
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v0}, Landroid/widget/b;->y(Landroid/icu/util/Calendar;)V

    .line 308
    .line 309
    .line 310
    add-int/lit8 p1, p1, 0x1

    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_6
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 314
    .line 315
    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-static {p1}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-ne p1, v2, :cond_7

    .line 324
    .line 325
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 326
    .line 327
    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-static {p1}, Landroid/widget/b;->A(Landroid/icu/util/Calendar;)V

    .line 332
    .line 333
    .line 334
    :cond_7
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 335
    .line 336
    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-static {p1}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    .line 345
    .line 346
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->updateSelectionPositions()V

    .line 347
    .line 348
    .line 349
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawWeekSeparators(Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr p2, v0

    .line 22
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sub-int/2addr p2, v0

    .line 33
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 34
    .line 35
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$3200(Landroid/widget/CalendarViewLegacyDelegate;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    div-int/2addr p2, v0

    .line 40
    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    .line 41
    .line 42
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->updateSelectionPositions()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
