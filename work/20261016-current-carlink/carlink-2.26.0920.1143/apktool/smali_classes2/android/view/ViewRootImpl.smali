.class public Landroid/view/ViewRootImpl;
.super Landroid/view/AbsViewRootImpl;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/ThreadedRenderer$DrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$HighContrastTextManager;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;,
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;,
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$SyntheticTrackballHandler;,
        Landroid/view/ViewRootImpl$SyntheticInputStage;,
        Landroid/view/ViewRootImpl$ViewPostImeInputStage;,
        Landroid/view/ViewRootImpl$NativePostImeInputStage;,
        Landroid/view/ViewRootImpl$EarlyPostImeInputStage;,
        Landroid/view/ViewRootImpl$ImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPreImeInputStage;,
        Landroid/view/ViewRootImpl$NativePreImeInputStage;,
        Landroid/view/ViewRootImpl$AsyncInputStage;,
        Landroid/view/ViewRootImpl$InputStage;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$WindowStoppedCallback;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
        Landroid/view/ViewRootImpl$ActivityConfigCallback;,
        Landroid/view/ViewRootImpl$ConfigChangedCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_INPUT_STAGES:Z = false

.field private static final DEBUG_KEEP_SCREEN_ON:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MSG_CHECK_FOCUS:I = 0xd

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x15

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final MSG_DIE:I = 0x3

.field private static final MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final MSG_DISPATCH_INPUT_EVENT:I = 0x7

.field private static final MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final MSG_DISPATCH_WINDOW_SHOWN:I = 0x19

.field private static final MSG_DRAW_FINISHED:I = 0x1d

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x16

.field private static final MSG_POINTER_CAPTURE_CHANGED:I = 0x1c

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_REQUEST_KEYBOARD_SHORTCUTS:I = 0x1a

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_SYNTHESIZE_INPUT_EVENT:I = 0x18

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_UPDATE_POINTER_ICON:I = 0x1b

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final MSG_WINDOW_MOVED:I = 0x17

.field private static final PROPERTY_DISABLE_HWACC:Ljava/lang/String; = "debug.disable.hwacc"

.field public static final PROPERTY_EMULATOR_WIN_OUTSET_BOTTOM_PX:Ljava/lang/String; = "ro.emu.win_outset_bottom_px"

.field private static final PROPERTY_PROFILE_DISPATCHINPUT:Ljava/lang/String; = "persist.sys.dispatch_input"

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final PROPERTY_PROFILE_UIAUTOMATOR:Ljava/lang/String; = "persist.sys.uiautomator"

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final USE_MT_RENDERER:Z = true

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field private static sAlwaysAssignFocus:Z

.field private static sCompatibilityDone:Z

.field private static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$ConfigChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/HandlerActionQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedHost:Landroid/view/View;

.field mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field private mActivityRelaunched:Z

.field mAdded:Z

.field mAddedTouchMode:Z

.field private mAppVisibilityChanged:Z

.field mAppVisible:Z

.field mApplyInsetsRequested:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field final mBasePackageName:Ljava/lang/String;

.field private mCanvasOffsetX:I

.field private mCanvasOffsetY:I

.field mChoreographer:Landroid/view/Choreographer;

.field mClientWindowLayoutFlags:I

.field final mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

.field mConsumeBatchedInputImmediatelyScheduled:Z

.field mConsumeBatchedInputScheduled:Z

.field final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field final mContext:Landroid/content/Context;

.field mCurScrollY:I

.field mCurrentDragView:Landroid/view/View;

.field private mCustomPointerIcon:Landroid/view/PointerIcon;

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field final mDispatchContentInsets:Landroid/graphics/Rect;

.field final mDispatchStableInsets:Landroid/graphics/Rect;

.field mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field private mDragResizing:Z

.field mDrawingAllowed:Z

.field mDrawsNeededToReport:I

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field mFirst:Z

.field mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mForceDecorViewVisibility:Z

.field private mForceNextConfigUpdate:Z

.field mForceNextWindowRelayout:Z

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field mHadWindowFocus:Z

.field final mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field mHandlingLayoutInLayoutRequest:Z

.field mHardwareXOffset:I

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHeight:I

.field final mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

.field private mInLayout:Z

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field final mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field private mInvalidateRootRequested:Z

.field mIsAmbientMode:Z

.field public mIsAnimating:Z

.field mIsCreating:Z

.field mIsDrawing:Z

.field mIsInTraversal:Z

.field private final mLastConfigurationFromResources:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastOverscanRequested:Z

.field private final mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

.field mLastScrolledFocus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mLastSystemUiVisibility:I

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastTouchSource:I

.field mLastWasImTarget:Z

.field private mLastWindowInsets:Landroid/view/WindowInsets;

.field mLayoutRequested:Z

.field mLayoutRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field mLostWindowFocus:Z

.field private mNeedsRendererSetup:Z

.field mNewSurfaceNeeded:Z

.field private final mNoncompatDensity:I

.field mOrigWindowType:I

.field mPausedForTransition:Z

.field mPendingAlwaysConsumeNavBar:Z

.field final mPendingBackDropFrame:Landroid/graphics/Rect;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingInputEventCount:I

.field mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

.field mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private final mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

.field final mPendingOutsets:Landroid/graphics/Rect;

.field final mPendingOverscanInsets:Landroid/graphics/Rect;

.field final mPendingStableInsets:Landroid/graphics/Rect;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field mPointerCapture:Z

.field private mPointerIconType:I

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field private mRemoved:Z

.field private mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field private mResizeMode:I

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field mSoftInputMode:I

.field mStopped:Z

.field final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mTag:Ljava/lang/String;

.field final mTargetSdkVersion:I

.field mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalBarrier:I

.field final mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field public mTraversalScheduled:Z

.field mUnbufferedInputDispatch:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mViewLayoutDirectionInitial:I

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I

.field final mWindowCallbacks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWindowCallbacks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

.field final mWindowSession:Landroid/view/IWindowSession;

.field private final mWindowStoppedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$WindowStoppedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 24
    .line 25
    sput-boolean v0, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    .line 26
    .line 27
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 14

    .line 1
    move-object v8, p0

    .line 2
    move-object v9, p1

    .line 3
    invoke-direct {p0}, Landroid/view/AbsViewRootImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, v8, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    iput-object v0, v8, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 17
    .line 18
    new-instance v0, Landroid/util/TypedValue;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, v8, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 24
    .line 25
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, v8, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 31
    .line 32
    const/4 v10, 0x1

    .line 33
    iput-boolean v10, v8, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, v8, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    iput v1, v8, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 40
    .line 41
    iput-boolean v0, v8, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 42
    .line 43
    iput-boolean v0, v8, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    .line 44
    .line 45
    iput-boolean v0, v8, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 46
    .line 47
    iput-boolean v0, v8, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 48
    .line 49
    const-string v2, "pq"

    .line 50
    .line 51
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 52
    .line 53
    iput-boolean v0, v8, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 54
    .line 55
    iput v0, v8, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 56
    .line 57
    new-instance v2, Landroid/view/Surface;

    .line 58
    .line 59
    invoke-direct {v2}, Landroid/view/Surface;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 63
    .line 64
    new-instance v2, Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 70
    .line 71
    new-instance v2, Landroid/graphics/Rect;

    .line 72
    .line 73
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 77
    .line 78
    new-instance v2, Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 84
    .line 85
    new-instance v2, Landroid/graphics/Rect;

    .line 86
    .line 87
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 91
    .line 92
    new-instance v2, Landroid/graphics/Rect;

    .line 93
    .line 94
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    .line 98
    .line 99
    new-instance v2, Landroid/graphics/Rect;

    .line 100
    .line 101
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    .line 105
    .line 106
    new-instance v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 107
    .line 108
    invoke-direct {v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 112
    .line 113
    new-instance v2, Landroid/graphics/Rect;

    .line 114
    .line 115
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    .line 119
    .line 120
    new-instance v2, Landroid/graphics/Rect;

    .line 121
    .line 122
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    .line 126
    .line 127
    new-instance v2, Landroid/content/res/Configuration;

    .line 128
    .line 129
    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    .line 133
    .line 134
    new-instance v2, Landroid/util/MergedConfiguration;

    .line 135
    .line 136
    invoke-direct {v2}, Landroid/util/MergedConfiguration;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 140
    .line 141
    new-instance v2, Landroid/util/MergedConfiguration;

    .line 142
    .line 143
    invoke-direct {v2}, Landroid/util/MergedConfiguration;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 147
    .line 148
    new-instance v2, Landroid/graphics/PointF;

    .line 149
    .line 150
    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 154
    .line 155
    new-instance v2, Landroid/graphics/PointF;

    .line 156
    .line 157
    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 161
    .line 162
    const-wide/16 v2, -0x1

    .line 163
    .line 164
    iput-wide v2, v8, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 165
    .line 166
    iput-wide v2, v8, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 167
    .line 168
    iput v10, v8, Landroid/view/ViewRootImpl;->mPointerIconType:I

    .line 169
    .line 170
    const/4 v2, 0x0

    .line 171
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    .line 172
    .line 173
    new-instance v11, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 174
    .line 175
    invoke-direct {v11, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    .line 176
    .line 177
    .line 178
    iput-object v11, v8, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 179
    .line 180
    iput-boolean v0, v8, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 181
    .line 182
    new-instance v3, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    iput-object v3, v8, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 188
    .line 189
    iput-boolean v0, v8, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 190
    .line 191
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-eqz v3, :cond_0

    .line 196
    .line 197
    new-instance v3, Landroid/view/InputEventConsistencyVerifier;

    .line 198
    .line 199
    invoke-direct {v3, p0, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    .line 200
    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_0
    move-object v3, v2

    .line 204
    :goto_0
    iput-object v3, v8, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 205
    .line 206
    const-string v3, "ViewRootImpl"

    .line 207
    .line 208
    iput-object v3, v8, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 209
    .line 210
    iput-boolean v0, v8, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 211
    .line 212
    new-instance v3, Landroid/view/ViewRootImpl$1;

    .line 213
    .line 214
    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    .line 215
    .line 216
    .line 217
    iput-object v3, v8, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 218
    .line 219
    new-instance v3, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .line 223
    .line 224
    iput-object v3, v8, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    .line 225
    .line 226
    iput v0, v8, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    .line 227
    .line 228
    new-instance v12, Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 229
    .line 230
    invoke-direct {v12, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    .line 231
    .line 232
    .line 233
    iput-object v12, v8, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 234
    .line 235
    new-instance v3, Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 236
    .line 237
    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    .line 238
    .line 239
    .line 240
    iput-object v3, v8, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 241
    .line 242
    new-instance v3, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 243
    .line 244
    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    .line 245
    .line 246
    .line 247
    iput-object v3, v8, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 248
    .line 249
    new-instance v3, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    .line 250
    .line 251
    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    .line 252
    .line 253
    .line 254
    iput-object v3, v8, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    .line 255
    .line 256
    new-instance v3, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    .line 257
    .line 258
    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    .line 259
    .line 260
    .line 261
    iput-object v3, v8, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    .line 262
    .line 263
    iput-object v9, v8, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 264
    .line 265
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    iput-object v3, v8, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 270
    .line 271
    move-object/from16 v4, p2

    .line 272
    .line 273
    iput-object v4, v8, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    iput-object v5, v8, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    .line 280
    .line 281
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    iput-object v5, v8, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 286
    .line 287
    new-instance v5, Landroid/view/WindowLeaked;

    .line 288
    .line 289
    invoke-direct {v5, v2}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iput-object v5, v8, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    .line 293
    .line 294
    invoke-virtual {v5}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 295
    .line 296
    .line 297
    iput v1, v8, Landroid/view/ViewRootImpl;->mWidth:I

    .line 298
    .line 299
    iput v1, v8, Landroid/view/ViewRootImpl;->mHeight:I

    .line 300
    .line 301
    new-instance v1, Landroid/graphics/Rect;

    .line 302
    .line 303
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 304
    .line 305
    .line 306
    iput-object v1, v8, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 307
    .line 308
    new-instance v1, Landroid/graphics/Rect;

    .line 309
    .line 310
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 311
    .line 312
    .line 313
    iput-object v1, v8, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 314
    .line 315
    new-instance v1, Landroid/graphics/Rect;

    .line 316
    .line 317
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 318
    .line 319
    .line 320
    iput-object v1, v8, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 321
    .line 322
    new-instance v1, Landroid/graphics/Rect;

    .line 323
    .line 324
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 325
    .line 326
    .line 327
    iput-object v1, v8, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 328
    .line 329
    new-instance v2, Landroid/view/ViewRootImpl$W;

    .line 330
    .line 331
    invoke-direct {v2, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    .line 332
    .line 333
    .line 334
    iput-object v2, v8, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 335
    .line 336
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 341
    .line 342
    iput v1, v8, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    .line 343
    .line 344
    const/16 v1, 0x8

    .line 345
    .line 346
    iput v1, v8, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 347
    .line 348
    new-instance v1, Landroid/graphics/Region;

    .line 349
    .line 350
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 351
    .line 352
    .line 353
    iput-object v1, v8, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 354
    .line 355
    new-instance v1, Landroid/graphics/Region;

    .line 356
    .line 357
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 358
    .line 359
    .line 360
    iput-object v1, v8, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 361
    .line 362
    iput-boolean v10, v8, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 363
    .line 364
    iput-boolean v0, v8, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 365
    .line 366
    new-instance v13, Landroid/view/View$AttachInfo;

    .line 367
    .line 368
    move-object v0, v13

    .line 369
    move-object v1, v3

    .line 370
    move-object/from16 v3, p2

    .line 371
    .line 372
    move-object v4, p0

    .line 373
    move-object v5, v12

    .line 374
    move-object v6, p0

    .line 375
    move-object v7, p1

    .line 376
    invoke-direct/range {v0 .. v7}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;Landroid/content/Context;)V

    .line 377
    .line 378
    .line 379
    iput-object v13, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 380
    .line 381
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    iput-object v0, v8, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 386
    .line 387
    invoke-virtual {v0, v11, v12}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V

    .line 388
    .line 389
    .line 390
    new-instance v1, Landroid/view/ViewRootImpl$HighContrastTextManager;

    .line 391
    .line 392
    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    .line 393
    .line 394
    .line 395
    iput-object v1, v8, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    .line 396
    .line 397
    invoke-virtual {v0, v1, v12}, Landroid/view/accessibility/AccessibilityManager;->addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Landroid/os/Handler;)V

    .line 398
    .line 399
    .line 400
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    iput-object v0, v8, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 405
    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 415
    .line 416
    iput v0, v8, Landroid/view/ViewRootImpl;->mDensity:I

    .line 417
    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 427
    .line 428
    iput v0, v8, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    .line 429
    .line 430
    new-instance v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    .line 431
    .line 432
    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    .line 433
    .line 434
    .line 435
    iput-object v0, v8, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 436
    .line 437
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    iput-object v0, v8, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 442
    .line 443
    const-string v0, "display"

    .line 444
    .line 445
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 450
    .line 451
    iput-object v0, v8, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 452
    .line 453
    sget-boolean v0, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    .line 454
    .line 455
    if-nez v0, :cond_1

    .line 456
    .line 457
    sput-boolean v10, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    .line 458
    .line 459
    sput-boolean v10, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    .line 460
    .line 461
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    .line 462
    .line 463
    .line 464
    return-void
.end method

.method public static synthetic a(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->postDrawFinished()V

    return-void
.end method

.method public static synthetic access$000(Landroid/view/ViewRootImpl;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return p0
.end method

.method public static synthetic access$100(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method public static synthetic access$1000(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Landroid/view/ViewRootImpl;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(Landroid/view/ViewRootImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handlePointerCaptureChanged(Z)V

    return-void
.end method

.method public static synthetic access$1300(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method public static synthetic access$1400(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    return-object p0
.end method

.method public static synthetic access$1500(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->resetPointerIcon(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic access$1600(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method public static synthetic access$1700(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1800(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeUpdateTooltip(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic access$1902(Landroid/view/ViewRootImpl;I)I
    .locals 0

    iput p1, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    return p1
.end method

.method public static synthetic access$200(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    return-object p0
.end method

.method public static synthetic access$2000(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2902(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    return p1
.end method

.method public static synthetic access$300(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V

    return-void
.end method

.method public static synthetic access$3200(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZI)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Landroid/view/ViewRootImpl;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZI)V

    return-void
.end method

.method public static synthetic access$3300(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Landroid/view/ViewRootImpl;)Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    return-void
.end method

.method public static synthetic access$600(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$700(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic access$800(Landroid/view/ViewRootImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    return-void
.end method

.method public static synthetic access$900(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result p0

    return p0
.end method

.method public static addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method private adjustInputEventForCompatibility(Landroid/view/InputEvent;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroid/view/MotionEvent;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    and-int/lit8 v1, v0, 0x60

    .line 18
    .line 19
    shr-int/lit8 v1, v1, 0x4

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    or-int/2addr v0, v1

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8
    .line 9
    or-int/lit16 v0, v0, 0x80

    .line 10
    .line 11
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 15
    .line 16
    and-int/lit16 v0, v0, -0x81

    .line 17
    .line 18
    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0x80

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    and-int/lit8 v0, v0, 0x4

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 46
    .line 47
    .line 48
    :cond_4
    return v1
.end method

.method private collectViewAttributes()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 9
    .line 10
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 11
    .line 12
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 13
    .line 14
    iput v2, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 15
    .line 16
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 17
    .line 18
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v3, v0, v2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 24
    .line 25
    iget v3, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 26
    .line 27
    iget v4, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    .line 28
    .line 29
    not-int v4, v4

    .line 30
    and-int/2addr v3, v4

    .line 31
    iput v3, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 32
    .line 33
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 34
    .line 35
    invoke-direct {p0, v4}, Landroid/view/ViewRootImpl;->getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    or-int/2addr v3, v5

    .line 40
    iput v3, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 41
    .line 42
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 43
    .line 44
    iget-boolean v3, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 45
    .line 46
    if-ne v3, v1, :cond_0

    .line 47
    .line 48
    iget v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 49
    .line 50
    iget v3, v4, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 51
    .line 52
    if-ne v1, v3, :cond_0

    .line 53
    .line 54
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 55
    .line 56
    iget-boolean v1, v4, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 57
    .line 58
    if-eq v0, v1, :cond_1

    .line 59
    .line 60
    :cond_0
    invoke-direct {p0, v4}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 64
    .line 65
    iget v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 66
    .line 67
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 68
    .line 69
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 70
    .line 71
    iput-boolean v0, v4, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 72
    .line 73
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    return v0

    .line 80
    :cond_1
    return v2
.end method

.method private deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x8

    .line 8
    .line 9
    const-string v3, "deliverInputEvent"

    .line 10
    .line 11
    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSkipIme()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 43
    .line 44
    :goto_0
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method

.method private destroyHardwareRenderer()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setRequested(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-object v2, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 25
    .line 26
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private dipToPx(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    int-to-float p1, p1

    .line 14
    mul-float/2addr v0, p1

    .line 15
    const/high16 p1, 0x3f000000    # 0.5f

    .line 16
    .line 17
    add-float/2addr v0, p1

    .line 18
    float-to-int p1, v0

    .line 19
    return p1
.end method

.method private dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZI)V
    .locals 13

    .line 1
    move-object v1, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object/from16 v3, p3

    .line 5
    .line 6
    move-object/from16 v4, p4

    .line 7
    .line 8
    move-object/from16 v5, p5

    .line 9
    .line 10
    move-object/from16 v6, p8

    .line 11
    .line 12
    move-object/from16 v7, p9

    .line 13
    .line 14
    iget-boolean v8, v1, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 15
    .line 16
    const/4 v9, 0x1

    .line 17
    if-eqz v8, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 24
    .line 25
    monitor-enter v10

    .line 26
    :try_start_0
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v11

    .line 32
    sub-int/2addr v11, v9

    .line 33
    :goto_0
    if-ltz v11, :cond_0

    .line 34
    .line 35
    iget-object v12, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v12

    .line 41
    check-cast v12, Landroid/view/WindowCallbacks;

    .line 42
    .line 43
    invoke-interface {v12, v7, v8, v4, v5}, Landroid/view/WindowCallbacks;->onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v11, v11, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    monitor-exit v10

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_1
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 55
    .line 56
    if-eqz p7, :cond_2

    .line 57
    .line 58
    const/4 v10, 0x5

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/4 v10, 0x4

    .line 61
    :goto_2
    invoke-virtual {v8, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 66
    .line 67
    if-eqz v10, :cond_3

    .line 68
    .line 69
    invoke-virtual {v10, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 70
    .line 71
    .line 72
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 73
    .line 74
    invoke-virtual {v10, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 75
    .line 76
    .line 77
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 78
    .line 79
    invoke-virtual {v10, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 80
    .line 81
    .line 82
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 83
    .line 84
    invoke-virtual {v10, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    if-ne v11, v12, :cond_4

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    const/4 v9, 0x0

    .line 103
    :goto_3
    if-eqz v9, :cond_5

    .line 104
    .line 105
    new-instance v11, Landroid/graphics/Rect;

    .line 106
    .line 107
    invoke-direct {v11, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_5
    move-object v11, v0

    .line 112
    :goto_4
    iput-object v11, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 113
    .line 114
    if-eqz v9, :cond_6

    .line 115
    .line 116
    new-instance v0, Landroid/graphics/Rect;

    .line 117
    .line 118
    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 119
    .line 120
    .line 121
    move-object v3, v0

    .line 122
    :cond_6
    iput-object v3, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 123
    .line 124
    if-eqz v9, :cond_7

    .line 125
    .line 126
    new-instance v0, Landroid/graphics/Rect;

    .line 127
    .line 128
    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 129
    .line 130
    .line 131
    move-object v4, v0

    .line 132
    :cond_7
    iput-object v4, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 133
    .line 134
    if-eqz v9, :cond_8

    .line 135
    .line 136
    if-eqz v6, :cond_8

    .line 137
    .line 138
    new-instance v0, Landroid/util/MergedConfiguration;

    .line 139
    .line 140
    invoke-direct {v0, v6}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    .line 141
    .line 142
    .line 143
    move-object v6, v0

    .line 144
    :cond_8
    iput-object v6, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 145
    .line 146
    if-eqz v9, :cond_9

    .line 147
    .line 148
    new-instance v0, Landroid/graphics/Rect;

    .line 149
    .line 150
    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 151
    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_9
    move-object v0, v2

    .line 155
    :goto_5
    iput-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 156
    .line 157
    if-eqz v9, :cond_a

    .line 158
    .line 159
    new-instance v0, Landroid/graphics/Rect;

    .line 160
    .line 161
    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 162
    .line 163
    .line 164
    move-object v5, v0

    .line 165
    :cond_a
    iput-object v5, v10, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 166
    .line 167
    if-eqz v9, :cond_b

    .line 168
    .line 169
    new-instance v0, Landroid/graphics/Rect;

    .line 170
    .line 171
    move-object/from16 v2, p6

    .line 172
    .line 173
    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 174
    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_b
    move-object/from16 v2, p6

    .line 178
    .line 179
    move-object v0, v2

    .line 180
    :goto_6
    iput-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 181
    .line 182
    if-eqz v9, :cond_c

    .line 183
    .line 184
    new-instance v0, Landroid/graphics/Rect;

    .line 185
    .line 186
    invoke-direct {v0, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 187
    .line 188
    .line 189
    move-object v7, v0

    .line 190
    :cond_c
    iput-object v7, v10, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    .line 191
    .line 192
    move/from16 v0, p10

    .line 193
    .line 194
    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 195
    .line 196
    move/from16 v0, p11

    .line 197
    .line 198
    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 199
    .line 200
    move/from16 v0, p12

    .line 201
    .line 202
    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 203
    .line 204
    iput-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    .line 206
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 207
    .line 208
    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method private draw(Z)V
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    iget-object v2, v8, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 13
    .line 14
    const/4 v9, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    sget-object v3, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 19
    .line 20
    monitor-enter v3

    .line 21
    :try_start_0
    sput-boolean v9, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    move v4, v1

    .line 28
    :goto_0
    if-ge v4, v0, :cond_1

    .line 29
    .line 30
    iget-object v5, v8, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 31
    .line 32
    sget-object v6, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Ljava/lang/Runnable;

    .line 39
    .line 40
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    monitor-exit v3

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw v0

    .line 51
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 52
    invoke-virtual {v8, v0, v1}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 53
    .line 54
    .line 55
    iget-object v3, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 56
    .line 57
    iget-boolean v4, v3, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 58
    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    iput-boolean v1, v3, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 62
    .line 63
    iget-object v3, v3, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v3, v8, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 69
    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    move v10, v9

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    move v10, v1

    .line 81
    :goto_2
    if-eqz v10, :cond_5

    .line 82
    .line 83
    iget-object v3, v8, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    iget v3, v8, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 91
    .line 92
    :goto_3
    iget v4, v8, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 93
    .line 94
    if-eq v4, v3, :cond_7

    .line 95
    .line 96
    iput v3, v8, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 97
    .line 98
    iget-object v4, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 99
    .line 100
    instance-of v5, v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 101
    .line 102
    if-eqz v5, :cond_6

    .line 103
    .line 104
    check-cast v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 105
    .line 106
    invoke-interface {v4, v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 107
    .line 108
    .line 109
    :cond_6
    move v4, v9

    .line 110
    goto :goto_4

    .line 111
    :cond_7
    move/from16 v4, p1

    .line 112
    .line 113
    :goto_4
    iget-object v5, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 114
    .line 115
    iget v6, v5, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 116
    .line 117
    iget-boolean v7, v5, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 118
    .line 119
    iget-object v11, v8, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 120
    .line 121
    iget-object v12, v8, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 122
    .line 123
    if-eqz v12, :cond_9

    .line 124
    .line 125
    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    .line 126
    .line 127
    .line 128
    if-eqz v10, :cond_8

    .line 129
    .line 130
    iget-object v0, v8, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 131
    .line 132
    if-eqz v0, :cond_8

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 135
    .line 136
    .line 137
    :cond_8
    return-void

    .line 138
    :cond_9
    if-eqz v4, :cond_a

    .line 139
    .line 140
    iput-boolean v9, v5, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 141
    .line 142
    iget v4, v8, Landroid/view/ViewRootImpl;->mWidth:I

    .line 143
    .line 144
    int-to-float v4, v4

    .line 145
    mul-float/2addr v4, v6

    .line 146
    const/high16 v5, 0x3f000000    # 0.5f

    .line 147
    .line 148
    add-float/2addr v4, v5

    .line 149
    float-to-int v4, v4

    .line 150
    iget v12, v8, Landroid/view/ViewRootImpl;->mHeight:I

    .line 151
    .line 152
    int-to-float v12, v12

    .line 153
    mul-float/2addr v12, v6

    .line 154
    add-float/2addr v12, v5

    .line 155
    float-to-int v5, v12

    .line 156
    invoke-virtual {v11, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 157
    .line 158
    .line 159
    :cond_a
    iget-object v4, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 160
    .line 161
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 162
    .line 163
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    .line 164
    .line 165
    .line 166
    iget v4, v8, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    .line 167
    .line 168
    neg-int v4, v4

    .line 169
    iget v5, v8, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    .line 170
    .line 171
    neg-int v5, v5

    .line 172
    add-int/2addr v5, v3

    .line 173
    iget-object v3, v8, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 174
    .line 175
    if-eqz v3, :cond_b

    .line 176
    .line 177
    iget-object v0, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 178
    .line 179
    :cond_b
    if-eqz v0, :cond_c

    .line 180
    .line 181
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 182
    .line 183
    sub-int/2addr v4, v3

    .line 184
    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 185
    .line 186
    sub-int/2addr v5, v6

    .line 187
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 188
    .line 189
    invoke-virtual {v11, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 190
    .line 191
    .line 192
    :cond_c
    iget-object v3, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 193
    .line 194
    iget-object v6, v3, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 195
    .line 196
    if-eqz v6, :cond_e

    .line 197
    .line 198
    iget-object v3, v3, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 199
    .line 200
    invoke-direct {v8, v3}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    .line 201
    .line 202
    .line 203
    move-result v12

    .line 204
    if-nez v12, :cond_d

    .line 205
    .line 206
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 207
    .line 208
    .line 209
    :cond_d
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-nez v3, :cond_e

    .line 218
    .line 219
    move v3, v9

    .line 220
    goto :goto_5

    .line 221
    :cond_e
    move v3, v1

    .line 222
    :goto_5
    iget-object v6, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 223
    .line 224
    iget-object v12, v8, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 225
    .line 226
    invoke-virtual {v12}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    .line 227
    .line 228
    .line 229
    move-result-wide v12

    .line 230
    const-wide/32 v14, 0xf4240

    .line 231
    .line 232
    .line 233
    div-long/2addr v12, v14

    .line 234
    iput-wide v12, v6, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 235
    .line 236
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-eqz v6, :cond_f

    .line 241
    .line 242
    iget-boolean v6, v8, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 243
    .line 244
    if-nez v6, :cond_f

    .line 245
    .line 246
    if-eqz v3, :cond_19

    .line 247
    .line 248
    :cond_f
    iget-object v6, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 249
    .line 250
    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 251
    .line 252
    if-eqz v6, :cond_17

    .line 253
    .line 254
    invoke-virtual {v6}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    if-eqz v6, :cond_17

    .line 259
    .line 260
    if-nez v3, :cond_11

    .line 261
    .line 262
    iget-boolean v0, v8, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    .line 263
    .line 264
    if-eqz v0, :cond_10

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_10
    move v0, v1

    .line 268
    goto :goto_7

    .line 269
    :cond_11
    :goto_6
    move v0, v9

    .line 270
    :goto_7
    iput-boolean v1, v8, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    .line 271
    .line 272
    iput-boolean v1, v8, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 273
    .line 274
    iget v2, v8, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 275
    .line 276
    if-ne v2, v5, :cond_12

    .line 277
    .line 278
    iget v2, v8, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    .line 279
    .line 280
    if-eq v2, v4, :cond_13

    .line 281
    .line 282
    :cond_12
    iput v5, v8, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 283
    .line 284
    iput v4, v8, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    .line 285
    .line 286
    move v0, v9

    .line 287
    :cond_13
    if-eqz v0, :cond_14

    .line 288
    .line 289
    iget-object v0, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 290
    .line 291
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 292
    .line 293
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 294
    .line 295
    .line 296
    :cond_14
    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    .line 297
    .line 298
    .line 299
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->updateContentDrawBounds()Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    iget-boolean v2, v8, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 304
    .line 305
    if-eqz v2, :cond_15

    .line 306
    .line 307
    iget-object v2, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 308
    .line 309
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 310
    .line 311
    invoke-virtual {v2, v1}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    .line 312
    .line 313
    .line 314
    :cond_15
    if-eqz v0, :cond_16

    .line 315
    .line 316
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestDrawWindow()V

    .line 317
    .line 318
    .line 319
    :cond_16
    iget-object v0, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 320
    .line 321
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 322
    .line 323
    iget-object v2, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 324
    .line 325
    invoke-virtual {v1, v2, v0, v8}, Landroid/view/ThreadedRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$DrawCallbacks;)V

    .line 326
    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_17
    iget-object v1, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 330
    .line 331
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 332
    .line 333
    if-eqz v1, :cond_18

    .line 334
    .line 335
    invoke-virtual {v1}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-nez v1, :cond_18

    .line 340
    .line 341
    iget-object v1, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 342
    .line 343
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 344
    .line 345
    invoke-virtual {v1}, Landroid/view/ThreadedRenderer;->isRequested()Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_18

    .line 350
    .line 351
    :try_start_1
    iget-object v15, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 352
    .line 353
    iget-object v12, v15, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 354
    .line 355
    iget v13, v8, Landroid/view/ViewRootImpl;->mWidth:I

    .line 356
    .line 357
    iget v14, v8, Landroid/view/ViewRootImpl;->mHeight:I

    .line 358
    .line 359
    iget-object v1, v8, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 360
    .line 361
    move-object/from16 v16, v1

    .line 362
    .line 363
    move-object/from16 v17, v0

    .line 364
    .line 365
    invoke-virtual/range {v12 .. v17}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 366
    .line 367
    .line 368
    iput-boolean v9, v8, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 369
    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    invoke-direct {v8, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 376
    .line 377
    .line 378
    return-void

    .line 379
    :cond_18
    iget-object v3, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 380
    .line 381
    move-object/from16 v1, p0

    .line 382
    .line 383
    move v6, v7

    .line 384
    move-object v7, v11

    .line 385
    invoke-direct/range {v1 .. v7}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-nez v0, :cond_19

    .line 390
    .line 391
    return-void

    .line 392
    :cond_19
    :goto_8
    if-eqz v10, :cond_1a

    .line 393
    .line 394
    iput-boolean v9, v8, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 395
    .line 396
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 397
    .line 398
    .line 399
    :cond_1a
    return-void
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 25
    .line 26
    iget-object p1, p1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z
    .locals 9

    .line 1
    const-string v0, "Could not unlock surface"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    iget v3, p6, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    iget v4, p6, Landroid/graphics/Rect;->top:I

    .line 8
    .line 9
    iget v5, p6, Landroid/graphics/Rect;->right:I

    .line 10
    .line 11
    iget v6, p6, Landroid/graphics/Rect;->bottom:I

    .line 12
    .line 13
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 14
    .line 15
    invoke-virtual {v7, p6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    iget v8, p6, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    if-ne v3, v8, :cond_0

    .line 22
    .line 23
    iget v3, p6, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    if-ne v4, v3, :cond_0

    .line 26
    .line 27
    iget v3, p6, Landroid/graphics/Rect;->right:I

    .line 28
    .line 29
    if-ne v5, v3, :cond_0

    .line 30
    .line 31
    iget v3, p6, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    if-eq v6, v3, :cond_1

    .line 34
    .line 35
    :cond_0
    iput-boolean v1, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 36
    .line 37
    :cond_1
    iget v3, p0, Landroid/view/ViewRootImpl;->mDensity:I

    .line 38
    .line 39
    invoke-virtual {v7, v3}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 40
    .line 41
    .line 42
    :try_start_1
    invoke-virtual {v7}, Landroid/graphics/Canvas;->isOpaque()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    if-nez p4, :cond_2

    .line 49
    .line 50
    if-eqz p3, :cond_3

    .line 51
    .line 52
    :cond_2
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 53
    .line 54
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 58
    .line 59
    .line 60
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 61
    .line 62
    iget-object p6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 63
    .line 64
    iget v3, p6, Landroid/view/View;->mPrivateFlags:I

    .line 65
    .line 66
    or-int/lit8 v3, v3, 0x20

    .line 67
    .line 68
    iput v3, p6, Landroid/view/View;->mPrivateFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .line 70
    neg-int p3, p3

    .line 71
    int-to-float p3, p3

    .line 72
    neg-int p4, p4

    .line 73
    int-to-float p4, p4

    .line 74
    :try_start_2
    invoke-virtual {v7, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    .line 76
    .line 77
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 78
    .line 79
    if-eqz p3, :cond_4

    .line 80
    .line 81
    invoke-virtual {p3, v7}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    if-eqz p5, :cond_5

    .line 85
    .line 86
    iget p3, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    move p3, v2

    .line 90
    :goto_0
    invoke-virtual {v7, p3}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 91
    .line 92
    .line 93
    iput-boolean v2, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 94
    .line 95
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {p3, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v7}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .line 102
    .line 103
    :try_start_3
    iget-boolean p3, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 104
    .line 105
    if-nez p3, :cond_6

    .line 106
    .line 107
    iput-boolean v2, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    .line 109
    :cond_6
    :try_start_4
    invoke-virtual {p1, v7}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 110
    .line 111
    .line 112
    return v1

    .line 113
    :catch_0
    move-exception p1

    .line 114
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .line 118
    .line 119
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 120
    .line 121
    return v2

    .line 122
    :catchall_0
    move-exception p3

    .line 123
    :try_start_5
    iget-boolean p4, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 124
    .line 125
    if-nez p4, :cond_7

    .line 126
    .line 127
    iput-boolean v2, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 128
    .line 129
    :cond_7
    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 130
    :catchall_1
    move-exception p2

    .line 131
    :try_start_6
    invoke-virtual {p1, v7}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    .line 132
    .line 133
    .line 134
    throw p2

    .line 135
    :catch_1
    move-exception p1

    .line 136
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .line 140
    .line 141
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 142
    .line 143
    return v2

    .line 144
    :catch_2
    move-exception p1

    .line 145
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 146
    .line 147
    const-string p3, "Could not lock surface"

    .line 148
    .line 149
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .line 151
    .line 152
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 153
    .line 154
    return v2

    .line 155
    :catch_3
    move-exception p1

    .line 156
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 157
    .line 158
    .line 159
    return v2
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    const-string p1, "null"

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    instance-of v0, p3, Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    check-cast p3, Landroid/view/ViewGroup;

    .line 25
    .line 26
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-gtz v0, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    const-string v1, "  "

    .line 34
    .line 35
    invoke-static {p1, v1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v1, 0x0

    .line 40
    :goto_0
    if-ge v1, v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {p0, p1, p2, v2}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return-void
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 5
    .line 6
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 7
    .line 8
    const-string v0, "debug.disable.hwacc"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "disable hardware acceleration by DEBUG!!!, "

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "ViewRootImpl"

    .line 41
    .line 42
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 52
    .line 53
    const/high16 v2, 0x1000000

    .line 54
    .line 55
    and-int/2addr v0, v2

    .line 56
    const/4 v2, 0x1

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    move v0, v2

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move v0, v1

    .line 62
    :goto_1
    if-eqz v0, :cond_f

    .line 63
    .line 64
    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 72
    .line 73
    and-int/lit8 v3, v0, 0x1

    .line 74
    .line 75
    if-eqz v3, :cond_5

    .line 76
    .line 77
    move v3, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_5
    move v3, v1

    .line 80
    :goto_2
    and-int/lit8 v0, v0, 0x2

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    move v0, v2

    .line 85
    goto :goto_3

    .line 86
    :cond_6
    move v0, v1

    .line 87
    :goto_3
    if-eqz v3, :cond_7

    .line 88
    .line 89
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 90
    .line 91
    iput-boolean v2, p1, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 92
    .line 93
    goto/16 :goto_8

    .line 94
    .line 95
    :cond_7
    sget-boolean v3, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    .line 96
    .line 97
    if-eqz v3, :cond_8

    .line 98
    .line 99
    sget-boolean v3, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    .line 100
    .line 101
    if-eqz v3, :cond_f

    .line 102
    .line 103
    if-eqz v0, :cond_f

    .line 104
    .line 105
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 106
    .line 107
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 108
    .line 109
    if-eqz v0, :cond_9

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 112
    .line 113
    .line 114
    :cond_9
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 115
    .line 116
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 117
    .line 118
    if-nez v3, :cond_b

    .line 119
    .line 120
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 121
    .line 122
    if-nez v3, :cond_b

    .line 123
    .line 124
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 125
    .line 126
    if-nez v3, :cond_b

    .line 127
    .line 128
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 129
    .line 130
    if-eqz v0, :cond_a

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_a
    move v0, v1

    .line 134
    goto :goto_5

    .line 135
    :cond_b
    :goto_4
    move v0, v2

    .line 136
    :goto_5
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 137
    .line 138
    const/4 v4, -0x1

    .line 139
    if-ne v3, v4, :cond_d

    .line 140
    .line 141
    if-eqz v0, :cond_c

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_c
    move v0, v1

    .line 145
    goto :goto_7

    .line 146
    :cond_d
    :goto_6
    move v0, v2

    .line 147
    :goto_7
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_e

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-ne v3, v2, :cond_e

    .line 168
    .line 169
    move v1, v2

    .line 170
    :cond_e
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 171
    .line 172
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {v4, v0, p1}, Landroid/view/ThreadedRenderer;->create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iput-object p1, v3, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 187
    .line 188
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 189
    .line 190
    iget-object p1, p1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 191
    .line 192
    invoke-virtual {p1, v1}, Landroid/view/ThreadedRenderer;->setWideGamut(Z)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 196
    .line 197
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 198
    .line 199
    if-eqz v0, :cond_f

    .line 200
    .line 201
    iput-boolean v2, p1, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 202
    .line 203
    iput-boolean v2, p1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 204
    .line 205
    :cond_f
    :goto_8
    return-void
.end method

.method private endDragResizing()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    :goto_0
    if-ltz v0, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/view/WindowCallbacks;

    .line 25
    .line 26
    invoke-interface {v2}, Landroid/view/WindowCallbacks;->onWindowDragResizeEnd()V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 4
    .line 5
    if-ne v1, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 10
    .line 11
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :goto_0
    return p1
.end method

.method private enterTouchMode()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    return v0

    .line 37
    :cond_0
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    .line 40
    .line 41
    .line 42
    return v3

    .line 43
    :cond_1
    return v1
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    check-cast p0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/high16 v2, 0x40000

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isRootNamespace()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-object v1
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x8

    .line 8
    .line 9
    const-string v3, "deliverInputEvent"

    .line 10
    .line 11
    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 19
    .line 20
    and-int/lit8 v1, v1, 0x8

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/util/TypedValue;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 13
    .line 14
    iget-object v1, v1, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const v2, 0x1110004

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 31
    .line 32
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 33
    .line 34
    iget-object v2, v2, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 45
    .line 46
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    return-object v0
.end method

.method private getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    iget-object v1, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v3, 0x1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, p1, v3}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 51
    .line 52
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 53
    .line 54
    iget v1, v1, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 55
    .line 56
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 57
    .line 58
    .line 59
    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 60
    .line 61
    neg-int v1, v1

    .line 62
    iget v4, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 63
    .line 64
    neg-int v4, v4

    .line 65
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 69
    .line 70
    iget v1, v0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 71
    .line 72
    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 73
    .line 74
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    xor-int/2addr p1, v3

    .line 88
    return p1

    .line 89
    :cond_4
    :goto_1
    return v2
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "audio"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/media/AudioManager;

    .line 20
    .line 21
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v1, "getAudioManager called when there is no mView"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method private getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 15
    .line 16
    .line 17
    :goto_0
    const/4 v1, 0x0

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 24
    .line 25
    instance-of v2, p1, Landroid/view/View;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    check-cast p1, Landroid/view/View;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object p1, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :goto_1
    if-eqz p2, :cond_5

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 43
    .line 44
    .line 45
    return-object p2

    .line 46
    :cond_3
    iget-object p1, p2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 47
    .line 48
    instance-of p2, p1, Landroid/view/View;

    .line 49
    .line 50
    if-eqz p2, :cond_4

    .line 51
    .line 52
    check-cast p1, Landroid/view/View;

    .line 53
    .line 54
    move-object p2, p1

    .line 55
    goto :goto_1

    .line 56
    :cond_4
    move-object p2, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 59
    .line 60
    .line 61
    return-object v1
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, p1, v1

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    add-int/2addr v2, v3

    .line 8
    aput v2, p1, v1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    aget v2, p1, v3

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/RenderNode;->getDebugSize()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/2addr v0, v2

    .line 19
    aput v0, p1, v3

    .line 20
    .line 21
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    check-cast p0, Landroid/view/ViewGroup;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :goto_0
    if-ge v1, v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method private getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I
    .locals 2

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x4000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/16 v0, 0x500

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x8000000

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    or-int/lit16 v0, v0, 0x300

    :cond_1
    return v0
.end method

.method private static getRootMeasureSpec(II)I
    .locals 2

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/high16 p1, -0x80000000

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    :goto_0
    return p0
.end method

.method public static getRunQueue()Landroid/view/HandlerActionQueue;
    .locals 2

    .line 1
    sget-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/view/HandlerActionQueue;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    new-instance v1, Landroid/view/HandlerActionQueue;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/view/HandlerActionQueue;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method private getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v4, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v0, :cond_6

    .line 10
    .line 11
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    check-cast v5, Landroid/view/View;

    .line 16
    .line 17
    if-eqz v5, :cond_5

    .line 18
    .line 19
    iget-object v6, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 20
    .line 21
    if-eqz v6, :cond_5

    .line 22
    .line 23
    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 24
    .line 25
    if-eqz v6, :cond_5

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    .line 30
    .line 31
    const/16 v7, 0x1000

    .line 32
    .line 33
    and-int/2addr v6, v7

    .line 34
    if-ne v6, v7, :cond_5

    .line 35
    .line 36
    :cond_0
    move-object v6, v5

    .line 37
    :goto_1
    if-eqz v6, :cond_3

    .line 38
    .line 39
    iget v7, v6, Landroid/view/View;->mViewFlags:I

    .line 40
    .line 41
    and-int/lit8 v7, v7, 0xc

    .line 42
    .line 43
    const/16 v8, 0x8

    .line 44
    .line 45
    if-ne v7, v8, :cond_1

    .line 46
    .line 47
    const/4 v6, 0x1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    iget-object v6, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 50
    .line 51
    instance-of v7, v6, Landroid/view/View;

    .line 52
    .line 53
    if-eqz v7, :cond_2

    .line 54
    .line 55
    check-cast v6, Landroid/view/View;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move-object v6, v1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move v6, v2

    .line 61
    :goto_2
    if-nez v6, :cond_5

    .line 62
    .line 63
    if-nez v4, :cond_4

    .line 64
    .line 65
    new-instance v4, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_6
    if-nez p2, :cond_9

    .line 77
    .line 78
    :goto_3
    if-ge v2, v0, :cond_9

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Landroid/view/View;

    .line 85
    .line 86
    :goto_4
    if-eqz p2, :cond_8

    .line 87
    .line 88
    iget v3, p2, Landroid/view/View;->mPrivateFlags:I

    .line 89
    .line 90
    and-int/lit16 v5, v3, 0x1000

    .line 91
    .line 92
    if-eqz v5, :cond_8

    .line 93
    .line 94
    and-int/lit16 v3, v3, -0x1001

    .line 95
    .line 96
    iput v3, p2, Landroid/view/View;->mPrivateFlags:I

    .line 97
    .line 98
    iget-object p2, p2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 99
    .line 100
    instance-of v3, p2, Landroid/view/View;

    .line 101
    .line 102
    if-eqz v3, :cond_7

    .line 103
    .line 104
    check-cast p2, Landroid/view/View;

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_7
    move-object p2, v1

    .line 108
    goto :goto_4

    .line 109
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 113
    .line 114
    .line 115
    return-object v4
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 9

    .line 1
    const-string v0, "Reporting drop result: "

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v1, :cond_d

    .line 6
    .line 7
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 8
    .line 9
    if-eqz v2, :cond_d

    .line 10
    .line 11
    iget v2, p1, Landroid/view/DragEvent;->mAction:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x4

    .line 15
    const/4 v5, 0x0

    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    iput-object v5, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 19
    .line 20
    iget-object v3, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    .line 21
    .line 22
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-ne v2, v4, :cond_1

    .line 26
    .line 27
    iput-object v5, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 28
    .line 29
    :cond_1
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 30
    .line 31
    iput-object v3, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    .line 32
    .line 33
    :goto_0
    const/4 v3, 0x6

    .line 34
    if-ne v2, v3, :cond_3

    .line 35
    .line 36
    sget-boolean v0, Landroid/view/View;->sCascadedDragDrop:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0, v5, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_3
    const/4 v1, 0x2

    .line 49
    const/4 v3, 0x3

    .line 50
    if-eq v2, v1, :cond_4

    .line 51
    .line 52
    if-ne v2, v3, :cond_7

    .line 53
    .line 54
    :cond_4
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 55
    .line 56
    iget v7, p1, Landroid/view/DragEvent;->mX:F

    .line 57
    .line 58
    iget v8, p1, Landroid/view/DragEvent;->mY:F

    .line 59
    .line 60
    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 61
    .line 62
    .line 63
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 64
    .line 65
    if-eqz v6, :cond_5

    .line 66
    .line 67
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 68
    .line 69
    invoke-virtual {v6, v7}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 70
    .line 71
    .line 72
    :cond_5
    iget v6, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 73
    .line 74
    if-eqz v6, :cond_6

    .line 75
    .line 76
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    int-to-float v6, v6

    .line 80
    invoke-virtual {v7, v8, v6}, Landroid/graphics/PointF;->offset(FF)V

    .line 81
    .line 82
    .line 83
    :cond_6
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 84
    .line 85
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 86
    .line 87
    iput v7, p1, Landroid/view/DragEvent;->mX:F

    .line 88
    .line 89
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 90
    .line 91
    iput v6, p1, Landroid/view/DragEvent;->mY:F

    .line 92
    .line 93
    :cond_7
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 94
    .line 95
    if-ne v2, v3, :cond_8

    .line 96
    .line 97
    iget-object v7, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 98
    .line 99
    if-eqz v7, :cond_8

    .line 100
    .line 101
    invoke-virtual {v7}, Landroid/content/ClipData;->prepareToEnterProcess()V

    .line 102
    .line 103
    .line 104
    :cond_8
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v7, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-ne v2, v1, :cond_9

    .line 111
    .line 112
    iget-boolean v1, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 113
    .line 114
    if-nez v1, :cond_9

    .line 115
    .line 116
    invoke-virtual {p0, v5, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    .line 117
    .line 118
    .line 119
    :cond_9
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 120
    .line 121
    if-eq v6, v1, :cond_b

    .line 122
    .line 123
    if-eqz v6, :cond_a

    .line 124
    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 126
    .line 127
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 128
    .line 129
    invoke-interface {v1, v6}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 130
    .line 131
    .line 132
    :cond_a
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 133
    .line 134
    if-eqz v1, :cond_b

    .line 135
    .line 136
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 137
    .line 138
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 139
    .line 140
    invoke-interface {v1, v6}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :catch_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 145
    .line 146
    const-string v6, "Unable to note drag target change"

    .line 147
    .line 148
    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :cond_b
    :goto_1
    if-ne v2, v3, :cond_c

    .line 152
    .line 153
    :try_start_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 154
    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 171
    .line 172
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 173
    .line 174
    invoke-interface {v0, v1, v7}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :catch_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 179
    .line 180
    const-string v1, "Unable to report drop result"

    .line 181
    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :cond_c
    :goto_2
    if-ne v2, v4, :cond_d

    .line 186
    .line 187
    iput-object v5, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 188
    .line 189
    invoke-virtual {p0, v5}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 193
    .line 194
    iput-object v5, v0, Landroid/view/View$AttachInfo;->mDragToken:Landroid/os/IBinder;

    .line 195
    .line 196
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    .line 197
    .line 198
    if-eqz v0, :cond_d

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 204
    .line 205
    iput-object v5, v0, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    .line 206
    .line 207
    :cond_d
    :goto_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 208
    .line 209
    .line 210
    return-void
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "OutOfResourcesException initializing HW surface"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 9
    .line 10
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/16 v0, 0x3e8

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "No processes killed for memory; killing self"

    .line 29
    .line 30
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    :catch_0
    :cond_0
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 42
    .line 43
    return-void
.end method

.method private handlePointerCaptureChanged(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method private handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 20
    .line 21
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    and-int/lit8 v5, v4, 0x1

    .line 32
    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 47
    .line 48
    move v5, v2

    .line 49
    :goto_0
    if-eqz v4, :cond_5

    .line 50
    .line 51
    if-nez v5, :cond_5

    .line 52
    .line 53
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityViewId()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-ne p1, v6, :cond_3

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    instance-of v6, v4, Landroid/view/View;

    .line 66
    .line 67
    if-eqz v6, :cond_4

    .line 68
    .line 69
    check-cast v4, Landroid/view/View;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    move-object v4, v3

    .line 73
    goto :goto_0

    .line 74
    :cond_5
    if-nez v5, :cond_6

    .line 75
    .line 76
    return-void

    .line 77
    :cond_6
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    .line 80
    .line 81
    .line 82
    move-result-wide v4

    .line 83
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 88
    .line 89
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 90
    .line 91
    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    iput-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 99
    .line 100
    if-nez v5, :cond_7

    .line 101
    .line 102
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {v1, p1, v0, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, v4}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_7
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen()Landroid/graphics/Rect;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_8

    .line 129
    .line 130
    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v4}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    .line 134
    .line 135
    .line 136
    :cond_8
    :goto_1
    return-void
.end method

.method private invalidateRectOnScreen(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 19
    .line 20
    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 21
    .line 22
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 23
    .line 24
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 25
    .line 26
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 27
    .line 28
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->union(IIII)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 34
    .line 35
    iget p1, p1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 36
    .line 37
    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 38
    .line 39
    int-to-float v1, v1

    .line 40
    mul-float/2addr v1, p1

    .line 41
    const/high16 v2, 0x3f000000    # 0.5f

    .line 42
    .line 43
    add-float/2addr v1, v2

    .line 44
    float-to-int v1, v1

    .line 45
    iget v3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 46
    .line 47
    int-to-float v3, v3

    .line 48
    mul-float/2addr v3, p1

    .line 49
    add-float/2addr v3, v2

    .line 50
    float-to-int p1, v3

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method public static invokeFunctor(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->invokeFunctor(JZ)V

    return-void
.end method

.method private isInLocalFocusMode()Z
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInTouchMode()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return v0

    .line 12
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isTerminalInputEvent(Landroid/view/InputEvent;)Z
    .locals 3

    .line 1
    instance-of v0, p0, Landroid/view/KeyEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast p0, Landroid/view/KeyEvent;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-ne p0, v2, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    :cond_0
    return v1

    .line 17
    :cond_1
    check-cast p0, Landroid/view/MotionEvent;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eq p0, v2, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    if-eq p0, v0, :cond_2

    .line 27
    .line 28
    const/16 v0, 0xa

    .line 29
    .line 30
    if-ne p0, v0, :cond_3

    .line 31
    .line 32
    :cond_2
    move v1, v2

    .line 33
    :cond_3
    return v1
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v1, p0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast p0, Landroid/view/View;

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method private leaveTouchMode()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/high16 v2, 0x40000

    .line 30
    .line 31
    if-eq v0, v2, :cond_1

    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    const/16 v2, 0x82

    .line 36
    .line 37
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    return v0

    .line 48
    :cond_2
    return v1
.end method

.method private maybeHandleWindowMove(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 4
    .line 5
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v1, v2, :cond_1

    .line 9
    .line 10
    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 11
    .line 12
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 20
    :goto_1
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 30
    .line 31
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    iput v2, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 34
    .line 35
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 36
    .line 37
    iput p1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 38
    .line 39
    :cond_3
    if-nez v0, :cond_4

    .line 40
    .line 41
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 42
    .line 43
    iget-boolean p1, p1, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    .line 44
    .line 45
    if-eqz p1, :cond_6

    .line 46
    .line 47
    :cond_4
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 48
    .line 49
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    .line 54
    .line 55
    .line 56
    :cond_5
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 57
    .line 58
    iput-boolean v3, p1, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    .line 59
    .line 60
    :cond_6
    return-void
.end method

.method private maybeUpdateTooltip(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

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
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x9

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 49
    .line 50
    const-string v0, "maybeUpdateTooltip called after view was removed"

    .line 51
    .line 52
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z
    .locals 5

    .line 1
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x1050041

    .line 13
    .line 14
    .line 15
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 16
    .line 17
    invoke-virtual {p3, v1, v4, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 18
    .line 19
    .line 20
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 21
    .line 22
    iget v1, p3, Landroid/util/TypedValue;->type:I

    .line 23
    .line 24
    const/4 v4, 0x5

    .line 25
    if-ne v1, v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {p3, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    float-to-int p3, p3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p3, v3

    .line 34
    :goto_0
    if-eqz p3, :cond_2

    .line 35
    .line 36
    if-le p4, p3, :cond_2

    .line 37
    .line 38
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 39
    .line 40
    invoke-static {p3, v0}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    .line 46
    invoke-static {p5, v1}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/high16 v4, 0x1000000

    .line 58
    .line 59
    and-int/2addr v0, v4

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    :goto_1
    move p3, v2

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    add-int/2addr p3, p4

    .line 65
    div-int/lit8 p3, p3, 0x2

    .line 66
    .line 67
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68
    .line 69
    invoke-static {p3, v0}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    invoke-direct {p0, p3, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    and-int/2addr p3, v4

    .line 81
    if-nez p3, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move p3, v3

    .line 85
    :goto_2
    if-nez p3, :cond_3

    .line 86
    .line 87
    iget p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 88
    .line 89
    invoke-static {p4, p3}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    .line 95
    invoke-static {p5, p2}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-direct {p0, p3, p2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 100
    .line 101
    .line 102
    iget p2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    if-ne p2, p3, :cond_4

    .line 109
    .line 110
    iget p2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eq p2, p1, :cond_3

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_3
    move v2, v3

    .line 120
    :cond_4
    :goto_3
    return v2
.end method

.method private obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 7
    .line 8
    add-int/lit8 v2, v2, -0x1

    .line 9
    .line 10
    iput v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 11
    .line 12
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 13
    .line 14
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 15
    .line 16
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl$1;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 25
    .line 26
    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 27
    .line 28
    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 29
    .line 30
    return-object v0
.end method

.method private performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    new-instance v2, Landroid/content/res/Configuration;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 37
    .line 38
    .line 39
    move-object v0, v2

    .line 40
    :cond_0
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 41
    .line 42
    monitor-enter v1

    .line 43
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-int/lit8 v2, v2, -0x1

    .line 48
    .line 49
    :goto_0
    if-ltz v2, :cond_1

    .line 50
    .line 51
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroid/view/ViewRootImpl$ConfigChangedCallback;

    .line 58
    .line 59
    invoke-interface {v3, v0}, Landroid/view/ViewRootImpl$ConfigChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v2, v2, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 67
    .line 68
    invoke-virtual {v1, v0, p1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 69
    .line 70
    .line 71
    iput-boolean p2, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    .line 72
    .line 73
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 74
    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    invoke-interface {p2, p1, p3}, Landroid/view/ViewRootImpl$ActivityConfigCallback;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    .line 82
    .line 83
    .line 84
    :goto_1
    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    .line 86
    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    throw p1

    .line 91
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    const-string p2, "No merged config provided."

    .line 94
    .line 95
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method

.method private performDraw()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 24
    .line 25
    const-string v1, "draw"

    .line 26
    .line 27
    const-wide/16 v3, 0x8

    .line 28
    .line 29
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->draw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 36
    .line 37
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 41
    .line 42
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    move v1, v2

    .line 51
    :goto_0
    if-ge v1, v0, :cond_2

    .line 52
    .line 53
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 54
    .line 55
    iget-object v3, v3, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroid/view/RenderNode;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/view/RenderNode;->endAllAnimators()V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 70
    .line 71
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 77
    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 81
    .line 82
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 91
    .line 92
    const-string v1, "Window redraw count down interruped!"

    .line 93
    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :goto_1
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 99
    .line 100
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 101
    .line 102
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->fence()V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 110
    .line 111
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 112
    .line 113
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    .line 116
    .line 117
    .line 118
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 119
    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper;

    .line 131
    .line 132
    new-instance v1, Landroid/view/e;

    .line 133
    .line 134
    const/4 v2, 0x2

    .line 135
    invoke-direct {v1, p0, v2}, Landroid/view/e;-><init>(Ljava/lang/Object;I)V

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v1}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 148
    .line 149
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    .line 154
    .line 155
    .line 156
    :cond_7
    :goto_2
    return-void

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 159
    .line 160
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 161
    .line 162
    .line 163
    throw v0
.end method

.method private performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 8
    .line 9
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 10
    .line 11
    if-nez v8, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v2, "layout"

    .line 15
    .line 16
    const-wide/16 v9, 0x8

    .line 17
    .line 18
    invoke-static {v9, v10, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v8, v0, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 30
    .line 31
    .line 32
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 33
    .line 34
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-lez v2, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p0, v2, v0}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    move v4, v0

    .line 57
    :goto_0
    if-ge v4, v3, :cond_1

    .line 58
    .line 59
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Landroid/view/View;

    .line 64
    .line 65
    const-string v6, "View"

    .line 66
    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v11, "requestLayout() improperly called by "

    .line 73
    .line 74
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v11, " during layout: running second layout pass"

    .line 81
    .line 82
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    move-object v2, p0

    .line 109
    move-object v3, v8

    .line 110
    move-object v4, p1

    .line 111
    move v6, p2

    .line 112
    move v7, p3

    .line 113
    invoke-direct/range {v2 .. v7}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    .line 114
    .line 115
    .line 116
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 117
    .line 118
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    invoke-virtual {v8, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 127
    .line 128
    .line 129
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 130
    .line 131
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {p0, p1, v1}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_2

    .line 138
    .line 139
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    new-instance p3, Landroid/view/ViewRootImpl$2;

    .line 144
    .line 145
    invoke-direct {p3, p0, p1}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, p3}, Landroid/view/HandlerActionQueue;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    .line 151
    :cond_2
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 152
    .line 153
    .line 154
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 155
    .line 156
    return-void

    .line 157
    :catchall_0
    move-exception p1

    .line 158
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 159
    .line 160
    .line 161
    throw p1
.end method

.method private performMeasure(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "measure"

    .line 7
    .line 8
    const-wide/16 v1, 0x8

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method private performTraversals()V
    .locals 27

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-object v8, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v8, :cond_8d

    .line 6
    .line 7
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_53

    .line 12
    .line 13
    :cond_0
    const/4 v9, 0x1

    .line 14
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 15
    .line 16
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 17
    .line 18
    iget-object v10, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v11

    .line 24
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget v1, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 30
    .line 31
    if-ne v1, v11, :cond_1

    .line 32
    .line 33
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    :cond_1
    move v13, v9

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v13, v12

    .line 44
    :goto_0
    iput-boolean v12, v7, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    .line 45
    .line 46
    if-nez v0, :cond_5

    .line 47
    .line 48
    iget v0, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    move v0, v9

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move v0, v12

    .line 55
    :goto_1
    if-nez v11, :cond_4

    .line 56
    .line 57
    move v1, v9

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    move v1, v12

    .line 60
    :goto_2
    if-eq v0, v1, :cond_5

    .line 61
    .line 62
    move v0, v9

    .line 63
    goto :goto_3

    .line 64
    :cond_5
    move v0, v12

    .line 65
    :goto_3
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 66
    .line 67
    if-eqz v1, :cond_6

    .line 68
    .line 69
    iput-boolean v12, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 70
    .line 71
    move v14, v9

    .line 72
    move-object v1, v10

    .line 73
    goto :goto_4

    .line 74
    :cond_6
    const/4 v1, 0x0

    .line 75
    move v14, v12

    .line 76
    :goto_4
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 91
    .line 92
    if-ne v2, v3, :cond_8

    .line 93
    .line 94
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 95
    .line 96
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 97
    .line 98
    if-eqz v3, :cond_7

    .line 99
    .line 100
    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 101
    .line 102
    and-int/lit16 v1, v1, -0x81

    .line 103
    .line 104
    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 105
    .line 106
    iput-boolean v12, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_7
    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 110
    .line 111
    or-int/lit16 v1, v1, 0x80

    .line 112
    .line 113
    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 114
    .line 115
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 116
    .line 117
    :goto_5
    move-object v15, v10

    .line 118
    goto :goto_6

    .line 119
    :cond_8
    move-object v15, v1

    .line 120
    :goto_6
    iput v12, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 121
    .line 122
    iget-object v6, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 123
    .line 124
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 125
    .line 126
    const/4 v5, 0x2

    .line 127
    if-eqz v1, :cond_b

    .line 128
    .line 129
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 130
    .line 131
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 132
    .line 133
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v10}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_9

    .line 148
    .line 149
    new-instance v2, Landroid/graphics/Point;

    .line 150
    .line 151
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 152
    .line 153
    .line 154
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 155
    .line 156
    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 157
    .line 158
    .line 159
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 160
    .line 161
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_9
    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 165
    .line 166
    invoke-direct {v7, v2}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    iget v2, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 171
    .line 172
    invoke-direct {v7, v2}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    :goto_7
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 177
    .line 178
    iput-boolean v9, v4, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 179
    .line 180
    iput-boolean v12, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 181
    .line 182
    iput v11, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 183
    .line 184
    iput-boolean v12, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 185
    .line 186
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    .line 187
    .line 188
    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 189
    .line 190
    .line 191
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 192
    .line 193
    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 194
    .line 195
    iput v4, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 196
    .line 197
    iget v4, v7, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    .line 198
    .line 199
    if-ne v4, v5, :cond_a

    .line 200
    .line 201
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 206
    .line 207
    .line 208
    :cond_a
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 209
    .line 210
    invoke-virtual {v8, v1, v12}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 214
    .line 215
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 216
    .line 217
    invoke-virtual {v1, v9}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 221
    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_b
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 233
    .line 234
    if-ne v3, v1, :cond_d

    .line 235
    .line 236
    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 237
    .line 238
    if-eq v2, v1, :cond_c

    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_c
    :goto_8
    move v1, v12

    .line 242
    goto :goto_a

    .line 243
    :cond_d
    :goto_9
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 244
    .line 245
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 246
    .line 247
    move v1, v9

    .line 248
    :goto_a
    if-eqz v13, :cond_12

    .line 249
    .line 250
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 251
    .line 252
    iput v11, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 253
    .line 254
    invoke-virtual {v8, v11}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 255
    .line 256
    .line 257
    if-eqz v0, :cond_f

    .line 258
    .line 259
    if-nez v11, :cond_e

    .line 260
    .line 261
    move v0, v9

    .line 262
    goto :goto_b

    .line 263
    :cond_e
    move v0, v12

    .line 264
    :goto_b
    invoke-virtual {v8, v0}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    .line 265
    .line 266
    .line 267
    :cond_f
    if-nez v11, :cond_10

    .line 268
    .line 269
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 270
    .line 271
    if-eqz v0, :cond_11

    .line 272
    .line 273
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 277
    .line 278
    .line 279
    :cond_11
    const/16 v0, 0x8

    .line 280
    .line 281
    if-ne v11, v0, :cond_12

    .line 282
    .line 283
    iput-boolean v12, v7, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 284
    .line 285
    :cond_12
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 286
    .line 287
    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 288
    .line 289
    if-eqz v0, :cond_13

    .line 290
    .line 291
    invoke-virtual {v8}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 292
    .line 293
    .line 294
    :cond_13
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 299
    .line 300
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 301
    .line 302
    invoke-virtual {v0, v4}, Landroid/view/HandlerActionQueue;->executeActions(Landroid/os/Handler;)V

    .line 303
    .line 304
    .line 305
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 306
    .line 307
    if-eqz v0, :cond_15

    .line 308
    .line 309
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 310
    .line 311
    if-eqz v0, :cond_14

    .line 312
    .line 313
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 314
    .line 315
    if-eqz v0, :cond_15

    .line 316
    .line 317
    :cond_14
    move/from16 v16, v9

    .line 318
    .line 319
    goto :goto_c

    .line 320
    :cond_15
    move/from16 v16, v12

    .line 321
    .line 322
    :goto_c
    if-eqz v16, :cond_1f

    .line 323
    .line 324
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 325
    .line 326
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    iget-boolean v5, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 335
    .line 336
    if-eqz v5, :cond_16

    .line 337
    .line 338
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 339
    .line 340
    iget-boolean v12, v7, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    .line 341
    .line 342
    xor-int/lit8 v0, v12, 0x1

    .line 343
    .line 344
    iput-boolean v0, v5, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 345
    .line 346
    invoke-direct {v7, v12}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 347
    .line 348
    .line 349
    move v0, v1

    .line 350
    move v12, v2

    .line 351
    move/from16 v19, v3

    .line 352
    .line 353
    const/16 v20, 0x0

    .line 354
    .line 355
    goto/16 :goto_f

    .line 356
    .line 357
    :cond_16
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 358
    .line 359
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 360
    .line 361
    iget-object v5, v5, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    .line 362
    .line 363
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    xor-int/2addr v0, v9

    .line 368
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 369
    .line 370
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 371
    .line 372
    iget-object v12, v12, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 373
    .line 374
    invoke-virtual {v5, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    if-nez v5, :cond_17

    .line 379
    .line 380
    move v0, v9

    .line 381
    :cond_17
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 382
    .line 383
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 384
    .line 385
    iget-object v12, v12, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    .line 386
    .line 387
    invoke-virtual {v5, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v5

    .line 391
    if-nez v5, :cond_18

    .line 392
    .line 393
    move v0, v9

    .line 394
    :cond_18
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 395
    .line 396
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 397
    .line 398
    iget-object v12, v12, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 399
    .line 400
    invoke-virtual {v5, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    if-nez v5, :cond_19

    .line 405
    .line 406
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 407
    .line 408
    iget-object v5, v5, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 409
    .line 410
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 411
    .line 412
    invoke-virtual {v5, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 413
    .line 414
    .line 415
    :cond_19
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    .line 416
    .line 417
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 418
    .line 419
    iget-object v12, v12, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    .line 420
    .line 421
    invoke-virtual {v5, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    if-nez v5, :cond_1a

    .line 426
    .line 427
    move v0, v9

    .line 428
    :cond_1a
    iget-boolean v5, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    .line 429
    .line 430
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 431
    .line 432
    iget-boolean v12, v12, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    .line 433
    .line 434
    if-eq v5, v12, :cond_1b

    .line 435
    .line 436
    move v0, v9

    .line 437
    :cond_1b
    iget v5, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 438
    .line 439
    const/4 v12, -0x2

    .line 440
    if-eq v5, v12, :cond_1d

    .line 441
    .line 442
    iget v5, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 443
    .line 444
    if-ne v5, v12, :cond_1c

    .line 445
    .line 446
    goto :goto_d

    .line 447
    :cond_1c
    move/from16 v20, v0

    .line 448
    .line 449
    move v0, v1

    .line 450
    move v12, v2

    .line 451
    move/from16 v19, v3

    .line 452
    .line 453
    goto :goto_f

    .line 454
    :cond_1d
    :goto_d
    invoke-static {v10}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-eqz v1, :cond_1e

    .line 459
    .line 460
    new-instance v1, Landroid/graphics/Point;

    .line 461
    .line 462
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 463
    .line 464
    .line 465
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 466
    .line 467
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 468
    .line 469
    .line 470
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 471
    .line 472
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 473
    .line 474
    goto :goto_e

    .line 475
    :cond_1e
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 480
    .line 481
    invoke-direct {v7, v2}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 486
    .line 487
    invoke-direct {v7, v1}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    :goto_e
    move/from16 v20, v0

    .line 492
    .line 493
    move v12, v1

    .line 494
    move/from16 v19, v2

    .line 495
    .line 496
    move v0, v9

    .line 497
    :goto_f
    move-object/from16 v1, p0

    .line 498
    .line 499
    move-object v2, v8

    .line 500
    move-object v3, v10

    .line 501
    const/16 v17, 0x2

    .line 502
    .line 503
    move/from16 v5, v19

    .line 504
    .line 505
    move-object/from16 v21, v6

    .line 506
    .line 507
    move v6, v12

    .line 508
    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    or-int/2addr v1, v0

    .line 513
    move v0, v1

    .line 514
    move/from16 v6, v19

    .line 515
    .line 516
    goto :goto_10

    .line 517
    :cond_1f
    move/from16 v17, v5

    .line 518
    .line 519
    move-object/from16 v21, v6

    .line 520
    .line 521
    move v0, v1

    .line 522
    move v12, v2

    .line 523
    move v6, v3

    .line 524
    const/16 v20, 0x0

    .line 525
    .line 526
    :goto_10
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    if-eqz v1, :cond_20

    .line 531
    .line 532
    move-object v15, v10

    .line 533
    :cond_20
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 534
    .line 535
    iget-boolean v2, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 536
    .line 537
    if-eqz v2, :cond_21

    .line 538
    .line 539
    const/4 v2, 0x0

    .line 540
    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 541
    .line 542
    move-object v15, v10

    .line 543
    goto :goto_11

    .line 544
    :cond_21
    const/4 v2, 0x0

    .line 545
    :goto_11
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 546
    .line 547
    const/16 v5, 0x20

    .line 548
    .line 549
    if-nez v3, :cond_22

    .line 550
    .line 551
    iget-boolean v3, v1, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 552
    .line 553
    if-eqz v3, :cond_26

    .line 554
    .line 555
    :cond_22
    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 556
    .line 557
    iget v2, v7, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 558
    .line 559
    and-int/lit16 v2, v2, 0xf0

    .line 560
    .line 561
    if-nez v2, :cond_26

    .line 562
    .line 563
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    .line 564
    .line 565
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    const/4 v3, 0x0

    .line 570
    :goto_12
    if-ge v3, v1, :cond_24

    .line 571
    .line 572
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 573
    .line 574
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    .line 575
    .line 576
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    check-cast v4, Landroid/view/View;

    .line 581
    .line 582
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    .line 583
    .line 584
    .line 585
    move-result v4

    .line 586
    if-eqz v4, :cond_23

    .line 587
    .line 588
    const/16 v2, 0x10

    .line 589
    .line 590
    :cond_23
    add-int/lit8 v3, v3, 0x1

    .line 591
    .line 592
    goto :goto_12

    .line 593
    :cond_24
    if-nez v2, :cond_25

    .line 594
    .line 595
    move v2, v5

    .line 596
    :cond_25
    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 597
    .line 598
    and-int/lit16 v3, v1, 0xf0

    .line 599
    .line 600
    if-eq v3, v2, :cond_26

    .line 601
    .line 602
    and-int/lit16 v1, v1, -0xf1

    .line 603
    .line 604
    or-int/2addr v1, v2

    .line 605
    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 606
    .line 607
    move-object v15, v10

    .line 608
    :cond_26
    if-eqz v15, :cond_29

    .line 609
    .line 610
    iget v1, v8, Landroid/view/View;->mPrivateFlags:I

    .line 611
    .line 612
    and-int/lit16 v1, v1, 0x200

    .line 613
    .line 614
    if-eqz v1, :cond_27

    .line 615
    .line 616
    iget v1, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 617
    .line 618
    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    .line 619
    .line 620
    .line 621
    move-result v1

    .line 622
    if-nez v1, :cond_27

    .line 623
    .line 624
    const/4 v1, -0x3

    .line 625
    iput v1, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 626
    .line 627
    :cond_27
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 628
    .line 629
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 630
    .line 631
    const/high16 v3, 0x2000000

    .line 632
    .line 633
    and-int/2addr v2, v3

    .line 634
    if-eqz v2, :cond_28

    .line 635
    .line 636
    move v2, v9

    .line 637
    goto :goto_13

    .line 638
    :cond_28
    const/4 v2, 0x0

    .line 639
    :goto_13
    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    .line 640
    .line 641
    :cond_29
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 642
    .line 643
    if-eqz v1, :cond_2a

    .line 644
    .line 645
    const/4 v1, 0x0

    .line 646
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 647
    .line 648
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 649
    .line 650
    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    .line 651
    .line 652
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 653
    .line 654
    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 655
    .line 656
    .line 657
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 658
    .line 659
    if-eqz v1, :cond_2a

    .line 660
    .line 661
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 662
    .line 663
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    move-object/from16 v1, p0

    .line 672
    .line 673
    move-object v2, v8

    .line 674
    move-object v3, v10

    .line 675
    move v5, v6

    .line 676
    move v9, v6

    .line 677
    move v6, v12

    .line 678
    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    or-int/2addr v0, v1

    .line 683
    goto :goto_14

    .line 684
    :cond_2a
    move v9, v6

    .line 685
    :goto_14
    if-eqz v16, :cond_2b

    .line 686
    .line 687
    const/4 v1, 0x0

    .line 688
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 689
    .line 690
    :cond_2b
    if-eqz v16, :cond_2e

    .line 691
    .line 692
    if-eqz v0, :cond_2e

    .line 693
    .line 694
    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 695
    .line 696
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 697
    .line 698
    .line 699
    move-result v1

    .line 700
    if-ne v0, v1, :cond_2d

    .line 701
    .line 702
    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 703
    .line 704
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 705
    .line 706
    .line 707
    move-result v1

    .line 708
    if-ne v0, v1, :cond_2d

    .line 709
    .line 710
    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 711
    .line 712
    const/4 v1, -0x2

    .line 713
    if-ne v0, v1, :cond_2c

    .line 714
    .line 715
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    .line 716
    .line 717
    .line 718
    move-result v0

    .line 719
    if-ge v0, v9, :cond_2c

    .line 720
    .line 721
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    .line 722
    .line 723
    .line 724
    move-result v0

    .line 725
    iget v2, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 726
    .line 727
    if-ne v0, v2, :cond_2d

    .line 728
    .line 729
    :cond_2c
    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 730
    .line 731
    if-ne v0, v1, :cond_2e

    .line 732
    .line 733
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    if-ge v0, v12, :cond_2e

    .line 738
    .line 739
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 744
    .line 745
    if-eq v0, v1, :cond_2e

    .line 746
    .line 747
    :cond_2d
    const/4 v0, 0x1

    .line 748
    goto :goto_15

    .line 749
    :cond_2e
    const/4 v0, 0x0

    .line 750
    :goto_15
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 751
    .line 752
    if-eqz v1, :cond_2f

    .line 753
    .line 754
    iget v1, v7, Landroid/view/ViewRootImpl;->mResizeMode:I

    .line 755
    .line 756
    if-nez v1, :cond_2f

    .line 757
    .line 758
    const/4 v1, 0x1

    .line 759
    goto :goto_16

    .line 760
    :cond_2f
    const/4 v1, 0x0

    .line 761
    :goto_16
    or-int/2addr v0, v1

    .line 762
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    .line 763
    .line 764
    or-int/2addr v0, v1

    .line 765
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 766
    .line 767
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 768
    .line 769
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    if-nez v1, :cond_31

    .line 774
    .line 775
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 776
    .line 777
    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    .line 778
    .line 779
    if-eqz v1, :cond_30

    .line 780
    .line 781
    goto :goto_17

    .line 782
    :cond_30
    const/4 v9, 0x0

    .line 783
    goto :goto_18

    .line 784
    :cond_31
    :goto_17
    const/4 v9, 0x1

    .line 785
    :goto_18
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 786
    .line 787
    invoke-virtual {v1}, Landroid/view/Surface;->getGenerationId()I

    .line 788
    .line 789
    .line 790
    move-result v12

    .line 791
    if-nez v11, :cond_32

    .line 792
    .line 793
    const/16 v18, 0x1

    .line 794
    .line 795
    goto :goto_19

    .line 796
    :cond_32
    const/16 v18, 0x0

    .line 797
    .line 798
    :goto_19
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 799
    .line 800
    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 801
    .line 802
    if-nez v2, :cond_34

    .line 803
    .line 804
    if-nez v0, :cond_34

    .line 805
    .line 806
    if-nez v20, :cond_34

    .line 807
    .line 808
    if-nez v13, :cond_34

    .line 809
    .line 810
    if-nez v15, :cond_34

    .line 811
    .line 812
    if-eqz v1, :cond_33

    .line 813
    .line 814
    goto :goto_1a

    .line 815
    :cond_33
    move-object/from16 v6, v21

    .line 816
    .line 817
    invoke-direct {v7, v6}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    .line 818
    .line 819
    .line 820
    move/from16 v25, v11

    .line 821
    .line 822
    move/from16 v26, v13

    .line 823
    .line 824
    const/4 v2, 0x0

    .line 825
    const/4 v14, 0x0

    .line 826
    const/4 v15, 0x0

    .line 827
    goto/16 :goto_40

    .line 828
    .line 829
    :cond_34
    :goto_1a
    move-object/from16 v6, v21

    .line 830
    .line 831
    const/4 v3, 0x0

    .line 832
    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 833
    .line 834
    if-eqz v18, :cond_37

    .line 835
    .line 836
    if-eqz v9, :cond_36

    .line 837
    .line 838
    if-nez v2, :cond_35

    .line 839
    .line 840
    if-eqz v13, :cond_36

    .line 841
    .line 842
    :cond_35
    const/4 v0, 0x1

    .line 843
    goto :goto_1b

    .line 844
    :cond_36
    const/4 v0, 0x0

    .line 845
    :goto_1b
    move v5, v0

    .line 846
    goto :goto_1c

    .line 847
    :cond_37
    const/4 v5, 0x0

    .line 848
    :goto_1c
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 849
    .line 850
    if-eqz v0, :cond_38

    .line 851
    .line 852
    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 853
    .line 854
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 855
    .line 856
    .line 857
    const/4 v2, 0x1

    .line 858
    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    .line 859
    .line 860
    :cond_38
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 861
    .line 862
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 863
    .line 864
    .line 865
    move-result v20

    .line 866
    :try_start_0
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 867
    .line 868
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_13

    .line 869
    .line 870
    if-eqz v0, :cond_3a

    .line 871
    .line 872
    :try_start_1
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 873
    .line 874
    invoke-virtual {v0, v2}, Landroid/view/ThreadedRenderer;->pauseSurface(Landroid/view/Surface;)Z

    .line 875
    .line 876
    .line 877
    move-result v0

    .line 878
    if-eqz v0, :cond_39

    .line 879
    .line 880
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 881
    .line 882
    iget v2, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 883
    .line 884
    iget v3, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 885
    .line 886
    const/4 v4, 0x0

    .line 887
    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 888
    .line 889
    .line 890
    :cond_39
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 891
    .line 892
    iget-object v0, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    .line 893
    .line 894
    const-wide/16 v2, 0x1

    .line 895
    .line 896
    invoke-virtual {v0, v2, v3}, Landroid/view/FrameInfo;->addFlags(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 897
    .line 898
    .line 899
    goto :goto_1e

    .line 900
    :catch_0
    move/from16 v25, v11

    .line 901
    .line 902
    move/from16 v26, v13

    .line 903
    .line 904
    move/from16 v24, v14

    .line 905
    .line 906
    const/4 v0, 0x0

    .line 907
    const/4 v2, 0x0

    .line 908
    const/4 v13, 0x0

    .line 909
    const/4 v15, 0x0

    .line 910
    :goto_1d
    const/16 v21, 0x0

    .line 911
    .line 912
    move v14, v5

    .line 913
    move-object v11, v6

    .line 914
    goto/16 :goto_39

    .line 915
    .line 916
    :cond_3a
    :goto_1e
    :try_start_2
    invoke-direct {v7, v15, v11, v5}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    .line 917
    .line 918
    .line 919
    move-result v15
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_13

    .line 920
    :try_start_3
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 921
    .line 922
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 923
    .line 924
    invoke-virtual {v0, v2}, Landroid/util/MergedConfiguration;->equals(Ljava/lang/Object;)Z

    .line 925
    .line 926
    .line 927
    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_12

    .line 928
    if-nez v0, :cond_3c

    .line 929
    .line 930
    :try_start_4
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 931
    .line 932
    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 933
    .line 934
    if-nez v2, :cond_3b

    .line 935
    .line 936
    const/4 v2, 0x1

    .line 937
    goto :goto_1f

    .line 938
    :cond_3b
    const/4 v2, 0x0

    .line 939
    :goto_1f
    const/4 v3, -0x1

    .line 940
    invoke-direct {v7, v0, v2, v3}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 941
    .line 942
    .line 943
    const/16 v21, 0x1

    .line 944
    .line 945
    goto :goto_20

    .line 946
    :catch_1
    move/from16 v25, v11

    .line 947
    .line 948
    move/from16 v26, v13

    .line 949
    .line 950
    move/from16 v24, v14

    .line 951
    .line 952
    const/4 v0, 0x0

    .line 953
    const/4 v2, 0x0

    .line 954
    const/4 v13, 0x0

    .line 955
    goto :goto_1d

    .line 956
    :cond_3c
    const/16 v21, 0x0

    .line 957
    .line 958
    :goto_20
    :try_start_5
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 959
    .line 960
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 961
    .line 962
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    .line 963
    .line 964
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 965
    .line 966
    .line 967
    move-result v0

    .line 968
    if-nez v0, :cond_3d

    .line 969
    .line 970
    const/4 v0, 0x1

    .line 971
    goto :goto_21

    .line 972
    :cond_3d
    const/4 v0, 0x0

    .line 973
    :goto_21
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 974
    .line 975
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 976
    .line 977
    iget-object v3, v3, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 978
    .line 979
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 980
    .line 981
    .line 982
    move-result v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_11

    .line 983
    if-nez v2, :cond_3e

    .line 984
    .line 985
    const/4 v2, 0x1

    .line 986
    goto :goto_22

    .line 987
    :cond_3e
    const/4 v2, 0x0

    .line 988
    :goto_22
    :try_start_6
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 989
    .line 990
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 991
    .line 992
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 993
    .line 994
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 995
    .line 996
    .line 997
    move-result v3

    .line 998
    if-nez v3, :cond_3f

    .line 999
    .line 1000
    const/4 v3, 0x1

    .line 1001
    goto :goto_23

    .line 1002
    :cond_3f
    const/4 v3, 0x0

    .line 1003
    :goto_23
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_10

    .line 1004
    .line 1005
    move/from16 v22, v5

    .line 1006
    .line 1007
    :try_start_7
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1008
    .line 1009
    iget-object v5, v5, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    .line 1010
    .line 1011
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 1012
    .line 1013
    .line 1014
    move-result v4

    .line 1015
    if-nez v4, :cond_40

    .line 1016
    .line 1017
    const/4 v4, 0x1

    .line 1018
    goto :goto_24

    .line 1019
    :cond_40
    const/4 v4, 0x0

    .line 1020
    :goto_24
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_f

    .line 1021
    .line 1022
    move-object/from16 v23, v6

    .line 1023
    .line 1024
    :try_start_8
    iget-object v6, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1025
    .line 1026
    iget-object v6, v6, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    .line 1027
    .line 1028
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 1029
    .line 1030
    .line 1031
    move-result v5
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_d

    .line 1032
    const/4 v6, 0x1

    .line 1033
    xor-int/2addr v5, v6

    .line 1034
    and-int/lit8 v6, v15, 0x20

    .line 1035
    .line 1036
    move/from16 v24, v14

    .line 1037
    .line 1038
    if-eqz v6, :cond_41

    .line 1039
    .line 1040
    const/4 v6, 0x1

    .line 1041
    goto :goto_25

    .line 1042
    :cond_41
    const/4 v6, 0x0

    .line 1043
    :goto_25
    :try_start_9
    iget-boolean v14, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_b

    .line 1044
    .line 1045
    move/from16 v25, v11

    .line 1046
    .line 1047
    :try_start_a
    iget-object v11, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_c

    .line 1048
    .line 1049
    move/from16 v26, v13

    .line 1050
    .line 1051
    :try_start_b
    iget-boolean v13, v11, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    .line 1052
    .line 1053
    if-eq v14, v13, :cond_42

    .line 1054
    .line 1055
    const/4 v13, 0x1

    .line 1056
    goto :goto_26

    .line 1057
    :cond_42
    const/4 v13, 0x0

    .line 1058
    :goto_26
    if-eqz v2, :cond_43

    .line 1059
    .line 1060
    iget-object v11, v11, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 1061
    .line 1062
    iget-object v14, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 1063
    .line 1064
    invoke-virtual {v11, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1065
    .line 1066
    .line 1067
    :cond_43
    if-eqz v0, :cond_44

    .line 1068
    .line 1069
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1070
    .line 1071
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    .line 1072
    .line 1073
    iget-object v11, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 1074
    .line 1075
    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1076
    .line 1077
    .line 1078
    const/4 v2, 0x1

    .line 1079
    :cond_44
    if-eqz v4, :cond_45

    .line 1080
    .line 1081
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1082
    .line 1083
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    .line 1084
    .line 1085
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 1086
    .line 1087
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1088
    .line 1089
    .line 1090
    const/4 v2, 0x1

    .line 1091
    :cond_45
    if-eqz v13, :cond_46

    .line 1092
    .line 1093
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1094
    .line 1095
    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    .line 1096
    .line 1097
    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_e

    .line 1098
    .line 1099
    const/4 v11, 0x1

    .line 1100
    goto :goto_27

    .line 1101
    :cond_46
    move v11, v2

    .line 1102
    :goto_27
    if-nez v11, :cond_47

    .line 1103
    .line 1104
    :try_start_c
    iget v0, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 1105
    .line 1106
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1107
    .line 1108
    iget v4, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1109
    .line 1110
    if-ne v0, v4, :cond_47

    .line 1111
    .line 1112
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 1113
    .line 1114
    if-nez v0, :cond_47

    .line 1115
    .line 1116
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 1117
    .line 1118
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mOverscanRequested:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    .line 1119
    .line 1120
    if-ne v0, v2, :cond_47

    .line 1121
    .line 1122
    if-eqz v5, :cond_48

    .line 1123
    .line 1124
    goto :goto_28

    .line 1125
    :catch_2
    move v2, v11

    .line 1126
    goto/16 :goto_34

    .line 1127
    .line 1128
    :cond_47
    :goto_28
    :try_start_d
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1129
    .line 1130
    iget v2, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1131
    .line 1132
    iput v2, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 1133
    .line 1134
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    .line 1135
    .line 1136
    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 1137
    .line 1138
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    .line 1139
    .line 1140
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    .line 1141
    .line 1142
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1143
    .line 1144
    .line 1145
    const/4 v2, 0x0

    .line 1146
    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 1147
    .line 1148
    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_a

    .line 1149
    .line 1150
    .line 1151
    :cond_48
    if-eqz v3, :cond_49

    .line 1152
    .line 1153
    :try_start_e
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1154
    .line 1155
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 1156
    .line 1157
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 1158
    .line 1159
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1160
    .line 1161
    .line 1162
    :cond_49
    if-nez v20, :cond_4c

    .line 1163
    .line 1164
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 1165
    .line 1166
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 1167
    .line 1168
    .line 1169
    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2

    .line 1170
    if-eqz v0, :cond_52

    .line 1171
    .line 1172
    const/4 v1, 0x1

    .line 1173
    :try_start_f
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1174
    .line 1175
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 1176
    .line 1177
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 1178
    .line 1179
    .line 1180
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1181
    .line 1182
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_6

    .line 1183
    .line 1184
    if-eqz v0, :cond_4b

    .line 1185
    .line 1186
    :try_start_10
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 1187
    .line 1188
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    .line 1189
    .line 1190
    .line 1191
    move-result v1
    :try_end_10
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_6

    .line 1192
    if-eqz v1, :cond_4a

    .line 1193
    .line 1194
    :try_start_11
    iget v0, v8, Landroid/view/View;->mPrivateFlags:I

    .line 1195
    .line 1196
    and-int/lit16 v0, v0, 0x200

    .line 1197
    .line 1198
    if-nez v0, :cond_4a

    .line 1199
    .line 1200
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 1201
    .line 1202
    invoke-virtual {v0}, Landroid/view/Surface;->allocateBuffers()V
    :try_end_11
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_5

    .line 1203
    .line 1204
    .line 1205
    goto :goto_29

    .line 1206
    :catch_3
    move-exception v0

    .line 1207
    goto :goto_2a

    .line 1208
    :cond_4a
    :goto_29
    move v13, v1

    .line 1209
    const/4 v0, 0x1

    .line 1210
    goto/16 :goto_2d

    .line 1211
    .line 1212
    :catch_4
    move-exception v0

    .line 1213
    const/4 v1, 0x0

    .line 1214
    :goto_2a
    :try_start_12
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_5

    .line 1215
    .line 1216
    .line 1217
    return-void

    .line 1218
    :catch_5
    move v13, v1

    .line 1219
    move v2, v11

    .line 1220
    move/from16 v14, v22

    .line 1221
    .line 1222
    move-object/from16 v11, v23

    .line 1223
    .line 1224
    const/4 v0, 0x1

    .line 1225
    goto/16 :goto_39

    .line 1226
    .line 1227
    :cond_4b
    const/4 v0, 0x1

    .line 1228
    goto :goto_2c

    .line 1229
    :catch_6
    move v2, v11

    .line 1230
    move/from16 v14, v22

    .line 1231
    .line 1232
    move-object/from16 v11, v23

    .line 1233
    .line 1234
    const/4 v0, 0x1

    .line 1235
    goto/16 :goto_37

    .line 1236
    .line 1237
    :cond_4c
    :try_start_13
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 1238
    .line 1239
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 1240
    .line 1241
    .line 1242
    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_a

    .line 1243
    if-nez v0, :cond_50

    .line 1244
    .line 1245
    :try_start_14
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    .line 1246
    .line 1247
    if-eqz v0, :cond_4d

    .line 1248
    .line 1249
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 1250
    .line 1251
    .line 1252
    :cond_4d
    const/4 v1, 0x0

    .line 1253
    iput v1, v7, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 1254
    .line 1255
    iput v1, v7, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 1256
    .line 1257
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 1258
    .line 1259
    instance-of v2, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 1260
    .line 1261
    if-eqz v2, :cond_4e

    .line 1262
    .line 1263
    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 1264
    .line 1265
    invoke-interface {v0, v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 1266
    .line 1267
    .line 1268
    :cond_4e
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 1269
    .line 1270
    if-eqz v0, :cond_4f

    .line 1271
    .line 1272
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1273
    .line 1274
    .line 1275
    :cond_4f
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1276
    .line 1277
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 1278
    .line 1279
    if-eqz v0, :cond_52

    .line 1280
    .line 1281
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    .line 1282
    .line 1283
    .line 1284
    move-result v0

    .line 1285
    if-eqz v0, :cond_52

    .line 1286
    .line 1287
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1288
    .line 1289
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 1290
    .line 1291
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_2

    .line 1292
    .line 1293
    .line 1294
    goto :goto_2b

    .line 1295
    :cond_50
    :try_start_15
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 1296
    .line 1297
    invoke-virtual {v0}, Landroid/view/Surface;->getGenerationId()I

    .line 1298
    .line 1299
    .line 1300
    move-result v0

    .line 1301
    if-ne v12, v0, :cond_51

    .line 1302
    .line 1303
    if-nez v6, :cond_51

    .line 1304
    .line 1305
    if-eqz v1, :cond_52

    .line 1306
    .line 1307
    :cond_51
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_a

    .line 1308
    .line 1309
    if-nez v0, :cond_52

    .line 1310
    .line 1311
    :try_start_16
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1312
    .line 1313
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 1314
    .line 1315
    if-eqz v0, :cond_52

    .line 1316
    .line 1317
    const/4 v1, 0x1

    .line 1318
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_2

    .line 1319
    .line 1320
    :try_start_17
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 1321
    .line 1322
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V
    :try_end_17
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_2

    .line 1323
    .line 1324
    .line 1325
    goto :goto_2b

    .line 1326
    :catch_7
    move-exception v0

    .line 1327
    :try_start_18
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_2

    .line 1328
    .line 1329
    .line 1330
    return-void

    .line 1331
    :cond_52
    :goto_2b
    const/4 v0, 0x0

    .line 1332
    :goto_2c
    const/4 v13, 0x0

    .line 1333
    :goto_2d
    and-int/lit8 v1, v15, 0x10

    .line 1334
    .line 1335
    if-eqz v1, :cond_53

    .line 1336
    .line 1337
    const/4 v1, 0x1

    .line 1338
    goto :goto_2e

    .line 1339
    :cond_53
    const/4 v1, 0x0

    .line 1340
    :goto_2e
    and-int/lit8 v2, v15, 0x8

    .line 1341
    .line 1342
    if-eqz v2, :cond_54

    .line 1343
    .line 1344
    const/4 v2, 0x1

    .line 1345
    goto :goto_2f

    .line 1346
    :cond_54
    const/4 v2, 0x0

    .line 1347
    :goto_2f
    if-nez v1, :cond_56

    .line 1348
    .line 1349
    if-eqz v2, :cond_55

    .line 1350
    .line 1351
    goto :goto_30

    .line 1352
    :cond_55
    const/4 v2, 0x0

    .line 1353
    goto :goto_31

    .line 1354
    :cond_56
    :goto_30
    const/4 v2, 0x1

    .line 1355
    :goto_31
    :try_start_19
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 1356
    .line 1357
    if-eq v3, v2, :cond_59

    .line 1358
    .line 1359
    if-eqz v2, :cond_58

    .line 1360
    .line 1361
    if-eqz v1, :cond_57

    .line 1362
    .line 1363
    const/4 v1, 0x0

    .line 1364
    goto :goto_32

    .line 1365
    :cond_57
    const/4 v1, 0x1

    .line 1366
    :goto_32
    iput v1, v7, Landroid/view/ViewRootImpl;->mResizeMode:I

    .line 1367
    .line 1368
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    .line 1369
    .line 1370
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 1371
    .line 1372
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 1373
    .line 1374
    .line 1375
    move-result v3

    .line 1376
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 1377
    .line 1378
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 1379
    .line 1380
    iget v6, v7, Landroid/view/ViewRootImpl;->mResizeMode:I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_9

    .line 1381
    .line 1382
    move-object/from16 v1, p0

    .line 1383
    .line 1384
    move/from16 v14, v22

    .line 1385
    .line 1386
    move/from16 v22, v11

    .line 1387
    .line 1388
    move-object/from16 v11, v23

    .line 1389
    .line 1390
    :try_start_1a
    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1391
    .line 1392
    .line 1393
    goto :goto_33

    .line 1394
    :cond_58
    move/from16 v14, v22

    .line 1395
    .line 1396
    move/from16 v22, v11

    .line 1397
    .line 1398
    move-object/from16 v11, v23

    .line 1399
    .line 1400
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_8

    .line 1401
    .line 1402
    .line 1403
    :catch_8
    :goto_33
    move/from16 v2, v22

    .line 1404
    .line 1405
    goto/16 :goto_39

    .line 1406
    .line 1407
    :catch_9
    :cond_59
    move/from16 v14, v22

    .line 1408
    .line 1409
    move/from16 v22, v11

    .line 1410
    .line 1411
    move-object/from16 v11, v23

    .line 1412
    .line 1413
    goto :goto_33

    .line 1414
    :catch_a
    move/from16 v14, v22

    .line 1415
    .line 1416
    move/from16 v22, v11

    .line 1417
    .line 1418
    move-object/from16 v11, v23

    .line 1419
    .line 1420
    move/from16 v2, v22

    .line 1421
    .line 1422
    goto :goto_36

    .line 1423
    :catch_b
    move/from16 v25, v11

    .line 1424
    .line 1425
    :catch_c
    move/from16 v26, v13

    .line 1426
    .line 1427
    goto :goto_34

    .line 1428
    :catch_d
    move/from16 v25, v11

    .line 1429
    .line 1430
    move/from16 v26, v13

    .line 1431
    .line 1432
    move/from16 v24, v14

    .line 1433
    .line 1434
    :catch_e
    :goto_34
    move/from16 v14, v22

    .line 1435
    .line 1436
    move-object/from16 v11, v23

    .line 1437
    .line 1438
    goto :goto_36

    .line 1439
    :catch_f
    move/from16 v25, v11

    .line 1440
    .line 1441
    move/from16 v26, v13

    .line 1442
    .line 1443
    move/from16 v24, v14

    .line 1444
    .line 1445
    move/from16 v14, v22

    .line 1446
    .line 1447
    goto :goto_35

    .line 1448
    :catch_10
    move/from16 v25, v11

    .line 1449
    .line 1450
    move/from16 v26, v13

    .line 1451
    .line 1452
    move/from16 v24, v14

    .line 1453
    .line 1454
    move v14, v5

    .line 1455
    :goto_35
    move-object v11, v6

    .line 1456
    :goto_36
    const/4 v0, 0x0

    .line 1457
    goto :goto_37

    .line 1458
    :catch_11
    move/from16 v25, v11

    .line 1459
    .line 1460
    move/from16 v26, v13

    .line 1461
    .line 1462
    move/from16 v24, v14

    .line 1463
    .line 1464
    move v14, v5

    .line 1465
    move-object v11, v6

    .line 1466
    const/4 v0, 0x0

    .line 1467
    const/4 v2, 0x0

    .line 1468
    :goto_37
    const/4 v13, 0x0

    .line 1469
    goto :goto_39

    .line 1470
    :catch_12
    move/from16 v25, v11

    .line 1471
    .line 1472
    move/from16 v26, v13

    .line 1473
    .line 1474
    move/from16 v24, v14

    .line 1475
    .line 1476
    move v14, v5

    .line 1477
    move-object v11, v6

    .line 1478
    const/4 v0, 0x0

    .line 1479
    const/4 v2, 0x0

    .line 1480
    const/4 v13, 0x0

    .line 1481
    goto :goto_38

    .line 1482
    :catch_13
    move/from16 v25, v11

    .line 1483
    .line 1484
    move/from16 v26, v13

    .line 1485
    .line 1486
    move/from16 v24, v14

    .line 1487
    .line 1488
    move v14, v5

    .line 1489
    move-object v11, v6

    .line 1490
    const/4 v0, 0x0

    .line 1491
    const/4 v2, 0x0

    .line 1492
    const/4 v13, 0x0

    .line 1493
    const/4 v15, 0x0

    .line 1494
    :goto_38
    const/16 v21, 0x0

    .line 1495
    .line 1496
    :goto_39
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1497
    .line 1498
    iget v3, v11, Landroid/graphics/Rect;->left:I

    .line 1499
    .line 1500
    iput v3, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 1501
    .line 1502
    iget v3, v11, Landroid/graphics/Rect;->top:I

    .line 1503
    .line 1504
    iput v3, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 1505
    .line 1506
    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1507
    .line 1508
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 1509
    .line 1510
    .line 1511
    move-result v3

    .line 1512
    if-ne v1, v3, :cond_5a

    .line 1513
    .line 1514
    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1515
    .line 1516
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 1517
    .line 1518
    .line 1519
    move-result v3

    .line 1520
    if-eq v1, v3, :cond_5b

    .line 1521
    .line 1522
    :cond_5a
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 1523
    .line 1524
    .line 1525
    move-result v1

    .line 1526
    iput v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1527
    .line 1528
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 1529
    .line 1530
    .line 1531
    move-result v1

    .line 1532
    iput v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1533
    .line 1534
    :cond_5b
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1535
    .line 1536
    if-eqz v1, :cond_63

    .line 1537
    .line 1538
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 1539
    .line 1540
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 1541
    .line 1542
    .line 1543
    move-result v1

    .line 1544
    if-eqz v1, :cond_5c

    .line 1545
    .line 1546
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1547
    .line 1548
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 1549
    .line 1550
    iput-object v3, v1, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 1551
    .line 1552
    :cond_5c
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1553
    .line 1554
    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1555
    .line 1556
    iget v4, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1557
    .line 1558
    invoke-virtual {v1, v3, v4}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 1559
    .line 1560
    .line 1561
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1562
    .line 1563
    iget-object v1, v1, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1564
    .line 1565
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1566
    .line 1567
    .line 1568
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 1569
    .line 1570
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 1571
    .line 1572
    .line 1573
    move-result v1

    .line 1574
    if-eqz v1, :cond_61

    .line 1575
    .line 1576
    if-nez v20, :cond_5e

    .line 1577
    .line 1578
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1579
    .line 1580
    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1581
    .line 1582
    .line 1583
    const/4 v1, 0x1

    .line 1584
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 1585
    .line 1586
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1587
    .line 1588
    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v1

    .line 1592
    if-eqz v1, :cond_5d

    .line 1593
    .line 1594
    array-length v3, v1

    .line 1595
    const/4 v4, 0x0

    .line 1596
    :goto_3a
    if-ge v4, v3, :cond_5d

    .line 1597
    .line 1598
    aget-object v5, v1, v4

    .line 1599
    .line 1600
    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1601
    .line 1602
    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1603
    .line 1604
    .line 1605
    add-int/lit8 v4, v4, 0x1

    .line 1606
    .line 1607
    goto :goto_3a

    .line 1608
    :cond_5d
    const/16 v24, 0x1

    .line 1609
    .line 1610
    :cond_5e
    if-nez v24, :cond_5f

    .line 1611
    .line 1612
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 1613
    .line 1614
    invoke-virtual {v1}, Landroid/view/Surface;->getGenerationId()I

    .line 1615
    .line 1616
    .line 1617
    move-result v1

    .line 1618
    if-eq v12, v1, :cond_60

    .line 1619
    .line 1620
    :cond_5f
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1621
    .line 1622
    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v1

    .line 1626
    if-eqz v1, :cond_60

    .line 1627
    .line 1628
    array-length v3, v1

    .line 1629
    const/4 v4, 0x0

    .line 1630
    :goto_3b
    if-ge v4, v3, :cond_60

    .line 1631
    .line 1632
    aget-object v5, v1, v4

    .line 1633
    .line 1634
    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1635
    .line 1636
    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1637
    .line 1638
    iget v12, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1639
    .line 1640
    move/from16 v22, v0

    .line 1641
    .line 1642
    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1643
    .line 1644
    invoke-interface {v5, v6, v11, v12, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1645
    .line 1646
    .line 1647
    add-int/lit8 v4, v4, 0x1

    .line 1648
    .line 1649
    move/from16 v0, v22

    .line 1650
    .line 1651
    goto :goto_3b

    .line 1652
    :cond_60
    move/from16 v22, v0

    .line 1653
    .line 1654
    const/4 v1, 0x0

    .line 1655
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 1656
    .line 1657
    goto :goto_3d

    .line 1658
    :cond_61
    move/from16 v22, v0

    .line 1659
    .line 1660
    if-eqz v20, :cond_64

    .line 1661
    .line 1662
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1663
    .line 1664
    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1665
    .line 1666
    .line 1667
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1668
    .line 1669
    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v0

    .line 1673
    if-eqz v0, :cond_62

    .line 1674
    .line 1675
    array-length v1, v0

    .line 1676
    const/4 v3, 0x0

    .line 1677
    :goto_3c
    if-ge v3, v1, :cond_62

    .line 1678
    .line 1679
    aget-object v4, v0, v3

    .line 1680
    .line 1681
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1682
    .line 1683
    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1684
    .line 1685
    .line 1686
    add-int/lit8 v3, v3, 0x1

    .line 1687
    .line 1688
    goto :goto_3c

    .line 1689
    :cond_62
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1690
    .line 1691
    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1692
    .line 1693
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1694
    .line 1695
    .line 1696
    :try_start_1b
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1697
    .line 1698
    new-instance v1, Landroid/view/Surface;

    .line 1699
    .line 1700
    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    .line 1701
    .line 1702
    .line 1703
    iput-object v1, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1704
    .line 1705
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1706
    .line 1707
    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1708
    .line 1709
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1710
    .line 1711
    .line 1712
    goto :goto_3d

    .line 1713
    :catchall_0
    move-exception v0

    .line 1714
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1715
    .line 1716
    iget-object v1, v1, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1717
    .line 1718
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1719
    .line 1720
    .line 1721
    throw v0

    .line 1722
    :cond_63
    move/from16 v22, v0

    .line 1723
    .line 1724
    :cond_64
    :goto_3d
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1725
    .line 1726
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 1727
    .line 1728
    if-eqz v0, :cond_66

    .line 1729
    .line 1730
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    .line 1731
    .line 1732
    .line 1733
    move-result v1

    .line 1734
    if-eqz v1, :cond_66

    .line 1735
    .line 1736
    if-nez v13, :cond_65

    .line 1737
    .line 1738
    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1739
    .line 1740
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->getWidth()I

    .line 1741
    .line 1742
    .line 1743
    move-result v3

    .line 1744
    if-ne v1, v3, :cond_65

    .line 1745
    .line 1746
    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1747
    .line 1748
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->getHeight()I

    .line 1749
    .line 1750
    .line 1751
    move-result v3

    .line 1752
    if-ne v1, v3, :cond_65

    .line 1753
    .line 1754
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    .line 1755
    .line 1756
    if-eqz v1, :cond_66

    .line 1757
    .line 1758
    :cond_65
    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1759
    .line 1760
    iget v3, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1761
    .line 1762
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1763
    .line 1764
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1765
    .line 1766
    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1767
    .line 1768
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 1769
    .line 1770
    .line 1771
    const/4 v1, 0x0

    .line 1772
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    .line 1773
    .line 1774
    :cond_66
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 1775
    .line 1776
    if-eqz v0, :cond_67

    .line 1777
    .line 1778
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 1779
    .line 1780
    if-eqz v0, :cond_6d

    .line 1781
    .line 1782
    :cond_67
    and-int/lit8 v0, v15, 0x1

    .line 1783
    .line 1784
    if-eqz v0, :cond_68

    .line 1785
    .line 1786
    const/4 v0, 0x1

    .line 1787
    goto :goto_3e

    .line 1788
    :cond_68
    const/4 v0, 0x0

    .line 1789
    :goto_3e
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 1790
    .line 1791
    .line 1792
    move-result v0

    .line 1793
    if-nez v0, :cond_69

    .line 1794
    .line 1795
    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1796
    .line 1797
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 1798
    .line 1799
    .line 1800
    move-result v1

    .line 1801
    if-ne v0, v1, :cond_69

    .line 1802
    .line 1803
    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1804
    .line 1805
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 1806
    .line 1807
    .line 1808
    move-result v1

    .line 1809
    if-ne v0, v1, :cond_69

    .line 1810
    .line 1811
    if-nez v2, :cond_69

    .line 1812
    .line 1813
    if-eqz v21, :cond_6d

    .line 1814
    .line 1815
    :cond_69
    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1816
    .line 1817
    iget v1, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1818
    .line 1819
    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    .line 1820
    .line 1821
    .line 1822
    move-result v0

    .line 1823
    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1824
    .line 1825
    iget v2, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1826
    .line 1827
    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    .line 1828
    .line 1829
    .line 1830
    move-result v1

    .line 1831
    invoke-direct {v7, v0, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1832
    .line 1833
    .line 1834
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 1835
    .line 1836
    .line 1837
    move-result v2

    .line 1838
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 1839
    .line 1840
    .line 1841
    move-result v3

    .line 1842
    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 1843
    .line 1844
    const/4 v5, 0x0

    .line 1845
    cmpl-float v6, v4, v5

    .line 1846
    .line 1847
    const/high16 v11, 0x40000000    # 2.0f

    .line 1848
    .line 1849
    if-lez v6, :cond_6a

    .line 1850
    .line 1851
    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1852
    .line 1853
    sub-int/2addr v0, v2

    .line 1854
    int-to-float v0, v0

    .line 1855
    mul-float/2addr v0, v4

    .line 1856
    float-to-int v0, v0

    .line 1857
    add-int/2addr v2, v0

    .line 1858
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1859
    .line 1860
    .line 1861
    move-result v0

    .line 1862
    const/4 v2, 0x1

    .line 1863
    goto :goto_3f

    .line 1864
    :cond_6a
    const/4 v2, 0x0

    .line 1865
    :goto_3f
    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 1866
    .line 1867
    cmpl-float v5, v4, v5

    .line 1868
    .line 1869
    if-lez v5, :cond_6b

    .line 1870
    .line 1871
    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1872
    .line 1873
    sub-int/2addr v1, v3

    .line 1874
    int-to-float v1, v1

    .line 1875
    mul-float/2addr v1, v4

    .line 1876
    float-to-int v1, v1

    .line 1877
    add-int/2addr v3, v1

    .line 1878
    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1879
    .line 1880
    .line 1881
    move-result v1

    .line 1882
    const/4 v2, 0x1

    .line 1883
    :cond_6b
    if-eqz v2, :cond_6c

    .line 1884
    .line 1885
    invoke-direct {v7, v0, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1886
    .line 1887
    .line 1888
    :cond_6c
    const/16 v16, 0x1

    .line 1889
    .line 1890
    :cond_6d
    move/from16 v2, v22

    .line 1891
    .line 1892
    :goto_40
    and-int/lit8 v0, v15, 0x2

    .line 1893
    .line 1894
    if-eqz v0, :cond_6e

    .line 1895
    .line 1896
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    .line 1897
    .line 1898
    .line 1899
    :cond_6e
    if-eqz v16, :cond_70

    .line 1900
    .line 1901
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 1902
    .line 1903
    if-eqz v0, :cond_6f

    .line 1904
    .line 1905
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 1906
    .line 1907
    if-eqz v0, :cond_70

    .line 1908
    .line 1909
    :cond_6f
    const/4 v0, 0x1

    .line 1910
    goto :goto_41

    .line 1911
    :cond_70
    const/4 v0, 0x0

    .line 1912
    :goto_41
    if-nez v0, :cond_72

    .line 1913
    .line 1914
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1915
    .line 1916
    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1917
    .line 1918
    if-eqz v1, :cond_71

    .line 1919
    .line 1920
    goto :goto_42

    .line 1921
    :cond_71
    const/4 v1, 0x0

    .line 1922
    goto :goto_43

    .line 1923
    :cond_72
    :goto_42
    const/4 v1, 0x1

    .line 1924
    :goto_43
    if-eqz v0, :cond_74

    .line 1925
    .line 1926
    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1927
    .line 1928
    iget v3, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1929
    .line 1930
    invoke-direct {v7, v10, v0, v3}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    .line 1931
    .line 1932
    .line 1933
    iget v0, v8, Landroid/view/View;->mPrivateFlags:I

    .line 1934
    .line 1935
    and-int/lit16 v0, v0, 0x200

    .line 1936
    .line 1937
    if-eqz v0, :cond_74

    .line 1938
    .line 1939
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 1940
    .line 1941
    invoke-virtual {v8, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1942
    .line 1943
    .line 1944
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 1945
    .line 1946
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 1947
    .line 1948
    const/4 v4, 0x0

    .line 1949
    aget v5, v3, v4

    .line 1950
    .line 1951
    const/4 v4, 0x1

    .line 1952
    aget v3, v3, v4

    .line 1953
    .line 1954
    iget v4, v8, Landroid/view/View;->mRight:I

    .line 1955
    .line 1956
    add-int/2addr v4, v5

    .line 1957
    iget v6, v8, Landroid/view/View;->mLeft:I

    .line 1958
    .line 1959
    sub-int/2addr v4, v6

    .line 1960
    iget v6, v8, Landroid/view/View;->mBottom:I

    .line 1961
    .line 1962
    add-int/2addr v6, v3

    .line 1963
    iget v10, v8, Landroid/view/View;->mTop:I

    .line 1964
    .line 1965
    sub-int/2addr v6, v10

    .line 1966
    invoke-virtual {v0, v5, v3, v4, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 1967
    .line 1968
    .line 1969
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 1970
    .line 1971
    invoke-virtual {v8, v0}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 1972
    .line 1973
    .line 1974
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 1975
    .line 1976
    if-eqz v0, :cond_73

    .line 1977
    .line 1978
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 1979
    .line 1980
    invoke-virtual {v0, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 1981
    .line 1982
    .line 1983
    :cond_73
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 1984
    .line 1985
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 1986
    .line 1987
    invoke-virtual {v0, v3}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    .line 1988
    .line 1989
    .line 1990
    move-result v0

    .line 1991
    if-nez v0, :cond_74

    .line 1992
    .line 1993
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 1994
    .line 1995
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 1996
    .line 1997
    invoke-virtual {v0, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1998
    .line 1999
    .line 2000
    const/4 v3, 0x1

    .line 2001
    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2002
    .line 2003
    :try_start_1c
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 2004
    .line 2005
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 2006
    .line 2007
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 2008
    .line 2009
    invoke-interface {v0, v3, v4}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_14

    .line 2010
    .line 2011
    .line 2012
    :catch_14
    :cond_74
    if-eqz v1, :cond_75

    .line 2013
    .line 2014
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2015
    .line 2016
    const/4 v1, 0x0

    .line 2017
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 2018
    .line 2019
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 2020
    .line 2021
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 2022
    .line 2023
    .line 2024
    :cond_75
    if-eqz v9, :cond_78

    .line 2025
    .line 2026
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2027
    .line 2028
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 2029
    .line 2030
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 2031
    .line 2032
    .line 2033
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2034
    .line 2035
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 2036
    .line 2037
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2038
    .line 2039
    .line 2040
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2041
    .line 2042
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    .line 2043
    .line 2044
    .line 2045
    move-result v3

    .line 2046
    const/4 v4, 0x1

    .line 2047
    xor-int/2addr v3, v4

    .line 2048
    iput-boolean v3, v1, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    .line 2049
    .line 2050
    if-nez v14, :cond_76

    .line 2051
    .line 2052
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 2053
    .line 2054
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    .line 2055
    .line 2056
    .line 2057
    move-result v1

    .line 2058
    if-nez v1, :cond_78

    .line 2059
    .line 2060
    :cond_76
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 2061
    .line 2062
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2063
    .line 2064
    .line 2065
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 2066
    .line 2067
    if-eqz v1, :cond_77

    .line 2068
    .line 2069
    iget-object v3, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 2070
    .line 2071
    invoke-virtual {v1, v3}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2072
    .line 2073
    .line 2074
    move-result-object v1

    .line 2075
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 2076
    .line 2077
    iget-object v4, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 2078
    .line 2079
    invoke-virtual {v3, v4}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2080
    .line 2081
    .line 2082
    move-result-object v3

    .line 2083
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 2084
    .line 2085
    iget-object v5, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 2086
    .line 2087
    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    .line 2088
    .line 2089
    .line 2090
    move-result-object v4

    .line 2091
    goto :goto_44

    .line 2092
    :cond_77
    iget-object v1, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 2093
    .line 2094
    iget-object v3, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 2095
    .line 2096
    iget-object v4, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 2097
    .line 2098
    :goto_44
    move-object v12, v1

    .line 2099
    move-object v13, v3

    .line 2100
    move-object v14, v4

    .line 2101
    :try_start_1d
    iget-object v9, v7, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 2102
    .line 2103
    iget-object v10, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 2104
    .line 2105
    iget v11, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    .line 2106
    .line 2107
    invoke-interface/range {v9 .. v14}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_15

    .line 2108
    .line 2109
    .line 2110
    :catch_15
    :cond_78
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 2111
    .line 2112
    if-eqz v0, :cond_79

    .line 2113
    .line 2114
    sget-boolean v0, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    .line 2115
    .line 2116
    if-eqz v0, :cond_79

    .line 2117
    .line 2118
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2119
    .line 2120
    if-eqz v0, :cond_79

    .line 2121
    .line 2122
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 2123
    .line 2124
    .line 2125
    move-result v0

    .line 2126
    if-nez v0, :cond_79

    .line 2127
    .line 2128
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2129
    .line 2130
    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 2131
    .line 2132
    .line 2133
    :cond_79
    if-nez v26, :cond_7a

    .line 2134
    .line 2135
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 2136
    .line 2137
    if-eqz v0, :cond_7b

    .line 2138
    .line 2139
    :cond_7a
    if-eqz v18, :cond_7b

    .line 2140
    .line 2141
    const/4 v0, 0x1

    .line 2142
    goto :goto_45

    .line 2143
    :cond_7b
    const/4 v0, 0x0

    .line 2144
    :goto_45
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2145
    .line 2146
    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 2147
    .line 2148
    if-eqz v1, :cond_7c

    .line 2149
    .line 2150
    if-eqz v18, :cond_7c

    .line 2151
    .line 2152
    const/4 v1, 0x1

    .line 2153
    goto :goto_46

    .line 2154
    :cond_7c
    const/4 v1, 0x0

    .line 2155
    :goto_46
    if-eqz v1, :cond_7d

    .line 2156
    .line 2157
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    .line 2158
    .line 2159
    if-eqz v3, :cond_7d

    .line 2160
    .line 2161
    const/4 v3, 0x1

    .line 2162
    goto :goto_47

    .line 2163
    :cond_7d
    const/4 v3, 0x0

    .line 2164
    :goto_47
    if-eqz v3, :cond_7e

    .line 2165
    .line 2166
    const/4 v4, 0x0

    .line 2167
    iput-boolean v4, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    .line 2168
    .line 2169
    goto :goto_48

    .line 2170
    :cond_7e
    if-nez v1, :cond_7f

    .line 2171
    .line 2172
    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    .line 2173
    .line 2174
    if-eqz v4, :cond_7f

    .line 2175
    .line 2176
    const/4 v4, 0x1

    .line 2177
    iput-boolean v4, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    .line 2178
    .line 2179
    :cond_7f
    :goto_48
    if-nez v0, :cond_81

    .line 2180
    .line 2181
    if-eqz v3, :cond_80

    .line 2182
    .line 2183
    goto :goto_4a

    .line 2184
    :cond_80
    :goto_49
    const/4 v3, 0x0

    .line 2185
    goto :goto_4c

    .line 2186
    :cond_81
    :goto_4a
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 2187
    .line 2188
    if-nez v0, :cond_83

    .line 2189
    .line 2190
    :cond_82
    const/4 v0, 0x0

    .line 2191
    goto :goto_4b

    .line 2192
    :cond_83
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2193
    .line 2194
    const/16 v3, 0x7d5

    .line 2195
    .line 2196
    if-ne v0, v3, :cond_82

    .line 2197
    .line 2198
    const/4 v0, 0x1

    .line 2199
    :goto_4b
    if-nez v0, :cond_80

    .line 2200
    .line 2201
    const/16 v3, 0x20

    .line 2202
    .line 2203
    invoke-virtual {v8, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2204
    .line 2205
    .line 2206
    goto :goto_49

    .line 2207
    :goto_4c
    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 2208
    .line 2209
    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 2210
    .line 2211
    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 2212
    .line 2213
    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    .line 2214
    .line 2215
    move/from16 v3, v25

    .line 2216
    .line 2217
    iput v3, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 2218
    .line 2219
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    .line 2220
    .line 2221
    if-eqz v1, :cond_84

    .line 2222
    .line 2223
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    .line 2224
    .line 2225
    .line 2226
    move-result v0

    .line 2227
    if-nez v0, :cond_84

    .line 2228
    .line 2229
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 2230
    .line 2231
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2232
    .line 2233
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    .line 2234
    .line 2235
    .line 2236
    move-result v0

    .line 2237
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 2238
    .line 2239
    if-eq v0, v3, :cond_84

    .line 2240
    .line 2241
    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 2242
    .line 2243
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 2244
    .line 2245
    .line 2246
    move-result-object v8

    .line 2247
    if-eqz v8, :cond_84

    .line 2248
    .line 2249
    if-eqz v0, :cond_84

    .line 2250
    .line 2251
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2252
    .line 2253
    invoke-virtual {v8, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    .line 2254
    .line 2255
    .line 2256
    iget-object v9, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2257
    .line 2258
    invoke-virtual {v9}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 2259
    .line 2260
    .line 2261
    move-result-object v10

    .line 2262
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 2263
    .line 2264
    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2265
    .line 2266
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 2267
    .line 2268
    const/4 v3, 0x1

    .line 2269
    xor-int/lit8 v12, v1, 0x1

    .line 2270
    .line 2271
    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2272
    .line 2273
    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 2274
    .line 2275
    .line 2276
    goto :goto_4d

    .line 2277
    :cond_84
    const/4 v3, 0x1

    .line 2278
    :goto_4d
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2279
    .line 2280
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 2281
    .line 2282
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 2283
    .line 2284
    .line 2285
    move-result v0

    .line 2286
    if-nez v0, :cond_86

    .line 2287
    .line 2288
    if-nez v18, :cond_85

    .line 2289
    .line 2290
    goto :goto_4e

    .line 2291
    :cond_85
    const/4 v9, 0x0

    .line 2292
    goto :goto_4f

    .line 2293
    :cond_86
    :goto_4e
    move v9, v3

    .line 2294
    :goto_4f
    if-nez v9, :cond_89

    .line 2295
    .line 2296
    if-nez v2, :cond_89

    .line 2297
    .line 2298
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 2299
    .line 2300
    if-eqz v0, :cond_88

    .line 2301
    .line 2302
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2303
    .line 2304
    .line 2305
    move-result v0

    .line 2306
    if-lez v0, :cond_88

    .line 2307
    .line 2308
    const/4 v2, 0x0

    .line 2309
    :goto_50
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 2310
    .line 2311
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2312
    .line 2313
    .line 2314
    move-result v0

    .line 2315
    if-ge v2, v0, :cond_87

    .line 2316
    .line 2317
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 2318
    .line 2319
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2320
    .line 2321
    .line 2322
    move-result-object v0

    .line 2323
    check-cast v0, Landroid/animation/LayoutTransition;

    .line 2324
    .line 2325
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    .line 2326
    .line 2327
    .line 2328
    add-int/lit8 v2, v2, 0x1

    .line 2329
    .line 2330
    goto :goto_50

    .line 2331
    :cond_87
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 2332
    .line 2333
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2334
    .line 2335
    .line 2336
    :cond_88
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()V

    .line 2337
    .line 2338
    .line 2339
    goto :goto_52

    .line 2340
    :cond_89
    if-eqz v18, :cond_8a

    .line 2341
    .line 2342
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2343
    .line 2344
    .line 2345
    goto :goto_52

    .line 2346
    :cond_8a
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 2347
    .line 2348
    if-eqz v0, :cond_8c

    .line 2349
    .line 2350
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2351
    .line 2352
    .line 2353
    move-result v0

    .line 2354
    if-lez v0, :cond_8c

    .line 2355
    .line 2356
    const/4 v2, 0x0

    .line 2357
    :goto_51
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 2358
    .line 2359
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2360
    .line 2361
    .line 2362
    move-result v0

    .line 2363
    if-ge v2, v0, :cond_8b

    .line 2364
    .line 2365
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 2366
    .line 2367
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2368
    .line 2369
    .line 2370
    move-result-object v0

    .line 2371
    check-cast v0, Landroid/animation/LayoutTransition;

    .line 2372
    .line 2373
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 2374
    .line 2375
    .line 2376
    add-int/lit8 v2, v2, 0x1

    .line 2377
    .line 2378
    goto :goto_51

    .line 2379
    :cond_8b
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 2380
    .line 2381
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2382
    .line 2383
    .line 2384
    :cond_8c
    :goto_52
    const/4 v1, 0x0

    .line 2385
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 2386
    .line 2387
    :cond_8d
    :goto_53
    return-void
.end method

.method private postDrawFinished()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private profileRendering(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    .line 6
    .line 7
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    new-instance p1, Landroid/view/ViewRootImpl$3;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 32
    .line 33
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 41
    .line 42
    :cond_3
    :goto_0
    return-void
.end method

.method private recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 3
    .line 4
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 5
    .line 6
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 15
    .line 16
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 17
    .line 18
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 19
    .line 20
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6
    .line 7
    iget v1, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 8
    .line 9
    const/16 v18, 0x1

    .line 10
    .line 11
    const/16 v19, 0x0

    .line 12
    .line 13
    if-eqz v8, :cond_0

    .line 14
    .line 15
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 23
    .line 24
    invoke-virtual {v2, v8}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    move/from16 v20, v18

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move/from16 v20, v19

    .line 31
    .line 32
    :goto_0
    if-eqz v8, :cond_1

    .line 33
    .line 34
    iget v2, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 35
    .line 36
    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 37
    .line 38
    if-eq v2, v3, :cond_1

    .line 39
    .line 40
    iget v2, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    .line 41
    .line 42
    const/16 v3, 0xe

    .line 43
    .line 44
    if-ge v2, v3, :cond_1

    .line 45
    .line 46
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, "Window type can not be changed after the window is added; ignoring change of "

    .line 51
    .line 52
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    iget v2, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 68
    .line 69
    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 70
    .line 71
    :cond_1
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 72
    .line 73
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 74
    .line 75
    iget v4, v0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 76
    .line 77
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    int-to-float v5, v5

    .line 84
    mul-float/2addr v5, v1

    .line 85
    const/high16 v6, 0x3f000000    # 0.5f

    .line 86
    .line 87
    add-float/2addr v5, v6

    .line 88
    float-to-int v5, v5

    .line 89
    iget-object v7, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    int-to-float v7, v7

    .line 96
    mul-float/2addr v7, v1

    .line 97
    add-float/2addr v7, v6

    .line 98
    float-to-int v6, v7

    .line 99
    iget-object v9, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 100
    .line 101
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 102
    .line 103
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 104
    .line 105
    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 106
    .line 107
    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 108
    .line 109
    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    .line 110
    .line 111
    iget-object v15, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    .line 112
    .line 113
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 114
    .line 115
    move-object/from16 v16, v1

    .line 116
    .line 117
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 118
    .line 119
    move-object/from16 v17, v1

    .line 120
    .line 121
    move-object v1, v2

    .line 122
    move-object v2, v3

    .line 123
    move v3, v4

    .line 124
    move-object/from16 v4, p1

    .line 125
    .line 126
    move/from16 v7, p2

    .line 127
    .line 128
    move/from16 v8, p3

    .line 129
    .line 130
    invoke-interface/range {v1 .. v17}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    and-int/lit8 v2, v1, 0x40

    .line 135
    .line 136
    if-eqz v2, :cond_2

    .line 137
    .line 138
    move/from16 v2, v18

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    move/from16 v2, v19

    .line 142
    .line 143
    :goto_1
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    .line 144
    .line 145
    if-eqz v20, :cond_3

    .line 146
    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 148
    .line 149
    .line 150
    :cond_3
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 151
    .line 152
    if-eqz v2, :cond_4

    .line 153
    .line 154
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 155
    .line 156
    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 157
    .line 158
    .line 159
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 160
    .line 161
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 162
    .line 163
    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 164
    .line 165
    .line 166
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 167
    .line 168
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 169
    .line 170
    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 171
    .line 172
    .line 173
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 174
    .line 175
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 176
    .line 177
    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 178
    .line 179
    .line 180
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 181
    .line 182
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 183
    .line 184
    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 185
    .line 186
    .line 187
    :cond_4
    return v1
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private reportDrawFinished()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method private reportNextDraw()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->drawPending()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 10
    .line 11
    return-void
.end method

.method private requestDrawWindow()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    :goto_0
    if-ltz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/view/WindowCallbacks;

    .line 35
    .line 36
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 37
    .line 38
    invoke-interface {v1, v2}, Landroid/view/WindowCallbacks;->onRequestDraw(Z)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method private resetPointerIcon(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private scheduleProcessInputEvents()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 7
    .line 8
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 9
    .line 10
    const/16 v2, 0x13

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private setTag()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\\."

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    array-length v1, v0

    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "ViewRootImpl["

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    array-length v2, v0

    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    aget-object v0, v0, v2

    .line 31
    .line 32
    const-string v2, "]"

    .line 33
    .line 34
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method private static shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7de

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7db

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 7
    .line 8
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v1, v0

    .line 15
    :goto_0
    if-ltz v1, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    move-object v3, v2

    .line 24
    check-cast v3, Landroid/view/WindowCallbacks;

    .line 25
    .line 26
    move-object v4, p1

    .line 27
    move v5, p2

    .line 28
    move-object v6, p3

    .line 29
    move-object v7, p4

    .line 30
    move v8, p5

    .line 31
    invoke-interface/range {v3 .. v8}, Landroid/view/WindowCallbacks;->onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method private trackFPS()V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v2, v2, v4

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-gez v2, :cond_0

    .line 13
    .line 14
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 15
    .line 16
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 17
    .line 18
    iput v3, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    iput v2, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 26
    .line 27
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 36
    .line 37
    sub-long v4, v0, v4

    .line 38
    .line 39
    iget-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 40
    .line 41
    sub-long v6, v0, v6

    .line 42
    .line 43
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v9, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v10, "0x"

    .line 48
    .line 49
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v11, "\tFrame time:\t"

    .line 56
    .line 57
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 71
    .line 72
    const-wide/16 v4, 0x3e8

    .line 73
    .line 74
    cmp-long v4, v6, v4

    .line 75
    .line 76
    if-lez v4, :cond_1

    .line 77
    .line 78
    iget v4, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 79
    .line 80
    int-to-float v4, v4

    .line 81
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 82
    .line 83
    mul-float/2addr v4, v5

    .line 84
    long-to-float v5, v6

    .line 85
    div-float/2addr v4, v5

    .line 86
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, "\tFPS:\t"

    .line 97
    .line 98
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 112
    .line 113
    iput v3, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 114
    .line 115
    :cond_1
    :goto_0
    return-void
.end method

.method private updateContentDrawBounds()Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ltz v0, :cond_0

    .line 12
    .line 13
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Landroid/view/WindowCallbacks;

    .line 20
    .line 21
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 26
    .line 27
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 28
    .line 29
    iget v7, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 30
    .line 31
    iget v8, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 32
    .line 33
    invoke-interface {v4, v6, v5, v7, v8}, Landroid/view/WindowCallbacks;->onContentDrawn(IIII)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    or-int/2addr v3, v4

    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v1, v2

    .line 51
    :goto_1
    or-int v0, v3, v1

    .line 52
    .line 53
    return v0
.end method

.method private updatePointerIcon(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 3
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 4
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "updatePointerIcon called after view was removed"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v4, 0x0

    cmpg-float v5, v1, v4

    if-ltz v5, :cond_5

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gez v1, :cond_5

    cmpg-float v1, v2, v4

    if-ltz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/PointerIcon;->getType()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e8

    .line 8
    :goto_0
    iget v1, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v0, :cond_3

    .line 9
    iput v0, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    if-eq v0, v3, :cond_3

    .line 11
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    return v2

    .line 12
    :cond_3
    iget v0, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/PointerIcon;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    .line 15
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    :cond_4
    return v2

    .line 16
    :cond_5
    :goto_1
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "updatePointerIcon called with position out of bounds"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public addWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public addWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public canResolveLayoutDirection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextAlignment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextDirection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public changeCanvasOpacity(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "changeCanvasOpacity: opaque="

    .line 4
    .line 5
    invoke-static {v1, p1, v0}, Landroid/accessibilityservice/c;->z(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 9
    .line 10
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public checkThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    .line 11
    .line 12
    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    return-void
.end method

.method public debug()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    return-void
.end method

.method public destroyHardwareResources()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13
    .line 14
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public detachFunctor(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/ThreadedRenderer;->stopDrawing()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public die(Z)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_0
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Attempting to destroy the window while drawing!\n  window="

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", title="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 54
    .line 55
    const/4 v0, 0x3

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    return p1
.end method

.method public dispatchAppVisibility(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public dispatchApplyInsets(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->getWindowInsets(Z)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    return-void
.end method

.method public dispatchCheckFocus()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xe

    .line 6
    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public dispatchDetachedFromWindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 28
    .line 29
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 35
    .line 36
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0, v0}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 57
    .line 58
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 59
    .line 60
    iput-object v0, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 61
    .line 62
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 72
    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/view/InputQueue;->dispose()V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 84
    .line 85
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 86
    .line 87
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 95
    .line 96
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 97
    .line 98
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 99
    .line 100
    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    :catch_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 104
    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 111
    .line 112
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 113
    .line 114
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v1, 0xf

    .line 17
    .line 18
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public dispatchMoved(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/PointF;

    .line 6
    .line 7
    int-to-float p1, p1

    .line 8
    int-to-float p2, p2

    .line 9
    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 15
    .line 16
    .line 17
    iget p1, v0, Landroid/graphics/PointF;->x:F

    .line 18
    .line 19
    float-to-double p1, p1

    .line 20
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 21
    .line 22
    add-double/2addr p1, v1

    .line 23
    double-to-int p1, p1

    .line 24
    iget p2, v0, Landroid/graphics/PointF;->y:F

    .line 25
    .line 26
    float-to-double v3, p2

    .line 27
    add-double/2addr v3, v1

    .line 28
    double-to-int p2, v3

    .line 29
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 30
    .line 31
    const/16 v1, 0x17

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public dispatchPointerCaptureChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    .line 7
    .line 8
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 9
    .line 10
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    .line 11
    .line 12
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 13
    .line 14
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 15
    .line 16
    const/16 p2, 0x11

    .line 17
    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/view/MotionEvent;

    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->synthesizeInputEvent(Landroid/view/InputEvent;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public dispatchWindowShown()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public doConsumeBatchedInput(J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/view/InputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    cmp-long p1, p1, v0

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public doDie()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    .line 13
    .line 14
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_5

    .line 25
    .line 26
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 27
    .line 28
    if-nez v1, :cond_5

    .line 29
    .line 30
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 34
    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget v3, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 42
    .line 43
    if-eq v3, v1, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v0, v2

    .line 47
    :goto_0
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 54
    .line 55
    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    and-int/lit8 v0, v0, 0x2

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 64
    .line 65
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 66
    .line 67
    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    :catch_0
    :cond_4
    :try_start_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 73
    .line 74
    .line 75
    :cond_5
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 76
    .line 77
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    throw v0
.end method

.method public doProcessInputEvents()V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7
    .line 8
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 14
    .line 15
    :cond_0
    iput-object v3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 16
    .line 17
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 18
    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 20
    .line 21
    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 22
    .line 23
    const-wide/16 v3, 0x4

    .line 24
    .line 25
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v3, v4, v5, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/InputEvent;->getEventTimeNano()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iget-object v4, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 37
    .line 38
    instance-of v5, v4, Landroid/view/MotionEvent;

    .line 39
    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    check-cast v4, Landroid/view/MotionEvent;

    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-lez v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {v4, v1}, Landroid/view/MotionEvent;->getHistoricalEventTimeNano(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-wide v4, v2

    .line 56
    :goto_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 57
    .line 58
    iget-object v1, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/FrameInfo;->updateInputEventTime(JJ)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 72
    .line 73
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 74
    .line 75
    const/16 v1, 0x13

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method public doTraversal()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 7
    .line 8
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget v2, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 21
    .line 22
    .line 23
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-string v1, "ViewAncestor"

    .line 28
    .line 29
    invoke-static {v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    .line 33
    .line 34
    .line 35
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 40
    .line 41
    .line 42
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public doTrimForeground()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13
    .line 14
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v0
.end method

.method public drawPending()V
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p4, "  "

    .line 10
    .line 11
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p4, "ViewRoot:"

    .line 22
    .line 23
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p4, "mAdded="

    .line 30
    .line 31
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean p4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 35
    .line 36
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Z)V

    .line 37
    .line 38
    .line 39
    const-string p4, " mRemoved="

    .line 40
    .line 41
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-boolean p4, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    .line 45
    .line 46
    const-string v0, "mConsumeBatchedInputScheduled="

    .line 47
    .line 48
    invoke-static {p3, p4, p2, v0}, Landroid/accessibilityservice/c;->y(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-boolean p4, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 52
    .line 53
    const-string v0, "mConsumeBatchedInputImmediatelyScheduled="

    .line 54
    .line 55
    invoke-static {p3, p4, p2, v0}, Landroid/accessibilityservice/c;->y(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-boolean p4, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    .line 59
    .line 60
    const-string v0, "mPendingInputEventCount="

    .line 61
    .line 62
    invoke-static {p3, p4, p2, v0}, Landroid/accessibilityservice/c;->y(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget p4, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 66
    .line 67
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p4, "mProcessInputEventsScheduled="

    .line 74
    .line 75
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-boolean p4, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 79
    .line 80
    const-string v0, "mTraversalScheduled="

    .line 81
    .line 82
    invoke-static {p3, p4, p2, v0}, Landroid/accessibilityservice/c;->y(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-boolean p4, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 86
    .line 87
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p4, "mIsAmbientMode="

    .line 94
    .line 95
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-boolean p4, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    .line 99
    .line 100
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Z)V

    .line 101
    .line 102
    .line 103
    iget-boolean p4, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 104
    .line 105
    if-eqz p4, :cond_0

    .line 106
    .line 107
    const-string p4, " (barrier="

    .line 108
    .line 109
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget p4, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    .line 113
    .line 114
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 115
    .line 116
    .line 117
    const-string p4, ")"

    .line 118
    .line 119
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 124
    .line 125
    .line 126
    :goto_0
    iget-object p4, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 127
    .line 128
    invoke-virtual {p4, p2, p3}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 129
    .line 130
    .line 131
    iget-object p4, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 132
    .line 133
    invoke-virtual {p4, p1, p3}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string p1, "View Hierarchy:"

    .line 140
    .line 141
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 145
    .line 146
    invoke-direct {p0, p2, p3, p1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public dumpGfxInfo([I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    aput v1, p1, v0

    .line 4
    .line 5
    aput v1, p1, v1

    .line 6
    .line 7
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public enqueueInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    return-void
.end method

.method public enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->adjustInputEventForCompatibility(Landroid/view/InputEvent;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object p1

    .line 4
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez p2, :cond_0

    .line 5
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 9
    :goto_0
    iget p1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    const-wide/16 p2, 0x4

    .line 10
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    invoke-static {p2, p3, v0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    if-eqz p4, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_1

    .line 12
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    :goto_1
    return-void
.end method

.method public ensureTouchMode(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 5
    .line 6
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 17
    .line 18
    check-cast v1, Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-boolean v0, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    check-cast v1, Landroid/view/ViewGroup;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/high16 v2, 0x40000

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/view/AccessibilityInteractionController;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2
    .line 3
    if-ne p1, p3, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 6
    .line 7
    iget p3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p2, v0, v0, p1, p3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    const-string p2, "child is not mine, honest!"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public getDisplayId()I
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getHostVisibility()I
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 4
    .line 5
    float-to-int v1, v1

    .line 6
    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 7
    .line 8
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 9
    .line 10
    float-to-int v0, v0

    .line 11
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 12
    .line 13
    return-void
.end method

.method public getLastTouchSource()I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mLastTouchSource:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTextDirection()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowFlags()I
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return v0
.end method

.method public getWindowInsets(Z)Landroid/view/WindowInsets;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10
    .line 11
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 19
    .line 20
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    .line 26
    .line 27
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 50
    .line 51
    :cond_2
    move-object v4, v1

    .line 52
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 53
    .line 54
    iget-object p1, p1, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    .line 55
    .line 56
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 57
    .line 58
    if-gtz v1, :cond_4

    .line 59
    .line 60
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    if-gtz v1, :cond_4

    .line 63
    .line 64
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 65
    .line 66
    if-gtz v1, :cond_4

    .line 67
    .line 68
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 69
    .line 70
    if-lez v1, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    move-object v2, v0

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    .line 76
    .line 77
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 78
    .line 79
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 80
    .line 81
    add-int/2addr v2, v3

    .line 82
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 83
    .line 84
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 85
    .line 86
    add-int/2addr v3, v5

    .line 87
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 88
    .line 89
    iget v6, p1, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    add-int/2addr v5, v6

    .line 92
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 93
    .line 94
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 95
    .line 96
    add-int/2addr v0, p1

    .line 97
    invoke-direct {v1, v2, v3, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    .line 99
    .line 100
    move-object v2, v1

    .line 101
    :goto_1
    new-instance p1, Landroid/view/WindowInsets;

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 119
    .line 120
    iget-boolean v6, v0, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    .line 121
    .line 122
    move-object v1, p1

    .line 123
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    .line 127
    .line 128
    :cond_5
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    .line 129
    .line 130
    return-object p1
.end method

.method public handleAppVisibility(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 11
    .line 12
    .line 13
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroid/view/WindowManagerGlobal;->trimForeground()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 2
    .line 3
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iput v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 8
    .line 9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    .line 29
    .line 30
    .line 31
    :cond_2
    iget p1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 32
    .line 33
    and-int/lit8 p1, p1, 0x7

    .line 34
    .line 35
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 36
    .line 37
    iget v1, v0, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    .line 38
    .line 39
    if-eq p1, v1, :cond_3

    .line 40
    .line 41
    iput p1, v0, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    .line 42
    .line 43
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public handleDispatchWindowShown()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowShown()V

    return-void
.end method

.method public handleGetNewSurface()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v1, p2}, Landroid/view/View;->requestKeyboardShortcuts(Ljava/util/List;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const-string/jumbo p2, "shortcuts_array"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    :try_start_0
    invoke-interface {p1, p2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    return-void
.end method

.method public hasPointerCapture()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    return v0
.end method

.method public invalidate()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 4
    .line 5
    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 8
    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 27
    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    neg-int v0, v0

    .line 43
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 51
    .line 52
    .line 53
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 54
    .line 55
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    const/4 v0, -0x1

    .line 60
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 61
    .line 62
    .line 63
    :cond_5
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    .line 64
    .line 65
    .line 66
    return-object p1
.end method

.method public invalidateWorld(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Landroid/view/ViewGroup;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public isInLayout()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public isTextAlignmentResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTextDirectionResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public loadSystemProperties()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$4;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyChildRebuilt()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/android/internal/view/BaseSurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 17
    .line 18
    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 40
    .line 41
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 49
    .line 50
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 51
    .line 52
    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 53
    .line 54
    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 63
    .line 64
    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method public notifyRendererOfFramePending()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->notifyFramePending()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p2, Landroid/view/View;->mPrivateFlags:I

    .line 2
    .line 3
    and-int/lit8 p1, p1, 0x40

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, p1, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 25
    .line 26
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 33
    .line 34
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 35
    .line 36
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 37
    .line 38
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onPostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/view/WindowCallbacks;

    .line 21
    .line 22
    invoke-interface {v1, p1}, Landroid/view/WindowCallbacks;->onPostDraw(Landroid/view/DisplayListCanvas;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public onPreDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isOpaque()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/high16 v0, -0x1000000

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/RecordingCanvas;->drawColor(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    .line 25
    .line 26
    neg-int v0, v0

    .line 27
    int-to-float v0, v0

    .line 28
    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 29
    .line 30
    neg-int v1, v1

    .line 31
    int-to-float v1, v1

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onWindowTitleChanged()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    return-void
.end method

.method public outputDisplayList(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/RenderNode;->output()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 7
    .line 8
    iget-object p1, p1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/ThreadedRenderer;->serializeDisplayListTree()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public pendingDrawFinished()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportDrawFinished()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    const-string v1, "Unbalanced drawPending/pendingDrawFinished calls"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public playSoundEffect(I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "unknown effect id "

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq p1, v3, :cond_3

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    if-eq p1, v4, :cond_2

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    if-eq p1, v2, :cond_1

    .line 22
    .line 23
    if-ne p1, v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " not defined in "

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-class p1, Landroid/view/SoundEffectConstants;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :cond_1
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    const/4 p1, 0x0

    .line 74
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catch_0
    move-exception p1

    .line 79
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v2, "FATAL EXCEPTION when attempting to play sound effect: "

    .line 84
    .line 85
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public pokeDrawLockIfNeeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 4
    .line 5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 24
    .line 25
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    :cond_1
    return-void
.end method

.method public profile()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 12
    .line 13
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 23
    .line 24
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public removeWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public removeWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportActivityRelaunched()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    return-void
.end method

.method public reportDrawFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    sub-int/2addr v1, p1

    .line 27
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget p3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 42
    .line 43
    neg-int p3, p3

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 49
    .line 50
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 51
    .line 52
    iget v0, p3, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 53
    .line 54
    iget p3, p3, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 55
    .line 56
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 57
    .line 58
    .line 59
    :try_start_0
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 60
    .line 61
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 62
    .line 63
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-interface {p2, p3, v0}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :catch_0
    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public requestInvalidateRootRenderNode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public requestLayoutDuringLayout(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :cond_3
    :goto_0
    return v1
.end method

.method public requestPointerCapture(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11
    .line 12
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->requestPointerCapture(Landroid/os/IBinder;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 6
    .line 7
    if-nez p1, :cond_6

    .line 8
    .line 9
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/16 v0, 0x800

    .line 19
    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object v1, p1, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->removeCallbacksAndRun()V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eq p1, v0, :cond_4

    .line 38
    .line 39
    const v0, 0x8000

    .line 40
    .line 41
    .line 42
    if-eq p1, v0, :cond_3

    .line 43
    .line 44
    const/high16 v0, 0x10000

    .line 45
    .line 46
    if-eq p1, v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1, p1}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    :goto_0
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 116
    .line 117
    .line 118
    const/4 p1, 0x1

    .line 119
    return p1

    .line 120
    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 121
    return p1
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    iget p1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 9
    .line 10
    or-int/lit16 p1, p1, 0x200

    .line 11
    .line 12
    iput p1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public scheduleConsumeBatchedInput()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public scheduleConsumeBatchedInputImmediately()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    .line 10
    .line 11
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public scheduleTraversals()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    .line 23
    .line 24
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 25
    .line 26
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-gt v2, v3, :cond_1

    .line 13
    .line 14
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 15
    .line 16
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    if-gt v2, v3, :cond_1

    .line 19
    .line 20
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 21
    .line 22
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    if-gt v2, v3, :cond_1

    .line 25
    .line 26
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 27
    .line 28
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 29
    .line 30
    if-le v2, v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p1, v4

    .line 34
    move v1, p1

    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_1
    :goto_0
    iget v1, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 38
    .line 39
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    return v4

    .line 48
    :cond_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroid/view/View;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move-object v3, v5

    .line 61
    :goto_1
    if-eq v2, v3, :cond_4

    .line 62
    .line 63
    move-object p1, v5

    .line 64
    :cond_4
    if-ne v2, v3, :cond_5

    .line 65
    .line 66
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 67
    .line 68
    if-nez v3, :cond_5

    .line 69
    .line 70
    if-nez p1, :cond_5

    .line 71
    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_5
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 75
    .line 76
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    .line 80
    .line 81
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 82
    .line 83
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-virtual {v2, v3, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_b

    .line 90
    .line 91
    if-nez p1, :cond_6

    .line 92
    .line 93
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 94
    .line 95
    invoke-virtual {v2, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 99
    .line 100
    instance-of v3, p1, Landroid/view/ViewGroup;

    .line 101
    .line 102
    if-eqz v3, :cond_7

    .line 103
    .line 104
    check-cast p1, Landroid/view/ViewGroup;

    .line 105
    .line 106
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 107
    .line 108
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 113
    .line 114
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 115
    .line 116
    .line 117
    :cond_7
    :goto_2
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 118
    .line 119
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_b

    .line 126
    .line 127
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 134
    .line 135
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 140
    .line 141
    sub-int/2addr v2, v3

    .line 142
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 143
    .line 144
    sub-int/2addr v2, v5

    .line 145
    if-le p1, v2, :cond_8

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_8
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 149
    .line 150
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 151
    .line 152
    if-ge v1, v3, :cond_9

    .line 153
    .line 154
    sub-int/2addr v1, v3

    .line 155
    goto :goto_3

    .line 156
    :cond_9
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 157
    .line 158
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 159
    .line 160
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 165
    .line 166
    sub-int/2addr v1, v2

    .line 167
    if-le p1, v1, :cond_a

    .line 168
    .line 169
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 170
    .line 171
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 172
    .line 173
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 174
    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 180
    .line 181
    sub-int/2addr v1, v0

    .line 182
    sub-int/2addr p1, v1

    .line 183
    move v1, p1

    .line 184
    goto :goto_3

    .line 185
    :cond_a
    move v1, v4

    .line 186
    :goto_3
    const/4 p1, 0x1

    .line 187
    goto :goto_5

    .line 188
    :cond_b
    :goto_4
    move p1, v4

    .line 189
    :goto_5
    iget v0, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 190
    .line 191
    if-eq v1, v0, :cond_f

    .line 192
    .line 193
    if-nez p2, :cond_d

    .line 194
    .line 195
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 196
    .line 197
    if-nez p2, :cond_c

    .line 198
    .line 199
    new-instance p2, Landroid/widget/Scroller;

    .line 200
    .line 201
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-direct {p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 208
    .line 209
    .line 210
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 211
    .line 212
    :cond_c
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 213
    .line 214
    iget v0, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 215
    .line 216
    sub-int v2, v1, v0

    .line 217
    .line 218
    invoke-virtual {p2, v4, v0, v4, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 219
    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_d
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 223
    .line 224
    if-eqz p2, :cond_e

    .line 225
    .line 226
    invoke-virtual {p2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 227
    .line 228
    .line 229
    :cond_e
    :goto_6
    iput v1, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 230
    .line 231
    :cond_f
    return p1
.end method

.method public setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 11
    .line 12
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-virtual {v2, v5}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/16 v5, 0x80

    .line 42
    .line 43
    invoke-virtual {v4, v2, v5, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    if-eq v0, p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 59
    .line 60
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 61
    .line 62
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 63
    .line 64
    iget-object p1, p1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void
.end method

.method public setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    return-void
.end method

.method public setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    sget-boolean v1, Landroid/view/View;->sCascadedDragDrop:Z

    .line 6
    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    iget v1, p2, Landroid/view/DragEvent;->mX:F

    .line 10
    .line 11
    iget v2, p2, Landroid/view/DragEvent;->mY:F

    .line 12
    .line 13
    iget v3, p2, Landroid/view/DragEvent;->mAction:I

    .line 14
    .line 15
    iget-object v4, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    iput v5, p2, Landroid/view/DragEvent;->mX:F

    .line 19
    .line 20
    iput v5, p2, Landroid/view/DragEvent;->mY:F

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    iput-object v5, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v5, 0x6

    .line 28
    iput v5, p2, Landroid/view/DragEvent;->mAction:I

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x5

    .line 36
    iput v0, p2, Landroid/view/DragEvent;->mAction:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    iput v3, p2, Landroid/view/DragEvent;->mAction:I

    .line 42
    .line 43
    iput v1, p2, Landroid/view/DragEvent;->mX:F

    .line 44
    .line 45
    iput v2, p2, Landroid/view/DragEvent;->mY:F

    .line 46
    .line 47
    iput-object v4, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 48
    .line 49
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 50
    .line 51
    return-void
.end method

.method public setIsAmbientMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    return-void
.end method

.method public setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 3
    .line 4
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 5
    .line 6
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 7
    .line 8
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 9
    .line 10
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 11
    .line 12
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 13
    .line 14
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 15
    .line 16
    iget-boolean v6, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 17
    .line 18
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 19
    .line 20
    iput v7, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 21
    .line 22
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 23
    .line 24
    and-int/lit16 v7, v7, 0x80

    .line 25
    .line 26
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 27
    .line 28
    iput v8, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 29
    .line 30
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 31
    .line 32
    iput v8, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 39
    .line 40
    const/high16 v8, 0x80000

    .line 41
    .line 42
    and-int/2addr v8, v0

    .line 43
    const/4 v9, 0x1

    .line 44
    if-eqz v8, :cond_0

    .line 45
    .line 46
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 47
    .line 48
    iput-boolean v9, v8, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 49
    .line 50
    :cond_0
    and-int/2addr v0, v9

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 54
    .line 55
    iput-boolean v9, v0, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 58
    .line 59
    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    if-nez v8, :cond_2

    .line 62
    .line 63
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    .line 64
    .line 65
    iput-object v8, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 66
    .line 67
    :cond_2
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 68
    .line 69
    or-int/2addr v7, v8

    .line 70
    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 71
    .line 72
    iget-boolean v7, v0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 73
    .line 74
    if-eqz v7, :cond_3

    .line 75
    .line 76
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 82
    .line 83
    iput-boolean v6, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 87
    .line 88
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 89
    .line 90
    if-ne v6, v2, :cond_4

    .line 91
    .line 92
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 93
    .line 94
    if-ne v2, v3, :cond_4

    .line 95
    .line 96
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 97
    .line 98
    if-ne v2, v4, :cond_4

    .line 99
    .line 100
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 101
    .line 102
    if-eq v0, v1, :cond_5

    .line 103
    .line 104
    :cond_4
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    .line 105
    .line 106
    :cond_5
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 107
    .line 108
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    if-eqz p2, :cond_6

    .line 112
    .line 113
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 114
    .line 115
    iput p2, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 118
    .line 119
    .line 120
    :cond_6
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 121
    .line 122
    and-int/lit16 p1, p1, 0xf0

    .line 123
    .line 124
    if-nez p1, :cond_7

    .line 125
    .line 126
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 127
    .line 128
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 129
    .line 130
    and-int/lit16 p2, p2, -0xf1

    .line 131
    .line 132
    and-int/lit16 v0, v5, 0xf0

    .line 133
    .line 134
    or-int/2addr p2, v0

    .line 135
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 136
    .line 137
    :cond_7
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 140
    .line 141
    .line 142
    monitor-exit p0

    .line 143
    return-void

    .line 144
    :catchall_0
    move-exception p1

    .line 145
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    throw p1
.end method

.method public setLocalDragState(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    return-void
.end method

.method public setPausedForTransition(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    return-void
.end method

.method public setReportNextDraw()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "aq:pending:"

    const-string v3, "aq:native-pre-ime:"

    const-string v4, "aq:ime:"

    const-string v5, "aq:native-post-ime:"

    const-string v6, "Unable to add window -- unknown error code "

    const-string v7, "Unable to add window -- token "

    const-string v8, "Unable to add window -- token "

    const-string v9, "Unable to add window -- app for token "

    const-string v10, "Unable to add window -- window "

    const-string v11, "Unable to add window "

    const-string v12, "Unable to add window "

    const-string v13, "Unable to add window "

    const-string v14, "Unable to add window "

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v15, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v15, :cond_17

    .line 3
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4
    iget-object v15, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v16, v2

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    iput v2, v15, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 5
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    move-object/from16 v17, v3

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v15, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 6
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v2

    iput v2, v1, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    .line 7
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v2, v0}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 8
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 9
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 10
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 11
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->setTag()V

    .line 12
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v3, v1, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 14
    instance-of v15, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    const/4 v3, 0x0

    if-eqz v15, :cond_1

    .line 15
    move-object v15, v0

    check-cast v15, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 16
    invoke-interface {v15}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v15

    iput-object v15, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v15, :cond_1

    .line 17
    new-instance v15, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v15, v1}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v15, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 18
    invoke-virtual {v15, v3}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 19
    iget-object v15, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v15, v3}, Lcom/android/internal/view/BaseSurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 20
    :cond_1
    iget-boolean v3, v2, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    const/4 v15, 0x1

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 21
    invoke-virtual {v2, v0, v3, v15}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 22
    :cond_2
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 23
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v15

    iput-object v15, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 25
    iget-object v15, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v15, :cond_3

    .line 26
    invoke-direct {v1, v2}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    .line 27
    :cond_3
    iget-object v15, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v15, :cond_4

    move-object/from16 v18, v4

    .line 28
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v15}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 29
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 30
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v4, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v18, v4

    const/4 v4, 0x0

    .line 31
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v3

    if-nez v3, :cond_5

    .line 32
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v3, 0x1

    .line 33
    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 34
    :cond_5
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v3, v1, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    const/4 v3, 0x1

    .line 35
    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    const/4 v3, -0x1

    .line 36
    iput v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 37
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 38
    iget-object v15, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v19, v5

    if-eqz v15, :cond_6

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-nez v15, :cond_7

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    .line 39
    :cond_7
    iget v5, v15, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    :goto_2
    iput v5, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    if-eqz p3, :cond_8

    .line 40
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v3, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    :cond_8
    const/4 v3, 0x1

    .line 41
    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 43
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_9

    .line 44
    new-instance v3, Landroid/view/InputChannel;

    invoke-direct {v3}, Landroid/view/InputChannel;-><init>()V

    iput-object v3, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 45
    :cond_9
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v3, v1, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 47
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 48
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    .line 49
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v15, v1, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v24

    move-object/from16 v30, v6

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v25

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v31, v14

    iget-object v14, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v32, v13

    iget-object v13, v6, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v33, v12

    iget-object v12, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move/from16 v22, v15

    move-object/from16 v23, v0

    move-object/from16 v26, v14

    move-object/from16 v27, v13

    move-object/from16 v28, v6

    move-object/from16 v29, v12

    .line 51
    invoke-interface/range {v20 .. v29}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_b

    .line 52
    :try_start_2
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 53
    :cond_b
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_c

    .line 54
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 55
    :cond_c
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 57
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 58
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_4

    :cond_d
    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    .line 60
    iput-boolean v4, v1, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    if-gez v0, :cond_e

    const/4 v4, 0x0

    .line 61
    iput-object v4, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    const/4 v3, 0x0

    .line 62
    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 63
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v3, v4}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 65
    invoke-virtual {v1, v4, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    packed-switch v0, :pswitch_data_0

    .line 66
    new-instance v2, Ljava/lang/RuntimeException;

    goto/16 :goto_5

    .line 67
    :pswitch_0
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not valid; is your activity running?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_1
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not for an application"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_2
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is exiting"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_3
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has already been added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :pswitch_4
    monitor-exit p0

    return-void

    .line 72
    :pswitch_5
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -- another window of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :pswitch_6
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -- permission denied for window type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_7
    new-instance v0, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -- the specified display can not be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_8
    new-instance v0, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -- the specified window type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    move-object/from16 v3, p1

    .line 77
    instance-of v4, v3, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v4, :cond_f

    .line 78
    move-object v4, v3

    check-cast v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 79
    invoke-interface {v4}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v4

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 80
    :cond_f
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v4, :cond_11

    .line 81
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v4, :cond_10

    .line 82
    new-instance v4, Landroid/view/InputQueue;

    invoke-direct {v4}, Landroid/view/InputQueue;-><init>()V

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 83
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    invoke-interface {v5, v4}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 84
    :cond_10
    new-instance v4, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 85
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v1, v5, v6}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 86
    :cond_11
    invoke-virtual {v3, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    goto :goto_6

    :cond_12
    const/4 v4, 0x0

    .line 87
    :goto_6
    iput-boolean v4, v1, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    .line 88
    :goto_7
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 89
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 90
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 91
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    .line 92
    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 93
    :cond_15
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 94
    new-instance v2, Landroid/view/ViewRootImpl$SyntheticInputStage;

    invoke-direct {v2, v1}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v2, v1, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 95
    new-instance v3, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    invoke-direct {v3, v1, v2}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 96
    new-instance v2, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 97
    new-instance v3, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    invoke-direct {v3, v1, v2}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 98
    new-instance v2, Landroid/view/ViewRootImpl$ImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 99
    new-instance v4, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    invoke-direct {v4, v1, v2}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 100
    new-instance v2, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v6, v17

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v4, v5}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 101
    iput-object v2, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 102
    iput-object v3, v1, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    .line 104
    :try_start_3
    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    const/4 v3, 0x0

    .line 105
    iput-object v3, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 106
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v5, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 107
    iput-object v3, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 108
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v5, v3}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 110
    invoke-virtual {v1, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 111
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Adding window failed"

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_8
    if-eqz v4, :cond_16

    .line 112
    :try_start_4
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_16
    throw v0

    .line 113
    :cond_17
    :goto_9
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setWindowStopped(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_3

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8
    .line 9
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 32
    :goto_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ge v0, v1, :cond_3

    .line 39
    .line 40
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/view/ViewRootImpl$WindowStoppedCallback;

    .line 47
    .line 48
    invoke-interface {v1, p1}, Landroid/view/ViewRootImpl$WindowStoppedCallback;->windowStopped(Z)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthesizeInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v1, v1

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-void
.end method

.method public transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public unscheduleConsumeBatchedInput()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7
    .line 8
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 9
    .line 10
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public unscheduleTraversals()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 24
    .line 25
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public updateConfiguration(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq p1, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    :cond_2
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p1, v2, v0}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 47
    .line 48
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 61
    .line 62
    .line 63
    if-eq p1, v0, :cond_3

    .line 64
    .line 65
    iget p1, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    .line 66
    .line 67
    const/4 v2, 0x2

    .line 68
    if-ne p1, v2, :cond_3

    .line 69
    .line 70
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 84
    .line 85
    .line 86
    :cond_4
    return-void
.end method

.method public updatePointerIcon(FF)V
    .locals 10

    .line 17
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    const/4 v6, 0x7

    const/4 v9, 0x0

    move v7, p1

    move v8, p2

    .line 19
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 20
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 21
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x6

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 11
    .line 12
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
