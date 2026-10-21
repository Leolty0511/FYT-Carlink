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

    const v0, 0x1010400

    .line 30
    invoke-direct {p0, p1, p2, v0}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    const-wide/16 v0, 0x96

    .line 33
    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    const-wide/16 v0, 0x1a4

    .line 34
    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    const/16 v1, -0x100

    .line 36
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    const v1, 0x48ffff00    # 524280.0f

    .line 37
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    const/high16 v1, 0x41400000    # 12.0f

    .line 38
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    const/16 v1, 0xa

    .line 39
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    const/4 v2, 0x0

    .line 40
    iput v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    const/high16 v3, 0x42480000    # 50.0f

    .line 41
    iput v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    const v3, 0x3e8ccccd    # 0.275f

    .line 42
    iput v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    const/high16 v3, 0x42200000    # 40.0f

    .line 43
    iput v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 44
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 45
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 46
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 47
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    .line 48
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 49
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 50
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 55
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 56
    iput v3, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 57
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 58
    new-instance v3, Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$1;)V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    .line 59
    sget-object v3, Li/a;->GestureOverlayView:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    float-to-int p2, p2

    sub-int/2addr p2, v0

    .line 61
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 62
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 63
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 64
    iget-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    long-to-int p2, p2

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    .line 65
    iget-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    long-to-int p2, p2

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    .line 66
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    const/4 p3, 0x6

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 67
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    const/4 p3, 0x7

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 68
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    const/16 p3, 0x9

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 69
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    const/16 p3, 0x8

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 70
    iget-boolean p2, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 71
    iget-boolean p2, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    const/16 p3, 0xb

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 72
    iget p2, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->init()V

    return-void
.end method

.method public static synthetic access$100(Landroid/gesture/GestureOverlayView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    return p0
.end method

.method public static synthetic access$1000(Landroid/gesture/GestureOverlayView;)F
    .locals 0

    .line 1
    iget p0, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    return p0
.end method

.method public static synthetic access$1002(Landroid/gesture/GestureOverlayView;F)F
    .locals 0

    .line 1
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    return p1
.end method

.method public static synthetic access$102(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    return p1
.end method

.method public static synthetic access$1100(Landroid/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-object p0
.end method

.method public static synthetic access$1202(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    return p1
.end method

.method public static synthetic access$200(Landroid/gesture/GestureOverlayView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadingStart:J

    return-wide v0
.end method

.method public static synthetic access$300(Landroid/gesture/GestureOverlayView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    return-wide v0
.end method

.method public static synthetic access$400(Landroid/gesture/GestureOverlayView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->fireOnGesturePerformed()V

    return-void
.end method

.method public static synthetic access$502(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    return p1
.end method

.method public static synthetic access$602(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    return p1
.end method

.method public static synthetic access$700(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public static synthetic access$802(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    return-object p1
.end method

.method public static synthetic access$900(Landroid/gesture/GestureOverlayView;I)V
    .locals 0

    .line 1
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
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-interface {v3, p0, v4}, Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;->onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 2
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 7
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 8
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 10
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    const/16 v0, 0xff

    .line 11
    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    return-void
.end method

.method private processEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v0, :cond_4

    .line 3
    invoke-direct {p0, p1, v1}, Landroid/gesture/GestureOverlayView;->touchUp(Landroid/view/MotionEvent;Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    .line 5
    :cond_1
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->touchMove(Landroid/view/MotionEvent;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return v1

    .line 8
    :cond_3
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v0, :cond_4

    .line 9
    invoke-direct {p0, p1, v2}, Landroid/gesture/GestureOverlayView;->touchUp(Landroid/view/MotionEvent;Z)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_4
    :goto_0
    return v2

    .line 11
    :cond_5
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->touchDown(Landroid/view/MotionEvent;)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method private setCurrentColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    .line 2
    iget-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x437f0000    # 255.0f

    .line 3
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    .line 4
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setPaintAlpha(I)V
    .locals 2

    shr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    .line 1
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    ushr-int/lit8 v1, v0, 0x18

    mul-int/2addr v1, p1

    shr-int/lit8 p1, v1, 0x8

    .line 2
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    shl-int/lit8 v0, v0, 0x8

    ushr-int/lit8 v0, v0, 0x8

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private touchDown(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 4
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mX:F

    .line 5
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mY:F

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 8
    iget v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/gesture/Gesture;->getStrokesCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 10
    :cond_1
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    invoke-direct {p0, v3}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    invoke-direct {p0, v3}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 12
    :cond_3
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    const/4 v3, 0x0

    .line 13
    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 14
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 15
    :cond_4
    :goto_1
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    if-eqz v3, :cond_5

    .line 16
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->cancelClearAnimation()V

    goto :goto_2

    .line 17
    :cond_5
    iget-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    if-eqz v3, :cond_6

    const/16 v3, 0xff

    .line 18
    invoke-direct {p0, v3}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 19
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 20
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 21
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 22
    :cond_6
    :goto_2
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-nez v3, :cond_7

    .line 23
    new-instance v3, Landroid/gesture/Gesture;

    invoke-direct {v3}, Landroid/gesture/Gesture;-><init>()V

    iput-object v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 24
    :cond_7
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v4, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 26
    iget v3, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 27
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    float-to-int v5, v0

    sub-int v6, v5, v3

    float-to-int v7, v1

    sub-int v8, v7, v3

    add-int/2addr v5, v3

    add-int/2addr v7, v3

    invoke-virtual {v4, v6, v8, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 28
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    .line 29
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    .line 30
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_8

    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v3, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private touchMove(Landroid/view/MotionEvent;)Landroid/graphics/Rect;
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 3
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mX:F

    .line 4
    iget v3, p0, Landroid/gesture/GestureOverlayView;->mY:F

    sub-float v4, v0, v2

    .line 5
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v5, v1, v3

    .line 6
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    cmpl-float v7, v4, v6

    if-gez v7, :cond_1

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto/16 :goto_4

    .line 7
    :cond_1
    :goto_0
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 8
    iget v7, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 9
    iget v8, p0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    float-to-int v9, v8

    sub-int/2addr v9, v7

    iget v10, p0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    float-to-int v11, v10

    sub-int/2addr v11, v7

    float-to-int v8, v8

    add-int/2addr v8, v7

    float-to-int v10, v10

    add-int/2addr v10, v7

    invoke-virtual {v6, v9, v11, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    add-float v8, v0, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 10
    iput v8, p0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    add-float v10, v1, v3

    div-float/2addr v10, v9

    .line 11
    iput v10, p0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    .line 12
    iget-object v9, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v9, v2, v3, v8, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    float-to-int v2, v2

    sub-int v9, v2, v7

    float-to-int v3, v3

    sub-int v11, v3, v7

    add-int/2addr v2, v7

    add-int/2addr v3, v7

    .line 13
    invoke-virtual {v6, v9, v11, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    float-to-int v2, v8

    sub-int v3, v2, v7

    float-to-int v8, v10

    sub-int v9, v8, v7

    add-int/2addr v2, v7

    add-int/2addr v8, v7

    .line 14
    invoke-virtual {v6, v3, v9, v2, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 15
    iput v0, p0, Landroid/gesture/GestureOverlayView;->mX:F

    .line 16
    iput v1, p0, Landroid/gesture/GestureOverlayView;->mY:F

    .line 17
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v3, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-direct {v3, v0, v1, v7, v8}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    if-nez v0, :cond_5

    .line 19
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    .line 20
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 21
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;

    move-result-object v0

    .line 22
    iget v2, v0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    const/high16 v3, 0x43340000    # 180.0f

    sub-float v2, v3, v2

    .line 23
    :cond_2
    iget v0, v0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    iget v3, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    cmpl-float v0, v0, v3

    const/4 v3, 0x1

    if-gtz v0, :cond_4

    iget v0, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_5

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_5

    .line 24
    :cond_4
    :goto_1
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 25
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 26
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_5

    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    invoke-interface {v4, p0}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingStarted(Landroid/gesture/GestureOverlayView;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 29
    :cond_5
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_6

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v3, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move-object p1, v6

    :goto_4
    return-object p1
.end method

.method private touchUp(Landroid/view/MotionEvent;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 2
    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v1, :cond_4

    .line 3
    new-instance v2, Landroid/gesture/GestureStroke;

    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    if-nez p2, :cond_3

    .line 4
    iget-object p2, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v3, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    if-eqz v1, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    invoke-direct {p0, v1, p2, v0}, Landroid/gesture/GestureOverlayView;->clear(ZZZ)V

    goto :goto_3

    .line 8
    :cond_3
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->cancelGesture(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 9
    :cond_4
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 10
    :goto_3
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 11
    iget-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 12
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 13
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_4
    if-ge v0, p2, :cond_5

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    invoke-interface {v1, p0}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingEnded(Landroid/gesture/GestureOverlayView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method


# virtual methods
.method public addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    :cond_0
    return-void
.end method

.method public addOnGesturingListener(Landroid/gesture/GestureOverlayView$OnGesturingListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelClearAnimation()V
    .locals 1

    const/16 v0, 0xff

    .line 1
    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 3
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 4
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

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

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/gesture/Gesture;->getStrokesCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->processEvent(Landroid/view/MotionEvent;)Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    .line 6
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

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

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFadeOffset()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    return-wide v0
.end method

.method public getGesture()Landroid/gesture/Gesture;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    return-object v0
.end method

.method public getGestureColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    return v0
.end method

.method public getGesturePaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
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

    .line 1
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    return v0
.end method

.method public getGestureStrokeLengthThreshold()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    return v0
.end method

.method public getGestureStrokeSquarenessTreshold()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    return v0
.end method

.method public getGestureStrokeType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    return v0
.end method

.method public getGestureStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    return v0
.end method

.method public getUncertainGestureColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    return v0
.end method

.method public isEventsInterceptionEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    return v0
.end method

.method public isFadeEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    return v0
.end method

.method public isGestureVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    return v0
.end method

.method public isGesturing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->cancelClearAnimation()V

    return-void
.end method

.method public removeAllOnGestureListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeAllOnGesturePerformedListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    return-void
.end method

.method public removeAllOnGesturingListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    :cond_0
    return-void
.end method

.method public removeOnGesturingListener(Landroid/gesture/GestureOverlayView$OnGesturingListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEventsInterceptionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    return-void
.end method

.method public setFadeOffset(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    return-void
.end method

.method public setGesture(Landroid/gesture/Gesture;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 3
    :cond_0
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 4
    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 5
    invoke-virtual {p1}, Landroid/gesture/Gesture;->toPath()Landroid/graphics/Path;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 8
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 9
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float/2addr v6, v0

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 10
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGestureColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    return-void
.end method

.method public setGestureStrokeAngleThreshold(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    return-void
.end method

.method public setGestureStrokeLengthThreshold(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    return-void
.end method

.method public setGestureStrokeSquarenessTreshold(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    return-void
.end method

.method public setGestureStrokeType(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    return-void
.end method

.method public setGestureStrokeWidth(F)V
    .locals 2

    .line 1
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    float-to-int v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 3
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setGestureVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    return-void
.end method

.method public setUncertainGestureColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    return-void
.end method
