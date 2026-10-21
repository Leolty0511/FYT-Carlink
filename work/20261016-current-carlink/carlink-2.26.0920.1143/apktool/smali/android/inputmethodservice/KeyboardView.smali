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

.field mHandler:Landroid/os/Handler;

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

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, -0x5

    .line 5
    const/4 v3, 0x0

    .line 6
    aput v2, v1, v3

    .line 7
    .line 8
    sput-object v1, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    const v1, 0x101023c

    .line 13
    .line 14
    .line 15
    aput v1, v0, v3

    .line 16
    .line 17
    sput-object v0, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 18
    .line 19
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    .line 24
    .line 25
    const/16 v0, 0xc

    .line 26
    .line 27
    sput v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1110051

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 5
    iput-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 8
    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mShowTouchPoints:Z

    .line 9
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 10
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    const/16 v4, 0xc

    new-array v4, v4, [I

    .line 11
    iput-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    .line 12
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 14
    new-instance v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>(Landroid/inputmethodservice/KeyboardView$1;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    .line 15
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 16
    sget v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 19
    sget-object v0, Landroid/R$styleable;->KeyboardView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string/jumbo p3, "layout_inflater"

    .line 20
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 21
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p4

    move v0, v2

    move v5, v0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 22
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 23
    :pswitch_0
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    goto :goto_1

    .line 24
    :pswitch_1
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x50

    .line 25
    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    goto :goto_1

    .line 26
    :pswitch_3
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    goto :goto_1

    .line 27
    :pswitch_4
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    goto :goto_1

    :pswitch_5
    const/high16 v7, -0x1000000

    .line 28
    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    goto :goto_1

    :pswitch_6
    const/16 v7, 0xe

    .line 29
    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    goto :goto_1

    :pswitch_7
    const/16 v7, 0x12

    .line 30
    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    goto :goto_1

    .line 31
    :pswitch_8
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_9
    const/4 v7, 0x0

    .line 32
    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    goto :goto_1

    .line 33
    :pswitch_a
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object p4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p2, p4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/high16 p4, 0x3f000000    # 0.5f

    .line 35
    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    .line 36
    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_1

    .line 37
    invoke-virtual {p3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

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

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x43fa0000    # 500.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x11200c8

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

    return-void

    nop

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

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    return-void
.end method

.method public static synthetic access$1000(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    return p0
.end method

.method public static synthetic access$1100(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    return p0
.end method

.method public static synthetic access$1200(Landroid/inputmethodservice/KeyboardView;IIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method public static synthetic access$1300(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object p0
.end method

.method public static synthetic access$1400(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method public static synthetic access$200(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    return p0
.end method

.method public static synthetic access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    return p0
.end method

.method public static synthetic access$800(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    return p0
.end method

.method public static synthetic access$900(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    return p0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x3

    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :cond_0
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p3, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 6
    .line 7
    aget-object v1, v1, p3

    .line 8
    .line 9
    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    const-wide/16 v3, 0x320

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-le v2, v5, :cond_2

    .line 16
    .line 17
    iput-boolean v5, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 18
    .line 19
    iget-wide v6, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 20
    .line 21
    add-long/2addr v6, v3

    .line 22
    cmp-long p1, p1, v6

    .line 23
    .line 24
    if-gez p1, :cond_1

    .line 25
    .line 26
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 27
    .line 28
    if-ne p3, p1, :cond_1

    .line 29
    .line 30
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 31
    .line 32
    add-int/2addr p1, v5

    .line 33
    array-length p2, v1

    .line 34
    rem-int/2addr p1, p2

    .line 35
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 42
    .line 43
    add-long/2addr v0, v3

    .line 44
    cmp-long p1, p1, v0

    .line 45
    .line 46
    if-gtz p1, :cond_3

    .line 47
    .line 48
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 49
    .line 50
    if-eq p3, p1, :cond_4

    .line 51
    .line 52
    :cond_3
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 53
    .line 54
    .line 55
    :cond_4
    return-void
.end method

.method private computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    array-length v0, p1

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v1, v0, :cond_2

    .line 13
    .line 14
    aget-object v3, p1, v1

    .line 15
    .line 16
    iget v4, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 17
    .line 18
    iget v5, v3, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 19
    .line 20
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget v3, v3, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    .line 25
    .line 26
    add-int/2addr v4, v3

    .line 27
    add-int/2addr v2, v4

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    if-ltz v2, :cond_4

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    int-to-float p1, v2

    .line 37
    const v1, 0x3fb33333    # 1.4f

    .line 38
    .line 39
    .line 40
    mul-float/2addr p1, v1

    .line 41
    int-to-float v0, v0

    .line 42
    div-float/2addr p1, v0

    .line 43
    float-to-int p1, p1

    .line 44
    mul-int/2addr p1, p1

    .line 45
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    .line 46
    .line 47
    :cond_4
    :goto_1
    return-void
.end method

.method private detectAndSendKey(IIIJ)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    if-ge p1, v2, :cond_3

    .line 8
    .line 9
    aget-object v1, v1, p1

    .line 10
    .line 11
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 16
    .line 17
    invoke-interface {p2, v2}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 21
    .line 22
    invoke-interface {p2, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aget v2, v2, v3

    .line 30
    .line 31
    sget v4, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    .line 32
    .line 33
    new-array v4, v4, [I

    .line 34
    .line 35
    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p2, p3, v4}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    .line 39
    .line 40
    .line 41
    iget-boolean p2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    iget p2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 46
    .line 47
    if-eq p2, v0, :cond_1

    .line 48
    .line 49
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 50
    .line 51
    const/4 p3, -0x5

    .line 52
    sget-object v0, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    .line 53
    .line 54
    invoke-interface {p2, p3, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 59
    .line 60
    :goto_0
    iget-object p2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 61
    .line 62
    iget p3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 63
    .line 64
    aget v2, p2, p3

    .line 65
    .line 66
    :cond_2
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 67
    .line 68
    invoke-interface {p2, v2, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 72
    .line 73
    invoke-interface {p2, v2}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 74
    .line 75
    .line 76
    :goto_1
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 77
    .line 78
    iput-wide p4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method private dismissPopupKeyboard()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private getKeyIndices(II[I)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 10
    .line 11
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    .line 12
    .line 13
    add-int/lit8 v5, v5, 0x1

    .line 14
    .line 15
    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    .line 16
    .line 17
    const v7, 0x7fffffff

    .line 18
    .line 19
    .line 20
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 21
    .line 22
    .line 23
    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 24
    .line 25
    invoke-virtual {v6, v1, v2}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    array-length v7, v6

    .line 30
    const/4 v9, 0x0

    .line 31
    move v10, v9

    .line 32
    const/4 v11, -0x1

    .line 33
    const/4 v12, -0x1

    .line 34
    :goto_0
    if-ge v10, v7, :cond_7

    .line 35
    .line 36
    aget v13, v6, v10

    .line 37
    .line 38
    aget-object v13, v4, v13

    .line 39
    .line 40
    invoke-virtual {v13, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    .line 41
    .line 42
    .line 43
    move-result v14

    .line 44
    if-eqz v14, :cond_0

    .line 45
    .line 46
    aget v11, v6, v10

    .line 47
    .line 48
    :cond_0
    iget-boolean v15, v0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    .line 49
    .line 50
    if-eqz v15, :cond_1

    .line 51
    .line 52
    invoke-virtual {v13, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    .line 53
    .line 54
    .line 55
    move-result v15

    .line 56
    iget v8, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    .line 57
    .line 58
    if-lt v15, v8, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move v15, v9

    .line 62
    :goto_1
    if-eqz v14, :cond_6

    .line 63
    .line 64
    :cond_2
    iget-object v8, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 65
    .line 66
    aget v14, v8, v9

    .line 67
    .line 68
    const/16 v9, 0x20

    .line 69
    .line 70
    if-le v14, v9, :cond_6

    .line 71
    .line 72
    array-length v8, v8

    .line 73
    if-ge v15, v5, :cond_3

    .line 74
    .line 75
    aget v12, v6, v10

    .line 76
    .line 77
    move v5, v15

    .line 78
    :cond_3
    if-nez v3, :cond_4

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_4
    const/4 v9, 0x0

    .line 82
    :goto_2
    iget-object v14, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    .line 83
    .line 84
    array-length v1, v14

    .line 85
    if-ge v9, v1, :cond_6

    .line 86
    .line 87
    aget v1, v14, v9

    .line 88
    .line 89
    if-le v1, v15, :cond_5

    .line 90
    .line 91
    add-int v1, v9, v8

    .line 92
    .line 93
    array-length v2, v14

    .line 94
    sub-int/2addr v2, v9

    .line 95
    sub-int/2addr v2, v8

    .line 96
    invoke-static {v14, v9, v14, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 97
    .line 98
    .line 99
    array-length v2, v3

    .line 100
    sub-int/2addr v2, v9

    .line 101
    sub-int/2addr v2, v8

    .line 102
    invoke-static {v3, v9, v3, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 103
    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    :goto_3
    if-ge v1, v8, :cond_6

    .line 107
    .line 108
    add-int v2, v9, v1

    .line 109
    .line 110
    iget-object v14, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 111
    .line 112
    aget v14, v14, v1

    .line 113
    .line 114
    aput v14, v3, v2

    .line 115
    .line 116
    iget-object v14, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    .line 117
    .line 118
    aput v15, v14, v2

    .line 119
    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 124
    .line 125
    move/from16 v1, p1

    .line 126
    .line 127
    move/from16 v2, p2

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 131
    .line 132
    move/from16 v1, p1

    .line 133
    .line 134
    move/from16 v2, p2

    .line 135
    .line 136
    const/4 v9, 0x0

    .line 137
    goto :goto_0

    .line 138
    :cond_7
    const/4 v1, -0x1

    .line 139
    if-ne v11, v1, :cond_8

    .line 140
    .line 141
    move v11, v12

    .line 142
    :cond_8
    return v11
.end method

.method private getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    iget-object p1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 14
    .line 15
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 16
    .line 17
    if-gez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    aget p1, p1, v1

    .line 22
    .line 23
    int-to-char p1, p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_1
    iget-object p1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 35
    .line 36
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method private initGestureDetector()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/view/GestureDetector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Landroid/inputmethodservice/KeyboardView$2;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Landroid/inputmethodservice/KeyboardView$2;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private onBufferDraw()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 10
    .line 11
    if-eqz v4, :cond_3

    .line 12
    .line 13
    :cond_0
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 16
    .line 17
    if-eqz v4, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-ne v1, v4, :cond_1

    .line 28
    .line 29
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eq v1, v4, :cond_2

    .line 40
    .line 41
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 58
    .line 59
    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 64
    .line 65
    new-instance v4, Landroid/graphics/Canvas;

    .line 66
    .line 67
    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 68
    .line 69
    .line 70
    iput-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 71
    .line 72
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 73
    .line 74
    .line 75
    iput-boolean v3, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 76
    .line 77
    :cond_3
    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 78
    .line 79
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 80
    .line 81
    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    .line 82
    .line 83
    invoke-virtual {v5, v1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 87
    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    iget-object v10, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 92
    .line 93
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 94
    .line 95
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 96
    .line 97
    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 98
    .line 99
    iget v7, v0, Landroid/view/View;->mPaddingLeft:I

    .line 100
    .line 101
    iget v8, v0, Landroid/view/View;->mPaddingTop:I

    .line 102
    .line 103
    iget-object v9, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 104
    .line 105
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 106
    .line 107
    iget v12, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    .line 108
    .line 109
    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    .line 111
    .line 112
    if-eqz v11, :cond_5

    .line 113
    .line 114
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_5

    .line 119
    .line 120
    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 121
    .line 122
    add-int v13, v12, v7

    .line 123
    .line 124
    sub-int/2addr v13, v2

    .line 125
    iget v14, v4, Landroid/graphics/Rect;->left:I

    .line 126
    .line 127
    if-gt v13, v14, :cond_5

    .line 128
    .line 129
    iget v13, v11, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 130
    .line 131
    add-int v14, v13, v8

    .line 132
    .line 133
    sub-int/2addr v14, v2

    .line 134
    iget v15, v4, Landroid/graphics/Rect;->top:I

    .line 135
    .line 136
    if-gt v14, v15, :cond_5

    .line 137
    .line 138
    iget v14, v11, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 139
    .line 140
    add-int/2addr v12, v14

    .line 141
    add-int/2addr v12, v7

    .line 142
    add-int/2addr v12, v2

    .line 143
    iget v14, v4, Landroid/graphics/Rect;->right:I

    .line 144
    .line 145
    if-lt v12, v14, :cond_5

    .line 146
    .line 147
    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 148
    .line 149
    add-int/2addr v13, v12

    .line 150
    add-int/2addr v13, v8

    .line 151
    add-int/2addr v13, v2

    .line 152
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 153
    .line 154
    if-lt v13, v4, :cond_5

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_5
    move v2, v3

    .line 158
    :goto_0
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 159
    .line 160
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 161
    .line 162
    .line 163
    array-length v4, v9

    .line 164
    :goto_1
    if-ge v3, v4, :cond_d

    .line 165
    .line 166
    aget-object v12, v9, v3

    .line 167
    .line 168
    if-eqz v2, :cond_6

    .line 169
    .line 170
    if-eq v11, v12, :cond_6

    .line 171
    .line 172
    move-object/from16 v17, v1

    .line 173
    .line 174
    move/from16 v16, v2

    .line 175
    .line 176
    move/from16 v18, v4

    .line 177
    .line 178
    goto/16 :goto_6

    .line 179
    .line 180
    :cond_6
    invoke-virtual {v12}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    invoke-virtual {v1, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 185
    .line 186
    .line 187
    iget-object v13, v12, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 188
    .line 189
    if-nez v13, :cond_7

    .line 190
    .line 191
    const/4 v13, 0x0

    .line 192
    goto :goto_2

    .line 193
    :cond_7
    invoke-direct {v0, v13}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v13

    .line 201
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    iget v15, v12, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 206
    .line 207
    move/from16 v16, v2

    .line 208
    .line 209
    iget v2, v14, Landroid/graphics/Rect;->right:I

    .line 210
    .line 211
    if-ne v15, v2, :cond_8

    .line 212
    .line 213
    iget v2, v12, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 214
    .line 215
    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    .line 216
    .line 217
    if-eq v2, v14, :cond_9

    .line 218
    .line 219
    :cond_8
    iget v2, v12, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 220
    .line 221
    const/4 v14, 0x0

    .line 222
    invoke-virtual {v1, v14, v14, v15, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 223
    .line 224
    .line 225
    :cond_9
    iget v2, v12, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 226
    .line 227
    add-int/2addr v2, v7

    .line 228
    int-to-float v2, v2

    .line 229
    iget v14, v12, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 230
    .line 231
    add-int/2addr v14, v8

    .line 232
    int-to-float v14, v14

    .line 233
    invoke-virtual {v5, v2, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 237
    .line 238
    .line 239
    const/4 v2, 0x2

    .line 240
    if-eqz v13, :cond_b

    .line 241
    .line 242
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 243
    .line 244
    .line 245
    move-result v14

    .line 246
    const/4 v15, 0x1

    .line 247
    if-le v14, v15, :cond_a

    .line 248
    .line 249
    iget-object v14, v12, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 250
    .line 251
    array-length v14, v14

    .line 252
    if-ge v14, v2, :cond_a

    .line 253
    .line 254
    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    .line 255
    .line 256
    int-to-float v2, v2

    .line 257
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 258
    .line 259
    .line 260
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 261
    .line 262
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_a
    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    .line 267
    .line 268
    int-to-float v2, v2

    .line 269
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 270
    .line 271
    .line 272
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 273
    .line 274
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 275
    .line 276
    .line 277
    :goto_3
    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    .line 278
    .line 279
    iget v14, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    .line 280
    .line 281
    const/4 v15, 0x0

    .line 282
    invoke-virtual {v10, v2, v15, v15, v14}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 283
    .line 284
    .line 285
    iget v2, v12, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 286
    .line 287
    iget v14, v6, Landroid/graphics/Rect;->left:I

    .line 288
    .line 289
    sub-int/2addr v2, v14

    .line 290
    iget v15, v6, Landroid/graphics/Rect;->right:I

    .line 291
    .line 292
    move-object/from16 v17, v1

    .line 293
    .line 294
    const/4 v1, 0x2

    .line 295
    invoke-static {v2, v15, v1, v14}, Landroid/app/m;->b(IIII)I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    int-to-float v1, v1

    .line 300
    iget v2, v12, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 301
    .line 302
    iget v14, v6, Landroid/graphics/Rect;->top:I

    .line 303
    .line 304
    sub-int/2addr v2, v14

    .line 305
    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    .line 306
    .line 307
    sub-int/2addr v2, v14

    .line 308
    div-int/lit8 v2, v2, 0x2

    .line 309
    .line 310
    int-to-float v2, v2

    .line 311
    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    .line 312
    .line 313
    .line 314
    move-result v14

    .line 315
    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    .line 316
    .line 317
    .line 318
    move-result v15

    .line 319
    sub-float/2addr v14, v15

    .line 320
    const/high16 v15, 0x40000000    # 2.0f

    .line 321
    .line 322
    div-float/2addr v14, v15

    .line 323
    add-float/2addr v14, v2

    .line 324
    iget v2, v6, Landroid/graphics/Rect;->top:I

    .line 325
    .line 326
    int-to-float v2, v2

    .line 327
    add-float/2addr v14, v2

    .line 328
    invoke-virtual {v5, v13, v1, v14, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 329
    .line 330
    .line 331
    const/4 v1, 0x0

    .line 332
    const/4 v2, 0x0

    .line 333
    invoke-virtual {v10, v1, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 334
    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_b
    move-object/from16 v17, v1

    .line 338
    .line 339
    iget-object v1, v12, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 340
    .line 341
    if-eqz v1, :cond_c

    .line 342
    .line 343
    iget v2, v12, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 344
    .line 345
    iget v13, v6, Landroid/graphics/Rect;->left:I

    .line 346
    .line 347
    sub-int/2addr v2, v13

    .line 348
    iget v13, v6, Landroid/graphics/Rect;->right:I

    .line 349
    .line 350
    sub-int/2addr v2, v13

    .line 351
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    sub-int/2addr v2, v1

    .line 356
    div-int/lit8 v2, v2, 0x2

    .line 357
    .line 358
    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 359
    .line 360
    add-int/2addr v2, v1

    .line 361
    iget v1, v12, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 362
    .line 363
    iget v13, v6, Landroid/graphics/Rect;->top:I

    .line 364
    .line 365
    sub-int/2addr v1, v13

    .line 366
    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    .line 367
    .line 368
    sub-int/2addr v1, v13

    .line 369
    iget-object v13, v12, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 370
    .line 371
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 372
    .line 373
    .line 374
    move-result v13

    .line 375
    sub-int/2addr v1, v13

    .line 376
    div-int/lit8 v1, v1, 0x2

    .line 377
    .line 378
    iget v13, v6, Landroid/graphics/Rect;->top:I

    .line 379
    .line 380
    add-int/2addr v1, v13

    .line 381
    int-to-float v13, v2

    .line 382
    int-to-float v14, v1

    .line 383
    invoke-virtual {v5, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 384
    .line 385
    .line 386
    iget-object v13, v12, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 387
    .line 388
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 389
    .line 390
    .line 391
    move-result v14

    .line 392
    iget-object v15, v12, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 393
    .line 394
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 395
    .line 396
    .line 397
    move-result v15

    .line 398
    move/from16 v18, v4

    .line 399
    .line 400
    const/4 v4, 0x0

    .line 401
    invoke-virtual {v13, v4, v4, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 402
    .line 403
    .line 404
    iget-object v4, v12, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 405
    .line 406
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 407
    .line 408
    .line 409
    neg-int v2, v2

    .line 410
    int-to-float v2, v2

    .line 411
    neg-int v1, v1

    .line 412
    int-to-float v1, v1

    .line 413
    invoke-virtual {v5, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 414
    .line 415
    .line 416
    goto :goto_5

    .line 417
    :cond_c
    :goto_4
    move/from16 v18, v4

    .line 418
    .line 419
    :goto_5
    iget v1, v12, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 420
    .line 421
    neg-int v1, v1

    .line 422
    sub-int/2addr v1, v7

    .line 423
    int-to-float v1, v1

    .line 424
    iget v2, v12, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 425
    .line 426
    neg-int v2, v2

    .line 427
    sub-int/2addr v2, v8

    .line 428
    int-to-float v2, v2

    .line 429
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 430
    .line 431
    .line 432
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 433
    .line 434
    move/from16 v2, v16

    .line 435
    .line 436
    move-object/from16 v1, v17

    .line 437
    .line 438
    move/from16 v4, v18

    .line 439
    .line 440
    goto/16 :goto_1

    .line 441
    .line 442
    :cond_d
    const/4 v1, 0x0

    .line 443
    iput-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 444
    .line 445
    iget-boolean v1, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 446
    .line 447
    if-eqz v1, :cond_e

    .line 448
    .line 449
    iget v1, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    .line 450
    .line 451
    const/high16 v2, 0x437f0000    # 255.0f

    .line 452
    .line 453
    mul-float/2addr v1, v2

    .line 454
    float-to-int v1, v1

    .line 455
    shl-int/lit8 v1, v1, 0x18

    .line 456
    .line 457
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 458
    .line 459
    .line 460
    const/4 v6, 0x0

    .line 461
    const/4 v7, 0x0

    .line 462
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    int-to-float v8, v1

    .line 467
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    int-to-float v9, v1

    .line 472
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 473
    .line 474
    .line 475
    :cond_e
    const/4 v1, 0x0

    .line 476
    iput-boolean v1, v0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 477
    .line 478
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 479
    .line 480
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 481
    .line 482
    .line 483
    return-void
.end method

.method private onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    float-to-int v1, v1

    .line 10
    iget v2, v6, Landroid/view/View;->mPaddingLeft:I

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    float-to-int v2, v2

    .line 18
    iget v3, v6, Landroid/view/View;->mPaddingTop:I

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    .line 22
    .line 23
    neg-int v4, v3

    .line 24
    if-lt v2, v4, :cond_0

    .line 25
    .line 26
    add-int/2addr v2, v3

    .line 27
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-direct {v6, v1, v2, v7}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    move/from16 v8, p2

    .line 41
    .line 42
    iput-boolean v8, v6, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    iget-object v8, v6, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    .line 47
    .line 48
    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->clear()V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v8, v6, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    .line 52
    .line 53
    invoke-virtual {v8, v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v8, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 57
    .line 58
    const/4 v9, 0x3

    .line 59
    const/4 v10, 0x1

    .line 60
    if-eqz v8, :cond_2

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    if-eq v3, v9, :cond_2

    .line 65
    .line 66
    return v10

    .line 67
    :cond_2
    iget-object v8, v6, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 68
    .line 69
    invoke-virtual {v8, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    const/4 v11, 0x4

    .line 74
    const/4 v12, -0x1

    .line 75
    if-eqz v8, :cond_3

    .line 76
    .line 77
    invoke-direct {v6, v12}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 81
    .line 82
    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 86
    .line 87
    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    .line 89
    .line 90
    return v10

    .line 91
    :cond_3
    iget-boolean v8, v6, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 92
    .line 93
    if-eqz v8, :cond_4

    .line 94
    .line 95
    if-eq v3, v9, :cond_4

    .line 96
    .line 97
    return v10

    .line 98
    :cond_4
    const-wide/16 v13, 0x0

    .line 99
    .line 100
    if-eqz v3, :cond_f

    .line 101
    .line 102
    if-eq v3, v10, :cond_b

    .line 103
    .line 104
    const/4 v15, 0x2

    .line 105
    if-eq v3, v15, :cond_6

    .line 106
    .line 107
    if-eq v3, v9, :cond_5

    .line 108
    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 112
    .line 113
    .line 114
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 115
    .line 116
    .line 117
    iput-boolean v10, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 118
    .line 119
    invoke-direct {v6, v12}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 120
    .line 121
    .line 122
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 123
    .line 124
    invoke-virtual {v6, v0}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_5

    .line 128
    .line 129
    :cond_6
    if-eq v7, v12, :cond_9

    .line 130
    .line 131
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 132
    .line 133
    if-ne v3, v12, :cond_7

    .line 134
    .line 135
    iput v7, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 136
    .line 137
    iget-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    .line 138
    .line 139
    sub-long v13, v4, v13

    .line 140
    .line 141
    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_7
    if-ne v7, v3, :cond_8

    .line 145
    .line 146
    iget-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 147
    .line 148
    iget-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 149
    .line 150
    sub-long v13, v4, v13

    .line 151
    .line 152
    add-long/2addr v13, v8

    .line 153
    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 154
    .line 155
    move v8, v10

    .line 156
    goto :goto_1

    .line 157
    :cond_8
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 158
    .line 159
    if-ne v3, v12, :cond_9

    .line 160
    .line 161
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 162
    .line 163
    .line 164
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 165
    .line 166
    iput v3, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 167
    .line 168
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    .line 169
    .line 170
    iput v3, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 171
    .line 172
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    .line 173
    .line 174
    iput v3, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 175
    .line 176
    iget-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 177
    .line 178
    add-long/2addr v8, v4

    .line 179
    iget-wide v10, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 180
    .line 181
    sub-long/2addr v8, v10

    .line 182
    iput-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 183
    .line 184
    iput v7, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 185
    .line 186
    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 187
    .line 188
    :cond_9
    :goto_0
    const/4 v8, 0x0

    .line 189
    :goto_1
    if-nez v8, :cond_a

    .line 190
    .line 191
    iget-object v8, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 192
    .line 193
    const/4 v3, 0x4

    .line 194
    invoke-virtual {v8, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    .line 196
    .line 197
    if-eq v7, v12, :cond_a

    .line 198
    .line 199
    iget-object v7, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 200
    .line 201
    invoke-virtual {v7, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 206
    .line 207
    sget v7, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    .line 208
    .line 209
    int-to-long v7, v7

    .line 210
    invoke-virtual {v3, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    .line 212
    .line 213
    :cond_a
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 214
    .line 215
    invoke-direct {v6, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 216
    .line 217
    .line 218
    iput-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 219
    .line 220
    goto/16 :goto_5

    .line 221
    .line 222
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 223
    .line 224
    .line 225
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 226
    .line 227
    if-ne v7, v0, :cond_c

    .line 228
    .line 229
    iget-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 230
    .line 231
    iget-wide v10, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 232
    .line 233
    sub-long v10, v4, v10

    .line 234
    .line 235
    add-long/2addr v10, v8

    .line 236
    iput-wide v10, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 240
    .line 241
    .line 242
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 243
    .line 244
    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 245
    .line 246
    iget-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 247
    .line 248
    add-long/2addr v8, v4

    .line 249
    iget-wide v10, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 250
    .line 251
    sub-long/2addr v8, v10

    .line 252
    iput-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 253
    .line 254
    iput v7, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 255
    .line 256
    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 257
    .line 258
    :goto_2
    iget-wide v8, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 259
    .line 260
    iget-wide v10, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 261
    .line 262
    cmp-long v0, v8, v10

    .line 263
    .line 264
    if-gez v0, :cond_d

    .line 265
    .line 266
    const-wide/16 v10, 0x46

    .line 267
    .line 268
    cmp-long v0, v8, v10

    .line 269
    .line 270
    if-gez v0, :cond_d

    .line 271
    .line 272
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 273
    .line 274
    if-eq v0, v12, :cond_d

    .line 275
    .line 276
    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 277
    .line 278
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 279
    .line 280
    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 281
    .line 282
    move v8, v0

    .line 283
    move v9, v1

    .line 284
    goto :goto_3

    .line 285
    :cond_d
    move v8, v1

    .line 286
    move v9, v2

    .line 287
    :goto_3
    invoke-direct {v6, v12}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 288
    .line 289
    .line 290
    iget-object v0, v6, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    .line 291
    .line 292
    invoke-static {v0, v12}, Ljava/util/Arrays;->fill([II)V

    .line 293
    .line 294
    .line 295
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 296
    .line 297
    if-ne v0, v12, :cond_e

    .line 298
    .line 299
    iget-boolean v0, v6, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 300
    .line 301
    if-nez v0, :cond_e

    .line 302
    .line 303
    iget-boolean v0, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 304
    .line 305
    if-nez v0, :cond_e

    .line 306
    .line 307
    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 308
    .line 309
    move-object/from16 v0, p0

    .line 310
    .line 311
    move v2, v8

    .line 312
    move v3, v9

    .line 313
    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 314
    .line 315
    .line 316
    :cond_e
    invoke-virtual {v6, v7}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 317
    .line 318
    .line 319
    iput v12, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 320
    .line 321
    move v1, v8

    .line 322
    move v2, v9

    .line 323
    goto :goto_5

    .line 324
    :cond_f
    const/4 v8, 0x0

    .line 325
    iput-boolean v8, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 326
    .line 327
    iput v1, v6, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    .line 328
    .line 329
    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    .line 330
    .line 331
    iput v1, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 332
    .line 333
    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 334
    .line 335
    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 336
    .line 337
    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 338
    .line 339
    iput v12, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 340
    .line 341
    iput v7, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 342
    .line 343
    iput v7, v6, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    .line 344
    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 346
    .line 347
    .line 348
    move-result-wide v10

    .line 349
    iput-wide v10, v6, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    .line 350
    .line 351
    iput-wide v10, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 352
    .line 353
    invoke-direct {v6, v4, v5, v7}, Landroid/inputmethodservice/KeyboardView;->checkMultiTap(JI)V

    .line 354
    .line 355
    .line 356
    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 357
    .line 358
    if-eq v7, v12, :cond_10

    .line 359
    .line 360
    iget-object v5, v6, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 361
    .line 362
    aget-object v5, v5, v7

    .line 363
    .line 364
    iget-object v5, v5, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 365
    .line 366
    const/4 v8, 0x0

    .line 367
    aget v8, v5, v8

    .line 368
    .line 369
    goto :goto_4

    .line 370
    :cond_10
    const/4 v8, 0x0

    .line 371
    :goto_4
    invoke-interface {v4, v8}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 372
    .line 373
    .line 374
    iget v4, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 375
    .line 376
    if-ltz v4, :cond_11

    .line 377
    .line 378
    iget-object v5, v6, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 379
    .line 380
    aget-object v5, v5, v4

    .line 381
    .line 382
    iget-boolean v5, v5, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    .line 383
    .line 384
    if-eqz v5, :cond_11

    .line 385
    .line 386
    iput v4, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 387
    .line 388
    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 389
    .line 390
    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    iget-object v5, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 395
    .line 396
    const-wide/16 v8, 0x190

    .line 397
    .line 398
    invoke-virtual {v5, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 399
    .line 400
    .line 401
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    .line 402
    .line 403
    .line 404
    iget-boolean v4, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 405
    .line 406
    if-eqz v4, :cond_11

    .line 407
    .line 408
    iput v12, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 409
    .line 410
    goto :goto_5

    .line 411
    :cond_11
    iget v4, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 412
    .line 413
    if-eq v4, v12, :cond_12

    .line 414
    .line 415
    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 416
    .line 417
    const/4 v3, 0x4

    .line 418
    invoke-virtual {v4, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 423
    .line 424
    sget v4, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    .line 425
    .line 426
    int-to-long v4, v4

    .line 427
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 428
    .line 429
    .line 430
    :cond_12
    invoke-direct {v6, v7}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 431
    .line 432
    .line 433
    :goto_5
    iput v1, v6, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    .line 434
    .line 435
    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    .line 436
    .line 437
    const/4 v0, 0x1

    .line 438
    return v0
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 8
    .line 9
    if-ltz p1, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-lt p1, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    aget-object p1, v1, p1

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 27
    .line 28
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return p1

    .line 33
    :cond_3
    :goto_0
    return v0
.end method

.method private removeMessages()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private repeatKey()Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 2
    .line 3
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 8
    .line 9
    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 10
    .line 11
    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 12
    .line 13
    iget-wide v5, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 14
    .line 15
    move-object v1, p0

    .line 16
    invoke-direct/range {v1 .. v6}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0
.end method

.method private resetMultiTap()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 6
    .line 7
    const-wide/16 v1, -0x1

    .line 8
    .line 9
    iput-wide v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 10
    .line 11
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 12
    .line 13
    return-void
.end method

.method private sendAccessibilityEventForUnicodeCharacter(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0xa

    .line 17
    .line 18
    if-eq p2, v0, :cond_0

    .line 19
    .line 20
    packed-switch p2, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    int-to-char p2, p2

    .line 24
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    goto :goto_0

    .line 29
    :pswitch_0
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const v0, 0x104029e

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    goto :goto_0

    .line 39
    :pswitch_1
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    const v0, 0x104029d

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    goto :goto_0

    .line 49
    :pswitch_2
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    const v0, 0x1040299

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    goto :goto_0

    .line 59
    :pswitch_3
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    const v0, 0x104029b

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    goto :goto_0

    .line 69
    :pswitch_4
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    const v0, 0x104029a

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    goto :goto_0

    .line 79
    :pswitch_5
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    const v0, 0x1040298

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    const v0, 0x104029c

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    return-void

    .line 111
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
    .line 3
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 4
    .line 5
    if-ltz p1, :cond_a

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-lt p1, v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    aget-object p1, v1, p1

    .line 13
    .line 14
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object v7, p1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    if-eqz v7, :cond_1

    .line 27
    .line 28
    move-object v1, v7

    .line 29
    :cond_1
    invoke-virtual {v6, v4, v4, v4, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-le v1, v3, :cond_3

    .line 59
    .line 60
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 61
    .line 62
    array-length v1, v1

    .line 63
    if-ge v1, v2, :cond_3

    .line 64
    .line 65
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 66
    .line 67
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    .line 68
    .line 69
    int-to-float v4, v4

    .line 70
    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 74
    .line 75
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 76
    .line 77
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 82
    .line 83
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    .line 84
    .line 85
    int-to-float v4, v4

    .line 86
    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 90
    .line 91
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 92
    .line 93
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    invoke-virtual {v1, v4, v6}, Landroid/view/View;->measure(II)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 116
    .line 117
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    add-int/2addr v6, v4

    .line 124
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    add-int/2addr v4, v6

    .line 131
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    .line 136
    .line 137
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 138
    .line 139
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    if-eqz v6, :cond_4

    .line 144
    .line 145
    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 146
    .line 147
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    .line 149
    :cond_4
    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    .line 150
    .line 151
    if-nez v6, :cond_5

    .line 152
    .line 153
    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 154
    .line 155
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 156
    .line 157
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    sub-int/2addr v6, v7

    .line 162
    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    .line 163
    .line 164
    add-int/2addr v6, v7

    .line 165
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 166
    .line 167
    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 168
    .line 169
    sub-int/2addr v6, v4

    .line 170
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    .line 171
    .line 172
    add-int/2addr v6, v7

    .line 173
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_5
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    div-int/2addr v6, v2

    .line 183
    rsub-int v6, v6, 0xa0

    .line 184
    .line 185
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 186
    .line 187
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 188
    .line 189
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    neg-int v6, v6

    .line 194
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 195
    .line 196
    :goto_1
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 197
    .line 198
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    .line 200
    .line 201
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    .line 202
    .line 203
    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 204
    .line 205
    .line 206
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    .line 207
    .line 208
    aget v7, v6, v5

    .line 209
    .line 210
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    .line 211
    .line 212
    add-int/2addr v7, v8

    .line 213
    aput v7, v6, v5

    .line 214
    .line 215
    aget v7, v6, v3

    .line 216
    .line 217
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    .line 218
    .line 219
    add-int/2addr v7, v8

    .line 220
    aput v7, v6, v3

    .line 221
    .line 222
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 223
    .line 224
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    iget v7, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 229
    .line 230
    if-eqz v7, :cond_6

    .line 231
    .line 232
    sget-object v7, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_6
    sget-object v7, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 236
    .line 237
    :goto_2
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 238
    .line 239
    .line 240
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 241
    .line 242
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    .line 243
    .line 244
    aget v8, v7, v5

    .line 245
    .line 246
    add-int/2addr v6, v8

    .line 247
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 248
    .line 249
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 250
    .line 251
    aget v8, v7, v3

    .line 252
    .line 253
    add-int/2addr v6, v8

    .line 254
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 255
    .line 256
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 257
    .line 258
    .line 259
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 260
    .line 261
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    .line 262
    .line 263
    aget v3, v7, v3

    .line 264
    .line 265
    add-int/2addr v6, v3

    .line 266
    if-gez v6, :cond_8

    .line 267
    .line 268
    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 269
    .line 270
    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 271
    .line 272
    add-int/2addr v3, v6

    .line 273
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    div-int/2addr v6, v2

    .line 278
    const-wide/high16 v7, 0x4004000000000000L    # 2.5

    .line 279
    .line 280
    if-gt v3, v6, :cond_7

    .line 281
    .line 282
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 283
    .line 284
    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 285
    .line 286
    int-to-double v9, p1

    .line 287
    mul-double/2addr v9, v7

    .line 288
    double-to-int p1, v9

    .line 289
    add-int/2addr v2, p1

    .line 290
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_7
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 294
    .line 295
    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 296
    .line 297
    int-to-double v9, p1

    .line 298
    mul-double/2addr v9, v7

    .line 299
    double-to-int p1, v9

    .line 300
    sub-int/2addr v2, p1

    .line 301
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 302
    .line 303
    :goto_3
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 304
    .line 305
    add-int/2addr p1, v4

    .line 306
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 307
    .line 308
    :cond_8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-eqz p1, :cond_9

    .line 313
    .line 314
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 315
    .line 316
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 317
    .line 318
    invoke-virtual {v0, p1, v2, v1, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 326
    .line 327
    .line 328
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 329
    .line 330
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 331
    .line 332
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 333
    .line 334
    invoke-virtual {v0, p1, v5, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 335
    .line 336
    .line 337
    :goto_4
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 338
    .line 339
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    :cond_a
    :goto_5
    return-void
.end method

.method private showPreview(I)V
    .locals 8

    .line 1
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 4
    .line 5
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 6
    .line 7
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, -0x1

    .line 12
    if-eq v0, p1, :cond_2

    .line 13
    .line 14
    if-eq v0, v5, :cond_1

    .line 15
    .line 16
    array-length v6, v2

    .line 17
    if-le v6, v0, :cond_1

    .line 18
    .line 19
    aget-object v6, v2, v0

    .line 20
    .line 21
    if-ne p1, v5, :cond_0

    .line 22
    .line 23
    move v7, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v7, v4

    .line 26
    :goto_0
    invoke-virtual {v6, v7}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 30
    .line 31
    .line 32
    iget-object v6, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 33
    .line 34
    aget v6, v6, v4

    .line 35
    .line 36
    const/16 v7, 0x100

    .line 37
    .line 38
    invoke-direct {p0, v7, v6}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 39
    .line 40
    .line 41
    const/high16 v7, 0x10000

    .line 42
    .line 43
    invoke-direct {p0, v7, v6}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 47
    .line 48
    if-eq v6, v5, :cond_2

    .line 49
    .line 50
    array-length v7, v2

    .line 51
    if-le v7, v6, :cond_2

    .line 52
    .line 53
    aget-object v2, v2, v6

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 56
    .line 57
    .line 58
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 59
    .line 60
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 61
    .line 62
    .line 63
    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 64
    .line 65
    aget v2, v2, v4

    .line 66
    .line 67
    const/16 v6, 0x80

    .line 68
    .line 69
    invoke-direct {p0, v6, v2}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 70
    .line 71
    .line 72
    const v6, 0x8000

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v6, v2}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 79
    .line 80
    if-eq v0, v2, :cond_5

    .line 81
    .line 82
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    if-ne p1, v5, :cond_3

    .line 98
    .line 99
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const-wide/16 v6, 0x46

    .line 107
    .line 108
    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 109
    .line 110
    .line 111
    :cond_3
    if-eq p1, v5, :cond_5

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_4

    .line 126
    .line 127
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 132
    .line 133
    invoke-virtual {v0, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-wide/16 v1, 0x0

    .line 138
    .line 139
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 140
    .line 141
    .line 142
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public closing()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 24
    .line 25
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public getKeyboard()Landroid/inputmethodservice/Keyboard;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method public getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public invalidateKey(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-ltz p1, :cond_2

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    if-lt p1, v1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    aget-object p1, v0, p1

    .line 13
    .line 14
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 15
    .line 16
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 19
    .line 20
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 21
    .line 22
    add-int v3, v1, v2

    .line 23
    .line 24
    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 25
    .line 26
    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    .line 27
    .line 28
    add-int v6, v4, v5

    .line 29
    .line 30
    iget v7, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 31
    .line 32
    add-int/2addr v1, v7

    .line 33
    add-int/2addr v1, v2

    .line 34
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 35
    .line 36
    add-int/2addr v4, v2

    .line 37
    add-int/2addr v4, v5

    .line 38
    invoke-virtual {v0, v3, v6, v1, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 42
    .line 43
    .line 44
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 45
    .line 46
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 47
    .line 48
    add-int v2, v0, v1

    .line 49
    .line 50
    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 51
    .line 52
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    .line 53
    .line 54
    add-int v5, v3, v4

    .line 55
    .line 56
    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 57
    .line 58
    add-int/2addr v0, v6

    .line 59
    add-int/2addr v0, v1

    .line 60
    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 61
    .line 62
    add-int/2addr v3, p1

    .line 63
    add-int/2addr v3, v4

    .line 64
    invoke-virtual {p0, v2, v5, v0, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    return-void
.end method

.method public isPreviewEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/inputmethodservice/KeyboardView$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/inputmethodservice/KeyboardView$1;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->closing()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x7

    .line 21
    if-eq v0, v2, :cond_2

    .line 22
    .line 23
    const/16 v2, 0x9

    .line 24
    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    const/16 v2, 0xa

    .line 28
    .line 29
    if-eq v0, v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x2

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_3
    return v1
.end method

.method public onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 8

    .line 1
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    if-eqz v2, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/View;

    .line 13
    .line 14
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 15
    .line 16
    const v1, 0x1020026

    .line 17
    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string/jumbo v3, "layout_inflater"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/view/LayoutInflater;

    .line 33
    .line 34
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    .line 48
    .line 49
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 50
    .line 51
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 52
    .line 53
    const v1, 0x1020027

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 66
    .line 67
    new-instance v1, Landroid/inputmethodservice/KeyboardView$3;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Landroid/inputmethodservice/KeyboardView$3;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    new-instance v7, Landroid/inputmethodservice/Keyboard;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 86
    .line 87
    const/4 v4, -0x1

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    add-int/2addr v5, v0

    .line 97
    move-object v0, v7

    .line 98
    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    new-instance v7, Landroid/inputmethodservice/Keyboard;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {v7, v0, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 109
    .line 110
    .line 111
    :goto_0
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 112
    .line 113
    invoke-virtual {v0, v7}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Landroid/inputmethodservice/KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    const/high16 v2, -0x80000000

    .line 128
    .line 129
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 145
    .line 146
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 147
    .line 148
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    .line 157
    .line 158
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 159
    .line 160
    :goto_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 163
    .line 164
    .line 165
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 166
    .line 167
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 168
    .line 169
    add-int/2addr v0, v1

    .line 170
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 171
    .line 172
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 173
    .line 174
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    .line 175
    .line 176
    add-int/2addr v1, v2

    .line 177
    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 178
    .line 179
    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 180
    .line 181
    add-int/2addr v0, p1

    .line 182
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    sub-int/2addr v0, p1

    .line 189
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 190
    .line 191
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 192
    .line 193
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    sub-int/2addr p1, v0

    .line 200
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 201
    .line 202
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 203
    .line 204
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    add-int/2addr v0, p1

    .line 211
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    .line 212
    .line 213
    aget p1, p1, v6

    .line 214
    .line 215
    add-int/2addr v0, p1

    .line 216
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 217
    .line 218
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 219
    .line 220
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    add-int/2addr v1, p1

    .line 225
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    .line 226
    .line 227
    const/4 v2, 0x1

    .line 228
    aget p1, p1, v2

    .line 229
    .line 230
    add-int/2addr v1, p1

    .line 231
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 232
    .line 233
    if-gez v0, :cond_3

    .line 234
    .line 235
    move v3, v6

    .line 236
    goto :goto_2

    .line 237
    :cond_3
    move v3, v0

    .line 238
    :goto_2
    invoke-virtual {p1, v3, v1}, Landroid/inputmethodservice/KeyboardView;->setPopupOffset(II)V

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 242
    .line 243
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    invoke-virtual {p1, v3}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 251
    .line 252
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 253
    .line 254
    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 258
    .line 259
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 260
    .line 261
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 266
    .line 267
    .line 268
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 269
    .line 270
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 271
    .line 272
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 280
    .line 281
    invoke-virtual {p1, p0, v6, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 282
    .line 283
    .line 284
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 285
    .line 286
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 287
    .line 288
    .line 289
    return v2

    .line 290
    :cond_4
    return v6
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 6
    .line 7
    iget p2, p0, Landroid/view/View;->mPaddingRight:I

    .line 8
    .line 9
    add-int/2addr p1, p2

    .line 10
    iget p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 11
    .line 12
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 13
    .line 14
    add-int/2addr p2, v0

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 24
    .line 25
    add-int/2addr p2, v0

    .line 26
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 27
    .line 28
    add-int/2addr p2, v0

    .line 29
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/lit8 v1, p2, 0xa

    .line 34
    .line 35
    if-ge v0, v1, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    :cond_1
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 48
    .line 49
    add-int/2addr p1, v0

    .line 50
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 51
    .line 52
    add-int/2addr p1, v0

    .line 53
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {p3, p1, p2}, Landroid/inputmethodservice/Keyboard;->resize(II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 14
    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x1

    .line 17
    if-eq v0, v2, :cond_2

    .line 18
    .line 19
    if-ne v0, v11, :cond_1

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    move-wide v2, v4

    .line 35
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {p0, v2, v10}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 44
    .line 45
    .line 46
    if-ne v1, v11, :cond_0

    .line 47
    .line 48
    invoke-direct {p0, p1, v11}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    move v11, p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v11, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v6, 0x1

    .line 57
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    .line 58
    .line 59
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    move-wide v2, v4

    .line 66
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1, v11}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    if-ne v0, v11, :cond_3

    .line 79
    .line 80
    invoke-direct {p0, p1, v10}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    .line 95
    .line 96
    :cond_3
    :goto_0
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 97
    .line 98
    return v11
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, [Landroid/inputmethodservice/Keyboard$Key;

    .line 29
    .line 30
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 47
    .line 48
    .line 49
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 50
    .line 51
    return-void
.end method

.method public setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-void
.end method

.method public setPopupOffset(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    .line 2
    .line 3
    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    .line 4
    .line 5
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return-void
.end method

.method public setShifted(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public setVerticalCorrection(I)V
    .locals 0

    return-void
.end method

.method public swipeDown()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    return-void
.end method

.method public swipeLeft()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    return-void
.end method

.method public swipeRight()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    return-void
.end method

.method public swipeUp()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    return-void
.end method
