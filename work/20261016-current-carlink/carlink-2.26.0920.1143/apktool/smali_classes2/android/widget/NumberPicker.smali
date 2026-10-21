.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$SavedState;,
        Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Landroid/widget/NumberPicker$CustomEditText;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$PressedStateHelper;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$OnValueChangeListener;,
        Landroid/widget/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x109009f

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/NumberPicker$TwoDigitFormatter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    .line 7
    .line 8
    const/16 v0, 0x3c

    .line 9
    .line 10
    new-array v0, v0, [C

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010524

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    const-wide/16 v1, 0x12c

    .line 6
    iput-wide v1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 7
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 8
    iput-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    const/high16 v2, -0x80000000

    .line 9
    iput v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    const/4 v2, 0x0

    .line 10
    iput v2, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v3, -0x1

    .line 11
    iput v3, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 12
    sget-object v4, Lcom/android/internal/R$styleable;->NumberPicker:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    const p4, 0x109009f

    .line 13
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eq v4, p4, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    move p4, v2

    .line 14
    :goto_0
    iput-boolean p4, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 15
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    .line 16
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    const/4 v5, 0x7

    .line 17
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 18
    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 20
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 22
    :cond_1
    iput-object v5, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    .line 24
    invoke-static {v0, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    const/16 v6, 0x8

    .line 25
    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v7, 0x42400000    # 48.0f

    .line 27
    invoke-static {v0, v7, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    const/16 v7, 0x9

    .line 28
    invoke-virtual {p2, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    const/4 v5, 0x5

    .line 29
    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    .line 30
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    if-eq v5, v3, :cond_3

    if-eq v1, v3, :cond_3

    if-gt v5, v1, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v1, 0x6

    .line 32
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    const/4 v7, 0x4

    .line 33
    invoke-virtual {p2, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v5, v3, :cond_5

    if-eq v7, v3, :cond_5

    if-gt v5, v7, :cond_4

    goto :goto_2

    .line 34
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    if-ne v7, v3, :cond_6

    move v5, v0

    goto :goto_3

    :cond_6
    move v5, v2

    .line 35
    :goto_3
    iput-boolean v5, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    const/16 v5, 0xa

    .line 36
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    new-instance p2, Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Landroid/widget/NumberPicker$PressedStateHelper;-><init>(Landroid/widget/NumberPicker;)V

    iput-object p2, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    xor-int/lit8 p2, p4, 0x1

    .line 39
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v5, "layout_inflater"

    invoke-virtual {p2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 41
    invoke-virtual {p2, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    new-instance p2, Landroid/widget/NumberPicker$1;

    invoke-direct {p2, p0}, Landroid/widget/NumberPicker$1;-><init>(Landroid/widget/NumberPicker;)V

    .line 43
    new-instance v4, Landroid/widget/NumberPicker$2;

    invoke-direct {v4, p0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    const/4 v5, 0x0

    if-nez p4, :cond_7

    const v7, 0x10202a2

    .line 44
    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 45
    invoke-virtual {v7, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {v7, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    .line 47
    :cond_7
    iput-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    :goto_4
    if-nez p4, :cond_8

    const p4, 0x102021d

    .line 48
    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageButton;

    iput-object p4, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 49
    invoke-virtual {p4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p4, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_5

    .line 51
    :cond_8
    iput-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    :goto_5
    const p2, 0x1020336

    .line 52
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 53
    new-instance p4, Landroid/widget/NumberPicker$3;

    invoke-direct {p4, p0}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-array p4, v0, [Landroid/text/InputFilter;

    .line 54
    new-instance v4, Landroid/widget/NumberPicker$InputTextFilter;

    invoke-direct {v4, p0}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    aput-object v4, p4, v2

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 56
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 57
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 58
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/2addr p1, v6

    iput p1, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 62
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    .line 63
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 64
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float p1, p1

    .line 66
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 68
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 69
    sget-object p2, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 70
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iput-object p3, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 72
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v5, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 73
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p4, 0x40200000    # 2.5f

    invoke-direct {p3, p4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 74
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 77
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getFocusable()I

    move-result p1

    const/16 p2, 0x10

    if-ne p1, p2, :cond_a

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(I)V

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_a
    return-void
.end method

.method public static synthetic access$000(Landroid/widget/NumberPicker;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$1000(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method public static synthetic access$1100(Landroid/widget/NumberPicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method public static synthetic access$1200(Landroid/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method public static synthetic access$1202(Landroid/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method public static synthetic access$1300(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method public static synthetic access$1400(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mRight:I

    return p0
.end method

.method public static synthetic access$1500(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mBottom:I

    return p0
.end method

.method public static synthetic access$1600(Landroid/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method public static synthetic access$1602(Landroid/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method public static synthetic access$1700(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mRight:I

    return p0
.end method

.method public static synthetic access$1800(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method public static synthetic access$1900(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mRight:I

    return p0
.end method

.method public static synthetic access$200(Landroid/widget/NumberPicker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method public static synthetic access$2000(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mBottom:I

    return p0
.end method

.method public static synthetic access$2100(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mRight:I

    return p0
.end method

.method public static synthetic access$2200(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mRight:I

    return p0
.end method

.method public static synthetic access$2300(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mBottom:I

    return p0
.end method

.method public static synthetic access$2400(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mRight:I

    return p0
.end method

.method public static synthetic access$2500(Landroid/widget/NumberPicker;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method public static synthetic access$2600(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollX:I

    return p0
.end method

.method public static synthetic access$2700(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollY:I

    return p0
.end method

.method public static synthetic access$2800(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollX:I

    return p0
.end method

.method public static synthetic access$2900(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mRight:I

    return p0
.end method

.method public static synthetic access$300(Landroid/widget/NumberPicker;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method public static synthetic access$3000(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mLeft:I

    return p0
.end method

.method public static synthetic access$3100(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollY:I

    return p0
.end method

.method public static synthetic access$3200(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mBottom:I

    return p0
.end method

.method public static synthetic access$3300(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mTop:I

    return p0
.end method

.method public static synthetic access$3400(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollX:I

    return p0
.end method

.method public static synthetic access$3500(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollY:I

    return p0
.end method

.method public static synthetic access$3600(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollX:I

    return p0
.end method

.method public static synthetic access$3700(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mRight:I

    return p0
.end method

.method public static synthetic access$3800(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mLeft:I

    return p0
.end method

.method public static synthetic access$3900(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    return p0
.end method

.method public static synthetic access$400(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$4000(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollX:I

    return p0
.end method

.method public static synthetic access$4100(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollX:I

    return p0
.end method

.method public static synthetic access$4200(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mRight:I

    return p0
.end method

.method public static synthetic access$4300(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mLeft:I

    return p0
.end method

.method public static synthetic access$4400(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollX:I

    return p0
.end method

.method public static synthetic access$4500(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollX:I

    return p0
.end method

.method public static synthetic access$4600(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mRight:I

    return p0
.end method

.method public static synthetic access$4700(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mLeft:I

    return p0
.end method

.method public static synthetic access$4800(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mScrollY:I

    return p0
.end method

.method public static synthetic access$4900(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mBottom:I

    return p0
.end method

.method public static synthetic access$5000(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mTop:I

    return p0
.end method

.method public static synthetic access$5100(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mRight:I

    return p0
.end method

.method public static synthetic access$5200(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mBottom:I

    return p0
.end method

.method public static synthetic access$5300(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mRight:I

    return p0
.end method

.method public static synthetic access$5400(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mBottom:I

    return p0
.end method

.method public static synthetic access$5500(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mRight:I

    return p0
.end method

.method public static synthetic access$5600(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/view/View;->mRight:I

    return p0
.end method

.method public static synthetic access$5700(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$5800(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$5900(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600()[C
    .locals 1

    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method public static synthetic access$6000(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$6100(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$6200(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$6300(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$6400(Landroid/widget/NumberPicker;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isVisibleToUser()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$6500(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/widget/NumberPicker;->mValue:I

    return p0
.end method

.method public static synthetic access$6600(Landroid/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method public static synthetic access$6700(Landroid/widget/NumberPicker;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$6800(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method public static synthetic access$6900(Landroid/widget/NumberPicker;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;
    .locals 0

    iget-object p0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    iget p1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 32
    .line 33
    neg-int v5, p1

    .line 34
    const/16 v6, 0x12c

    .line 35
    .line 36
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v7, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    iget v11, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 46
    .line 47
    const/16 v12, 0x12c

    .line 48
    .line 49
    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v0, 0x1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 60
    .line 61
    add-int/2addr p1, v0

    .line 62
    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 67
    .line 68
    sub-int/2addr p1, v0

    .line 69
    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    sub-int/2addr v0, v1

    .line 4
    :goto_0
    if-lez v0, :cond_0

    .line 5
    .line 6
    add-int/lit8 v2, v0, -0x1

    .line 7
    .line 8
    aget v2, p1, v2

    .line 9
    .line 10
    aput v2, p1, v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    aget v0, p1, v1

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 23
    .line 24
    if-ge v0, v1, :cond_1

    .line 25
    .line 26
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 27
    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    aput v0, p1, v1

    .line 30
    .line 31
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 13
    .line 14
    if-lt p1, v1, :cond_3

    .line 15
    .line 16
    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 17
    .line 18
    if-le p1, v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    sub-int v1, p1, v1

    .line 26
    .line 27
    aget-object v1, v2, v1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    :goto_0
    const-string v1, ""

    .line 36
    .line 37
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 1
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 16
    .line 17
    div-int/lit8 v3, v2, 0x2

    .line 18
    .line 19
    if-le v1, v3, :cond_1

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    neg-int v2, v2

    .line 24
    :cond_0
    add-int/2addr v0, v2

    .line 25
    :cond_1
    move v5, v0

    .line 26
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/16 v6, 0x320

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    return v0

    .line 41
    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 3
    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const v9, 0x7fffffff

    .line 15
    .line 16
    .line 17
    move v5, p1

    .line 18
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const v3, 0x7fffffff

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    const v9, 0x7fffffff

    .line 33
    .line 34
    .line 35
    move v5, p1

    .line 36
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    if-ge v0, v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 21
    .line 22
    aget-object v1, v1, v0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 35
    .line 36
    add-int/2addr p1, v0

    .line 37
    return p1

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    return p1

    .line 46
    :catch_0
    iget p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 47
    .line 48
    return p1
.end method

.method public static final getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;
    .locals 1

    sget-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 2
    .line 3
    if-le p1, v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 6
    .line 7
    sub-int/2addr p1, v0

    .line 8
    sub-int/2addr v0, v1

    .line 9
    rem-int/2addr p1, v0

    .line 10
    add-int/2addr p1, v1

    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 15
    .line 16
    if-ge p1, v1, :cond_1

    .line 17
    .line 18
    sub-int p1, v1, p1

    .line 19
    .line 20
    sub-int v1, v0, v1

    .line 21
    .line 22
    rem-int/2addr p1, v1

    .line 23
    sub-int/2addr v0, p1

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    add-int/lit8 v1, v1, -0x1

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    aget v2, p1, v1

    .line 10
    .line 11
    aput v2, p1, v0

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    array-length v0, p1

    .line 16
    add-int/lit8 v0, v0, -0x2

    .line 17
    .line 18
    aget v0, p1, v0

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 27
    .line 28
    if-le v0, v1, :cond_1

    .line 29
    .line 30
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 31
    .line 32
    :cond_1
    array-length v1, p1

    .line 33
    add-int/lit8 v1, v1, -0x1

    .line 34
    .line 35
    aput v0, p1, v1

    .line 36
    .line 37
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Landroid/view/View;->mBottom:I

    .line 6
    .line 7
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    iget v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    div-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    iget v2, p0, Landroid/widget/NumberPicker;->mTextSize:I

    .line 8
    .line 9
    mul-int/2addr v1, v2

    .line 10
    iget v3, p0, Landroid/view/View;->mBottom:I

    .line 11
    .line 12
    iget v4, p0, Landroid/view/View;->mTop:I

    .line 13
    .line 14
    sub-int/2addr v3, v4

    .line 15
    sub-int/2addr v3, v1

    .line 16
    int-to-float v1, v3

    .line 17
    array-length v0, v0

    .line 18
    int-to-float v0, v0

    .line 19
    div-float/2addr v1, v0

    .line 20
    const/high16 v0, 0x3f000000    # 0.5f

    .line 21
    .line 22
    add-float/2addr v1, v0

    .line 23
    float-to-int v0, v1

    .line 24
    iput v0, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 25
    .line 26
    add-int/2addr v2, v0

    .line 27
    iput v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 28
    .line 29
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/2addr v1, v0

    .line 42
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 43
    .line 44
    mul-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    sub-int/2addr v1, v0

    .line 47
    iput v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 48
    .line 49
    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 50
    .line 51
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 14
    .line 15
    array-length v3, v3

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    add-int/lit8 v3, v2, -0x1

    .line 19
    .line 20
    add-int/2addr v3, v1

    .line 21
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    :cond_0
    aput v3, v0, v2

    .line 30
    .line 31
    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    return p1

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    const/high16 v3, 0x40000000    # 2.0f

    .line 16
    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    if-ne v1, v3, :cond_1

    .line 22
    .line 23
    return p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p2, "Unknown measure mode: "

    .line 27
    .line 28
    invoke-static {p2, v1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sub-int/2addr v1, p1

    .line 14
    iget p1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 15
    .line 16
    add-int/2addr p1, v1

    .line 17
    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 18
    .line 19
    rem-int/2addr p1, v2

    .line 20
    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 21
    .line 22
    sub-int/2addr v2, p1

    .line 23
    const/4 p1, 0x0

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 31
    .line 32
    div-int/lit8 v5, v4, 0x2

    .line 33
    .line 34
    if-le v3, v5, :cond_1

    .line 35
    .line 36
    if-lez v2, :cond_0

    .line 37
    .line 38
    sub-int/2addr v2, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    add-int/2addr v2, v4

    .line 41
    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 42
    invoke-virtual {p0, p1, v1}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 43
    .line 44
    .line 45
    return v0

    .line 46
    :cond_2
    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 6
    .line 7
    invoke-interface {p2, p0, p1, v0}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 17
    .line 18
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-long v1, v1

    .line 23
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$500(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/EditText;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->post(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/NumberPicker$SetSelectionCommand;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-static {p1, p3, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 16
    .line 17
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 22
    .line 23
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :goto_0
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 28
    .line 29
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 30
    .line 31
    iget v1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-eq v1, v2, :cond_2

    .line 35
    .line 36
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 37
    .line 38
    .line 39
    :cond_2
    if-eqz p2, :cond_3

    .line 40
    .line 41
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    const/16 v3, 0x9

    .line 14
    .line 15
    if-gt v2, v3, :cond_2

    .line 16
    .line 17
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-static {v2}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    cmpl-float v4, v3, v0

    .line 28
    .line 29
    if-lez v4, :cond_1

    .line 30
    .line 31
    move v0, v3

    .line 32
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 36
    .line 37
    :goto_1
    if-lez v2, :cond_3

    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    div-int/lit8 v2, v2, 0xa

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    int-to-float v1, v1

    .line 45
    mul-float/2addr v1, v0

    .line 46
    float-to-int v0, v1

    .line 47
    goto :goto_3

    .line 48
    :cond_4
    array-length v0, v0

    .line 49
    move v2, v1

    .line 50
    :goto_2
    if-ge v1, v0, :cond_6

    .line 51
    .line 52
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 53
    .line 54
    iget-object v4, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 55
    .line 56
    aget-object v4, v4, v1

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    int-to-float v4, v2

    .line 63
    cmpl-float v4, v3, v4

    .line 64
    .line 65
    if-lez v4, :cond_5

    .line 66
    .line 67
    float-to-int v2, v3

    .line 68
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_6
    move v0, v2

    .line 72
    :goto_3
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    add-int/2addr v2, v1

    .line 85
    add-int/2addr v2, v0

    .line 86
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 87
    .line 88
    if-eq v0, v2, :cond_8

    .line 89
    .line 90
    iget v0, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    .line 91
    .line 92
    if-le v2, v0, :cond_7

    .line 93
    .line 94
    iput v2, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_7
    iput v0, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 98
    .line 99
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 100
    .line 101
    .line 102
    :cond_8
    return-void
.end method

.method private updateInputTextView()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 13
    .line 14
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    aget-object v0, v0, v1

    .line 18
    .line 19
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 43
    .line 44
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    const/16 v3, 0x10

    .line 60
    .line 61
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v4, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 66
    .line 67
    invoke-virtual {v4, v3}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 71
    .line 72
    invoke-virtual {v4, v3}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    const/4 v0, 0x2

    .line 96
    invoke-virtual {v3, p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p0, v3}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 100
    .line 101
    .line 102
    :cond_1
    const/4 v0, 0x1

    .line 103
    return v0

    .line 104
    :cond_2
    return v2
.end method

.method private updateWrapSelectorWheel()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v3

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v3

    .line 24
    :goto_1
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 25
    .line 26
    return-void
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 34
    .line 35
    :cond_1
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 36
    .line 37
    sub-int v2, v1, v2

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0, v3, v2}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 41
    .line 42
    .line 43
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_6

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    float-to-int v0, v0

    .line 27
    iget v1, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 28
    .line 29
    if-ge v0, v1, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v1, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 34
    .line 35
    if-le v0, v1, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v0, 0x2

    .line 40
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 49
    .line 50
    const/4 v2, 0x7

    .line 51
    const/4 v3, -0x1

    .line 52
    const/16 v4, 0x100

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    const/16 v6, 0x40

    .line 56
    .line 57
    const/16 v7, 0x80

    .line 58
    .line 59
    if-eq p1, v2, :cond_5

    .line 60
    .line 61
    const/16 v2, 0x9

    .line 62
    .line 63
    if-eq p1, v2, :cond_4

    .line 64
    .line 65
    const/16 v2, 0xa

    .line 66
    .line 67
    if-eq p1, v2, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {v1, v0, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 71
    .line 72
    .line 73
    iput v3, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    invoke-virtual {v1, v0, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 77
    .line 78
    .line 79
    iput v0, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 80
    .line 81
    invoke-virtual {v1, v0, v6, v5}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    iget p1, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 86
    .line 87
    if-eq p1, v0, :cond_6

    .line 88
    .line 89
    if-eq p1, v3, :cond_6

    .line 90
    .line 91
    invoke-virtual {v1, p1, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 95
    .line 96
    .line 97
    iput v0, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 98
    .line 99
    invoke-virtual {v1, v0, v6, v5}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 100
    .line 101
    .line 102
    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 103
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x13

    .line 6
    .line 7
    const/16 v2, 0x14

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    if-eq v0, v2, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x17

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0x42

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    if-eq v1, v3, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 42
    .line 43
    if-ne v1, v0, :cond_6

    .line 44
    .line 45
    const/4 p1, -0x1

    .line 46
    iput p1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 47
    .line 48
    return v3

    .line 49
    :cond_4
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 50
    .line 51
    if-nez v1, :cond_7

    .line 52
    .line 53
    if-ne v0, v2, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMaxValue()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ge v1, v4, :cond_6

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_5
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMinValue()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-le v1, v4, :cond_6

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1

    .line 82
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 83
    .line 84
    .line 85
    iput v0, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 86
    .line 87
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_9

    .line 97
    .line 98
    if-ne v0, v2, :cond_8

    .line 99
    .line 100
    move p1, v3

    .line 101
    goto :goto_2

    .line 102
    :cond_8
    const/4 p1, 0x0

    .line 103
    :goto_2
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 104
    .line 105
    .line 106
    :cond_9
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Landroid/widget/NumberPicker;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 22
    .line 23
    return-object v0
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method public getTopFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, v1

    .line 20
    :goto_0
    iget v2, p0, Landroid/view/View;->mRight:I

    .line 21
    .line 22
    iget v3, p0, Landroid/view/View;->mLeft:I

    .line 23
    .line 24
    sub-int/2addr v2, v3

    .line 25
    div-int/lit8 v2, v2, 0x2

    .line 26
    .line 27
    int-to-float v2, v2

    .line 28
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 29
    .line 30
    int-to-float v3, v3

    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    if-eqz v5, :cond_3

    .line 37
    .line 38
    iget v6, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 39
    .line 40
    if-nez v6, :cond_3

    .line 41
    .line 42
    iget-boolean v6, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 43
    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    sget-object v6, Landroid/view/View;->PRESSED_STATE_SET:[I

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 49
    .line 50
    .line 51
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    iget v6, p0, Landroid/view/View;->mRight:I

    .line 54
    .line 55
    iget v7, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 56
    .line 57
    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    .line 59
    .line 60
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-boolean v5, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 66
    .line 67
    if-eqz v5, :cond_3

    .line 68
    .line 69
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    sget-object v6, Landroid/view/View;->PRESSED_STATE_SET:[I

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 74
    .line 75
    .line 76
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    iget v6, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 79
    .line 80
    iget v7, p0, Landroid/view/View;->mRight:I

    .line 81
    .line 82
    iget v8, p0, Landroid/view/View;->mBottom:I

    .line 83
    .line 84
    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    .line 86
    .line 87
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    iget-object v5, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 93
    .line 94
    move v6, v4

    .line 95
    :goto_1
    array-length v7, v5

    .line 96
    if-ge v6, v7, :cond_7

    .line 97
    .line 98
    aget v7, v5, v6

    .line 99
    .line 100
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 101
    .line 102
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    if-ne v6, v1, :cond_5

    .line 111
    .line 112
    :cond_4
    if-ne v6, v1, :cond_6

    .line 113
    .line 114
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 115
    .line 116
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-eqz v8, :cond_6

    .line 121
    .line 122
    :cond_5
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 123
    .line 124
    invoke-virtual {p1, v7, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    iget v7, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 128
    .line 129
    int-to-float v7, v7

    .line 130
    add-float/2addr v3, v7

    .line 131
    add-int/lit8 v6, v6, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_7
    if-eqz v0, :cond_8

    .line 135
    .line 136
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 137
    .line 138
    if-eqz v0, :cond_8

    .line 139
    .line 140
    iget v1, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 141
    .line 142
    iget v2, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 143
    .line 144
    add-int/2addr v2, v1

    .line 145
    iget v3, p0, Landroid/view/View;->mRight:I

    .line 146
    .line 147
    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    .line 154
    .line 155
    iget v0, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 156
    .line 157
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 158
    .line 159
    sub-int v1, v0, v1

    .line 160
    .line 161
    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 162
    .line 163
    iget v3, p0, Landroid/view/View;->mRight:I

    .line 164
    .line 165
    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 169
    .line 170
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 171
    .line 172
    .line 173
    :cond_8
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/widget/NumberPicker;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 18
    .line 19
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 23
    .line 24
    mul-int/2addr v0, v1

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 29
    .line 30
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 31
    .line 32
    sub-int/2addr v0, v1

    .line 33
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 34
    .line 35
    mul-int/2addr v0, v1

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    .line 32
    .line 33
    iput v0, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    iput-wide v2, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    .line 40
    .line 41
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 42
    .line 43
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 44
    .line 45
    iget p1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    .line 46
    .line 47
    iget v0, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 48
    .line 49
    int-to-float v0, v0

    .line 50
    cmpg-float v0, p1, v0

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    if-gez v0, :cond_2

    .line 54
    .line 55
    iget p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 56
    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget v0, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 67
    .line 68
    int-to-float v0, v0

    .line 69
    cmpl-float p1, p1, v0

    .line 70
    .line 71
    if-lez p1, :cond_3

    .line 72
    .line 73
    iget p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 74
    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    iget-object p1, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    iget-object p1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 103
    .line 104
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    iget-object p1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_5

    .line 118
    .line 119
    iget-object p1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 125
    .line 126
    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    iget p1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    .line 131
    .line 132
    iget v0, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 133
    .line 134
    int-to-float v0, v0

    .line 135
    cmpg-float v0, p1, v0

    .line 136
    .line 137
    if-gez v0, :cond_6

    .line 138
    .line 139
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    int-to-long v3, p1

    .line 144
    invoke-direct {p0, v1, v3, v4}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_6
    iget v0, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 149
    .line 150
    int-to-float v0, v0

    .line 151
    cmpl-float p1, p1, v0

    .line 152
    .line 153
    if-lez p1, :cond_7

    .line 154
    .line 155
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    int-to-long v0, p1

    .line 160
    invoke-direct {p0, v2, v0, v1}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_7
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 165
    .line 166
    invoke-direct {p0}, Landroid/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    .line 167
    .line 168
    .line 169
    :goto_1
    return v2

    .line 170
    :cond_8
    :goto_2
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    iget-object p4, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 18
    .line 19
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    iget-object p5, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 24
    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result p5

    .line 29
    sub-int/2addr p2, p4

    .line 30
    div-int/lit8 p2, p2, 0x2

    .line 31
    .line 32
    sub-int/2addr p3, p5

    .line 33
    div-int/lit8 p3, p3, 0x2

    .line 34
    .line 35
    add-int/2addr p4, p2

    .line 36
    add-int/2addr p5, p3

    .line 37
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 38
    .line 39
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheel()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeFadingEdges()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iget p2, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 55
    .line 56
    sub-int/2addr p1, p2

    .line 57
    div-int/lit8 p1, p1, 0x2

    .line 58
    .line 59
    iget p3, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 60
    .line 61
    sub-int/2addr p1, p3

    .line 62
    iput p1, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 63
    .line 64
    mul-int/lit8 p3, p3, 0x2

    .line 65
    .line 66
    add-int/2addr p3, p1

    .line 67
    add-int/2addr p3, p2

    .line 68
    iput p3, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    .line 16
    .line 17
    invoke-direct {p0, p2, v1}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-direct {p0, v0, v1, p1}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget v0, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-direct {p0, v0, v1, p2}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onResolveDrawables(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_c

    .line 7
    .line 8
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x2

    .line 34
    const/4 v3, 0x1

    .line 35
    if-eq v0, v3, :cond_6

    .line 36
    .line 37
    if-eq v0, v2, :cond_2

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_2
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 52
    .line 53
    if-eq v0, v3, :cond_4

    .line 54
    .line 55
    iget v0, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    .line 56
    .line 57
    sub-float v0, p1, v0

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    float-to-int v0, v0

    .line 64
    iget v1, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 65
    .line 66
    if-le v0, v1, :cond_5

    .line 67
    .line 68
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iget v0, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 76
    .line 77
    sub-float v0, p1, v0

    .line 78
    .line 79
    float-to-int v0, v0

    .line 80
    invoke-virtual {p0, v1, v0}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_0
    iput p1, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_6
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 102
    .line 103
    iget v4, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 104
    .line 105
    int-to-float v4, v4

    .line 106
    const/16 v5, 0x3e8

    .line 107
    .line 108
    invoke-virtual {v0, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    float-to-int v0, v0

    .line 116
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    iget v5, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 121
    .line 122
    if-le v4, v5, :cond_7

    .line 123
    .line 124
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->fling(I)V

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    float-to-int v0, v0

    .line 136
    int-to-float v4, v0

    .line 137
    iget v5, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    .line 138
    .line 139
    sub-float/2addr v4, v5

    .line 140
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    float-to-int v4, v4

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 146
    .line 147
    .line 148
    move-result-wide v5

    .line 149
    iget-wide v7, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    .line 150
    .line 151
    sub-long/2addr v5, v7

    .line 152
    iget p1, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 153
    .line 154
    if-gt v4, p1, :cond_a

    .line 155
    .line 156
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    int-to-long v7, p1

    .line 161
    cmp-long p1, v5, v7

    .line 162
    .line 163
    if-gez p1, :cond_a

    .line 164
    .line 165
    iget-boolean p1, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 166
    .line 167
    if-eqz p1, :cond_8

    .line 168
    .line 169
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->performClick()Z

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_8
    iget p1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 176
    .line 177
    div-int/2addr v0, p1

    .line 178
    sub-int/2addr v0, v3

    .line 179
    if-lez v0, :cond_9

    .line 180
    .line 181
    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 185
    .line 186
    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_9
    if-gez v0, :cond_b

    .line 191
    .line 192
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 196
    .line 197
    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_a
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 202
    .line 203
    .line 204
    :cond_b
    :goto_1
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 205
    .line 206
    .line 207
    :goto_2
    iget-object p1, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 210
    .line 211
    .line 212
    const/4 p1, 0x0

    .line 213
    iput-object p1, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 214
    .line 215
    :goto_3
    return v3

    .line 216
    :cond_c
    :goto_4
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 20
    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 18
    .line 19
    .line 20
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 21
    .line 22
    :cond_1
    return v1
.end method

.method public scrollBy(II)V
    .locals 5

    .line 1
    iget-object p1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 2
    .line 3
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 4
    .line 5
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    if-lez p2, :cond_0

    .line 11
    .line 12
    aget v3, p1, v2

    .line 13
    .line 14
    iget v4, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 15
    .line 16
    if-gt v3, v4, :cond_0

    .line 17
    .line 18
    iget p1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 19
    .line 20
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    if-nez v1, :cond_1

    .line 24
    .line 25
    if-gez p2, :cond_1

    .line 26
    .line 27
    aget v1, p1, v2

    .line 28
    .line 29
    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 30
    .line 31
    if-lt v1, v3, :cond_1

    .line 32
    .line 33
    iget p1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 34
    .line 35
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    add-int/2addr p2, v0

    .line 39
    iput p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 40
    .line 41
    :cond_2
    :goto_0
    iget p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 42
    .line 43
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 44
    .line 45
    sub-int v1, p2, v1

    .line 46
    .line 47
    iget v3, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 48
    .line 49
    if-le v1, v3, :cond_3

    .line 50
    .line 51
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 52
    .line 53
    sub-int/2addr p2, v1

    .line 54
    iput p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 55
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 57
    .line 58
    .line 59
    aget p2, p1, v2

    .line 60
    .line 61
    invoke-direct {p0, p2, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 62
    .line 63
    .line 64
    iget-boolean p2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 65
    .line 66
    if-nez p2, :cond_2

    .line 67
    .line 68
    aget p2, p1, v2

    .line 69
    .line 70
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 71
    .line 72
    if-gt p2, v1, :cond_2

    .line 73
    .line 74
    iget p2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 75
    .line 76
    iput p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    :goto_1
    iget p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 80
    .line 81
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 82
    .line 83
    sub-int v1, p2, v1

    .line 84
    .line 85
    iget v3, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 86
    .line 87
    neg-int v3, v3

    .line 88
    if-ge v1, v3, :cond_4

    .line 89
    .line 90
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 91
    .line 92
    add-int/2addr p2, v1

    .line 93
    iput p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 94
    .line 95
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 96
    .line 97
    .line 98
    aget p2, p1, v2

    .line 99
    .line 100
    invoke-direct {p0, p2, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 101
    .line 102
    .line 103
    iget-boolean p2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 104
    .line 105
    if-nez p2, :cond_3

    .line 106
    .line 107
    aget p2, p1, v2

    .line 108
    .line 109
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 110
    .line 111
    if-lt p2, v1, :cond_3

    .line 112
    .line 113
    iget p2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 114
    .line 115
    iput p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    if-eq v0, p2, :cond_5

    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    invoke-virtual {p0, p1, p2, p1, v0}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 122
    .line 123
    .line 124
    :cond_5
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 11
    .line 12
    const v0, 0x80001

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-ltz p1, :cond_2

    .line 7
    .line 8
    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 9
    .line 10
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 11
    .line 12
    if-ge p1, v0, :cond_1

    .line 13
    .line 14
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 15
    .line 16
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "maxValue must be >= 0"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-ltz p1, :cond_2

    .line 7
    .line 8
    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 9
    .line 10
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 11
    .line 12
    if-le p1, v0, :cond_1

    .line 13
    .line 14
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 15
    .line 16
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "minValue must be >= 0"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
