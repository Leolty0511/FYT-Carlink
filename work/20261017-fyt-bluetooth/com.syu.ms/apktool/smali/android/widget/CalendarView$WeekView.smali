.class Landroid/widget/CalendarView$WeekView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeekView"
.end annotation


# instance fields
.field private mDayNumbers:[Ljava/lang/String;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFirstDay:Ljava/util/Calendar;

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

.field public final synthetic this$0:Landroid/widget/CalendarView;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    .line 7
    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mLastWeekDayMonth:I

    .line 8
    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    .line 10
    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    .line 11
    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    .line 12
    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    .line 13
    invoke-direct {p0}, Landroid/widget/CalendarView$WeekView;->initilaizePaints()V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/CalendarView$WeekView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    return p0
.end method

.method public static synthetic access$200(Landroid/widget/CalendarView$WeekView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/widget/CalendarView$WeekView;->mHasFocusedDay:Z

    return p0
.end method

.method public static synthetic access$300(Landroid/widget/CalendarView$WeekView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/widget/CalendarView$WeekView;->mHasUnfocusedDay:Z

    return p0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v1}, Landroid/widget/CalendarView;->access$2600(Landroid/widget/CalendarView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v1}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 7
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v3}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v1, v3

    :cond_2
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 9
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 10
    :goto_0
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 12
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v1}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int v2, v1, v2

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_3
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    :goto_1
    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 13
    :cond_4
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 14
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 15
    :goto_2
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$3300(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$3200(Landroid/widget/CalendarView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v4}, Landroid/widget/CalendarView;->access$3200(Landroid/widget/CalendarView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$3300(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$3300(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$3200(Landroid/widget/CalendarView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v4}, Landroid/widget/CalendarView;->access$3200(Landroid/widget/CalendarView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$3300(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 2
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v1}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    mul-int/lit8 v2, v1, 0x2

    .line 4
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 5
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v4}, Landroid/widget/CalendarView;->access$2500(Landroid/widget/CalendarView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    add-int/lit8 v6, v1, -0x1

    if-ge v3, v6, :cond_1

    .line 7
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->mFocusDay:[Z

    aget-boolean v8, v8, v3

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v8}, Landroid/widget/CalendarView;->access$2800(Landroid/widget/CalendarView;)I

    move-result v8

    goto :goto_1

    :cond_0
    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v8}, Landroid/widget/CalendarView;->access$2900(Landroid/widget/CalendarView;)I

    move-result v8

    :goto_1
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v5

    .line 8
    iget v8, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    mul-int/2addr v7, v8

    div-int/2addr v7, v2

    .line 9
    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    sub-int/2addr v6, v3

    aget-object v6, v8, v6

    int-to-float v7, v7

    int-to-float v8, v0

    iget-object v9, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v1}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v3}, Landroid/widget/CalendarView;->access$3000(Landroid/widget/CalendarView;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    div-int v2, v1, v2

    sub-int/2addr v1, v2

    .line 13
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v2, v2, v4

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 14
    :cond_2
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v3}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v6}, Landroid/widget/CalendarView;->access$3000(Landroid/widget/CalendarView;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    div-int/2addr v3, v2

    .line 17
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v4, v6, v4

    int-to-float v3, v3

    int-to-float v6, v0

    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v4, v5

    :cond_3
    :goto_2
    if-ge v4, v1, :cond_5

    .line 18
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mFocusDay:[Z

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v6}, Landroid/widget/CalendarView;->access$2800(Landroid/widget/CalendarView;)I

    move-result v6

    goto :goto_3

    :cond_4
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v6}, Landroid/widget/CalendarView;->access$2900(Landroid/widget/CalendarView;)I

    move-result v6

    :goto_3
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    mul-int/lit8 v3, v4, 0x2

    add-int/2addr v3, v5

    .line 19
    iget v6, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    mul-int/2addr v3, v6

    div-int/2addr v3, v2

    .line 20
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v4

    int-to-float v3, v3

    int-to-float v7, v0

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    return-void
.end method

.method private drawWeekSeparators(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$2000(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v1}, Landroid/widget/CalendarView;->access$2000(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3
    :cond_0
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    if-ne v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v1}, Landroid/widget/CalendarView;->access$3100(Landroid/widget/CalendarView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v1}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int v2, v0, v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    move v1, v0

    .line 9
    :cond_4
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    :goto_0
    int-to-float v0, v0

    move v5, v0

    move v3, v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 10
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initilaizePaints()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 2
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 5
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 8
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v1}, Landroid/widget/CalendarView;->access$2500(Landroid/widget/CalendarView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private updateSelectionPositions()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    .line 3
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    add-int/lit8 v1, v1, 0x7

    .line 4
    :cond_0
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    goto :goto_0

    .line 6
    :cond_2
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    mul-int/2addr v1, v0

    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v1, v0

    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    .line 7
    :goto_0
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    :cond_3
    return-void
.end method


# virtual methods
.method public getDayFromLocation(FLjava/util/Calendar;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int v3, v2, v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    :goto_0
    move v3, v2

    move v2, v1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v2}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    .line 4
    :goto_1
    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    :goto_2
    int-to-float v4, v2

    cmpg-float v5, p1, v4

    if-ltz v5, :cond_5

    int-to-float v5, v3

    cmpl-float v5, p1, v5

    if-lez v5, :cond_3

    goto :goto_3

    :cond_3
    sub-float/2addr p1, v4

    .line 5
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v1}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    sub-int/2addr v3, v2

    int-to-float v1, v3

    div-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)I

    move-result v0

    sub-int/2addr v0, v1

    sub-int p1, v0, p1

    .line 7
    :cond_4
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x5

    .line 8
    invoke-virtual {p2, v0, p1}, Ljava/util/Calendar;->add(II)V

    return v1

    .line 9
    :cond_5
    :goto_3
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    return v1
.end method

.method public getFirstDay()Ljava/util/Calendar;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonthOfFirstWeekDay()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    return v0
.end method

.method public getMonthOfLastWeekDay()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mLastWeekDayMonth:I

    return v0
.end method

.method public init(III)V
    .locals 9

    .line 1
    iput p2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 2
    :goto_0
    iput-boolean p2, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    .line 3
    iget-object p2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {p2}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {p2}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)I

    move-result p2

    add-int/2addr p2, v2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {p2}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)I

    move-result p2

    :goto_1
    iput p2, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    .line 4
    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    .line 5
    iget-object p1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {p1}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {p2}, Landroid/widget/CalendarView;->access$1700(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    iget-object p1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {p1}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    iget p2, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    const/4 v3, 0x3

    invoke-virtual {p1, v3, p2}, Ljava/util/Calendar;->add(II)V

    .line 7
    iget-object p1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {p1}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {p2}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 8
    iget p1, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    new-array p2, p1, [Ljava/lang/String;

    iput-object p2, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 9
    new-array p1, p1, [Z

    iput-object p1, p0, Landroid/widget/CalendarView$WeekView;->mFocusDay:[Z

    .line 10
    iget-object p1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {p1}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result p1

    const-string p2, "%d"

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v6}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v4, p2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    .line 12
    :goto_2
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v3}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v4}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 13
    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v4}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 14
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    iput-object v3, p0, Landroid/widget/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    .line 15
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    .line 16
    iput-boolean v2, p0, Landroid/widget/CalendarView$WeekView;->mHasUnfocusedDay:Z

    .line 17
    :goto_3
    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    if-ge p1, v3, :cond_6

    .line 18
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p3, :cond_3

    move v3, v2

    goto :goto_4

    :cond_3
    move v3, v1

    .line 19
    :goto_4
    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->mFocusDay:[Z

    aput-boolean v3, v6, p1

    .line 20
    iget-boolean v6, p0, Landroid/widget/CalendarView$WeekView;->mHasFocusedDay:Z

    or-int/2addr v6, v3

    iput-boolean v6, p0, Landroid/widget/CalendarView$WeekView;->mHasFocusedDay:Z

    .line 21
    iget-boolean v6, p0, Landroid/widget/CalendarView$WeekView;->mHasUnfocusedDay:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v6

    iput-boolean v3, p0, Landroid/widget/CalendarView$WeekView;->mHasUnfocusedDay:Z

    .line 22
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v6}, Landroid/widget/CalendarView;->access$1700(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v6, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v6}, Landroid/widget/CalendarView;->access$1600(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    .line 23
    :cond_4
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v8}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, p2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, p1

    goto :goto_6

    .line 24
    :cond_5
    :goto_5
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v3, p1

    .line 25
    :goto_6
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 26
    :cond_6
    iget-object p1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {p1}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 27
    iget-object p1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {p1}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 28
    :cond_7
    iget-object p1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {p1}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mLastWeekDayMonth:I

    .line 29
    invoke-direct {p0}, Landroid/widget/CalendarView$WeekView;->updateSelectionPositions()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    .line 3
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawWeekSeparators(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {p2}, Landroid/widget/CalendarView;->access$2000(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$2000(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$2000(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    invoke-static {v0}, Landroid/widget/CalendarView;->access$3400(Landroid/widget/CalendarView;)I

    move-result v0

    div-int/2addr p2, v0

    iput p2, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    .line 2
    invoke-direct {p0}, Landroid/widget/CalendarView$WeekView;->updateSelectionPositions()V

    return-void
.end method
