.class public Lcom/android/internal/widget/LockPatternView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;,
        Lcom/android/internal/widget/LockPatternView$SavedState;,
        Lcom/android/internal/widget/LockPatternView$OnPatternListener;,
        Lcom/android/internal/widget/LockPatternView$DisplayMode;,
        Lcom/android/internal/widget/LockPatternView$CellState;,
        Lcom/android/internal/widget/LockPatternView$Cell;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field public static final DEBUG_A11Y:Z = false

.field private static final DRAG_THRESHHOLD:F = 0.0f

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field private static final TAG:Ljava/lang/String; = "LockPatternView"

.field public static final VIRTUAL_BASE_VIEW_ID:I = 0x1


# instance fields
.field private mAnimatingPeriodStart:J

.field private mAspect:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private final mDotSize:I

.field private final mDotSizeActivated:I

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mErrorColor:I

.field private mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPathWidth:I

.field private final mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field private final mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mRegularColor:I

.field private mSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mSuccessColor:I

.field private final mTmpInvalidateRect:Landroid/graphics/Rect;

.field private mUseLockPatternDrawable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mDrawingProfilingStarted:Z

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 5
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 7
    fill-array-data v4, :array_0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    iput-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    const/high16 v4, -0x40800000    # -1.0f

    .line 8
    iput v4, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 9
    iput v4, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 10
    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const/4 v4, 0x1

    .line 11
    iput-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 13
    iput-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    const v5, 0x3f19999a    # 0.6f

    .line 15
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    .line 16
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 17
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 18
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 19
    sget-object v5, Lcom/android/internal/R$styleable;->LockPatternView:[I

    const v6, 0x1110060

    const v7, 0x1030487

    invoke-virtual {p1, p2, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 20
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "square"

    .line 21
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 22
    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_0
    const-string v6, "lock_width"

    .line 23
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 24
    iput v4, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_1
    const-string v6, "lock_height"

    .line 25
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 26
    iput v3, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_0

    .line 27
    :cond_2
    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    .line 28
    :goto_0
    invoke-virtual {p0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 29
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v5, 0x3

    .line 31
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    .line 32
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    const/4 v6, 0x4

    .line 33
    invoke-virtual {p2, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    .line 34
    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    invoke-virtual {p2, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 35
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 38
    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10500ec

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    int-to-float v6, v6

    .line 40
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x10500ed

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x10500ee

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x112010a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v2, :cond_3

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x1080585

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x1080583

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    :cond_3
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    new-array v1, v3, [I

    .line 48
    fill-array-data v1, :array_1

    const-class v2, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/android/internal/widget/LockPatternView$CellState;

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_5

    move v2, v0

    :goto_2
    if-ge v2, v5, :cond_4

    .line 49
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v4, v4, v1

    new-instance v6, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {v6}, Lcom/android/internal/widget/LockPatternView$CellState;-><init>()V

    aput-object v6, v4, v2

    .line 50
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/2addr v6, v3

    int-to-float v6, v6

    iput v6, v4, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 51
    iput v1, v4, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 52
    iput v2, v4, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const v0, 0x10c000d

    .line 53
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000e

    .line 54
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 55
    new-instance p1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-direct {p1, p0, p0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;-><init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 57
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mAudioManager:Landroid/media/AudioManager;

    .line 58
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method public static synthetic access$000(Lcom/android/internal/widget/LockPatternView;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/internal/widget/LockPatternView;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/internal/widget/LockPatternView;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Lcom/android/internal/widget/LockPatternView;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/internal/widget/LockPatternView;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    return p0
.end method

.method public static synthetic access$1300(Lcom/android/internal/widget/LockPatternView;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    return p0
.end method

.method public static synthetic access$1400(Lcom/android/internal/widget/LockPatternView;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getRowHit(F)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(Lcom/android/internal/widget/LockPatternView;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getColumnHit(F)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/internal/widget/LockPatternView;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/internal/widget/LockPatternView;FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/LockPatternView;->startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/internal/widget/LockPatternView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/internal/widget/LockPatternView;)[[Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/internal/widget/LockPatternView;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result p0

    return p0
.end method

.method private addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    aput-boolean v2, v0, v1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyCellAdded()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private calculateLastSegmentAlpha(FFFF)F
    .locals 0

    .line 1
    sub-float/2addr p1, p3

    .line 2
    sub-float/2addr p2, p4

    .line 3
    mul-float/2addr p1, p1

    .line 4
    mul-float/2addr p2, p2

    .line 5
    add-float/2addr p2, p1

    .line 6
    float-to-double p1, p2

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    double-to-float p1, p1

    .line 12
    iget p2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 13
    .line 14
    div-float/2addr p1, p2

    .line 15
    const p2, 0x3e99999a    # 0.3f

    .line 16
    .line 17
    .line 18
    sub-float/2addr p1, p2

    .line 19
    const/high16 p2, 0x40800000    # 4.0f

    .line 20
    .line 21
    mul-float/2addr p1, p2

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/high16 p2, 0x3f800000    # 1.0f

    .line 28
    .line 29
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method private cancelLineAnimations()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x3

    .line 4
    if-ge v1, v2, :cond_2

    .line 5
    .line 6
    move v3, v0

    .line 7
    :goto_1
    if-ge v3, v2, :cond_1

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    .line 10
    .line 11
    aget-object v4, v4, v1

    .line 12
    .line 13
    aget-object v4, v4, v3

    .line 14
    .line 15
    iget-object v5, v4, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    iput v5, v4, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 24
    .line 25
    iput v5, v4, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternView;->getRowHit(F)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-gez p2, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getColumnHit(F)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-gez p1, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 17
    .line 18
    aget-object v1, v1, p2

    .line 19
    .line 20
    aget-boolean v1, v1, p1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_2
    invoke-static {p2, p1}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v4, v4, v1

    aput-boolean v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_7

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v1, :cond_4

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    sub-int/2addr p2, v2

    .line 22
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 27
    .line 28
    iget v0, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 29
    .line 30
    iget v1, p2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 31
    .line 32
    sub-int/2addr v0, v1

    .line 33
    iget v3, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 34
    .line 35
    iget v4, p2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 36
    .line 37
    sub-int/2addr v3, v4

    .line 38
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/4 v6, -0x1

    .line 43
    const/4 v7, 0x2

    .line 44
    if-ne v5, v7, :cond_1

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eq v5, v2, :cond_1

    .line 51
    .line 52
    iget v1, p2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 53
    .line 54
    if-lez v0, :cond_0

    .line 55
    .line 56
    move v5, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v5, v6

    .line 59
    :goto_0
    add-int/2addr v1, v5

    .line 60
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-ne v5, v7, :cond_3

    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eq v0, v2, :cond_3

    .line 71
    .line 72
    iget p2, p2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 73
    .line 74
    if-lez v3, :cond_2

    .line 75
    .line 76
    move v6, v2

    .line 77
    :cond_2
    add-int v4, p2, v6

    .line 78
    .line 79
    :cond_3
    invoke-static {v1, v4}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    :cond_4
    if-eqz p2, :cond_5

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 86
    .line 87
    iget v1, p2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 88
    .line 89
    aget-object v0, v0, v1

    .line 90
    .line 91
    iget v1, p2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 92
    .line 93
    aget-boolean v0, v0, v1

    .line 94
    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 101
    .line 102
    .line 103
    iget-boolean p2, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    .line 104
    .line 105
    if-eqz p2, :cond_6

    .line 106
    .line 107
    const/4 p2, 0x3

    .line 108
    invoke-virtual {p0, v2, p2}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 109
    .line 110
    .line 111
    :cond_6
    return-object p1

    .line 112
    :cond_7
    return-object p2
.end method

.method private drawCellDrawable(Landroid/graphics/Canvas;IIFZ)V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 4
    .line 5
    int-to-float v2, v1

    .line 6
    int-to-float v3, p3

    .line 7
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 8
    .line 9
    mul-float/2addr v3, v4

    .line 10
    add-float/2addr v3, v2

    .line 11
    float-to-int v2, v3

    .line 12
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    .line 13
    .line 14
    int-to-float v5, v3

    .line 15
    int-to-float v6, p2

    .line 16
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 17
    .line 18
    mul-float/2addr v6, v7

    .line 19
    add-float/2addr v6, v5

    .line 20
    float-to-int v5, v6

    .line 21
    int-to-float v1, v1

    .line 22
    add-int/lit8 p3, p3, 0x1

    .line 23
    .line 24
    int-to-float p3, p3

    .line 25
    mul-float/2addr p3, v4

    .line 26
    add-float/2addr p3, v1

    .line 27
    float-to-int p3, p3

    .line 28
    int-to-float v1, v3

    .line 29
    add-int/lit8 p2, p2, 0x1

    .line 30
    .line 31
    int-to-float p2, p2

    .line 32
    mul-float/2addr p2, v7

    .line 33
    add-float/2addr p2, v1

    .line 34
    float-to-int p2, p2

    .line 35
    invoke-direct {v0, v2, v5, p3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 36
    .line 37
    .line 38
    iget p2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    .line 39
    .line 40
    div-int/lit8 p2, p2, 0x2

    .line 41
    .line 42
    int-to-float p2, p2

    .line 43
    div-float/2addr p4, p2

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    int-to-float p2, p2

    .line 55
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    int-to-float p3, p3

    .line 60
    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 61
    .line 62
    .line 63
    if-eqz p5, :cond_1

    .line 64
    .line 65
    const/high16 p2, 0x3f800000    # 1.0f

    .line 66
    .line 67
    cmpl-float p2, p4, p2

    .line 68
    .line 69
    if-lez p2, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object p2, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFFZF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {p0, p5}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    .line 4
    .line 5
    .line 6
    move-result p5

    .line 7
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    .line 9
    .line 10
    iget-object p5, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 11
    .line 12
    const/high16 v0, 0x437f0000    # 255.0f

    .line 13
    .line 14
    mul-float/2addr p6, v0

    .line 15
    float-to-int p6, p6

    .line 16
    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17
    .line 18
    .line 19
    iget-object p5, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private getCenterXForColumn(I)F
    .locals 2

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    add-float/2addr v1, p1

    return v1
.end method

.method private getCenterYForRow(I)F
    .locals 2

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    add-float/2addr v1, p1

    return v1
.end method

.method private getColumnHit(F)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 2
    .line 3
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    .line 4
    .line 5
    mul-float/2addr v1, v0

    .line 6
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 7
    .line 8
    int-to-float v2, v2

    .line 9
    sub-float v3, v0, v1

    .line 10
    .line 11
    const/high16 v4, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr v3, v4

    .line 14
    add-float/2addr v3, v2

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    const/4 v4, 0x3

    .line 17
    if-ge v2, v4, :cond_1

    .line 18
    .line 19
    int-to-float v4, v2

    .line 20
    mul-float/2addr v4, v0

    .line 21
    add-float/2addr v4, v3

    .line 22
    cmpl-float v5, p1, v4

    .line 23
    .line 24
    if-ltz v5, :cond_0

    .line 25
    .line 26
    add-float/2addr v4, v1

    .line 27
    cmpg-float v4, p1, v4

    .line 28
    .line 29
    if-gtz v4, :cond_0

    .line 30
    .line 31
    return v2

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, -0x1

    .line 36
    return p1
.end method

.method private getCurrentColor(Z)I
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 4
    .line 5
    if-nez p1, :cond_4

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 13
    .line 14
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 15
    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    iget p1, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    .line 19
    .line 20
    return p1

    .line 21
    :cond_1
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 22
    .line 23
    if-eq p1, v0, :cond_3

    .line 24
    .line 25
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 26
    .line 27
    if-ne p1, v0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "unknown display mode "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_3
    :goto_0
    iget p1, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    .line 53
    .line 54
    return p1

    .line 55
    :cond_4
    :goto_1
    iget p1, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    .line 56
    .line 57
    return p1
.end method

.method private getRowHit(F)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 2
    .line 3
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    .line 4
    .line 5
    mul-float/2addr v1, v0

    .line 6
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    .line 7
    .line 8
    int-to-float v2, v2

    .line 9
    sub-float v3, v0, v1

    .line 10
    .line 11
    const/high16 v4, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr v3, v4

    .line 14
    add-float/2addr v3, v2

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    const/4 v4, 0x3

    .line 17
    if-ge v2, v4, :cond_1

    .line 18
    .line 19
    int-to-float v4, v2

    .line 20
    mul-float/2addr v4, v0

    .line 21
    add-float/2addr v4, v3

    .line 22
    cmpl-float v5, p1, v4

    .line 23
    .line 24
    if-ltz v5, :cond_0

    .line 25
    .line 26
    add-float/2addr v4, v1

    .line 27
    cmpg-float v4, p1, v4

    .line 28
    .line 29
    if-gtz v4, :cond_0

    .line 30
    .line 31
    return v2

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, -0x1

    .line 36
    return p1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 23
    .line 24
    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget v2, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 44
    .line 45
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget v1, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 50
    .line 51
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 56
    .line 57
    const/high16 v4, 0x40000000    # 2.0f

    .line 58
    .line 59
    div-float/2addr v3, v4

    .line 60
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 61
    .line 62
    div-float/2addr v5, v4

    .line 63
    sub-float v4, v2, v3

    .line 64
    .line 65
    float-to-int v4, v4

    .line 66
    sub-float v6, v1, v5

    .line 67
    .line 68
    float-to-int v6, v6

    .line 69
    add-float/2addr v2, v3

    .line 70
    float-to-int v2, v2

    .line 71
    add-float/2addr v1, v5

    .line 72
    float-to-int v1, v1

    .line 73
    invoke-virtual {p0, v4, v6, v2, v1}, Landroid/view/View;->invalidate(IIII)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 77
    .line 78
    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 79
    .line 80
    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    add-int/lit8 v4, v1, 0x1

    .line 16
    .line 17
    if-ge v2, v4, :cond_7

    .line 18
    .line 19
    if-ge v2, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    :goto_1
    if-ge v2, v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    :goto_2
    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const/4 v8, 0x1

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    if-ne v7, v8, :cond_2

    .line 55
    .line 56
    invoke-direct {p0, v8}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget v9, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 63
    .line 64
    sub-float v9, v4, v9

    .line 65
    .line 66
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    iget v10, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 71
    .line 72
    sub-float v10, v5, v10

    .line 73
    .line 74
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    const/4 v11, 0x0

    .line 79
    cmpl-float v9, v9, v11

    .line 80
    .line 81
    if-gtz v9, :cond_3

    .line 82
    .line 83
    cmpl-float v9, v10, v11

    .line 84
    .line 85
    if-lez v9, :cond_4

    .line 86
    .line 87
    :cond_3
    move v3, v8

    .line 88
    :cond_4
    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 89
    .line 90
    if-eqz v8, :cond_6

    .line 91
    .line 92
    if-lez v7, :cond_6

    .line 93
    .line 94
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 95
    .line 96
    add-int/lit8 v7, v7, -0x1

    .line 97
    .line 98
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 103
    .line 104
    iget v8, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 105
    .line 106
    invoke-direct {p0, v8}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    iget v7, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 111
    .line 112
    invoke-direct {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    sub-float/2addr v9, v0

    .line 121
    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    add-float/2addr v4, v0

    .line 126
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    sub-float/2addr v8, v0

    .line 131
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    add-float/2addr v5, v0

    .line 136
    if-eqz v6, :cond_5

    .line 137
    .line 138
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 139
    .line 140
    const/high16 v10, 0x3f000000    # 0.5f

    .line 141
    .line 142
    mul-float/2addr v7, v10

    .line 143
    iget v11, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 144
    .line 145
    mul-float/2addr v11, v10

    .line 146
    iget v10, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 147
    .line 148
    invoke-direct {p0, v10}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    iget v6, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 153
    .line 154
    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    sub-float v12, v10, v7

    .line 159
    .line 160
    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    add-float/2addr v10, v7

    .line 165
    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    sub-float v7, v6, v11

    .line 170
    .line 171
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    add-float/2addr v6, v11

    .line 176
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    :cond_5
    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 181
    .line 182
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    invoke-virtual {v6, v7, v8, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 199
    .line 200
    .line 201
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 216
    .line 217
    if-eqz v3, :cond_8

    .line 218
    .line 219
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 220
    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 222
    .line 223
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 227
    .line 228
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 232
    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 234
    .line 235
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 236
    .line 237
    .line 238
    :cond_8
    return-void
.end method

.method private handleActionUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->cancelLineAnimations()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternDetected()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .line 1
    const v0, 0x10402f7

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .line 1
    const v0, 0x10402f8

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .line 1
    const v0, 0x10402f9

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    move p2, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :cond_1
    :goto_0
    return p2
.end method

.method private sendAccessEvent(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPatternInProgress(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    .line 2
    .line 3
    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 8
    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    .line 12
    .line 13
    div-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    int-to-float v3, v1

    .line 16
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    .line 17
    .line 18
    div-int/lit8 v1, v1, 0x2

    .line 19
    .line 20
    int-to-float v4, v1

    .line 21
    const-wide/16 v5, 0x60

    .line 22
    .line 23
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 24
    .line 25
    new-instance v9, Lcom/android/internal/widget/LockPatternView$4;

    .line 26
    .line 27
    invoke-direct {v9, p0, v0}, Lcom/android/internal/widget/LockPatternView$4;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    .line 28
    .line 29
    .line 30
    move-object v2, p0

    .line 31
    move-object v8, v0

    .line 32
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/widget/LockPatternView;->startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 36
    .line 37
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 38
    .line 39
    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 40
    .line 41
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    iget p1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    move-object v3, v0

    .line 52
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternView;->startLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 12

    move-object v9, p0

    move-object v8, p1

    move/from16 v0, p5

    move v10, p3

    .line 1
    iput v10, v8, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 2
    iput v0, v8, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 3
    iget v1, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v1, v1, p7

    iput v1, v8, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v8, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    .line 5
    iget v1, v8, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 6
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    add-float v1, v1, p4

    .line 7
    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    .line 8
    iget v1, v8, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    .line 9
    iget v1, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v1, v1, p6

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    .line 10
    iget-object v1, v9, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object v1, v9, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 12
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, v9, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    .line 13
    iget-object v1, v8, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget v2, v8, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 14
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v2

    add-float/2addr v2, v0

    move-object v0, p0

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-object/from16 v7, p12

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    .line 16
    iget-object v1, v8, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget v0, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v2, v0, p7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    .line 17
    new-instance v11, Lcom/android/internal/widget/LockPatternView$3;

    move-object/from16 v0, p13

    invoke-direct {v11, p0, p1, v0}, Lcom/android/internal/widget/LockPatternView$3;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/LockPatternView;->startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 12

    move-object v9, p0

    move-object v2, p1

    move v3, p2

    .line 1
    iput v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    move/from16 v5, p4

    .line 2
    iput v5, v2, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 3
    iget v0, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p6

    iput v0, v2, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    new-array v0, v1, [F

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    move-wide/from16 v0, p10

    .line 5
    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-wide/from16 v0, p8

    .line 6
    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    move-object/from16 v0, p12

    .line 7
    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    new-instance v11, Lcom/android/internal/widget/LockPatternView$1;

    move-object v0, v11

    move-object v1, p0

    move v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/LockPatternView$1;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFFF)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    new-instance v0, Lcom/android/internal/widget/LockPatternView$2;

    move-object/from16 v1, p13

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/LockPatternView$2;-><init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v8, Lcom/android/internal/widget/LockPatternView$5;

    .line 12
    .line 13
    move-object v1, v8

    .line 14
    move-object v2, p0

    .line 15
    move-object v3, p1

    .line 16
    move v4, p2

    .line 17
    move v5, p4

    .line 18
    move v6, p3

    .line 19
    move v7, p5

    .line 20
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/LockPatternView$5;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Lcom/android/internal/widget/LockPatternView$6;

    .line 27
    .line 28
    invoke-direct {p2, p0, p1}, Lcom/android/internal/widget/LockPatternView$6;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    .line 38
    .line 39
    const-wide/16 p2, 0x64

    .line 40
    .line 41
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput p1, v0, v1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    aput p2, v0, p1

    .line 9
    .line 10
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Lcom/android/internal/widget/LockPatternView$7;

    .line 15
    .line 16
    invoke-direct {p2, p0, p6}, Lcom/android/internal/widget/LockPatternView$7;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 20
    .line 21
    .line 22
    if-eqz p7, :cond_0

    .line 23
    .line 24
    new-instance p2, Lcom/android/internal/widget/LockPatternView$8;

    .line 25
    .line 26
    invoke-direct {p2, p0, p7}, Lcom/android/internal/widget/LockPatternView$8;-><init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/RenderNodeAnimator;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    .line 4
    .line 5
    const/high16 v1, 0x437f0000    # 255.0f

    .line 6
    .line 7
    mul-float/2addr p2, v1

    .line 8
    float-to-int p2, p2

    .line 9
    int-to-float p2, p2

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p1, v1, p2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;FJJ",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/view/RenderNodeAnimator;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    return-void
.end method

.method public disableInput()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    or-int/2addr p1, v0

    .line 12
    return p1
.end method

.method public enableInput()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method public getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    return-object v0
.end method

.method public isInStealthMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    iget-object v9, v7, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v10

    .line 11
    iget-object v11, v7, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 12
    .line 13
    iget-object v0, v7, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 14
    .line 15
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 16
    .line 17
    const/4 v13, 0x1

    .line 18
    if-ne v0, v1, :cond_3

    .line 19
    .line 20
    add-int/lit8 v0, v10, 0x1

    .line 21
    .line 22
    mul-int/lit16 v0, v0, 0x2bc

    .line 23
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iget-wide v3, v7, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    .line 29
    .line 30
    sub-long/2addr v1, v3

    .line 31
    long-to-int v1, v1

    .line 32
    rem-int/2addr v1, v0

    .line 33
    div-int/lit16 v0, v1, 0x2bc

    .line 34
    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    :goto_0
    if-ge v2, v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    aget-object v4, v11, v4

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    aput-boolean v13, v4, v3

    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    if-lez v0, :cond_1

    .line 63
    .line 64
    if-ge v0, v10, :cond_1

    .line 65
    .line 66
    move v2, v13

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v2, 0x0

    .line 69
    :goto_1
    if-eqz v2, :cond_2

    .line 70
    .line 71
    rem-int/lit16 v1, v1, 0x2bc

    .line 72
    .line 73
    int-to-float v1, v1

    .line 74
    const/high16 v2, 0x442f0000    # 700.0f

    .line 75
    .line 76
    div-float/2addr v1, v2

    .line 77
    add-int/lit8 v2, v0, -0x1

    .line 78
    .line 79
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 84
    .line 85
    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 86
    .line 87
    invoke-direct {v7, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    iget v2, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 92
    .line 93
    invoke-direct {v7, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 102
    .line 103
    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 104
    .line 105
    invoke-direct {v7, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    sub-float/2addr v4, v3

    .line 110
    mul-float/2addr v4, v1

    .line 111
    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 112
    .line 113
    invoke-direct {v7, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    sub-float/2addr v0, v2

    .line 118
    mul-float/2addr v0, v1

    .line 119
    add-float/2addr v3, v4

    .line 120
    iput v3, v7, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 121
    .line 122
    add-float/2addr v2, v0

    .line 123
    iput v2, v7, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 124
    .line 125
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 126
    .line 127
    .line 128
    :cond_3
    iget-object v14, v7, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 129
    .line 130
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    .line 131
    .line 132
    .line 133
    const/4 v15, 0x0

    .line 134
    :goto_2
    const/4 v6, 0x3

    .line 135
    if-ge v15, v6, :cond_7

    .line 136
    .line 137
    invoke-direct {v7, v15}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    const/4 v4, 0x0

    .line 142
    :goto_3
    if-ge v4, v6, :cond_6

    .line 143
    .line 144
    iget-object v0, v7, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    .line 145
    .line 146
    aget-object v0, v0, v15

    .line 147
    .line 148
    aget-object v0, v0, v4

    .line 149
    .line 150
    invoke-direct {v7, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    iget v2, v0, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 155
    .line 156
    iget-boolean v3, v7, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    .line 157
    .line 158
    if-eqz v3, :cond_4

    .line 159
    .line 160
    iget v3, v0, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 161
    .line 162
    aget-object v0, v11, v15

    .line 163
    .line 164
    aget-boolean v16, v0, v4

    .line 165
    .line 166
    move-object/from16 v0, p0

    .line 167
    .line 168
    move-object/from16 v1, p1

    .line 169
    .line 170
    move v2, v15

    .line 171
    move/from16 v17, v3

    .line 172
    .line 173
    move v3, v4

    .line 174
    move/from16 v18, v4

    .line 175
    .line 176
    move/from16 v4, v17

    .line 177
    .line 178
    move v12, v5

    .line 179
    move/from16 v5, v16

    .line 180
    .line 181
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternView;->drawCellDrawable(Landroid/graphics/Canvas;IIFZ)V

    .line 182
    .line 183
    .line 184
    :goto_4
    move/from16 v16, v6

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_4
    move/from16 v18, v4

    .line 188
    .line 189
    move v12, v5

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_5

    .line 195
    .line 196
    iget-boolean v3, v0, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    .line 197
    .line 198
    if-eqz v3, :cond_5

    .line 199
    .line 200
    move-object v1, v8

    .line 201
    check-cast v1, Landroid/view/DisplayListCanvas;

    .line 202
    .line 203
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    .line 204
    .line 205
    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    .line 206
    .line 207
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    .line 208
    .line 209
    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    .line 210
    .line 211
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_5
    float-to-int v1, v1

    .line 216
    int-to-float v3, v1

    .line 217
    float-to-int v1, v12

    .line 218
    int-to-float v1, v1

    .line 219
    add-float v4, v1, v2

    .line 220
    .line 221
    iget v5, v0, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 222
    .line 223
    aget-object v1, v11, v15

    .line 224
    .line 225
    aget-boolean v16, v1, v18

    .line 226
    .line 227
    iget v2, v0, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 228
    .line 229
    move-object/from16 v0, p0

    .line 230
    .line 231
    move-object/from16 v1, p1

    .line 232
    .line 233
    move/from16 v19, v2

    .line 234
    .line 235
    move v2, v3

    .line 236
    move v3, v4

    .line 237
    move v4, v5

    .line 238
    move/from16 v5, v16

    .line 239
    .line 240
    move/from16 v16, v6

    .line 241
    .line 242
    move/from16 v6, v19

    .line 243
    .line 244
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;FFFZF)V

    .line 245
    .line 246
    .line 247
    :goto_5
    add-int/lit8 v4, v18, 0x1

    .line 248
    .line 249
    move v5, v12

    .line 250
    move/from16 v6, v16

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_7
    iget-boolean v0, v7, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 257
    .line 258
    xor-int/2addr v0, v13

    .line 259
    if-eqz v0, :cond_d

    .line 260
    .line 261
    iget-object v0, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 262
    .line 263
    invoke-direct {v7, v13}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    .line 269
    .line 270
    const/4 v0, 0x0

    .line 271
    move v1, v0

    .line 272
    const/4 v12, 0x0

    .line 273
    const/16 v17, 0x0

    .line 274
    .line 275
    :goto_6
    if-ge v12, v10, :cond_b

    .line 276
    .line 277
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 282
    .line 283
    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 284
    .line 285
    aget-object v3, v11, v3

    .line 286
    .line 287
    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 288
    .line 289
    aget-boolean v3, v3, v4

    .line 290
    .line 291
    if-nez v3, :cond_8

    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_8
    invoke-direct {v7, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 299
    .line 300
    invoke-direct {v7, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-eqz v12, :cond_a

    .line 305
    .line 306
    iget-object v5, v7, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    .line 307
    .line 308
    iget v6, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 309
    .line 310
    aget-object v5, v5, v6

    .line 311
    .line 312
    iget v2, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 313
    .line 314
    aget-object v2, v5, v2

    .line 315
    .line 316
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 320
    .line 321
    .line 322
    iget v0, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 323
    .line 324
    const/4 v1, 0x1

    .line 325
    cmpl-float v5, v0, v1

    .line 326
    .line 327
    if-eqz v5, :cond_9

    .line 328
    .line 329
    iget v2, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 330
    .line 331
    cmpl-float v1, v2, v1

    .line 332
    .line 333
    if-eqz v1, :cond_9

    .line 334
    .line 335
    invoke-virtual {v14, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 336
    .line 337
    .line 338
    goto :goto_7

    .line 339
    :cond_9
    invoke-virtual {v14, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 340
    .line 341
    .line 342
    :goto_7
    iget-object v0, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 343
    .line 344
    invoke-virtual {v8, v14, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 345
    .line 346
    .line 347
    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 348
    .line 349
    move v0, v3

    .line 350
    move v1, v4

    .line 351
    move/from16 v17, v13

    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_b
    :goto_8
    iget-boolean v2, v7, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 355
    .line 356
    if-nez v2, :cond_c

    .line 357
    .line 358
    iget-object v2, v7, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 359
    .line 360
    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 361
    .line 362
    if-ne v2, v3, :cond_d

    .line 363
    .line 364
    :cond_c
    if-eqz v17, :cond_d

    .line 365
    .line 366
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 370
    .line 371
    .line 372
    iget v2, v7, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 373
    .line 374
    iget v3, v7, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 375
    .line 376
    invoke-virtual {v14, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 377
    .line 378
    .line 379
    iget-object v2, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 380
    .line 381
    iget v3, v7, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 382
    .line 383
    iget v4, v7, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 384
    .line 385
    invoke-direct {v7, v3, v4, v0, v1}, Lcom/android/internal/widget/LockPatternView;->calculateLastSegmentAlpha(FFFF)F

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    const/high16 v1, 0x437f0000    # 255.0f

    .line 390
    .line 391
    mul-float/2addr v0, v1

    .line 392
    float-to-int v0, v0

    .line 393
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 394
    .line 395
    .line 396
    iget-object v0, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 397
    .line 398
    invoke-virtual {v8, v14, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 399
    .line 400
    .line 401
    :cond_d
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x7

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/16 v1, 0x9

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const/16 v1, 0xa

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v1, 0x2

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p2, v1}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    move p2, p1

    .line 43
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/internal/widget/LockPatternView$SavedState;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->getDisplayMode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    aget-object v0, v0, v1

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInputEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInStealthMode()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    .line 52
    .line 53
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    new-instance v8, Lcom/android/internal/widget/LockPatternView$SavedState;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 20
    .line 21
    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 22
    .line 23
    iget-boolean v6, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v0, v8

    .line 27
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/internal/widget/LockPatternView$1;)V

    .line 28
    .line 29
    .line 30
    return-object v8
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    .line 1
    iget p3, p0, Landroid/view/View;->mPaddingLeft:I

    .line 2
    .line 3
    sub-int/2addr p1, p3

    .line 4
    iget p3, p0, Landroid/view/View;->mPaddingRight:I

    .line 5
    .line 6
    sub-int/2addr p1, p3

    .line 7
    int-to-float p3, p1

    .line 8
    const/high16 p4, 0x40400000    # 3.0f

    .line 9
    .line 10
    div-float/2addr p3, p4

    .line 11
    iput p3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 12
    .line 13
    iget p3, p0, Landroid/view/View;->mPaddingTop:I

    .line 14
    .line 15
    sub-int/2addr p2, p3

    .line 16
    iget p3, p0, Landroid/view/View;->mPaddingBottom:I

    .line 17
    .line 18
    sub-int/2addr p2, p3

    .line 19
    int-to-float p3, p2

    .line 20
    div-float/2addr p3, p4

    .line 21
    iput p3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 22
    .line 23
    iget-object p3, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    .line 24
    .line 25
    invoke-virtual {p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 26
    .line 27
    .line 28
    iget-boolean p3, p0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    iget-object p3, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    iget p4, p0, Landroid/view/View;->mPaddingLeft:I

    .line 35
    .line 36
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 37
    .line 38
    invoke-virtual {p3, p4, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    .line 40
    .line 41
    iget-object p3, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    iget p4, p0, Landroid/view/View;->mPaddingLeft:I

    .line 44
    .line 45
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 46
    .line 47
    invoke-virtual {p3, p4, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

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
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    if-eq v0, v2, :cond_4

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq v0, v3, :cond_3

    .line 24
    .line 25
    const/4 p1, 0x3

    .line 26
    if-eq v0, p1, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    iget-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    .line 40
    .line 41
    .line 42
    :cond_2
    return v2

    .line 43
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->handleActionUp()V

    .line 48
    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_6
    :goto_0
    return v1
.end method

.method public setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 2
    .line 3
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 4
    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "you must have a pattern to animate if you want to set the display mode to animate"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    return-void
.end method

.method public setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method public setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    aget-object v1, v1, v2

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x1

    .line 43
    aput-boolean v2, v1, v0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method

.method public startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
