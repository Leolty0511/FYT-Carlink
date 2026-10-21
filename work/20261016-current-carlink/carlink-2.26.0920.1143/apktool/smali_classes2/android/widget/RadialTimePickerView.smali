.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;,
        Landroid/widget/RadialTimePickerView$PickerType;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final ANIM_DURATION_NORMAL:I = 0x1f4

.field private static final ANIM_DURATION_TOUCH:I = 0x3c

.field private static final COS_30:[F

.field private static final DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final DEGREES_FOR_ONE_MINUTE:I = 0x6

.field public static final HOURS:I = 0x0

.field private static final HOURS_INNER:I = 0x2

.field private static final HOURS_IN_CIRCLE:I = 0xc

.field private static final HOURS_NUMBERS:[I

.field private static final HOURS_NUMBERS_24:[I

.field public static final MINUTES:I = 0x1

.field private static final MINUTES_IN_CIRCLE:I = 0x3c

.field private static final MINUTES_NUMBERS:[I

.field private static final MISSING_COLOR:I = -0xff01

.field private static final NUM_POSITIONS:I = 0xc

.field private static final PM:I = 0x1

.field private static final SELECTOR_CIRCLE:I = 0x0

.field private static final SELECTOR_DOT:I = 0x1

.field private static final SELECTOR_LINE:I = 0x2

.field private static final SIN_30:[F

.field private static final SNAP_PREFER_30S_MAP:[I

.field private static final TAG:Ljava/lang/String; = "RadialTimePickerView"


# instance fields
.field private final HOURS_TO_MINUTES:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/widget/RadialTimePickerView;",
            ">;"
        }
    .end annotation
.end field

.field private mAmOrPm:I

.field private mCenterDotRadius:I

.field mChangedDuringTouch:Z

.field private mCircleRadius:I

.field private mDisabledAlpha:F

.field private mHalfwayDist:I

.field private final mHours12Texts:[Ljava/lang/String;

.field private mHoursToMinutes:F

.field private mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

.field private final mInnerHours24Texts:[Ljava/lang/String;

.field private mInnerTextHours:[Ljava/lang/String;

.field private final mInnerTextX:[F

.field private final mInnerTextY:[F

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private mMaxDistForOuterNumber:I

.field private mMinDistForInnerNumber:I

.field private mMinutesText:[Ljava/lang/String;

.field private final mMinutesTexts:[Ljava/lang/String;

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private final mOuterTextX:[[F

.field private final mOuterTextY:[[F

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintSelector:[Landroid/graphics/Paint;

.field private final mSelectionDegrees:[I

.field private mSelectorColor:I

.field private mSelectorDotColor:I

.field private mSelectorDotRadius:I

.field private final mSelectorPath:Landroid/graphics/Path;

.field private mSelectorRadius:I

.field private mSelectorStroke:I

.field private mShowHours:Z

.field private final mTextColor:[Landroid/content/res/ColorStateList;

.field private final mTextInset:[I

.field private final mTextSize:[I

.field private final mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private final mTypeface:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 9
    .line 10
    new-array v1, v0, [I

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v1, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    .line 16
    .line 17
    new-array v1, v0, [I

    .line 18
    .line 19
    fill-array-data v1, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v1, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    .line 23
    .line 24
    const/16 v1, 0x169

    .line 25
    .line 26
    new-array v1, v1, [I

    .line 27
    .line 28
    sput-object v1, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    .line 29
    .line 30
    new-array v1, v0, [F

    .line 31
    .line 32
    sput-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    .line 33
    .line 34
    new-array v1, v0, [F

    .line 35
    .line 36
    sput-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    .line 37
    .line 38
    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    .line 39
    .line 40
    .line 41
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    :goto_0
    if-ge v3, v0, :cond_0

    .line 48
    .line 49
    sget-object v4, Landroid/widget/RadialTimePickerView;->COS_30:[F

    .line 50
    .line 51
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    double-to-float v5, v5

    .line 56
    aput v5, v4, v3

    .line 57
    .line 58
    sget-object v4, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    .line 59
    .line 60
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    double-to-float v5, v5

    .line 65
    aput v5, v4, v3

    .line 66
    .line 67
    const-wide v4, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    add-double/2addr v1, v4

    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    return-void

    .line 77
    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    .line 78
    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101049d

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance v0, Landroid/widget/RadialTimePickerView$1;

    const-string v1, "hoursToMinutes"

    invoke-direct {v0, p0, v1}, Landroid/widget/RadialTimePickerView$1;-><init>(Landroid/widget/RadialTimePickerView;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    .line 6
    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 7
    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 8
    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 9
    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/Paint;

    .line 10
    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 11
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v4, 0x3

    new-array v5, v4, [Landroid/graphics/Paint;

    .line 12
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    .line 13
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    new-array v7, v4, [Landroid/content/res/ColorStateList;

    .line 14
    iput-object v7, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    new-array v7, v4, [I

    .line 15
    iput-object v7, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    new-array v4, v4, [I

    .line 16
    iput-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    new-array v8, v1, [I

    .line 17
    fill-array-data v8, :array_0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[F

    iput-object v8, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    new-array v8, v1, [I

    .line 18
    fill-array-data v8, :array_1

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[F

    iput-object v8, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    new-array v8, v0, [F

    .line 19
    iput-object v8, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    new-array v8, v0, [F

    .line 20
    iput-object v8, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    new-array v8, v1, [I

    .line 21
    iput-object v8, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 22
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    const/4 v8, 0x1

    .line 23
    iput-boolean v8, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    const/4 v9, 0x0

    .line 24
    iput-boolean v9, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 25
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 26
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x1010033

    invoke-virtual {p1, p3, p2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 28
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    const-string p1, "sans-serif"

    .line 29
    invoke-static {p1, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 30
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    aput-object p1, v2, v9

    .line 31
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    aget-object p1, v2, v9

    .line 32
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    aput-object p1, v2, v8

    .line 34
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    aget-object p1, v2, v8

    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 36
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    aput-object p1, v5, v9

    .line 38
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    aput-object p1, v5, v8

    .line 40
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    aput-object p1, v5, v1

    .line 42
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    aget-object p1, v5, v1

    const/high16 p2, 0x40000000    # 2.0f

    .line 43
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050194

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    const p2, 0x1050195

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    const p2, 0x1050193

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    const p2, 0x105018b

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    const p2, 0x105019a

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    aput p3, v7, v9

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    aput p2, v7, v8

    const p2, 0x1050199

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    aput p2, v7, v1

    const p2, 0x1050198

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    aput p3, v4, v9

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    aput p2, v4, v8

    const p2, 0x1050197

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    aput p1, v4, v1

    .line 56
    iput-boolean v8, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 58
    iput-boolean v9, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 59
    iput v9, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 60
    new-instance p1, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-direct {p1, p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 61
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 64
    :cond_0
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    .line 65
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xb

    .line 67
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 68
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 69
    invoke-direct {p0, p2, v9, v9}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 70
    invoke-direct {p0, p1, v9}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 71
    invoke-virtual {p0, v8}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    return-void

    :array_0
    .array-data 4
        0x2
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x2
        0xc
    .end array-data
.end method

.method public static synthetic access$000(Landroid/widget/RadialTimePickerView;)F
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return p0
.end method

.method public static synthetic access$002(Landroid/widget/RadialTimePickerView;F)F
    .locals 0

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return p1
.end method

.method public static synthetic access$100(Landroid/widget/RadialTimePickerView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    return p0
.end method

.method public static synthetic access$1000(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    return p0
.end method

.method public static synthetic access$1100(Landroid/widget/RadialTimePickerView;)[I
    .locals 0

    iget-object p0, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    return-object p0
.end method

.method public static synthetic access$1200(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    return p0
.end method

.method public static synthetic access$1300(Landroid/widget/RadialTimePickerView;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1400(Landroid/widget/RadialTimePickerView;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    return p0
.end method

.method public static synthetic access$1600(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    return p0
.end method

.method public static synthetic access$200(Landroid/widget/RadialTimePickerView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    return p0
.end method

.method public static synthetic access$300(Landroid/widget/RadialTimePickerView;FFZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(II)I
    .locals 0

    invoke-static {p0, p1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Landroid/widget/RadialTimePickerView;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Landroid/widget/RadialTimePickerView;IZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Landroid/widget/RadialTimePickerView;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return p0
.end method

.method public static synthetic access$900(Landroid/widget/RadialTimePickerView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result p0

    return p0
.end method

.method private animatePicker(ZJ)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :goto_0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 8
    .line 9
    cmpl-float v0, v0, p1

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    new-array v2, v1, [F

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    aput p1, v2, v3

    .line 39
    .line 40
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 50
    .line 51
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private static calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    .line 5
    .line 6
    .line 7
    move-result p4

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    add-float/2addr p0, p4

    .line 13
    const/high16 p4, 0x40000000    # 2.0f

    .line 14
    .line 15
    div-float/2addr p0, p4

    .line 16
    sub-float/2addr p3, p0

    .line 17
    const/4 p0, 0x0

    .line 18
    :goto_0
    const/16 p4, 0xc

    .line 19
    .line 20
    if-ge p0, p4, :cond_0

    .line 21
    .line 22
    sget-object p4, Landroid/widget/RadialTimePickerView;->COS_30:[F

    .line 23
    .line 24
    aget p4, p4, p0

    .line 25
    .line 26
    mul-float/2addr p4, p1

    .line 27
    sub-float p4, p2, p4

    .line 28
    .line 29
    aput p4, p5, p0

    .line 30
    .line 31
    sget-object p4, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    .line 32
    .line 33
    aget p4, p4, p0

    .line 34
    .line 35
    mul-float/2addr p4, p1

    .line 36
    sub-float p4, p3, p4

    .line 37
    .line 38
    aput p4, p6, p0

    .line 39
    .line 40
    add-int/lit8 p0, p0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method private calculatePositionsHours()V
    .locals 11

    .line 1
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v1, v1, v2

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    int-to-float v4, v0

    .line 10
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 15
    .line 16
    int-to-float v5, v0

    .line 17
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 18
    .line 19
    int-to-float v6, v0

    .line 20
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    .line 21
    .line 22
    aget v0, v0, v2

    .line 23
    .line 24
    int-to-float v7, v0

    .line 25
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    .line 26
    .line 27
    aget-object v8, v0, v2

    .line 28
    .line 29
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    .line 30
    .line 31
    aget-object v9, v0, v2

    .line 32
    .line 33
    invoke-static/range {v3 .. v9}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    .line 41
    .line 42
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    aget v1, v1, v3

    .line 46
    .line 47
    sub-int/2addr v0, v1

    .line 48
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 49
    .line 50
    aget-object v4, v1, v2

    .line 51
    .line 52
    int-to-float v5, v0

    .line 53
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 54
    .line 55
    int-to-float v6, v0

    .line 56
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 57
    .line 58
    int-to-float v7, v0

    .line 59
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    .line 60
    .line 61
    aget v0, v0, v3

    .line 62
    .line 63
    int-to-float v8, v0

    .line 64
    iget-object v9, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    .line 65
    .line 66
    iget-object v10, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    .line 67
    .line 68
    invoke-static/range {v4 .. v10}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method private calculatePositionsMinutes()V
    .locals 10

    .line 1
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    aget v1, v1, v2

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    int-to-float v4, v0

    .line 10
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 15
    .line 16
    int-to-float v5, v0

    .line 17
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 18
    .line 19
    int-to-float v6, v0

    .line 20
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    .line 21
    .line 22
    aget v0, v0, v2

    .line 23
    .line 24
    int-to-float v7, v0

    .line 25
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    .line 26
    .line 27
    aget-object v8, v0, v2

    .line 28
    .line 29
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    .line 30
    .line 31
    aget-object v9, v0, v2

    .line 32
    .line 33
    invoke-static/range {v3 .. v9}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/high16 v1, 0x437f0000    # 255.0f

    .line 4
    .line 5
    mul-float/2addr p2, v1

    .line 6
    const/high16 v1, 0x3f000000    # 0.5f

    .line 7
    .line 8
    add-float/2addr p2, v1

    .line 9
    float-to-int p2, p2

    .line 10
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 11
    .line 12
    .line 13
    iget p2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 14
    .line 15
    int-to-float p2, p2

    .line 16
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    const/high16 v1, 0x437f0000    # 255.0f

    .line 7
    .line 8
    mul-float/2addr v0, v1

    .line 9
    mul-float/2addr v0, p3

    .line 10
    const/high16 p3, 0x3f000000    # 0.5f

    .line 11
    .line 12
    add-float/2addr v0, p3

    .line 13
    float-to-int p3, v0

    .line 14
    if-lez p3, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 18
    .line 19
    .line 20
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 21
    .line 22
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 33
    .line 34
    .line 35
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 38
    .line 39
    .line 40
    const/4 p2, 0x1

    .line 41
    invoke-direct {p0, p1, p3, p2}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method private drawHoursClipped(Landroid/graphics/Canvas;IZ)V
    .locals 16

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    .line 4
    .line 5
    const/4 v14, 0x0

    .line 6
    aget v0, v0, v14

    .line 7
    .line 8
    int-to-float v2, v0

    .line 9
    iget-object v3, v13, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 10
    .line 11
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    aget-object v4, v0, v14

    .line 14
    .line 15
    iget-object v5, v13, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    .line 18
    .line 19
    aget-object v6, v0, v14

    .line 20
    .line 21
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    .line 22
    .line 23
    aget-object v7, v0, v14

    .line 24
    .line 25
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 26
    .line 27
    aget-object v8, v0, v14

    .line 28
    .line 29
    const/4 v15, 0x1

    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    iget-boolean v0, v13, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    move v10, v15

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v10, v14

    .line 39
    :goto_0
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 40
    .line 41
    aget v11, v0, v14

    .line 42
    .line 43
    move-object/from16 v0, p0

    .line 44
    .line 45
    move-object/from16 v1, p1

    .line 46
    .line 47
    move/from16 v9, p2

    .line 48
    .line 49
    move/from16 v12, p3

    .line 50
    .line 51
    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 52
    .line 53
    .line 54
    iget-boolean v0, v13, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v5, v13, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    aget v0, v0, v1

    .line 66
    .line 67
    int-to-float v2, v0

    .line 68
    iget-object v3, v13, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 69
    .line 70
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 71
    .line 72
    aget-object v4, v0, v1

    .line 73
    .line 74
    iget-object v6, v13, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    .line 75
    .line 76
    iget-object v7, v13, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    .line 77
    .line 78
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 79
    .line 80
    aget-object v8, v0, v14

    .line 81
    .line 82
    if-eqz p3, :cond_1

    .line 83
    .line 84
    iget-boolean v0, v13, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 85
    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    move v10, v15

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    move v10, v14

    .line 91
    :goto_1
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 92
    .line 93
    aget v11, v0, v14

    .line 94
    .line 95
    move-object/from16 v0, p0

    .line 96
    .line 97
    move-object/from16 v1, p1

    .line 98
    .line 99
    move/from16 v9, p2

    .line 100
    .line 101
    move/from16 v12, p3

    .line 102
    .line 103
    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 104
    .line 105
    .line 106
    :cond_2
    return-void
.end method

.method private drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 2

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 4
    .line 5
    mul-float/2addr v1, v0

    .line 6
    mul-float/2addr v1, p3

    .line 7
    const/high16 p3, 0x3f000000    # 0.5f

    .line 8
    .line 9
    add-float/2addr v1, p3

    .line 10
    float-to-int p3, v1

    .line 11
    if-lez p3, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 15
    .line 16
    .line 17
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 18
    .line 19
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 30
    .line 31
    .line 32
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 33
    .line 34
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 35
    .line 36
    .line 37
    const/4 p2, 0x1

    .line 38
    invoke-direct {p0, p1, p3, p2}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private drawMinutesClipped(Landroid/graphics/Canvas;IZ)V
    .locals 14

    move-object v13, p0

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, v13, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v1

    iget-object v5, v13, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v0, v1

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v0, v1

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v1

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v1

    move-object v0, p0

    move-object v1, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-boolean v3, v0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    move v3, v5

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v4

    .line 16
    :goto_0
    iget-object v6, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    .line 17
    .line 18
    aget v7, v6, v3

    .line 19
    .line 20
    iget-object v8, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 21
    .line 22
    rem-int/2addr v3, v5

    .line 23
    aget v3, v8, v3

    .line 24
    .line 25
    rem-int/lit8 v9, v3, 0x1e

    .line 26
    .line 27
    const/high16 v10, 0x3f800000    # 1.0f

    .line 28
    .line 29
    if-eqz v9, :cond_1

    .line 30
    .line 31
    move v9, v10

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v9, 0x0

    .line 34
    :goto_1
    const/4 v12, 0x1

    .line 35
    aget v6, v6, v12

    .line 36
    .line 37
    aget v8, v8, v12

    .line 38
    .line 39
    rem-int/lit8 v13, v8, 0x1e

    .line 40
    .line 41
    if-eqz v13, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/4 v10, 0x0

    .line 45
    :goto_2
    iget v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 46
    .line 47
    iget v14, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    .line 48
    .line 49
    int-to-float v14, v14

    .line 50
    int-to-float v7, v7

    .line 51
    int-to-float v6, v6

    .line 52
    iget v15, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 53
    .line 54
    invoke-static {v7, v6, v15}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    sub-float/2addr v14, v6

    .line 59
    int-to-float v3, v3

    .line 60
    int-to-float v6, v8

    .line 61
    iget v7, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 62
    .line 63
    invoke-static {v3, v6, v7}, Landroid/util/MathUtils;->lerpDeg(FFF)F

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    float-to-double v6, v3

    .line 68
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    iget v3, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 73
    .line 74
    int-to-float v3, v3

    .line 75
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v11

    .line 79
    double-to-float v11, v11

    .line 80
    mul-float/2addr v11, v14

    .line 81
    add-float/2addr v11, v3

    .line 82
    iget v3, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 83
    .line 84
    int-to-float v3, v3

    .line 85
    move v12, v9

    .line 86
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v8

    .line 90
    double-to-float v8, v8

    .line 91
    mul-float/2addr v8, v14

    .line 92
    sub-float/2addr v3, v8

    .line 93
    iget-object v8, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    .line 94
    .line 95
    aget-object v4, v8, v4

    .line 96
    .line 97
    iget v8, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    .line 98
    .line 99
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    .line 101
    .line 102
    int-to-float v8, v13

    .line 103
    invoke-virtual {v1, v11, v3, v8, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 104
    .line 105
    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    .line 109
    .line 110
    .line 111
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 112
    .line 113
    invoke-virtual {v2, v11, v3, v8, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 117
    .line 118
    invoke-static {v12, v10, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    const/4 v4, 0x0

    .line 123
    cmpl-float v4, v2, v4

    .line 124
    .line 125
    if-lez v4, :cond_4

    .line 126
    .line 127
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    .line 128
    .line 129
    const/4 v9, 0x1

    .line 130
    aget-object v4, v4, v9

    .line 131
    .line 132
    iget v9, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    .line 133
    .line 134
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    .line 136
    .line 137
    iget v9, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    .line 138
    .line 139
    int-to-float v9, v9

    .line 140
    mul-float/2addr v9, v2

    .line 141
    invoke-virtual {v1, v11, v3, v9, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 145
    .line 146
    .line 147
    move-result-wide v2

    .line 148
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 149
    .line 150
    .line 151
    move-result-wide v6

    .line 152
    sub-float/2addr v14, v8

    .line 153
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 154
    .line 155
    iget v8, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    .line 156
    .line 157
    int-to-double v9, v8

    .line 158
    mul-double/2addr v9, v2

    .line 159
    double-to-int v9, v9

    .line 160
    add-int/2addr v4, v9

    .line 161
    iget v9, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 162
    .line 163
    int-to-double v10, v8

    .line 164
    mul-double/2addr v10, v6

    .line 165
    double-to-int v8, v10

    .line 166
    sub-int/2addr v9, v8

    .line 167
    float-to-double v10, v14

    .line 168
    mul-double/2addr v2, v10

    .line 169
    double-to-int v2, v2

    .line 170
    add-int/2addr v4, v2

    .line 171
    int-to-float v4, v4

    .line 172
    mul-double/2addr v10, v6

    .line 173
    double-to-int v2, v10

    .line 174
    sub-int/2addr v9, v2

    .line 175
    int-to-float v6, v9

    .line 176
    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    .line 177
    .line 178
    aget-object v7, v2, v5

    .line 179
    .line 180
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    .line 181
    .line 182
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    .line 184
    .line 185
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    .line 186
    .line 187
    int-to-float v2, v2

    .line 188
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 189
    .line 190
    .line 191
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 192
    .line 193
    int-to-float v2, v2

    .line 194
    iget v3, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 195
    .line 196
    int-to-float v3, v3

    .line 197
    move-object/from16 v1, p1

    .line 198
    .line 199
    move v5, v6

    .line 200
    move-object v6, v7

    .line 201
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method private drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .locals 13

    .line 1
    move-object/from16 v0, p8

    .line 2
    .line 3
    move v1, p2

    .line 4
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    .line 6
    .line 7
    move-object/from16 v1, p3

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 10
    .line 11
    .line 12
    move/from16 v1, p11

    .line 13
    .line 14
    int-to-float v1, v1

    .line 15
    const/high16 v2, 0x41f00000    # 30.0f

    .line 16
    .line 17
    div-float/2addr v1, v2

    .line 18
    float-to-int v2, v1

    .line 19
    float-to-double v3, v1

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    double-to-int v1, v3

    .line 25
    const/16 v3, 0xc

    .line 26
    .line 27
    rem-int/2addr v1, v3

    .line 28
    const/4 v4, 0x0

    .line 29
    move v5, v4

    .line 30
    :goto_0
    if-ge v5, v3, :cond_4

    .line 31
    .line 32
    if-eq v2, v5, :cond_1

    .line 33
    .line 34
    if-ne v1, v5, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v6, v4

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_1
    const/4 v6, 0x1

    .line 40
    :goto_2
    if-eqz p12, :cond_2

    .line 41
    .line 42
    if-nez v6, :cond_2

    .line 43
    .line 44
    move-object v8, p0

    .line 45
    move-object v12, p1

    .line 46
    move-object/from16 v7, p4

    .line 47
    .line 48
    move/from16 v9, p9

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_2
    if-eqz p10, :cond_3

    .line 52
    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    const/16 v6, 0x20

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    move v6, v4

    .line 59
    :goto_3
    const/16 v7, 0x8

    .line 60
    .line 61
    or-int/2addr v6, v7

    .line 62
    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    move-object/from16 v7, p4

    .line 67
    .line 68
    invoke-virtual {v7, v6, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    .line 74
    .line 75
    move-object v8, p0

    .line 76
    move/from16 v9, p9

    .line 77
    .line 78
    invoke-direct {p0, v6, v9}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    .line 84
    .line 85
    aget-object v6, p5, v5

    .line 86
    .line 87
    aget v10, p6, v5

    .line 88
    .line 89
    aget v11, p7, v5

    .line 90
    .line 91
    move-object v12, p1

    .line 92
    invoke-virtual {p1, v6, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 93
    .line 94
    .line 95
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    move-object v8, p0

    .line 99
    return-void
.end method

.method private getDegreesForHour(I)I
    .locals 2

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    if-lt p1, v1, :cond_1

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    mul-int/lit8 p1, p1, 0x1e

    return p1
.end method

.method private getDegreesForMinute(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x6

    return p1
.end method

.method private getDegreesFromXY(FFZ)I
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 10
    .line 11
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 15
    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    .line 19
    .line 20
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    .line 21
    .line 22
    aget v0, v2, v0

    .line 23
    .line 24
    sub-int/2addr v1, v0

    .line 25
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 26
    .line 27
    sub-int v2, v1, v0

    .line 28
    .line 29
    add-int/2addr v1, v0

    .line 30
    move v0, v2

    .line 31
    :goto_0
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 32
    .line 33
    int-to-float v2, v2

    .line 34
    sub-float/2addr p1, v2

    .line 35
    float-to-double v2, p1

    .line 36
    iget p1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 37
    .line 38
    int-to-float p1, p1

    .line 39
    sub-float/2addr p2, p1

    .line 40
    float-to-double p1, p2

    .line 41
    mul-double v4, v2, v2

    .line 42
    .line 43
    mul-double v6, p1, p1

    .line 44
    .line 45
    add-double/2addr v6, v4

    .line 46
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    int-to-double v6, v0

    .line 51
    cmpg-double v0, v4, v6

    .line 52
    .line 53
    if-ltz v0, :cond_3

    .line 54
    .line 55
    if-eqz p3, :cond_1

    .line 56
    .line 57
    int-to-double v0, v1

    .line 58
    cmpl-double p3, v4, v0

    .line 59
    .line 60
    if-lez p3, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 64
    .line 65
    .line 66
    move-result-wide p1

    .line 67
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    add-double/2addr p1, v0

    .line 73
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide p1

    .line 77
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 78
    .line 79
    add-double/2addr p1, v0

    .line 80
    double-to-int p1, p1

    .line 81
    if-gez p1, :cond_2

    .line 82
    .line 83
    add-int/lit16 p1, p1, 0x168

    .line 84
    .line 85
    :cond_2
    return p1

    .line 86
    :cond_3
    :goto_1
    const/4 p1, -0x1

    .line 87
    return p1
.end method

.method private getHourForDegrees(IZ)I
    .locals 2

    .line 1
    div-int/lit8 p1, p1, 0x1e

    .line 2
    .line 3
    const/16 v0, 0xc

    .line 4
    .line 5
    rem-int/2addr p1, v0

    .line 6
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    if-eqz p2, :cond_2

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget p2, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    if-ne p2, v0, :cond_2

    .line 24
    .line 25
    :goto_0
    add-int/lit8 v0, p1, 0xc

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move v0, p1

    .line 29
    :goto_1
    return v0
.end method

.method private getInnerCircleForHour(I)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getInnerCircleFromXY(FF)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 11
    .line 12
    int-to-float v0, v0

    .line 13
    sub-float/2addr p1, v0

    .line 14
    float-to-double v2, p1

    .line 15
    iget p1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 16
    .line 17
    int-to-float p1, p1

    .line 18
    sub-float/2addr p2, p1

    .line 19
    float-to-double p1, p2

    .line 20
    mul-double/2addr v2, v2

    .line 21
    mul-double/2addr p1, p1

    .line 22
    add-double/2addr p1, v2

    .line 23
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    .line 28
    .line 29
    int-to-double v2, v0

    .line 30
    cmpg-double p1, p1, v2

    .line 31
    .line 32
    if-gtz p1, :cond_0

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_0
    return v1
.end method

.method private getMinuteForDegrees(I)I
    .locals 0

    div-int/lit8 p1, p1, 0x6

    return p1
.end method

.method private getMultipliedAlpha(II)I
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-double v0, p1

    int-to-double p1, p2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr p1, v2

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method

.method private handleTouchInput(FFZZ)Z
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p2, -0x1

    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-boolean p2, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 15
    .line 16
    const-wide/16 v2, 0x3c

    .line 17
    .line 18
    invoke-direct {p0, p2, v2, v3}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    invoke-static {p1, v1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    rem-int/lit16 p1, p1, 0x168

    .line 31
    .line 32
    iget-boolean p2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 33
    .line 34
    if-ne p2, v0, :cond_2

    .line 35
    .line 36
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 37
    .line 38
    aget p2, p2, v1

    .line 39
    .line 40
    if-eq p2, p1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move p2, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    move p2, v2

    .line 46
    :goto_1
    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 47
    .line 48
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 49
    .line 50
    aput p1, v0, v1

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    move v0, v1

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-static {p1}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    rem-int/lit16 p1, p1, 0x168

    .line 63
    .line 64
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 65
    .line 66
    aget v0, p2, v2

    .line 67
    .line 68
    if-eq v0, p1, :cond_4

    .line 69
    .line 70
    move v0, v2

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    move v0, v1

    .line 73
    :goto_2
    aput p1, p2, v2

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    move p2, v0

    .line 80
    move v0, v2

    .line 81
    :goto_3
    if-nez p2, :cond_6

    .line 82
    .line 83
    if-nez p3, :cond_6

    .line 84
    .line 85
    if-eqz p4, :cond_5

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_5
    return v1

    .line 89
    :cond_6
    :goto_4
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 90
    .line 91
    if-eqz v1, :cond_7

    .line 92
    .line 93
    invoke-interface {v1, v0, p1, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 94
    .line 95
    .line 96
    :cond_7
    if-nez p2, :cond_8

    .line 97
    .line 98
    if-eqz p3, :cond_9

    .line 99
    .line 100
    :cond_8
    const/4 p1, 0x4

    .line 101
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 105
    .line 106
    .line 107
    :cond_9
    return v2
.end method

.method private initData()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method private initHoursAndMinutesText()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0xc

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    new-array v4, v3, [Ljava/lang/Object;

    .line 11
    .line 12
    sget-object v5, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 13
    .line 14
    aget v6, v5, v1

    .line 15
    .line 16
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    aput-object v6, v4, v0

    .line 21
    .line 22
    const-string v6, "%d"

    .line 23
    .line 24
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    aput-object v4, v2, v1

    .line 29
    .line 30
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    .line 31
    .line 32
    new-array v4, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    sget-object v7, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    .line 35
    .line 36
    aget v7, v7, v1

    .line 37
    .line 38
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    aput-object v7, v4, v0

    .line 43
    .line 44
    const-string v7, "%02d"

    .line 45
    .line 46
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    aput-object v4, v2, v1

    .line 51
    .line 52
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    .line 53
    .line 54
    new-array v4, v3, [Ljava/lang/Object;

    .line 55
    .line 56
    aget v5, v5, v1

    .line 57
    .line 58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    aput-object v5, v4, v0

    .line 63
    .line 64
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    aput-object v4, v2, v1

    .line 69
    .line 70
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    .line 71
    .line 72
    new-array v3, v3, [Ljava/lang/Object;

    .line 73
    .line 74
    sget-object v4, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    .line 75
    .line 76
    aget v4, v4, v1

    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    aput-object v4, v3, v0

    .line 83
    .line 84
    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    aput-object v3, v2, v1

    .line 89
    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method private static preparePrefer30sMap()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    move v4, v1

    .line 6
    move v3, v2

    .line 7
    move v2, v0

    .line 8
    :goto_0
    const/16 v5, 0x169

    .line 9
    .line 10
    if-ge v0, v5, :cond_3

    .line 11
    .line 12
    sget-object v5, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    .line 13
    .line 14
    aput v2, v5, v0

    .line 15
    .line 16
    if-ne v4, v3, :cond_2

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x6

    .line 19
    .line 20
    const/16 v3, 0x168

    .line 21
    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x7

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    rem-int/lit8 v3, v2, 0x1e

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    const/16 v3, 0xe

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v3, 0x4

    .line 34
    :goto_1
    move v4, v1

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    return-void
.end method

.method private setCurrentHourInternal(IZZ)V
    .locals 4

    .line 1
    rem-int/lit8 v0, p1, 0xc

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1e

    .line 4
    .line 5
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput v0, v1, v2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    rem-int/lit8 v0, p1, 0x18

    .line 13
    .line 14
    const/16 v1, 0xc

    .line 15
    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move v0, v2

    .line 22
    :goto_1
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 27
    .line 28
    if-ne v3, v0, :cond_2

    .line 29
    .line 30
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 31
    .line 32
    if-eq v3, v1, :cond_3

    .line 33
    .line 34
    :cond_2
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 35
    .line 36
    iput-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 37
    .line 38
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 47
    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 52
    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    invoke-interface {p2, v2, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 56
    .line 57
    .line 58
    :cond_4
    return-void
.end method

.method private setCurrentMinuteInternal(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 2
    .line 3
    rem-int/lit8 v1, p1, 0x3c

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x6

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    aput v1, v0, v2

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-interface {p2, v2, p1, v0}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private showPicker(ZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    const-wide/16 v0, 0x1f4

    .line 11
    .line 12
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 33
    .line 34
    :cond_2
    if-eqz p1, :cond_3

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    .line 40
    :goto_0
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 41
    .line 42
    :goto_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private static snapOnly30s(II)I
    .locals 3

    div-int/lit8 v0, p0, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit8 v1, v0, 0x1e

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    if-ne p0, v0, :cond_3

    add-int/lit8 v0, v0, -0x1e

    goto :goto_1

    :cond_1
    sub-int p1, p0, v0

    sub-int p0, v1, p0

    if-ge p1, p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method

.method private static snapPrefer30s(I)I
    .locals 1

    .line 1
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    aget p0, v0, p0

    .line 8
    .line 9
    return p0
.end method


# virtual methods
.method public applyAttributes(Landroid/util/AttributeSet;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/android/internal/R$styleable;->TimePicker:[I

    .line 10
    .line 11
    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x3

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const/16 p3, 0x9

    .line 21
    .line 22
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    const v2, -0xff01

    .line 29
    .line 30
    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    :cond_0
    const/4 v3, 0x0

    .line 38
    aput-object p2, v1, v3

    .line 39
    .line 40
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 41
    .line 42
    if-nez p3, :cond_1

    .line 43
    .line 44
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    :cond_1
    const/4 v1, 0x2

    .line 49
    aput-object p3, p2, v1

    .line 50
    .line 51
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 52
    .line 53
    const/4 p3, 0x1

    .line 54
    aget-object v1, p2, v3

    .line 55
    .line 56
    aput-object v1, p2, p3

    .line 57
    .line 58
    const/4 p2, 0x5

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const/16 p3, 0x28

    .line 64
    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    invoke-static {p3}, Landroid/util/StateSet;->get(I)[I

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p2, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    :cond_2
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 76
    .line 77
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    .line 79
    .line 80
    invoke-static {p3}, Landroid/util/StateSet;->get(I)[I

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iput v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    .line 85
    .line 86
    iget-object p3, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 87
    .line 88
    aget-object p3, p3, v3

    .line 89
    .line 90
    invoke-virtual {p3, p2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    iput p2, p0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    .line 95
    .line 96
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 97
    .line 98
    const p3, 0x106015c

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p3}, Landroid/content/Context;->getColor(I)I

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    const/4 v0, 0x4

    .line 106
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public getAmOrPm()I
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method public getCurrentItemShowing()I
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCurrentMinute()I
    .locals 2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method public initialize(IIZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 2
    .line 3
    if-eq v0, p3, :cond_0

    .line 4
    .line 5
    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 p3, 0x0

    .line 11
    invoke-direct {p0, p1, p3, p3}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p2, p3}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 9
    .line 10
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 14
    .line 15
    invoke-direct {p0, p1, v1}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;F)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 p2, 0x2

    .line 9
    div-int/2addr p1, p2

    .line 10
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    div-int/2addr p1, p2

    .line 17
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 18
    .line 19
    iget p3, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 20
    .line 21
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    .line 26
    .line 27
    iget-object p3, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    .line 28
    .line 29
    aget p4, p3, p2

    .line 30
    .line 31
    sub-int p5, p1, p4

    .line 32
    .line 33
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 34
    .line 35
    sub-int/2addr p5, v0

    .line 36
    iput p5, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 37
    .line 38
    const/4 p5, 0x0

    .line 39
    aget p3, p3, p5

    .line 40
    .line 41
    sub-int p5, p1, p3

    .line 42
    .line 43
    add-int/2addr p5, v0

    .line 44
    iput p5, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .line 45
    .line 46
    add-int/2addr p3, p4

    .line 47
    div-int/2addr p3, p2

    .line 48
    sub-int/2addr p1, p3

    .line 49
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    .line 50
    .line 51
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsHours()V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsMinutes()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 60
    .line 61
    .line 62
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
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0, v0, v1, v2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, -0x1

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/16 p2, 0x3ea

    .line 30
    .line 31
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    if-nez v0, :cond_5

    .line 17
    .line 18
    :cond_1
    const/4 v2, 0x0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    if-ne v0, v1, :cond_4

    .line 25
    .line 26
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 27
    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    move v0, v1

    .line 31
    move v2, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_3
    move v0, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_4
    :goto_0
    move v0, v2

    .line 36
    :goto_1
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-direct {p0, v4, p1, v2, v0}, Landroid/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    or-int/2addr p1, v3

    .line 51
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 52
    .line 53
    :cond_5
    return v1
.end method

.method public setAmOrPm(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public setCurrentHour(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const-string p2, "ClockView does not support showing item "

    .line 7
    .line 8
    const-string v0, "RadialTimePickerView"

    .line 9
    .line 10
    invoke-static {p2, p1, v0}, Landroid/app/m;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public setCurrentMinute(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    return-void
.end method

.method public showHours(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    return-void
.end method

.method public showMinutes(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    return-void
.end method
