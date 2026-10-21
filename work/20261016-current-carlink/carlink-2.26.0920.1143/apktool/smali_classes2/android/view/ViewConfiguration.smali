.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A11Y_SHORTCUT_KEY_TIMEOUT:I = 0xbb8

.field private static final ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DEFAULT_MULTI_PRESS_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final HORIZONTAL_SCROLL_FACTOR:F = 64.0f

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final HOVER_TOOLTIP_HIDE_SHORT_TIMEOUT:I = 0xbb8

.field private static final HOVER_TOOLTIP_HIDE_TIMEOUT:I = 0x3a98

.field private static final HOVER_TOOLTIP_SHOW_TIMEOUT:I = 0x1f4

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final LONG_PRESS_TOOLTIP_HIDE_TIMEOUT:I = 0x5dc

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final MIN_SCROLLBAR_TOUCH_TARGET:I = 0x30

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0x4

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0x64

.field private static final TOUCH_SLOP:I = 0x8

.field private static final VERTICAL_SCROLL_FACTOR:F = 64.0f

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mGlobalActionsKeyTimeout:J

.field private final mHorizontalScrollFactor:F

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinScrollbarTouchTarget:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mVerticalScrollFactor:F

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 2
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 3
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    const/16 v0, 0x32

    .line 4
    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    const/16 v0, 0x1f40

    .line 5
    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    const/4 v0, 0x4

    .line 6
    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    const/16 v0, 0x8

    .line 7
    iput v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    const/16 v1, 0x30

    .line 8
    iput v1, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    .line 9
    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    const/16 v0, 0x10

    .line 10
    iput v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    const/16 v1, 0x64

    .line 11
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 12
    iput v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    const v0, 0x177000

    .line 13
    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    const/4 v0, 0x6

    .line 15
    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    const-wide/16 v0, 0x1f4

    .line 17
    iput-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    const/high16 v0, 0x42800000    # 64.0f

    .line 18
    iput v0, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    .line 19
    iput v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 24
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v3, 0x4

    .line 25
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    :cond_0
    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 26
    iput v2, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 27
    iput v2, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    const v2, 0x1050044

    .line 28
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 29
    iput v2, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 30
    iput v2, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    const-string/jumbo v2, "window"

    .line 31
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 32
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 33
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 34
    invoke-virtual {p1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 35
    iget p1, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr p1, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr p1, v2

    iput p1, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    const/4 p1, 0x0

    mul-float/2addr p1, v1

    add-float/2addr p1, v4

    float-to-int p1, p1

    .line 36
    iput p1, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    const/high16 p1, 0x40c00000    # 6.0f

    mul-float/2addr v1, p1

    add-float/2addr v1, v4

    float-to-int p1, v1

    .line 37
    iput p1, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 38
    iget-boolean p1, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    if-nez p1, :cond_4

    const p1, 0x10e0078

    .line 39
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    .line 40
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    .line 41
    :try_start_0
    invoke-interface {p1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    iput-boolean p1, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 42
    iput-boolean v1, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 43
    :catch_0
    iput-boolean v3, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_1

    .line 44
    :cond_2
    iput-boolean v3, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 45
    iput-boolean v1, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_1

    .line 46
    :cond_3
    iput-boolean v1, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 47
    iput-boolean v1, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    :cond_4
    :goto_1
    const p1, 0x11200ce

    .line 48
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    const p1, 0x1050046

    .line 49
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    const v1, 0x105003b

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    mul-int/lit8 v1, p1, 0x2

    .line 51
    iput v1, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 52
    iput p1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    const p1, 0x1050048

    .line 53
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    const p1, 0x1050047

    .line 54
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    const p1, 0x10e0043

    .line 55
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    const p1, 0x1050036

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    const p1, 0x1050045

    .line 57
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/high16 v1, 0x42c80000    # 100.0f

    .line 10
    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    mul-float/2addr v0, v1

    .line 14
    float-to-int v0, v0

    .line 15
    sget-object v1, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/view/ViewConfiguration;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    new-instance v2, Landroid/view/ViewConfiguration;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object v2
.end method

.method public static getDefaultActionModeHideDuration()J
    .locals 2

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public static getDoubleTapMinTime()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .locals 1

    const/16 v0, 0x96

    return v0
.end method

.method public static getHoverTooltipHideShortTimeout()I
    .locals 1

    const/16 v0, 0xbb8

    return v0
.end method

.method public static getHoverTooltipHideTimeout()I
    .locals 1

    const/16 v0, 0x3a98

    return v0
.end method

.method public static getHoverTooltipShowTimeout()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    .line 1
    const-string v0, "long_press_timeout"

    .line 2
    .line 3
    const/16 v1, 0x1f4

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static getLongPressTooltipHideTimeout()I
    .locals 1

    const/16 v0, 0x5dc

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x32

    return v0
.end method

.method public static getMultiPressTimeout()I
    .locals 2

    .line 1
    const-string v0, "multi_press_timeout"

    .line 2
    .line 3
    const/16 v1, 0x12c

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    const v0, 0x3c75c28f    # 0.015f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getAccessibilityShortcutKeyTimeout()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public getDeviceGlobalActionKeyTimeout()J
    .locals 2

    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public getScaledDoubleTapSlop()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledHorizontalScrollFactor()F
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinScrollbarTouchTarget()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledScrollFactor()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    float-to-int v0, v0

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledVerticalScrollFactor()F
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return v0
.end method

.method public isFadingMarqueeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method
