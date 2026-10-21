.class public Landroid/inputmethodservice/KeyboardView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/KeyboardView$SwipeTracker;,
        Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static final DEBOUNCE_TIME:I = 0x46

.field private static final DEBUG:Z = false

.field private static final DELAY_AFTER_PREVIEW:I = 0x46

.field private static final DELAY_BEFORE_PREVIEW:I = 0x0

.field private static final KEY_DELETE:[I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field private static MAX_NEARBY_KEYS:I = 0x0

.field private static final MSG_LONGPRESS:I = 0x4

.field private static final MSG_REMOVE_PREVIEW:I = 0x2

.field private static final MSG_REPEAT:I = 0x3

.field private static final MSG_SHOW_PREVIEW:I = 0x1

.field private static final MULTITAP_INTERVAL:I = 0x320

.field private static final NOT_A_KEY:I = -0x1

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190


# instance fields
.field private mAbortKey:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private final mCoordinates:[I

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDisambiguateSwipe:Z

.field private mDistances:[I

.field private mDownKey:I

.field private mDownTime:J

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field public mHandler:Landroid/os/Handler;

.field private mHeadsetRequiredToHearPasswordsAnnounced:Z

.field private mInMultiTap:Z

.field private mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyIndices:[I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMiniKeyboardOnScreen:Z

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPossiblePoly:Z

.field private mPreviewCentered:Z

.field private mPreviewHeight:I

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field private mStartX:I

.field private mStartY:I

.field private mSwipeThreshold:I

.field private mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

.field private mTapCount:I

.field private mVerticalCorrection:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, -0x5

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    new-array v0, v0, [I

    const v1, 0x101023c

    aput v1, v0, v3

    .line 2
    sput-object v0, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 3
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    const/16 v0, 0xc

    .line 4
    sput v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101044f

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 4
    iput-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    const/4 v3, 0x1

    .line 6
    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 7
    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mShowTouchPoints:Z

    .line 8
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 9
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    const/16 v4, 0xc

    new-array v4, v4, [I

    .line 10
    iput-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    .line 11
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 13
    new-instance v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>(Landroid/inputmethodservice/KeyboardView$1;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    .line 14
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 15
    sget v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 18
    new-instance v0, Landroid/inputmethodservice/KeyboardView$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/KeyboardView$1;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 19
    sget-object v0, Landroid/R$styleable;->KeyboardView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "layout_inflater"

    .line 20
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 21
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v5, v0, :cond_0

    .line 22
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 23
    :pswitch_0
    invoke-virtual {p2, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    goto :goto_1

    .line 24
    :pswitch_1
    invoke-virtual {p2, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    goto :goto_1

    :pswitch_2
    const/16 v8, 0x50

    .line 25
    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    goto :goto_1

    .line 26
    :pswitch_3
    invoke-virtual {p2, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    goto :goto_1

    .line 27
    :pswitch_4
    invoke-virtual {p2, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    goto :goto_1

    :pswitch_5
    const/high16 v8, -0x1000000

    .line 28
    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    goto :goto_1

    :pswitch_6
    const/16 v8, 0xe

    .line 29
    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    goto :goto_1

    :pswitch_7
    const/16 v8, 0x12

    .line 30
    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    goto :goto_1

    .line 31
    :pswitch_8
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_9
    const/4 v8, 0x0

    .line 32
    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    goto :goto_1

    .line 33
    :pswitch_a
    invoke-virtual {p2, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 34
    :cond_0
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v0, Li/a;->Theme:[I

    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/high16 v0, 0x3f000000    # 0.5f

    .line 35
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    .line 36
    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_1

    .line 37
    invoke-virtual {p3, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 38
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    .line 39
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 40
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 41
    :cond_1
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 42
    :goto_2
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 43
    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 44
    invoke-virtual {p2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iput-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 46
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float p3, v2

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 50
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 51
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 52
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 53
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    const/high16 p2, 0x43fa0000    # 500.0f

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x111002e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    .line 56
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string p2, "audio"

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    .line 58
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 59
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic access$100(Landroid/inputmethodservice/KeyboardView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    return-void
.end method

.method public static synthetic access$1000(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    return p0
.end method

.method public static synthetic access$1100(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    return p0
.end method

.method public static synthetic access$1200(Landroid/inputmethodservice/KeyboardView;IIIJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method public static synthetic access$1300(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object p0
.end method

.method public static synthetic access$1400(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method public static synthetic access$200(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    return p0
.end method

.method public static synthetic access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    return p0
.end method

.method public static synthetic access$800(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    return p0
.end method

.method public static synthetic access$900(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    return p0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .locals 8

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, p3

    .line 2
    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v1

    const-wide/16 v3, 0x320

    const/4 v5, 0x1

    if-le v2, v5, :cond_2

    .line 3
    iput-boolean v5, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 4
    iget-wide v6, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v6, v3

    cmp-long p1, p1, v6

    if-gez p1, :cond_1

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-ne p3, p1, :cond_1

    .line 5
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    add-int/2addr p1, v5

    array-length p2, v1

    rem-int/2addr p1, p2

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    return-void

    .line 6
    :cond_1
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    return-void

    .line 7
    :cond_2
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v0, v3

    cmp-long p1, p1, v0

    if-gtz p1, :cond_3

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-eq p3, p1, :cond_4

    .line 8
    :cond_3
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    :cond_4
    return-void
.end method

.method private computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    aget-object v3, p1, v1

    .line 4
    iget v4, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v5, v3, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v3, v3, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ltz v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    int-to-float p1, v2

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 5
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    mul-int/2addr p1, p1

    .line 6
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    :cond_4
    :goto_1
    return-void
.end method

.method private detectAndSendKey(IIIJ)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v1

    if-ge p1, v2, :cond_3

    .line 2
    aget-object v1, v1, p1

    .line 3
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 4
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v2}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 7
    sget v4, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v4, v4, [I

    .line 8
    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 9
    invoke-direct {p0, p2, p3, v4}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    .line 10
    iget-boolean p2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz p2, :cond_2

    .line 11
    iget p2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-eq p2, v0, :cond_1

    .line 12
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 p3, -0x5

    sget-object v0, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    invoke-interface {p2, p3, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto :goto_0

    .line 13
    :cond_1
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 14
    :goto_0
    iget-object p2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget p3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    aget v2, p2, p3

    .line 15
    :cond_2
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v2, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 16
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v2}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 17
    :goto_1
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 18
    iput-wide p4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    :cond_3
    return-void
.end method

.method private dismissPopupKeyboard()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 4
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    :cond_0
    return-void
.end method

.method private getKeyIndices(II[I)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 2
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    add-int/lit8 v5, v5, 0x1

    .line 3
    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    const v7, 0x7fffffff

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 4
    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v6, v1, v2}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v6

    .line 5
    array-length v7, v6

    const/4 v9, 0x0

    move v10, v9

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_0
    if-ge v10, v7, :cond_7

    .line 6
    aget v13, v6, v10

    aget-object v13, v4, v13

    .line 7
    invoke-virtual {v13, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 8
    aget v11, v6, v10

    .line 9
    :cond_0
    iget-boolean v15, v0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    if-eqz v15, :cond_1

    invoke-virtual {v13, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v15

    iget v8, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    if-lt v15, v8, :cond_2

    goto :goto_1

    :cond_1
    move v15, v9

    :goto_1
    if-eqz v14, :cond_6

    :cond_2
    iget-object v8, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v14, v8, v9

    const/16 v9, 0x20

    if-le v14, v9, :cond_6

    .line 10
    array-length v8, v8

    if-ge v15, v5, :cond_3

    .line 11
    aget v12, v6, v10

    move v5, v15

    :cond_3
    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    .line 12
    :goto_2
    iget-object v14, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    array-length v1, v14

    if-ge v9, v1, :cond_6

    .line 13
    aget v1, v14, v9

    if-le v1, v15, :cond_5

    add-int v1, v9, v8

    .line 14
    array-length v2, v14

    sub-int/2addr v2, v9

    sub-int/2addr v2, v8

    invoke-static {v14, v9, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    array-length v2, v3

    sub-int/2addr v2, v9

    sub-int/2addr v2, v8

    invoke-static {v3, v9, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_6

    add-int v2, v9, v1

    .line 16
    iget-object v14, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v14, v14, v1

    aput v14, v3, v2

    .line 17
    iget-object v14, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    aput v15, v14, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_2

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v9, 0x0

    goto :goto_0

    :cond_7
    const/4 v1, -0x1

    if-ne v11, v1, :cond_8

    move v11, v12

    :cond_8
    return v11
.end method

.method private getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    aget p1, p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object p1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private initGestureDetector()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/KeyboardView$2;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/KeyboardView$2;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method private onBufferDraw()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v4, :cond_3

    :cond_0
    if-eqz v1, :cond_1

    .line 2
    iget-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 3
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 5
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 6
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 7
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 8
    iput-boolean v3, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 9
    :cond_3
    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 10
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 11
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_4

    return-void

    .line 12
    :cond_4
    iget-object v10, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 13
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 14
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 15
    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 16
    iget v7, v0, Landroid/view/View;->mPaddingLeft:I

    .line 17
    iget v8, v0, Landroid/view/View;->mPaddingTop:I

    .line 18
    iget-object v9, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 19
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 20
    iget v12, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v11, :cond_5

    .line 21
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 22
    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int v13, v12, v7

    sub-int/2addr v13, v2

    iget v14, v4, Landroid/graphics/Rect;->left:I

    if-gt v13, v14, :cond_5

    iget v13, v11, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int v14, v13, v8

    sub-int/2addr v14, v2

    iget v15, v4, Landroid/graphics/Rect;->top:I

    if-gt v14, v15, :cond_5

    iget v14, v11, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v12, v14

    add-int/2addr v12, v7

    add-int/2addr v12, v2

    iget v14, v4, Landroid/graphics/Rect;->right:I

    if-lt v12, v14, :cond_5

    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v13, v12

    add-int/2addr v13, v8

    add-int/2addr v13, v2

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v13, v4, :cond_5

    move v4, v2

    goto :goto_0

    :cond_5
    move v4, v3

    .line 23
    :goto_0
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v3, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 24
    array-length v12, v9

    move v13, v3

    :goto_1
    if-ge v13, v12, :cond_d

    .line 25
    aget-object v15, v9, v13

    if-eqz v4, :cond_6

    if-eq v11, v15, :cond_6

    move-object/from16 v17, v1

    move/from16 v16, v4

    move-object/from16 v18, v6

    goto/16 :goto_6

    .line 26
    :cond_6
    invoke-virtual {v15}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v14

    .line 27
    invoke-virtual {v1, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 28
    iget-object v14, v15, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v14, :cond_7

    const/4 v14, 0x0

    goto :goto_2

    :cond_7
    invoke-direct {v0, v14}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 29
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 30
    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v16, v4

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-ne v3, v4, :cond_8

    iget v4, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v4, v2, :cond_9

    .line 31
    :cond_8
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 32
    :cond_9
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int/2addr v2, v7

    int-to-float v2, v2

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 33
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x2

    if-eqz v14, :cond_b

    .line 34
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_a

    iget-object v3, v15, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v3, v3

    if-ge v3, v2, :cond_a

    .line 35
    iget v3, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    int-to-float v3, v3

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3

    .line 37
    :cond_a
    iget v3, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v3, v3

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 39
    :goto_3
    iget v3, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    iget v4, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v10, v3, v2, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 40
    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v4, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v2, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    const/4 v2, 0x2

    div-int/2addr v3, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    const/4 v2, 0x2

    div-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v17

    sub-float v4, v4, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v4, v4, v17

    add-float/2addr v2, v4

    iget v4, v6, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {v5, v14, v3, v2, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 41
    invoke-virtual {v10, v2, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_4

    .line 42
    :cond_b
    iget-object v2, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    .line 43
    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v4, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v3, v2

    const/4 v2, 0x2

    div-int/2addr v3, v2

    iget v4, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 44
    iget v4, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v14, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v14

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v14

    iget-object v14, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    sub-int/2addr v4, v14

    div-int/2addr v4, v2

    iget v2, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    int-to-float v2, v3

    int-to-float v14, v4

    .line 45
    invoke-virtual {v5, v2, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    iget-object v2, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    move-object/from16 v17, v1

    iget-object v1, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move-object/from16 v18, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6, v14, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    iget-object v1, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v3

    int-to-float v1, v1

    neg-int v2, v4

    int-to-float v2, v2

    .line 48
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    :cond_c
    :goto_4
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    .line 49
    :goto_5
    iget v1, v15, Landroid/inputmethodservice/Keyboard$Key;->x:I

    neg-int v1, v1

    sub-int/2addr v1, v7

    int-to-float v1, v1

    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->y:I

    neg-int v2, v2

    sub-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x0

    .line 50
    iput-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 51
    iget-boolean v1, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v1, :cond_e

    .line 52
    iget v1, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v8, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v9, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_e
    const/4 v1, 0x0

    .line 54
    iput-boolean v1, v0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 55
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method private onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, v6, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, v6, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v2, v3

    .line 3
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    neg-int v4, v3

    if-lt v2, v4, :cond_0

    add-int/2addr v2, v3

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/4 v7, 0x0

    .line 6
    invoke-direct {v6, v1, v2, v7}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    move-result v7

    move/from16 v8, p2

    .line 7
    iput-boolean v8, v6, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    if-nez v3, :cond_1

    .line 8
    iget-object v8, v6, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->clear()V

    .line 9
    :cond_1
    iget-object v8, v6, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v8, v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 10
    iget-boolean v8, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v8, :cond_2

    if-eqz v3, :cond_2

    if-eq v3, v9, :cond_2

    return v10

    .line 11
    :cond_2
    iget-object v8, v6, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    const/4 v11, 0x4

    const/4 v12, -0x1

    if-eqz v8, :cond_3

    .line 12
    invoke-direct {v6, v12}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 13
    iget-object v0, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    iget-object v0, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    return v10

    .line 15
    :cond_3
    iget-boolean v8, v6, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v8, :cond_4

    if-eq v3, v9, :cond_4

    return v10

    :cond_4
    const-wide/16 v13, 0x0

    if-eqz v3, :cond_f

    if-eq v3, v10, :cond_b

    const/4 v15, 0x2

    if-eq v3, v15, :cond_6

    if-eq v3, v9, :cond_5

    goto/16 :goto_5

    .line 16
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 17
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 18
    iput-boolean v10, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 19
    invoke-direct {v6, v12}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 20
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-virtual {v6, v0}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    goto/16 :goto_5

    :cond_6
    if-eq v7, v12, :cond_9

    .line 21
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v3, v12, :cond_7

    .line 22
    iput v7, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 23
    iget-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    sub-long v13, v4, v13

    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_0

    :cond_7
    if-ne v7, v3, :cond_8

    .line 24
    iget-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v13, v4, v13

    add-long/2addr v8, v13

    iput-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    move v8, v10

    goto :goto_1

    .line 25
    :cond_8
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    if-ne v3, v12, :cond_9

    .line 26
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 27
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v3, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 28
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    iput v3, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 29
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    iput v3, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 30
    iget-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v8, v4

    iget-wide v10, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 31
    iput v7, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 32
    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    :cond_9
    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_a

    .line 33
    iget-object v8, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v8, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-eq v7, v12, :cond_a

    .line 34
    iget-object v7, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 35
    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v7, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v7, v7

    invoke-virtual {v3, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 36
    :cond_a
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-direct {v6, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 37
    iput-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    goto/16 :goto_5

    .line 38
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 39
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v7, v0, :cond_c

    .line 40
    iget-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v10, v4, v10

    add-long/2addr v8, v10

    iput-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_2

    .line 41
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 42
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 43
    iget-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v8, v4

    iget-wide v10, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 44
    iput v7, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 45
    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 46
    :goto_2
    iget-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_d

    const-wide/16 v10, 0x46

    cmp-long v0, v8, v10

    if-gez v0, :cond_d

    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    if-eq v0, v12, :cond_d

    .line 47
    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 48
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 49
    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    move v8, v0

    move v9, v1

    goto :goto_3

    :cond_d
    move v8, v1

    move v9, v2

    .line 50
    :goto_3
    invoke-direct {v6, v12}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 51
    iget-object v0, v6, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    invoke-static {v0, v12}, Ljava/util/Arrays;->fill([II)V

    .line 52
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    if-ne v0, v12, :cond_e

    iget-boolean v0, v6, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_e

    iget-boolean v0, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-nez v0, :cond_e

    .line 53
    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    move v2, v8

    move v3, v9

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 54
    :cond_e
    invoke-virtual {v6, v7}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 55
    iput v12, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    move v1, v8

    move v2, v9

    goto :goto_5

    :cond_f
    const/4 v8, 0x0

    .line 56
    iput-boolean v8, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 57
    iput v1, v6, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    .line 58
    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    .line 59
    iput v1, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 60
    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 61
    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 62
    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 63
    iput v12, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 64
    iput v7, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 65
    iput v7, v6, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, v6, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    .line 67
    iput-wide v10, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 68
    invoke-direct {v6, v4, v5, v7}, Landroid/inputmethodservice/KeyboardView;->checkMultiTap(JI)V

    .line 69
    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    if-eq v7, v12, :cond_10

    iget-object v5, v6, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v5, v5, v7

    iget-object v5, v5, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v8, v5, v8

    goto :goto_4

    :cond_10
    const/4 v8, 0x0

    :goto_4
    invoke-interface {v4, v8}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 70
    iget v4, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v4, :cond_11

    iget-object v5, v6, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v5, v5, v4

    iget-boolean v5, v5, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v5, :cond_11

    .line 71
    iput v4, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 72
    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 73
    iget-object v5, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x190

    invoke-virtual {v5, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 74
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    .line 75
    iget-boolean v4, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-eqz v4, :cond_11

    .line 76
    iput v12, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    goto :goto_5

    .line 77
    :cond_11
    iget v4, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-eq v4, v12, :cond_12

    .line 78
    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v4, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 79
    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v4, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 80
    :cond_12
    invoke-direct {v6, v7}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 81
    :goto_5
    iput v1, v6, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    .line 82
    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    const/4 v0, 0x1

    return v0
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz p1, :cond_3

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v1

    if-lt p1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    aget-object p1, v1, p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    const/4 v0, -0x1

    .line 6
    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private removeMessages()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private repeatKey()Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    aget-object v0, v0, v1

    .line 2
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-wide v5, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    const/4 v0, 0x1

    return v0
.end method

.method private resetMultiTap()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 4
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    return-void
.end method

.method private sendAccessibilityEventForUnicodeCharacter(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "speak_password"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v3, v2

    :cond_0
    if-nez v3, :cond_4

    .line 5
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean p2, p0, Landroid/inputmethodservice/KeyboardView;->mHeadsetRequiredToHearPasswordsAnnounced:Z

    if-nez p2, :cond_3

    const/16 p2, 0x100

    if-ne p1, p2, :cond_2

    .line 7
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mHeadsetRequiredToHearPasswordsAnnounced:Z

    .line 8
    :cond_2
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x1040513

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x1040514

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    const/16 p1, 0xa

    if-eq p2, p1, :cond_5

    packed-switch p2, :pswitch_data_0

    int-to-char p1, p2

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 11
    :pswitch_0
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x1040502

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 12
    :pswitch_1
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x1040501

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 13
    :pswitch_2
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x10404fe

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 14
    :pswitch_3
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x1040500

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 15
    :pswitch_4
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x10404ff

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 16
    :pswitch_5
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x10404fd

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 17
    :cond_5
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x1040503

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 18
    :goto_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showKey(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 2
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-ltz p1, :cond_a

    .line 3
    array-length v2, v1

    if-lt p1, v2, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    aget-object p1, v1, p1

    .line 5
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 6
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget-object v7, p1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    move-object v1, v7

    :cond_1
    invoke-virtual {v6, v4, v4, v4, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-ge v1, v2, :cond_3

    .line 11
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 14
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Landroid/view/View;->measure(II)V

    .line 16
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 17
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    .line 18
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 19
    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    :cond_4
    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    if-nez v6, :cond_5

    .line 22
    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 23
    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v6, v4

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    goto :goto_1

    .line 24
    :cond_5
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v2

    rsub-int v6, v6, 0xa0

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 25
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 26
    :goto_1
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 28
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v6, v5

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v7, v8

    aput v7, v6, v5

    .line 29
    aget v7, v6, v3

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v7, v8

    aput v7, v6, v3

    .line 30
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget v7, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-eqz v7, :cond_6

    sget-object v7, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    goto :goto_2

    :cond_6
    sget-object v7, Landroid/view/View;->EMPTY_STATE_SET:[I

    :goto_2
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 31
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v8, v7, v5

    add-int/2addr v6, v8

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 32
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    aget v8, v7, v3

    add-int/2addr v6, v8

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 33
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 34
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v3, v7, v3

    add-int/2addr v6, v3

    if-gez v6, :cond_8

    .line 35
    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    const-wide/high16 v7, 0x4004000000000000L    # 2.5

    if-gt v3, v6, :cond_7

    .line 36
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v9, p1

    mul-double/2addr v9, v7

    double-to-int p1, v9

    add-int/2addr v2, p1

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    goto :goto_3

    .line 37
    :cond_7
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v9, p1

    mul-double/2addr v9, v7

    double-to-int p1, v9

    sub-int/2addr v2, p1

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 38
    :goto_3
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    add-int/2addr p1, v4

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 39
    :cond_8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 40
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, p1, v2, v1, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_4

    .line 41
    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 42
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 43
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, p1, v5, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 44
    :goto_4
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_5
    return-void
.end method

.method private showPreview(I)V
    .locals 8

    .line 1
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 2
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 3
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 4
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v0, p1, :cond_2

    if-eq v0, v5, :cond_1

    .line 5
    array-length v6, v2

    if-le v6, v0, :cond_1

    .line 6
    aget-object v6, v2, v0

    if-ne p1, v5, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v4

    .line 7
    :goto_0
    invoke-virtual {v6, v7}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 9
    iget-object v6, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v6, v6, v4

    const/16 v7, 0x100

    .line 10
    invoke-direct {p0, v7, v6}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    const/high16 v7, 0x10000

    .line 11
    invoke-direct {p0, v7, v6}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 12
    :cond_1
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v6, v5, :cond_2

    array-length v7, v2

    if-le v7, v6, :cond_2

    .line 13
    aget-object v2, v2, v6

    .line 14
    invoke-virtual {v2}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 15
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 16
    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v6, 0x80

    .line 17
    invoke-direct {p0, v6, v2}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    const v6, 0x8000

    .line 18
    invoke-direct {p0, v6, v2}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 19
    :cond_2
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v2, :cond_5

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, v5, :cond_3

    .line 22
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v6, 0x46

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    if-eq p1, v5, :cond_5

    .line 23
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 24
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    goto :goto_1

    .line 25
    :cond_4
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public closing()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 4
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 6
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 7
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getKeyboard()Landroid/inputmethodservice/Keyboard;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method public getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidateKey(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 2
    array-length v1, v0

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    aget-object p1, v0, p1

    .line 4
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 5
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    add-int v3, v1, v2

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    add-int v6, v4, v5

    iget v7, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v2

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v6, v1, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 6
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 7
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    add-int v2, v0, v1

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    add-int v5, v3, v4

    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, v6

    add-int/2addr v0, v1

    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v3, p1

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v5, v0, v3}, Landroid/view/View;->invalidate(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->closing()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 8

    .line 1
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    .line 2
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020026

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 6
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    new-instance v1, Landroid/inputmethodservice/KeyboardView$3;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/KeyboardView$3;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 9
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 10
    new-instance v7, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance v7, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 12
    :goto_0
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v7}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 13
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 15
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 17
    :goto_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 18
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 19
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 20
    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, p1

    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 21
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 22
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v0, v0, v6

    add-int/2addr p1, v0

    .line 23
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 24
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-gez p1, :cond_3

    move v3, v6

    goto :goto_2

    :cond_3
    move v3, p1

    :goto_2
    invoke-virtual {v1, v3, v0}, Landroid/inputmethodservice/KeyboardView;->setPopupOffset(II)V

    .line 25
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    .line 26
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 27
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 28
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 29
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v6, p1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 30
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 31
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    return v2

    :cond_4
    return v6
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez p2, :cond_0

    .line 2
    iget p1, p0, Landroid/view/View;->mPaddingLeft:I

    iget p2, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/view/View;->mPaddingTop:I

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result p2

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr p2, v0

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr p2, v0

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    add-int/lit8 v1, p2, 0xa

    if-ge v0, v1, :cond_1

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result p1

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr p1, v0

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3, p1, p2}, Landroid/inputmethodservice/Keyboard;->resize(II)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 4
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v0, v2, :cond_2

    if-ne v0, v11, :cond_1

    const/4 v6, 0x0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 6
    invoke-direct {p0, v2, v10}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v3

    .line 7
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    if-ne v1, v11, :cond_0

    .line 8
    invoke-direct {p0, p1, v11}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    move v11, p1

    goto :goto_0

    :cond_0
    move v11, v3

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    .line 9
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1, v11}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_2
    if-ne v0, v11, :cond_3

    .line 12
    invoke-direct {p0, p1, v10}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    .line 15
    :cond_3
    :goto_0
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    return v11
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 4
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 5
    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 9
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 10
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    .line 11
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 12
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    return-void
.end method

.method public setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-void
.end method

.method public setPopupOffset(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    .line 2
    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    .line 3
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return-void
.end method

.method public setShifted(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setVerticalCorrection(I)V
    .locals 0

    return-void
.end method

.method public swipeDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    return-void
.end method

.method public swipeLeft()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    return-void
.end method

.method public swipeRight()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    return-void
.end method

.method public swipeUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    return-void
.end method
