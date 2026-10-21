.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;
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
    .end annotation
.end field

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
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    const p1, 0x800033

    .line 5
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    .line 10
    iput v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    const v3, 0x800033

    .line 11
    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 12
    sget-object v3, Li/a;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 14
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 15
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_1

    .line 16
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_1
    const/4 p2, 0x2

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_2

    .line 18
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    :cond_2
    const/4 p2, 0x4

    const/high16 p3, -0x40800000    # -1.0f

    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 p2, 0x3

    .line 20
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const/4 p2, 0x6

    .line 21
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/4 p2, 0x5

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x7

    .line 23
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/16 p2, 0x8

    .line 24
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 6
    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v6, v0

    .line 8
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 9
    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 6
    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 8
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 9
    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 0

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 1
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroid/widget/LinearLayout$LayoutParams;

    return p1
.end method

.method public drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    .line 9
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, -0x1

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    goto :goto_2

    .line 14
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    :goto_2
    sub-int/2addr v0, v1

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 17
    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_6
    return-void
.end method

.method public drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 7
    invoke-virtual {p0, p1, v2}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 13
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method public drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    iget-object p2, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    iget-object p2, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

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
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_6

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 6
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v0, :cond_1

    return v2

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 9
    iget v3, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 10
    iget v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 12
    :cond_4
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 13
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    .line 15
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method public getChildrenSkipCount(Landroid/view/View;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method public getLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getNextLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method public getVirtualChildAt(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getVirtualChildCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method public hasDividerBeforeChildAt(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 3
    iget p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 4
    :cond_3
    iget v2, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method public layoutHorizontal(IIII)V
    .locals 24

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    .line 2
    iget v7, v6, Landroid/view/View;->mPaddingTop:I

    sub-int v1, p4, p2

    .line 3
    iget v2, v6, Landroid/view/View;->mPaddingBottom:I

    sub-int v8, v1, v2

    sub-int/2addr v1, v7

    sub-int v9, v1, v2

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v10

    .line 5
    iget v1, v6, Landroid/widget/LinearLayout;->mGravity:I

    const v2, 0x800007

    and-int/2addr v2, v1

    and-int/lit8 v11, v1, 0x70

    .line 6
    iget-boolean v12, v6, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 7
    iget-object v13, v6, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 8
    iget-object v14, v6, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 10
    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 11
    iget v1, v6, Landroid/view/View;->mPaddingLeft:I

    goto :goto_0

    .line 12
    :cond_0
    iget v1, v6, Landroid/view/View;->mPaddingLeft:I

    add-int v1, v1, p3

    sub-int v1, v1, p1

    iget v2, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 13
    :cond_1
    iget v1, v6, Landroid/view/View;->mPaddingLeft:I

    sub-int v2, p3, p1

    iget v3, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v15

    add-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v10, -0x1

    move/from16 v16, v0

    const/16 v17, -0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v2

    move/from16 v17, v5

    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v10, :cond_d

    mul-int v0, v17, v3

    add-int v2, v16, v0

    .line 14
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v0

    add-int/2addr v1, v0

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v19, v10

    move/from16 v20, v11

    goto/16 :goto_6

    .line 16
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v15, 0x8

    if-eq v5, v15, :cond_c

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v18, v3

    if-eqz v12, :cond_4

    .line 20
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v10

    const/4 v10, -0x1

    if-eq v3, v10, :cond_5

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v10

    goto :goto_3

    :cond_4
    move/from16 v19, v10

    :cond_5
    const/4 v10, -0x1

    .line 22
    :goto_3
    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_6

    move v3, v11

    :cond_6
    and-int/lit8 v3, v3, 0x70

    move/from16 v20, v11

    const/16 v11, 0x10

    if-eq v3, v11, :cond_a

    const/16 v11, 0x30

    if-eq v3, v11, :cond_8

    const/16 v11, 0x50

    if-eq v3, v11, :cond_7

    move v3, v7

    const/4 v11, -0x1

    goto :goto_4

    :cond_7
    sub-int v3, v8, v5

    .line 23
    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v21, v21, v10

    const/4 v10, 0x2

    .line 25
    aget v22, v14, v10

    sub-int v22, v22, v21

    sub-int v3, v3, v22

    goto :goto_4

    :cond_8
    const/4 v11, -0x1

    .line 26
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v7

    if-eq v10, v11, :cond_9

    const/16 v21, 0x1

    .line 27
    aget v22, v13, v21

    sub-int v22, v22, v10

    add-int v3, v3, v22

    goto :goto_5

    :cond_9
    :goto_4
    const/16 v21, 0x1

    goto :goto_5

    :cond_a
    const/4 v11, -0x1

    const/16 v21, 0x1

    sub-int v3, v9, v5

    const/4 v10, 0x2

    .line 28
    div-int/2addr v3, v10

    add-int/2addr v3, v7

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v10

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v10

    .line 29
    :goto_5
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 30
    iget v10, v6, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v10

    .line 31
    :cond_b
    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v1

    .line 32
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v22, v10, v1

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 p1, v1

    move v11, v2

    move/from16 v2, v22

    move/from16 v22, v7

    const/16 v23, -0x1

    move-object v7, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 33
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/2addr v10, v15

    .line 34
    invoke-virtual {v6, v0, v11}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v18, v0

    move v1, v10

    goto :goto_7

    :cond_c
    move/from16 v18, v3

    move/from16 v22, v7

    move/from16 v19, v10

    move/from16 v20, v11

    const/16 v21, 0x1

    :goto_6
    const/16 v23, -0x1

    :goto_7
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v5, v21

    move/from16 v7, v22

    const/4 v15, 0x2

    goto/16 :goto_2

    :cond_d
    return-void
.end method

.method public layoutVertical(IIII)V
    .locals 17

    move-object/from16 v6, p0

    .line 1
    iget v7, v6, Landroid/view/View;->mPaddingLeft:I

    sub-int v0, p3, p1

    .line 2
    iget v1, v6, Landroid/view/View;->mPaddingRight:I

    sub-int v8, v0, v1

    sub-int/2addr v0, v7

    sub-int v9, v0, v1

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v10

    .line 4
    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    const v2, 0x800007

    and-int v11, v0, v2

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    .line 5
    iget v0, v6, Landroid/view/View;->mPaddingTop:I

    goto :goto_0

    .line 6
    :cond_0
    iget v0, v6, Landroid/view/View;->mPaddingTop:I

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 7
    :cond_1
    iget v0, v6, Landroid/view/View;->mPaddingTop:I

    sub-int v1, p4, p2

    iget v2, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-ge v12, v10, :cond_8

    .line 8
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    if-nez v13, :cond_2

    .line 9
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_4

    .line 10
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    .line 11
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 13
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v1, :cond_3

    move v1, v11

    .line 15
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    .line 16
    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v14, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 17
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    goto :goto_3

    :cond_4
    sub-int v1, v8, v4

    .line 18
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_5
    sub-int v1, v9, v4

    .line 19
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v1, v2

    :goto_3
    move v2, v1

    .line 20
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 21
    iget v1, v6, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 22
    :cond_6
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v16, v0, v1

    .line 23
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v3, v16, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v14, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 24
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v15, v0

    add-int v16, v16, v15

    .line 25
    invoke-virtual {v6, v13, v12}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v12, v0

    move/from16 v0, v16

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v14

    :goto_5
    add-int/2addr v12, v1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public measureHorizontal(II)V
    .locals 35

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

    move/from16 v22, v0

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v27, v25

    move/from16 v26, v18

    move/from16 v21, v20

    const/high16 v14, -0x80000000

    :goto_1
    move-object/from16 v28, v6

    const/16 v1, 0x8

    if-ge v0, v11, :cond_15

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

    :goto_2
    move v1, v0

    move v0, v2

    move/from16 v31, v3

    move/from16 v34, v4

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

    goto :goto_2

    .line 18
    :cond_4
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

    add-float v21, v21, v1

    if-ne v12, v2, :cond_8

    .line 22
    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v2, :cond_8

    cmpl-float v2, v1, v20

    if-lez v2, :cond_8

    if-eqz v19, :cond_6

    .line 23
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v10

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_3

    .line 24
    :cond_6
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
    if-eqz v4, :cond_7

    const/4 v1, 0x0

    .line 26
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 27
    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    :cond_7
    move/from16 v33, v0

    move/from16 v31, v3

    move/from16 v34, v4

    move-object v9, v5

    move-object v3, v6

    const/16 v30, -0x2

    goto/16 :goto_7

    .line 28
    :cond_8
    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v2, :cond_9

    cmpl-float v1, v1, v20

    if-lez v1, :cond_9

    const/4 v10, -0x2

    .line 29
    iput v10, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    const/4 v10, -0x2

    const/high16 v2, -0x80000000

    :goto_4
    cmpl-float v1, v21, v20

    if-nez v1, :cond_a

    .line 30
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v30, v1

    goto :goto_5

    :cond_a
    const/16 v30, 0x0

    :goto_5
    const/16 v32, 0x0

    move v1, v0

    move-object/from16 v0, p0

    move/from16 v33, v1

    const/high16 v10, -0x80000000

    move-object v1, v6

    move v10, v2

    move/from16 v2, v33

    move/from16 v31, v3

    move/from16 v3, p1

    move/from16 v34, v4

    move/from16 v4, v30

    move-object v9, v5

    move/from16 v5, p2

    move-object/from16 v29, v6

    const/16 v30, -0x2

    move/from16 v6, v32

    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    const/high16 v0, -0x80000000

    if-eq v10, v0, :cond_b

    .line 31
    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 32
    :cond_b
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v19, :cond_c

    .line 33
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v29

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_6

    :cond_c
    move-object/from16 v3, v29

    .line 34
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v2, v1, v0

    .line 35
    iget v4, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_6
    if-eqz v31, :cond_d

    .line 36
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_d
    :goto_7
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_e

    .line 37
    iget v1, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    move/from16 v1, v18

    move/from16 v27, v1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 38
    :goto_8
    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v10, v25

    invoke-static {v10, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v25

    if-eqz v34, :cond_10

    .line 41
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_10

    .line 42
    iget v6, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v6, :cond_f

    iget v6, v7, Landroid/widget/LinearLayout;->mGravity:I

    :cond_f
    and-int/lit8 v6, v6, 0x70

    const/4 v10, 0x4

    shr-int/2addr v6, v10

    and-int/lit8 v6, v6, -0x2

    shr-int/lit8 v6, v6, 0x1

    .line 43
    aget v10, v15, v6

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v15, v6

    .line 44
    aget v10, v28, v6

    sub-int v5, v4, v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v28, v6

    :cond_10
    move/from16 v5, v22

    .line 45
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    if-eqz v26, :cond_11

    .line 46
    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_11

    move/from16 v26, v18

    goto :goto_9

    :cond_11
    const/16 v26, 0x0

    .line 47
    :goto_9
    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v20

    if-lez v5, :cond_13

    if-eqz v1, :cond_12

    goto :goto_a

    :cond_12
    move v2, v4

    :goto_a
    move/from16 v6, v24

    .line 48
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto :goto_c

    :cond_13
    move/from16 v6, v24

    if-eqz v1, :cond_14

    goto :goto_b

    :cond_14
    move v2, v4

    :goto_b
    move/from16 v4, v23

    .line 49
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v24, v6

    :goto_c
    move/from16 v10, v33

    .line 50
    invoke-virtual {v7, v3, v10}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v1, v10

    :goto_d
    add-int/lit8 v1, v1, 0x1

    move/from16 v9, p2

    move v2, v0

    move v0, v1

    move-object/from16 v6, v28

    move/from16 v3, v31

    move/from16 v4, v34

    const/4 v5, -0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_15
    move v0, v2

    move/from16 v31, v3

    move/from16 v34, v4

    move/from16 v5, v22

    move/from16 v4, v23

    move/from16 v6, v24

    move/from16 v10, v25

    const/16 v30, -0x2

    .line 51
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    if-lez v2, :cond_16

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 52
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 53
    :cond_16
    aget v2, v15, v18

    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    const/4 v2, 0x0

    aget v9, v15, v2

    if-ne v9, v3, :cond_18

    aget v2, v15, v17

    if-ne v2, v3, :cond_18

    aget v2, v15, v16

    if-eq v2, v3, :cond_17

    goto :goto_e

    :cond_17
    move v0, v5

    goto :goto_f

    .line 54
    :cond_18
    :goto_e
    aget v2, v15, v16

    const/4 v3, 0x0

    aget v9, v15, v3

    aget v0, v15, v18

    aget v1, v15, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 55
    aget v1, v28, v16

    aget v2, v28, v3

    aget v3, v28, v18

    aget v9, v28, v17

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_f
    if-eqz v31, :cond_1d

    const/high16 v1, -0x80000000

    if-eq v12, v1, :cond_19

    if-nez v12, :cond_1d

    :cond_19
    const/4 v1, 0x0

    .line 57
    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v11, :cond_1d

    .line 58
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 59
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_11

    .line 60
    :cond_1a
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_1b

    .line 61
    invoke-virtual {v7, v2, v1}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_11
    move/from16 v23, v0

    goto :goto_12

    .line 62
    :cond_1b
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v19, :cond_1c

    .line 63
    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v14

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v3

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v9, v2

    add-int/2addr v5, v9

    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_11

    .line 64
    :cond_1c
    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v9, v5, v14

    move/from16 v23, v0

    .line 65
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v0

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v0

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v9, v0

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_12
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v23

    goto :goto_10

    :cond_1d
    move/from16 v23, v0

    .line 66
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v1, v7, Landroid/view/View;->mPaddingLeft:I

    iget v2, v7, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    .line 68
    invoke-static {v0, v8, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v1, v0

    .line 69
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_30

    cmpl-float v3, v21, v20

    if-lez v3, :cond_30

    .line 70
    iget v3, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v5, v3, v20

    if-lez v5, :cond_1e

    move/from16 v21, v3

    :cond_1e
    const/4 v3, -0x1

    .line 71
    aput v3, v15, v16

    aput v3, v15, v17

    aput v3, v15, v18

    const/4 v5, 0x0

    aput v3, v15, v5

    .line 72
    aput v3, v28, v16

    aput v3, v28, v17

    aput v3, v28, v18

    aput v3, v28, v5

    .line 73
    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move v5, v3

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v11, :cond_2d

    .line 74
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2c

    .line 75
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v3, 0x8

    if-ne v14, v3, :cond_1f

    goto/16 :goto_1d

    .line 76
    :cond_1f
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 77
    iget v14, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v23, v14, v20

    if-lez v23, :cond_24

    int-to-float v2, v1

    mul-float/2addr v2, v14

    div-float v2, v2, v21

    float-to-int v2, v2

    sub-float v21, v21, v14

    sub-int/2addr v1, v2

    .line 78
    iget v14, v7, Landroid/view/View;->mPaddingTop:I

    move/from16 v23, v1

    iget v1, v7, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v14, v1

    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v1

    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v1

    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v8, p2

    move/from16 v25, v0

    const/4 v0, -0x1

    invoke-static {v8, v14, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 79
    iget v14, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v14, :cond_22

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v12, v14, :cond_20

    goto :goto_15

    :cond_20
    if-lez v2, :cond_21

    goto :goto_14

    :cond_21
    const/4 v2, 0x0

    .line 80
    :goto_14
    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v9, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_16

    :cond_22
    const/high16 v14, 0x40000000    # 2.0f

    .line 81
    :goto_15
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    add-int v2, v29, v2

    if-gez v2, :cond_23

    const/4 v2, 0x0

    .line 82
    :cond_23
    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v9, v2, v1}, Landroid/view/View;->measure(II)V

    .line 83
    :goto_16
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    invoke-static {v10, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    move/from16 v1, v23

    goto :goto_17

    :cond_24
    move/from16 v8, p2

    move/from16 v25, v0

    const/4 v0, -0x1

    :goto_17
    if-eqz v19, :cond_25

    .line 84
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v0

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v14, v0

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v14, v0

    add-int/2addr v2, v14

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_18

    .line 85
    :cond_25
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 86
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget v14, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v14

    iget v14, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v14

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v14

    add-int/2addr v2, v14

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_18
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_26

    .line 87
    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_26

    move/from16 v0, v18

    goto :goto_19

    :cond_26
    const/4 v0, 0x0

    .line 88
    :goto_19
    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v14, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v14

    .line 89
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v2

    .line 90
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v0, :cond_27

    goto :goto_1a

    :cond_27
    move v2, v14

    .line 91
    :goto_1a
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v26, :cond_28

    .line 92
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_29

    move/from16 v2, v18

    goto :goto_1b

    :cond_28
    const/4 v4, -0x1

    :cond_29
    const/4 v2, 0x0

    :goto_1b
    if-eqz v34, :cond_2b

    .line 93
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v9

    if-eq v9, v4, :cond_2b

    .line 94
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_2a

    iget v3, v7, Landroid/widget/LinearLayout;->mGravity:I

    :cond_2a
    and-int/lit8 v3, v3, 0x70

    const/16 v23, 0x4

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v3, v3, 0x1

    .line 95
    aget v4, v15, v3

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v15, v3

    .line 96
    aget v4, v28, v3

    sub-int/2addr v14, v9

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v28, v3

    goto :goto_1c

    :cond_2b
    const/16 v23, 0x4

    :goto_1c
    move v4, v0

    move/from16 v26, v2

    goto :goto_1e

    :cond_2c
    :goto_1d
    move/from16 v8, p2

    move/from16 v25, v0

    const/16 v23, 0x4

    :goto_1e
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, p1

    move/from16 v0, v25

    const/4 v3, -0x1

    goto/16 :goto_13

    :cond_2d
    move/from16 v8, p2

    move/from16 v25, v0

    .line 97
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v1, v7, Landroid/view/View;->mPaddingLeft:I

    iget v2, v7, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 98
    aget v0, v15, v18

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2f

    const/4 v0, 0x0

    aget v2, v15, v0

    if-ne v2, v1, :cond_2f

    aget v0, v15, v17

    if-ne v0, v1, :cond_2f

    aget v0, v15, v16

    if-eq v0, v1, :cond_2e

    goto :goto_1f

    :cond_2e
    move v0, v5

    goto/16 :goto_22

    .line 99
    :cond_2f
    :goto_1f
    aget v0, v15, v16

    const/4 v1, 0x0

    aget v2, v15, v1

    aget v3, v15, v18

    aget v6, v15, v17

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 100
    aget v2, v28, v16

    aget v1, v28, v1

    aget v3, v28, v18

    aget v6, v28, v17

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_22

    :cond_30
    move/from16 v8, p2

    move/from16 v25, v0

    const/4 v1, 0x0

    .line 102
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v31, :cond_34

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_34

    :goto_20
    if-ge v1, v11, :cond_34

    .line 103
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_31

    goto :goto_21

    .line 105
    :cond_31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v2, v2, v20

    if-lez v2, :cond_33

    const/high16 v2, 0x40000000    # 2.0f

    .line 107
    invoke-static {v14, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    goto :goto_21

    :cond_32
    const/16 v3, 0x8

    :cond_33
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_34
    move/from16 v0, v23

    :goto_22
    if-nez v26, :cond_35

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v13, v1, :cond_35

    move v0, v4

    .line 108
    :cond_35
    iget v1, v7, Landroid/view/View;->mPaddingTop:I

    iget v2, v7, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v10

    or-int v1, v25, v1

    shl-int/lit8 v2, v10, 0x10

    .line 110
    invoke-static {v0, v8, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    if-eqz v27, :cond_36

    move/from16 v0, p1

    .line 111
    invoke-direct {v7, v11, v0}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    :cond_36
    return-void
.end method

.method public measureNullChild(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public measureVertical(II)V
    .locals 32

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
    iget v14, v7, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 6
    iget-boolean v15, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    move v1, v10

    move v3, v1

    move v5, v3

    move/from16 v20, v5

    move/from16 v21, v20

    move/from16 v0, v16

    move/from16 v19, v17

    const/high16 v2, -0x80000000

    :goto_0
    if-ge v5, v11, :cond_10

    .line 7
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 8
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v22

    add-int v4, v4, v22

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v22, v11

    move/from16 v26, v13

    const/high16 v9, -0x80000000

    goto/16 :goto_b

    .line 9
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    move/from16 v26, v1

    const/16 v1, 0x8

    if-ne v6, v1, :cond_1

    .line 10
    invoke-virtual {v7, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v5, v1

    move/from16 v22, v11

    move/from16 v1, v26

    const/high16 v9, -0x80000000

    move/from16 v26, v13

    goto/16 :goto_b

    .line 11
    :cond_1
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v6, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v1, v6

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 13
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v23, v0, v1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v13, v0, :cond_3

    .line 15
    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v0, :cond_3

    cmpl-float v0, v1, v16

    if-lez v0, :cond_3

    .line 16
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 17
    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v27, v2

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v25, v3

    move-object v3, v4

    move/from16 v22, v11

    move/from16 v28, v21

    move/from16 v8, v26

    const/high16 v9, -0x80000000

    move v11, v5

    move/from16 v26, v13

    move-object v13, v6

    move/from16 v6, v27

    goto/16 :goto_3

    :cond_3
    move/from16 v27, v2

    .line 18
    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v0, :cond_4

    cmpl-float v0, v1, v16

    if-lez v0, :cond_4

    const/4 v0, -0x2

    .line 19
    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/high16 v2, -0x80000000

    :goto_1
    const/16 v28, 0x0

    cmpl-float v0, v23, v16

    if-nez v0, :cond_5

    .line 20
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v24, v0

    goto :goto_2

    :cond_5
    const/16 v24, 0x0

    :goto_2
    const/high16 v29, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move/from16 v8, v26

    move-object v1, v4

    move/from16 v31, v2

    move/from16 v30, v27

    move v2, v5

    move v9, v3

    move/from16 v3, p1

    move/from16 v22, v11

    move/from16 v26, v13

    move/from16 v13, v21

    move/from16 v11, v29

    move-object/from16 v21, v4

    move/from16 v4, v28

    move v11, v5

    move/from16 v5, p2

    move/from16 v25, v9

    move/from16 v28, v13

    const/high16 v9, -0x80000000

    move-object v13, v6

    move/from16 v6, v24

    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    move/from16 v0, v31

    if-eq v0, v9, :cond_6

    .line 21
    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    :cond_6
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 23
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v2, v1, v0

    .line 24
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v21

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v6, v30

    if-eqz v15, :cond_7

    .line 25
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_4

    :cond_7
    :goto_3
    move v2, v6

    :goto_4
    if-ltz v14, :cond_8

    add-int/lit8 v5, v11, 0x1

    if-ne v14, v5, :cond_8

    .line 26
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iput v0, v7, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    :cond_8
    if-ge v11, v14, :cond_a

    .line 27
    iget v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-gtz v0, :cond_9

    goto :goto_5

    .line 28
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_b

    .line 29
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    move/from16 v0, v17

    move/from16 v20, v0

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    .line 30
    :goto_6
    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v4

    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    .line 32
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v10, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    if-eqz v19, :cond_c

    .line 34
    iget v8, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_c

    move/from16 v8, v17

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    .line 35
    :goto_7
    iget v10, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v10, v10, v16

    if-lez v10, :cond_e

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    move v1, v4

    :goto_8
    move/from16 v13, v25

    .line 36
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v13, v0

    move/from16 v4, v28

    goto :goto_a

    :cond_e
    move/from16 v13, v25

    if-eqz v0, :cond_f

    goto :goto_9

    :cond_f
    move v1, v4

    :goto_9
    move/from16 v4, v28

    .line 37
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 38
    :goto_a
    invoke-virtual {v7, v3, v11}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v11

    move/from16 v21, v4

    move v1, v5

    move v10, v6

    move/from16 v19, v8

    move v3, v13

    move v5, v0

    move/from16 v0, v23

    :goto_b
    add-int/lit8 v5, v5, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v11, v22

    move/from16 v13, v26

    goto/16 :goto_0

    :cond_10
    move v8, v1

    move v6, v2

    move/from16 v22, v11

    move/from16 v26, v13

    move/from16 v4, v21

    const/high16 v9, -0x80000000

    move v13, v3

    .line 39
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    if-lez v1, :cond_11

    move/from16 v1, v22

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 40
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_c

    :cond_11
    move/from16 v1, v22

    :cond_12
    :goto_c
    move/from16 v2, v26

    if-eqz v15, :cond_16

    if-eq v2, v9, :cond_13

    if-nez v2, :cond_16

    :cond_13
    const/4 v3, 0x0

    .line 41
    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_16

    .line 42
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_14

    .line 43
    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v9

    add-int/2addr v5, v9

    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v21, v3

    goto :goto_e

    .line 44
    :cond_14
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_15

    .line 45
    invoke-virtual {v7, v5, v3}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_f

    .line 46
    :cond_15
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 47
    iget v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v14, v11, v6

    move/from16 v21, v3

    .line 48
    iget v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v3

    iget v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v3

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int/2addr v14, v3

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_e
    move/from16 v3, v21

    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 49
    :cond_16
    iget v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/view/View;->mPaddingTop:I

    iget v9, v7, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v5, v9

    add-int/2addr v3, v5

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v5, p2

    move v9, v13

    const/4 v11, 0x0

    .line 51
    invoke-static {v3, v5, v11}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    const v11, 0xffffff

    and-int/2addr v11, v3

    .line 52
    iget v13, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v11, v13

    if-eqz v11, :cond_23

    cmpl-float v13, v0, v16

    if-lez v13, :cond_23

    .line 53
    iget v6, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v9, v6, v16

    if-lez v9, :cond_17

    move v0, v6

    :cond_17
    const/4 v13, 0x0

    .line 54
    iput v13, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move v6, v4

    move v4, v13

    :goto_10
    if-ge v4, v1, :cond_22

    .line 55
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 56
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_18

    move v13, v11

    move/from16 v11, p1

    goto/16 :goto_18

    .line 57
    :cond_18
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v18, v15, v16

    if-lez v18, :cond_1d

    int-to-float v13, v11

    mul-float/2addr v13, v15

    div-float/2addr v13, v0

    float-to-int v13, v13

    sub-float/2addr v0, v15

    sub-int/2addr v11, v13

    .line 59
    iget v15, v7, Landroid/view/View;->mPaddingLeft:I

    move/from16 v21, v0

    iget v0, v7, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v15, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v11

    move/from16 v11, p1

    invoke-static {v11, v15, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 60
    iget v15, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v15, :cond_1b

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v2, v15, :cond_19

    goto :goto_12

    :cond_19
    if-lez v13, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v13, 0x0

    .line 61
    :goto_11
    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v9, v0, v13}, Landroid/view/View;->measure(II)V

    goto :goto_13

    :cond_1b
    const/high16 v15, 0x40000000    # 2.0f

    .line 62
    :goto_12
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v13, v24, v13

    if-gez v13, :cond_1c

    const/4 v13, 0x0

    .line 63
    :cond_1c
    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v9, v0, v13}, Landroid/view/View;->measure(II)V

    .line 64
    :goto_13
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    move v10, v0

    move/from16 v0, v21

    move/from16 v13, v22

    goto :goto_14

    :cond_1d
    move v13, v11

    move/from16 v11, p1

    .line 65
    :goto_14
    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    .line 66
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v15

    .line 67
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v22, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_1e

    .line 68
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v8

    const/4 v8, -0x1

    if-ne v0, v8, :cond_1f

    move/from16 v0, v17

    goto :goto_15

    :cond_1e
    move/from16 v24, v8

    const/4 v8, -0x1

    :cond_1f
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_20

    goto :goto_16

    :cond_20
    move/from16 v15, v22

    .line 69
    :goto_16
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v19, :cond_21

    .line 70
    iget v6, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v6, v8, :cond_21

    move/from16 v6, v17

    goto :goto_17

    :cond_21
    const/4 v6, 0x0

    .line 71
    :goto_17
    iget v15, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 72
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v19, v15, v19

    iget v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v19, v19, v8

    iget v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v19, v19, v8

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int v8, v19, v8

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v19, v6

    move/from16 v8, v24

    move v6, v0

    move/from16 v0, v21

    :goto_18
    add-int/lit8 v4, v4, 0x1

    move v11, v13

    const/4 v13, 0x0

    goto/16 :goto_10

    :cond_22
    move/from16 v11, p1

    .line 73
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/view/View;->mPaddingTop:I

    iget v4, v7, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move v0, v8

    goto :goto_1b

    :cond_23
    move/from16 v11, p1

    move v0, v8

    .line 74
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v15, :cond_27

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v2, v8, :cond_27

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_27

    .line 75
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_25

    .line 76
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v13, 0x8

    if-ne v9, v13, :cond_24

    goto :goto_1a

    .line 77
    :cond_24
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_26

    .line 79
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v8, v9, v15}, Landroid/view/View;->measure(II)V

    goto :goto_1a

    :cond_25
    const/16 v13, 0x8

    :cond_26
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_27
    move v6, v4

    :goto_1b
    if-nez v19, :cond_28

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_28

    move v0, v6

    .line 80
    :cond_28
    iget v2, v7, Landroid/view/View;->mPaddingLeft:I

    iget v4, v7, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 82
    invoke-static {v0, v11, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v0, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    if-eqz v20, :cond_29

    .line 83
    invoke-direct {v7, v1, v5}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    :cond_29
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    iget p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    :goto_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base aligned child index out of range (0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_0

    .line 5
    :cond_1
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 6
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 7
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 2
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3
    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    and-int/lit8 p1, p1, 0x70

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    .line 1
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
