.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/HardwareRenderer$HardwareDrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$RunQueue;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
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
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_PROCESSING:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field public static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MSG_CHECK_FOCUS:I = 0xd

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x15

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final MSG_DIE:I = 0x3

.field private static final MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final MSG_DISPATCH_DONE_ANIMATING:I = 0x16

.field private static final MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final MSG_DISPATCH_INPUT_EVENT:I = 0x7

.field private static final MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final MSG_DISPATCH_SCREEN_STATE:I = 0x14

.field private static final MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final MSG_FINISH_INPUT_CONNECTION:I = 0xc

.field private static final MSG_FLUSH_LAYER_UPDATES:I = 0x19

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x17

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final MSG_WINDOW_MOVED:I = 0x18

.field private static final PROPERTY_MEDIA_DISABLED:Ljava/lang/String; = "config.disable_media"

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field public static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field public static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public static sFirstDrawComplete:Z

.field public static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/ViewRootImpl$RunQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public drawsoft:Z

.field public fulldraw_pit:I

.field public mAccessibilityFocusedHost:Landroid/view/View;

.field public mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field public mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAdded:Z

.field public mAddedTouchMode:Z

.field public mAppVisible:Z

.field public final mAttachInfo:Landroid/view/View$AttachInfo;

.field public mAudioManager:Landroid/media/AudioManager;

.field public final mBasePackageName:Ljava/lang/String;

.field public mChoreographer:Landroid/view/Choreographer;

.field public mClientWindowLayoutFlags:I

.field public mConfigurationChanged:Z

.field public mConsumeBatchedInputScheduled:Z

.field public final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field public final mContext:Landroid/content/Context;

.field public mCurScrollY:I

.field public final mCurrentDirty:Landroid/graphics/Rect;

.field public mCurrentDragView:Landroid/view/View;

.field private final mDensity:I

.field public mDirty:Landroid/graphics/Rect;

.field public final mDisplay:Landroid/view/Display;

.field public final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDisplayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/DisplayList;",
            ">;"
        }
    .end annotation
.end field

.field public mDragDescription:Landroid/content/ClipDescription;

.field public final mDragPoint:Landroid/graphics/PointF;

.field public mDrawDuringWindowsAnimating:Z

.field public mDrawingAllowed:Z

.field public mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field public mFirst:Z

.field public mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field public mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field public final mFitSystemWindowsInsets:Landroid/graphics/Rect;

.field public mFitSystemWindowsRequested:Z

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field public mFullRedrawNeeded:Z

.field public final mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field public mHandlingLayoutInLayoutRequest:Z

.field public mHardwareYOffset:I

.field public mHasHadWindowFocus:Z

.field public mHeight:I

.field private final mHolder:Landroid/view/SurfaceHolder;

.field private mInLayout:Z

.field public mInputChannel:Landroid/view/InputChannel;

.field public final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field public mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field public mInputQueue:Landroid/view/InputQueue;

.field public mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field public final mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field public mIsAnimating:Z

.field public mIsCreating:Z

.field public mIsDrawing:Z

.field public mIsInTraversal:Z

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field public mLastInCompatMode:Z

.field public mLastOverscanRequested:Z

.field public mLastScrolledFocus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mLastSystemUiVisibility:I

.field public final mLastTouchPoint:Landroid/graphics/PointF;

.field public mLastWasImTarget:Z

.field public mLayoutRequested:Z

.field public mLayoutRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mLocalDragState:Ljava/lang/Object;

.field public final mLocation:Landroid/view/WindowLeaked;

.field private mMediaDisabled:Z

.field public mNewSurfaceNeeded:Z

.field private final mNoncompatDensity:I

.field public mOrigWindowType:I

.field public final mPendingConfiguration:Landroid/content/res/Configuration;

.field public final mPendingContentInsets:Landroid/graphics/Rect;

.field public mPendingInputEventCount:I

.field public mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field public mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

.field public mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field public final mPendingOverscanInsets:Landroid/graphics/Rect;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingVisibleInsets:Landroid/graphics/Rect;

.field public final mPreviousTransparentRegion:Landroid/graphics/Region;

.field public mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field private mRemoved:Z

.field private mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private mRenderProfilingEnabled:Z

.field public mReportNextDraw:Z

.field public mResizeAlpha:I

.field public mResizeBuffer:Landroid/view/HardwareLayer;

.field public mResizeBufferDuration:I

.field public mResizeBufferStartTime:J

.field public final mResizePaint:Landroid/graphics/Paint;

.field public mScrollMayChange:Z

.field public mScrollY:I

.field public mScroller:Landroid/widget/Scroller;

.field public mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field public mSeq:I

.field public mSoftInputMode:I

.field public mStopped:Z

.field private final mSurface:Landroid/view/Surface;

.field public mSurfaceHolder:Lv/c;

.field public mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field public final mTargetSdkVersion:I

.field public mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mThread:Ljava/lang/Thread;

.field public final mTmpLocation:[I

.field public final mTmpValue:Landroid/util/TypedValue;

.field public mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field public final mTransparentRegion:Landroid/graphics/Region;

.field public mTraversalBarrier:I

.field public final mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field public mTraversalScheduled:Z

.field public mUpdateTranformHint:Z

.field public mView:Landroid/view/View;

.field public final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mViewLayoutDirectionInitial:I

.field public mViewVisibility:I

.field public final mVisRect:Landroid/graphics/Rect;

.field public mWidth:I

.field public mWillDrawSoon:Z

.field public final mWinFrame:Landroid/graphics/Rect;

.field public final mWindow:Landroid/view/ViewRootImpl$W;

.field public final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field public mWindowAttributesChanged:Z

.field public mWindowAttributesChangesFlag:I

.field public final mWindowSession:Landroid/view/IWindowSession;

.field public mWindowsAnimating:Z

.field public mWrotation:I

.field public mWrotation_old:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 3
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 8
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 9
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    const-string v3, "pq"

    .line 10
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 11
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 12
    iput v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 13
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3}, Landroid/view/Surface;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 14
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 15
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 16
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 17
    new-instance v3, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v3}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 18
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mFitSystemWindowsInsets:Landroid/graphics/Rect;

    .line 19
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 20
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 21
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mConfigurationChanged:Z

    .line 22
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 23
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    const-wide/16 v3, -0x1

    .line 24
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 25
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDisplayLists:Ljava/util/ArrayList;

    .line 27
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 29
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 30
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    new-instance v3, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v3, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 31
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 32
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    .line 33
    iput v1, p0, Landroid/view/ViewRootImpl;->mWrotation:I

    const/4 v3, -0x2

    .line 34
    iput v3, p0, Landroid/view/ViewRootImpl;->mWrotation_old:I

    .line 35
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->drawsoft:Z

    .line 36
    iput v1, p0, Landroid/view/ViewRootImpl;->fulldraw_pit:I

    .line 37
    new-instance v10, Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-direct {v10, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v10, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 38
    new-instance v3, Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 39
    new-instance v3, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 40
    new-instance v3, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    .line 41
    new-instance v3, Landroid/view/ViewRootImpl$5;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$5;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    .line 42
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v6

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 44
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    .line 46
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 48
    new-instance v3, Landroid/view/WindowLeaked;

    invoke-direct {v3, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    .line 49
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 50
    iput v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 51
    iput v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 53
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 54
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 56
    new-instance v7, Landroid/view/ViewRootImpl$W;

    invoke-direct {v7, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v7, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v1, 0x8

    .line 58
    iput v1, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 59
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 60
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 61
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 62
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 63
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 64
    new-instance v1, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 66
    new-instance v0, Landroid/view/View$AttachInfo;

    move-object v5, v0

    move-object v8, p2

    move-object v9, p0

    move-object v11, p0

    invoke-direct/range {v5 .. v11}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 67
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    iput-object p2, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p2, p0, Landroid/view/ViewRootImpl;->mDensity:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput p2, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    .line 70
    invoke-static {p1}, Lp/b;->a(Landroid/content/Context;)Landroid/view/FallbackEventHandler;

    move-result-object p2

    iput-object p2, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 71
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p2

    iput-object p2, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const-string p2, "power"

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 73
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mScreenOn:Z

    .line 74
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    return-void
.end method

.method public static synthetic access$000(Landroid/view/ViewRootImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return p0
.end method

.method public static synthetic access$100(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method public static synthetic access$1000(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1802(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    return p1
.end method

.method public static synthetic access$1902(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mMediaDisabled:Z

    return p1
.end method

.method public static synthetic access$200(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$2300(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Landroid/view/ViewRootImpl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    return-void
.end method

.method public static synthetic access$400(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Landroid/view/ViewRootImpl;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/view/ViewRootImpl;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/view/ViewRootImpl;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method public static synthetic access$900(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    and-int/lit16 v1, v1, 0x80

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result p1

    return p1

    .line 6
    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    :cond_4
    return v1
.end method

.method private collectViewAttributes()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 4
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 6
    iput v2, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 7
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 8
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v0, v2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 9
    iget v3, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v4, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    not-int v4, v4

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 10
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 11
    invoke-direct {p0, v4}, Landroid/view/ViewRootImpl;->getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    or-int/2addr v3, v5

    iput v3, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 12
    iget-boolean v5, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-ne v5, v1, :cond_0

    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-ne v3, v1, :cond_0

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-boolean v3, v4, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v1, v3, :cond_1

    .line 13
    :cond_0
    invoke-direct {p0, v4}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 14
    iget v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 15
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iput-boolean v0, v4, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 16
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method private deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 5

    const-wide/16 v0, 0x8

    const-string v2, "deliverInputEvent"

    .line 1
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_0

    .line 3
    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSkipIme()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    :goto_0
    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private destroyHardwareRenderer()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    :cond_0
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/HardwareRenderer;->destroy(Z)V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/HardwareRenderer;->setRequested(Z)V

    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 8
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    :cond_1
    return-void
.end method

.method private draw(ZZ)V
    .locals 16

    move-object/from16 v7, p0

    .line 1
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 2
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_2

    .line 4
    sget-object v3, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 5
    :try_start_0
    sput-boolean v8, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_1

    .line 7
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget-object v6, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 9
    invoke-virtual {v7, v0, v1}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 10
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11
    iget-boolean v4, v3, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    if-eqz v4, :cond_3

    .line 12
    iput-boolean v1, v3, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 13
    iget-object v4, v3, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 14
    :cond_3
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v8

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    if-eqz v4, :cond_5

    .line 15
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    goto :goto_3

    .line 16
    :cond_5
    iget v5, v7, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 17
    :goto_3
    iget v6, v7, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eq v6, v5, :cond_6

    .line 18
    iput v5, v7, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move v6, v8

    goto :goto_4

    :cond_6
    move/from16 v6, p1

    .line 19
    :goto_4
    iget v9, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 20
    iget-boolean v10, v3, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 21
    iget-object v11, v7, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v11, :cond_8

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-wide v13, v7, Landroid/view/ViewRootImpl;->mResizeBufferStartTime:J

    sub-long/2addr v11, v13

    .line 23
    iget v13, v7, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    int-to-long v14, v13

    cmp-long v14, v11, v14

    if-gez v14, :cond_7

    long-to-float v4, v11

    int-to-float v11, v13

    div-float/2addr v4, v11

    .line 24
    sget-object v11, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v11, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v4, v11

    float-to-int v4, v4

    rsub-int v4, v4, 0xff

    move v11, v8

    goto :goto_5

    .line 25
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    :cond_8
    move v11, v4

    move v4, v1

    .line 26
    :goto_5
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 27
    iget-object v13, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    if-eqz v13, :cond_b

    .line 28
    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v11, :cond_a

    .line 29
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_9

    .line 30
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 31
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    :cond_a
    return-void

    :cond_b
    if-eqz v6, :cond_c

    .line 32
    iput-boolean v8, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 33
    iget v6, v7, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v6, v13

    float-to-int v6, v6

    iget v14, v7, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v14, v14

    mul-float/2addr v14, v9

    add-float/2addr v14, v13

    float-to-int v9, v14

    invoke-virtual {v12, v1, v1, v6, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 34
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->invalidateDisplayLists()V

    .line 35
    iget-object v6, v3, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    .line 36
    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-boolean v6, v7, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v6, :cond_11

    .line 37
    :cond_d
    iget-object v6, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 38
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 39
    iput v5, v7, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 40
    iput v4, v7, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    .line 41
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    invoke-virtual {v1, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 42
    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    .line 43
    iget-object v1, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v11, :cond_e

    goto :goto_6

    :cond_e
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    :goto_6
    invoke-virtual {v1, v2, v3, v7, v0}, Landroid/view/HardwareRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)V

    goto :goto_7

    .line 44
    :cond_f
    iget-object v0, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 45
    :try_start_1
    iget-object v0, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, v7, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/Surface;)Z
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void

    :catch_0
    move-exception v0

    .line 48
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    return-void

    :cond_10
    move-object/from16 v1, p0

    move v4, v5

    move v5, v10

    move-object v6, v12

    .line 49
    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IZLandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    :goto_7
    if-eqz v11, :cond_12

    .line 50
    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_12
    if-eqz p2, :cond_13

    .line 52
    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_13
    return-void
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 6
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    if-nez v1, :cond_3

    .line 7
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v1, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 10
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v3, v3

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 11
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v3, v1, Landroid/view/ViewRootImpl;->mWidth:I

    iget v1, v1, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 12
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IZLandroid/graphics/Rect;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v0, p3

    move-object/from16 v4, p5

    const-string v5, "Could not unlock surface"

    const-string v6, "ViewRootImpl"

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1
    :try_start_0
    iget v9, v4, Landroid/graphics/Rect;->left:I

    .line 2
    iget v10, v4, Landroid/graphics/Rect;->top:I

    .line 3
    iget v11, v4, Landroid/graphics/Rect;->right:I

    .line 4
    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    .line 5
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v14, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v13, v14}, Landroid/view/IWindowSession;->getRotation(Landroid/view/IWindow;)I

    move-result v13

    iput v13, v1, Landroid/view/ViewRootImpl;->mWrotation:I

    .line 6
    sget-boolean v14, Landroid/os/Build;->USE_LCDC_COMPOSER:Z

    if-eqz v14, :cond_0

    .line 7
    iget-object v15, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v15, v13}, Landroid/view/Surface;->ChangeWH(I)V

    .line 8
    :cond_0
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v13, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v13

    .line 9
    iget v15, v4, Landroid/graphics/Rect;->left:I

    if-ne v9, v15, :cond_1

    iget v9, v4, Landroid/graphics/Rect;->top:I

    if-ne v10, v9, :cond_1

    iget v9, v4, Landroid/graphics/Rect;->right:I

    if-ne v11, v9, :cond_1

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    if-eq v12, v9, :cond_2

    .line 10
    :cond_1
    iput-boolean v7, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 11
    :cond_2
    iget v9, v1, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual {v13, v9}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 12
    :try_start_1
    invoke-virtual {v13}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v0, :cond_4

    .line 13
    :cond_3
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 14
    :cond_4
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 15
    iput-boolean v8, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, v3, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 17
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v9, v4, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v4, Landroid/view/View;->mPrivateFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x0

    neg-int v0, v0

    int-to-float v0, v0

    .line 18
    :try_start_2
    invoke-virtual {v13, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 19
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {v0, v13}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    :cond_5
    if-eqz p4, :cond_6

    .line 21
    iget v0, v1, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    goto :goto_0

    :cond_6
    move v0, v8

    :goto_0
    invoke-virtual {v13, v0}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 22
    iput-boolean v8, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-eqz v14, :cond_f

    .line 23
    invoke-virtual {v13}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 24
    invoke-virtual {v13}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 25
    iget v9, v1, Landroid/view/ViewRootImpl;->mWrotation:I

    const/4 v10, 0x2

    if-ne v9, v7, :cond_a

    if-le v0, v4, :cond_8

    if-le v0, v4, :cond_7

    move v9, v0

    goto :goto_1

    :cond_7
    move v9, v4

    .line 26
    :goto_1
    div-int/2addr v9, v10

    goto :goto_3

    :cond_8
    if-ge v4, v0, :cond_9

    move v9, v4

    goto :goto_2

    :cond_9
    move v9, v0

    .line 27
    :goto_2
    div-int/2addr v9, v10

    :goto_3
    const/high16 v11, 0x42b40000    # 90.0f

    int-to-float v9, v9

    .line 28
    invoke-virtual {v13, v11, v9, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 29
    :cond_a
    iget v9, v1, Landroid/view/ViewRootImpl;->mWrotation:I

    const/4 v11, 0x3

    if-ne v9, v11, :cond_e

    if-le v0, v4, :cond_c

    if-ge v4, v0, :cond_b

    move v9, v4

    goto :goto_4

    :cond_b
    move v9, v0

    .line 30
    :goto_4
    div-int/2addr v9, v10

    goto :goto_6

    :cond_c
    if-le v0, v4, :cond_d

    move v9, v0

    goto :goto_5

    :cond_d
    move v9, v4

    .line 31
    :goto_5
    div-int/2addr v9, v10

    :goto_6
    const/high16 v11, -0x3d4c0000    # -90.0f

    int-to-float v9, v9

    .line 32
    invoke-virtual {v13, v11, v9, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 33
    :cond_e
    iget v9, v1, Landroid/view/ViewRootImpl;->mWrotation:I

    if-ne v9, v10, :cond_f

    const/high16 v9, 0x43340000    # 180.0f

    .line 34
    div-int/2addr v0, v10

    .line 35
    div-int/2addr v4, v10

    int-to-float v0, v0

    int-to-float v4, v4

    .line 36
    invoke-virtual {v13, v9, v0, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 37
    :cond_f
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 38
    invoke-direct {v1, v13}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :try_start_3
    iget-boolean v0, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v0, :cond_10

    .line 40
    iput-boolean v8, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    :cond_10
    :try_start_4
    invoke-virtual {v2, v13}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    return v7

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 42
    invoke-static {v6, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v8

    :catchall_0
    move-exception v0

    .line 44
    :try_start_5
    iget-boolean v4, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v4, :cond_11

    .line 45
    iput-boolean v8, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_11
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 46
    :try_start_6
    invoke-virtual {v2, v13}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    .line 47
    throw v0

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 48
    invoke-static {v6, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v8

    :catch_2
    const-string v0, "                drawSoftware()            getRotation()  error~~~@!    "

    .line 50
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catch_3
    move-exception v0

    const-string v2, "Could not lock surface"

    .line 51
    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v8

    :catch_4
    move-exception v0

    .line 53
    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    return v8
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string p1, "null"

    .line 2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    instance-of v0, p3, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    check-cast p3, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_2

    return-void

    .line 7
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 8
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 2
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 5
    :goto_0
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->drawsoft:Z

    if-eqz v0, :cond_a

    .line 6
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->drawsoft:Z

    .line 8
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    const/4 v4, 0x2

    and-int/2addr v0, v4

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    .line 9
    :goto_2
    sget-boolean v5, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    if-eqz v5, :cond_6

    sget-boolean v5, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_a

    .line 10
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, p1, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    goto :goto_4

    .line 11
    :cond_6
    :goto_3
    sget-boolean v0, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    if-nez v0, :cond_7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_7

    const-string p1, "HardwareRenderer"

    const-string v0, "Attempting to initialize hardware acceleration outside of the main thread, aborting"

    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_8

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 15
    :cond_8
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_9

    move v1, v2

    .line 16
    :cond_9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-static {v4, v1}, Landroid/view/HardwareRenderer;->createGlRenderer(IZ)Landroid/view/HardwareRenderer;

    move-result-object v1

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 17
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_a

    .line 18
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->setName(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, p1, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v2, p1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    :cond_a
    :goto_4
    return-void
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 3
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z

    move-result p1

    :goto_0
    return p1
.end method

.method private enterTouchMode()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {v0}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->clearFocusInternal(ZZ)V

    return v2

    :cond_1
    return v1
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 2
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    check-cast p0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x40000

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v0, :cond_1

    .line 2
    iget v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v2, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    .line 5
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010421

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, v2, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :goto_0
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 9
    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-object p2

    .line 12
    :cond_3
    iget-object p1, p2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 13
    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_4

    .line 14
    check-cast p1, Landroid/view/View;

    move-object p2, p1

    goto :goto_1

    :cond_4
    move-object p2, v1

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_6
    return-object v1
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    const/4 v1, 0x0

    .line 2
    aget v2, p1, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, p1, v1

    if-eqz v0, :cond_0

    .line 3
    aget v2, p1, v3

    invoke-virtual {v0}, Landroid/view/DisplayList;->getSize()I

    move-result v0

    add-int/2addr v2, v0

    aput v2, p1, v3

    .line 4
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I
    .locals 2

    .line 1
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

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    :cond_1
    const/high16 p1, -0x80000000

    .line 3
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getRunQueue()Landroid/view/ViewRootImpl$RunQueue;
    .locals 2

    .line 1
    sget-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl$RunQueue;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v1, Landroid/view/ViewRootImpl$RunQueue;

    invoke-direct {v1}, Landroid/view/ViewRootImpl$RunQueue;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

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

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :goto_0
    if-ge v3, v0, :cond_6

    .line 2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_5

    .line 3
    iget-object v6, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_5

    if-nez p2, :cond_0

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    const/16 v7, 0x1000

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_5

    :cond_0
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_3

    .line 4
    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    .line 5
    :cond_1
    iget-object v6, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_2

    .line 6
    check-cast v6, Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v6, v2

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_2
    if-nez v6, :cond_5

    if-nez v4, :cond_4

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-nez p2, :cond_9

    :goto_3
    if-ge v1, v0, :cond_9

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    :goto_4
    if-eqz p2, :cond_8

    .line 10
    iget v3, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v3, 0x1000

    if-eqz v5, :cond_8

    and-int/lit16 v3, v3, -0x1001

    .line 11
    iput v3, p2, Landroid/view/View;->mPrivateFlags:I

    .line 12
    iget-object p2, p2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, p2, Landroid/view/View;

    if-eqz v3, :cond_7

    .line 13
    check-cast p2, Landroid/view/View;

    goto :goto_4

    :cond_7
    move-object p2, v2

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 14
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-object v4
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_9

    .line 2
    iget v1, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 4
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 5
    iget-object v0, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v0, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    :goto_0
    const/4 v0, 0x2

    const/4 v3, 0x3

    if-eq v1, v0, :cond_2

    if-ne v1, v3, :cond_5

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, p1, Landroid/view/DragEvent;->mX:F

    iget v5, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_3

    .line 9
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 10
    :cond_3
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_4

    .line 11
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    const/4 v5, 0x0

    int-to-float v0, v0

    invoke-virtual {v4, v5, v0}, Landroid/graphics/PointF;->offset(FF)V

    .line 12
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/view/DragEvent;->mX:F

    .line 13
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/view/DragEvent;->mY:F

    .line 14
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 15
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v4

    .line 16
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    const-string v6, "ViewRootImpl"

    if-eq v0, v5, :cond_7

    if-eqz v0, :cond_6

    .line 17
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 18
    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 19
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v5}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "Unable to note drag target change"

    .line 20
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    if-ne v1, v3, :cond_8

    .line 21
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 22
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reporting drop result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v3, v4}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string v0, "Unable to report drop result"

    .line 24
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    const/4 v0, 0x4

    if-ne v1, v0, :cond_9

    .line 25
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 26
    :cond_9
    :goto_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    return-void
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .locals 2

    const-string v0, "ViewRootImpl"

    const-string v1, "OutOfResourcesException initializing HW surface"

    .line 1
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    :try_start_0
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {p1, v1}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_0

    const-string p1, "No processes killed for memory; killing self"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return-void
.end method

.method private isInLocalFocusMode()Z
    .locals 2

    .line 1
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

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
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

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Landroid/view/KeyEvent;

    .line 3
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 4
    :cond_1
    check-cast p0, Landroid/view/MotionEvent;

    .line 5
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-eq p0, v2, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-ne p0, v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
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

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 2
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private leaveTouchMode()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 4
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return v1

    .line 5
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    const/16 v2, 0x82

    .line 6
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method private measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z
    .locals 5

    .line 1
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    .line 2
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const v3, 0x1050007

    .line 3
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p3, v3, v4, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 4
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v3, p3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 5
    invoke-virtual {p3, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-eqz p3, :cond_2

    if-le p4, p3, :cond_2

    .line 6
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v0}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v0

    .line 7
    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p5, v3}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v3

    .line 8
    invoke-direct {p0, v0, v3}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    const/high16 v4, 0x1000000

    and-int/2addr v0, v4

    if-nez v0, :cond_1

    :goto_1
    move p3, v2

    goto :goto_2

    :cond_1
    add-int/2addr p3, p4

    .line 10
    div-int/lit8 p3, p3, 0x2

    .line 11
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v0}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result p3

    .line 12
    invoke-direct {p0, p3, v3}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p3

    and-int/2addr p3, v4

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_2
    if-nez p3, :cond_4

    .line 14
    iget p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p4, p3}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result p3

    .line 15
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p5, p2}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result p2

    .line 16
    invoke-direct {p0, p3, p2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 17
    iget p2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    if-ne p2, p3, :cond_3

    iget p2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-eq p2, p1, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method private obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 3
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl$1;)V

    .line 6
    :goto_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7
    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 8
    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    return-object v0
.end method

.method private performDraw()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScreenOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 4
    sget-boolean v2, Landroid/os/Build;->USE_LCDC_COMPOSER:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->drawsoft:Z

    if-eqz v2, :cond_2

    .line 5
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v4}, Landroid/view/IWindowSession;->getRotation(Landroid/view/IWindow;)I

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImpl;->mWrotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "ViewRootImpl"

    const-string v4, "                performDraw()            getRotation()  error~~~@!    "

    .line 6
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .line 7
    iput v2, p0, Landroid/view/ViewRootImpl;->mWrotation:I

    .line 8
    :goto_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mWrotation:I

    iget v4, p0, Landroid/view/ViewRootImpl;->mWrotation_old:I

    if-eq v2, v4, :cond_1

    const/4 v4, 0x5

    .line 9
    iput v4, p0, Landroid/view/ViewRootImpl;->fulldraw_pit:I

    .line 10
    :cond_1
    iput v2, p0, Landroid/view/ViewRootImpl;->mWrotation_old:I

    .line 11
    iget v2, p0, Landroid/view/ViewRootImpl;->fulldraw_pit:I

    if-lez v2, :cond_2

    sub-int/2addr v2, v3

    .line 12
    iput v2, p0, Landroid/view/ViewRootImpl;->fulldraw_pit:I

    move v0, v3

    .line 13
    :cond_2
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mUpdateTranformHint:Z

    .line 14
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mUpdateTranformHint:Z

    .line 15
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    const-wide/16 v3, 0x8

    const-string v5, "draw"

    .line 16
    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 17
    :try_start_1
    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->draw(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 19
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 20
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_5

    .line 21
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 22
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 24
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    invoke-virtual {v0}, Lv/c;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 25
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 26
    instance-of v4, v3, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v4, :cond_3

    .line 27
    check-cast v3, Landroid/view/SurfaceHolder$Callback2;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28
    :cond_4
    :try_start_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 29
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 30
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .locals 11

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 3
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 4
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const-wide/16 v9, 0x8

    const-string v2, "layout"

    .line 5
    invoke-static {v9, v10, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    :try_start_0
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v8, v0, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 7
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 8
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 9
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 12
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 13
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v2, p0

    move-object v3, v8

    move-object v4, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    .line 15
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 16
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {v8, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 17
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 18
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 19
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object p2

    new-instance p3, Landroid/view/ViewRootImpl$2;

    invoke-direct {p3, p0, p1}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    return-void

    :catchall_0
    move-exception p1

    .line 22
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private performMeasure(II)V
    .locals 3

    const-wide/16 v0, 0x8

    const-string v2, "measure"

    .line 1
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private performTraversals()V
    .locals 32

    move-object/from16 v7, p0

    .line 1
    iget-object v8, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v8, :cond_78

    .line 2
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v0, :cond_0

    goto/16 :goto_4e

    :cond_0
    const/4 v9, 0x1

    .line 3
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 4
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 5
    iget-object v10, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 6
    iget-object v11, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v12

    .line 8
    iget v0, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    const/4 v13, 0x0

    if-ne v0, v12, :cond_2

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v13

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v9

    .line 9
    :goto_1
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    if-eqz v1, :cond_3

    .line 10
    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    move v15, v9

    move-object v1, v10

    goto :goto_2

    :cond_3
    move v15, v13

    const/4 v1, 0x0

    .line 11
    :goto_2
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v2

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-ne v2, v3, :cond_5

    .line 13
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 14
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v3, :cond_4

    .line 15
    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 16
    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    goto :goto_3

    .line 17
    :cond_4
    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 18
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    :goto_3
    move-object/from16 v16, v10

    goto :goto_4

    :cond_5
    move-object/from16 v16, v1

    .line 19
    :goto_4
    iput v13, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 20
    iget-object v6, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 21
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    const/16 v2, 0x7db

    const/16 v3, 0x7de

    const/4 v5, 0x2

    if-eqz v1, :cond_9

    .line 22
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 23
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 24
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_6

    goto :goto_5

    .line 25
    :cond_6
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 26
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 27
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_6

    .line 28
    :cond_7
    :goto_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 29
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 30
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 31
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 32
    :goto_6
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v4, v11, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 33
    iput-boolean v9, v11, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 34
    iput-boolean v13, v11, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 35
    iput v12, v11, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 36
    iput-boolean v13, v11, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 37
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 38
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v4, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 39
    iget v4, v7, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    if-ne v4, v5, :cond_8

    .line 40
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 41
    :cond_8
    invoke-virtual {v8, v11, v13}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 42
    iget-object v4, v11, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4, v9}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 43
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mFitSystemWindowsInsets:Landroid/graphics/Rect;

    iget-object v14, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v14, v14, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 44
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mFitSystemWindowsInsets:Landroid/graphics/Rect;

    invoke-virtual {v8, v4}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move v4, v0

    move v0, v13

    move v14, v0

    goto :goto_8

    .line 45
    :cond_9
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 46
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 47
    iget v14, v7, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v1, v14, :cond_b

    iget v14, v7, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v4, v14, :cond_a

    goto :goto_7

    :cond_a
    move v14, v13

    goto :goto_8

    .line 48
    :cond_b
    :goto_7
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 49
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    move v14, v9

    :goto_8
    if-eqz v0, :cond_e

    .line 50
    iput v12, v11, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 51
    invoke-virtual {v8, v12}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    if-nez v12, :cond_c

    .line 52
    iget-boolean v5, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v5, :cond_d

    .line 53
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    :cond_d
    const/16 v5, 0x8

    if-ne v12, v5, :cond_e

    .line 54
    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 55
    :cond_e
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v5

    iget-object v13, v11, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v13}, Landroid/view/ViewRootImpl$RunQueue;->executeActions(Landroid/os/Handler;)V

    .line 56
    iget-boolean v5, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v5, :cond_f

    iget-boolean v5, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v5, :cond_f

    move v13, v9

    goto :goto_9

    :cond_f
    const/4 v13, 0x0

    :goto_9
    if-eqz v13, :cond_17

    .line 57
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 58
    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v2, :cond_10

    .line 59
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    xor-int/lit8 v5, v3, 0x1

    iput-boolean v5, v2, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 60
    invoke-direct {v7, v3}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move/from16 v19, v4

    move/from16 v21, v14

    const/4 v9, -0x2

    const/16 v22, 0x0

    :goto_a
    move v14, v1

    goto :goto_e

    .line 61
    :cond_10
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v9

    .line 62
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v9, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const/4 v2, 0x1

    .line 63
    :cond_11
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v9, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 64
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    iget-object v9, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 65
    :cond_12
    iget v5, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v9, -0x2

    if-eq v5, v9, :cond_14

    iget v5, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v9, :cond_13

    goto :goto_b

    :cond_13
    move/from16 v22, v2

    move/from16 v19, v4

    move/from16 v21, v14

    goto :goto_a

    .line 66
    :cond_14
    :goto_b
    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v3, :cond_16

    const/16 v3, 0x7db

    if-ne v1, v3, :cond_15

    goto :goto_c

    .line 67
    :cond_15
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 68
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 69
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_d

    .line 70
    :cond_16
    :goto_c
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 71
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 72
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 73
    iget v4, v1, Landroid/graphics/Point;->y:I

    :goto_d
    move/from16 v22, v2

    move v14, v3

    move/from16 v19, v4

    const/16 v21, 0x1

    :goto_e
    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v10

    move-object/from16 v4, v20

    move v5, v14

    move-object/from16 v20, v6

    move/from16 v6, v19

    .line 74
    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v1

    or-int v1, v21, v1

    move/from16 v19, v1

    goto :goto_f

    :cond_17
    move-object/from16 v20, v6

    const/4 v9, -0x2

    move v6, v4

    move/from16 v19, v14

    const/16 v22, 0x0

    move v14, v1

    .line 75
    :goto_f
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    move-result v1

    if-eqz v1, :cond_18

    move-object/from16 v16, v10

    .line 76
    :cond_18
    iget-boolean v1, v11, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    .line 77
    iput-boolean v1, v11, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    move-object/from16 v16, v10

    goto :goto_10

    :cond_19
    const/4 v1, 0x0

    .line 78
    :goto_10
    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v2, :cond_1a

    iget-boolean v2, v11, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v2, :cond_1e

    .line 79
    :cond_1a
    iput-boolean v1, v11, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 80
    iget v1, v7, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v1, v1, 0xf0

    if-nez v1, :cond_1e

    .line 81
    iget-object v2, v11, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_1c

    .line 82
    iget-object v4, v11, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v1, 0x10

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1c
    if-nez v1, :cond_1d

    const/16 v1, 0x20

    .line 83
    :cond_1d
    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v2, 0xf0

    if-eq v3, v1, :cond_1e

    and-int/lit16 v2, v2, -0xf1

    or-int/2addr v1, v2

    .line 84
    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object v5, v10

    goto :goto_12

    :cond_1e
    move-object/from16 v5, v16

    :goto_12
    if-eqz v5, :cond_21

    .line 85
    iget v1, v8, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1f

    .line 86
    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, -0x3

    .line 87
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 88
    :cond_1f
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    goto :goto_13

    :cond_20
    const/4 v2, 0x0

    :goto_13
    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    .line 89
    :cond_21
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFitSystemWindowsRequested:Z

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    .line 90
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mFitSystemWindowsRequested:Z

    .line 91
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mFitSystemWindowsInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 92
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 93
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mFitSystemWindowsInsets:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 94
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v1, :cond_22

    .line 95
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v10

    move-object/from16 v23, v5

    move v5, v14

    move/from16 v16, v6

    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v1

    or-int v19, v19, v1

    goto :goto_14

    :cond_22
    move-object/from16 v23, v5

    move/from16 v16, v6

    :goto_14
    if-eqz v13, :cond_23

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    :cond_23
    if-eqz v13, :cond_26

    if-eqz v19, :cond_26

    .line 97
    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-ne v1, v2, :cond_25

    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-ne v1, v2, :cond_25

    iget v1, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v9, :cond_24

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ge v1, v14, :cond_24

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v7, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v1, v2, :cond_25

    :cond_24
    iget v1, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v9, :cond_26

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v1

    move/from16 v4, v16

    if-ge v1, v4, :cond_27

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v7, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v1, v2, :cond_27

    goto :goto_15

    :cond_25
    move/from16 v4, v16

    :goto_15
    const/4 v1, 0x1

    goto :goto_16

    :cond_26
    move/from16 v4, v16

    :cond_27
    const/4 v1, 0x0

    .line 98
    :goto_16
    iget-object v2, v11, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v2

    if-nez v2, :cond_29

    iget-boolean v2, v11, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    if-eqz v2, :cond_28

    goto :goto_17

    :cond_28
    const/4 v2, 0x0

    goto :goto_18

    :cond_29
    :goto_17
    const/4 v2, 0x1

    .line 99
    :goto_18
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v3, :cond_30

    if-nez v1, :cond_30

    if-nez v22, :cond_30

    if-nez v0, :cond_30

    move-object/from16 v1, v23

    if-nez v1, :cond_2f

    iget-boolean v5, v7, Landroid/view/ViewRootImpl;->mConfigurationChanged:Z

    if-eqz v5, :cond_2a

    goto :goto_1b

    .line 100
    :cond_2a
    iget v0, v11, Landroid/view/View$AttachInfo;->mWindowLeft:I

    move-object/from16 v5, v20

    iget v1, v5, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_2c

    iget v0, v11, Landroid/view/View$AttachInfo;->mWindowTop:I

    iget v1, v5, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_2b

    goto :goto_19

    :cond_2b
    const/4 v0, 0x0

    goto :goto_1a

    :cond_2c
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    if-eqz v0, :cond_2e

    .line 101
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_2d

    .line 102
    invoke-virtual {v0, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 103
    :cond_2d
    iget v0, v5, Landroid/graphics/Rect;->left:I

    iput v0, v11, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 104
    iget v0, v5, Landroid/graphics/Rect;->top:I

    iput v0, v11, Landroid/view/View$AttachInfo;->mWindowTop:I

    :cond_2e
    move/from16 v18, v2

    move/from16 v25, v12

    move v2, v14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v20, 0x0

    goto/16 :goto_41

    :cond_2f
    :goto_1b
    move-object/from16 v5, v20

    goto :goto_1c

    :cond_30
    move-object/from16 v5, v20

    move-object/from16 v1, v23

    .line 105
    :goto_1c
    sget-boolean v6, Landroid/os/Build;->USE_LCDC_COMPOSER:Z

    if-eqz v6, :cond_31

    iget-boolean v6, v7, Landroid/view/ViewRootImpl;->mConfigurationChanged:Z

    if-eqz v6, :cond_31

    const/4 v6, 0x0

    .line 106
    iput-boolean v6, v7, Landroid/view/ViewRootImpl;->mConfigurationChanged:Z

    :cond_31
    if-nez v12, :cond_34

    if-eqz v2, :cond_33

    if-nez v3, :cond_32

    if-eqz v0, :cond_33

    :cond_32
    const/4 v0, 0x1

    goto :goto_1d

    :cond_33
    const/4 v0, 0x0

    :goto_1d
    move v3, v0

    goto :goto_1e

    :cond_34
    const/4 v3, 0x0

    .line 107
    :goto_1e
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    if-eqz v0, :cond_35

    .line 108
    iget-object v0, v0, Lv/c;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v6, 0x1

    .line 109
    iput-boolean v6, v7, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    .line 110
    :cond_35
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v6

    .line 111
    :try_start_0
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->getGenerationId()I

    move-result v9

    .line 112
    invoke-direct {v7, v1, v12, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_11

    .line 113
    :try_start_1
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mDrawDuringWindowsAnimating:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_f

    if-nez v0, :cond_36

    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_36

    move/from16 v19, v1

    const/4 v1, 0x1

    .line 114
    :try_start_2
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    goto :goto_1f

    :cond_36
    move/from16 v19, v1

    .line 115
    :goto_1f
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    iget v1, v0, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_38

    .line 116
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v1, :cond_37

    const/4 v1, 0x1

    goto :goto_20

    :cond_37
    const/4 v1, 0x0

    :goto_20
    invoke-virtual {v7, v0, v1}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 117
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    iput v1, v0, Landroid/content/res/Configuration;->seq:I

    .line 118
    :cond_38
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const/4 v1, 0x1

    goto :goto_21

    :cond_39
    const/4 v1, 0x0

    .line 119
    :goto_21
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_10

    move/from16 v20, v3

    :try_start_3
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_e

    if-nez v0, :cond_3a

    const/4 v3, 0x1

    goto :goto_22

    :cond_3a
    const/4 v3, 0x0

    .line 120
    :goto_22
    :try_start_4
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_d

    move/from16 v21, v13

    :try_start_5
    iget-object v13, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v13, v13, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x1

    xor-int/lit8 v22, v0, 0x1

    if-eqz v3, :cond_45

    .line 121
    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    if-lez v0, :cond_43

    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    if-lez v0, :cond_43

    if-eqz v10, :cond_43

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v13, v10, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v13

    and-int/lit16 v0, v0, 0x600

    if-nez v0, :cond_43

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v13, v0, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    if-nez v13, :cond_43

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v0

    if-eqz v0, :cond_43

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_43

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 123
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->getCanvas()Landroid/view/HardwareCanvas;

    move-result-object v13
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_c

    .line 124
    :try_start_6
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    if-nez v0, :cond_3b

    .line 125
    :try_start_7
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move/from16 v23, v3

    :try_start_8
    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move/from16 v24, v15

    :try_start_9
    iget v15, v7, Landroid/view/ViewRootImpl;->mHeight:I
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move/from16 v25, v12

    const/4 v12, 0x0

    :try_start_a
    invoke-virtual {v0, v3, v15, v12}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v0

    iput-object v0, v7, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    goto :goto_29

    :catchall_0
    move-exception v0

    move/from16 v25, v12

    goto :goto_24

    :catch_0
    move-exception v0

    move/from16 v25, v12

    goto :goto_27

    :catchall_1
    move-exception v0

    goto :goto_23

    :catch_1
    move-exception v0

    goto :goto_26

    :catchall_2
    move-exception v0

    move/from16 v23, v3

    :goto_23
    move/from16 v25, v12

    move/from16 v24, v15

    :goto_24
    move/from16 v18, v2

    :goto_25
    move v2, v14

    goto/16 :goto_2d

    :catch_2
    move-exception v0

    move/from16 v23, v3

    :goto_26
    move/from16 v25, v12

    move/from16 v24, v15

    :goto_27
    move/from16 v18, v2

    :goto_28
    move v2, v14

    goto/16 :goto_2e

    :cond_3b
    move/from16 v23, v3

    move/from16 v25, v12

    move/from16 v24, v15

    .line 126
    invoke-virtual {v0}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v0

    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v0, v3, :cond_3c

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v0

    iget v3, v7, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v0, v3, :cond_3d

    .line 127
    :cond_3c
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v12, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v3, v12}, Landroid/view/HardwareLayer;->resize(II)Z

    .line 128
    :cond_3d
    :goto_29
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v0, v13}, Landroid/view/HardwareLayer;->start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 130
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v12, :cond_3e

    invoke-virtual {v12}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v12

    if-eqz v12, :cond_3e

    const/4 v12, 0x1

    goto :goto_2a

    :cond_3e
    const/4 v12, 0x0

    :goto_2a
    if-eqz v12, :cond_3f

    .line 131
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->getCurrY()I

    move-result v12

    .line 132
    iget-object v15, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_2b

    .line 133
    :cond_3f
    iget v12, v7, Landroid/view/ViewRootImpl;->mScrollY:I

    :goto_2b
    neg-int v12, v12

    int-to-float v12, v12

    const/4 v15, 0x0

    .line 134
    invoke-virtual {v0, v15, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 135
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v12, :cond_40

    .line 136
    invoke-virtual {v12, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 137
    :cond_40
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v12, v12, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v12, :cond_41

    .line 138
    invoke-virtual {v12}, Landroid/view/DisplayList;->isValid()Z

    move-result v15
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v15, :cond_41

    move/from16 v18, v2

    const/4 v2, 0x1

    const/4 v15, 0x0

    .line 139
    :try_start_b
    invoke-virtual {v0, v12, v15, v2}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    goto :goto_2c

    :cond_41
    move/from16 v18, v2

    .line 140
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 141
    :goto_2c
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move v2, v14

    .line 142
    :try_start_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iput-wide v14, v7, Landroid/view/ViewRootImpl;->mResizeBufferStartTime:J

    .line 143
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x10e0001

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    iput v12, v7, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 144
    :try_start_d
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 145
    :try_start_e
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_44

    .line 146
    invoke-virtual {v0, v13}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_b

    goto/16 :goto_31

    :catchall_3
    move-exception v0

    const/4 v3, 0x1

    goto :goto_30

    :catch_3
    move-exception v0

    const/4 v3, 0x1

    goto :goto_2f

    :catchall_4
    move-exception v0

    goto :goto_2d

    :catch_4
    move-exception v0

    goto :goto_2e

    :catchall_5
    move-exception v0

    goto/16 :goto_25

    :catch_5
    move-exception v0

    goto/16 :goto_28

    :catchall_6
    move-exception v0

    goto/16 :goto_24

    :catch_6
    move-exception v0

    goto/16 :goto_27

    :catchall_7
    move-exception v0

    move/from16 v18, v2

    move/from16 v23, v3

    move/from16 v25, v12

    move v2, v14

    move/from16 v24, v15

    :goto_2d
    const/4 v3, 0x0

    goto :goto_30

    :catch_7
    move-exception v0

    move/from16 v18, v2

    move/from16 v23, v3

    move/from16 v25, v12

    move v2, v14

    move/from16 v24, v15

    :goto_2e
    const/4 v3, 0x0

    :goto_2f
    :try_start_f
    const-string v12, "ViewRootImpl"

    const-string v14, "Not enough memory for content change anim buffer"

    .line 147
    invoke-static {v12, v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 148
    :try_start_10
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_44

    .line 149
    invoke-virtual {v0, v13}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    if-nez v3, :cond_44

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto :goto_31

    :catchall_8
    move-exception v0

    .line 151
    :goto_30
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v1, :cond_42

    .line 152
    invoke-virtual {v1, v13}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    if-nez v3, :cond_42

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    :cond_42
    throw v0

    :cond_43
    move/from16 v18, v2

    move/from16 v23, v3

    move/from16 v25, v12

    move v2, v14

    move/from16 v24, v15

    .line 154
    :cond_44
    :goto_31
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_32

    :cond_45
    move/from16 v18, v2

    move/from16 v23, v3

    move/from16 v25, v12

    move v2, v14

    move/from16 v24, v15

    :goto_32
    if-eqz v1, :cond_46

    .line 155
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 v23, 0x1

    :cond_46
    if-nez v23, :cond_47

    .line 156
    iget v0, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-ne v0, v3, :cond_47

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFitSystemWindowsRequested:Z

    if-nez v0, :cond_47

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    if-eq v0, v1, :cond_48

    .line 157
    :cond_47
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 158
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    const/4 v1, 0x0

    .line 159
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mFitSystemWindowsRequested:Z

    .line 160
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mFitSystemWindowsInsets:Landroid/graphics/Rect;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 161
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mFitSystemWindowsInsets:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    :cond_48
    if-eqz v22, :cond_49

    .line 162
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_49
    if-nez v6, :cond_4b

    .line 163
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_b

    if-eqz v0, :cond_4f

    const/4 v1, 0x1

    .line 164
    :try_start_11
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 165
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 166
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_9

    if-eqz v0, :cond_4a

    .line 167
    :try_start_12
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v0
    :try_end_12
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_9

    move v1, v0

    const/4 v0, 0x1

    goto/16 :goto_38

    :catch_8
    move-exception v0

    .line 168
    :try_start_13
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_9

    return-void

    :catch_9
    :cond_4a
    const/4 v0, 0x1

    goto/16 :goto_37

    .line 169
    :cond_4b
    :try_start_14
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 170
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4c

    .line 171
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_4c
    const/4 v1, 0x0

    .line 172
    iput v1, v7, Landroid/view/ViewRootImpl;->mCurScrollY:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 173
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_4d

    .line 174
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 175
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 176
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 177
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    goto :goto_33

    .line 178
    :cond_4e
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->getGenerationId()I

    move-result v0

    if-eq v9, v0, :cond_4f

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    if-nez v0, :cond_4f

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_4f

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_b

    .line 180
    :try_start_15
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->updateSurface(Landroid/view/Surface;)V
    :try_end_15
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_b

    goto :goto_33

    :catch_a
    move-exception v0

    .line 181
    :try_start_16
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_b

    return-void

    :catch_b
    :cond_4f
    :goto_33
    const/4 v0, 0x0

    goto :goto_37

    :catch_c
    move/from16 v18, v2

    move/from16 v23, v3

    move/from16 v25, v12

    goto :goto_34

    :catch_d
    move/from16 v18, v2

    move/from16 v23, v3

    move/from16 v25, v12

    move/from16 v21, v13

    :goto_34
    move v2, v14

    move/from16 v24, v15

    goto :goto_33

    :catch_e
    move/from16 v18, v2

    goto :goto_35

    :catch_f
    move/from16 v19, v1

    :catch_10
    move/from16 v18, v2

    move/from16 v20, v3

    :goto_35
    move/from16 v25, v12

    move/from16 v21, v13

    move v2, v14

    move/from16 v24, v15

    const/4 v0, 0x0

    goto :goto_36

    :catch_11
    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v25, v12

    move/from16 v21, v13

    move v2, v14

    move/from16 v24, v15

    const/4 v0, 0x0

    const/16 v19, 0x0

    :goto_36
    const/16 v23, 0x0

    :goto_37
    const/4 v1, 0x0

    .line 182
    :goto_38
    iget v3, v5, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 183
    iget v3, v5, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 184
    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v3, v9, :cond_50

    iget v3, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eq v3, v9, :cond_51

    .line 185
    :cond_50
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 186
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 187
    :cond_51
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    if-eqz v3, :cond_58

    .line 188
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 189
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v5, v3, Lv/c;->mSurface:Landroid/view/Surface;

    .line 190
    :cond_52
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    iget v5, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v9, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v3, v5, v9}, Lv/c;->setSurfaceFrameSize(II)V

    .line 191
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    iget-object v3, v3, Lv/c;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 192
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_56

    if-nez v6, :cond_54

    .line 193
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    invoke-virtual {v3}, Lv/c;->ungetCallbacks()V

    const/4 v3, 0x1

    .line 194
    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 195
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    invoke-interface {v3, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 196
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    invoke-virtual {v3}, Lv/c;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 197
    array-length v5, v3

    const/4 v6, 0x0

    :goto_39
    if-ge v6, v5, :cond_53

    aget-object v9, v3, v6

    .line 198
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    invoke-interface {v9, v12}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_53
    const/4 v15, 0x1

    goto :goto_3a

    :cond_54
    move/from16 v15, v24

    :goto_3a
    if-eqz v15, :cond_55

    .line 199
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    iget v6, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v9, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v12, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-interface {v3, v5, v6, v9, v12}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 200
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    invoke-virtual {v3}, Lv/c;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 201
    array-length v5, v3

    const/4 v6, 0x0

    :goto_3b
    if-ge v6, v5, :cond_55

    aget-object v9, v3, v6

    .line 202
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    iget v13, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v14, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v15, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-interface {v9, v12, v13, v14, v15}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_55
    const/4 v3, 0x0

    .line 203
    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mIsCreating:Z

    goto :goto_3d

    :cond_56
    if-eqz v6, :cond_58

    .line 204
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    invoke-virtual {v3}, Lv/c;->ungetCallbacks()V

    .line 205
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    invoke-virtual {v3}, Lv/c;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v3

    .line 206
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    if-eqz v3, :cond_57

    .line 207
    array-length v5, v3

    const/4 v6, 0x0

    :goto_3c
    if-ge v6, v5, :cond_57

    aget-object v9, v3, v6

    .line 208
    iget-object v12, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    invoke-interface {v9, v12}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 209
    :cond_57
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    iget-object v3, v3, Lv/c;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 210
    :try_start_17
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    new-instance v5, Landroid/view/Surface;

    invoke-direct {v5}, Landroid/view/Surface;-><init>()V

    iput-object v5, v3, Lv/c;->mSurface:Landroid/view/Surface;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 211
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    iget-object v3, v3, Lv/c;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3d

    :catchall_9
    move-exception v0

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    iget-object v1, v1, Lv/c;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 212
    :cond_58
    :goto_3d
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5a

    if-nez v1, :cond_59

    .line 213
    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->getWidth()I

    move-result v5

    if-ne v3, v5, :cond_59

    iget v3, v7, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->getHeight()I

    move-result v5

    if-eq v3, v5, :cond_5a

    .line 214
    :cond_59
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget v5, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v6, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v3, v5, v6}, Landroid/view/HardwareRenderer;->setup(II)V

    if-nez v1, :cond_5a

    .line 215
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/HardwareRenderer;->invalidate(Landroid/view/Surface;)V

    const/4 v1, 0x1

    .line 216
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 217
    :cond_5a
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v1, :cond_60

    and-int/lit8 v1, v19, 0x1

    if-eqz v1, :cond_5b

    const/4 v1, 0x1

    goto :goto_3e

    :cond_5b
    const/4 v1, 0x0

    .line 218
    :goto_3e
    invoke-direct {v7, v1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 219
    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-ne v1, v3, :cond_5c

    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-ne v1, v3, :cond_5c

    if-eqz v23, :cond_60

    .line 220
    :cond_5c
    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v3, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v3}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v1

    .line 221
    iget v3, v7, Landroid/view/ViewRootImpl;->mHeight:I

    iget v5, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v3

    .line 222
    invoke-direct {v7, v1, v3}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 223
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 224
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 225
    iget v9, v10, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/4 v12, 0x0

    cmpl-float v13, v9, v12

    const/high16 v12, 0x40000000    # 2.0f

    if-lez v13, :cond_5d

    .line 226
    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    mul-float/2addr v1, v9

    float-to-int v1, v1

    add-int/2addr v5, v1

    .line 227
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v5, 0x1

    goto :goto_3f

    :cond_5d
    const/4 v5, 0x0

    .line 228
    :goto_3f
    iget v9, v10, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/4 v13, 0x0

    cmpl-float v13, v9, v13

    if-lez v13, :cond_5e

    .line 229
    iget v3, v7, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    add-int/2addr v6, v3

    .line 230
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v5, 0x1

    :cond_5e
    if-eqz v5, :cond_5f

    .line 231
    invoke-direct {v7, v1, v3}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    :cond_5f
    const/4 v13, 0x1

    goto :goto_40

    :cond_60
    move/from16 v13, v21

    :goto_40
    move/from16 v1, v19

    :goto_41
    if-eqz v13, :cond_61

    .line 232
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v3, :cond_61

    const/4 v3, 0x1

    goto :goto_42

    :cond_61
    const/4 v3, 0x0

    :goto_42
    if-nez v3, :cond_63

    .line 233
    iget-boolean v5, v11, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v5, :cond_62

    goto :goto_43

    :cond_62
    const/4 v5, 0x0

    goto :goto_44

    :cond_63
    :goto_43
    const/4 v5, 0x1

    :goto_44
    if-eqz v3, :cond_65

    .line 234
    invoke-direct {v7, v10, v2, v4}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    .line 235
    iget v2, v8, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_65

    .line 236
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    invoke-virtual {v8, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 237
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v4, 0x0

    aget v6, v3, v4

    const/4 v9, 0x1

    aget v10, v3, v9

    aget v12, v3, v4

    iget v4, v8, Landroid/view/View;->mRight:I

    add-int/2addr v12, v4

    iget v4, v8, Landroid/view/View;->mLeft:I

    sub-int/2addr v12, v4

    aget v3, v3, v9

    iget v4, v8, Landroid/view/View;->mBottom:I

    add-int/2addr v3, v4

    iget v4, v8, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v6, v10, v12, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 238
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v8, v2}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 239
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_64

    .line 240
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 241
    :cond_64
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 242
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 v2, 0x1

    .line 243
    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 244
    :try_start_18
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_12

    :catch_12
    :cond_65
    if-eqz v5, :cond_66

    const/4 v2, 0x0

    .line 245
    iput-boolean v2, v11, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 246
    iget-object v2, v11, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    :cond_66
    if-eqz v18, :cond_69

    .line 247
    iget-object v2, v11, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 248
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 249
    iget-object v3, v11, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 250
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, v11, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    if-nez v20, :cond_67

    .line 251
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 252
    :cond_67
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 253
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_68

    .line 254
    iget-object v4, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 255
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 256
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v6, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v5

    goto :goto_45

    .line 257
    :cond_68
    iget-object v3, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 258
    iget-object v4, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 259
    iget-object v5, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    :goto_45
    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    .line 260
    :try_start_19
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v2, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v28, v2

    invoke-interface/range {v26 .. v31}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_13

    .line 261
    :catch_13
    :cond_69
    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v2, :cond_6b

    .line 262
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_6a

    .line 263
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_6a

    .line 264
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    :cond_6a
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_6c

    const/4 v2, 0x1

    .line 265
    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    goto :goto_46

    .line 266
    :cond_6b
    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    if-eqz v2, :cond_6c

    const/4 v2, 0x1

    goto :goto_47

    :cond_6c
    :goto_46
    const/4 v2, 0x0

    :goto_47
    const/4 v3, 0x0

    .line 267
    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 268
    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 269
    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    move/from16 v3, v25

    .line 270
    iput v3, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 271
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v4, :cond_6d

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v4

    if-nez v4, :cond_6d

    .line 272
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v4

    .line 273
    iget-boolean v5, v7, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eq v4, v5, :cond_6d

    .line 274
    iput-boolean v4, v7, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 275
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    if-eqz v5, :cond_6d

    if-eqz v4, :cond_6d

    .line 276
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 277
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v24

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-boolean v9, v7, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    const/4 v10, 0x1

    xor-int/lit8 v26, v9, 0x1

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v22, v5

    move-object/from16 v23, v4

    move/from16 v25, v8

    move/from16 v27, v6

    invoke-virtual/range {v22 .. v27}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    :cond_6d
    const/4 v4, 0x2

    and-int/2addr v1, v4

    if-eqz v1, :cond_6e

    const/4 v1, 0x1

    .line 278
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    goto :goto_48

    :cond_6e
    const/4 v1, 0x1

    .line 279
    :goto_48
    iget-object v4, v11, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v4

    if-nez v4, :cond_70

    if-eqz v3, :cond_6f

    goto :goto_49

    :cond_6f
    const/4 v9, 0x0

    goto :goto_4a

    :cond_70
    :goto_49
    move v9, v1

    :goto_4a
    if-nez v9, :cond_74

    if-nez v0, :cond_74

    if-eqz v2, :cond_71

    .line 280
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_77

    .line 281
    :cond_71
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_73

    const/4 v1, 0x0

    .line 282
    :goto_4b
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_72

    .line 283
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 284
    :cond_72
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 285
    :cond_73
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()V

    goto :goto_4d

    :cond_74
    if-nez v3, :cond_75

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_4d

    .line 287
    :cond_75
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_77

    const/4 v1, 0x0

    .line 288
    :goto_4c
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_76

    .line 289
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 290
    :cond_76
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_77
    :goto_4d
    const/4 v1, 0x0

    .line 291
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    :cond_78
    :goto_4e
    return-void
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    return-void
.end method

.method private profileRendering(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_3

    .line 2
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    .line 3
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 5
    :cond_0
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Landroid/view/ViewRootImpl$3;

    invoke-direct {p1, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 8
    :cond_1
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    :cond_3
    :goto_0
    return-void
.end method

.method private recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 2
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 3
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 4
    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    :cond_0
    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 1
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    const/4 v2, 0x0

    if-eqz v15, :cond_0

    .line 2
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 4
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v4, v15}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    move/from16 v16, v3

    goto :goto_0

    :cond_0
    move/from16 v16, v2

    .line 5
    :goto_0
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    iput v2, v3, Landroid/content/res/Configuration;->seq:I

    if-eqz v15, :cond_1

    .line 6
    iget v2, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iget v3, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v3, :cond_1

    .line 7
    iget v2, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ViewRootImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v2, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iput v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 10
    :cond_1
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v4, v0, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    add-float/2addr v7, v6

    float-to-int v6, v7

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-interface/range {v1 .. v14}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v1

    if-eqz v16, :cond_2

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 12
    :cond_2
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_3

    .line 13
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 14
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 15
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 16
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    :cond_3
    return v1
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private scheduleProcessInputEvents()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private trackFPS()V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 3
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 4
    iput v3, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_0

    .line 5
    :cond_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v4, v0, v4

    .line 8
    iget-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v0, v6

    .line 9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\tFrame time:\t"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ViewRootImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    const-wide/16 v10, 0x3e8

    cmp-long v4, v6, v10

    if-lez v4, :cond_1

    .line 11
    iget v4, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v4, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v8

    long-to-float v6, v6

    div-float/2addr v4, v6

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tFPS:\t"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 14
    iput v3, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public attachFunctor(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v1, v0, p1}, Landroid/view/HardwareRenderer;->attachFunctor(Landroid/view/View$AttachInfo;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
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

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public changeCanvasOpacity(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeCanvasOpacity: opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewRootImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

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
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    return-void
.end method

.method public debug()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    return-void
.end method

.method public destroyHardwareLayers()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3c

    .line 3
    invoke-static {v0}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidateDisplayLists()V

    .line 5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyLayers(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public destroyHardwareResources()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidateDisplayLists()V

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    :cond_0
    return-void
.end method

.method public detachFunctor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->detachFunctor(I)V

    :cond_0
    return-void
.end method

.method public die(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    if-nez p1, :cond_1

    .line 4
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempting to destroy the window while drawing!\n  window="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewRootImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchAppVisibility(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchCheckFocus()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xe

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchDetachedFromWindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->validate()Z

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 7
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 8
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    .line 9
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, v0}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 11
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 12
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 13
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 14
    iput-object v0, v1, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 15
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 16
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v2, :cond_2

    .line 17
    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 18
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v1}, Landroid/view/InputQueue;->dispose()V

    .line 19
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 20
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 21
    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {v1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    .line 23
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 24
    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 27
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 28
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    return-void
.end method

.method public dispatchDoneAnimating()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    .line 2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    .line 3
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchFlushHardwareLayerUpdates()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchMoved(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 3
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {p1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 4
    iget p1, v0, Landroid/graphics/PointF;->x:F

    float-to-double p1, p1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v1

    double-to-int p1, p1

    .line 5
    iget p2, v0, Landroid/graphics/PointF;->y:F

    float-to-double v3, p2

    add-double/2addr v3, v1

    double-to-int p2, v3

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 7
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz p5, :cond_0

    const/4 p5, 0x5

    goto :goto_0

    :cond_0
    const/4 p5, 0x4

    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p5

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7
    :cond_1
    invoke-static {}, Lo/f;->b()Lo/f;

    move-result-object v0

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 9
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v2

    :cond_3
    iput-object p1, v0, Lo/f;->c:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p3, p1

    :cond_4
    iput-object p3, v0, Lo/f;->d:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p4, p1

    :cond_5
    iput-object p4, v0, Lo/f;->e:Ljava/lang/Object;

    if-eqz v1, :cond_6

    if-eqz p6, :cond_6

    .line 12
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1, p6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object p6, p1

    :cond_6
    iput-object p6, v0, Lo/f;->f:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 13
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p2, p1

    :cond_7
    iput-object p2, v0, Lo/f;->g:Ljava/lang/Object;

    .line 14
    iput-object v0, p5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p1, p5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchScreenStateChange(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    .line 2
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    .line 3
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 4
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    .line 5
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 6
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 p2, 0x11

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchUnhandledKey(Landroid/view/KeyEvent;)V
    .locals 15

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    or-int/lit16 v12, v1, 0x400

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    iget v7, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v13

    const/4 v14, 0x0

    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    move-object v0, p0

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-void
.end method

.method public disposeResizeBuffer()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroid/view/ViewRootImpl$1;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->safelyRun(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public doConsumeBatchedInput(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/view/InputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    :cond_1
    return-void
.end method

.method public doDie()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    .line 6
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    .line 8
    :cond_1
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v1, :cond_5

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidateDisplayLists()V

    .line 10
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 11
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 13
    iget v3, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v3, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 14
    :goto_0
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    .line 15
    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :catch_0
    :cond_4
    :try_start_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 18
    :cond_5
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 19
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    return-void

    :catchall_0
    move-exception v0

    .line 21
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public doProcessInputEvents()V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4
    :cond_0
    iput-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    const-wide/16 v2, 0x4

    .line 6
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 7
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 10
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method public doTraversal()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v1, v2}, Landroid/os/Looper;->removeSyncBarrier(I)V

    .line 4
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v1, :cond_0

    const-string v1, "ViewAncestor"

    .line 5
    invoke-static {v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v1, 0x8

    const-string v3, "performTraversals"

    .line 6
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 9
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v1, :cond_1

    .line 10
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 11
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "  "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "ViewRoot:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "mAdded="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Z)V

    const-string p4, " mRemoved="

    .line 4
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p4, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Z)V

    .line 5
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "mConsumeBatchedInputScheduled="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    iget-boolean p4, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Z)V

    .line 7
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "mPendingInputEventCount="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget p4, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(I)V

    .line 9
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "mProcessInputEventsScheduled="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    iget-boolean p4, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Z)V

    .line 11
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "mTraversalScheduled="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    iget-boolean p4, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Z)V

    .line 13
    iget-boolean p4, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz p4, :cond_0

    const-string p4, " (barrier="

    .line 14
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p4, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 16
    :goto_0
    iget-object p4, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {p4, p2, p3}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 17
    iget-object p4, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p4, p1, p3}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 18
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "View Hierarchy:"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, p2, p3, p1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    return-void
.end method

.method public dumpGfxInfo([I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    aput v1, p1, v0

    aput v1, p1, v1

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    :cond_0
    return-void
.end method

.method public enqueueDisplayList(Landroid/view/DisplayList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object p1

    .line 3
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez p2, :cond_0

    .line 4
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8
    :goto_0
    iget p1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    const-wide/16 p2, 0x4

    .line 9
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    invoke-static {p2, p3, v0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    if-eqz p4, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_1

    .line 11
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    :goto_1
    return-void
.end method

.method public ensureTouchMode(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public flushHardwareLayerUpdates()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->flushLayerUpdates()V

    :cond_0
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 6
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 7
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_1

    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1

    .line 1
    iget-object p3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne p1, p3, :cond_0

    .line 2
    iget p1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget p3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, p3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "child is not mine, honest!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHostVisibility()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    return v0
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 2
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public getLayoutDirection()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    .line 1
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

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public handleAppVisibility(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_0
    return-void
.end method

.method public handleDispatchDoneAnimating()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_1
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    if-eq v0, v1, :cond_0

    .line 2
    iput v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v1, :cond_2

    .line 7
    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    .line 8
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_3

    .line 9
    iget p1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 p1, p1, 0x7

    .line 10
    iget v1, v0, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    if-eq p1, v1, :cond_3

    .line 11
    iput p1, v0, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    .line 12
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    :cond_3
    return-void
.end method

.method public handleGetNewSurface()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public handleScreenStateChange(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mScreenOn:Z

    if-eq p1, v1, :cond_1

    .line 2
    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mScreenOn:Z

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_1
    return-void
.end method

.method public invalidate()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v0, :cond_1

    return-object p1

    .line 4
    :cond_1
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_5

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 7
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_3

    neg-int v0, v0

    .line 8
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 9
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 11
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    .line 12
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 13
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 15
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 16
    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 17
    :cond_6
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, p2}, Landroid/graphics/Rect;->union(IIII)V

    .line 18
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget p2, p2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 19
    iget v2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int p2, v4

    invoke-virtual {v0, v1, v1, v2, p2}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p2

    if-nez p2, :cond_7

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 21
    :cond_7
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_9

    if-nez p2, :cond_8

    iget-boolean p2, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz p2, :cond_9

    .line 22
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_9
    return-object p1
.end method

.method public invalidateDisplayLists()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayLists:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/DisplayList;

    .line 4
    invoke-virtual {v3}, Landroid/view/DisplayList;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3}, Landroid/view/DisplayList;->reset()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public invalidateWorld(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isInLayout()Z
    .locals 1

    .line 1
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

    .line 1
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

.method public loadSystemProperties()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$4;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    return-void
.end method

.method public onHardwarePostDraw(Landroid/view/HardwareCanvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onHardwarePreDraw(Landroid/view/HardwareCanvas;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public outputDisplayList(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0, p1}, Landroid/view/HardwareCanvas;->outputDisplayList(Landroid/view/DisplayList;)V

    :cond_0
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .locals 2

    .line 1
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
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mMediaDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz p1, :cond_5

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v2, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_1

    .line 4
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown effect id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not defined in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Landroid/view/SoundEffectConstants;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    .line 7
    :cond_3
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    .line 8
    :cond_4
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewRootImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void
.end method

.method public profile()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    return-void
.end method

.method public pushHardwareLayerUpdate(Landroid/view/HardwareLayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    :cond_0
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 4
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result p1

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 5
    :try_start_0
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {p2, v0, v1, p3}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
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

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFitSystemWindowsRequested:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_0
    return-void
.end method

.method public requestLayoutDuringLayout(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    iget-boolean p1, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const v0, 0x8000

    if-eq p1, v0, :cond_2

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p1

    .line 5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1, p1}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p1

    .line 10
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 12
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 14
    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3
    iget p1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, v0, Landroid/view/View;->mPrivateFlags:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleConsumeBatchedInput()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public scheduleTraversals()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    .line 4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    :cond_0
    return-void
.end method

.method public scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 3
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 4
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    if-gt v2, v3, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v4

    move v1, p1

    goto/16 :goto_5

    .line 5
    :cond_1
    :goto_0
    iget v1, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 6
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return v4

    .line 7
    :cond_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_1

    :cond_3
    move-object v3, v5

    :goto_1
    if-eq v2, v3, :cond_4

    move-object p1, v5

    :cond_4
    if-ne v2, v3, :cond_5

    .line 8
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    if-nez v3, :cond_5

    if-nez p1, :cond_5

    goto/16 :goto_4

    .line 9
    :cond_5
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    .line 10
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 11
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez p1, :cond_6

    .line 12
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 13
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 15
    :cond_6
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 16
    :cond_7
    :goto_2
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    if-le p1, v2, :cond_8

    goto :goto_3

    .line 18
    :cond_8
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int v5, v2, v1

    if-ge v5, v3, :cond_9

    sub-int/2addr v2, v1

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    goto :goto_3

    .line 19
    :cond_9
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_a

    .line 20
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    sub-int/2addr p1, v2

    add-int/2addr v1, p1

    :cond_a
    :goto_3
    const/4 p1, 0x1

    goto :goto_5

    :cond_b
    :goto_4
    move p1, v4

    .line 21
    :goto_5
    iget v0, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v1, v0, :cond_f

    if-nez p2, :cond_d

    .line 22
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-nez p2, :cond_d

    .line 23
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez p2, :cond_c

    .line 24
    new-instance p2, Landroid/widget/Scroller;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 25
    :cond_c
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v0, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v2, v1, v0

    invoke-virtual {p2, v4, v0, v4, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_6

    .line 26
    :cond_d
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz p2, :cond_e

    .line 27
    invoke-virtual {p2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 28
    :cond_e
    :goto_6
    iput v1, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    :cond_f
    return p1
.end method

.method public setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 4
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 8
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v1

    const/16 v4, 0x80

    .line 10
    invoke-virtual {v3, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 12
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 14
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 15
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method

.method public setDragFocus(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setDrawDuringWindowsAnimating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mDrawDuringWindowsAnimating:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->handleDispatchDoneAnimating()V

    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 4
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x80

    .line 5
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 6
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    const/high16 v3, 0x80000

    and-int/2addr v0, v3

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 10
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v4, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 11
    :cond_1
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 12
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    if-eqz p2, :cond_2

    .line 13
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput p2, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 15
    :cond_2
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 p1, p1, 0xf0

    if-nez p1, :cond_3

    .line 16
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 p2, p2, -0xf1

    and-int/lit16 v0, v1, 0xf0

    or-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 17
    :cond_3
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 18
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mUpdateTranformHint:Z

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLocalDragState(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    return-void
.end method

.method public setStopped(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v2, :cond_14

    .line 3
    iput-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v2

    iput v2, v1, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    .line 5
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v2, v0}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 6
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 7
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 8
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 9
    :cond_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v3, v1, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 11
    instance-of v4, v0, Lv/d;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 12
    move-object v4, v0

    check-cast v4, Lv/d;

    invoke-interface {v4}, Lv/d;->b()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v4

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v4, :cond_1

    .line 13
    new-instance v4, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v4, v1}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    .line 14
    invoke-virtual {v4, v5}, Lv/c;->setFormat(I)V

    .line 15
    :cond_1
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v6

    iput-object v6, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 17
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    iget-object v7, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Landroid/view/DisplayAdjustments;->setActivityToken(Landroid/os/IBinder;)V

    .line 18
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lv/c;

    if-nez v6, :cond_2

    .line 19
    invoke-direct {v1, v2}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    .line 20
    :cond_2
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    .line 21
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v8, v6}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 22
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 23
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v6, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    move v6, v7

    goto :goto_0

    :cond_3
    move v6, v5

    .line 24
    :goto_0
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    if-nez v4, :cond_4

    .line 25
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 26
    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 27
    :cond_4
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v4, v1, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 28
    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    const/4 v4, -0x1

    .line 29
    iput v4, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 30
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 31
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v8, :cond_5

    move v9, v7

    goto :goto_1

    :cond_5
    move v9, v5

    :goto_1
    iput-boolean v9, v4, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-nez v8, :cond_6

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_2

    .line 32
    :cond_6
    iget v8, v8, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    :goto_2
    iput v8, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    if-eqz p3, :cond_7

    .line 33
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    iput-object v8, v4, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 34
    :cond_7
    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 36
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_8

    .line 37
    new-instance v4, Landroid/view/InputChannel;

    invoke-direct {v4}, Landroid/view/InputChannel;-><init>()V

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :cond_8
    :try_start_1
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v4, v1, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 39
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 40
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    .line 41
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v10, v1, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v12

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v13

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v14, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v8 .. v15}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_9

    .line 42
    :try_start_2
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 43
    :cond_9
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_a

    .line 44
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 45
    :cond_a
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v8, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 47
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    if-gez v4, :cond_b

    .line 48
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 49
    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 50
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v0, v3}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 52
    invoke-virtual {v1, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    packed-switch v4, :pswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    goto/16 :goto_3

    .line 54
    :pswitch_0
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to add window -- token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not valid; is your activity running?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :pswitch_1
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to add window -- token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not for an application"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :pswitch_2
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to add window -- app for token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is exiting"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_3
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has already been added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :pswitch_4
    monitor-exit p0

    return-void

    .line 59
    :pswitch_5
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -- another window of this type already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :pswitch_6
    new-instance v0, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -- permission denied for this window type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_7
    new-instance v0, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -- the specified display can not be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- unknown error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_b
    instance-of v3, v0, Lv/d;

    if-eqz v3, :cond_c

    .line 64
    move-object v3, v0

    check-cast v3, Lv/d;

    invoke-interface {v3}, Lv/d;->a()Landroid/view/InputQueue$Callback;

    move-result-object v3

    iput-object v3, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 65
    :cond_c
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_e

    .line 66
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v3, :cond_d

    .line 67
    new-instance v3, Landroid/view/InputQueue;

    invoke-direct {v3}, Landroid/view/InputQueue;-><init>()V

    iput-object v3, v1, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 68
    iget-object v6, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    invoke-interface {v6, v3}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 69
    :cond_d
    new-instance v3, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v3, v1, v6, v8}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v3, v1, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 70
    :cond_e
    invoke-virtual {v0, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    and-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_f

    move v3, v7

    goto :goto_4

    :cond_f
    move v3, v5

    .line 71
    :goto_4
    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_10

    move v5, v7

    .line 72
    :cond_10
    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 73
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 74
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 75
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_12

    .line 76
    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 77
    :cond_12
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 78
    new-instance v2, Landroid/view/ViewRootImpl$SyntheticInputStage;

    invoke-direct {v2, v1}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    .line 79
    new-instance v3, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    invoke-direct {v3, v1, v2}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 80
    new-instance v2, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:native-post-ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 81
    new-instance v3, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    invoke-direct {v3, v1, v2}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 82
    new-instance v2, Landroid/view/ViewRootImpl$ImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 83
    new-instance v4, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    invoke-direct {v4, v1, v2}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 84
    new-instance v2, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aq:native-pre-ime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v4, v5}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 85
    iput-object v2, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 86
    iput-object v3, v1, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aq:pending:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 88
    :try_start_3
    iput-boolean v5, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 89
    iput-object v3, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 90
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 91
    iput-object v3, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 92
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v4, v3}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 94
    invoke-virtual {v1, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 95
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Adding window failed"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    if-eqz v6, :cond_13

    .line 96
    :try_start_4
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_13
    throw v0

    .line 97
    :cond_14
    :goto_6
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch -0x9
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

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public unscheduleConsumeBatchedInput()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unscheduleTraversals()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/Looper;->removeSyncBarrier(I)V

    .line 4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 4
    iget p1, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    move-object p1, v1

    .line 5
    :cond_0
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 7
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks;

    invoke-interface {v3, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-nez p2, :cond_2

    .line 11
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p2

    if-eqz p2, :cond_4

    .line 12
    :cond_2
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    .line 14
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    if-eq p2, v0, :cond_3

    .line 15
    iget p2, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 16
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 17
    :cond_3
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 18
    sget-boolean p1, Landroid/os/Build;->USE_LCDC_COMPOSER:Z

    if-eqz p1, :cond_4

    .line 19
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mConfigurationChanged:Z

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public windowFocusChanged(ZZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 5
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
