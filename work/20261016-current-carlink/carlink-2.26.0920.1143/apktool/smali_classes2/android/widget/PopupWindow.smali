.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$PopupDecorView;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mAttachedInDecor:Z

.field private mAttachedInDecorSet:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundView:Landroid/view/View;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mExitTransition:Landroid/transition/Transition;

.field private mFocusable:Z

.field private mGravity:I

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsAnchorRootAttached:Z

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mIsTransitioningToDismiss:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private final mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mParentRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTmpAppLocation:[I

.field private final mTmpDrawingLocation:[I

.field private final mTmpScreenLocation:[I

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x10100aa

    .line 6
    .line 7
    .line 8
    aput v2, v0, v1

    .line 9
    .line 10
    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010076

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 5
    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    .line 10
    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 11
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 12
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 13
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    const/4 v3, -0x1

    .line 14
    iput v3, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 15
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 16
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 17
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 18
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    const/4 v4, -0x2

    .line 19
    iput v4, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 20
    iput v4, p0, Landroid/widget/PopupWindow;->mHeight:I

    const/16 v4, 0x3e8

    .line 21
    iput v4, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 22
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 23
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 24
    iput v1, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 25
    new-instance v4, Landroid/widget/PopupWindow$1;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 26
    new-instance v4, Landroid/widget/PopupWindow$2;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 27
    new-instance v4, Landroid/widget/g;

    invoke-direct {v4, p0, v2}, Landroid/widget/g;-><init>(Landroid/widget/PopupWindow;I)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 28
    new-instance v4, Landroid/widget/h;

    invoke-direct {v4, p0, v2}, Landroid/widget/h;-><init>(Landroid/widget/PopupWindow;I)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 29
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    .line 30
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 31
    sget-object v4, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x3

    const/4 p4, 0x0

    .line 33
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 35
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 36
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const p4, 0x10302fa

    if-ne p3, p4, :cond_0

    .line 37
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    .line 38
    :cond_0
    iput p3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    .line 39
    :cond_1
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    :goto_0
    const/4 p3, 0x4

    .line 40
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-direct {p0, p3}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object p3

    const/4 p4, 0x5

    .line 41
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    invoke-direct {p0, p4}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object p4

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    const/4 p4, 0x0

    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {p3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p4

    .line 44
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 46
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 47
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 53
    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    new-array v1, v0, [I

    .line 54
    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    new-array v0, v0, [I

    .line 55
    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    .line 58
    iput v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 59
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 60
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 61
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    const/4 v2, -0x1

    .line 62
    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 63
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 64
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 65
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 66
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    const/4 v1, -0x2

    .line 67
    iput v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 68
    iput v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    const/16 v1, 0x3e8

    .line 69
    iput v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 70
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 71
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 72
    iput v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 73
    new-instance v1, Landroid/widget/PopupWindow$1;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 74
    new-instance v1, Landroid/widget/PopupWindow$2;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 75
    new-instance v1, Landroid/widget/g;

    invoke-direct {v1, p0, v0}, Landroid/widget/g;-><init>(Landroid/widget/PopupWindow;I)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 76
    new-instance v1, Landroid/widget/h;

    invoke-direct {v1, p0, v0}, Landroid/widget/h;-><init>(Landroid/widget/PopupWindow;I)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 81
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 82
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public static synthetic a(Landroid/widget/PopupWindow;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/widget/PopupWindow;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic access$000(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method public static synthetic access$102(Landroid/widget/PopupWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return p1
.end method

.method public static synthetic access$200(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$300(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/widget/PopupWindow;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return p0
.end method

.method public static synthetic access$800()[I
    .locals 1

    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method private alignToAnchor()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    move-object v2, v0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v4, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 33
    .line 34
    iget v5, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 35
    .line 36
    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 37
    .line 38
    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    .line 40
    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    move-object v1, p0

    .line 44
    move-object v3, v0

    .line 45
    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 50
    .line 51
    .line 52
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 53
    .line 54
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 55
    .line 56
    const/4 v5, -0x1

    .line 57
    const/4 v6, -0x1

    .line 58
    const/4 v7, 0x1

    .line 59
    move-object v2, p0

    .line 60
    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public static synthetic b(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method private computeAnimationResource()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const v0, 0x10302ee

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const v0, 0x10302ed

    .line 19
    .line 20
    .line 21
    :goto_0
    return v0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :cond_2
    return v0
.end method

.method private computeFlags(I)I
    .locals 3

    .line 1
    const v0, -0x868219

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const v0, 0x8000

    .line 10
    .line 11
    .line 12
    or-int/2addr p1, v0

    .line 13
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 14
    .line 15
    const/high16 v1, 0x20000

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    or-int/lit8 p1, p1, 0x8

    .line 20
    .line 21
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v0, v2, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    if-ne v0, v2, :cond_2

    .line 31
    .line 32
    :goto_0
    or-int/2addr p1, v1

    .line 33
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    or-int/lit8 p1, p1, 0x10

    .line 38
    .line 39
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    const/high16 v0, 0x40000

    .line 44
    .line 45
    or-int/2addr p1, v0

    .line 46
    :cond_4
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 51
    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    :cond_5
    or-int/lit16 p1, p1, 0x200

    .line 55
    .line 56
    :cond_6
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_7

    .line 61
    .line 62
    const/high16 v0, 0x800000

    .line 63
    .line 64
    or-int/2addr p1, v0

    .line 65
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 66
    .line 67
    if-eqz v0, :cond_8

    .line 68
    .line 69
    or-int/lit16 p1, p1, 0x100

    .line 70
    .line 71
    :cond_8
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 72
    .line 73
    if-eqz v0, :cond_9

    .line 74
    .line 75
    const/high16 v0, 0x10000

    .line 76
    .line 77
    or-int/2addr p1, v0

    .line 78
    :cond_9
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 79
    .line 80
    if-eqz v0, :cond_a

    .line 81
    .line 82
    or-int/lit8 p1, p1, 0x20

    .line 83
    .line 84
    :cond_a
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 85
    .line 86
    if-eqz v0, :cond_b

    .line 87
    .line 88
    const/high16 v0, 0x40000000    # 2.0f

    .line 89
    .line 90
    or-int/2addr p1, v0

    .line 91
    :cond_b
    return p1
.end method

.method private computeGravity()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const v0, 0x800033

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    :cond_1
    const/high16 v1, 0x10000000

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    :cond_2
    return v0
.end method

.method private createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    .line 12
    const/4 v2, -0x2

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v1

    .line 17
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupBackgroundView;

    .line 18
    .line 19
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 25
    .line 26
    invoke-direct {v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method private createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    .line 12
    const/4 v2, -0x2

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v1

    .line 17
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView;

    .line 18
    .line 19
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method private dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 19
    .line 20
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 24
    .line 25
    return-void
.end method

.method private getAppRootView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/high16 v0, 0x10f0000

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    instance-of v0, p1, Landroid/transition/TransitionSet;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    move-object v0, p1

    .line 24
    check-cast v0, Landroid/transition/TransitionSet;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-nez v0, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 12
    .line 13
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 22
    .line 23
    invoke-interface {v1, v0, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method private positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 1

    .line 1
    sub-int/2addr p4, p3

    .line 2
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3
    .line 4
    add-int/2addr p3, p4

    .line 5
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 6
    .line 7
    add-int v0, p3, p2

    .line 8
    .line 9
    if-le v0, p6, :cond_0

    .line 10
    .line 11
    sub-int/2addr v0, p6

    .line 12
    sub-int/2addr p3, v0

    .line 13
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 14
    .line 15
    :cond_0
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 16
    .line 17
    if-ge p3, p5, :cond_2

    .line 18
    .line 19
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 20
    .line 21
    sub-int/2addr p6, p5

    .line 22
    if-eqz p7, :cond_1

    .line 23
    .line 24
    if-le p2, p6, :cond_1

    .line 25
    .line 26
    iput p6, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p2, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 32
    :goto_1
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 33
    .line 34
    sub-int/2addr p3, p4

    .line 35
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 36
    .line 37
    return p2
.end method

.method private positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 1

    .line 1
    sub-int/2addr p4, p3

    .line 2
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3
    .line 4
    add-int/2addr p3, p4

    .line 5
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6
    .line 7
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    .line 9
    add-int v0, p3, p2

    .line 10
    .line 11
    if-le v0, p6, :cond_0

    .line 12
    .line 13
    sub-int/2addr v0, p6

    .line 14
    sub-int/2addr p3, v0

    .line 15
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 16
    .line 17
    :cond_0
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 18
    .line 19
    if-ge p3, p5, :cond_2

    .line 20
    .line 21
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 22
    .line 23
    sub-int/2addr p6, p5

    .line 24
    if-eqz p7, :cond_1

    .line 25
    .line 26
    if-le p2, p6, :cond_1

    .line 27
    .line 28
    iput p6, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p2, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 34
    :goto_1
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 35
    .line 36
    sub-int/2addr p3, p4

    .line 37
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 38
    .line 39
    return p2
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const v1, 0x104051f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 38
    .line 39
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 44
    .line 45
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 52
    .line 53
    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 54
    .line 55
    :goto_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 56
    .line 57
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 62
    .line 63
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 64
    .line 65
    iget v1, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-virtual {p1, v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getRawLayoutDirection()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    const/4 v0, 0x2

    .line 83
    if-ne p1, v0, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const/4 v1, 0x0

    .line 87
    :goto_1
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string v0, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 9

    .line 1
    sub-int v0, p6, p5

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5
    .line 6
    add-int/2addr v2, v0

    .line 7
    sub-int v0, p8, v2

    .line 8
    .line 9
    const/4 v8, 0x1

    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    move v2, p3

    .line 13
    if-gt v2, v0, :cond_1

    .line 14
    .line 15
    return v8

    .line 16
    :cond_0
    move v2, p3

    .line 17
    :cond_1
    move-object v0, p0

    .line 18
    move-object v1, p1

    .line 19
    move v2, p3

    .line 20
    move v3, p5

    .line 21
    move v4, p6

    .line 22
    move/from16 v5, p7

    .line 23
    .line 24
    move/from16 v6, p8

    .line 25
    .line 26
    move/from16 v7, p9

    .line 27
    .line 28
    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    return v8

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method private tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 10

    .line 1
    move-object v1, p1

    .line 2
    move v2, p3

    .line 3
    sub-int v0, p6, p5

    .line 4
    .line 5
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6
    .line 7
    add-int/2addr v3, v0

    .line 8
    sub-int v0, p8, v3

    .line 9
    .line 10
    const/4 v8, 0x1

    .line 11
    if-ltz v3, :cond_0

    .line 12
    .line 13
    if-gt v2, v0, :cond_0

    .line 14
    .line 15
    return v8

    .line 16
    :cond_0
    sub-int/2addr v3, p4

    .line 17
    sub-int v3, v3, p7

    .line 18
    .line 19
    if-gt v2, v3, :cond_2

    .line 20
    .line 21
    move-object v9, p0

    .line 22
    iget-boolean v0, v9, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    add-int v0, p2, p4

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v0, p2

    .line 30
    :goto_0
    sub-int v2, p5, v2

    .line 31
    .line 32
    add-int/2addr v2, v0

    .line 33
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 34
    .line 35
    return v8

    .line 36
    :cond_2
    move-object v9, p0

    .line 37
    move-object v0, p0

    .line 38
    move-object v1, p1

    .line 39
    move v2, p3

    .line 40
    move v3, p5

    .line 41
    move/from16 v4, p6

    .line 42
    .line 43
    move/from16 v5, p7

    .line 44
    .line 45
    move/from16 v6, p8

    .line 46
    .line 47
    move/from16 v7, p9

    .line 48
    .line 49
    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    return v8

    .line 56
    :cond_3
    const/4 v0, 0x0

    .line 57
    return v0
.end method

.method private update(Landroid/view/View;ZIIII)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v1, p1

    move/from16 v0, p3

    move/from16 v2, p4

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_9

    .line 52
    :cond_0
    iget-object v3, v9, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 53
    iget v7, v9, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    if-eqz p2, :cond_2

    .line 54
    iget v4, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    if-ne v4, v0, :cond_1

    iget v4, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    if-eq v4, v2, :cond_2

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 55
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_4

    if-eqz v4, :cond_3

    iget-boolean v3, v9, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_5

    .line 56
    iput v0, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 57
    iput v2, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_2

    .line 58
    :cond_4
    :goto_1
    invoke-virtual {v9, v1, v0, v2, v7}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 59
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 60
    iget v13, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 61
    iget v14, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 62
    iget v15, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    iget v8, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 64
    iget v6, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez p5, :cond_6

    .line 65
    iget v0, v9, Landroid/widget/PopupWindow;->mWidth:I

    move/from16 v16, v0

    goto :goto_3

    :cond_6
    move/from16 v16, p5

    :goto_3
    if-gez p6, :cond_7

    .line 66
    iget v0, v9, Landroid/widget/PopupWindow;->mHeight:I

    move/from16 v17, v0

    goto :goto_4

    :cond_7
    move/from16 v17, p6

    .line 67
    :goto_4
    iget v3, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v4, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget-boolean v5, v9, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v18, v5

    move/from16 v5, v16

    move v10, v6

    move/from16 v6, v17

    move v11, v8

    move/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    .line 68
    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 69
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v13, v0, :cond_9

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v11, v0, :cond_9

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v10, v0, :cond_9

    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v14, v0, :cond_9

    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v15, v0, :cond_8

    goto :goto_5

    :cond_8
    const/16 v19, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/16 v19, 0x1

    :goto_6
    if-gez v16, :cond_a

    move/from16 v0, v16

    goto :goto_7

    .line 70
    :cond_a
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_7
    if-gez v17, :cond_b

    move/from16 v1, v17

    goto :goto_8

    .line 71
    :cond_b
    iget v1, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    :goto_8
    iget v2, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 p1, p0

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v0

    move/from16 p5, v1

    move/from16 p6, v19

    invoke-virtual/range {p1 .. p6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    :cond_c
    :goto_9
    return-void
.end method


# virtual methods
.method public attachToAnchor(Landroid/view/View;III)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 53
    .line 54
    iget-object p1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    iput-object p1, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 59
    .line 60
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 61
    .line 62
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 63
    .line 64
    return-void
.end method

.method public final createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 11
    .line 12
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 13
    .line 14
    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 19
    .line 20
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 21
    .line 22
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 23
    .line 24
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 25
    .line 26
    iget p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 27
    .line 28
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 29
    .line 30
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 35
    .line 36
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, -0x3

    .line 48
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 49
    .line 50
    :goto_0
    iget p1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 51
    .line 52
    if-gez p1, :cond_1

    .line 53
    .line 54
    iput p1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 55
    .line 56
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 60
    .line 61
    iput p1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 62
    .line 63
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 64
    .line 65
    :goto_1
    iget p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 66
    .line 67
    if-gez p1, :cond_2

    .line 68
    .line 69
    iput p1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 70
    .line 71
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    iget p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 75
    .line 76
    iput p1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 77
    .line 78
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 79
    .line 80
    :goto_2
    const p1, 0x18000

    .line 81
    .line 82
    .line 83
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, "PopupWindow:"

    .line 88
    .line 89
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    return-object v0
.end method

.method public detachFromAnchor()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnchor()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/view/View;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v0, v1

    .line 34
    :goto_0
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 52
    .line 53
    return-void
.end method

.method public dismiss()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isTransitioningToDismiss()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    check-cast v2, Landroid/view/ViewGroup;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v2, v4

    .line 31
    :goto_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    iput-boolean v3, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    iput-boolean v3, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 39
    .line 40
    iget-object v3, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 41
    .line 42
    if-eqz v3, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_4

    .line 49
    .line 50
    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 51
    .line 52
    if-nez v5, :cond_2

    .line 53
    .line 54
    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    if-nez v5, :cond_4

    .line 57
    .line 58
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 63
    .line 64
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 65
    .line 66
    or-int/lit8 v6, v6, 0x10

    .line 67
    .line 68
    or-int/lit8 v6, v6, 0x8

    .line 69
    .line 70
    const v7, -0x20001

    .line 71
    .line 72
    .line 73
    and-int/2addr v6, v7

    .line 74
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 75
    .line 76
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 77
    .line 78
    invoke-interface {v6, v0, v5}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 82
    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Landroid/view/View;

    .line 90
    .line 91
    :cond_3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    new-instance v6, Landroid/widget/PopupWindow$3;

    .line 96
    .line 97
    invoke-direct {v6, p0, v0, v2, v1}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_2
    return-void
.end method

.method public final findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 26

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v13

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v14

    .line 15
    iget-boolean v0, v10, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sub-int v0, p4, v13

    .line 20
    .line 21
    move v15, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move/from16 v15, p4

    .line 24
    .line 25
    :goto_0
    iget-object v9, v10, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 26
    .line 27
    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 32
    .line 33
    .line 34
    iget-object v8, v10, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 35
    .line 36
    invoke-virtual {v11, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 37
    .line 38
    .line 39
    iget-object v7, v10, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 40
    .line 41
    const/16 v16, 0x0

    .line 42
    .line 43
    aget v1, v8, v16

    .line 44
    .line 45
    aget v2, v9, v16

    .line 46
    .line 47
    sub-int/2addr v1, v2

    .line 48
    aput v1, v7, v16

    .line 49
    .line 50
    const/4 v6, 0x1

    .line 51
    aget v2, v8, v6

    .line 52
    .line 53
    aget v3, v9, v6

    .line 54
    .line 55
    sub-int/2addr v2, v3

    .line 56
    aput v2, v7, v6

    .line 57
    .line 58
    add-int v1, v1, p3

    .line 59
    .line 60
    iput v1, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 61
    .line 62
    add-int/2addr v2, v13

    .line 63
    add-int/2addr v2, v15

    .line 64
    iput v2, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 65
    .line 66
    new-instance v5, Landroid/graphics/Rect;

    .line 67
    .line 68
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    const/4 v0, -0x1

    .line 75
    move/from16 v1, p5

    .line 76
    .line 77
    if-ne v1, v0, :cond_1

    .line 78
    .line 79
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 80
    .line 81
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 82
    .line 83
    sub-int/2addr v1, v2

    .line 84
    :cond_1
    move v4, v1

    .line 85
    move/from16 v1, p6

    .line 86
    .line 87
    if-ne v1, v0, :cond_2

    .line 88
    .line 89
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 90
    .line 91
    iget v1, v5, Landroid/graphics/Rect;->top:I

    .line 92
    .line 93
    sub-int/2addr v0, v1

    .line 94
    move v3, v0

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move v3, v1

    .line 97
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeGravity()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 102
    .line 103
    iput v4, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    .line 105
    iput v3, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 106
    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    move/from16 v1, p7

    .line 112
    .line 113
    invoke-static {v1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    and-int/lit8 v2, v0, 0x7

    .line 118
    .line 119
    const/4 v1, 0x5

    .line 120
    if-ne v2, v1, :cond_3

    .line 121
    .line 122
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 123
    .line 124
    sub-int v17, v4, v14

    .line 125
    .line 126
    sub-int v0, v0, v17

    .line 127
    .line 128
    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 129
    .line 130
    :cond_3
    aget v17, v7, v6

    .line 131
    .line 132
    aget v18, v8, v6

    .line 133
    .line 134
    iget v0, v5, Landroid/graphics/Rect;->top:I

    .line 135
    .line 136
    move-object/from16 p4, v8

    .line 137
    .line 138
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 139
    .line 140
    const/16 v19, 0x0

    .line 141
    .line 142
    move/from16 v20, v0

    .line 143
    .line 144
    move-object/from16 v0, p0

    .line 145
    .line 146
    move-object/from16 v1, p2

    .line 147
    .line 148
    move/from16 v21, v2

    .line 149
    .line 150
    move v2, v15

    .line 151
    move/from16 v22, v3

    .line 152
    .line 153
    move/from16 v23, v4

    .line 154
    .line 155
    move v4, v13

    .line 156
    move-object/from16 v24, v5

    .line 157
    .line 158
    move/from16 v5, v17

    .line 159
    .line 160
    move/from16 v6, v18

    .line 161
    .line 162
    move-object/from16 v17, v7

    .line 163
    .line 164
    move/from16 v7, v20

    .line 165
    .line 166
    move-object/from16 v10, p4

    .line 167
    .line 168
    move-object/from16 v18, v9

    .line 169
    .line 170
    move/from16 v9, v19

    .line 171
    .line 172
    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 173
    .line 174
    .line 175
    move-result v19

    .line 176
    aget v5, v17, v16

    .line 177
    .line 178
    aget v6, v10, v16

    .line 179
    .line 180
    move-object/from16 v9, v24

    .line 181
    .line 182
    iget v7, v9, Landroid/graphics/Rect;->left:I

    .line 183
    .line 184
    iget v8, v9, Landroid/graphics/Rect;->right:I

    .line 185
    .line 186
    const/16 v20, 0x0

    .line 187
    .line 188
    move/from16 v2, p3

    .line 189
    .line 190
    move/from16 v3, v23

    .line 191
    .line 192
    move v4, v14

    .line 193
    move-object/from16 v25, v9

    .line 194
    .line 195
    move/from16 v9, v20

    .line 196
    .line 197
    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v19, :cond_5

    .line 202
    .line 203
    if-nez v0, :cond_4

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_4
    move-object/from16 v10, p0

    .line 207
    .line 208
    const/4 v13, 0x1

    .line 209
    goto/16 :goto_3

    .line 210
    .line 211
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    new-instance v2, Landroid/graphics/Rect;

    .line 220
    .line 221
    add-int v4, v0, v23

    .line 222
    .line 223
    add-int v4, v4, p3

    .line 224
    .line 225
    add-int v3, v1, v22

    .line 226
    .line 227
    add-int/2addr v3, v13

    .line 228
    add-int/2addr v3, v15

    .line 229
    invoke-direct {v2, v0, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 230
    .line 231
    .line 232
    const/4 v9, 0x1

    .line 233
    if-eqz p8, :cond_6

    .line 234
    .line 235
    invoke-virtual {v11, v2, v9}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_6

    .line 240
    .line 241
    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 242
    .line 243
    .line 244
    aget v0, v10, v16

    .line 245
    .line 246
    aget v1, v18, v16

    .line 247
    .line 248
    sub-int/2addr v0, v1

    .line 249
    aput v0, v17, v16

    .line 250
    .line 251
    aget v1, v10, v9

    .line 252
    .line 253
    aget v2, v18, v9

    .line 254
    .line 255
    sub-int/2addr v1, v2

    .line 256
    aput v1, v17, v9

    .line 257
    .line 258
    add-int v0, v0, p3

    .line 259
    .line 260
    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 261
    .line 262
    add-int/2addr v1, v13

    .line 263
    add-int/2addr v1, v15

    .line 264
    iput v1, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 265
    .line 266
    move/from16 v1, v21

    .line 267
    .line 268
    const/4 v2, 0x5

    .line 269
    if-ne v1, v2, :cond_6

    .line 270
    .line 271
    sub-int v4, v23, v14

    .line 272
    .line 273
    sub-int/2addr v0, v4

    .line 274
    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 275
    .line 276
    :cond_6
    aget v5, v17, v9

    .line 277
    .line 278
    aget v6, v10, v9

    .line 279
    .line 280
    move-object/from16 v11, v25

    .line 281
    .line 282
    iget v7, v11, Landroid/graphics/Rect;->top:I

    .line 283
    .line 284
    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    .line 285
    .line 286
    move-object/from16 v18, v10

    .line 287
    .line 288
    move-object/from16 v10, p0

    .line 289
    .line 290
    iget-boolean v4, v10, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 291
    .line 292
    move-object/from16 v0, p0

    .line 293
    .line 294
    move-object/from16 v1, p2

    .line 295
    .line 296
    move v2, v15

    .line 297
    move/from16 v3, v22

    .line 298
    .line 299
    move v15, v4

    .line 300
    move v4, v13

    .line 301
    move v13, v9

    .line 302
    move v9, v15

    .line 303
    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 304
    .line 305
    .line 306
    aget v5, v17, v16

    .line 307
    .line 308
    aget v6, v18, v16

    .line 309
    .line 310
    iget v7, v11, Landroid/graphics/Rect;->left:I

    .line 311
    .line 312
    iget v8, v11, Landroid/graphics/Rect;->right:I

    .line 313
    .line 314
    iget-boolean v9, v10, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 315
    .line 316
    move/from16 v2, p3

    .line 317
    .line 318
    move/from16 v3, v23

    .line 319
    .line 320
    move v4, v14

    .line 321
    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 322
    .line 323
    .line 324
    :goto_3
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 325
    .line 326
    aget v1, v17, v13

    .line 327
    .line 328
    if-ge v0, v1, :cond_7

    .line 329
    .line 330
    move/from16 v16, v13

    .line 331
    .line 332
    :cond_7
    return v16
.end method

.method public final getAllowScrollingAnchorParent()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return v0
.end method

.method public getAnchor()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result p1

    return p1
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result p1

    return p1
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 4

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_0

    .line 6
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 7
    invoke-virtual {p1, p3}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    .line 8
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 9
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 10
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    move-object v0, p3

    .line 11
    :cond_0
    iget-object p3, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 12
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 13
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 14
    iget-boolean v2, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 15
    aget p1, p3, v3

    goto :goto_0

    .line 16
    :cond_1
    aget v2, p3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v2

    :goto_0
    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    .line 17
    aget p1, p3, v3

    iget p3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 18
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 19
    iget-object p2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    .line 20
    iget-object p3, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 21
    iget-object p2, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, p2

    sub-int/2addr p1, p3

    :cond_2
    return p1
.end method

.method public final getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method public getOverlapAnchor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return v0
.end method

.method public getSoftInputMode()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public final getTransitionEpicenter()Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/View;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getLocationOnScreen()[I

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-direct {v3, v5, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 43
    .line 44
    .line 45
    aget v0, v1, v5

    .line 46
    .line 47
    aget v4, v2, v5

    .line 48
    .line 49
    sub-int/2addr v0, v4

    .line 50
    const/4 v4, 0x1

    .line 51
    aget v1, v1, v4

    .line 52
    .line 53
    aget v2, v2, v4

    .line 54
    .line 55
    sub-int/2addr v1, v2

    .line 56
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 64
    .line 65
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-object v3

    .line 74
    :cond_3
    :goto_1
    return-object v1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public hasContentView()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDecorView()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isAttachedInDecor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public final isLayoutInsetDecor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-gez v0, :cond_1

    .line 6
    .line 7
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v3, :cond_1

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 16
    .line 17
    const/16 v3, 0xb

    .line 18
    .line 19
    if-lt v0, v3, :cond_0

    .line 20
    .line 21
    move v1, v2

    .line 22
    :cond_0
    return v1

    .line 23
    :cond_1
    if-ne v0, v2, :cond_2

    .line 24
    .line 25
    move v1, v2

    .line 26
    :cond_2
    return v1
.end method

.method public isTouchable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method public final isTransitioningToDismiss()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return v0
.end method

.method public setAllowScrollingAnchorParent(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return-void
.end method

.method public setAttachedInDecor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 5
    .line 6
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 8
    .line 9
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    const/4 v3, -0x1

    .line 21
    if-ge v2, v1, :cond_1

    .line 22
    .line 23
    if-eq v2, v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v2, v3

    .line 30
    :goto_1
    if-eq v0, v3, :cond_2

    .line 31
    .line 32
    if-eq v2, v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    iput-object p1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    :cond_3
    :goto_2
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 9
    .line 10
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-string/jumbo v0, "window"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/view/WindowManager;

    .line 40
    .line 41
    iput-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 42
    .line 43
    :cond_2
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 56
    .line 57
    const/16 v0, 0x16

    .line 58
    .line 59
    if-lt p1, v0, :cond_3

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 p1, 0x0

    .line 64
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method public final setDropDown(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return-void
.end method

.method public final setShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return-void
.end method

.method public final setTransitioningToDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 2
    .line 3
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 4
    .line 5
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    const v0, 0x800033

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 10

    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 7
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-boolean v9, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p2

    .line 11
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 13
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 8
    iput p2, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 11
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 12
    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    return-void
.end method

.method public update()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    .line 4
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v2

    .line 7
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v4, :cond_2

    .line 8
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v1, v3

    .line 9
    :cond_2
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v2

    .line 10
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v2, v4, :cond_3

    .line 11
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-eqz v3, :cond_5

    .line 12
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public update(II)V
    .locals 7

    .line 15
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 16
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 17
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 4

    if-ltz p3, :cond_0

    .line 18
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 19
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_0
    if-ltz p4, :cond_1

    .line 20
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 21
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 23
    :cond_2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 24
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p3, v2, :cond_4

    .line 25
    iget p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq p3, v1, :cond_4

    .line 26
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move p5, v3

    .line 27
    :cond_4
    iget p3, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez p3, :cond_5

    goto :goto_1

    :cond_5
    iget p3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    :goto_1
    if-eq p4, v2, :cond_6

    .line 28
    iget p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p4, p3, :cond_6

    .line 29
    iput p3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move p5, v3

    .line 30
    :cond_6
    iget p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq p3, p1, :cond_7

    .line 31
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move p5, v3

    .line 32
    :cond_7
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq p1, p2, :cond_8

    .line 33
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move p5, v3

    .line 34
    :cond_8
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result p1

    .line 35
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq p1, p2, :cond_9

    .line 36
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move p5, v3

    .line 37
    :cond_9
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result p1

    .line 38
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq p1, p2, :cond_a

    .line 39
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move p5, v3

    .line 40
    :cond_a
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result p1

    .line 41
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq p1, p2, :cond_b

    .line 42
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move p5, v3

    .line 43
    :cond_b
    iget-object p1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 44
    iget-object p1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    goto :goto_2

    :cond_c
    const/4 p1, 0x0

    .line 46
    :goto_2
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    if-eq v2, p2, :cond_d

    .line 47
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    goto :goto_3

    :cond_d
    move v3, p5

    :goto_3
    if-eqz v3, :cond_e

    .line 48
    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_e
    :goto_4
    return-void
.end method

.method public update(Landroid/view/View;II)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    .line 49
    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 7

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 50
    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    return-void
.end method

.method public update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 14
    iget-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {p1, v0, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateAboveAnchor(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method
