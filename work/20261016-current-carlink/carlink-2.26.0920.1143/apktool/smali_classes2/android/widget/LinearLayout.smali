.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;,
        Landroid/widget/LinearLayout$DividerMode;,
        Landroid/widget/LinearLayout$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private final mAllowInconsistentMeasurement:Z

.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    .line 7
    iput v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    const v3, 0x800033

    .line 8
    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 9
    iput v1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 10
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_0

    .line 12
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 13
    :cond_0
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_1

    .line 14
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_1
    const/4 p3, 0x2

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-nez p3, :cond_2

    .line 16
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    :cond_2
    const/4 p3, 0x4

    const/high16 p4, -0x40800000    # -1.0f

    .line 17
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 p3, 0x3

    .line 18
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const/4 p3, 0x6

    .line 19
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/4 p3, 0x7

    .line 20
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/16 p3, 0x8

    .line 21
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    const/4 p3, 0x5

    .line 22
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x17

    if-gt p1, p3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 24
    :goto_0
    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    .line 25
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private allViewsAreGoneBefore(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    sub-int/2addr p1, v0

    .line 3
    :goto_0
    if-ltz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return v0
.end method

.method private forceUniformHeight(II)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    if-eq v2, v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    move-object v8, v2

    .line 33
    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    .line 35
    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    .line 37
    const/4 v4, -0x1

    .line 38
    if-ne v2, v4, :cond_0

    .line 39
    .line 40
    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    move-object v2, p0

    .line 51
    move v4, p2

    .line 52
    move v6, v0

    .line 53
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 54
    .line 55
    .line 56
    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    .line 58
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    if-eq v2, v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    move-object v8, v2

    .line 33
    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    .line 35
    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    .line 37
    const/4 v4, -0x1

    .line 38
    if-ne v2, v4, :cond_0

    .line 39
    .line 40
    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    move-object v2, p0

    .line 51
    move v4, v0

    .line 52
    move v6, p2

    .line 53
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 54
    .line 55
    .line 56
    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    .line 58
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method private getLastNonGoneChild()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    if-eq v2, v3, :cond_0

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    return-object v0
.end method

.method private isShowingDividers()Z
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 0

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroid/widget/LinearLayout$LayoutParams;

    return p1
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/16 v5, 0x8

    .line 23
    .line 24
    if-eq v4, v5, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 45
    .line 46
    add-int/2addr v3, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 53
    .line 54
    sub-int/2addr v3, v4

    .line 55
    iget v4, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 56
    .line 57
    sub-int/2addr v3, v4

    .line 58
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    sub-int/2addr v0, v1

    .line 92
    iget v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 100
    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 108
    .line 109
    sub-int/2addr v0, v1

    .line 110
    iget v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 111
    .line 112
    :goto_2
    sub-int/2addr v0, v1

    .line 113
    goto :goto_3

    .line 114
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 119
    .line 120
    add-int/2addr v0, v1

    .line 121
    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 122
    .line 123
    .line 124
    :cond_6
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x8

    .line 19
    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 39
    .line 40
    sub-int/2addr v2, v3

    .line 41
    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 42
    .line 43
    sub-int/2addr v2, v3

    .line 44
    invoke-virtual {p0, p1, v2}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    sub-int/2addr v0, v1

    .line 71
    iget v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 72
    .line 73
    sub-int/2addr v0, v1

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 86
    .line 87
    add-int/2addr v0, v1

    .line 88
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 8
    .line 9
    add-int/2addr v1, v2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    sub-int/2addr v2, v3

    .line 19
    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 20
    .line 21
    sub-int/2addr v2, v3

    .line 22
    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 23
    .line 24
    add-int/2addr v3, p2

    .line 25
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 8
    .line 9
    add-int/2addr v1, v2

    .line 10
    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 11
    .line 12
    add-int/2addr v2, p2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    sub-int/2addr v3, v4

    .line 22
    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 23
    .line 24
    sub-int/2addr v3, v4

    .line 25
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "layout:baselineAligned"

    .line 5
    .line 6
    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const-string v0, "layout:baselineAlignedChildIndex"

    .line 12
    .line 13
    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string v0, "measurement:baselineChildTop"

    .line 19
    .line 20
    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string v0, "measurement:orientation"

    .line 26
    .line 27
    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string v0, "measurement:gravity"

    .line 33
    .line 34
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    const-string v0, "measurement:totalLength"

    .line 40
    .line 41
    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    const-string v0, "layout:totalLength"

    .line 47
    .line 48
    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    const-string v0, "layout:useLargestChild"

    .line 54
    .line 55
    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 2
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 4
    sget-boolean v0, Landroid/view/View;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1

    .line 5
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 7
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 15
    .line 16
    if-le v0, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, -0x1

    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_2
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 43
    .line 44
    iget v3, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    if-ne v3, v4, :cond_5

    .line 48
    .line 49
    iget v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 50
    .line 51
    and-int/lit8 v3, v3, 0x70

    .line 52
    .line 53
    const/16 v4, 0x30

    .line 54
    .line 55
    if-eq v3, v4, :cond_5

    .line 56
    .line 57
    const/16 v4, 0x10

    .line 58
    .line 59
    if-eq v3, v4, :cond_4

    .line 60
    .line 61
    const/16 v4, 0x50

    .line 62
    .line 63
    if-eq v3, v4, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget v2, p0, Landroid/view/View;->mBottom:I

    .line 67
    .line 68
    iget v3, p0, Landroid/view/View;->mTop:I

    .line 69
    .line 70
    sub-int/2addr v2, v3

    .line 71
    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    .line 72
    .line 73
    sub-int/2addr v2, v3

    .line 74
    iget v3, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 75
    .line 76
    sub-int/2addr v2, v3

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    iget v3, p0, Landroid/view/View;->mBottom:I

    .line 79
    .line 80
    iget v4, p0, Landroid/view/View;->mTop:I

    .line 81
    .line 82
    sub-int/2addr v3, v4

    .line 83
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    .line 84
    .line 85
    sub-int/2addr v3, v4

    .line 86
    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 87
    .line 88
    sub-int/2addr v3, v4

    .line 89
    iget v4, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 90
    .line 91
    const/4 v5, 0x2

    .line 92
    invoke-static {v3, v4, v5, v2}, Landroid/app/m;->b(IIII)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    .line 102
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 103
    .line 104
    add-int/2addr v2, v0

    .line 105
    add-int/2addr v2, v1

    .line 106
    return v2

    .line 107
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    .line 108
    .line 109
    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    .line 110
    .line 111
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method getVirtualChildCount()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method public hasDividerBeforeChildAt(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 10
    .line 11
    and-int/lit8 p1, p1, 0x4

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    :cond_0
    return v1

    .line 17
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    iget p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 24
    .line 25
    and-int/2addr p1, v2

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    move v1, v2

    .line 29
    :cond_2
    return v1

    .line 30
    :cond_3
    iget p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 31
    .line 32
    and-int/lit8 p1, p1, 0x2

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    move v1, v2

    .line 37
    :cond_4
    return v1
.end method

.method public isBaselineAligned()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 22

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v7, v6, Landroid/view/View;->mPaddingTop:I

    .line 8
    .line 9
    sub-int v1, p4, p2

    .line 10
    .line 11
    iget v2, v6, Landroid/view/View;->mPaddingBottom:I

    .line 12
    .line 13
    sub-int v8, v1, v2

    .line 14
    .line 15
    sub-int/2addr v1, v7

    .line 16
    sub-int v9, v1, v2

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v10

    .line 22
    iget v1, v6, Landroid/widget/LinearLayout;->mGravity:I

    .line 23
    .line 24
    const v2, 0x800007

    .line 25
    .line 26
    .line 27
    and-int/2addr v2, v1

    .line 28
    and-int/lit8 v11, v1, 0x70

    .line 29
    .line 30
    iget-boolean v12, v6, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 31
    .line 32
    iget-object v13, v6, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 33
    .line 34
    iget-object v14, v6, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x2

    .line 45
    const/4 v3, 0x1

    .line 46
    if-eq v1, v3, :cond_1

    .line 47
    .line 48
    const/4 v2, 0x5

    .line 49
    if-eq v1, v2, :cond_0

    .line 50
    .line 51
    iget v1, v6, Landroid/view/View;->mPaddingLeft:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget v1, v6, Landroid/view/View;->mPaddingLeft:I

    .line 55
    .line 56
    add-int v1, v1, p3

    .line 57
    .line 58
    sub-int v1, v1, p1

    .line 59
    .line 60
    iget v2, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 61
    .line 62
    sub-int/2addr v1, v2

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget v1, v6, Landroid/view/View;->mPaddingLeft:I

    .line 65
    .line 66
    sub-int v4, p3, p1

    .line 67
    .line 68
    iget v5, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 69
    .line 70
    invoke-static {v4, v5, v2, v1}, Landroid/app/m;->b(IIII)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    :goto_0
    const/4 v2, 0x0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    add-int/lit8 v0, v10, -0x1

    .line 78
    .line 79
    const/4 v3, -0x1

    .line 80
    move v15, v0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v15, v2

    .line 83
    :goto_1
    move/from16 v16, v3

    .line 84
    .line 85
    move v5, v2

    .line 86
    :goto_2
    if-ge v5, v10, :cond_e

    .line 87
    .line 88
    mul-int v0, v16, v5

    .line 89
    .line 90
    add-int v4, v0, v15

    .line 91
    .line 92
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-nez v3, :cond_4

    .line 97
    .line 98
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    add-int/2addr v1, v0

    .line 103
    :cond_3
    move/from16 v20, v5

    .line 104
    .line 105
    move/from16 v18, v7

    .line 106
    .line 107
    move/from16 v21, v8

    .line 108
    .line 109
    move/from16 p2, v10

    .line 110
    .line 111
    move/from16 p4, v11

    .line 112
    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    const/16 v2, 0x8

    .line 120
    .line 121
    if-eq v0, v2, :cond_3

    .line 122
    .line 123
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 124
    .line 125
    .line 126
    move-result v17

    .line 127
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    .line 137
    if-eqz v12, :cond_5

    .line 138
    .line 139
    move/from16 p1, v5

    .line 140
    .line 141
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    .line 143
    move/from16 p2, v10

    .line 144
    .line 145
    const/4 v10, -0x1

    .line 146
    if-eq v5, v10, :cond_6

    .line 147
    .line 148
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    goto :goto_3

    .line 153
    :cond_5
    move/from16 p1, v5

    .line 154
    .line 155
    move/from16 p2, v10

    .line 156
    .line 157
    :cond_6
    const/4 v5, -0x1

    .line 158
    :goto_3
    iget v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 159
    .line 160
    if-gez v10, :cond_7

    .line 161
    .line 162
    move v10, v11

    .line 163
    :cond_7
    and-int/lit8 v10, v10, 0x70

    .line 164
    .line 165
    move/from16 p4, v11

    .line 166
    .line 167
    const/16 v11, 0x10

    .line 168
    .line 169
    if-eq v10, v11, :cond_b

    .line 170
    .line 171
    const/16 v11, 0x30

    .line 172
    .line 173
    if-eq v10, v11, :cond_9

    .line 174
    .line 175
    const/16 v11, 0x50

    .line 176
    .line 177
    if-eq v10, v11, :cond_8

    .line 178
    .line 179
    move v10, v7

    .line 180
    goto :goto_4

    .line 181
    :cond_8
    sub-int v10, v8, v2

    .line 182
    .line 183
    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 184
    .line 185
    sub-int/2addr v10, v11

    .line 186
    const/4 v11, -0x1

    .line 187
    if-eq v5, v11, :cond_c

    .line 188
    .line 189
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    sub-int/2addr v11, v5

    .line 194
    const/4 v5, 0x2

    .line 195
    aget v5, v14, v5

    .line 196
    .line 197
    sub-int/2addr v5, v11

    .line 198
    sub-int/2addr v10, v5

    .line 199
    goto :goto_4

    .line 200
    :cond_9
    const/4 v10, -0x1

    .line 201
    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 202
    .line 203
    add-int/2addr v11, v7

    .line 204
    if-eq v5, v10, :cond_a

    .line 205
    .line 206
    const/4 v10, 0x1

    .line 207
    aget v10, v13, v10

    .line 208
    .line 209
    sub-int/2addr v10, v5

    .line 210
    add-int/2addr v10, v11

    .line 211
    goto :goto_4

    .line 212
    :cond_a
    move v10, v11

    .line 213
    goto :goto_4

    .line 214
    :cond_b
    const/4 v5, 0x2

    .line 215
    invoke-static {v9, v2, v5, v7}, Landroid/app/m;->b(IIII)I

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 220
    .line 221
    add-int/2addr v5, v10

    .line 222
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 223
    .line 224
    sub-int/2addr v5, v10

    .line 225
    move v10, v5

    .line 226
    :cond_c
    :goto_4
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_d

    .line 231
    .line 232
    iget v5, v6, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 233
    .line 234
    add-int/2addr v1, v5

    .line 235
    :cond_d
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 236
    .line 237
    add-int v11, v5, v1

    .line 238
    .line 239
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    add-int v5, v11, v1

    .line 244
    .line 245
    move-object v1, v0

    .line 246
    move-object/from16 v0, p0

    .line 247
    .line 248
    move/from16 v18, v7

    .line 249
    .line 250
    move-object v7, v1

    .line 251
    move-object v1, v3

    .line 252
    move/from16 v19, v2

    .line 253
    .line 254
    move v2, v5

    .line 255
    move-object v5, v3

    .line 256
    move v3, v10

    .line 257
    move v10, v4

    .line 258
    move/from16 v4, v17

    .line 259
    .line 260
    move/from16 v20, p1

    .line 261
    .line 262
    move/from16 v21, v8

    .line 263
    .line 264
    move-object v8, v5

    .line 265
    move/from16 v5, v19

    .line 266
    .line 267
    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 268
    .line 269
    .line 270
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 271
    .line 272
    add-int v17, v17, v0

    .line 273
    .line 274
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    add-int v17, v17, v0

    .line 279
    .line 280
    add-int v17, v17, v11

    .line 281
    .line 282
    invoke-virtual {v6, v8, v10}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    add-int v5, v20, v0

    .line 287
    .line 288
    move/from16 v1, v17

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :goto_5
    move/from16 v5, v20

    .line 292
    .line 293
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 294
    .line 295
    move/from16 v10, p2

    .line 296
    .line 297
    move/from16 v11, p4

    .line 298
    .line 299
    move/from16 v7, v18

    .line 300
    .line 301
    move/from16 v8, v21

    .line 302
    .line 303
    goto/16 :goto_2

    .line 304
    .line 305
    :cond_e
    return-void
.end method

.method layoutVertical(IIII)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget v7, v6, Landroid/view/View;->mPaddingLeft:I

    .line 4
    .line 5
    sub-int v0, p3, p1

    .line 6
    .line 7
    iget v1, v6, Landroid/view/View;->mPaddingRight:I

    .line 8
    .line 9
    sub-int v8, v0, v1

    .line 10
    .line 11
    sub-int/2addr v0, v7

    .line 12
    sub-int v9, v0, v1

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v10

    .line 18
    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    .line 19
    .line 20
    and-int/lit8 v1, v0, 0x70

    .line 21
    .line 22
    const v2, 0x800007

    .line 23
    .line 24
    .line 25
    and-int v11, v0, v2

    .line 26
    .line 27
    const/16 v0, 0x10

    .line 28
    .line 29
    if-eq v1, v0, :cond_1

    .line 30
    .line 31
    const/16 v0, 0x50

    .line 32
    .line 33
    if-eq v1, v0, :cond_0

    .line 34
    .line 35
    iget v0, v6, Landroid/view/View;->mPaddingTop:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget v0, v6, Landroid/view/View;->mPaddingTop:I

    .line 39
    .line 40
    add-int v0, v0, p4

    .line 41
    .line 42
    sub-int v0, v0, p2

    .line 43
    .line 44
    iget v1, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 45
    .line 46
    sub-int/2addr v0, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget v0, v6, Landroid/view/View;->mPaddingTop:I

    .line 49
    .line 50
    sub-int v1, p4, p2

    .line 51
    .line 52
    iget v2, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 53
    .line 54
    const/4 v3, 0x2

    .line 55
    invoke-static {v1, v2, v3, v0}, Landroid/app/m;->b(IIII)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    :goto_0
    const/4 v1, 0x0

    .line 60
    move v12, v1

    .line 61
    :goto_1
    if-ge v12, v10, :cond_8

    .line 62
    .line 63
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v13

    .line 67
    const/4 v1, 0x1

    .line 68
    if-nez v13, :cond_2

    .line 69
    .line 70
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    add-int/2addr v0, v2

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const/16 v3, 0x8

    .line 82
    .line 83
    if-eq v2, v3, :cond_7

    .line 84
    .line 85
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    move-object v15, v2

    .line 98
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    .line 100
    iget v2, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 101
    .line 102
    if-gez v2, :cond_3

    .line 103
    .line 104
    move v2, v11

    .line 105
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    and-int/lit8 v2, v2, 0x7

    .line 114
    .line 115
    if-eq v2, v1, :cond_5

    .line 116
    .line 117
    const/4 v1, 0x5

    .line 118
    if-eq v2, v1, :cond_4

    .line 119
    .line 120
    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 121
    .line 122
    add-int/2addr v1, v7

    .line 123
    goto :goto_3

    .line 124
    :cond_4
    sub-int v1, v8, v4

    .line 125
    .line 126
    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    const/4 v1, 0x2

    .line 130
    invoke-static {v9, v4, v1, v7}, Landroid/app/m;->b(IIII)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 135
    .line 136
    add-int/2addr v1, v2

    .line 137
    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 138
    .line 139
    :goto_2
    sub-int/2addr v1, v2

    .line 140
    :goto_3
    move v2, v1

    .line 141
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    iget v1, v6, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 148
    .line 149
    add-int/2addr v0, v1

    .line 150
    :cond_6
    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 151
    .line 152
    add-int v16, v0, v1

    .line 153
    .line 154
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    add-int v3, v16, v0

    .line 159
    .line 160
    move-object/from16 v0, p0

    .line 161
    .line 162
    move-object v1, v13

    .line 163
    move v5, v14

    .line 164
    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 165
    .line 166
    .line 167
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 168
    .line 169
    add-int/2addr v14, v0

    .line 170
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    add-int/2addr v14, v0

    .line 175
    add-int v14, v14, v16

    .line 176
    .line 177
    invoke-virtual {v6, v13, v12}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    add-int/2addr v12, v0

    .line 182
    const/4 v1, 0x1

    .line 183
    move v0, v14

    .line 184
    :cond_7
    :goto_4
    add-int/2addr v12, v1

    .line 185
    goto :goto_1

    .line 186
    :cond_8
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .locals 39

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 1
    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 5
    iget-object v0, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    const/4 v14, 0x4

    if-eqz v0, :cond_0

    iget-object v0, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v14, [I

    .line 6
    iput-object v0, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    new-array v0, v14, [I

    .line 7
    iput-object v0, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 8
    :cond_1
    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 9
    iget-object v6, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    const/16 v16, 0x3

    const/4 v5, -0x1

    .line 10
    aput v5, v15, v16

    const/16 v17, 0x2

    aput v5, v15, v17

    const/16 v18, 0x1

    aput v5, v15, v18

    aput v5, v15, v10

    .line 11
    aput v5, v6, v16

    aput v5, v6, v17

    aput v5, v6, v18

    aput v5, v6, v10

    .line 12
    iget-boolean v4, v7, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 13
    iget-boolean v3, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v12, v2, :cond_2

    move/from16 v19, v18

    goto :goto_0

    :cond_2
    move/from16 v19, v10

    :goto_0
    const/16 v20, 0x0

    move v0, v10

    move/from16 v21, v0

    move/from16 v23, v21

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v30, v28

    move/from16 v29, v18

    move/from16 v22, v20

    const/high16 v14, -0x80000000

    :goto_1
    move-object/from16 v31, v6

    const/16 v1, 0x8

    if-ge v0, v11, :cond_17

    .line 14
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_3

    .line 15
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v1, v6

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v3

    move/from16 v38, v4

    move v2, v5

    goto/16 :goto_d

    .line 16
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 17
    invoke-virtual {v7, v6, v0}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v37, v3

    move/from16 v38, v4

    const/4 v2, -0x1

    goto/16 :goto_d

    :cond_4
    add-int/lit8 v21, v21, 0x1

    .line 18
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v5

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 20
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 21
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v22, v22, v1

    .line 22
    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v10, :cond_6

    cmpl-float v1, v1, v20

    if-lez v1, :cond_6

    move/from16 v10, v18

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_2
    if-ne v12, v2, :cond_9

    if-eqz v10, :cond_9

    if-eqz v19, :cond_7

    .line 23
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v2

    add-int/2addr v10, v1

    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_3

    .line 24
    :cond_7
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 25
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_3
    if-eqz v4, :cond_8

    .line 26
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 27
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v1

    .line 28
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 29
    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v10

    .line 30
    invoke-virtual {v6, v1, v10}, Landroid/view/View;->measure(II)V

    move/from16 v36, v0

    move/from16 v37, v3

    move/from16 v38, v4

    move-object v9, v5

    move-object v3, v6

    goto :goto_4

    :cond_8
    move/from16 v36, v0

    move/from16 v37, v3

    move/from16 v38, v4

    move-object v9, v5

    move-object v3, v6

    move/from16 v25, v18

    :goto_4
    const/high16 v0, 0x40000000    # 2.0f

    const/16 v34, -0x2

    goto/16 :goto_7

    :cond_9
    const/4 v2, -0x2

    if-eqz v10, :cond_a

    .line 31
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_a
    cmpl-float v1, v22, v20

    if-nez v1, :cond_b

    .line 32
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v33, v1

    goto :goto_5

    :cond_b
    const/16 v33, 0x0

    :goto_5
    const/16 v35, 0x0

    move v1, v0

    move-object/from16 v0, p0

    move/from16 v36, v1

    const/high16 v9, -0x80000000

    move-object v1, v6

    move/from16 v32, v2

    const/high16 v9, 0x40000000    # 2.0f

    move/from16 v2, v36

    move/from16 v37, v3

    move/from16 v3, p1

    move/from16 v38, v4

    move/from16 v4, v33

    move-object v9, v5

    move/from16 v5, p2

    move/from16 v34, v32

    move-object/from16 v32, v6

    move/from16 v6, v35

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 34
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v10, :cond_c

    const/4 v1, 0x0

    .line 35
    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int v24, v24, v0

    :cond_c
    if-eqz v19, :cond_d

    .line 36
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v32

    .line 37
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v1

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_6

    :cond_d
    move-object/from16 v3, v32

    .line 38
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v2, v1, v0

    .line 39
    iget v4, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 40
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_6
    if-eqz v37, :cond_e

    .line 42
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_e
    const/high16 v0, 0x40000000    # 2.0f

    :goto_7
    if-eq v13, v0, :cond_f

    .line 43
    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_10

    move/from16 v0, v18

    move/from16 v30, v0

    goto :goto_8

    :cond_f
    const/4 v2, -0x1

    :cond_10
    const/4 v0, 0x0

    .line 44
    :goto_8
    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v4

    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v10, v28

    invoke-static {v10, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v28

    if-eqz v38, :cond_12

    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v5

    if-eq v5, v2, :cond_12

    .line 48
    iget v6, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v6, :cond_11

    iget v6, v7, Landroid/widget/LinearLayout;->mGravity:I

    :cond_11
    and-int/lit8 v6, v6, 0x70

    const/4 v10, 0x4

    shr-int/2addr v6, v10

    and-int/lit8 v6, v6, -0x2

    shr-int/lit8 v6, v6, 0x1

    .line 49
    aget v10, v15, v6

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v15, v6

    .line 50
    aget v10, v31, v6

    sub-int v5, v4, v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v31, v6

    :cond_12
    move/from16 v5, v23

    .line 51
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    if-eqz v29, :cond_13

    .line 52
    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v2, :cond_13

    move/from16 v29, v18

    goto :goto_9

    :cond_13
    const/16 v29, 0x0

    .line 53
    :goto_9
    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v20

    if-lez v5, :cond_15

    if-eqz v0, :cond_14

    goto :goto_a

    :cond_14
    move v1, v4

    :goto_a
    move/from16 v6, v27

    .line 54
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    goto :goto_c

    :cond_15
    move/from16 v6, v27

    if-eqz v0, :cond_16

    goto :goto_b

    :cond_16
    move v1, v4

    :goto_b
    move/from16 v0, v26

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v27, v6

    :goto_c
    move/from16 v10, v36

    .line 56
    invoke-virtual {v7, v3, v10}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v10

    :goto_d
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, p2

    move v5, v2

    move-object/from16 v6, v31

    move/from16 v3, v37

    move/from16 v4, v38

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_17
    move/from16 v37, v3

    move/from16 v38, v4

    move v2, v5

    move/from16 v5, v23

    move/from16 v0, v26

    move/from16 v6, v27

    move/from16 v10, v28

    const/16 v34, -0x2

    if-lez v21, :cond_18

    .line 57
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 58
    iget v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v4, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v4

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 59
    :cond_18
    aget v3, v15, v18

    if-ne v3, v2, :cond_1a

    const/4 v4, 0x0

    aget v9, v15, v4

    if-ne v9, v2, :cond_1a

    aget v4, v15, v17

    if-ne v4, v2, :cond_1a

    aget v4, v15, v16

    if-eq v4, v2, :cond_19

    goto :goto_e

    :cond_19
    move/from16 v23, v5

    goto :goto_f

    .line 60
    :cond_1a
    :goto_e
    aget v4, v15, v16

    const/4 v9, 0x0

    aget v2, v15, v9

    aget v1, v15, v17

    .line 61
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 62
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 63
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 64
    aget v2, v31, v16

    aget v3, v31, v9

    aget v4, v31, v18

    aget v9, v31, v17

    .line 65
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 66
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v1

    .line 68
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    :goto_f
    if-eqz v37, :cond_1f

    const/high16 v1, -0x80000000

    if-eq v12, v1, :cond_1b

    if-nez v12, :cond_1f

    :cond_1b
    const/4 v1, 0x0

    .line 69
    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v11, :cond_1f

    .line 70
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1c

    .line 71
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_11

    .line 72
    :cond_1c
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1d

    .line 73
    invoke-virtual {v7, v2, v1}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_11

    .line 74
    :cond_1d
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v19, :cond_1e

    .line 75
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v14

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v3

    .line 76
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v5, v2

    add-int/2addr v5, v4

    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_11

    .line 77
    :cond_1e
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v5, v4, v14

    .line 78
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v9

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v3

    .line 79
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v5, v2

    .line 80
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 81
    :cond_1f
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/view/View;->mPaddingLeft:I

    iget v3, v7, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    .line 83
    invoke-static {v1, v8, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v2, v1

    .line 84
    iget v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v2, v3

    iget-boolean v3, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v3, :cond_20

    const/16 v24, 0x0

    :cond_20
    add-int v2, v2, v24

    if-nez v25, :cond_25

    if-eqz v2, :cond_21

    cmpl-float v4, v22, v20

    if-lez v4, :cond_21

    goto :goto_14

    .line 85
    :cond_21
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v37, :cond_24

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_24

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v11, :cond_24

    .line 86
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 87
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_22

    goto :goto_13

    .line 88
    :cond_22
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v20

    if-lez v5, :cond_23

    const/high16 v5, 0x40000000    # 2.0f

    .line 90
    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 91
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 92
    invoke-virtual {v4, v6, v9}, Landroid/view/View;->measure(II)V

    :cond_23
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_24
    move/from16 v12, p2

    move/from16 v28, v10

    move/from16 v2, v23

    goto/16 :goto_21

    .line 93
    :cond_25
    :goto_14
    iget v4, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v5, v4, v20

    if-lez v5, :cond_26

    move/from16 v22, v4

    :cond_26
    const/4 v4, -0x1

    .line 94
    aput v4, v15, v16

    aput v4, v15, v17

    aput v4, v15, v18

    const/4 v5, 0x0

    aput v4, v15, v5

    .line 95
    aput v4, v31, v16

    aput v4, v31, v17

    aput v4, v31, v18

    aput v4, v31, v5

    .line 96
    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_15
    if-ge v4, v11, :cond_35

    .line 97
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_34

    .line 98
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v3, 0x8

    if-ne v9, v3, :cond_27

    goto/16 :goto_1d

    .line 99
    :cond_27
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 100
    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v24, v3, v20

    if-lez v24, :cond_2c

    move/from16 v24, v14

    int-to-float v14, v2

    mul-float/2addr v14, v3

    div-float v14, v14, v22

    float-to-int v14, v14

    sub-int/2addr v2, v14

    sub-float v22, v22, v3

    .line 101
    iget-boolean v3, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v3, :cond_28

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v12, v3, :cond_28

    move/from16 v25, v2

    move/from16 v14, v24

    goto :goto_17

    .line 102
    :cond_28
    iget v3, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v3, :cond_2a

    iget-boolean v3, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v3, :cond_29

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v12, v3, :cond_2b

    goto :goto_16

    :cond_29
    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_16

    :cond_2a
    const/high16 v3, 0x40000000    # 2.0f

    .line 103
    :cond_2b
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    add-int v14, v25, v14

    :goto_16
    move/from16 v25, v2

    :goto_17
    const/4 v2, 0x0

    .line 104
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 105
    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 106
    iget v3, v7, Landroid/view/View;->mPaddingTop:I

    iget v14, v7, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v14

    iget v14, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v26, v12

    move/from16 v12, p2

    invoke-static {v12, v3, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    .line 107
    invoke-virtual {v6, v2, v3}, Landroid/view/View;->measure(II)V

    .line 108
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    .line 109
    invoke-static {v10, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    move/from16 v2, v25

    goto :goto_18

    :cond_2c
    move/from16 v26, v12

    move/from16 v24, v14

    move/from16 v12, p2

    :goto_18
    if-eqz v19, :cond_2d

    .line 110
    iget v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    move/from16 v25, v2

    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v2

    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v14, v2

    .line 111
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v14, v2

    add-int/2addr v14, v3

    iput v14, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_19

    :cond_2d
    move/from16 v25, v2

    .line 112
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 113
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v14

    .line 114
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v14

    add-int/2addr v3, v14

    .line 115
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_19
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_2e

    .line 116
    iget v2, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2e

    move/from16 v2, v18

    goto :goto_1a

    :cond_2e
    const/4 v2, 0x0

    .line 117
    :goto_1a
    iget v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v14

    .line 118
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v3

    .line 119
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v2, :cond_2f

    goto :goto_1b

    :cond_2f
    move v3, v14

    .line 120
    :goto_1b
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v29, :cond_30

    .line 121
    iget v2, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_31

    move/from16 v2, v18

    goto :goto_1c

    :cond_30
    const/4 v3, -0x1

    :cond_31
    const/4 v2, 0x0

    :goto_1c
    if-eqz v38, :cond_33

    .line 122
    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v6

    if-eq v6, v3, :cond_33

    .line 123
    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_32

    iget v3, v7, Landroid/widget/LinearLayout;->mGravity:I

    :cond_32
    and-int/lit8 v3, v3, 0x70

    const/4 v9, 0x4

    shr-int/2addr v3, v9

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v3, v3, 0x1

    .line 124
    aget v9, v15, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v15, v3

    .line 125
    aget v9, v31, v3

    sub-int/2addr v14, v6

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v31, v3

    :cond_33
    move/from16 v29, v2

    move/from16 v2, v25

    goto :goto_1e

    :cond_34
    :goto_1d
    move/from16 v26, v12

    move/from16 v24, v14

    move/from16 v12, p2

    :goto_1e
    add-int/lit8 v4, v4, 0x1

    move/from16 v14, v24

    move/from16 v12, v26

    goto/16 :goto_15

    :cond_35
    move/from16 v12, p2

    .line 126
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v7, Landroid/view/View;->mPaddingLeft:I

    iget v4, v7, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 127
    aget v2, v15, v18

    const/4 v3, -0x1

    if-ne v2, v3, :cond_37

    const/4 v4, 0x0

    aget v6, v15, v4

    if-ne v6, v3, :cond_37

    aget v4, v15, v17

    if-ne v4, v3, :cond_37

    aget v4, v15, v16

    if-eq v4, v3, :cond_36

    goto :goto_1f

    :cond_36
    move v2, v5

    goto :goto_20

    .line 128
    :cond_37
    :goto_1f
    aget v3, v15, v16

    const/4 v4, 0x0

    aget v6, v15, v4

    aget v9, v15, v17

    .line 129
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 130
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 131
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 132
    aget v3, v31, v16

    aget v4, v31, v4

    aget v6, v31, v18

    aget v9, v31, v17

    .line 133
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 134
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 135
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v2

    .line 136
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_20
    move/from16 v28, v10

    :goto_21
    if-nez v29, :cond_38

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v13, v3, :cond_38

    goto :goto_22

    :cond_38
    move v0, v2

    .line 137
    :goto_22
    iget v2, v7, Landroid/view/View;->mPaddingTop:I

    iget v3, v7, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, -0x1000000

    and-int v2, v28, v2

    or-int/2addr v1, v2

    shl-int/lit8 v2, v28, 0x10

    .line 139
    invoke-static {v0, v12, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 140
    invoke-virtual {v7, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    if-eqz v30, :cond_39

    .line 141
    invoke-direct {v7, v11, v8}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    :cond_39
    return-void
.end method

.method measureNullChild(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method measureVertical(II)V
    .locals 33

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v11

    .line 14
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 15
    .line 16
    .line 17
    move-result v12

    .line 18
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 19
    .line 20
    .line 21
    move-result v13

    .line 22
    iget v14, v7, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 23
    .line 24
    iget-boolean v15, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 25
    .line 26
    const/16 v16, 0x1

    .line 27
    .line 28
    const/16 v17, 0x0

    .line 29
    .line 30
    move v0, v10

    .line 31
    move v3, v0

    .line 32
    move v4, v3

    .line 33
    move v5, v4

    .line 34
    move/from16 v18, v5

    .line 35
    .line 36
    move/from16 v19, v18

    .line 37
    .line 38
    move/from16 v20, v19

    .line 39
    .line 40
    move/from16 v21, v20

    .line 41
    .line 42
    move/from16 v23, v21

    .line 43
    .line 44
    move/from16 v22, v16

    .line 45
    .line 46
    move/from16 v1, v17

    .line 47
    .line 48
    const/high16 v2, -0x80000000

    .line 49
    .line 50
    :goto_0
    const/16 v6, 0x8

    .line 51
    .line 52
    if-ge v5, v11, :cond_12

    .line 53
    .line 54
    move/from16 v25, v4

    .line 55
    .line 56
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-nez v4, :cond_0

    .line 61
    .line 62
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 63
    .line 64
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    add-int/2addr v4, v6

    .line 69
    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 70
    .line 71
    :goto_1
    move/from16 v4, v25

    .line 72
    .line 73
    goto/16 :goto_c

    .line 74
    .line 75
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-ne v10, v6, :cond_1

    .line 80
    .line 81
    invoke-virtual {v7, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    add-int/2addr v5, v4

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    add-int/lit8 v10, v0, 0x1

    .line 88
    .line 89
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 96
    .line 97
    iget v6, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 98
    .line 99
    add-int/2addr v0, v6

    .line 100
    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 101
    .line 102
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    move-object v6, v0

    .line 107
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    .line 109
    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 110
    .line 111
    add-float v26, v1, v0

    .line 112
    .line 113
    iget v1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    .line 115
    if-nez v1, :cond_3

    .line 116
    .line 117
    cmpl-float v0, v0, v17

    .line 118
    .line 119
    if-lez v0, :cond_3

    .line 120
    .line 121
    move/from16 v27, v16

    .line 122
    .line 123
    const/high16 v0, 0x40000000    # 2.0f

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    .line 127
    .line 128
    const/16 v27, 0x0

    .line 129
    .line 130
    :goto_2
    if-ne v13, v0, :cond_4

    .line 131
    .line 132
    if-eqz v27, :cond_4

    .line 133
    .line 134
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 135
    .line 136
    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 137
    .line 138
    add-int/2addr v1, v0

    .line 139
    move/from16 v28, v2

    .line 140
    .line 141
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 142
    .line 143
    add-int/2addr v1, v2

    .line 144
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 149
    .line 150
    move/from16 v32, v5

    .line 151
    .line 152
    move-object v9, v6

    .line 153
    move/from16 v19, v16

    .line 154
    .line 155
    move/from16 v8, v25

    .line 156
    .line 157
    move/from16 v2, v28

    .line 158
    .line 159
    move/from16 v28, v10

    .line 160
    .line 161
    move v10, v3

    .line 162
    move-object v3, v4

    .line 163
    goto :goto_4

    .line 164
    :cond_4
    move/from16 v28, v2

    .line 165
    .line 166
    if-eqz v27, :cond_5

    .line 167
    .line 168
    const/4 v0, -0x2

    .line 169
    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 170
    .line 171
    :cond_5
    cmpl-float v0, v26, v17

    .line 172
    .line 173
    if-nez v0, :cond_6

    .line 174
    .line 175
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 176
    .line 177
    move/from16 v29, v0

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_6
    const/16 v29, 0x0

    .line 181
    .line 182
    :goto_3
    const/16 v30, 0x0

    .line 183
    .line 184
    move-object/from16 v0, p0

    .line 185
    .line 186
    move-object v1, v4

    .line 187
    move/from16 v31, v28

    .line 188
    .line 189
    move v2, v5

    .line 190
    move/from16 v28, v10

    .line 191
    .line 192
    move v10, v3

    .line 193
    move/from16 v3, p1

    .line 194
    .line 195
    move/from16 v8, v25

    .line 196
    .line 197
    move-object/from16 v25, v4

    .line 198
    .line 199
    move/from16 v4, v30

    .line 200
    .line 201
    move/from16 v32, v5

    .line 202
    .line 203
    move/from16 v5, p2

    .line 204
    .line 205
    move-object v9, v6

    .line 206
    move/from16 v6, v29

    .line 207
    .line 208
    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 209
    .line 210
    .line 211
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v27, :cond_7

    .line 216
    .line 217
    const/4 v1, 0x0

    .line 218
    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    .line 220
    add-int v18, v18, v0

    .line 221
    .line 222
    :cond_7
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 223
    .line 224
    add-int v2, v1, v0

    .line 225
    .line 226
    iget v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 227
    .line 228
    add-int/2addr v2, v3

    .line 229
    iget v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 230
    .line 231
    add-int/2addr v2, v3

    .line 232
    move-object/from16 v3, v25

    .line 233
    .line 234
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    add-int/2addr v2, v4

    .line 239
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 244
    .line 245
    move/from16 v2, v31

    .line 246
    .line 247
    if-eqz v15, :cond_8

    .line 248
    .line 249
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    :cond_8
    :goto_4
    if-ltz v14, :cond_9

    .line 254
    .line 255
    move/from16 v0, v32

    .line 256
    .line 257
    add-int/lit8 v5, v0, 0x1

    .line 258
    .line 259
    if-ne v14, v5, :cond_a

    .line 260
    .line 261
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 262
    .line 263
    iput v1, v7, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_9
    move/from16 v0, v32

    .line 267
    .line 268
    :cond_a
    :goto_5
    if-ge v0, v14, :cond_c

    .line 269
    .line 270
    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 271
    .line 272
    cmpl-float v1, v1, v17

    .line 273
    .line 274
    if-gtz v1, :cond_b

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    .line 278
    .line 279
    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    .line 280
    .line 281
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw v0

    .line 285
    :cond_c
    :goto_6
    const/high16 v1, 0x40000000    # 2.0f

    .line 286
    .line 287
    if-eq v12, v1, :cond_d

    .line 288
    .line 289
    iget v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 290
    .line 291
    const/4 v4, -0x1

    .line 292
    if-ne v1, v4, :cond_d

    .line 293
    .line 294
    move/from16 v1, v16

    .line 295
    .line 296
    move/from16 v23, v1

    .line 297
    .line 298
    goto :goto_7

    .line 299
    :cond_d
    const/4 v1, 0x0

    .line 300
    :goto_7
    iget v4, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 301
    .line 302
    iget v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 303
    .line 304
    add-int/2addr v4, v5

    .line 305
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    add-int/2addr v5, v4

    .line 310
    move/from16 v6, v20

    .line 311
    .line 312
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 313
    .line 314
    .line 315
    move-result v20

    .line 316
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    move/from16 v24, v4

    .line 321
    .line 322
    move/from16 v4, v21

    .line 323
    .line 324
    invoke-static {v4, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 325
    .line 326
    .line 327
    move-result v21

    .line 328
    if-eqz v22, :cond_e

    .line 329
    .line 330
    iget v4, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 331
    .line 332
    const/4 v6, -0x1

    .line 333
    if-ne v4, v6, :cond_e

    .line 334
    .line 335
    move/from16 v22, v16

    .line 336
    .line 337
    goto :goto_8

    .line 338
    :cond_e
    const/16 v22, 0x0

    .line 339
    .line 340
    :goto_8
    iget v4, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 341
    .line 342
    cmpl-float v4, v4, v17

    .line 343
    .line 344
    if-lez v4, :cond_10

    .line 345
    .line 346
    if-eqz v1, :cond_f

    .line 347
    .line 348
    move/from16 v4, v24

    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_f
    move v4, v5

    .line 352
    :goto_9
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    move v4, v8

    .line 357
    goto :goto_b

    .line 358
    :cond_10
    if-eqz v1, :cond_11

    .line 359
    .line 360
    move/from16 v4, v24

    .line 361
    .line 362
    goto :goto_a

    .line 363
    :cond_11
    move v4, v5

    .line 364
    :goto_a
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    move v1, v10

    .line 369
    :goto_b
    invoke-virtual {v7, v3, v0}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    add-int v5, v0, v3

    .line 374
    .line 375
    move v3, v1

    .line 376
    move/from16 v1, v26

    .line 377
    .line 378
    move/from16 v0, v28

    .line 379
    .line 380
    :goto_c
    add-int/lit8 v5, v5, 0x1

    .line 381
    .line 382
    move/from16 v8, p1

    .line 383
    .line 384
    move/from16 v9, p2

    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :cond_12
    move v10, v3

    .line 389
    move v8, v4

    .line 390
    move/from16 v4, v21

    .line 391
    .line 392
    if-lez v0, :cond_13

    .line 393
    .line 394
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-eqz v0, :cond_13

    .line 399
    .line 400
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 401
    .line 402
    iget v3, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 403
    .line 404
    add-int/2addr v0, v3

    .line 405
    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 406
    .line 407
    :cond_13
    if-eqz v15, :cond_17

    .line 408
    .line 409
    const/high16 v0, -0x80000000

    .line 410
    .line 411
    if-eq v13, v0, :cond_14

    .line 412
    .line 413
    if-nez v13, :cond_17

    .line 414
    .line 415
    :cond_14
    const/4 v0, 0x0

    .line 416
    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 417
    .line 418
    const/4 v0, 0x0

    .line 419
    :goto_d
    if-ge v0, v11, :cond_17

    .line 420
    .line 421
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    if-nez v3, :cond_15

    .line 426
    .line 427
    iget v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 428
    .line 429
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    .line 430
    .line 431
    .line 432
    move-result v5

    .line 433
    add-int/2addr v3, v5

    .line 434
    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 435
    .line 436
    goto :goto_e

    .line 437
    :cond_15
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    if-ne v5, v6, :cond_16

    .line 442
    .line 443
    invoke-virtual {v7, v3, v0}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    add-int/2addr v0, v3

    .line 448
    goto :goto_e

    .line 449
    :cond_16
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 454
    .line 455
    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 456
    .line 457
    add-int v14, v9, v2

    .line 458
    .line 459
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 460
    .line 461
    add-int/2addr v14, v6

    .line 462
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 463
    .line 464
    add-int/2addr v14, v5

    .line 465
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    add-int/2addr v14, v3

    .line 470
    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 475
    .line 476
    :goto_e
    add-int/lit8 v0, v0, 0x1

    .line 477
    .line 478
    const/16 v6, 0x8

    .line 479
    .line 480
    goto :goto_d

    .line 481
    :cond_17
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 482
    .line 483
    iget v3, v7, Landroid/view/View;->mPaddingTop:I

    .line 484
    .line 485
    iget v5, v7, Landroid/view/View;->mPaddingBottom:I

    .line 486
    .line 487
    add-int/2addr v3, v5

    .line 488
    add-int/2addr v3, v0

    .line 489
    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 490
    .line 491
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    move/from16 v3, p2

    .line 500
    .line 501
    const/4 v5, 0x0

    .line 502
    invoke-static {v0, v3, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    const v5, 0xffffff

    .line 507
    .line 508
    .line 509
    and-int/2addr v5, v0

    .line 510
    iget v6, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 511
    .line 512
    sub-int/2addr v5, v6

    .line 513
    iget-boolean v6, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    .line 514
    .line 515
    if-eqz v6, :cond_18

    .line 516
    .line 517
    const/16 v18, 0x0

    .line 518
    .line 519
    :cond_18
    add-int v5, v5, v18

    .line 520
    .line 521
    if-nez v19, :cond_1d

    .line 522
    .line 523
    if-eqz v5, :cond_19

    .line 524
    .line 525
    cmpl-float v6, v1, v17

    .line 526
    .line 527
    if-lez v6, :cond_19

    .line 528
    .line 529
    goto :goto_11

    .line 530
    :cond_19
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    if-eqz v15, :cond_1c

    .line 535
    .line 536
    const/high16 v5, 0x40000000    # 2.0f

    .line 537
    .line 538
    if-eq v13, v5, :cond_1c

    .line 539
    .line 540
    const/4 v10, 0x0

    .line 541
    :goto_f
    if-ge v10, v11, :cond_1c

    .line 542
    .line 543
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    .line 544
    .line 545
    .line 546
    move-result-object v5

    .line 547
    if-eqz v5, :cond_1b

    .line 548
    .line 549
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 550
    .line 551
    .line 552
    move-result v6

    .line 553
    const/16 v8, 0x8

    .line 554
    .line 555
    if-ne v6, v8, :cond_1a

    .line 556
    .line 557
    goto :goto_10

    .line 558
    :cond_1a
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 563
    .line 564
    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 565
    .line 566
    cmpl-float v6, v6, v17

    .line 567
    .line 568
    if-lez v6, :cond_1b

    .line 569
    .line 570
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 571
    .line 572
    .line 573
    move-result v6

    .line 574
    const/high16 v8, 0x40000000    # 2.0f

    .line 575
    .line 576
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 577
    .line 578
    .line 579
    move-result v6

    .line 580
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 581
    .line 582
    .line 583
    move-result v9

    .line 584
    invoke-virtual {v5, v6, v9}, Landroid/view/View;->measure(II)V

    .line 585
    .line 586
    .line 587
    :cond_1b
    :goto_10
    add-int/lit8 v10, v10, 0x1

    .line 588
    .line 589
    goto :goto_f

    .line 590
    :cond_1c
    move/from16 v5, p1

    .line 591
    .line 592
    goto/16 :goto_1b

    .line 593
    .line 594
    :cond_1d
    :goto_11
    iget v6, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 595
    .line 596
    cmpl-float v9, v6, v17

    .line 597
    .line 598
    if-lez v9, :cond_1e

    .line 599
    .line 600
    move v1, v6

    .line 601
    :cond_1e
    const/4 v6, 0x0

    .line 602
    iput v6, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 603
    .line 604
    move v9, v4

    .line 605
    move/from16 v6, v20

    .line 606
    .line 607
    move v4, v1

    .line 608
    const/4 v1, 0x0

    .line 609
    :goto_12
    if-ge v1, v11, :cond_2a

    .line 610
    .line 611
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    .line 612
    .line 613
    .line 614
    move-result-object v10

    .line 615
    if-eqz v10, :cond_29

    .line 616
    .line 617
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 618
    .line 619
    .line 620
    move-result v14

    .line 621
    const/16 v15, 0x8

    .line 622
    .line 623
    if-ne v14, v15, :cond_1f

    .line 624
    .line 625
    goto/16 :goto_19

    .line 626
    .line 627
    :cond_1f
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 628
    .line 629
    .line 630
    move-result-object v14

    .line 631
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 632
    .line 633
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 634
    .line 635
    cmpl-float v18, v15, v17

    .line 636
    .line 637
    move/from16 v31, v2

    .line 638
    .line 639
    if-lez v18, :cond_24

    .line 640
    .line 641
    int-to-float v2, v5

    .line 642
    mul-float/2addr v2, v15

    .line 643
    div-float/2addr v2, v4

    .line 644
    float-to-int v2, v2

    .line 645
    sub-int/2addr v5, v2

    .line 646
    sub-float/2addr v4, v15

    .line 647
    iget-boolean v15, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 648
    .line 649
    if-eqz v15, :cond_20

    .line 650
    .line 651
    const/high16 v15, 0x40000000    # 2.0f

    .line 652
    .line 653
    if-eq v13, v15, :cond_20

    .line 654
    .line 655
    move/from16 v18, v4

    .line 656
    .line 657
    move/from16 v4, v31

    .line 658
    .line 659
    goto :goto_14

    .line 660
    :cond_20
    iget v15, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 661
    .line 662
    if-nez v15, :cond_22

    .line 663
    .line 664
    iget-boolean v15, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    .line 665
    .line 666
    if-eqz v15, :cond_21

    .line 667
    .line 668
    const/high16 v15, 0x40000000    # 2.0f

    .line 669
    .line 670
    if-ne v13, v15, :cond_23

    .line 671
    .line 672
    goto :goto_13

    .line 673
    :cond_21
    const/high16 v15, 0x40000000    # 2.0f

    .line 674
    .line 675
    goto :goto_13

    .line 676
    :cond_22
    const/high16 v15, 0x40000000    # 2.0f

    .line 677
    .line 678
    :cond_23
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 679
    .line 680
    .line 681
    move-result v18

    .line 682
    add-int v2, v18, v2

    .line 683
    .line 684
    :goto_13
    move/from16 v18, v4

    .line 685
    .line 686
    move v4, v2

    .line 687
    :goto_14
    const/4 v2, 0x0

    .line 688
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 689
    .line 690
    .line 691
    move-result v4

    .line 692
    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 693
    .line 694
    .line 695
    move-result v4

    .line 696
    iget v15, v7, Landroid/view/View;->mPaddingLeft:I

    .line 697
    .line 698
    iget v2, v7, Landroid/view/View;->mPaddingRight:I

    .line 699
    .line 700
    add-int/2addr v15, v2

    .line 701
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 702
    .line 703
    add-int/2addr v15, v2

    .line 704
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 705
    .line 706
    add-int/2addr v15, v2

    .line 707
    iget v2, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 708
    .line 709
    move/from16 v19, v5

    .line 710
    .line 711
    move/from16 v5, p1

    .line 712
    .line 713
    invoke-static {v5, v15, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 714
    .line 715
    .line 716
    move-result v2

    .line 717
    invoke-virtual {v10, v2, v4}, Landroid/view/View;->measure(II)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    .line 721
    .line 722
    .line 723
    move-result v2

    .line 724
    and-int/lit16 v2, v2, -0x100

    .line 725
    .line 726
    invoke-static {v9, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 727
    .line 728
    .line 729
    move-result v9

    .line 730
    move/from16 v4, v18

    .line 731
    .line 732
    move/from16 v2, v19

    .line 733
    .line 734
    goto :goto_15

    .line 735
    :cond_24
    move v2, v5

    .line 736
    move/from16 v5, p1

    .line 737
    .line 738
    :goto_15
    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 739
    .line 740
    move/from16 v18, v2

    .line 741
    .line 742
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 743
    .line 744
    add-int/2addr v15, v2

    .line 745
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 746
    .line 747
    .line 748
    move-result v2

    .line 749
    add-int/2addr v2, v15

    .line 750
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 751
    .line 752
    .line 753
    move-result v6

    .line 754
    move/from16 v19, v2

    .line 755
    .line 756
    const/high16 v2, 0x40000000    # 2.0f

    .line 757
    .line 758
    if-eq v12, v2, :cond_25

    .line 759
    .line 760
    iget v2, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 761
    .line 762
    move/from16 v20, v4

    .line 763
    .line 764
    const/4 v4, -0x1

    .line 765
    if-ne v2, v4, :cond_26

    .line 766
    .line 767
    move/from16 v2, v16

    .line 768
    .line 769
    goto :goto_16

    .line 770
    :cond_25
    move/from16 v20, v4

    .line 771
    .line 772
    const/4 v4, -0x1

    .line 773
    :cond_26
    const/4 v2, 0x0

    .line 774
    :goto_16
    if-eqz v2, :cond_27

    .line 775
    .line 776
    goto :goto_17

    .line 777
    :cond_27
    move/from16 v15, v19

    .line 778
    .line 779
    :goto_17
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    .line 780
    .line 781
    .line 782
    move-result v2

    .line 783
    if-eqz v22, :cond_28

    .line 784
    .line 785
    iget v8, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 786
    .line 787
    if-ne v8, v4, :cond_28

    .line 788
    .line 789
    move/from16 v8, v16

    .line 790
    .line 791
    goto :goto_18

    .line 792
    :cond_28
    const/4 v8, 0x0

    .line 793
    :goto_18
    iget v15, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 794
    .line 795
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 796
    .line 797
    .line 798
    move-result v19

    .line 799
    add-int v19, v19, v15

    .line 800
    .line 801
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 802
    .line 803
    add-int v19, v19, v4

    .line 804
    .line 805
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 806
    .line 807
    add-int v19, v19, v4

    .line 808
    .line 809
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    .line 810
    .line 811
    .line 812
    move-result v4

    .line 813
    add-int v4, v19, v4

    .line 814
    .line 815
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    .line 816
    .line 817
    .line 818
    move-result v4

    .line 819
    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 820
    .line 821
    move/from16 v22, v8

    .line 822
    .line 823
    move/from16 v4, v20

    .line 824
    .line 825
    move v8, v2

    .line 826
    move/from16 v2, v18

    .line 827
    .line 828
    goto :goto_1a

    .line 829
    :cond_29
    :goto_19
    move/from16 v31, v2

    .line 830
    .line 831
    move v2, v5

    .line 832
    move/from16 v5, p1

    .line 833
    .line 834
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    .line 835
    .line 836
    move v5, v2

    .line 837
    move/from16 v2, v31

    .line 838
    .line 839
    goto/16 :goto_12

    .line 840
    .line 841
    :cond_2a
    move/from16 v5, p1

    .line 842
    .line 843
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 844
    .line 845
    iget v2, v7, Landroid/view/View;->mPaddingTop:I

    .line 846
    .line 847
    iget v4, v7, Landroid/view/View;->mPaddingBottom:I

    .line 848
    .line 849
    add-int/2addr v2, v4

    .line 850
    add-int/2addr v2, v1

    .line 851
    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 852
    .line 853
    move/from16 v20, v6

    .line 854
    .line 855
    move v1, v8

    .line 856
    move v4, v9

    .line 857
    :goto_1b
    if-nez v22, :cond_2b

    .line 858
    .line 859
    const/high16 v2, 0x40000000    # 2.0f

    .line 860
    .line 861
    if-eq v12, v2, :cond_2b

    .line 862
    .line 863
    goto :goto_1c

    .line 864
    :cond_2b
    move/from16 v1, v20

    .line 865
    .line 866
    :goto_1c
    iget v2, v7, Landroid/view/View;->mPaddingLeft:I

    .line 867
    .line 868
    iget v6, v7, Landroid/view/View;->mPaddingRight:I

    .line 869
    .line 870
    add-int/2addr v2, v6

    .line 871
    add-int/2addr v2, v1

    .line 872
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 873
    .line 874
    .line 875
    move-result v1

    .line 876
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 877
    .line 878
    .line 879
    move-result v1

    .line 880
    invoke-static {v1, v5, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 881
    .line 882
    .line 883
    move-result v1

    .line 884
    invoke-virtual {v7, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 885
    .line 886
    .line 887
    if-eqz v23, :cond_2c

    .line 888
    .line 889
    invoke-direct {v7, v11, v3}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    .line 890
    .line 891
    .line 892
    :cond_2c
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    iget p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 9
    .line 10
    iget p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "base aligned child index out of range (0, "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 25
    .line 26
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 27
    .line 28
    :goto_0
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    xor-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    const v0, 0x800007

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, p1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const v0, 0x800003

    .line 12
    .line 13
    .line 14
    or-int/2addr p1, v0

    .line 15
    :cond_0
    and-int/lit8 v0, p1, 0x70

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    or-int/lit8 p1, p1, 0x30

    .line 20
    .line 21
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    const v0, 0x800007

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    const v0, -0x800008

    .line 11
    .line 12
    .line 13
    and-int/2addr v0, v1

    .line 14
    or-int/2addr p1, v0

    .line 15
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    xor-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    and-int/lit8 p1, p1, 0x70

    .line 2
    .line 3
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x70

    .line 6
    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x71

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
