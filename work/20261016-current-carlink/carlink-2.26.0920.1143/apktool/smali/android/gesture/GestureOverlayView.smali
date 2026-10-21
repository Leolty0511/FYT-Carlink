.class public Landroid/gesture/GestureOverlayView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;,
        Landroid/gesture/GestureOverlayView$OnGestureListener;,
        Landroid/gesture/GestureOverlayView$OnGesturingListener;,
        Landroid/gesture/GestureOverlayView$FadeOutRunnable;
    }
.end annotation


# static fields
.field private static final DITHER_FLAG:Z = true

.field private static final FADE_ANIMATION_RATE:I = 0x10

.field private static final GESTURE_RENDERING_ANTIALIAS:Z = true

.field public static final GESTURE_STROKE_TYPE_MULTIPLE:I = 0x1

.field public static final GESTURE_STROKE_TYPE_SINGLE:I = 0x0

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1


# instance fields
.field private mCertainGestureColor:I

.field private mCurrentColor:I

.field private mCurrentGesture:Landroid/gesture/Gesture;

.field private mCurveEndX:F

.field private mCurveEndY:F

.field private mFadeDuration:J

.field private mFadeEnabled:Z

.field private mFadeOffset:J

.field private mFadingAlpha:F

.field private mFadingHasStarted:Z

.field private final mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

.field private mFadingStart:J

.field private final mGesturePaint:Landroid/graphics/Paint;

.field private mGestureStrokeAngleThreshold:F

.field private mGestureStrokeLengthThreshold:F

.field private mGestureStrokeSquarenessTreshold:F

.field private mGestureStrokeType:I

.field private mGestureStrokeWidth:F

.field private mGestureVisible:Z

.field private mHandleGestureActions:Z

.field private mInterceptEvents:Z

.field private final mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private final mInvalidRect:Landroid/graphics/Rect;

.field private mInvalidateExtraBorder:I

.field private mIsFadingOut:Z

.field private mIsGesturing:Z

.field private mIsListeningForGestures:Z

.field private final mOnGestureListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GestureOverlayView$OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnGesturePerformedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnGesturingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GestureOverlayView$OnGesturingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private final mPath:Landroid/graphics/Path;

.field private mPreviousWasGesturing:Z

.field private mResetGesture:Z

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalLength:F

.field private mUncertainGestureColor:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    const-wide/16 v0, 0x96

    .line 3
    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    const-wide/16 v0, 0x1a4

    .line 4
    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    const/16 v0, -0x100

    .line 6
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    const v0, 0x48ffff00    # 524280.0f

    .line 7
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    const/high16 v0, 0x41400000    # 12.0f

    .line 8
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    const/16 v0, 0xa

    .line 9
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    const/high16 v1, 0x42480000    # 50.0f

    .line 11
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    const v1, 0x3e8ccccd    # 0.275f

    .line 12
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    const/high16 v1, 0x42200000    # 40.0f

    .line 13
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 14
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 15
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 16
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 17
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    .line 18
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 19
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 20
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 25
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 27
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 28
    new-instance p1, Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$1;)V

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    .line 29
    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x111003e

    .line 30
    invoke-direct {p0, p1, p2, v0}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    const-wide/16 v0, 0x96

    .line 34
    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    const-wide/16 v0, 0x1a4

    .line 35
    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    const/16 v1, -0x100

    .line 37
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    const v1, 0x48ffff00    # 524280.0f

    .line 38
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    const/high16 v1, 0x41400000    # 12.0f

    .line 39
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    const/16 v1, 0xa

    .line 40
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    const/4 v2, 0x0

    .line 41
    iput v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    const/high16 v3, 0x42480000    # 50.0f

    .line 42
    iput v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    const v3, 0x3e8ccccd    # 0.275f

    .line 43
    iput v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    const/high16 v3, 0x42200000    # 40.0f

    .line 44
    iput v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 45
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 46
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 47
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 48
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    .line 49
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 50
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 51
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 56
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 57
    iput v3, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 58
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 59
    new-instance v3, Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$1;)V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    .line 60
    sget-object v3, Lcom/android/internal/R$styleable;->GestureOverlayView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 61
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    float-to-int p2, p2

    sub-int/2addr p2, v0

    .line 62
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    const/4 p2, 0x2

    .line 63
    iget p3, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    const/4 p2, 0x3

    .line 64
    iget p3, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 65
    iget-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    long-to-int p2, p2

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    .line 66
    iget-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    long-to-int p2, p2

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    const/4 p2, 0x6

    .line 67
    iget p3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    const/4 p2, 0x7

    .line 68
    iget p3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    const/16 p2, 0x9

    .line 69
    iget p3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    const/16 p2, 0x8

    .line 70
    iget p3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 71
    iget-boolean p2, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    const/16 p2, 0xb

    .line 72
    iget-boolean p3, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 73
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->init()V

    return-void
.end method

.method public static synthetic access$100(Landroid/gesture/GestureOverlayView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    return p0
.end method

.method public static synthetic access$1000(Landroid/gesture/GestureOverlayView;)F
    .locals 0

    iget p0, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    return p0
.end method

.method public static synthetic access$1002(Landroid/gesture/GestureOverlayView;F)F
    .locals 0

    iput p1, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    return p1
.end method

.method public static synthetic access$102(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    return p1
.end method

.method public static synthetic access$1100(Landroid/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;
    .locals 0

    iget-object p0, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-object p0
.end method

.method public static synthetic access$1202(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    return p1
.end method

.method public static synthetic access$200(Landroid/gesture/GestureOverlayView;)J
    .locals 2

    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadingStart:J

    return-wide v0
.end method

.method public static synthetic access$300(Landroid/gesture/GestureOverlayView;)J
    .locals 2

    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    return-wide v0
.end method

.method public static synthetic access$400(Landroid/gesture/GestureOverlayView;)V
    .locals 0

    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->fireOnGesturePerformed()V

    return-void
.end method

.method public static synthetic access$502(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    return p1
.end method

.method public static synthetic access$602(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    return p1
.end method

.method public static synthetic access$700(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public static synthetic access$802(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;
    .locals 0

    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    return-object p1
.end method

.method public static synthetic access$900(Landroid/gesture/GestureOverlayView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    return-void
.end method

.method private cancelGesture(Landroid/view/MotionEvent;)V
    .locals 5

    .line 16
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v4, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v2}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    return-void
.end method

.method private clear(ZZZ)V
    .locals 4

    const/16 v0, 0xff

    .line 2
    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 3
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    .line 5
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iput-boolean p2, v1, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    .line 6
    iput-boolean v0, v1, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz p1, :cond_0

    .line 8
    iput v2, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 9
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 10
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 11
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroid/gesture/GestureOverlayView;->mFadingStart:J

    .line 12
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 13
    :cond_0
    iput v2, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 14
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 15
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 16
    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 17
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 19
    iget-wide p1, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 20
    :cond_2
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    if-ne p2, v3, :cond_3

    .line 21
    iput-boolean v3, v1, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    .line 22
    iget-wide p1, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 23
    :cond_3
    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 24
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method private fireOnGesturePerformed()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    .line 15
    .line 16
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 17
    .line 18
    invoke-interface {v3, p0, v4}, Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;->onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 24
    .line 25
    .line 26
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 29
    .line 30
    .line 31
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 40
    .line 41
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    .line 42
    .line 43
    const/16 v0, 0xff

    .line 44
    .line 45
    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private processEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_1

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    if-eq v0, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-direct {p0, p1, v1}, Landroid/gesture/GestureOverlayView;->touchUp(Landroid/view/MotionEvent;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->touchMove(Landroid/view/MotionEvent;)Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return v1

    .line 43
    :cond_3
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-direct {p0, p1, v2}, Landroid/gesture/GestureOverlayView;->touchUp(Landroid/view/MotionEvent;Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 51
    .line 52
    .line 53
    return v1

    .line 54
    :cond_4
    :goto_0
    return v2

    .line 55
    :cond_5
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->touchDown(Landroid/view/MotionEvent;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 59
    .line 60
    .line 61
    return v1
.end method

.method private setCurrentColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    .line 2
    .line 3
    iget-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/high16 p1, 0x437f0000    # 255.0f

    .line 8
    .line 9
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 10
    .line 11
    mul-float/2addr v0, p1

    .line 12
    float-to-int p1, v0

    .line 13
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 p1, 0xff

    .line 18
    .line 19
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private setPaintAlpha(I)V
    .locals 2

    .line 1
    shr-int/lit8 v0, p1, 0x7

    .line 2
    .line 3
    add-int/2addr p1, v0

    .line 4
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    .line 5
    .line 6
    ushr-int/lit8 v1, v0, 0x18

    .line 7
    .line 8
    mul-int/2addr v1, p1

    .line 9
    shr-int/lit8 p1, v1, 0x8

    .line 10
    .line 11
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    shl-int/lit8 v0, v0, 0x8

    .line 14
    .line 15
    ushr-int/lit8 v0, v0, 0x8

    .line 16
    .line 17
    shl-int/lit8 p1, p1, 0x18

    .line 18
    .line 19
    or-int/2addr p1, v0

    .line 20
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private touchDown(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

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
    move-result v1

    .line 12
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mX:F

    .line 13
    .line 14
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mY:F

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput v2, p0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 21
    .line 22
    iget v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 23
    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/gesture/Gesture;->getStrokesCount()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_4

    .line 40
    .line 41
    :cond_1
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 42
    .line 43
    if-eqz v3, :cond_4

    .line 44
    .line 45
    iget v3, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 46
    .line 47
    invoke-direct {p0, v3}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    iget v3, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 56
    .line 57
    invoke-direct {p0, v3}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 64
    .line 65
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_1
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 71
    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->cancelClearAnimation()V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 79
    .line 80
    if-eqz v3, :cond_6

    .line 81
    .line 82
    const/16 v3, 0xff

    .line 83
    .line 84
    invoke-direct {p0, v3}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 85
    .line 86
    .line 87
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 88
    .line 89
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 90
    .line 91
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    .line 92
    .line 93
    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    :cond_6
    :goto_2
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 97
    .line 98
    if-nez v3, :cond_7

    .line 99
    .line 100
    new-instance v3, Landroid/gesture/Gesture;

    .line 101
    .line 102
    invoke-direct {v3}, Landroid/gesture/Gesture;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 106
    .line 107
    :cond_7
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 108
    .line 109
    new-instance v4, Landroid/gesture/GesturePoint;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 112
    .line 113
    .line 114
    move-result-wide v5

    .line 115
    invoke-direct {v4, v0, v1, v5, v6}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 122
    .line 123
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 124
    .line 125
    .line 126
    iget v3, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 127
    .line 128
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 129
    .line 130
    float-to-int v5, v0

    .line 131
    sub-int v6, v5, v3

    .line 132
    .line 133
    float-to-int v7, v1

    .line 134
    sub-int v8, v7, v3

    .line 135
    .line 136
    add-int/2addr v5, v3

    .line 137
    add-int/2addr v7, v3

    .line 138
    invoke-virtual {v4, v6, v8, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 139
    .line 140
    .line 141
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    .line 142
    .line 143
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    .line 144
    .line 145
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    :goto_3
    if-ge v2, v1, :cond_8

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Landroid/gesture/GestureOverlayView$OnGestureListener;

    .line 158
    .line 159
    invoke-interface {v3, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 160
    .line 161
    .line 162
    add-int/lit8 v2, v2, 0x1

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_8
    return-void
.end method

.method private touchMove(Landroid/view/MotionEvent;)Landroid/graphics/Rect;
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mX:F

    .line 10
    .line 11
    iget v3, p0, Landroid/gesture/GestureOverlayView;->mY:F

    .line 12
    .line 13
    sub-float v4, v0, v2

    .line 14
    .line 15
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    sub-float v5, v1, v3

    .line 20
    .line 21
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/high16 v6, 0x40400000    # 3.0f

    .line 26
    .line 27
    cmpl-float v7, v4, v6

    .line 28
    .line 29
    if-gez v7, :cond_1

    .line 30
    .line 31
    cmpl-float v6, v5, v6

    .line 32
    .line 33
    if-ltz v6, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_1
    :goto_0
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget v7, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 42
    .line 43
    iget v8, p0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    .line 44
    .line 45
    float-to-int v9, v8

    .line 46
    sub-int/2addr v9, v7

    .line 47
    iget v10, p0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    .line 48
    .line 49
    float-to-int v11, v10

    .line 50
    sub-int/2addr v11, v7

    .line 51
    float-to-int v8, v8

    .line 52
    add-int/2addr v8, v7

    .line 53
    float-to-int v10, v10

    .line 54
    add-int/2addr v10, v7

    .line 55
    invoke-virtual {v6, v9, v11, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    .line 57
    .line 58
    add-float v8, v0, v2

    .line 59
    .line 60
    const/high16 v9, 0x40000000    # 2.0f

    .line 61
    .line 62
    div-float/2addr v8, v9

    .line 63
    iput v8, p0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    .line 64
    .line 65
    add-float v10, v1, v3

    .line 66
    .line 67
    div-float/2addr v10, v9

    .line 68
    iput v10, p0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    .line 69
    .line 70
    iget-object v9, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 71
    .line 72
    invoke-virtual {v9, v2, v3, v8, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 73
    .line 74
    .line 75
    float-to-int v2, v2

    .line 76
    sub-int v9, v2, v7

    .line 77
    .line 78
    float-to-int v3, v3

    .line 79
    sub-int v11, v3, v7

    .line 80
    .line 81
    add-int/2addr v2, v7

    .line 82
    add-int/2addr v3, v7

    .line 83
    invoke-virtual {v6, v9, v11, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 84
    .line 85
    .line 86
    float-to-int v2, v8

    .line 87
    sub-int v3, v2, v7

    .line 88
    .line 89
    float-to-int v8, v10

    .line 90
    sub-int v9, v8, v7

    .line 91
    .line 92
    add-int/2addr v2, v7

    .line 93
    add-int/2addr v8, v7

    .line 94
    invoke-virtual {v6, v3, v9, v2, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 95
    .line 96
    .line 97
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mX:F

    .line 98
    .line 99
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mY:F

    .line 100
    .line 101
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 102
    .line 103
    new-instance v3, Landroid/gesture/GesturePoint;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 106
    .line 107
    .line 108
    move-result-wide v7

    .line 109
    invoke-direct {v3, v0, v1, v7, v8}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 121
    .line 122
    if-nez v0, :cond_5

    .line 123
    .line 124
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    .line 125
    .line 126
    float-to-double v2, v4

    .line 127
    float-to-double v4, v5

    .line 128
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    double-to-float v2, v2

    .line 133
    add-float/2addr v0, v2

    .line 134
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    .line 135
    .line 136
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 137
    .line 138
    cmpl-float v0, v0, v2

    .line 139
    .line 140
    if-lez v0, :cond_5

    .line 141
    .line 142
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-static {v0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget v2, v0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    .line 149
    .line 150
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    const/high16 v3, 0x42b40000    # 90.0f

    .line 155
    .line 156
    cmpl-float v3, v2, v3

    .line 157
    .line 158
    if-lez v3, :cond_2

    .line 159
    .line 160
    const/high16 v3, 0x43340000    # 180.0f

    .line 161
    .line 162
    sub-float v2, v3, v2

    .line 163
    .line 164
    :cond_2
    iget v0, v0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    .line 165
    .line 166
    iget v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 167
    .line 168
    cmpl-float v0, v0, v3

    .line 169
    .line 170
    const/4 v3, 0x1

    .line 171
    if-gtz v0, :cond_4

    .line 172
    .line 173
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 174
    .line 175
    if-ne v0, v3, :cond_3

    .line 176
    .line 177
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 178
    .line 179
    cmpg-float v0, v2, v0

    .line 180
    .line 181
    if-gez v0, :cond_5

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_3
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 185
    .line 186
    cmpl-float v0, v2, v0

    .line 187
    .line 188
    if-lez v0, :cond_5

    .line 189
    .line 190
    :cond_4
    :goto_1
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 191
    .line 192
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 193
    .line 194
    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    move v3, v1

    .line 204
    :goto_2
    if-ge v3, v2, :cond_5

    .line 205
    .line 206
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    check-cast v4, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    .line 211
    .line 212
    invoke-interface {v4, p0}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingStarted(Landroid/gesture/GestureOverlayView;)V

    .line 213
    .line 214
    .line 215
    add-int/lit8 v3, v3, 0x1

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_5
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    :goto_3
    if-ge v1, v2, :cond_6

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    check-cast v3, Landroid/gesture/GestureOverlayView$OnGestureListener;

    .line 231
    .line 232
    invoke-interface {v3, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 233
    .line 234
    .line 235
    add-int/lit8 v1, v1, 0x1

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_6
    move-object p1, v6

    .line 239
    :goto_4
    return-object p1
.end method

.method private touchUp(Landroid/view/MotionEvent;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 5
    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    new-instance v2, Landroid/gesture/GestureStroke;

    .line 9
    .line 10
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2, v3}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 16
    .line 17
    .line 18
    if-nez p2, :cond_3

    .line 19
    .line 20
    iget-object p2, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    move v2, v0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/gesture/GestureOverlayView$OnGestureListener;

    .line 34
    .line 35
    invoke-interface {v3, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    move v1, p2

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v1, v0

    .line 53
    :goto_1
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move p2, v0

    .line 61
    :goto_2
    invoke-direct {p0, v1, p2, v0}, Landroid/gesture/GestureOverlayView;->clear(ZZZ)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 70
    .line 71
    .line 72
    :goto_3
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 75
    .line 76
    .line 77
    iget-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 78
    .line 79
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 80
    .line 81
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 82
    .line 83
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    :goto_4
    if-ge v0, p2, :cond_5

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    .line 96
    .line 97
    invoke-interface {v1, p0}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingEnded(Landroid/gesture/GestureOverlayView;)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    return-void
.end method


# virtual methods
.method public addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public addOnGesturingListener(Landroid/gesture/GestureOverlayView$OnGesturingListener;)V
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelClearAnimation()V
    .locals 1

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 10
    .line 11
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 23
    .line 24
    return-void
.end method

.method public cancelGesture()V
    .locals 12

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 2
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    new-instance v2, Landroid/gesture/GestureStroke;

    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v6

    .line 4
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 5
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 7
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v5, p0, v1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 9
    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 10
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 11
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 12
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 13
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    invoke-interface {v3, p0}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingEnded(Landroid/gesture/GestureOverlayView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public clear(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/gesture/GestureOverlayView;->clear(ZZZ)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/gesture/Gesture;->getStrokesCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :cond_0
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    move v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->processEvent(Landroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 43
    .line 44
    .line 45
    return v1

    .line 46
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 13
    .line 14
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public getCurrentStroke()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFadeOffset()J
    .locals 2

    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    return-wide v0
.end method

.method public getGesture()Landroid/gesture/Gesture;
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    return-object v0
.end method

.method public getGestureColor()I
    .locals 1

    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    return v0
.end method

.method public getGesturePaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getGesturePath()Landroid/graphics/Path;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getGesturePath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    return-object p1
.end method

.method public getGestureStrokeAngleThreshold()F
    .locals 1

    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    return v0
.end method

.method public getGestureStrokeLengthThreshold()F
    .locals 1

    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    return v0
.end method

.method public getGestureStrokeSquarenessTreshold()F
    .locals 1

    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    return v0
.end method

.method public getGestureStrokeType()I
    .locals 1

    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    return v0
.end method

.method public getGestureStrokeWidth()F
    .locals 1

    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    return v0
.end method

.method public getUncertainGestureColor()I
    .locals 1

    iget v0, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    return v0
.end method

.method public isEventsInterceptionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    return v0
.end method

.method public isFadeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    return v0
.end method

.method public isGestureVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    return v0
.end method

.method public isGesturing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->cancelClearAnimation()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public removeAllOnGestureListeners()V
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeAllOnGesturePerformedListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 8
    .line 9
    return-void
.end method

.method public removeAllOnGesturingListeners()V
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-gtz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public removeOnGesturingListener(Landroid/gesture/GestureOverlayView$OnGesturingListener;)V
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEventsInterceptionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    return-void
.end method

.method public setFadeOffset(J)V
    .locals 0

    iput-wide p1, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    return-void
.end method

.method public setGesture(Landroid/gesture/Gesture;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 10
    .line 11
    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/gesture/Gesture;->toPath()Landroid/graphics/Path;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 35
    .line 36
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 37
    .line 38
    neg-float v3, v3

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    int-to-float v4, v4

    .line 44
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    sub-float/2addr v4, v5

    .line 49
    const/high16 v5, 0x40000000    # 2.0f

    .line 50
    .line 51
    div-float/2addr v4, v5

    .line 52
    add-float/2addr v4, v3

    .line 53
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 54
    .line 55
    neg-float v3, v3

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    int-to-float v6, v6

    .line 61
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    sub-float/2addr v6, v0

    .line 66
    div-float/2addr v6, v5

    .line 67
    add-float/2addr v6, v3

    .line 68
    invoke-virtual {v2, p1, v4, v6}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 69
    .line 70
    .line 71
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public setGestureColor(I)V
    .locals 0

    iput p1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    return-void
.end method

.method public setGestureStrokeAngleThreshold(F)V
    .locals 0

    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    return-void
.end method

.method public setGestureStrokeLengthThreshold(F)V
    .locals 0

    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    return-void
.end method

.method public setGestureStrokeSquarenessTreshold(F)V
    .locals 0

    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    return-void
.end method

.method public setGestureStrokeType(I)V
    .locals 0

    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    return-void
.end method

.method public setGestureStrokeWidth(F)V
    .locals 2

    .line 1
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 2
    .line 3
    float-to-int v0, p1

    .line 4
    const/4 v1, 0x1

    .line 5
    sub-int/2addr v0, v1

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 11
    .line 12
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setGestureVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    return-void
.end method

.method public setUncertainGestureColor(I)V
    .locals 0

    iput p1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    return-void
.end method
