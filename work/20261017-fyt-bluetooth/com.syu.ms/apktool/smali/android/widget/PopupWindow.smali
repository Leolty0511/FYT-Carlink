.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupViewContainer;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

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

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    .line 1
    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 37
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

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 7
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 8
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 9
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    const/4 v2, -0x1

    .line 10
    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 11
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 12
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 13
    iput-object v4, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    new-array v3, v3, [I

    .line 14
    iput-object v3, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 15
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/16 v3, 0x3e8

    .line 16
    iput v3, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 17
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 18
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 19
    new-instance v3, Landroid/widget/PopupWindow$1;

    invoke-direct {v3, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 20
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    .line 21
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 22
    sget-object v3, Li/a;->PopupWindow:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const p3, 0x10301f8

    if-ne p2, p3, :cond_0

    move p2, v2

    .line 25
    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 26
    iget-object p2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz p3, :cond_4

    .line 27
    check-cast p2, Landroid/graphics/drawable/StateListDrawable;

    .line 28
    sget-object p3, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result p3

    .line 29
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result p4

    :goto_0
    if-ge v0, p4, :cond_2

    if-eq v0, p3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_1
    if-eq p3, v2, :cond_3

    if-eq v0, v2, :cond_3

    .line 30
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object p2, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 34
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    .line 41
    iput v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 42
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 43
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 44
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    const/4 v2, -0x1

    .line 45
    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 46
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 47
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 48
    iput-object v3, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    new-array v1, v1, [I

    .line 49
    iput-object v1, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/16 v1, 0x3e8

    .line 51
    iput v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 52
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 53
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 54
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 59
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 60
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1000(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/widget/PopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return p0
.end method

.method public static synthetic access$300(Landroid/widget/PopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return p0
.end method

.method public static synthetic access$400(Landroid/widget/PopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return p0
.end method

.method public static synthetic access$500(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Landroid/widget/PopupWindow;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method public static synthetic access$700(Landroid/widget/PopupWindow;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return p0
.end method

.method public static synthetic access$800()[I
    .locals 1

    .line 1
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method public static synthetic access$900(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method private computeAnimationResource()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10301f2

    goto :goto_0

    :cond_0
    const v0, 0x10301f1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method private computeFlags(I)I
    .locals 3

    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr p1, v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    const/high16 v1, 0x20000

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x8

    .line 3
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :goto_0
    or-int/2addr p1, v1

    .line 5
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_3

    or-int/lit8 p1, p1, 0x10

    .line 6
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 7
    :cond_4
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_5

    or-int/lit16 p1, p1, 0x200

    .line 8
    :cond_5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 9
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_7

    or-int/lit16 p1, p1, 0x100

    .line 10
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_8

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 11
    :cond_8
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_9

    or-int/lit8 p1, p1, 0x20

    :cond_9
    return p1
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 8
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 9
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 10
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 11
    iget p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PopupWindow:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2
    iget-object v4, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3
    iget-object v4, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    add-int v6, v6, p3

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v6, 0x1

    .line 4
    aget v4, v4, v6

    add-int/2addr v4, v3

    add-int v4, v4, p4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    move/from16 v7, p5

    invoke-static {v7, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v7, 0x5

    if-ne v4, v7, :cond_0

    .line 6
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v9, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    const/16 v8, 0x33

    .line 7
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 8
    iget-object v8, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 9
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 10
    invoke-virtual {v1, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 11
    iget-object v9, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    aget v9, v9, v6

    add-int/2addr v9, v3

    add-int v9, v9, p4

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 13
    iget v10, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v9, v10

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    if-gt v9, v10, :cond_1

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v9, v10

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    if-lez v9, :cond_6

    .line 14
    :cond_1
    iget-boolean v9, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v9, :cond_2

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 17
    new-instance v11, Landroid/graphics/Rect;

    iget v12, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v12, v9

    add-int v12, v12, p3

    iget v13, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v13, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    add-int v13, v13, p4

    invoke-direct {v11, v9, v10, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 18
    invoke-virtual {v1, v11, v6}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 19
    :cond_2
    iget-object v9, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    invoke-virtual {v1, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 20
    iget-object v9, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    aget v10, v9, v5

    add-int v10, v10, p3

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 21
    aget v9, v9, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int v9, v9, p4

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v4, v7, :cond_3

    .line 22
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v7, v9

    sub-int/2addr v4, v7

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 23
    :cond_3
    iget-object v4, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 24
    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v7, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    aget v7, v7, v6

    sub-int/2addr v4, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v4, v7

    sub-int v4, v4, p4

    iget-object v7, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    aget v7, v7, v6

    sub-int v7, v7, p4

    iget v9, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v9

    if-ge v4, v7, :cond_4

    move v5, v6

    :cond_4
    if-eqz v5, :cond_5

    const/16 v1, 0x53

    .line 25
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v3, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    aget v3, v3, v6

    sub-int/2addr v1, v3

    add-int v1, v1, p4

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 27
    :cond_5
    iget-object v3, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    aget v3, v3, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v3, v1

    add-int v3, v3, p4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 28
    :cond_6
    :goto_0
    iget-boolean v1, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v1, :cond_a

    .line 29
    iget v1, v8, Landroid/graphics/Rect;->right:I

    iget v3, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    .line 30
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int v9, v4, v7

    if-le v9, v1, :cond_7

    sub-int/2addr v9, v1

    sub-int/2addr v4, v9

    .line 31
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 32
    :cond_7
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v4, v3, :cond_8

    .line 33
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 34
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_8
    if-eqz v5, :cond_9

    .line 35
    iget-object v1, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    aget v1, v1, v6

    add-int v1, v1, p4

    iget v3, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    sub-int/2addr v1, v3

    if-gez v1, :cond_a

    .line 36
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 37
    :cond_9
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 38
    :cond_a
    :goto_1
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v3, 0x10000000

    or-int/2addr v1, v3

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return v5
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 4
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 5
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_3

    .line 2
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupViewContainer;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupViewContainer;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 6
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 7
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iput-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_1

    .line 10
    :cond_1
    iput-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 11
    :goto_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 12
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 13
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 5
    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 6
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 7
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 5
    :cond_1
    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private update(Landroid/view/View;ZIIZIII)V
    .locals 14

    move-object v6, p0

    move-object v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v0, p6

    move/from16 v2, p7

    move/from16 v5, p8

    .line 40
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v6, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v7, :cond_0

    goto/16 :goto_7

    .line 41
    :cond_0
    iget-object v7, v6, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p2, :cond_2

    .line 42
    iget v10, v6, Landroid/widget/PopupWindow;->mAnchorXoff:I

    if-ne v10, v3, :cond_1

    iget v10, v6, Landroid/widget/PopupWindow;->mAnchorYoff:I

    if-eq v10, v4, :cond_2

    :cond_1
    move v10, v8

    goto :goto_0

    :cond_2
    move v10, v9

    :goto_0
    if-eqz v7, :cond_4

    .line 43
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_4

    if-eqz v10, :cond_3

    iget-boolean v7, v6, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v10, :cond_5

    .line 44
    iput v3, v6, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 45
    iput v4, v6, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 46
    iput v5, v6, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    goto :goto_2

    .line 47
    :cond_4
    :goto_1
    invoke-direct {p0, p1, v3, v4, v5}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 48
    :cond_5
    :goto_2
    iget-object v7, v6, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    if-eqz p5, :cond_8

    const/4 v10, -0x1

    if-ne v0, v10, :cond_6

    .line 49
    iget v0, v6, Landroid/widget/PopupWindow;->mPopupWidth:I

    goto :goto_3

    .line 50
    :cond_6
    iput v0, v6, Landroid/widget/PopupWindow;->mPopupWidth:I

    :goto_3
    if-ne v2, v10, :cond_7

    .line 51
    iget v2, v6, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto :goto_4

    .line 52
    :cond_7
    iput v2, v6, Landroid/widget/PopupWindow;->mPopupHeight:I

    :cond_8
    :goto_4
    move v10, v0

    move v11, v2

    .line 53
    iget v12, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 54
    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p2, :cond_9

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p8

    .line 55
    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    .line 56
    :cond_9
    iget v0, v6, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v2, v6, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget v3, v6, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v7

    move/from16 p5, v0

    move/from16 p6, v2

    move/from16 p7, v3

    invoke-direct/range {p2 .. p7}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 57
    :goto_5
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v12, v0, :cond_b

    if-eq v13, v1, :cond_a

    goto :goto_6

    :cond_a
    move v8, v9

    :cond_b
    :goto_6
    move-object p1, p0

    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v10

    move/from16 p5, v11

    move/from16 p6, v8

    invoke-virtual/range {p1 .. p6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    :cond_c
    :goto_7
    return-void
.end method

.method private updateAboveAnchor(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_2

    .line 2
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 3
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v1, v2, :cond_0

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 6
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_0
    iput-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 8
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 10
    iget-object v2, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v2, v3, :cond_1

    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 11
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    :cond_1
    iput-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 13
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public getAnimationStyle()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .line 1
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
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 9
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget v2, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    const/4 p3, 0x1

    .line 10
    aget v3, v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    .line 11
    aget p1, v1, p3

    iget p3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 12
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 13
    iget-object p2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 14
    iget-object p3, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 15
    iget-object p2, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, p2

    sub-int/2addr p1, p3

    :cond_1
    return p1
.end method

.method public getSoftInputMode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 2
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isTouchable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method public setAllowScrollingAnchorParent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    xor-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 3
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_2
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 2
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0

    .line 1
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
    .locals 7

    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 6
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v6, p4

    .line 9
    invoke-direct/range {v1 .. v6}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 10
    iget p1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez p1, :cond_1

    iput p1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    :cond_1
    iget p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez p1, :cond_2

    iput p1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    :cond_2
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 13
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 6
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 7
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 8
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    if-nez p2, :cond_1

    const p2, 0x800033

    .line 9
    :cond_1
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 10
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 11
    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 12
    iget p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez p2, :cond_2

    iput p2, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    :cond_2
    iget p2, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez p2, :cond_3

    iput p2, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    .line 1
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

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 4
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    .line 5
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move v1, v4

    .line 6
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v2

    .line 7
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v3, :cond_2

    .line 8
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    if-eqz v4, :cond_3

    .line 9
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 10
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public update(II)V
    .locals 7

    .line 11
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 12
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

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 4

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 14
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 15
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_0
    if-eq p4, v0, :cond_1

    .line 16
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 17
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 19
    :cond_2
    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 20
    iget v2, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    :goto_0
    const/4 v3, 0x1

    if-eq p3, v0, :cond_4

    .line 21
    iget p3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq p3, v2, :cond_4

    .line 22
    iput v2, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move p5, v3

    .line 23
    :cond_4
    iget p3, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez p3, :cond_5

    goto :goto_1

    :cond_5
    iget p3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    :goto_1
    if-eq p4, v0, :cond_6

    .line 24
    iget p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p4, p3, :cond_6

    .line 25
    iput p3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput p3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move p5, v3

    .line 26
    :cond_6
    iget p3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq p3, p1, :cond_7

    .line 27
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    move p5, v3

    .line 28
    :cond_7
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq p1, p2, :cond_8

    .line 29
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    move p5, v3

    .line 30
    :cond_8
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result p1

    .line 31
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq p1, p2, :cond_9

    .line 32
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move p5, v3

    .line 33
    :cond_9
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result p1

    .line 34
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq p1, p2, :cond_a

    .line 35
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    :cond_a
    move v3, p5

    :goto_2
    if-eqz v3, :cond_b

    .line 36
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 37
    iget-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {p1, p2, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public update(Landroid/view/View;II)V
    .locals 9

    .line 38
    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 9

    .line 39
    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    return-void
.end method
