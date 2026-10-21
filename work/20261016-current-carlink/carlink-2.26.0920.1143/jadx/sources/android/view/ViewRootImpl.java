package android.view;

import android.Manifest;
import android.animation.LayoutTransition;
import android.app.ActivityManager;
import android.app.ResourcesManager;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.media.AudioManager;
import android.media.TtmlUtils;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Binder;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.AndroidRuntimeException;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.MergedConfiguration;
import android.util.Slog;
import android.util.TimeUtils;
import android.util.TypedValue;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.accessibility.IAccessibilityInteractionConnection;
import android.view.accessibility.IAccessibilityInteractionConnectionCallback;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.Scroller;
import com.android.internal.R;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.os.IResultReceiver;
import com.android.internal.os.SomeArgs;
import com.android.internal.policy.PhoneFallbackEventHandler;
import com.android.internal.util.Preconditions;
import com.android.internal.view.BaseSurfaceHolder;
import com.android.internal.view.RootViewSurfaceTaker;
import com.android.internal.view.SurfaceCallbackHelper;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes2.dex */
public class ViewRootImpl extends AbsViewRootImpl implements ViewParent, View.AttachInfo.Callbacks, ThreadedRenderer.DrawCallbacks {
    private static final boolean DBG = false;
    private static final boolean DEBUG_CONFIGURATION = false;
    private static final boolean DEBUG_DIALOG = false;
    private static final boolean DEBUG_DRAW = false;
    private static final boolean DEBUG_FPS = false;
    private static final boolean DEBUG_IMF = false;
    private static final boolean DEBUG_INPUT_RESIZE = false;
    private static final boolean DEBUG_INPUT_STAGES = false;
    private static final boolean DEBUG_KEEP_SCREEN_ON = false;
    private static final boolean DEBUG_LAYOUT = false;
    private static final boolean DEBUG_ORIENTATION = false;
    private static final boolean DEBUG_TRACKBALL = false;
    private static final boolean LOCAL_LOGV = false;
    private static final int MAX_QUEUED_INPUT_EVENT_POOL_SIZE = 10;
    static final int MAX_TRACKBALL_DELAY = 250;
    private static final int MSG_CHECK_FOCUS = 13;
    private static final int MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST = 21;
    private static final int MSG_CLOSE_SYSTEM_DIALOGS = 14;
    private static final int MSG_DIE = 3;
    private static final int MSG_DISPATCH_APP_VISIBILITY = 8;
    private static final int MSG_DISPATCH_DRAG_EVENT = 15;
    private static final int MSG_DISPATCH_DRAG_LOCATION_EVENT = 16;
    private static final int MSG_DISPATCH_GET_NEW_SURFACE = 9;
    private static final int MSG_DISPATCH_INPUT_EVENT = 7;
    private static final int MSG_DISPATCH_KEY_FROM_IME = 11;
    private static final int MSG_DISPATCH_SYSTEM_UI_VISIBILITY = 17;
    private static final int MSG_DISPATCH_WINDOW_SHOWN = 25;
    private static final int MSG_DRAW_FINISHED = 29;
    private static final int MSG_INVALIDATE = 1;
    private static final int MSG_INVALIDATE_RECT = 2;
    private static final int MSG_INVALIDATE_WORLD = 22;
    private static final int MSG_POINTER_CAPTURE_CHANGED = 28;
    private static final int MSG_PROCESS_INPUT_EVENTS = 19;
    private static final int MSG_REQUEST_KEYBOARD_SHORTCUTS = 26;
    private static final int MSG_RESIZED = 4;
    private static final int MSG_RESIZED_REPORT = 5;
    private static final int MSG_SYNTHESIZE_INPUT_EVENT = 24;
    private static final int MSG_UPDATE_CONFIGURATION = 18;
    private static final int MSG_UPDATE_POINTER_ICON = 27;
    private static final int MSG_WINDOW_FOCUS_CHANGED = 6;
    private static final int MSG_WINDOW_MOVED = 23;
    private static final String PROPERTY_DISABLE_HWACC = "debug.disable.hwacc";
    public static final String PROPERTY_EMULATOR_WIN_OUTSET_BOTTOM_PX = "ro.emu.win_outset_bottom_px";
    private static final String PROPERTY_PROFILE_DISPATCHINPUT = "persist.sys.dispatch_input";
    private static final String PROPERTY_PROFILE_RENDERING = "viewroot.profile_rendering";
    private static final String PROPERTY_PROFILE_UIAUTOMATOR = "persist.sys.uiautomator";
    private static final String TAG = "ViewRootImpl";
    private static final boolean USE_MT_RENDERER = true;
    private static boolean sAlwaysAssignFocus;
    View mAccessibilityFocusedHost;
    AccessibilityNodeInfo mAccessibilityFocusedVirtualView;
    final AccessibilityInteractionConnectionManager mAccessibilityInteractionConnectionManager;
    AccessibilityInteractionController mAccessibilityInteractionController;
    final AccessibilityManager mAccessibilityManager;
    private ActivityConfigCallback mActivityConfigCallback;
    private boolean mActivityRelaunched;
    boolean mAdded;
    boolean mAddedTouchMode;
    private boolean mAppVisibilityChanged;
    boolean mApplyInsetsRequested;
    final View.AttachInfo mAttachInfo;
    AudioManager mAudioManager;
    final String mBasePackageName;
    private int mCanvasOffsetX;
    private int mCanvasOffsetY;
    Choreographer mChoreographer;
    int mClientWindowLayoutFlags;
    final ConsumeBatchedInputImmediatelyRunnable mConsumeBatchedInputImmediatelyRunnable;
    boolean mConsumeBatchedInputImmediatelyScheduled;
    boolean mConsumeBatchedInputScheduled;
    final ConsumeBatchedInputRunnable mConsumedBatchedInputRunnable;
    final Context mContext;
    int mCurScrollY;
    View mCurrentDragView;
    private final int mDensity;
    Rect mDirty;
    Display mDisplay;
    private final DisplayManager.DisplayListener mDisplayListener;
    final DisplayManager mDisplayManager;
    ClipDescription mDragDescription;
    private boolean mDragResizing;
    boolean mDrawingAllowed;
    int mDrawsNeededToReport;
    FallbackEventHandler mFallbackEventHandler;
    boolean mFirst;
    InputStage mFirstInputStage;
    InputStage mFirstPostImeInputStage;
    private boolean mForceNextConfigUpdate;
    boolean mForceNextWindowRelayout;
    private int mFpsNumFrames;
    boolean mFullRedrawNeeded;
    boolean mHadWindowFocus;
    final ViewRootHandler mHandler;
    boolean mHandlingLayoutInLayoutRequest;
    int mHardwareXOffset;
    int mHardwareYOffset;
    boolean mHasHadWindowFocus;
    int mHeight;
    final HighContrastTextManager mHighContrastTextManager;
    private boolean mInLayout;
    InputChannel mInputChannel;
    protected final InputEventConsistencyVerifier mInputEventConsistencyVerifier;
    WindowInputEventReceiver mInputEventReceiver;
    InputQueue mInputQueue;
    InputQueue.Callback mInputQueueCallback;
    final InvalidateOnAnimationRunnable mInvalidateOnAnimationRunnable;
    private boolean mInvalidateRootRequested;
    public boolean mIsAnimating;
    boolean mIsCreating;
    boolean mIsDrawing;
    boolean mIsInTraversal;
    boolean mLastOverscanRequested;
    WeakReference<View> mLastScrolledFocus;
    int mLastSystemUiVisibility;
    int mLastTouchSource;
    boolean mLastWasImTarget;
    private WindowInsets mLastWindowInsets;
    boolean mLayoutRequested;
    ArrayList<View> mLayoutRequesters;
    volatile Object mLocalDragState;
    final WindowLeaked mLocation;
    boolean mLostWindowFocus;
    private boolean mNeedsRendererSetup;
    boolean mNewSurfaceNeeded;
    private final int mNoncompatDensity;
    boolean mPendingAlwaysConsumeNavBar;
    int mPendingInputEventCount;
    QueuedInputEvent mPendingInputEventHead;
    QueuedInputEvent mPendingInputEventTail;
    private ArrayList<LayoutTransition> mPendingTransitions;
    boolean mPointerCapture;
    final Region mPreviousTransparentRegion;
    boolean mProcessInputEventsScheduled;
    private boolean mProfile;
    private boolean mProfileRendering;
    private QueuedInputEvent mQueuedInputEventPool;
    private int mQueuedInputEventPoolSize;
    private boolean mRemoved;
    private Choreographer.FrameCallback mRenderProfiler;
    private boolean mRenderProfilingEnabled;
    boolean mReportNextDraw;
    private int mResizeMode;
    boolean mScrollMayChange;
    int mScrollY;
    Scroller mScroller;
    SendWindowContentChangedAccessibilityEvent mSendWindowContentChangedAccessibilityEvent;
    int mSeq;
    int mSoftInputMode;
    BaseSurfaceHolder mSurfaceHolder;
    SurfaceHolder.Callback2 mSurfaceHolderCallback;
    InputStage mSyntheticInputStage;
    private String mTag;
    final int mTargetSdkVersion;
    HashSet<View> mTempHashSet;
    final Rect mTempRect;
    final Thread mThread;
    CompatibilityInfo.Translator mTranslator;
    final Region mTransparentRegion;
    int mTraversalBarrier;
    final TraversalRunnable mTraversalRunnable;
    public boolean mTraversalScheduled;
    boolean mUnbufferedInputDispatch;
    View mView;
    final ViewConfiguration mViewConfiguration;
    private int mViewLayoutDirectionInitial;
    int mViewVisibility;
    final Rect mVisRect;
    int mWidth;
    boolean mWillDrawSoon;
    final Rect mWinFrame;
    final W mWindow;
    CountDownLatch mWindowDrawCountDown;
    final IWindowSession mWindowSession;
    private final ArrayList<WindowStoppedCallback> mWindowStoppedCallbacks;
    static final ThreadLocal<HandlerActionQueue> sRunQueues = new ThreadLocal<>();
    static final ArrayList<Runnable> sFirstDrawHandlers = new ArrayList<>();
    static boolean sFirstDrawComplete = false;
    private static final ArrayList<ConfigChangedCallback> sConfigCallbacks = new ArrayList<>();
    private static boolean sCompatibilityDone = false;
    static final Interpolator mResizeInterpolator = new AccelerateDecelerateInterpolator();

    @GuardedBy("mWindowCallbacks")
    final ArrayList<WindowCallbacks> mWindowCallbacks = new ArrayList<>();
    final int[] mTmpLocation = new int[2];
    final TypedValue mTmpValue = new TypedValue();
    final WindowManager.LayoutParams mWindowAttributes = new WindowManager.LayoutParams();
    boolean mAppVisible = true;
    private boolean mForceDecorViewVisibility = false;
    int mOrigWindowType = -1;
    boolean mStopped = false;
    boolean mIsAmbientMode = false;
    boolean mPausedForTransition = false;
    boolean mLastInCompatMode = false;
    String mPendingInputEventQueueLengthCounterName = "pq";
    boolean mWindowAttributesChanged = false;
    int mWindowAttributesChangesFlag = 0;
    final Surface mSurface = new Surface();
    final Rect mPendingOverscanInsets = new Rect();
    final Rect mPendingVisibleInsets = new Rect();
    final Rect mPendingStableInsets = new Rect();
    final Rect mPendingContentInsets = new Rect();
    final Rect mPendingOutsets = new Rect();
    final Rect mPendingBackDropFrame = new Rect();
    final ViewTreeObserver.InternalInsetsInfo mLastGivenInsets = new ViewTreeObserver.InternalInsetsInfo();
    final Rect mDispatchContentInsets = new Rect();
    final Rect mDispatchStableInsets = new Rect();
    private final Configuration mLastConfigurationFromResources = new Configuration();
    private final MergedConfiguration mLastReportedMergedConfiguration = new MergedConfiguration();
    private final MergedConfiguration mPendingMergedConfiguration = new MergedConfiguration();
    final PointF mDragPoint = new PointF();
    final PointF mLastTouchPoint = new PointF();
    private long mFpsStartTime = -1;
    private long mFpsPrevTime = -1;
    private int mPointerIconType = 1;
    private PointerIcon mCustomPointerIcon = null;

    public static final class AccessibilityInteractionConnection extends IAccessibilityInteractionConnection.Stub {
        private final WeakReference<ViewRootImpl> mViewRootImpl;

        public AccessibilityInteractionConnection(ViewRootImpl viewRootImpl) {
            this.mViewRootImpl = new WeakReference<>(viewRootImpl);
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfoByAccessibilityId(long j2, Region region, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec, Bundle bundle) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfoByAccessibilityIdClientThread(j2, region, i2, iAccessibilityInteractionConnectionCallback, i3, i4, j3, magnificationSpec, bundle);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(null, i2);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfosByText(long j2, String str, Region region, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfosByTextClientThread(j2, str, region, i2, iAccessibilityInteractionConnectionCallback, i3, i4, j3, magnificationSpec);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(null, i2);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfosByViewId(long j2, String str, Region region, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfosByViewIdClientThread(j2, str, region, i2, iAccessibilityInteractionConnectionCallback, i3, i4, j3, magnificationSpec);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(null, i2);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findFocus(long j2, int i2, Region region, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3, MagnificationSpec magnificationSpec) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findFocusClientThread(j2, i2, region, i3, iAccessibilityInteractionConnectionCallback, i4, i5, j3, magnificationSpec);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(null, i3);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void focusSearch(long j2, int i2, Region region, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3, MagnificationSpec magnificationSpec) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().focusSearchClientThread(j2, i2, region, i3, iAccessibilityInteractionConnectionCallback, i4, i5, j3, magnificationSpec);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(null, i3);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void performAccessibilityAction(long j2, int i2, Bundle bundle, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().performAccessibilityActionClientThread(j2, i2, bundle, i3, iAccessibilityInteractionConnectionCallback, i4, i5, j3);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setPerformAccessibilityActionResult(false, i3);
                } catch (RemoteException unused) {
                }
            }
        }
    }

    public final class AccessibilityInteractionConnectionManager implements AccessibilityManager.AccessibilityStateChangeListener {
        public AccessibilityInteractionConnectionManager() {
        }

        public void ensureConnection() {
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            View.AttachInfo attachInfo = viewRootImpl.mAttachInfo;
            if (attachInfo.mAccessibilityWindowId != -1) {
                return;
            }
            attachInfo.mAccessibilityWindowId = viewRootImpl.mAccessibilityManager.addAccessibilityInteractionConnection(viewRootImpl.mWindow, new AccessibilityInteractionConnection(ViewRootImpl.this));
        }

        public void ensureNoConnection() {
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            View.AttachInfo attachInfo = viewRootImpl.mAttachInfo;
            if (attachInfo.mAccessibilityWindowId != -1) {
                attachInfo.mAccessibilityWindowId = -1;
                viewRootImpl.mAccessibilityManager.removeAccessibilityInteractionConnection(viewRootImpl.mWindow);
            }
        }

        @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
        public void onAccessibilityStateChanged(boolean z2) {
            View view;
            if (!z2) {
                ensureNoConnection();
                ViewRootImpl.this.mHandler.obtainMessage(21).sendToTarget();
                return;
            }
            ensureConnection();
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            if (!viewRootImpl.mAttachInfo.mHasWindowFocus || (view = viewRootImpl.mView) == null) {
                return;
            }
            view.sendAccessibilityEvent(32);
            View viewFindFocus = ViewRootImpl.this.mView.findFocus();
            if (viewFindFocus == null || viewFindFocus == ViewRootImpl.this.mView) {
                return;
            }
            viewFindFocus.sendAccessibilityEvent(8);
        }
    }

    public interface ActivityConfigCallback {
        void onConfigurationChanged(Configuration configuration, int i2);
    }

    public abstract class AsyncInputStage extends InputStage {
        protected static final int DEFER = 3;
        private QueuedInputEvent mQueueHead;
        private int mQueueLength;
        private QueuedInputEvent mQueueTail;
        private final String mTraceCounter;

        public AsyncInputStage(InputStage inputStage, String str) {
            super(inputStage);
            this.mTraceCounter = str;
        }

        private void dequeue(QueuedInputEvent queuedInputEvent, QueuedInputEvent queuedInputEvent2) {
            if (queuedInputEvent2 == null) {
                this.mQueueHead = queuedInputEvent.mNext;
            } else {
                queuedInputEvent2.mNext = queuedInputEvent.mNext;
            }
            if (this.mQueueTail == queuedInputEvent) {
                this.mQueueTail = queuedInputEvent2;
            }
            queuedInputEvent.mNext = null;
            int i2 = this.mQueueLength - 1;
            this.mQueueLength = i2;
            Trace.traceCounter(4L, this.mTraceCounter, i2);
        }

        private void enqueue(QueuedInputEvent queuedInputEvent) {
            QueuedInputEvent queuedInputEvent2 = this.mQueueTail;
            if (queuedInputEvent2 == null) {
                this.mQueueHead = queuedInputEvent;
                this.mQueueTail = queuedInputEvent;
            } else {
                queuedInputEvent2.mNext = queuedInputEvent;
                this.mQueueTail = queuedInputEvent;
            }
            int i2 = this.mQueueLength + 1;
            this.mQueueLength = i2;
            Trace.traceCounter(4L, this.mTraceCounter, i2);
        }

        @Override // android.view.ViewRootImpl.InputStage
        public void apply(QueuedInputEvent queuedInputEvent, int i2) {
            if (i2 == 3) {
                defer(queuedInputEvent);
            } else {
                super.apply(queuedInputEvent, i2);
            }
        }

        public void defer(QueuedInputEvent queuedInputEvent) {
            queuedInputEvent.mFlags |= 2;
            enqueue(queuedInputEvent);
        }

        @Override // android.view.ViewRootImpl.InputStage
        public void dump(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print(getClass().getName());
            printWriter.print(": mQueueLength=");
            printWriter.println(this.mQueueLength);
            super.dump(str, printWriter);
        }

        @Override // android.view.ViewRootImpl.InputStage
        public void forward(QueuedInputEvent queuedInputEvent) {
            queuedInputEvent.mFlags &= -3;
            QueuedInputEvent queuedInputEvent2 = this.mQueueHead;
            if (queuedInputEvent2 == null) {
                super.forward(queuedInputEvent);
                return;
            }
            int deviceId = queuedInputEvent.mEvent.getDeviceId();
            QueuedInputEvent queuedInputEvent3 = null;
            boolean z2 = false;
            while (queuedInputEvent2 != null && queuedInputEvent2 != queuedInputEvent) {
                if (!z2 && deviceId == queuedInputEvent2.mEvent.getDeviceId()) {
                    z2 = true;
                }
                queuedInputEvent3 = queuedInputEvent2;
                queuedInputEvent2 = queuedInputEvent2.mNext;
            }
            if (z2) {
                if (queuedInputEvent2 == null) {
                    enqueue(queuedInputEvent);
                    return;
                }
                return;
            }
            if (queuedInputEvent2 != null) {
                queuedInputEvent2 = queuedInputEvent2.mNext;
                dequeue(queuedInputEvent, queuedInputEvent3);
            }
            super.forward(queuedInputEvent);
            QueuedInputEvent queuedInputEvent4 = queuedInputEvent3;
            while (true) {
                QueuedInputEvent queuedInputEvent5 = queuedInputEvent2;
                while (queuedInputEvent5 != null) {
                    if (deviceId != queuedInputEvent5.mEvent.getDeviceId()) {
                        QueuedInputEvent queuedInputEvent6 = queuedInputEvent5;
                        queuedInputEvent5 = queuedInputEvent5.mNext;
                        queuedInputEvent4 = queuedInputEvent6;
                    } else {
                        if ((queuedInputEvent5.mFlags & 2) != 0) {
                            return;
                        }
                        queuedInputEvent2 = queuedInputEvent5.mNext;
                        dequeue(queuedInputEvent5, queuedInputEvent4);
                        super.forward(queuedInputEvent5);
                    }
                }
                return;
            }
        }
    }

    public static final class CalledFromWrongThreadException extends AndroidRuntimeException {
        public CalledFromWrongThreadException(String str) {
            super(str);
        }
    }

    public interface ConfigChangedCallback {
        void onConfigurationChanged(Configuration configuration);
    }

    public final class ConsumeBatchedInputImmediatelyRunnable implements Runnable {
        public ConsumeBatchedInputImmediatelyRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewRootImpl.this.doConsumeBatchedInput(-1L);
        }
    }

    public final class ConsumeBatchedInputRunnable implements Runnable {
        public ConsumeBatchedInputRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            viewRootImpl.doConsumeBatchedInput(viewRootImpl.mChoreographer.getFrameTimeNanos());
        }
    }

    public final class EarlyPostImeInputStage extends InputStage {
        public EarlyPostImeInputStage(InputStage inputStage) {
            super(inputStage);
        }

        private int processKeyEvent(QueuedInputEvent queuedInputEvent) {
            KeyEvent keyEvent = (KeyEvent) queuedInputEvent.mEvent;
            View view = ViewRootImpl.this.mAttachInfo.mTooltipHost;
            if (view != null) {
                view.handleTooltipKey(keyEvent);
            }
            if (ViewRootImpl.this.checkForLeavingTouchModeAndConsume(keyEvent)) {
                return 1;
            }
            ViewRootImpl.this.mFallbackEventHandler.preDispatchKeyEvent(keyEvent);
            return 0;
        }

        private int processPointerEvent(QueuedInputEvent queuedInputEvent) {
            View view;
            MotionEvent motionEvent = (MotionEvent) queuedInputEvent.mEvent;
            CompatibilityInfo.Translator translator = ViewRootImpl.this.mTranslator;
            if (translator != null) {
                translator.translateEventInScreenToAppWindow(motionEvent);
            }
            int action = motionEvent.getAction();
            if (action == 0 || action == 8) {
                ViewRootImpl.this.ensureTouchMode(motionEvent.isFromSource(4098));
            }
            if (action == 0 && (view = ViewRootImpl.this.mAttachInfo.mTooltipHost) != null) {
                view.hideTooltip();
            }
            int i2 = ViewRootImpl.this.mCurScrollY;
            if (i2 != 0) {
                motionEvent.offsetLocation(0.0f, i2);
            }
            if (!motionEvent.isTouchEvent()) {
                return 0;
            }
            ViewRootImpl.this.mLastTouchPoint.f73x = motionEvent.getRawX();
            ViewRootImpl.this.mLastTouchPoint.f74y = motionEvent.getRawY();
            ViewRootImpl.this.mLastTouchSource = motionEvent.getSource();
            return 0;
        }

        @Override // android.view.ViewRootImpl.InputStage
        public int onProcess(QueuedInputEvent queuedInputEvent) {
            InputEvent inputEvent = queuedInputEvent.mEvent;
            if (inputEvent instanceof KeyEvent) {
                return processKeyEvent(queuedInputEvent);
            }
            if ((inputEvent.getSource() & 2) != 0) {
                return processPointerEvent(queuedInputEvent);
            }
            return 0;
        }
    }

    public final class HighContrastTextManager implements AccessibilityManager.HighTextContrastChangeListener {
        public HighContrastTextManager() {
            ViewRootImpl.this.mAttachInfo.mHighContrastText = ViewRootImpl.this.mAccessibilityManager.isHighTextContrastEnabled();
        }

        @Override // android.view.accessibility.AccessibilityManager.HighTextContrastChangeListener
        public void onHighTextContrastStateChanged(boolean z2) {
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            viewRootImpl.mAttachInfo.mHighContrastText = z2;
            viewRootImpl.destroyHardwareResources();
            ViewRootImpl.this.invalidate();
        }
    }

    public final class ImeInputStage extends AsyncInputStage implements InputMethodManager.FinishedInputEventCallback {
        public ImeInputStage(InputStage inputStage, String str) {
            super(inputStage, str);
        }

        @Override // android.view.inputmethod.InputMethodManager.FinishedInputEventCallback
        public void onFinishedInputEvent(Object obj, boolean z2) {
            QueuedInputEvent queuedInputEvent = (QueuedInputEvent) obj;
            if (z2) {
                finish(queuedInputEvent, true);
            } else {
                forward(queuedInputEvent);
            }
        }

        @Override // android.view.ViewRootImpl.InputStage
        public int onProcess(QueuedInputEvent queuedInputEvent) {
            InputMethodManager inputMethodManagerPeekInstance;
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            if (!viewRootImpl.mLastWasImTarget || viewRootImpl.isInLocalFocusMode() || (inputMethodManagerPeekInstance = InputMethodManager.peekInstance()) == null) {
                return 0;
            }
            int iDispatchInputEvent = inputMethodManagerPeekInstance.dispatchInputEvent(queuedInputEvent.mEvent, queuedInputEvent, this, ViewRootImpl.this.mHandler);
            if (iDispatchInputEvent == 1) {
                return 1;
            }
            return iDispatchInputEvent == 0 ? 0 : 3;
        }
    }

    public abstract class InputStage {
        protected static final int FINISH_HANDLED = 1;
        protected static final int FINISH_NOT_HANDLED = 2;
        protected static final int FORWARD = 0;
        private final InputStage mNext;

        public InputStage(InputStage inputStage) {
            this.mNext = inputStage;
        }

        private boolean isBack(InputEvent inputEvent) {
            return (inputEvent instanceof KeyEvent) && ((KeyEvent) inputEvent).getKeyCode() == 4;
        }

        public void apply(QueuedInputEvent queuedInputEvent, int i2) {
            if (i2 == 0) {
                forward(queuedInputEvent);
            } else if (i2 == 1) {
                finish(queuedInputEvent, true);
            } else {
                if (i2 != 2) {
                    throw new IllegalArgumentException(android.accessibilityservice.c.d("Invalid result: ", i2));
                }
                finish(queuedInputEvent, false);
            }
        }

        public final void deliver(QueuedInputEvent queuedInputEvent) {
            if ((queuedInputEvent.mFlags & 4) != 0) {
                forward(queuedInputEvent);
            } else if (shouldDropInputEvent(queuedInputEvent)) {
                finish(queuedInputEvent, false);
            } else {
                apply(queuedInputEvent, onProcess(queuedInputEvent));
            }
        }

        public void dump(String str, PrintWriter printWriter) {
            InputStage inputStage = this.mNext;
            if (inputStage != null) {
                inputStage.dump(str, printWriter);
            }
        }

        public void finish(QueuedInputEvent queuedInputEvent, boolean z2) {
            int i2 = queuedInputEvent.mFlags | 4;
            queuedInputEvent.mFlags = i2;
            if (z2) {
                queuedInputEvent.mFlags = i2 | 8;
            }
            forward(queuedInputEvent);
        }

        public void forward(QueuedInputEvent queuedInputEvent) {
            onDeliverToNext(queuedInputEvent);
        }

        public void onDeliverToNext(QueuedInputEvent queuedInputEvent) {
            InputStage inputStage = this.mNext;
            if (inputStage != null) {
                inputStage.deliver(queuedInputEvent);
            } else {
                ViewRootImpl.this.finishInputEvent(queuedInputEvent);
            }
        }

        public int onProcess(QueuedInputEvent queuedInputEvent) {
            return 0;
        }

        public boolean shouldDropInputEvent(QueuedInputEvent queuedInputEvent) {
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            if (viewRootImpl.mView == null || !viewRootImpl.mAdded) {
                Slog.w(viewRootImpl.mTag, "Dropping event due to root view being removed: " + queuedInputEvent.mEvent);
                return true;
            }
            if (viewRootImpl.mAttachInfo.mHasWindowFocus || queuedInputEvent.mEvent.isFromSource(2)) {
                ViewRootImpl viewRootImpl2 = ViewRootImpl.this;
                if (!viewRootImpl2.mStopped && ((!viewRootImpl2.mIsAmbientMode || queuedInputEvent.mEvent.isFromSource(1)) && (!ViewRootImpl.this.mPausedForTransition || isBack(queuedInputEvent.mEvent)))) {
                    return false;
                }
            }
            if (!ViewRootImpl.isTerminalInputEvent(queuedInputEvent.mEvent)) {
                Slog.w(ViewRootImpl.this.mTag, "Dropping event due to no window focus: " + queuedInputEvent.mEvent);
                return true;
            }
            queuedInputEvent.mEvent.cancel();
            Slog.w(ViewRootImpl.this.mTag, "Cancelling event due to no window focus: " + queuedInputEvent.mEvent);
            return false;
        }
    }

    public final class InvalidateOnAnimationRunnable implements Runnable {
        private boolean mPosted;
        private View.AttachInfo.InvalidateInfo[] mTempViewRects;
        private View[] mTempViews;
        private final ArrayList<View> mViews = new ArrayList<>();
        private final ArrayList<View.AttachInfo.InvalidateInfo> mViewRects = new ArrayList<>();

        public InvalidateOnAnimationRunnable() {
        }

        private void postIfNeededLocked() {
            if (this.mPosted) {
                return;
            }
            ViewRootImpl.this.mChoreographer.postCallback(1, this, null);
            this.mPosted = true;
        }

        public void addView(View view) {
            synchronized (this) {
                this.mViews.add(view);
                postIfNeededLocked();
            }
        }

        public void addViewRect(View.AttachInfo.InvalidateInfo invalidateInfo) {
            synchronized (this) {
                this.mViewRects.add(invalidateInfo);
                postIfNeededLocked();
            }
        }

        public void removeView(View view) {
            synchronized (this) {
                this.mViews.remove(view);
                int size = this.mViewRects.size();
                while (true) {
                    int i2 = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    View.AttachInfo.InvalidateInfo invalidateInfo = this.mViewRects.get(i2);
                    if (invalidateInfo.target == view) {
                        this.mViewRects.remove(i2);
                        invalidateInfo.recycle();
                    }
                    size = i2;
                }
                if (this.mPosted && this.mViews.isEmpty() && this.mViewRects.isEmpty()) {
                    ViewRootImpl.this.mChoreographer.removeCallbacks(1, this, null);
                    this.mPosted = false;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int size;
            int size2;
            synchronized (this) {
                this.mPosted = false;
                size = this.mViews.size();
                if (size != 0) {
                    ArrayList<View> arrayList = this.mViews;
                    View[] viewArr = this.mTempViews;
                    if (viewArr == null) {
                        viewArr = new View[size];
                    }
                    this.mTempViews = (View[]) arrayList.toArray(viewArr);
                    this.mViews.clear();
                }
                size2 = this.mViewRects.size();
                if (size2 != 0) {
                    ArrayList<View.AttachInfo.InvalidateInfo> arrayList2 = this.mViewRects;
                    View.AttachInfo.InvalidateInfo[] invalidateInfoArr = this.mTempViewRects;
                    if (invalidateInfoArr == null) {
                        invalidateInfoArr = new View.AttachInfo.InvalidateInfo[size2];
                    }
                    this.mTempViewRects = (View.AttachInfo.InvalidateInfo[]) arrayList2.toArray(invalidateInfoArr);
                    this.mViewRects.clear();
                }
            }
            for (int i3 = 0; i3 < size; i3++) {
                this.mTempViews[i3].invalidate();
                this.mTempViews[i3] = null;
            }
            for (i2 = 0; i2 < size2; i2++) {
                View.AttachInfo.InvalidateInfo invalidateInfo = this.mTempViewRects[i2];
                invalidateInfo.target.invalidate(invalidateInfo.left, invalidateInfo.top, invalidateInfo.right, invalidateInfo.bottom);
                invalidateInfo.recycle();
            }
        }
    }

    public final class NativePostImeInputStage extends AsyncInputStage implements InputQueue.FinishedInputEventCallback {
        public NativePostImeInputStage(InputStage inputStage, String str) {
            super(inputStage, str);
        }

        @Override // android.view.InputQueue.FinishedInputEventCallback
        public void onFinishedInputEvent(Object obj, boolean z2) {
            QueuedInputEvent queuedInputEvent = (QueuedInputEvent) obj;
            if (z2) {
                finish(queuedInputEvent, true);
            } else {
                forward(queuedInputEvent);
            }
        }

        @Override // android.view.ViewRootImpl.InputStage
        public int onProcess(QueuedInputEvent queuedInputEvent) {
            InputQueue inputQueue = ViewRootImpl.this.mInputQueue;
            if (inputQueue == null) {
                return 0;
            }
            inputQueue.sendInputEvent(queuedInputEvent.mEvent, queuedInputEvent, false, this);
            return 3;
        }
    }

    public final class NativePreImeInputStage extends AsyncInputStage implements InputQueue.FinishedInputEventCallback {
        public NativePreImeInputStage(InputStage inputStage, String str) {
            super(inputStage, str);
        }

        @Override // android.view.InputQueue.FinishedInputEventCallback
        public void onFinishedInputEvent(Object obj, boolean z2) {
            QueuedInputEvent queuedInputEvent = (QueuedInputEvent) obj;
            if (z2) {
                finish(queuedInputEvent, true);
            } else {
                forward(queuedInputEvent);
            }
        }

        @Override // android.view.ViewRootImpl.InputStage
        public int onProcess(QueuedInputEvent queuedInputEvent) {
            InputQueue inputQueue = ViewRootImpl.this.mInputQueue;
            if (inputQueue == null) {
                return 0;
            }
            InputEvent inputEvent = queuedInputEvent.mEvent;
            if (!(inputEvent instanceof KeyEvent)) {
                return 0;
            }
            inputQueue.sendInputEvent(inputEvent, queuedInputEvent, true, this);
            return 3;
        }
    }

    public static final class QueuedInputEvent {
        public static final int FLAG_DEFERRED = 2;
        public static final int FLAG_DELIVER_POST_IME = 1;
        public static final int FLAG_FINISHED = 4;
        public static final int FLAG_FINISHED_HANDLED = 8;
        public static final int FLAG_RESYNTHESIZED = 16;
        public static final int FLAG_UNHANDLED = 32;
        public InputEvent mEvent;
        public int mFlags;
        public QueuedInputEvent mNext;
        public InputEventReceiver mReceiver;

        private QueuedInputEvent() {
        }

        private boolean flagToString(String str, int i2, boolean z2, StringBuilder sb) {
            if ((i2 & this.mFlags) == 0) {
                return z2;
            }
            if (z2) {
                sb.append("|");
            }
            sb.append(str);
            return true;
        }

        public boolean shouldSendToSynthesizer() {
            return (this.mFlags & 32) != 0;
        }

        public boolean shouldSkipIme() {
            if ((this.mFlags & 1) != 0) {
                return true;
            }
            InputEvent inputEvent = this.mEvent;
            return (inputEvent instanceof MotionEvent) && (inputEvent.isFromSource(2) || this.mEvent.isFromSource(4194304));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("QueuedInputEvent{flags=");
            if (!flagToString("UNHANDLED", 32, flagToString("RESYNTHESIZED", 16, flagToString("FINISHED_HANDLED", 8, flagToString("FINISHED", 4, flagToString("DEFERRED", 2, flagToString("DELIVER_POST_IME", 1, false, sb), sb), sb), sb), sb), sb)) {
                sb.append(WifiEnterpriseConfig.ENGINE_DISABLE);
            }
            sb.append(", hasNextQueuedEvent=".concat(this.mEvent != null ? "true" : "false"));
            sb.append(", hasInputEventReceiver=".concat(this.mReceiver == null ? "false" : "true"));
            sb.append(", mEvent=" + this.mEvent + "}");
            return sb.toString();
        }
    }

    public class SendWindowContentChangedAccessibilityEvent implements Runnable {
        private int mChangeTypes;
        public long mLastEventTimeMillis;
        public View mSource;

        private SendWindowContentChangedAccessibilityEvent() {
            this.mChangeTypes = 0;
        }

        public void removeCallbacksAndRun() {
            ViewRootImpl.this.mHandler.removeCallbacks(this);
            run();
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = this.mSource;
            this.mSource = null;
            if (view == null) {
                Log.e(ViewRootImpl.TAG, "Accessibility content change has no source");
                return;
            }
            if (AccessibilityManager.getInstance(ViewRootImpl.this.mContext).isEnabled()) {
                this.mLastEventTimeMillis = SystemClock.uptimeMillis();
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(2048);
                accessibilityEventObtain.setContentChangeTypes(this.mChangeTypes);
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
            } else {
                this.mLastEventTimeMillis = 0L;
            }
            view.resetSubtreeAccessibilityStateChanged();
            this.mChangeTypes = 0;
        }

        public void runOrPost(View view, int i2) {
            if (ViewRootImpl.this.mHandler.getLooper() != Looper.myLooper()) {
                Log.e(ViewRootImpl.TAG, "Accessibility content change on non-UI thread. Future Android versions will throw an exception.", new CalledFromWrongThreadException("Only the original thread that created a view hierarchy can touch its views."));
                ViewRootImpl.this.mHandler.removeCallbacks(this);
                if (this.mSource != null) {
                    run();
                }
            }
            View view2 = this.mSource;
            if (view2 != null) {
                View commonPredecessor = ViewRootImpl.this.getCommonPredecessor(view2, view);
                if (commonPredecessor != null) {
                    view = commonPredecessor;
                }
                this.mSource = view;
                this.mChangeTypes |= i2;
                return;
            }
            this.mSource = view;
            this.mChangeTypes = i2;
            long jUptimeMillis = SystemClock.uptimeMillis() - this.mLastEventTimeMillis;
            long sendRecurringAccessibilityEventsInterval = ViewConfiguration.getSendRecurringAccessibilityEventsInterval();
            if (jUptimeMillis >= sendRecurringAccessibilityEventsInterval) {
                removeCallbacksAndRun();
            } else {
                ViewRootImpl.this.mHandler.postDelayed(this, sendRecurringAccessibilityEventsInterval - jUptimeMillis);
            }
        }
    }

    public final class SyntheticInputStage extends InputStage {
        private final SyntheticJoystickHandler mJoystick;
        private final SyntheticKeyboardHandler mKeyboard;
        private final SyntheticTouchNavigationHandler mTouchNavigation;
        private final SyntheticTrackballHandler mTrackball;

        public SyntheticInputStage() {
            super(null);
            this.mTrackball = ViewRootImpl.this.new SyntheticTrackballHandler();
            this.mJoystick = ViewRootImpl.this.new SyntheticJoystickHandler();
            this.mTouchNavigation = ViewRootImpl.this.new SyntheticTouchNavigationHandler();
            this.mKeyboard = ViewRootImpl.this.new SyntheticKeyboardHandler();
        }

        @Override // android.view.ViewRootImpl.InputStage
        public void onDeliverToNext(QueuedInputEvent queuedInputEvent) {
            if ((queuedInputEvent.mFlags & 16) == 0) {
                InputEvent inputEvent = queuedInputEvent.mEvent;
                if (inputEvent instanceof MotionEvent) {
                    MotionEvent motionEvent = (MotionEvent) inputEvent;
                    int source = motionEvent.getSource();
                    if ((source & 4) != 0) {
                        this.mTrackball.cancel(motionEvent);
                    } else if ((source & 16) != 0) {
                        this.mJoystick.cancel(motionEvent);
                    } else if ((source & 2097152) == 2097152) {
                        this.mTouchNavigation.cancel(motionEvent);
                    }
                }
            }
            super.onDeliverToNext(queuedInputEvent);
        }

        @Override // android.view.ViewRootImpl.InputStage
        public int onProcess(QueuedInputEvent queuedInputEvent) {
            int i2 = queuedInputEvent.mFlags | 16;
            queuedInputEvent.mFlags = i2;
            InputEvent inputEvent = queuedInputEvent.mEvent;
            if (!(inputEvent instanceof MotionEvent)) {
                if ((i2 & 32) == 0) {
                    return 0;
                }
                this.mKeyboard.process((KeyEvent) inputEvent);
                return 1;
            }
            MotionEvent motionEvent = (MotionEvent) inputEvent;
            int source = motionEvent.getSource();
            if ((source & 4) != 0) {
                this.mTrackball.process(motionEvent);
                return 1;
            }
            if ((source & 16) != 0) {
                this.mJoystick.process(motionEvent);
                return 1;
            }
            if ((source & 2097152) != 2097152) {
                return 0;
            }
            this.mTouchNavigation.process(motionEvent);
            return 1;
        }
    }

    public final class SyntheticJoystickHandler extends Handler {
        private static final int MSG_ENQUEUE_X_AXIS_KEY_REPEAT = 1;
        private static final int MSG_ENQUEUE_Y_AXIS_KEY_REPEAT = 2;
        private static final String TAG = "SyntheticJoystickHandler";
        private int mLastXDirection;
        private int mLastXKeyCode;
        private int mLastYDirection;
        private int mLastYKeyCode;

        public SyntheticJoystickHandler() {
            super(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cancel(MotionEvent motionEvent) {
            removeMessages(1);
            removeMessages(2);
            update(motionEvent, false);
        }

        private int joystickAxisValueToDirection(float f2) {
            if (f2 >= 0.5f) {
                return 1;
            }
            return f2 <= -0.5f ? -1 : 0;
        }

        private void update(MotionEvent motionEvent, boolean z2) {
            long eventTime = motionEvent.getEventTime();
            int metaState = motionEvent.getMetaState();
            int deviceId = motionEvent.getDeviceId();
            int source = motionEvent.getSource();
            int iJoystickAxisValueToDirection = joystickAxisValueToDirection(motionEvent.getAxisValue(15));
            if (iJoystickAxisValueToDirection == 0) {
                iJoystickAxisValueToDirection = joystickAxisValueToDirection(motionEvent.getX());
            }
            int i2 = iJoystickAxisValueToDirection;
            int iJoystickAxisValueToDirection2 = joystickAxisValueToDirection(motionEvent.getAxisValue(16));
            if (iJoystickAxisValueToDirection2 == 0) {
                iJoystickAxisValueToDirection2 = joystickAxisValueToDirection(motionEvent.getY());
            }
            int i3 = iJoystickAxisValueToDirection2;
            if (i2 != this.mLastXDirection) {
                if (this.mLastXKeyCode != 0) {
                    removeMessages(1);
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(eventTime, eventTime, 1, this.mLastXKeyCode, 0, metaState, deviceId, 0, 1024, source));
                    this.mLastXKeyCode = 0;
                }
                this.mLastXDirection = i2;
                if (i2 != 0 && z2) {
                    this.mLastXKeyCode = i2 > 0 ? 22 : 21;
                    KeyEvent keyEvent = new KeyEvent(eventTime, eventTime, 0, this.mLastXKeyCode, 0, metaState, deviceId, 0, 1024, source);
                    ViewRootImpl.this.enqueueInputEvent(keyEvent);
                    Message messageObtainMessage = obtainMessage(1, keyEvent);
                    messageObtainMessage.setAsynchronous(true);
                    sendMessageDelayed(messageObtainMessage, ViewConfiguration.getKeyRepeatTimeout());
                }
            } else {
                i3 = i3;
                eventTime = eventTime;
            }
            int i4 = i3;
            if (i4 != this.mLastYDirection) {
                if (this.mLastYKeyCode != 0) {
                    removeMessages(2);
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(eventTime, eventTime, 1, this.mLastYKeyCode, 0, metaState, deviceId, 0, 1024, source));
                    this.mLastYKeyCode = 0;
                }
                this.mLastYDirection = i4;
                if (i4 == 0 || !z2) {
                    return;
                }
                this.mLastYKeyCode = i4 > 0 ? 20 : 19;
                KeyEvent keyEvent2 = new KeyEvent(eventTime, eventTime, 0, this.mLastYKeyCode, 0, metaState, deviceId, 0, 1024, source);
                ViewRootImpl.this.enqueueInputEvent(keyEvent2);
                Message messageObtainMessage2 = obtainMessage(2, keyEvent2);
                messageObtainMessage2.setAsynchronous(true);
                sendMessageDelayed(messageObtainMessage2, ViewConfiguration.getKeyRepeatTimeout());
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1 || i2 == 2) {
                KeyEvent keyEvent = (KeyEvent) message.obj;
                KeyEvent keyEventChangeTimeRepeat = KeyEvent.changeTimeRepeat(keyEvent, SystemClock.uptimeMillis(), keyEvent.getRepeatCount() + 1);
                ViewRootImpl viewRootImpl = ViewRootImpl.this;
                if (viewRootImpl.mAttachInfo.mHasWindowFocus) {
                    viewRootImpl.enqueueInputEvent(keyEventChangeTimeRepeat);
                    Message messageObtainMessage = obtainMessage(message.what, keyEventChangeTimeRepeat);
                    messageObtainMessage.setAsynchronous(true);
                    sendMessageDelayed(messageObtainMessage, ViewConfiguration.getKeyRepeatDelay());
                }
            }
        }

        public void process(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 2) {
                update(motionEvent, true);
                return;
            }
            if (actionMasked == 3) {
                cancel(motionEvent);
                return;
            }
            Log.w(ViewRootImpl.this.mTag, "Unexpected action: " + motionEvent.getActionMasked());
        }
    }

    public final class SyntheticKeyboardHandler {
        public SyntheticKeyboardHandler() {
        }

        public void process(KeyEvent keyEvent) {
            KeyCharacterMap.FallbackAction fallbackAction;
            if ((keyEvent.getFlags() & 1024) == 0 && (fallbackAction = keyEvent.getKeyCharacterMap().getFallbackAction(keyEvent.getKeyCode(), keyEvent.getMetaState())) != null) {
                KeyEvent keyEventObtain = KeyEvent.obtain(keyEvent.getDownTime(), keyEvent.getEventTime(), keyEvent.getAction(), fallbackAction.keyCode, keyEvent.getRepeatCount(), fallbackAction.metaState, keyEvent.getDeviceId(), keyEvent.getScanCode(), keyEvent.getFlags() | 1024, keyEvent.getSource(), null);
                fallbackAction.recycle();
                ViewRootImpl.this.enqueueInputEvent(keyEventObtain);
            }
        }
    }

    public final class SyntheticTrackballHandler {
        private long mLastTime;
        private final TrackballAxis mX = new TrackballAxis();
        private final TrackballAxis mY = new TrackballAxis();

        public SyntheticTrackballHandler() {
        }

        public void cancel(MotionEvent motionEvent) {
            this.mLastTime = -2147483648L;
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            if (viewRootImpl.mView == null || !viewRootImpl.mAdded) {
                return;
            }
            viewRootImpl.ensureTouchMode(false);
        }

        /* JADX WARN: Failed to calculate best type for var: r13v10 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v10 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r13v13 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v13 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r13v14 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v14 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r13v15 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v15 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r13v16 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v16 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r13v3 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v3 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
         */
        /* JADX WARN: Failed to calculate best type for var: r13v3 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v3 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r13v4 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v4 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r13v5 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v5 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r13v6 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v6 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r13v7 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v7 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r13v8 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v8 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r13v9 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v9 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r15v0 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v0 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r1v13 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v13 ??, new type: android.view.ViewRootImpl$TrackballAxis
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r1v19 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v19 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r1v26 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v26 ??, new type: android.view.ViewRootImpl$TrackballAxis
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r22v0 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r22v0 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r7v1 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r7v1 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /* JADX WARN: Failed to calculate best type for var: r8v1 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r8v1 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 7 more
         */
        /*  JADX ERROR: Types fix failed
            jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r13v3 ??, new type: char
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
            Caused by: java.lang.NullPointerException
            */
        public void process(android.view.MotionEvent r36) {
            /*
                Method dump skipped, instruction units count: 376
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.SyntheticTrackballHandler.process(android.view.MotionEvent):void");
        }
    }

    public static final class SystemUiVisibilityInfo {
        int globalVisibility;
        int localChanges;
        int localValue;
        int seq;
    }

    public class TakenSurfaceHolder extends BaseSurfaceHolder {
        public TakenSurfaceHolder() {
        }

        @Override // android.view.SurfaceHolder
        public boolean isCreating() {
            return ViewRootImpl.this.mIsCreating;
        }

        @Override // com.android.internal.view.BaseSurfaceHolder
        public boolean onAllowLockCanvas() {
            return ViewRootImpl.this.mDrawingAllowed;
        }

        @Override // com.android.internal.view.BaseSurfaceHolder
        public void onRelayoutContainer() {
        }

        @Override // com.android.internal.view.BaseSurfaceHolder
        public void onUpdateSurface() {
            throw new IllegalStateException("Shouldn't be here");
        }

        @Override // com.android.internal.view.BaseSurfaceHolder, android.view.SurfaceHolder
        public void setFixedSize(int i2, int i3) {
            throw new UnsupportedOperationException("Currently only support sizing from layout");
        }

        @Override // com.android.internal.view.BaseSurfaceHolder, android.view.SurfaceHolder
        public void setFormat(int i2) {
            ((RootViewSurfaceTaker) ViewRootImpl.this.mView).setSurfaceFormat(i2);
        }

        @Override // android.view.SurfaceHolder
        public void setKeepScreenOn(boolean z2) {
            ((RootViewSurfaceTaker) ViewRootImpl.this.mView).setSurfaceKeepScreenOn(z2);
        }

        @Override // com.android.internal.view.BaseSurfaceHolder, android.view.SurfaceHolder
        public void setType(int i2) {
            ((RootViewSurfaceTaker) ViewRootImpl.this.mView).setSurfaceType(i2);
        }
    }

    public static final class TrackballAxis {
        static final float ACCEL_MOVE_SCALING_FACTOR = 0.025f;
        static final long FAST_MOVE_TIME = 150;
        static final float FIRST_MOVEMENT_THRESHOLD = 0.5f;
        static final float MAX_ACCELERATION = 20.0f;
        static final float SECOND_CUMULATIVE_MOVEMENT_THRESHOLD = 2.0f;
        static final float SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD = 1.0f;
        int dir;
        int nonAccelMovement;
        float position;
        int step;
        float acceleration = 1.0f;
        long lastMoveTime = 0;

        public float collect(float f2, long j2, String str) {
            long j3;
            if (f2 > 0.0f) {
                j3 = (long) (150.0f * f2);
                if (this.dir < 0) {
                    this.position = 0.0f;
                    this.step = 0;
                    this.acceleration = 1.0f;
                    this.lastMoveTime = 0L;
                }
                this.dir = 1;
            } else if (f2 < 0.0f) {
                j3 = (long) ((-f2) * 150.0f);
                if (this.dir > 0) {
                    this.position = 0.0f;
                    this.step = 0;
                    this.acceleration = 1.0f;
                    this.lastMoveTime = 0L;
                }
                this.dir = -1;
            } else {
                j3 = 0;
            }
            if (j3 > 0) {
                long j4 = j2 - this.lastMoveTime;
                this.lastMoveTime = j2;
                float f3 = this.acceleration;
                if (j4 < j3) {
                    float f4 = (j3 - j4) * ACCEL_MOVE_SCALING_FACTOR;
                    if (f4 > 1.0f) {
                        f3 *= f4;
                    }
                    if (f3 >= MAX_ACCELERATION) {
                        f3 = 20.0f;
                    }
                    this.acceleration = f3;
                } else {
                    float f5 = (j4 - j3) * ACCEL_MOVE_SCALING_FACTOR;
                    if (f5 > 1.0f) {
                        f3 /= f5;
                    }
                    this.acceleration = f3 > 1.0f ? f3 : 1.0f;
                }
            }
            float f6 = this.position + f2;
            this.position = f6;
            return Math.abs(f6);
        }

        public int generate() {
            int i2 = 0;
            this.nonAccelMovement = 0;
            while (true) {
                float f2 = this.position;
                int i3 = f2 >= 0.0f ? 1 : -1;
                int i4 = this.step;
                if (i4 != 0) {
                    if (i4 != 1) {
                        if (Math.abs(f2) < 1.0f) {
                            return i2;
                        }
                        i2 += i3;
                        this.position -= i3 * 1.0f;
                        float f3 = this.acceleration;
                        float f4 = 1.1f * f3;
                        if (f4 < MAX_ACCELERATION) {
                            f3 = f4;
                        }
                        this.acceleration = f3;
                    } else {
                        if (Math.abs(f2) < SECOND_CUMULATIVE_MOVEMENT_THRESHOLD) {
                            return i2;
                        }
                        i2 += i3;
                        this.nonAccelMovement += i3;
                        this.position -= i3 * SECOND_CUMULATIVE_MOVEMENT_THRESHOLD;
                        this.step = 2;
                    }
                } else {
                    if (Math.abs(f2) < 0.5f) {
                        return i2;
                    }
                    i2 += i3;
                    this.nonAccelMovement += i3;
                    this.step = 1;
                }
            }
        }

        public void reset(int i2) {
            this.position = 0.0f;
            this.acceleration = 1.0f;
            this.lastMoveTime = 0L;
            this.step = i2;
            this.dir = 0;
        }
    }

    public final class TraversalRunnable implements Runnable {
        public TraversalRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewRootImpl.this.doTraversal();
        }
    }

    public final class ViewPostImeInputStage extends InputStage {
        public ViewPostImeInputStage(InputStage inputStage) {
            super(inputStage);
        }

        private void maybeUpdatePointerIcon(MotionEvent motionEvent) {
            if (motionEvent.getPointerCount() == 1 && motionEvent.isFromSource(8194)) {
                if (motionEvent.getActionMasked() == 9 || motionEvent.getActionMasked() == 10) {
                    ViewRootImpl.this.mPointerIconType = 1;
                }
                if (motionEvent.getActionMasked() == 10 || ViewRootImpl.this.updatePointerIcon(motionEvent) || motionEvent.getActionMasked() != 7) {
                    return;
                }
                ViewRootImpl.this.mPointerIconType = 1;
            }
        }

        private boolean performFocusNavigation(KeyEvent keyEvent) {
            int i2;
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                switch (keyCode) {
                    case 19:
                        i2 = !keyEvent.hasNoModifiers() ? 0 : 33;
                        break;
                    case 20:
                        i2 = !keyEvent.hasNoModifiers() ? 0 : 130;
                        break;
                    case 21:
                        i2 = !keyEvent.hasNoModifiers() ? 0 : 17;
                        break;
                    case 22:
                        i2 = !keyEvent.hasNoModifiers() ? 0 : 66;
                        break;
                    default:
                        i2 = 0;
                        break;
                }
            } else if (keyEvent.hasNoModifiers()) {
                i2 = 2;
            } else {
                i2 = keyEvent.hasModifiers(1) ? 1 : 0;
            }
            if (i2 != 0) {
                View viewFindFocus = ViewRootImpl.this.mView.findFocus();
                if (viewFindFocus != null) {
                    View viewFocusSearch = viewFindFocus.focusSearch(i2);
                    if (viewFocusSearch != null && viewFocusSearch != viewFindFocus) {
                        viewFindFocus.getFocusedRect(ViewRootImpl.this.mTempRect);
                        ViewRootImpl viewRootImpl = ViewRootImpl.this;
                        View view = viewRootImpl.mView;
                        if (view instanceof ViewGroup) {
                            ((ViewGroup) view).offsetDescendantRectToMyCoords(viewFindFocus, viewRootImpl.mTempRect);
                            ViewRootImpl viewRootImpl2 = ViewRootImpl.this;
                            ((ViewGroup) viewRootImpl2.mView).offsetRectIntoDescendantCoords(viewFocusSearch, viewRootImpl2.mTempRect);
                        }
                        if (viewFocusSearch.requestFocus(i2, ViewRootImpl.this.mTempRect)) {
                            ViewRootImpl.this.playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
                            return true;
                        }
                    }
                    if (ViewRootImpl.this.mView.dispatchUnhandledMove(viewFindFocus, i2)) {
                        return true;
                    }
                } else if (ViewRootImpl.this.mView.restoreDefaultFocus()) {
                    return true;
                }
            }
            return false;
        }

        private boolean performKeyboardGroupNavigation(int i2) {
            View viewFindFocus = ViewRootImpl.this.mView.findFocus();
            if (viewFindFocus == null && ViewRootImpl.this.mView.restoreDefaultFocus()) {
                return true;
            }
            View viewKeyboardNavigationClusterSearch = viewFindFocus == null ? ViewRootImpl.this.keyboardNavigationClusterSearch(null, i2) : viewFindFocus.keyboardNavigationClusterSearch(null, i2);
            int i3 = (i2 == 2 || i2 == 1) ? 130 : i2;
            if (viewKeyboardNavigationClusterSearch != null && viewKeyboardNavigationClusterSearch.isRootNamespace()) {
                if (viewKeyboardNavigationClusterSearch.restoreFocusNotInCluster()) {
                    ViewRootImpl.this.playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
                    return true;
                }
                viewKeyboardNavigationClusterSearch = ViewRootImpl.this.keyboardNavigationClusterSearch(null, i2);
            }
            if (viewKeyboardNavigationClusterSearch == null || !viewKeyboardNavigationClusterSearch.restoreFocusInCluster(i3)) {
                return false;
            }
            ViewRootImpl.this.playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
            return true;
        }

        private int processGenericMotionEvent(QueuedInputEvent queuedInputEvent) {
            return ViewRootImpl.this.mView.dispatchGenericMotionEvent((MotionEvent) queuedInputEvent.mEvent) ? 1 : 0;
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0044  */
        private int processKeyEvent(QueuedInputEvent queuedInputEvent) {
            int i2;
            KeyEvent keyEvent = (KeyEvent) queuedInputEvent.mEvent;
            if (ViewRootImpl.this.mView.dispatchKeyEvent(keyEvent)) {
                return 1;
            }
            if (shouldDropInputEvent(queuedInputEvent)) {
                return 2;
            }
            if (keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 61) {
                i2 = 0;
            } else if (KeyEvent.metaStateHasModifiers(keyEvent.getMetaState(), 65536)) {
                i2 = 2;
            } else if (KeyEvent.metaStateHasModifiers(keyEvent.getMetaState(), 65537)) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (keyEvent.getAction() == 0 && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && i2 == 0) {
                if (ViewRootImpl.this.mView.dispatchKeyShortcutEvent(keyEvent)) {
                    return 1;
                }
                if (shouldDropInputEvent(queuedInputEvent)) {
                    return 2;
                }
            }
            if (ViewRootImpl.this.mFallbackEventHandler.dispatchKeyEvent(keyEvent)) {
                return 1;
            }
            if (shouldDropInputEvent(queuedInputEvent)) {
                return 2;
            }
            if (keyEvent.getAction() == 0) {
                if (i2 != 0) {
                    if (performKeyboardGroupNavigation(i2)) {
                        return 1;
                    }
                } else if (performFocusNavigation(keyEvent)) {
                    return 1;
                }
            }
            return 0;
        }

        private int processPointerEvent(QueuedInputEvent queuedInputEvent) {
            MotionEvent motionEvent = (MotionEvent) queuedInputEvent.mEvent;
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            View.AttachInfo attachInfo = viewRootImpl.mAttachInfo;
            attachInfo.mUnbufferedDispatchRequested = false;
            attachInfo.mHandlingPointerEvent = true;
            boolean zDispatchPointerEvent = viewRootImpl.mView.dispatchPointerEvent(motionEvent);
            maybeUpdatePointerIcon(motionEvent);
            ViewRootImpl.this.maybeUpdateTooltip(motionEvent);
            ViewRootImpl viewRootImpl2 = ViewRootImpl.this;
            View.AttachInfo attachInfo2 = viewRootImpl2.mAttachInfo;
            attachInfo2.mHandlingPointerEvent = false;
            if (attachInfo2.mUnbufferedDispatchRequested && !viewRootImpl2.mUnbufferedInputDispatch) {
                viewRootImpl2.mUnbufferedInputDispatch = true;
                if (viewRootImpl2.mConsumeBatchedInputScheduled) {
                    viewRootImpl2.scheduleConsumeBatchedInputImmediately();
                }
            }
            return zDispatchPointerEvent ? 1 : 0;
        }

        private int processTrackballEvent(QueuedInputEvent queuedInputEvent) {
            MotionEvent motionEvent = (MotionEvent) queuedInputEvent.mEvent;
            return ((!motionEvent.isFromSource(InputDevice.SOURCE_MOUSE_RELATIVE) || (ViewRootImpl.this.hasPointerCapture() && !ViewRootImpl.this.mView.dispatchCapturedPointerEvent(motionEvent))) && !ViewRootImpl.this.mView.dispatchTrackballEvent(motionEvent)) ? 0 : 1;
        }

        @Override // android.view.ViewRootImpl.InputStage
        public void onDeliverToNext(QueuedInputEvent queuedInputEvent) {
            if (ViewRootImpl.this.mUnbufferedInputDispatch) {
                InputEvent inputEvent = queuedInputEvent.mEvent;
                if ((inputEvent instanceof MotionEvent) && ((MotionEvent) inputEvent).isTouchEvent() && ViewRootImpl.isTerminalInputEvent(queuedInputEvent.mEvent)) {
                    ViewRootImpl viewRootImpl = ViewRootImpl.this;
                    viewRootImpl.mUnbufferedInputDispatch = false;
                    viewRootImpl.scheduleConsumeBatchedInput();
                }
            }
            super.onDeliverToNext(queuedInputEvent);
        }

        @Override // android.view.ViewRootImpl.InputStage
        public int onProcess(QueuedInputEvent queuedInputEvent) {
            InputEvent inputEvent = queuedInputEvent.mEvent;
            if (inputEvent instanceof KeyEvent) {
                return processKeyEvent(queuedInputEvent);
            }
            int source = inputEvent.getSource();
            if ((source & 2) != 0) {
                return processPointerEvent(queuedInputEvent);
            }
            return (source & 4) != 0 ? processTrackballEvent(queuedInputEvent) : processGenericMotionEvent(queuedInputEvent);
        }
    }

    public final class ViewPreImeInputStage extends InputStage {
        public ViewPreImeInputStage(InputStage inputStage) {
            super(inputStage);
        }

        private int processKeyEvent(QueuedInputEvent queuedInputEvent) {
            return ViewRootImpl.this.mView.dispatchKeyEventPreIme((KeyEvent) queuedInputEvent.mEvent) ? 1 : 0;
        }

        @Override // android.view.ViewRootImpl.InputStage
        public int onProcess(QueuedInputEvent queuedInputEvent) {
            if (queuedInputEvent.mEvent instanceof KeyEvent) {
                return processKeyEvent(queuedInputEvent);
            }
            return 0;
        }
    }

    public final class ViewRootHandler extends Handler {
        public ViewRootHandler() {
        }

        @Override // android.os.Handler
        public String getMessageName(Message message) {
            switch (message.what) {
                case 1:
                    return "MSG_INVALIDATE";
                case 2:
                    return "MSG_INVALIDATE_RECT";
                case 3:
                    return "MSG_DIE";
                case 4:
                    return "MSG_RESIZED";
                case 5:
                    return "MSG_RESIZED_REPORT";
                case 6:
                    return "MSG_WINDOW_FOCUS_CHANGED";
                case 7:
                    return "MSG_DISPATCH_INPUT_EVENT";
                case 8:
                    return "MSG_DISPATCH_APP_VISIBILITY";
                case 9:
                    return "MSG_DISPATCH_GET_NEW_SURFACE";
                case 10:
                case 12:
                case 20:
                case 22:
                case 26:
                default:
                    return super.getMessageName(message);
                case 11:
                    return "MSG_DISPATCH_KEY_FROM_IME";
                case 13:
                    return "MSG_CHECK_FOCUS";
                case 14:
                    return "MSG_CLOSE_SYSTEM_DIALOGS";
                case 15:
                    return "MSG_DISPATCH_DRAG_EVENT";
                case 16:
                    return "MSG_DISPATCH_DRAG_LOCATION_EVENT";
                case 17:
                    return "MSG_DISPATCH_SYSTEM_UI_VISIBILITY";
                case 18:
                    return "MSG_UPDATE_CONFIGURATION";
                case 19:
                    return "MSG_PROCESS_INPUT_EVENTS";
                case 21:
                    return "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST";
                case 23:
                    return "MSG_WINDOW_MOVED";
                case 24:
                    return "MSG_SYNTHESIZE_INPUT_EVENT";
                case 25:
                    return "MSG_DISPATCH_WINDOW_SHOWN";
                case 27:
                    return "MSG_UPDATE_POINTER_ICON";
                case 28:
                    return "MSG_POINTER_CAPTURE_CHANGED";
                case 29:
                    return "MSG_DRAW_FINISHED";
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    ((View) message.obj).invalidate();
                    return;
                case 2:
                    View.AttachInfo.InvalidateInfo invalidateInfo = (View.AttachInfo.InvalidateInfo) message.obj;
                    invalidateInfo.target.invalidate(invalidateInfo.left, invalidateInfo.top, invalidateInfo.right, invalidateInfo.bottom);
                    invalidateInfo.recycle();
                    return;
                case 3:
                    ViewRootImpl.this.doDie();
                    return;
                case 4:
                    SomeArgs someArgs = (SomeArgs) message.obj;
                    if (ViewRootImpl.this.mWinFrame.equals(someArgs.arg1) && ViewRootImpl.this.mPendingOverscanInsets.equals(someArgs.arg5) && ViewRootImpl.this.mPendingContentInsets.equals(someArgs.arg2) && ViewRootImpl.this.mPendingStableInsets.equals(someArgs.arg6) && ViewRootImpl.this.mPendingVisibleInsets.equals(someArgs.arg3) && ViewRootImpl.this.mPendingOutsets.equals(someArgs.arg7) && ViewRootImpl.this.mPendingBackDropFrame.equals(someArgs.arg8) && someArgs.arg4 == null && someArgs.argi1 == 0 && ViewRootImpl.this.mDisplay.getDisplayId() == someArgs.argi3) {
                        return;
                    }
                    break;
                case 5:
                    break;
                case 6:
                    ViewRootImpl viewRootImpl = ViewRootImpl.this;
                    if (viewRootImpl.mAdded) {
                        boolean z2 = message.arg1 != 0;
                        viewRootImpl.mAttachInfo.mHasWindowFocus = z2;
                        viewRootImpl.profileRendering(z2);
                        if (z2) {
                            ViewRootImpl.this.ensureTouchModeLocally(message.arg2 != 0);
                            ViewRootImpl viewRootImpl2 = ViewRootImpl.this;
                            if (viewRootImpl2.mAttachInfo.mThreadedRenderer != null && viewRootImpl2.mSurface.isValid()) {
                                ViewRootImpl viewRootImpl3 = ViewRootImpl.this;
                                viewRootImpl3.mFullRedrawNeeded = true;
                                try {
                                    WindowManager.LayoutParams layoutParams = viewRootImpl3.mWindowAttributes;
                                    Rect rect = layoutParams != null ? layoutParams.surfaceInsets : null;
                                    View.AttachInfo attachInfo = viewRootImpl3.mAttachInfo;
                                    attachInfo.mThreadedRenderer.initializeIfNeeded(viewRootImpl3.mWidth, viewRootImpl3.mHeight, attachInfo, viewRootImpl3.mSurface, rect);
                                } catch (Surface.OutOfResourcesException e2) {
                                    Log.e(ViewRootImpl.this.mTag, "OutOfResourcesException locking surface", e2);
                                    try {
                                        ViewRootImpl viewRootImpl4 = ViewRootImpl.this;
                                        if (!viewRootImpl4.mWindowSession.outOfMemory(viewRootImpl4.mWindow)) {
                                            Slog.w(ViewRootImpl.this.mTag, "No processes killed for memory; killing self");
                                            Process.killProcess(Process.myPid());
                                        }
                                        break;
                                    } catch (RemoteException unused) {
                                    }
                                    sendMessageDelayed(obtainMessage(message.what, message.arg1, message.arg2), 500L);
                                    return;
                                }
                            }
                            break;
                        }
                        ViewRootImpl viewRootImpl5 = ViewRootImpl.this;
                        viewRootImpl5.mLastWasImTarget = WindowManager.LayoutParams.mayUseInputMethod(viewRootImpl5.mWindowAttributes.flags);
                        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
                        if (inputMethodManagerPeekInstance != null) {
                            ViewRootImpl viewRootImpl6 = ViewRootImpl.this;
                            if (viewRootImpl6.mLastWasImTarget && !viewRootImpl6.isInLocalFocusMode()) {
                                inputMethodManagerPeekInstance.onPreWindowFocus(ViewRootImpl.this.mView, z2);
                            }
                        }
                        ViewRootImpl viewRootImpl7 = ViewRootImpl.this;
                        if (viewRootImpl7.mView != null) {
                            viewRootImpl7.mAttachInfo.mKeyDispatchState.reset();
                            ViewRootImpl.this.mView.dispatchWindowFocusChanged(z2);
                            ViewRootImpl.this.mAttachInfo.mTreeObserver.dispatchOnWindowFocusChange(z2);
                            View view = ViewRootImpl.this.mAttachInfo.mTooltipHost;
                            if (view != null) {
                                view.hideTooltip();
                            }
                        }
                        if (z2) {
                            if (inputMethodManagerPeekInstance != null) {
                                ViewRootImpl viewRootImpl8 = ViewRootImpl.this;
                                if (viewRootImpl8.mLastWasImTarget && !viewRootImpl8.isInLocalFocusMode()) {
                                    View view2 = ViewRootImpl.this.mView;
                                    View viewFindFocus = view2.findFocus();
                                    ViewRootImpl viewRootImpl9 = ViewRootImpl.this;
                                    WindowManager.LayoutParams layoutParams2 = viewRootImpl9.mWindowAttributes;
                                    inputMethodManagerPeekInstance.onPostWindowFocus(view2, viewFindFocus, layoutParams2.softInputMode, !viewRootImpl9.mHasHadWindowFocus, layoutParams2.flags);
                                }
                            }
                            ViewRootImpl viewRootImpl10 = ViewRootImpl.this;
                            viewRootImpl10.mWindowAttributes.softInputMode &= -257;
                            ((WindowManager.LayoutParams) viewRootImpl10.mView.getLayoutParams()).softInputMode &= -257;
                            ViewRootImpl.this.mHasHadWindowFocus = true;
                        } else {
                            ViewRootImpl viewRootImpl11 = ViewRootImpl.this;
                            if (viewRootImpl11.mPointerCapture) {
                                viewRootImpl11.handlePointerCaptureChanged(false);
                            }
                        }
                        if (SystemProperties.getBoolean(ViewRootImpl.PROPERTY_PROFILE_UIAUTOMATOR, false)) {
                            Log.d(ViewRootImpl.TAG, "For UiAutomator Current window is focused: " + z2 + ", AM is Enable: " + ViewRootImpl.this.mAccessibilityManager.isEnabled() + ", mView+" + ViewRootImpl.this.mView);
                            ViewRootImpl viewRootImpl12 = ViewRootImpl.this;
                            if (viewRootImpl12.mView != null && viewRootImpl12.mAccessibilityManager.isEnabled() && z2) {
                                ViewRootImpl.this.mView.sendAccessibilityEvent(32);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                case 7:
                    SomeArgs someArgs2 = (SomeArgs) message.obj;
                    ViewRootImpl.this.enqueueInputEvent((InputEvent) someArgs2.arg1, (InputEventReceiver) someArgs2.arg2, 0, true);
                    someArgs2.recycle();
                    return;
                case 8:
                    ViewRootImpl.this.handleAppVisibility(message.arg1 != 0);
                    return;
                case 9:
                    ViewRootImpl.this.handleGetNewSurface();
                    return;
                case 10:
                case 12:
                case 20:
                default:
                    return;
                case 11:
                    KeyEvent keyEventChangeFlags = (KeyEvent) message.obj;
                    if ((keyEventChangeFlags.getFlags() & 8) != 0) {
                        keyEventChangeFlags = KeyEvent.changeFlags(keyEventChangeFlags, keyEventChangeFlags.getFlags() & (-9));
                    }
                    ViewRootImpl.this.enqueueInputEvent(keyEventChangeFlags, null, 1, true);
                    return;
                case 13:
                    InputMethodManager inputMethodManagerPeekInstance2 = InputMethodManager.peekInstance();
                    if (inputMethodManagerPeekInstance2 != null) {
                        inputMethodManagerPeekInstance2.checkFocus();
                        return;
                    }
                    return;
                case 14:
                    View view3 = ViewRootImpl.this.mView;
                    if (view3 != null) {
                        view3.onCloseSystemDialogs((String) message.obj);
                        return;
                    }
                    return;
                case 15:
                case 16:
                    DragEvent dragEvent = (DragEvent) message.obj;
                    dragEvent.mLocalState = ViewRootImpl.this.mLocalDragState;
                    ViewRootImpl.this.handleDragEvent(dragEvent);
                    return;
                case 17:
                    ViewRootImpl.this.handleDispatchSystemUiVisibilityChanged((SystemUiVisibilityInfo) message.obj);
                    return;
                case 18:
                    Configuration globalConfiguration = (Configuration) message.obj;
                    if (globalConfiguration.isOtherSeqNewer(ViewRootImpl.this.mLastReportedMergedConfiguration.getMergedConfiguration())) {
                        globalConfiguration = ViewRootImpl.this.mLastReportedMergedConfiguration.getGlobalConfiguration();
                    }
                    ViewRootImpl.this.mPendingMergedConfiguration.setConfiguration(globalConfiguration, ViewRootImpl.this.mLastReportedMergedConfiguration.getOverrideConfiguration());
                    ViewRootImpl viewRootImpl13 = ViewRootImpl.this;
                    viewRootImpl13.performConfigurationChange(viewRootImpl13.mPendingMergedConfiguration, false, -1);
                    return;
                case 19:
                    ViewRootImpl viewRootImpl14 = ViewRootImpl.this;
                    viewRootImpl14.mProcessInputEventsScheduled = false;
                    viewRootImpl14.doProcessInputEvents();
                    return;
                case 21:
                    ViewRootImpl.this.setAccessibilityFocus(null, null);
                    return;
                case 22:
                    ViewRootImpl viewRootImpl15 = ViewRootImpl.this;
                    View view4 = viewRootImpl15.mView;
                    if (view4 != null) {
                        viewRootImpl15.invalidateWorld(view4);
                        return;
                    }
                    return;
                case 23:
                    ViewRootImpl viewRootImpl16 = ViewRootImpl.this;
                    if (viewRootImpl16.mAdded) {
                        int iWidth = viewRootImpl16.mWinFrame.width();
                        int iHeight = ViewRootImpl.this.mWinFrame.height();
                        int i2 = message.arg1;
                        int i3 = message.arg2;
                        ViewRootImpl viewRootImpl17 = ViewRootImpl.this;
                        Rect rect2 = viewRootImpl17.mWinFrame;
                        rect2.left = i2;
                        rect2.right = i2 + iWidth;
                        rect2.top = i3;
                        rect2.bottom = i3 + iHeight;
                        viewRootImpl17.mPendingBackDropFrame.set(rect2);
                        ViewRootImpl viewRootImpl18 = ViewRootImpl.this;
                        viewRootImpl18.maybeHandleWindowMove(viewRootImpl18.mWinFrame);
                        return;
                    }
                    return;
                case 24:
                    ViewRootImpl.this.enqueueInputEvent((InputEvent) message.obj, null, 32, true);
                    return;
                case 25:
                    ViewRootImpl.this.handleDispatchWindowShown();
                    return;
                case 26:
                    ViewRootImpl.this.handleRequestKeyboardShortcuts((IResultReceiver) message.obj, message.arg1);
                    return;
                case 27:
                    ViewRootImpl.this.resetPointerIcon((MotionEvent) message.obj);
                    return;
                case 28:
                    ViewRootImpl.this.handlePointerCaptureChanged(message.arg1 != 0);
                    return;
                case 29:
                    ViewRootImpl.this.pendingDrawFinished();
                    return;
            }
            ViewRootImpl viewRootImpl19 = ViewRootImpl.this;
            if (viewRootImpl19.mAdded) {
                SomeArgs someArgs3 = (SomeArgs) message.obj;
                int i4 = someArgs3.argi3;
                MergedConfiguration mergedConfiguration = (MergedConfiguration) someArgs3.arg4;
                boolean z3 = viewRootImpl19.mDisplay.getDisplayId() != i4;
                if (!ViewRootImpl.this.mLastReportedMergedConfiguration.equals(mergedConfiguration)) {
                    ViewRootImpl.this.performConfigurationChange(mergedConfiguration, false, z3 ? i4 : -1);
                } else if (z3) {
                    ViewRootImpl viewRootImpl20 = ViewRootImpl.this;
                    viewRootImpl20.onMovedToDisplay(i4, viewRootImpl20.mLastConfigurationFromResources);
                }
                boolean z4 = (ViewRootImpl.this.mWinFrame.equals(someArgs3.arg1) && ViewRootImpl.this.mPendingOverscanInsets.equals(someArgs3.arg5) && ViewRootImpl.this.mPendingContentInsets.equals(someArgs3.arg2) && ViewRootImpl.this.mPendingStableInsets.equals(someArgs3.arg6) && ViewRootImpl.this.mPendingVisibleInsets.equals(someArgs3.arg3) && ViewRootImpl.this.mPendingOutsets.equals(someArgs3.arg7)) ? false : true;
                ViewRootImpl.this.mWinFrame.set((Rect) someArgs3.arg1);
                ViewRootImpl.this.mPendingOverscanInsets.set((Rect) someArgs3.arg5);
                ViewRootImpl.this.mPendingContentInsets.set((Rect) someArgs3.arg2);
                ViewRootImpl.this.mPendingStableInsets.set((Rect) someArgs3.arg6);
                ViewRootImpl.this.mPendingVisibleInsets.set((Rect) someArgs3.arg3);
                ViewRootImpl.this.mPendingOutsets.set((Rect) someArgs3.arg7);
                ViewRootImpl.this.mPendingBackDropFrame.set((Rect) someArgs3.arg8);
                ViewRootImpl viewRootImpl21 = ViewRootImpl.this;
                viewRootImpl21.mForceNextWindowRelayout = someArgs3.argi1 != 0;
                viewRootImpl21.mPendingAlwaysConsumeNavBar = someArgs3.argi2 != 0;
                someArgs3.recycle();
                if (message.what == 5) {
                    ViewRootImpl.this.reportNextDraw();
                }
                View view5 = ViewRootImpl.this.mView;
                if (view5 != null && z4) {
                    ViewRootImpl.forceLayout(view5);
                }
                ViewRootImpl.this.requestLayout();
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message message, long j2) {
            if (message.what == 26 && message.obj == null) {
                throw new NullPointerException("Attempted to call MSG_REQUEST_KEYBOARD_SHORTCUTS with null receiver:");
            }
            return super.sendMessageAtTime(message, j2);
        }
    }

    public static class W extends IWindow.Stub {
        private final WeakReference<ViewRootImpl> mViewAncestor;
        private final IWindowSession mWindowSession;

        public W(ViewRootImpl viewRootImpl) {
            this.mViewAncestor = new WeakReference<>(viewRootImpl);
            this.mWindowSession = viewRootImpl.mWindowSession;
        }

        private static int checkCallingPermission(String str) {
            try {
                return ActivityManager.getService().checkPermission(str, Binder.getCallingPid(), Binder.getCallingUid());
            } catch (RemoteException unused) {
                return -1;
            }
        }

        @Override // android.view.IWindow
        public void closeSystemDialogs(String str) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchCloseSystemDialogs(str);
            }
        }

        @Override // android.view.IWindow
        public void dispatchAppVisibility(boolean z2) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchAppVisibility(z2);
            }
        }

        @Override // android.view.IWindow
        public void dispatchDragEvent(DragEvent dragEvent) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchDragEvent(dragEvent);
            }
        }

        @Override // android.view.IWindow
        public void dispatchGetNewSurface() {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchGetNewSurface();
            }
        }

        @Override // android.view.IWindow
        public void dispatchPointerCaptureChanged(boolean z2) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchPointerCaptureChanged(z2);
            }
        }

        @Override // android.view.IWindow
        public void dispatchSystemUiVisibilityChanged(int i2, int i3, int i4, int i5) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchSystemUiVisibilityChanged(i2, i3, i4, i5);
            }
        }

        @Override // android.view.IWindow
        public void dispatchWallpaperCommand(String str, int i2, int i3, int i4, Bundle bundle, boolean z2) {
            if (z2) {
                try {
                    this.mWindowSession.wallpaperCommandComplete(asBinder(), null);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.IWindow
        public void dispatchWallpaperOffsets(float f2, float f3, float f4, float f5, boolean z2) {
            if (z2) {
                try {
                    this.mWindowSession.wallpaperOffsetsComplete(asBinder());
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.IWindow
        public void dispatchWindowShown() {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchWindowShown();
            }
        }

        @Override // android.view.IWindow
        public void executeCommand(String str, String str2, ParcelFileDescriptor parcelFileDescriptor) throws Throwable {
            View view;
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl == null || (view = viewRootImpl.mView) == null) {
                return;
            }
            if (checkCallingPermission(Manifest.permission.DUMP) != 0) {
                throw new SecurityException("Insufficient permissions to invoke executeCommand() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
            }
            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = null;
            try {
                try {
                    try {
                        ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream2 = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor);
                        try {
                            ViewDebug.dispatchCommand(view, str, str2, autoCloseOutputStream2);
                            autoCloseOutputStream2.close();
                        } catch (IOException e2) {
                            e = e2;
                            autoCloseOutputStream = autoCloseOutputStream2;
                            e.printStackTrace();
                            if (autoCloseOutputStream != null) {
                                autoCloseOutputStream.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            autoCloseOutputStream = autoCloseOutputStream2;
                            if (autoCloseOutputStream != null) {
                                try {
                                    autoCloseOutputStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                } catch (IOException e5) {
                    e = e5;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        @Override // android.view.IWindow
        public void moved(int i2, int i3) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchMoved(i2, i3);
            }
        }

        @Override // android.view.IWindow
        public void requestAppKeyboardShortcuts(IResultReceiver iResultReceiver, int i2) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchRequestKeyboardShortcuts(iResultReceiver, i2);
            }
        }

        @Override // android.view.IWindow
        public void resized(Rect rect, Rect rect2, Rect rect3, Rect rect4, Rect rect5, Rect rect6, boolean z2, MergedConfiguration mergedConfiguration, Rect rect7, boolean z3, boolean z4, int i2) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchResized(rect, rect2, rect3, rect4, rect5, rect6, z2, mergedConfiguration, rect7, z3, z4, i2);
            }
        }

        @Override // android.view.IWindow
        public void updatePointerIcon(float f2, float f3) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.updatePointerIcon(f2, f3);
            }
        }

        @Override // android.view.IWindow
        public void windowFocusChanged(boolean z2, boolean z3) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.windowFocusChanged(z2, z3);
            }
        }
    }

    public final class WindowInputEventReceiver extends InputEventReceiver {
        public WindowInputEventReceiver(InputChannel inputChannel, Looper looper) {
            super(inputChannel, looper);
        }

        @Override // android.view.InputEventReceiver
        public void dispose() {
            ViewRootImpl.this.unscheduleConsumeBatchedInput();
            super.dispose();
        }

        @Override // android.view.InputEventReceiver
        public void onBatchedInputEventPending() {
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            if (viewRootImpl.mUnbufferedInputDispatch) {
                super.onBatchedInputEventPending();
            } else {
                viewRootImpl.scheduleConsumeBatchedInput();
            }
        }

        @Override // android.view.InputEventReceiver
        public void onInputEvent(InputEvent inputEvent, int i2) {
            if (ViewRootImpl.this.dropIfNeeded(inputEvent)) {
                finishInputEvent(inputEvent, true);
            } else {
                ViewRootImpl.this.enqueueInputEvent(inputEvent, this, 0, true);
            }
        }
    }

    public interface WindowStoppedCallback {
        void windowStopped(boolean z2);
    }

    public ViewRootImpl(Context context, Display display) {
        AccessibilityInteractionConnectionManager accessibilityInteractionConnectionManager = new AccessibilityInteractionConnectionManager();
        this.mAccessibilityInteractionConnectionManager = accessibilityInteractionConnectionManager;
        this.mInLayout = false;
        this.mLayoutRequesters = new ArrayList<>();
        this.mHandlingLayoutInLayoutRequest = false;
        this.mInputEventConsistencyVerifier = InputEventConsistencyVerifier.isInstrumentationEnabled() ? new InputEventConsistencyVerifier(this, 0) : null;
        this.mTag = TAG;
        this.mProfile = false;
        this.mDisplayListener = new DisplayManager.DisplayListener() { // from class: android.view.ViewRootImpl.1
            private int toViewScreenState(int i2) {
                return i2 == 1 ? 0 : 1;
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayAdded(int i2) {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayChanged(int i2) {
                ViewRootImpl viewRootImpl = ViewRootImpl.this;
                if (viewRootImpl.mView == null || viewRootImpl.mDisplay.getDisplayId() != i2) {
                    return;
                }
                ViewRootImpl viewRootImpl2 = ViewRootImpl.this;
                int i3 = viewRootImpl2.mAttachInfo.mDisplayState;
                int state = viewRootImpl2.mDisplay.getState();
                if (i3 != state) {
                    ViewRootImpl viewRootImpl3 = ViewRootImpl.this;
                    viewRootImpl3.mAttachInfo.mDisplayState = state;
                    viewRootImpl3.pokeDrawLockIfNeeded();
                    if (i3 != 0) {
                        int viewScreenState = toViewScreenState(i3);
                        int viewScreenState2 = toViewScreenState(state);
                        if (viewScreenState != viewScreenState2) {
                            ViewRootImpl.this.mView.dispatchScreenStateChanged(viewScreenState2);
                        }
                        if (i3 == 1) {
                            ViewRootImpl viewRootImpl4 = ViewRootImpl.this;
                            viewRootImpl4.mFullRedrawNeeded = true;
                            viewRootImpl4.scheduleTraversals();
                        }
                    }
                }
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayRemoved(int i2) {
            }
        };
        this.mWindowStoppedCallbacks = new ArrayList<>();
        this.mDrawsNeededToReport = 0;
        ViewRootHandler viewRootHandler = new ViewRootHandler();
        this.mHandler = viewRootHandler;
        this.mTraversalRunnable = new TraversalRunnable();
        this.mConsumedBatchedInputRunnable = new ConsumeBatchedInputRunnable();
        this.mConsumeBatchedInputImmediatelyRunnable = new ConsumeBatchedInputImmediatelyRunnable();
        this.mInvalidateOnAnimationRunnable = new InvalidateOnAnimationRunnable();
        this.mContext = context;
        IWindowSession windowSession = WindowManagerGlobal.getWindowSession();
        this.mWindowSession = windowSession;
        this.mDisplay = display;
        this.mBasePackageName = context.getBasePackageName();
        this.mThread = Thread.currentThread();
        WindowLeaked windowLeaked = new WindowLeaked(null);
        this.mLocation = windowLeaked;
        windowLeaked.fillInStackTrace();
        this.mWidth = -1;
        this.mHeight = -1;
        this.mDirty = new Rect();
        this.mTempRect = new Rect();
        this.mVisRect = new Rect();
        this.mWinFrame = new Rect();
        W w2 = new W(this);
        this.mWindow = w2;
        this.mTargetSdkVersion = context.getApplicationInfo().targetSdkVersion;
        this.mViewVisibility = 8;
        this.mTransparentRegion = new Region();
        this.mPreviousTransparentRegion = new Region();
        this.mFirst = true;
        this.mAdded = false;
        this.mAttachInfo = new View.AttachInfo(windowSession, w2, display, this, viewRootHandler, this, context);
        AccessibilityManager accessibilityManager = AccessibilityManager.getInstance(context);
        this.mAccessibilityManager = accessibilityManager;
        accessibilityManager.addAccessibilityStateChangeListener(accessibilityInteractionConnectionManager, viewRootHandler);
        HighContrastTextManager highContrastTextManager = new HighContrastTextManager();
        this.mHighContrastTextManager = highContrastTextManager;
        accessibilityManager.addHighTextContrastStateChangeListener(highContrastTextManager, viewRootHandler);
        this.mViewConfiguration = ViewConfiguration.get(context);
        this.mDensity = context.getResources().getDisplayMetrics().densityDpi;
        this.mNoncompatDensity = context.getResources().getDisplayMetrics().noncompatDensityDpi;
        this.mFallbackEventHandler = new PhoneFallbackEventHandler(context);
        this.mChoreographer = Choreographer.getInstance();
        this.mDisplayManager = (DisplayManager) context.getSystemService(Context.DISPLAY_SERVICE);
        if (!sCompatibilityDone) {
            sAlwaysAssignFocus = true;
            sCompatibilityDone = true;
        }
        loadSystemProperties();
    }

    public static void addConfigCallback(ConfigChangedCallback configChangedCallback) {
        ArrayList<ConfigChangedCallback> arrayList = sConfigCallbacks;
        synchronized (arrayList) {
            arrayList.add(configChangedCallback);
        }
    }

    public static void addFirstDrawHandler(Runnable runnable) {
        ArrayList<Runnable> arrayList = sFirstDrawHandlers;
        synchronized (arrayList) {
            if (!sFirstDrawComplete) {
                arrayList.add(runnable);
            }
        }
    }

    private void adjustInputEventForCompatibility(InputEvent inputEvent) {
        if (this.mTargetSdkVersion >= 23 || !(inputEvent instanceof MotionEvent)) {
            return;
        }
        MotionEvent motionEvent = (MotionEvent) inputEvent;
        int buttonState = motionEvent.getButtonState();
        int i2 = (buttonState & 96) >> 4;
        if (i2 != 0) {
            motionEvent.setButtonState(buttonState | i2);
        }
    }

    private void applyKeepScreenOnFlag(WindowManager.LayoutParams layoutParams) {
        if (this.mAttachInfo.mKeepScreenOn) {
            layoutParams.flags |= 128;
        } else {
            layoutParams.flags = (layoutParams.flags & (-129)) | (this.mClientWindowLayoutFlags & 128);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkForLeavingTouchModeAndConsume(KeyEvent keyEvent) {
        if (!this.mAttachInfo.mInTouchMode) {
            return false;
        }
        int action = keyEvent.getAction();
        if ((action != 0 && action != 2) || (keyEvent.getFlags() & 4) != 0) {
            return false;
        }
        if (isNavigationKey(keyEvent)) {
            return ensureTouchMode(false);
        }
        if (isTypingKey(keyEvent)) {
            ensureTouchMode(false);
        }
        return false;
    }

    private boolean collectViewAttributes() {
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo.mRecomputeGlobalAttributes) {
            attachInfo.mRecomputeGlobalAttributes = false;
            boolean z2 = attachInfo.mKeepScreenOn;
            attachInfo.mKeepScreenOn = false;
            attachInfo.mSystemUiVisibility = 0;
            attachInfo.mHasSystemUiListeners = false;
            this.mView.dispatchCollectViewAttributes(attachInfo, 0);
            View.AttachInfo attachInfo2 = this.mAttachInfo;
            int i2 = attachInfo2.mSystemUiVisibility & (~attachInfo2.mDisabledSystemUiVisibility);
            attachInfo2.mSystemUiVisibility = i2;
            WindowManager.LayoutParams layoutParams = this.mWindowAttributes;
            attachInfo2.mSystemUiVisibility = i2 | getImpliedSystemUiVisibility(layoutParams);
            View.AttachInfo attachInfo3 = this.mAttachInfo;
            if (attachInfo3.mKeepScreenOn != z2 || attachInfo3.mSystemUiVisibility != layoutParams.subtreeSystemUiVisibility || attachInfo3.mHasSystemUiListeners != layoutParams.hasSystemUiListeners) {
                applyKeepScreenOnFlag(layoutParams);
                View.AttachInfo attachInfo4 = this.mAttachInfo;
                int i3 = attachInfo4.mSystemUiVisibility;
                layoutParams.subtreeSystemUiVisibility = i3;
                layoutParams.hasSystemUiListeners = attachInfo4.mHasSystemUiListeners;
                this.mView.dispatchWindowSystemUiVisiblityChanged(i3);
                return true;
            }
        }
        return false;
    }

    private void deliverInputEvent(QueuedInputEvent queuedInputEvent) {
        InputStage inputStage;
        Trace.asyncTraceBegin(8L, "deliverInputEvent", queuedInputEvent.mEvent.getSequenceNumber());
        InputEventConsistencyVerifier inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier != null) {
            inputEventConsistencyVerifier.onInputEvent(queuedInputEvent.mEvent, 0);
        }
        if (queuedInputEvent.shouldSendToSynthesizer()) {
            inputStage = this.mSyntheticInputStage;
        } else {
            inputStage = queuedInputEvent.shouldSkipIme() ? this.mFirstPostImeInputStage : this.mFirstInputStage;
        }
        if (inputStage != null) {
            inputStage.deliver(queuedInputEvent);
        } else {
            finishInputEvent(queuedInputEvent);
        }
    }

    private void destroyHardwareRenderer() {
        ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
        if (threadedRenderer != null) {
            View view = this.mView;
            if (view != null) {
                threadedRenderer.destroyHardwareResources(view);
            }
            threadedRenderer.destroy();
            threadedRenderer.setRequested(false);
            View.AttachInfo attachInfo = this.mAttachInfo;
            attachInfo.mThreadedRenderer = null;
            attachInfo.mHardwareAccelerated = false;
        }
    }

    private int dipToPx(int i2) {
        return (int) ((this.mContext.getResources().getDisplayMetrics().density * i2) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchResized(Rect rect, Rect rect2, Rect rect3, Rect rect4, Rect rect5, Rect rect6, boolean z2, MergedConfiguration mergedConfiguration, Rect rect7, boolean z3, boolean z4, int i2) {
        Rect rect8 = rect3;
        Rect rect9 = rect4;
        Rect rect10 = rect5;
        MergedConfiguration mergedConfiguration2 = mergedConfiguration;
        Rect rect11 = rect7;
        if (this.mDragResizing) {
            boolean zEquals = rect.equals(rect11);
            synchronized (this.mWindowCallbacks) {
                for (int size = this.mWindowCallbacks.size() - 1; size >= 0; size--) {
                    this.mWindowCallbacks.get(size).onWindowSizeIsChanging(rect11, zEquals, rect9, rect10);
                }
            }
        }
        Message messageObtainMessage = this.mHandler.obtainMessage(z2 ? 5 : 4);
        CompatibilityInfo.Translator translator = this.mTranslator;
        if (translator != null) {
            translator.translateRectInScreenToAppWindow(rect);
            this.mTranslator.translateRectInScreenToAppWindow(rect2);
            this.mTranslator.translateRectInScreenToAppWindow(rect8);
            this.mTranslator.translateRectInScreenToAppWindow(rect9);
        }
        SomeArgs someArgsObtain = SomeArgs.obtain();
        boolean z5 = Binder.getCallingPid() == Process.myPid();
        someArgsObtain.arg1 = z5 ? new Rect(rect) : rect;
        if (z5) {
            rect8 = new Rect(rect8);
        }
        someArgsObtain.arg2 = rect8;
        if (z5) {
            rect9 = new Rect(rect9);
        }
        someArgsObtain.arg3 = rect9;
        if (z5 && mergedConfiguration2 != null) {
            mergedConfiguration2 = new MergedConfiguration(mergedConfiguration2);
        }
        someArgsObtain.arg4 = mergedConfiguration2;
        someArgsObtain.arg5 = z5 ? new Rect(rect2) : rect2;
        if (z5) {
            rect10 = new Rect(rect10);
        }
        someArgsObtain.arg6 = rect10;
        someArgsObtain.arg7 = z5 ? new Rect(rect6) : rect6;
        if (z5) {
            rect11 = new Rect(rect11);
        }
        someArgsObtain.arg8 = rect11;
        someArgsObtain.argi1 = z3 ? 1 : 0;
        someArgsObtain.argi2 = z4 ? 1 : 0;
        someArgsObtain.argi3 = i2;
        messageObtainMessage.obj = someArgsObtain;
        this.mHandler.sendMessage(messageObtainMessage);
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00dc  */
    private void draw(boolean z2) {
        boolean z3;
        boolean z4;
        Scroller scroller;
        Surface surface = this.mSurface;
        if (surface.isValid()) {
            if (!sFirstDrawComplete) {
                ArrayList<Runnable> arrayList = sFirstDrawHandlers;
                synchronized (arrayList) {
                    sFirstDrawComplete = true;
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        this.mHandler.post(sFirstDrawHandlers.get(i2));
                    }
                }
            }
            scrollToRectOrFocus(null, false);
            View.AttachInfo attachInfo = this.mAttachInfo;
            if (attachInfo.mViewScrollChanged) {
                attachInfo.mViewScrollChanged = false;
                attachInfo.mTreeObserver.dispatchOnScrollChanged();
            }
            Scroller scroller2 = this.mScroller;
            boolean z5 = scroller2 != null && scroller2.computeScrollOffset();
            int currY = z5 ? this.mScroller.getCurrY() : this.mScrollY;
            if (this.mCurScrollY != currY) {
                this.mCurScrollY = currY;
                KeyEvent.Callback callback = this.mView;
                if (callback instanceof RootViewSurfaceTaker) {
                    ((RootViewSurfaceTaker) callback).onRootViewScrollYChanged(currY);
                }
                z3 = true;
            } else {
                z3 = z2;
            }
            View.AttachInfo attachInfo2 = this.mAttachInfo;
            float f2 = attachInfo2.mApplicationScale;
            boolean z6 = attachInfo2.mScalingRequired;
            Rect rect = this.mDirty;
            if (this.mSurfaceHolder != null) {
                rect.setEmpty();
                if (!z5 || (scroller = this.mScroller) == null) {
                    return;
                }
                scroller.abortAnimation();
                return;
            }
            if (z3) {
                attachInfo2.mIgnoreDirtyState = true;
                rect.set(0, 0, (int) ((this.mWidth * f2) + 0.5f), (int) ((this.mHeight * f2) + 0.5f));
            }
            this.mAttachInfo.mTreeObserver.dispatchOnDraw();
            int i3 = -this.mCanvasOffsetX;
            int i4 = (-this.mCanvasOffsetY) + currY;
            WindowManager.LayoutParams layoutParams = this.mWindowAttributes;
            Rect rect2 = layoutParams != null ? layoutParams.surfaceInsets : null;
            if (rect2 != null) {
                int i5 = rect2.left;
                i3 -= i5;
                i4 -= rect2.top;
                rect.offset(i5, rect2.right);
            }
            View.AttachInfo attachInfo3 = this.mAttachInfo;
            Drawable drawable = attachInfo3.mAccessibilityFocusDrawable;
            if (drawable != null) {
                Rect rect3 = attachInfo3.mTmpInvalRect;
                if (!getAccessibilityFocusedRect(rect3)) {
                    rect3.setEmpty();
                }
                if (rect3.equals(drawable.getBounds())) {
                    z4 = false;
                } else {
                    z4 = true;
                }
            } else {
                z4 = false;
            }
            this.mAttachInfo.mDrawingTime = this.mChoreographer.getFrameTimeNanos() / TimeUtils.NANOS_PER_MS;
            if (!rect.isEmpty() || this.mIsAnimating || z4) {
                ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
                if (threadedRenderer == null || !threadedRenderer.isEnabled()) {
                    ThreadedRenderer threadedRenderer2 = this.mAttachInfo.mThreadedRenderer;
                    if (threadedRenderer2 != null && !threadedRenderer2.isEnabled() && this.mAttachInfo.mThreadedRenderer.isRequested()) {
                        try {
                            View.AttachInfo attachInfo4 = this.mAttachInfo;
                            attachInfo4.mThreadedRenderer.initializeIfNeeded(this.mWidth, this.mHeight, attachInfo4, this.mSurface, rect2);
                            this.mFullRedrawNeeded = true;
                            scheduleTraversals();
                            return;
                        } catch (Surface.OutOfResourcesException e2) {
                            handleOutOfResourcesException(e2);
                            return;
                        }
                    }
                    if (!drawSoftware(surface, this.mAttachInfo, i3, i4, z6, rect)) {
                        return;
                    }
                } else {
                    boolean z7 = z4 || this.mInvalidateRootRequested;
                    this.mInvalidateRootRequested = false;
                    this.mIsAnimating = false;
                    if (this.mHardwareYOffset != i4 || this.mHardwareXOffset != i3) {
                        this.mHardwareYOffset = i4;
                        this.mHardwareXOffset = i3;
                        z7 = true;
                    }
                    if (z7) {
                        this.mAttachInfo.mThreadedRenderer.invalidateRoot();
                    }
                    rect.setEmpty();
                    boolean zUpdateContentDrawBounds = updateContentDrawBounds();
                    if (this.mReportNextDraw) {
                        this.mAttachInfo.mThreadedRenderer.setStopped(false);
                    }
                    if (zUpdateContentDrawBounds) {
                        requestDrawWindow();
                    }
                    View.AttachInfo attachInfo5 = this.mAttachInfo;
                    attachInfo5.mThreadedRenderer.draw(this.mView, attachInfo5, this);
                }
            }
            if (z5) {
                this.mFullRedrawNeeded = true;
                scheduleTraversals();
            }
        }
    }

    private void drawAccessibilityFocusedDrawableIfNeeded(Canvas canvas) {
        Rect rect = this.mAttachInfo.mTmpInvalRect;
        if (!getAccessibilityFocusedRect(rect)) {
            Drawable drawable = this.mAttachInfo.mAccessibilityFocusDrawable;
            if (drawable != null) {
                drawable.setBounds(0, 0, 0, 0);
                return;
            }
            return;
        }
        Drawable accessibilityFocusedDrawable = getAccessibilityFocusedDrawable();
        if (accessibilityFocusedDrawable != null) {
            accessibilityFocusedDrawable.setBounds(rect);
            accessibilityFocusedDrawable.draw(canvas);
        }
    }

    private boolean drawSoftware(Surface surface, View.AttachInfo attachInfo, int i2, int i3, boolean z2, Rect rect) {
        try {
            int i4 = rect.left;
            int i5 = rect.top;
            int i6 = rect.right;
            int i7 = rect.bottom;
            Canvas canvasLockCanvas = this.mSurface.lockCanvas(rect);
            if (i4 != rect.left || i5 != rect.top || i6 != rect.right || i7 != rect.bottom) {
                attachInfo.mIgnoreDirtyState = true;
            }
            canvasLockCanvas.setDensity(this.mDensity);
            try {
                if (!canvasLockCanvas.isOpaque() || i3 != 0 || i2 != 0) {
                    canvasLockCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
                }
                rect.setEmpty();
                this.mIsAnimating = false;
                this.mView.mPrivateFlags |= 32;
                try {
                    canvasLockCanvas.translate(-i2, -i3);
                    CompatibilityInfo.Translator translator = this.mTranslator;
                    if (translator != null) {
                        translator.translateCanvas(canvasLockCanvas);
                    }
                    canvasLockCanvas.setScreenDensity(z2 ? this.mNoncompatDensity : 0);
                    attachInfo.mSetIgnoreDirtyState = false;
                    this.mView.draw(canvasLockCanvas);
                    drawAccessibilityFocusedDrawableIfNeeded(canvasLockCanvas);
                    if (!attachInfo.mSetIgnoreDirtyState) {
                        attachInfo.mIgnoreDirtyState = false;
                    }
                    try {
                        surface.unlockCanvasAndPost(canvasLockCanvas);
                        return true;
                    } catch (IllegalArgumentException e2) {
                        Log.e(this.mTag, "Could not unlock surface", e2);
                        this.mLayoutRequested = true;
                        return false;
                    }
                } catch (Throwable th) {
                    if (!attachInfo.mSetIgnoreDirtyState) {
                        attachInfo.mIgnoreDirtyState = false;
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    surface.unlockCanvasAndPost(canvasLockCanvas);
                    throw th2;
                } catch (IllegalArgumentException e3) {
                    Log.e(this.mTag, "Could not unlock surface", e3);
                    this.mLayoutRequested = true;
                    return false;
                }
            }
        } catch (Surface.OutOfResourcesException e4) {
            handleOutOfResourcesException(e4);
            return false;
        } catch (IllegalArgumentException e5) {
            Log.e(this.mTag, "Could not lock surface", e5);
            this.mLayoutRequested = true;
            return false;
        }
    }

    private void dumpViewHierarchy(String str, PrintWriter printWriter, View view) {
        ViewGroup viewGroup;
        int childCount;
        printWriter.print(str);
        if (view == null) {
            printWriter.println("null");
            return;
        }
        printWriter.println(view.toString());
        if ((view instanceof ViewGroup) && (childCount = (viewGroup = (ViewGroup) view).getChildCount()) > 0) {
            String strD = android.accessibilityservice.c.D(str, "  ");
            for (int i2 = 0; i2 < childCount; i2++) {
                dumpViewHierarchy(strD, printWriter, viewGroup.getChildAt(i2));
            }
        }
    }

    private void enableHardwareAcceleration(WindowManager.LayoutParams layoutParams) {
        View.AttachInfo attachInfo = this.mAttachInfo;
        boolean z2 = false;
        attachInfo.mHardwareAccelerated = false;
        attachInfo.mHardwareAccelerationRequested = false;
        if (SystemProperties.getBoolean(PROPERTY_DISABLE_HWACC, false)) {
            StringBuilder sb = new StringBuilder("disable hardware acceleration by DEBUG!!!, ");
            WindowManager.LayoutParams layoutParams2 = this.mWindowAttributes;
            sb.append((Object) (layoutParams2 != null ? layoutParams2.getTitle() : null));
            Log.d(TAG, sb.toString());
            return;
        }
        if (this.mTranslator != null) {
            return;
        }
        if (((layoutParams.flags & 16777216) != 0) && ThreadedRenderer.isAvailable()) {
            int i2 = layoutParams.privateFlags;
            boolean z3 = (i2 & 1) != 0;
            boolean z4 = (i2 & 2) != 0;
            if (z3) {
                this.mAttachInfo.mHardwareAccelerationRequested = true;
                return;
            }
            if (!ThreadedRenderer.sRendererDisabled || (ThreadedRenderer.sSystemRendererDisabled && z4)) {
                ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
                if (threadedRenderer != null) {
                    threadedRenderer.destroy();
                }
                Rect rect = layoutParams.surfaceInsets;
                boolean z5 = layoutParams.format != -1 || (rect.left != 0 || rect.right != 0 || rect.top != 0 || rect.bottom != 0);
                if (this.mContext.getResources().getConfiguration().isScreenWideColorGamut() && layoutParams.getColorMode() == 1) {
                    z2 = true;
                }
                this.mAttachInfo.mThreadedRenderer = ThreadedRenderer.create(this.mContext, z5, layoutParams.getTitle().toString());
                this.mAttachInfo.mThreadedRenderer.setWideGamut(z2);
                View.AttachInfo attachInfo2 = this.mAttachInfo;
                if (attachInfo2.mThreadedRenderer != null) {
                    attachInfo2.mHardwareAccelerationRequested = true;
                    attachInfo2.mHardwareAccelerated = true;
                }
            }
        }
    }

    private void endDragResizing() {
        if (this.mDragResizing) {
            this.mDragResizing = false;
            for (int size = this.mWindowCallbacks.size() - 1; size >= 0; size--) {
                this.mWindowCallbacks.get(size).onWindowDragResizeEnd();
            }
            this.mFullRedrawNeeded = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ensureTouchModeLocally(boolean z2) {
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo.mInTouchMode == z2) {
            return false;
        }
        attachInfo.mInTouchMode = z2;
        attachInfo.mTreeObserver.dispatchOnTouchModeChanged(z2);
        return z2 ? enterTouchMode() : leaveTouchMode();
    }

    private boolean enterTouchMode() {
        View viewFindFocus;
        View view = this.mView;
        if (view == null || !view.hasFocus() || (viewFindFocus = this.mView.findFocus()) == null || viewFindFocus.isFocusableInTouchMode()) {
            return false;
        }
        ViewGroup viewGroupFindAncestorToTakeFocusInTouchMode = findAncestorToTakeFocusInTouchMode(viewFindFocus);
        if (viewGroupFindAncestorToTakeFocusInTouchMode != null) {
            return viewGroupFindAncestorToTakeFocusInTouchMode.requestFocus();
        }
        viewFindFocus.clearFocusInternal(null, true, false);
        return true;
    }

    private static ViewGroup findAncestorToTakeFocusInTouchMode(View view) {
        ViewParent parent = view.getParent();
        while (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup.getDescendantFocusability() == 262144 && viewGroup.isFocusableInTouchMode()) {
                return viewGroup;
            }
            if (viewGroup.isRootNamespace()) {
                return null;
            }
            parent = viewGroup.getParent();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishInputEvent(QueuedInputEvent queuedInputEvent) {
        Trace.asyncTraceEnd(8L, "deliverInputEvent", queuedInputEvent.mEvent.getSequenceNumber());
        InputEventReceiver inputEventReceiver = queuedInputEvent.mReceiver;
        if (inputEventReceiver != null) {
            inputEventReceiver.finishInputEvent(queuedInputEvent.mEvent, (queuedInputEvent.mFlags & 8) != 0);
        } else {
            queuedInputEvent.mEvent.recycleIfNeededAfterDispatch();
        }
        recycleQueuedInputEvent(queuedInputEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void forceLayout(View view) {
        view.forceLayout();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                forceLayout(viewGroup.getChildAt(i2));
            }
        }
    }

    private Drawable getAccessibilityFocusedDrawable() {
        if (this.mAttachInfo.mAccessibilityFocusDrawable == null) {
            TypedValue typedValue = new TypedValue();
            if (this.mView.mContext.getTheme().resolveAttribute(R.attr.accessibilityFocusedDrawable, typedValue, true)) {
                this.mAttachInfo.mAccessibilityFocusDrawable = this.mView.mContext.getDrawable(typedValue.resourceId);
            }
        }
        return this.mAttachInfo.mAccessibilityFocusDrawable;
    }

    private boolean getAccessibilityFocusedRect(Rect rect) {
        View view;
        AccessibilityManager accessibilityManager = AccessibilityManager.getInstance(this.mView.mContext);
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled() && (view = this.mAccessibilityFocusedHost) != null && view.mAttachInfo != null) {
            if (view.getAccessibilityNodeProvider() == null) {
                view.getBoundsOnScreen(rect, true);
            } else {
                AccessibilityNodeInfo accessibilityNodeInfo = this.mAccessibilityFocusedVirtualView;
                if (accessibilityNodeInfo != null) {
                    accessibilityNodeInfo.getBoundsInScreen(rect);
                }
            }
            View.AttachInfo attachInfo = this.mAttachInfo;
            rect.offset(0, attachInfo.mViewRootImpl.mScrollY);
            rect.offset(-attachInfo.mWindowLeft, -attachInfo.mWindowTop);
            ViewRootImpl viewRootImpl = attachInfo.mViewRootImpl;
            if (!rect.intersect(0, 0, viewRootImpl.mWidth, viewRootImpl.mHeight)) {
                rect.setEmpty();
            }
            return !rect.isEmpty();
        }
        return false;
    }

    private AudioManager getAudioManager() {
        View view = this.mView;
        if (view == null) {
            throw new IllegalStateException("getAudioManager called when there is no mView");
        }
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) view.getContext().getSystemService("audio");
        }
        return this.mAudioManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getCommonPredecessor(View view, View view2) {
        if (this.mTempHashSet == null) {
            this.mTempHashSet = new HashSet<>();
        }
        HashSet<View> hashSet = this.mTempHashSet;
        hashSet.clear();
        while (view != null) {
            hashSet.add(view);
            Object obj = view.mParent;
            view = obj instanceof View ? (View) obj : null;
        }
        while (view2 != null) {
            if (hashSet.contains(view2)) {
                hashSet.clear();
                return view2;
            }
            Object obj2 = view2.mParent;
            view2 = obj2 instanceof View ? (View) obj2 : null;
        }
        hashSet.clear();
        return null;
    }

    private static void getGfxInfo(View view, int[] iArr) {
        RenderNode renderNode = view.mRenderNode;
        iArr[0] = iArr[0] + 1;
        if (renderNode != null) {
            iArr[1] = renderNode.getDebugSize() + iArr[1];
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                getGfxInfo(viewGroup.getChildAt(i2), iArr);
            }
        }
    }

    private int getImpliedSystemUiVisibility(WindowManager.LayoutParams layoutParams) {
        int i2 = layoutParams.flags;
        int i3 = (67108864 & i2) != 0 ? 1280 : 0;
        return (i2 & 134217728) != 0 ? i3 | 768 : i3;
    }

    private static int getRootMeasureSpec(int i2, int i3) {
        if (i3 != -2) {
            return i3 != -1 ? View.MeasureSpec.makeMeasureSpec(i3, 1073741824) : View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
        }
        return View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE);
    }

    public static HandlerActionQueue getRunQueue() {
        ThreadLocal<HandlerActionQueue> threadLocal = sRunQueues;
        HandlerActionQueue handlerActionQueue = threadLocal.get();
        if (handlerActionQueue != null) {
            return handlerActionQueue;
        }
        HandlerActionQueue handlerActionQueue2 = new HandlerActionQueue();
        threadLocal.set(handlerActionQueue2);
        return handlerActionQueue2;
    }

    private ArrayList<View> getValidLayoutRequesters(ArrayList<View> arrayList, boolean z2) {
        boolean z3;
        int size = arrayList.size();
        ArrayList<View> arrayList2 = null;
        for (int i2 = 0; i2 < size; i2++) {
            View view = arrayList.get(i2);
            if (view != null && view.mAttachInfo != null && view.mParent != null && (z2 || (view.mPrivateFlags & 4096) == 4096)) {
                View view2 = view;
                while (true) {
                    if (view2 == null) {
                        z3 = false;
                        break;
                    }
                    if ((view2.mViewFlags & 12) == 8) {
                        z3 = true;
                        break;
                    }
                    Object obj = view2.mParent;
                    view2 = obj instanceof View ? (View) obj : null;
                }
                if (!z3) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    arrayList2.add(view);
                }
            }
        }
        if (!z2) {
            for (int i3 = 0; i3 < size; i3++) {
                View view3 = arrayList.get(i3);
                while (view3 != null) {
                    int i4 = view3.mPrivateFlags;
                    if ((i4 & 4096) == 0) {
                        break;
                    }
                    view3.mPrivateFlags = i4 & (-4097);
                    Object obj2 = view3.mParent;
                    view3 = obj2 instanceof View ? (View) obj2 : null;
                }
            }
        }
        arrayList.clear();
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:44:0x0087 A[Catch: RemoteException -> 0x008f, TRY_LEAVE, TryCatch #1 {RemoteException -> 0x008f, blocks: (B:41:0x007c, B:42:0x0083, B:44:0x0087), top: B:59:0x007c }] */
    public void handleDragEvent(DragEvent dragEvent) {
        ClipData clipData;
        View view = this.mView;
        if (view != null && this.mAdded) {
            int i2 = dragEvent.mAction;
            if (i2 == 1) {
                this.mCurrentDragView = null;
                this.mDragDescription = dragEvent.mClipDescription;
            } else {
                if (i2 == 4) {
                    this.mDragDescription = null;
                }
                dragEvent.mClipDescription = this.mDragDescription;
            }
            if (i2 == 6) {
                if (View.sCascadedDragDrop) {
                    view.dispatchDragEnterExitInPreN(dragEvent);
                }
                setDragFocus(null, dragEvent);
            } else {
                if (i2 == 2 || i2 == 3) {
                    this.mDragPoint.set(dragEvent.mX, dragEvent.mY);
                    CompatibilityInfo.Translator translator = this.mTranslator;
                    if (translator != null) {
                        translator.translatePointInScreenToAppWindow(this.mDragPoint);
                    }
                    int i3 = this.mCurScrollY;
                    if (i3 != 0) {
                        this.mDragPoint.offset(0.0f, i3);
                    }
                    PointF pointF = this.mDragPoint;
                    dragEvent.mX = pointF.f73x;
                    dragEvent.mY = pointF.f74y;
                }
                View view2 = this.mCurrentDragView;
                if (i2 == 3 && (clipData = dragEvent.mClipData) != null) {
                    clipData.prepareToEnterProcess();
                }
                boolean zDispatchDragEvent = this.mView.dispatchDragEvent(dragEvent);
                if (i2 == 2 && !dragEvent.mEventHandlerWasCalled) {
                    setDragFocus(null, dragEvent);
                }
                if (view2 != this.mCurrentDragView) {
                    if (view2 != null) {
                        try {
                            this.mWindowSession.dragRecipientExited(this.mWindow);
                            if (this.mCurrentDragView != null) {
                                this.mWindowSession.dragRecipientEntered(this.mWindow);
                            }
                        } catch (RemoteException unused) {
                            Slog.e(this.mTag, "Unable to note drag target change");
                        }
                    } else if (this.mCurrentDragView != null) {
                        this.mWindowSession.dragRecipientEntered(this.mWindow);
                    }
                }
                if (i2 == 3) {
                    try {
                        Log.i(this.mTag, "Reporting drop result: " + zDispatchDragEvent);
                        this.mWindowSession.reportDropResult(this.mWindow, zDispatchDragEvent);
                    } catch (RemoteException unused2) {
                        Log.e(this.mTag, "Unable to report drop result");
                    }
                }
                if (i2 == 4) {
                    this.mCurrentDragView = null;
                    setLocalDragState(null);
                    View.AttachInfo attachInfo = this.mAttachInfo;
                    attachInfo.mDragToken = null;
                    Surface surface = attachInfo.mDragSurface;
                    if (surface != null) {
                        surface.release();
                        this.mAttachInfo.mDragSurface = null;
                    }
                }
            }
        }
        dragEvent.recycle();
    }

    private void handleOutOfResourcesException(Surface.OutOfResourcesException outOfResourcesException) {
        Log.e(this.mTag, "OutOfResourcesException initializing HW surface", outOfResourcesException);
        try {
            if (!this.mWindowSession.outOfMemory(this.mWindow) && Process.myUid() != 1000) {
                Slog.w(this.mTag, "No processes killed for memory; killing self");
                Process.killProcess(Process.myPid());
            }
        } catch (RemoteException unused) {
        }
        this.mLayoutRequested = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePointerCaptureChanged(boolean z2) {
        if (this.mPointerCapture == z2) {
            return;
        }
        this.mPointerCapture = z2;
        View view = this.mView;
        if (view != null) {
            view.dispatchPointerCaptureChanged(z2);
        }
    }

    private void handleWindowContentChangedEvent(AccessibilityEvent accessibilityEvent) {
        View view = this.mAccessibilityFocusedHost;
        if (view == null || this.mAccessibilityFocusedVirtualView == null) {
            return;
        }
        AccessibilityNodeProvider accessibilityNodeProvider = view.getAccessibilityNodeProvider();
        if (accessibilityNodeProvider == null) {
            this.mAccessibilityFocusedHost = null;
            this.mAccessibilityFocusedVirtualView = null;
            view.clearAccessibilityFocusNoCallbacks(0);
            return;
        }
        int contentChangeTypes = accessibilityEvent.getContentChangeTypes();
        if ((contentChangeTypes & 1) != 0 || contentChangeTypes == 0) {
            int accessibilityViewId = AccessibilityNodeInfo.getAccessibilityViewId(accessibilityEvent.getSourceNodeId());
            View view2 = this.mAccessibilityFocusedHost;
            boolean z2 = false;
            while (view2 != null && !z2) {
                if (accessibilityViewId == view2.getAccessibilityViewId()) {
                    z2 = true;
                } else {
                    Object parent = view2.getParent();
                    view2 = parent instanceof View ? (View) parent : null;
                }
            }
            if (z2) {
                int virtualDescendantId = AccessibilityNodeInfo.getVirtualDescendantId(this.mAccessibilityFocusedVirtualView.getSourceNodeId());
                Rect rect = this.mTempRect;
                this.mAccessibilityFocusedVirtualView.getBoundsInScreen(rect);
                AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(virtualDescendantId);
                this.mAccessibilityFocusedVirtualView = accessibilityNodeInfoCreateAccessibilityNodeInfo;
                if (accessibilityNodeInfoCreateAccessibilityNodeInfo == null) {
                    this.mAccessibilityFocusedHost = null;
                    view.clearAccessibilityFocusNoCallbacks(0);
                    accessibilityNodeProvider.performAction(virtualDescendantId, AccessibilityNodeInfo.AccessibilityAction.ACTION_CLEAR_ACCESSIBILITY_FOCUS.getId(), null);
                    invalidateRectOnScreen(rect);
                    return;
                }
                Rect boundsInScreen = accessibilityNodeInfoCreateAccessibilityNodeInfo.getBoundsInScreen();
                if (rect.equals(boundsInScreen)) {
                    return;
                }
                rect.union(boundsInScreen);
                invalidateRectOnScreen(rect);
            }
        }
    }

    private void invalidateRectOnScreen(Rect rect) {
        Rect rect2 = this.mDirty;
        if (!rect2.isEmpty() && !rect2.contains(rect)) {
            View.AttachInfo attachInfo = this.mAttachInfo;
            attachInfo.mSetIgnoreDirtyState = true;
            attachInfo.mIgnoreDirtyState = true;
        }
        rect2.union(rect.left, rect.top, rect.right, rect.bottom);
        float f2 = this.mAttachInfo.mApplicationScale;
        boolean zIntersect = rect2.intersect(0, 0, (int) ((this.mWidth * f2) + 0.5f), (int) ((this.mHeight * f2) + 0.5f));
        if (!zIntersect) {
            rect2.setEmpty();
        }
        if (this.mWillDrawSoon) {
            return;
        }
        if (zIntersect || this.mIsAnimating) {
            scheduleTraversals();
        }
    }

    public static void invokeFunctor(long j2, boolean z2) {
        ThreadedRenderer.invokeFunctor(j2, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInLocalFocusMode() {
        return (this.mWindowAttributes.flags & 268435456) != 0;
    }

    public static boolean isInTouchMode() {
        IWindowSession iWindowSessionPeekWindowSession = WindowManagerGlobal.peekWindowSession();
        if (iWindowSessionPeekWindowSession == null) {
            return false;
        }
        try {
            return iWindowSessionPeekWindowSession.getInTouchMode();
        } catch (RemoteException unused) {
            return false;
        }
    }

    private static boolean isNavigationKey(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 61 || keyCode == 62 || keyCode == 66 || keyCode == 92 || keyCode == 93 || keyCode == 122 || keyCode == 123) {
            return true;
        }
        switch (keyCode) {
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                return true;
            default:
                return false;
        }
    }

    public static boolean isTerminalInputEvent(InputEvent inputEvent) {
        if (inputEvent instanceof KeyEvent) {
            return ((KeyEvent) inputEvent).getAction() == 1;
        }
        int action = ((MotionEvent) inputEvent).getAction();
        return action == 1 || action == 3 || action == 10;
    }

    private static boolean isTypingKey(KeyEvent keyEvent) {
        return keyEvent.getUnicodeChar() > 0;
    }

    public static boolean isViewDescendantOf(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && isViewDescendantOf((View) parent, view2);
    }

    private boolean leaveTouchMode() {
        View view = this.mView;
        if (view != null) {
            if (view.hasFocus()) {
                View viewFindFocus = this.mView.findFocus();
                if (!(viewFindFocus instanceof ViewGroup) || ((ViewGroup) viewFindFocus).getDescendantFocusability() != 262144) {
                    return false;
                }
            }
            View viewFocusSearch = focusSearch(null, 130);
            if (viewFocusSearch != null) {
                return viewFocusSearch.requestFocus(130);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeHandleWindowMove(Rect rect) {
        View.AttachInfo attachInfo = this.mAttachInfo;
        boolean z2 = (attachInfo.mWindowLeft == rect.left && attachInfo.mWindowTop == rect.top) ? false : true;
        if (z2) {
            CompatibilityInfo.Translator translator = this.mTranslator;
            if (translator != null) {
                translator.translateRectInScreenToAppWinFrame(rect);
            }
            View.AttachInfo attachInfo2 = this.mAttachInfo;
            attachInfo2.mWindowLeft = rect.left;
            attachInfo2.mWindowTop = rect.top;
        }
        if (z2 || this.mAttachInfo.mNeedsUpdateLightCenter) {
            View.AttachInfo attachInfo3 = this.mAttachInfo;
            ThreadedRenderer threadedRenderer = attachInfo3.mThreadedRenderer;
            if (threadedRenderer != null) {
                threadedRenderer.setLightCenter(attachInfo3);
            }
            this.mAttachInfo.mNeedsUpdateLightCenter = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeUpdateTooltip(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() != 1) {
            return;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9 || actionMasked == 7 || actionMasked == 10) {
            AccessibilityManager accessibilityManager = AccessibilityManager.getInstance(this.mContext);
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
                return;
            }
            View view = this.mView;
            if (view == null) {
                Slog.d(this.mTag, "maybeUpdateTooltip called after view was removed");
            } else {
                view.dispatchTooltipHoverEvent(motionEvent);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0053  */
    private boolean measureHierarchy(View view, WindowManager.LayoutParams layoutParams, Resources resources, int i2, int i3) {
        boolean z2;
        if (layoutParams.width == -2) {
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            resources.getValue(R.dimen.config_prefDialogWidth, this.mTmpValue, true);
            TypedValue typedValue = this.mTmpValue;
            int dimension = typedValue.type == 5 ? (int) typedValue.getDimension(displayMetrics) : 0;
            if (dimension == 0 || i2 <= dimension) {
                z2 = false;
            } else {
                int rootMeasureSpec = getRootMeasureSpec(dimension, layoutParams.width);
                int rootMeasureSpec2 = getRootMeasureSpec(i3, layoutParams.height);
                performMeasure(rootMeasureSpec, rootMeasureSpec2);
                if ((view.getMeasuredWidthAndState() & 16777216) != 0) {
                    performMeasure(getRootMeasureSpec((dimension + i2) / 2, layoutParams.width), rootMeasureSpec2);
                    if ((view.getMeasuredWidthAndState() & 16777216) != 0) {
                        z2 = false;
                    }
                }
                z2 = true;
            }
        } else {
            z2 = false;
        }
        if (!z2) {
            performMeasure(getRootMeasureSpec(i2, layoutParams.width), getRootMeasureSpec(i3, layoutParams.height));
            if (this.mWidth != view.getMeasuredWidth() || this.mHeight != view.getMeasuredHeight()) {
                return true;
            }
        }
        return false;
    }

    private QueuedInputEvent obtainQueuedInputEvent(InputEvent inputEvent, InputEventReceiver inputEventReceiver, int i2) {
        QueuedInputEvent queuedInputEvent = this.mQueuedInputEventPool;
        if (queuedInputEvent != null) {
            this.mQueuedInputEventPoolSize--;
            this.mQueuedInputEventPool = queuedInputEvent.mNext;
            queuedInputEvent.mNext = null;
        } else {
            queuedInputEvent = new QueuedInputEvent();
        }
        queuedInputEvent.mEvent = inputEvent;
        queuedInputEvent.mReceiver = inputEventReceiver;
        queuedInputEvent.mFlags = i2;
        return queuedInputEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performConfigurationChange(MergedConfiguration mergedConfiguration, boolean z2, int i2) {
        if (mergedConfiguration == null) {
            throw new IllegalArgumentException("No merged config provided.");
        }
        Configuration globalConfiguration = mergedConfiguration.getGlobalConfiguration();
        Configuration overrideConfiguration = mergedConfiguration.getOverrideConfiguration();
        CompatibilityInfo compatibilityInfo = this.mDisplay.getDisplayAdjustments().getCompatibilityInfo();
        if (!compatibilityInfo.equals(CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO)) {
            Configuration configuration = new Configuration(globalConfiguration);
            compatibilityInfo.applyToConfiguration(this.mNoncompatDensity, configuration);
            globalConfiguration = configuration;
        }
        ArrayList<ConfigChangedCallback> arrayList = sConfigCallbacks;
        synchronized (arrayList) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                sConfigCallbacks.get(size).onConfigurationChanged(globalConfiguration);
            }
        }
        this.mLastReportedMergedConfiguration.setConfiguration(globalConfiguration, overrideConfiguration);
        this.mForceNextConfigUpdate = z2;
        ActivityConfigCallback activityConfigCallback = this.mActivityConfigCallback;
        if (activityConfigCallback != null) {
            activityConfigCallback.onConfigurationChanged(overrideConfiguration, i2);
        } else {
            updateConfiguration(i2);
        }
        this.mForceNextConfigUpdate = false;
    }

    private void performDraw() {
        if ((this.mAttachInfo.mDisplayState != 1 || this.mReportNextDraw) && this.mView != null) {
            boolean z2 = this.mFullRedrawNeeded;
            this.mFullRedrawNeeded = false;
            this.mIsDrawing = true;
            Trace.traceBegin(8L, "draw");
            try {
                draw(z2);
                this.mIsDrawing = false;
                Trace.traceEnd(8L);
                List<RenderNode> list = this.mAttachInfo.mPendingAnimatingRenderNodes;
                if (list != null) {
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        this.mAttachInfo.mPendingAnimatingRenderNodes.get(i2).endAllAnimators();
                    }
                    this.mAttachInfo.mPendingAnimatingRenderNodes.clear();
                }
                if (this.mReportNextDraw) {
                    this.mReportNextDraw = false;
                    CountDownLatch countDownLatch = this.mWindowDrawCountDown;
                    if (countDownLatch != null) {
                        try {
                            countDownLatch.await();
                        } catch (InterruptedException unused) {
                            Log.e(this.mTag, "Window redraw count down interruped!");
                        }
                        this.mWindowDrawCountDown = null;
                    }
                    ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
                    if (threadedRenderer != null) {
                        threadedRenderer.fence();
                        this.mAttachInfo.mThreadedRenderer.setStopped(this.mStopped);
                    }
                    if (this.mSurfaceHolder == null || !this.mSurface.isValid()) {
                        pendingDrawFinished();
                        return;
                    }
                    new SurfaceCallbackHelper(new e(this, 2)).dispatchSurfaceRedrawNeededAsync(this.mSurfaceHolder, this.mSurfaceHolder.getCallbacks());
                }
            } catch (Throwable th) {
                this.mIsDrawing = false;
                Trace.traceEnd(8L);
                throw th;
            }
        }
    }

    private void performLayout(WindowManager.LayoutParams layoutParams, int i2, int i3) {
        ArrayList<View> validLayoutRequesters;
        this.mLayoutRequested = false;
        this.mScrollMayChange = true;
        this.mInLayout = true;
        View view = this.mView;
        if (view == null) {
            return;
        }
        Trace.traceBegin(8L, TtmlUtils.TAG_LAYOUT);
        try {
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            this.mInLayout = false;
            if (this.mLayoutRequesters.size() > 0 && (validLayoutRequesters = getValidLayoutRequesters(this.mLayoutRequesters, false)) != null) {
                this.mHandlingLayoutInLayoutRequest = true;
                int size = validLayoutRequesters.size();
                for (int i4 = 0; i4 < size; i4++) {
                    View view2 = validLayoutRequesters.get(i4);
                    Log.w("View", "requestLayout() improperly called by " + view2 + " during layout: running second layout pass");
                    view2.requestLayout();
                }
                measureHierarchy(view, layoutParams, this.mView.getContext().getResources(), i2, i3);
                this.mInLayout = true;
                view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
                this.mHandlingLayoutInLayoutRequest = false;
                final ArrayList<View> validLayoutRequesters2 = getValidLayoutRequesters(this.mLayoutRequesters, true);
                if (validLayoutRequesters2 != null) {
                    getRunQueue().post(new Runnable() { // from class: android.view.ViewRootImpl.2
                        @Override // java.lang.Runnable
                        public void run() {
                            int size2 = validLayoutRequesters2.size();
                            for (int i5 = 0; i5 < size2; i5++) {
                                View view3 = (View) validLayoutRequesters2.get(i5);
                                Log.w("View", "requestLayout() improperly called by " + view3 + " during second layout pass: posting in next frame");
                                view3.requestLayout();
                            }
                        }
                    });
                }
            }
            Trace.traceEnd(8L);
            this.mInLayout = false;
        } catch (Throwable th) {
            Trace.traceEnd(8L);
            throw th;
        }
    }

    private void performMeasure(int i2, int i3) {
        if (this.mView == null) {
            return;
        }
        Trace.traceBegin(8L, "measure");
        try {
            this.mView.measure(i2, i3);
        } finally {
            Trace.traceEnd(8L);
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 23871. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    private void performTraversals() {
        /*
            Method dump skipped, instruction units count: 2387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.performTraversals():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postDrawFinished() {
        this.mHandler.sendEmptyMessage(29);
    }

    private void postSendWindowContentChangedCallback(View view, int i2) {
        if (this.mSendWindowContentChangedAccessibilityEvent == null) {
            this.mSendWindowContentChangedAccessibilityEvent = new SendWindowContentChangedAccessibilityEvent();
        }
        this.mSendWindowContentChangedAccessibilityEvent.runOrPost(view, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void profileRendering(boolean z2) {
        if (this.mProfileRendering) {
            this.mRenderProfilingEnabled = z2;
            Choreographer.FrameCallback frameCallback = this.mRenderProfiler;
            if (frameCallback != null) {
                this.mChoreographer.removeFrameCallback(frameCallback);
            }
            if (!this.mRenderProfilingEnabled) {
                this.mRenderProfiler = null;
                return;
            }
            if (this.mRenderProfiler == null) {
                this.mRenderProfiler = new Choreographer.FrameCallback() { // from class: android.view.ViewRootImpl.3
                    @Override // android.view.Choreographer.FrameCallback
                    public void doFrame(long j2) {
                        ViewRootImpl viewRootImpl = ViewRootImpl.this;
                        viewRootImpl.mDirty.set(0, 0, viewRootImpl.mWidth, viewRootImpl.mHeight);
                        ViewRootImpl.this.scheduleTraversals();
                        if (ViewRootImpl.this.mRenderProfilingEnabled) {
                            ViewRootImpl viewRootImpl2 = ViewRootImpl.this;
                            viewRootImpl2.mChoreographer.postFrameCallback(viewRootImpl2.mRenderProfiler);
                        }
                    }
                };
            }
            this.mChoreographer.postFrameCallback(this.mRenderProfiler);
        }
    }

    private void recycleQueuedInputEvent(QueuedInputEvent queuedInputEvent) {
        queuedInputEvent.mEvent = null;
        queuedInputEvent.mReceiver = null;
        int i2 = this.mQueuedInputEventPoolSize;
        if (i2 < 10) {
            this.mQueuedInputEventPoolSize = i2 + 1;
            queuedInputEvent.mNext = this.mQueuedInputEventPool;
            this.mQueuedInputEventPool = queuedInputEvent;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int relayoutWindow(WindowManager.LayoutParams layoutParams, int i2, boolean z2) {
        Object[] objArr;
        float f2 = this.mAttachInfo.mApplicationScale;
        if (layoutParams == null || this.mTranslator == null) {
            objArr = false;
        } else {
            layoutParams.backup();
            this.mTranslator.translateWindowLayout(layoutParams);
            objArr = true;
        }
        if (layoutParams != null && this.mOrigWindowType != layoutParams.type && this.mTargetSdkVersion < 14) {
            Slog.w(this.mTag, "Window type can not be changed after the window is added; ignoring change of " + this.mView);
            layoutParams.type = this.mOrigWindowType;
        }
        int iRelayout = this.mWindowSession.relayout(this.mWindow, this.mSeq, layoutParams, (int) ((this.mView.getMeasuredWidth() * f2) + 0.5f), (int) ((this.mView.getMeasuredHeight() * f2) + 0.5f), i2, z2 ? 1 : 0, this.mWinFrame, this.mPendingOverscanInsets, this.mPendingContentInsets, this.mPendingVisibleInsets, this.mPendingStableInsets, this.mPendingOutsets, this.mPendingBackDropFrame, this.mPendingMergedConfiguration, this.mSurface);
        this.mPendingAlwaysConsumeNavBar = (iRelayout & 64) != 0;
        if (objArr != false) {
            layoutParams.restore();
        }
        CompatibilityInfo.Translator translator = this.mTranslator;
        if (translator != null) {
            translator.translateRectInScreenToAppWinFrame(this.mWinFrame);
            this.mTranslator.translateRectInScreenToAppWindow(this.mPendingOverscanInsets);
            this.mTranslator.translateRectInScreenToAppWindow(this.mPendingContentInsets);
            this.mTranslator.translateRectInScreenToAppWindow(this.mPendingVisibleInsets);
            this.mTranslator.translateRectInScreenToAppWindow(this.mPendingStableInsets);
        }
        return iRelayout;
    }

    private void removeSendWindowContentChangedCallback() {
        SendWindowContentChangedAccessibilityEvent sendWindowContentChangedAccessibilityEvent = this.mSendWindowContentChangedAccessibilityEvent;
        if (sendWindowContentChangedAccessibilityEvent != null) {
            this.mHandler.removeCallbacks(sendWindowContentChangedAccessibilityEvent);
        }
    }

    private void reportDrawFinished() {
        try {
            this.mDrawsNeededToReport = 0;
            this.mWindowSession.finishDrawing(this.mWindow);
        } catch (RemoteException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportNextDraw() {
        if (!this.mReportNextDraw) {
            drawPending();
        }
        this.mReportNextDraw = true;
    }

    private void requestDrawWindow() {
        if (this.mReportNextDraw) {
            this.mWindowDrawCountDown = new CountDownLatch(this.mWindowCallbacks.size());
        }
        for (int size = this.mWindowCallbacks.size() - 1; size >= 0; size--) {
            this.mWindowCallbacks.get(size).onRequestDraw(this.mReportNextDraw);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetPointerIcon(MotionEvent motionEvent) {
        this.mPointerIconType = 1;
        updatePointerIcon(motionEvent);
    }

    private void scheduleProcessInputEvents() {
        if (this.mProcessInputEventsScheduled) {
            return;
        }
        this.mProcessInputEventsScheduled = true;
        Message messageObtainMessage = this.mHandler.obtainMessage(19);
        messageObtainMessage.setAsynchronous(true);
        this.mHandler.sendMessage(messageObtainMessage);
    }

    private void setTag() {
        String[] strArrSplit = this.mWindowAttributes.getTitle().toString().split("\\.");
        if (strArrSplit.length > 0) {
            this.mTag = android.accessibilityservice.c.n(new StringBuilder("ViewRootImpl["), strArrSplit[strArrSplit.length - 1], "]");
        }
    }

    private static boolean shouldUseDisplaySize(WindowManager.LayoutParams layoutParams) {
        int i2 = layoutParams.type;
        return i2 == 2014 || i2 == 2011 || i2 == 2020;
    }

    private void startDragResizing(Rect rect, boolean z2, Rect rect2, Rect rect3, int i2) {
        if (this.mDragResizing) {
            return;
        }
        this.mDragResizing = true;
        for (int size = this.mWindowCallbacks.size() - 1; size >= 0; size--) {
            this.mWindowCallbacks.get(size).onWindowDragResizeStart(rect, z2, rect2, rect3, i2);
        }
        this.mFullRedrawNeeded = true;
    }

    private void trackFPS() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.mFpsStartTime < 0) {
            this.mFpsPrevTime = jCurrentTimeMillis;
            this.mFpsStartTime = jCurrentTimeMillis;
            this.mFpsNumFrames = 0;
            return;
        }
        this.mFpsNumFrames++;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        long j2 = jCurrentTimeMillis - this.mFpsPrevTime;
        long j3 = jCurrentTimeMillis - this.mFpsStartTime;
        Log.v(this.mTag, "0x" + hexString + "\tFrame time:\t" + j2);
        this.mFpsPrevTime = jCurrentTimeMillis;
        if (j3 > 1000) {
            float f2 = (this.mFpsNumFrames * 1000.0f) / j3;
            Log.v(this.mTag, "0x" + hexString + "\tFPS:\t" + f2);
            this.mFpsStartTime = jCurrentTimeMillis;
            this.mFpsNumFrames = 0;
        }
    }

    private boolean updateContentDrawBounds() {
        boolean zOnContentDrawn = false;
        for (int size = this.mWindowCallbacks.size() - 1; size >= 0; size--) {
            WindowCallbacks windowCallbacks = this.mWindowCallbacks.get(size);
            Rect rect = this.mWindowAttributes.surfaceInsets;
            zOnContentDrawn |= windowCallbacks.onContentDrawn(rect.left, rect.top, this.mWidth, this.mHeight);
        }
        return zOnContentDrawn | (this.mDragResizing && this.mReportNextDraw);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updatePointerIcon(MotionEvent motionEvent) {
        float x2 = motionEvent.getX(0);
        float y2 = motionEvent.getY(0);
        View view = this.mView;
        if (view == null) {
            Slog.d(this.mTag, "updatePointerIcon called after view was removed");
            return false;
        }
        if (x2 < 0.0f || x2 >= view.getWidth() || y2 < 0.0f || y2 >= this.mView.getHeight()) {
            Slog.d(this.mTag, "updatePointerIcon called with position out of bounds");
            return false;
        }
        PointerIcon pointerIconOnResolvePointerIcon = this.mView.onResolvePointerIcon(motionEvent, 0);
        int type = pointerIconOnResolvePointerIcon != null ? pointerIconOnResolvePointerIcon.getType() : 1000;
        if (this.mPointerIconType != type) {
            this.mPointerIconType = type;
            this.mCustomPointerIcon = null;
            if (type != -1) {
                InputManager.getInstance().setPointerIconType(type);
                return true;
            }
        }
        if (this.mPointerIconType == -1 && !pointerIconOnResolvePointerIcon.equals(this.mCustomPointerIcon)) {
            this.mCustomPointerIcon = pointerIconOnResolvePointerIcon;
            InputManager.getInstance().setCustomPointerIcon(this.mCustomPointerIcon);
        }
        return true;
    }

    public void addWindowCallbacks(WindowCallbacks windowCallbacks) {
        synchronized (this.mWindowCallbacks) {
            this.mWindowCallbacks.add(windowCallbacks);
        }
    }

    public void addWindowStoppedCallback(WindowStoppedCallback windowStoppedCallback) {
        this.mWindowStoppedCallbacks.add(windowStoppedCallback);
    }

    @Override // android.view.ViewParent
    public void bringChildToFront(View view) {
    }

    @Override // android.view.ViewParent
    public boolean canResolveLayoutDirection() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean canResolveTextAlignment() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean canResolveTextDirection() {
        return true;
    }

    public void cancelInvalidate(View view) {
        this.mHandler.removeMessages(1, view);
        this.mHandler.removeMessages(2, view);
        this.mInvalidateOnAnimationRunnable.removeView(view);
    }

    public void changeCanvasOpacity(boolean z2) {
        android.accessibilityservice.c.z("changeCanvasOpacity: opaque=", z2, this.mTag);
        ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
        if (threadedRenderer != null) {
            threadedRenderer.setOpaque(z2);
        }
    }

    public void checkThread() {
        if (this.mThread != Thread.currentThread()) {
            throw new CalledFromWrongThreadException("Only the original thread that created a view hierarchy can touch its views.");
        }
    }

    @Override // android.view.ViewParent
    public void childDrawableStateChanged(View view) {
    }

    @Override // android.view.ViewParent
    public void childHasTransientStateChanged(View view, boolean z2) {
    }

    @Override // android.view.ViewParent
    public void clearChildFocus(View view) {
        checkThread();
        scheduleTraversals();
    }

    @Override // android.view.ViewParent
    public void createContextMenu(ContextMenu contextMenu) {
    }

    public void debug() {
        this.mView.debug();
    }

    public void destroyHardwareResources() {
        ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
        if (threadedRenderer != null) {
            threadedRenderer.destroyHardwareResources(this.mView);
            this.mAttachInfo.mThreadedRenderer.destroy();
        }
    }

    public void detachFunctor(long j2) {
        ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
        if (threadedRenderer != null) {
            threadedRenderer.stopDrawing();
        }
    }

    public boolean die(boolean z2) {
        if (z2 && !this.mIsInTraversal) {
            doDie();
            return false;
        }
        if (this.mIsDrawing) {
            Log.e(this.mTag, "Attempting to destroy the window while drawing!\n  window=" + this + ", title=" + ((Object) this.mWindowAttributes.getTitle()));
        } else {
            destroyHardwareRenderer();
        }
        this.mHandler.sendEmptyMessage(3);
        return true;
    }

    public void dispatchAppVisibility(boolean z2) {
        Message messageObtainMessage = this.mHandler.obtainMessage(8);
        messageObtainMessage.arg1 = z2 ? 1 : 0;
        this.mHandler.sendMessage(messageObtainMessage);
    }

    public void dispatchApplyInsets(View view) {
        view.dispatchApplyWindowInsets(getWindowInsets(true));
    }

    public void dispatchCheckFocus() {
        if (this.mHandler.hasMessages(13)) {
            return;
        }
        this.mHandler.sendEmptyMessage(13);
    }

    public void dispatchCloseSystemDialogs(String str) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 14;
        messageObtain.obj = str;
        this.mHandler.sendMessage(messageObtain);
    }

    public void dispatchDetachedFromWindow() {
        InputQueue inputQueue;
        View view = this.mView;
        if (view != null && view.mAttachInfo != null) {
            this.mAttachInfo.mTreeObserver.dispatchOnWindowAttachedChange(false);
            this.mView.dispatchDetachedFromWindow();
        }
        this.mAccessibilityInteractionConnectionManager.ensureNoConnection();
        this.mAccessibilityManager.removeAccessibilityStateChangeListener(this.mAccessibilityInteractionConnectionManager);
        this.mAccessibilityManager.removeHighTextContrastStateChangeListener(this.mHighContrastTextManager);
        removeSendWindowContentChangedCallback();
        destroyHardwareRenderer();
        setAccessibilityFocus(null, null);
        this.mView.assignParent(null);
        this.mView = null;
        this.mAttachInfo.mRootView = null;
        this.mSurface.release();
        InputQueue.Callback callback = this.mInputQueueCallback;
        if (callback != null && (inputQueue = this.mInputQueue) != null) {
            callback.onInputQueueDestroyed(inputQueue);
            this.mInputQueue.dispose();
            this.mInputQueueCallback = null;
            this.mInputQueue = null;
        }
        WindowInputEventReceiver windowInputEventReceiver = this.mInputEventReceiver;
        if (windowInputEventReceiver != null) {
            windowInputEventReceiver.dispose();
            this.mInputEventReceiver = null;
        }
        try {
            this.mWindowSession.remove(this.mWindow);
        } catch (RemoteException unused) {
        }
        InputChannel inputChannel = this.mInputChannel;
        if (inputChannel != null) {
            inputChannel.dispose();
            this.mInputChannel = null;
        }
        this.mDisplayManager.unregisterDisplayListener(this.mDisplayListener);
        unscheduleTraversals();
    }

    public void dispatchDragEvent(DragEvent dragEvent) {
        int i2;
        if (dragEvent.getAction() == 2) {
            i2 = 16;
            this.mHandler.removeMessages(16);
        } else {
            i2 = 15;
        }
        this.mHandler.sendMessage(this.mHandler.obtainMessage(i2, dragEvent));
    }

    public void dispatchGetNewSurface() {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(9));
    }

    public void dispatchInputEvent(InputEvent inputEvent) {
        dispatchInputEvent(inputEvent, null);
    }

    public void dispatchInvalidateDelayed(View view, long j2) {
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, view), j2);
    }

    public void dispatchInvalidateOnAnimation(View view) {
        this.mInvalidateOnAnimationRunnable.addView(view);
    }

    public void dispatchInvalidateRectDelayed(View.AttachInfo.InvalidateInfo invalidateInfo, long j2) {
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(2, invalidateInfo), j2);
    }

    public void dispatchInvalidateRectOnAnimation(View.AttachInfo.InvalidateInfo invalidateInfo) {
        this.mInvalidateOnAnimationRunnable.addViewRect(invalidateInfo);
    }

    public void dispatchKeyFromIme(KeyEvent keyEvent) {
        Message messageObtainMessage = this.mHandler.obtainMessage(11, keyEvent);
        messageObtainMessage.setAsynchronous(true);
        this.mHandler.sendMessage(messageObtainMessage);
    }

    public void dispatchMoved(int i2, int i3) {
        if (this.mTranslator != null) {
            PointF pointF = new PointF(i2, i3);
            this.mTranslator.translatePointInScreenToAppWindow(pointF);
            i2 = (int) (((double) pointF.f73x) + 0.5d);
            i3 = (int) (((double) pointF.f74y) + 0.5d);
        }
        this.mHandler.sendMessage(this.mHandler.obtainMessage(23, i2, i3));
    }

    public void dispatchPointerCaptureChanged(boolean z2) {
        this.mHandler.removeMessages(28);
        Message messageObtainMessage = this.mHandler.obtainMessage(28);
        messageObtainMessage.arg1 = z2 ? 1 : 0;
        this.mHandler.sendMessage(messageObtainMessage);
    }

    public void dispatchRequestKeyboardShortcuts(IResultReceiver iResultReceiver, int i2) {
        this.mHandler.obtainMessage(26, i2, 0, iResultReceiver).sendToTarget();
    }

    public void dispatchSystemUiVisibilityChanged(int i2, int i3, int i4, int i5) {
        SystemUiVisibilityInfo systemUiVisibilityInfo = new SystemUiVisibilityInfo();
        systemUiVisibilityInfo.seq = i2;
        systemUiVisibilityInfo.globalVisibility = i3;
        systemUiVisibilityInfo.localValue = i4;
        systemUiVisibilityInfo.localChanges = i5;
        ViewRootHandler viewRootHandler = this.mHandler;
        viewRootHandler.sendMessage(viewRootHandler.obtainMessage(17, systemUiVisibilityInfo));
    }

    public void dispatchUnhandledInputEvent(InputEvent inputEvent) {
        if (inputEvent instanceof MotionEvent) {
            inputEvent = MotionEvent.obtain((MotionEvent) inputEvent);
        }
        synthesizeInputEvent(inputEvent);
    }

    public void dispatchWindowShown() {
        this.mHandler.sendEmptyMessage(25);
    }

    public void doConsumeBatchedInput(long j2) {
        if (this.mConsumeBatchedInputScheduled) {
            this.mConsumeBatchedInputScheduled = false;
            WindowInputEventReceiver windowInputEventReceiver = this.mInputEventReceiver;
            if (windowInputEventReceiver != null && windowInputEventReceiver.consumeBatchedInputEvents(j2) && j2 != -1) {
                scheduleConsumeBatchedInput();
            }
            doProcessInputEvents();
        }
    }

    public void doDie() {
        checkThread();
        synchronized (this) {
            if (this.mRemoved) {
                return;
            }
            boolean z2 = true;
            this.mRemoved = true;
            if (this.mAdded) {
                dispatchDetachedFromWindow();
            }
            if (this.mAdded && !this.mFirst) {
                destroyHardwareRenderer();
                View view = this.mView;
                if (view != null) {
                    int visibility = view.getVisibility();
                    if (this.mViewVisibility == visibility) {
                        z2 = false;
                    }
                    if (this.mWindowAttributesChanged || z2) {
                        try {
                            if ((relayoutWindow(this.mWindowAttributes, visibility, false) & 2) != 0) {
                                this.mWindowSession.finishDrawing(this.mWindow);
                            }
                        } catch (RemoteException unused) {
                        }
                    }
                    this.mSurface.release();
                }
            }
            this.mAdded = false;
            WindowManagerGlobal.getInstance().doRemoveView(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0036  */
    public void doProcessInputEvents() {
        long historicalEventTimeNano;
        while (true) {
            QueuedInputEvent queuedInputEvent = this.mPendingInputEventHead;
            if (queuedInputEvent == null) {
                break;
            }
            QueuedInputEvent queuedInputEvent2 = queuedInputEvent.mNext;
            this.mPendingInputEventHead = queuedInputEvent2;
            if (queuedInputEvent2 == null) {
                this.mPendingInputEventTail = null;
            }
            queuedInputEvent.mNext = null;
            int i2 = this.mPendingInputEventCount - 1;
            this.mPendingInputEventCount = i2;
            Trace.traceCounter(4L, this.mPendingInputEventQueueLengthCounterName, i2);
            long eventTimeNano = queuedInputEvent.mEvent.getEventTimeNano();
            InputEvent inputEvent = queuedInputEvent.mEvent;
            if (inputEvent instanceof MotionEvent) {
                MotionEvent motionEvent = (MotionEvent) inputEvent;
                if (motionEvent.getHistorySize() > 0) {
                    historicalEventTimeNano = motionEvent.getHistoricalEventTimeNano(0);
                } else {
                    historicalEventTimeNano = eventTimeNano;
                }
            } else {
                historicalEventTimeNano = eventTimeNano;
            }
            this.mChoreographer.mFrameInfo.updateInputEventTime(eventTimeNano, historicalEventTimeNano);
            deliverInputEvent(queuedInputEvent);
        }
        if (this.mProcessInputEventsScheduled) {
            this.mProcessInputEventsScheduled = false;
            this.mHandler.removeMessages(19);
        }
    }

    public void doTraversal() {
        if (this.mTraversalScheduled) {
            this.mTraversalScheduled = false;
            this.mHandler.getLooper().getQueue().removeSyncBarrier(this.mTraversalBarrier);
            if (this.mProfile) {
                Debug.startMethodTracing("ViewAncestor");
            }
            performTraversals();
            if (this.mProfile) {
                Debug.stopMethodTracing();
                this.mProfile = false;
            }
        }
    }

    public boolean doTrimForeground() {
        synchronized (this) {
            if (this.mView != null && getHostVisibility() == 0 && this.mAttachInfo.mThreadedRenderer != null) {
                return true;
            }
            destroyHardwareResources();
            return false;
        }
    }

    public void drawPending() {
        this.mDrawsNeededToReport++;
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "  ";
        printWriter.print(str);
        printWriter.println("ViewRoot:");
        printWriter.print(str2);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoved=");
        android.accessibilityservice.c.y(printWriter, this.mRemoved, str2, "mConsumeBatchedInputScheduled=");
        android.accessibilityservice.c.y(printWriter, this.mConsumeBatchedInputScheduled, str2, "mConsumeBatchedInputImmediatelyScheduled=");
        android.accessibilityservice.c.y(printWriter, this.mConsumeBatchedInputImmediatelyScheduled, str2, "mPendingInputEventCount=");
        printWriter.println(this.mPendingInputEventCount);
        printWriter.print(str2);
        printWriter.print("mProcessInputEventsScheduled=");
        android.accessibilityservice.c.y(printWriter, this.mProcessInputEventsScheduled, str2, "mTraversalScheduled=");
        printWriter.print(this.mTraversalScheduled);
        printWriter.print(str2);
        printWriter.print("mIsAmbientMode=");
        printWriter.print(this.mIsAmbientMode);
        if (this.mTraversalScheduled) {
            printWriter.print(" (barrier=");
            printWriter.print(this.mTraversalBarrier);
            printWriter.println(")");
        } else {
            printWriter.println();
        }
        this.mFirstInputStage.dump(str2, printWriter);
        this.mChoreographer.dump(str, printWriter);
        printWriter.print(str);
        printWriter.println("View Hierarchy:");
        dumpViewHierarchy(str2, printWriter, this.mView);
    }

    public void dumpGfxInfo(int[] iArr) {
        iArr[1] = 0;
        iArr[0] = 0;
        View view = this.mView;
        if (view != null) {
            getGfxInfo(view, iArr);
        }
    }

    public void enqueueInputEvent(InputEvent inputEvent) {
        enqueueInputEvent(inputEvent, null, 0, false);
    }

    public boolean ensureTouchMode(boolean z2) {
        if (this.mAttachInfo.mInTouchMode == z2) {
            return false;
        }
        try {
            this.mWindowSession.setInTouchMode(z2);
            return ensureTouchModeLocally(z2);
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // android.view.ViewParent
    public View focusSearch(View view, int i2) {
        checkThread();
        if (this.mView instanceof ViewGroup) {
            return FocusFinder.getInstance().findNextFocus((ViewGroup) this.mView, view, i2);
        }
        return null;
    }

    @Override // android.view.ViewParent
    public void focusableViewAvailable(View view) {
        checkThread();
        View view2 = this.mView;
        if (view2 != null) {
            if (!view2.hasFocus()) {
                if (sAlwaysAssignFocus) {
                    view.requestFocus();
                }
            } else {
                View viewFindFocus = this.mView.findFocus();
                if ((viewFindFocus instanceof ViewGroup) && ((ViewGroup) viewFindFocus).getDescendantFocusability() == 262144 && isViewDescendantOf(view, viewFindFocus)) {
                    view.requestFocus();
                }
            }
        }
    }

    public View getAccessibilityFocusedHost() {
        return this.mAccessibilityFocusedHost;
    }

    public AccessibilityNodeInfo getAccessibilityFocusedVirtualView() {
        return this.mAccessibilityFocusedVirtualView;
    }

    public AccessibilityInteractionController getAccessibilityInteractionController() {
        if (this.mView == null) {
            throw new IllegalStateException("getAccessibilityInteractionController called when there is no mView");
        }
        if (this.mAccessibilityInteractionController == null) {
            this.mAccessibilityInteractionController = new AccessibilityInteractionController(this);
        }
        return this.mAccessibilityInteractionController;
    }

    @Override // android.view.ViewParent
    public boolean getChildVisibleRect(View view, Rect rect, Point point) {
        if (view == this.mView) {
            return rect.intersect(0, 0, this.mWidth, this.mHeight);
        }
        throw new RuntimeException("child is not mine, honest!");
    }

    public int getDisplayId() {
        return this.mDisplay.getDisplayId();
    }

    public int getHostVisibility() {
        if (this.mAppVisible || this.mForceDecorViewVisibility) {
            return this.mView.getVisibility();
        }
        return 8;
    }

    public void getLastTouchPoint(Point point) {
        PointF pointF = this.mLastTouchPoint;
        point.f71x = (int) pointF.f73x;
        point.f72y = (int) pointF.f74y;
    }

    public int getLastTouchSource() {
        return this.mLastTouchSource;
    }

    @Override // android.view.ViewParent
    public int getLayoutDirection() {
        return 0;
    }

    public final WindowLeaked getLocation() {
        return this.mLocation;
    }

    @Override // android.view.ViewParent
    public ViewParent getParent() {
        return null;
    }

    @Override // android.view.ViewParent
    public ViewParent getParentForAccessibility() {
        return null;
    }

    @Override // android.view.ViewParent
    public int getTextAlignment() {
        return 1;
    }

    @Override // android.view.ViewParent
    public int getTextDirection() {
        return 1;
    }

    public CharSequence getTitle() {
        return this.mWindowAttributes.getTitle();
    }

    public View getView() {
        return this.mView;
    }

    public int getWindowFlags() {
        return this.mWindowAttributes.flags;
    }

    public WindowInsets getWindowInsets(boolean z2) {
        if (this.mLastWindowInsets == null || z2) {
            this.mDispatchContentInsets.set(this.mAttachInfo.mContentInsets);
            this.mDispatchStableInsets.set(this.mAttachInfo.mStableInsets);
            Rect rect = this.mDispatchContentInsets;
            Rect rect2 = this.mDispatchStableInsets;
            if (!z2 && (!this.mPendingContentInsets.equals(rect) || !this.mPendingStableInsets.equals(rect2))) {
                rect = this.mPendingContentInsets;
                rect2 = this.mPendingStableInsets;
            }
            Rect rect3 = rect2;
            Rect rect4 = this.mAttachInfo.mOutsets;
            this.mLastWindowInsets = new WindowInsets((rect4.left > 0 || rect4.top > 0 || rect4.right > 0 || rect4.bottom > 0) ? new Rect(rect.left + rect4.left, rect.top + rect4.top, rect.right + rect4.right, rect.bottom + rect4.bottom) : rect, null, rect3, this.mContext.getResources().getConfiguration().isScreenRound(), this.mAttachInfo.mAlwaysConsumeNavBar);
        }
        return this.mLastWindowInsets;
    }

    public void handleAppVisibility(boolean z2) {
        if (this.mAppVisible != z2) {
            this.mAppVisible = z2;
            this.mAppVisibilityChanged = true;
            scheduleTraversals();
            if (this.mAppVisible) {
                return;
            }
            WindowManagerGlobal.trimForeground();
        }
    }

    public void handleDispatchSystemUiVisibilityChanged(SystemUiVisibilityInfo systemUiVisibilityInfo) {
        int i2 = this.mSeq;
        int i3 = systemUiVisibilityInfo.seq;
        if (i2 != i3) {
            this.mSeq = i3;
            this.mAttachInfo.mForceReportNewAttributes = true;
            scheduleTraversals();
        }
        View view = this.mView;
        if (view == null) {
            return;
        }
        int i4 = systemUiVisibilityInfo.localChanges;
        if (i4 != 0) {
            view.updateLocalSystemUiVisibility(systemUiVisibilityInfo.localValue, i4);
        }
        int i5 = systemUiVisibilityInfo.globalVisibility & 7;
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (i5 != attachInfo.mGlobalSystemUiVisibility) {
            attachInfo.mGlobalSystemUiVisibility = i5;
            this.mView.dispatchSystemUiVisibilityChanged(i5);
        }
    }

    public void handleDispatchWindowShown() {
        this.mAttachInfo.mTreeObserver.dispatchOnWindowShown();
    }

    public void handleGetNewSurface() {
        this.mNewSurfaceNeeded = true;
        this.mFullRedrawNeeded = true;
        scheduleTraversals();
    }

    public void handleRequestKeyboardShortcuts(IResultReceiver iResultReceiver, int i2) {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        View view = this.mView;
        if (view != null) {
            view.requestKeyboardShortcuts(arrayList, i2);
        }
        bundle.putParcelableArrayList(WindowManager.PARCEL_KEY_SHORTCUTS_ARRAY, arrayList);
        try {
            iResultReceiver.send(0, bundle);
        } catch (RemoteException unused) {
        }
    }

    public boolean hasPointerCapture() {
        return this.mPointerCapture;
    }

    public void invalidate() {
        this.mDirty.set(0, 0, this.mWidth, this.mHeight);
        if (this.mWillDrawSoon) {
            return;
        }
        scheduleTraversals();
    }

    @Override // android.view.ViewParent
    public void invalidateChild(View view, Rect rect) {
        invalidateChildInParent(null, rect);
    }

    @Override // android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        checkThread();
        if (rect == null) {
            invalidate();
            return null;
        }
        if (rect.isEmpty() && !this.mIsAnimating) {
            return null;
        }
        if (this.mCurScrollY != 0 || this.mTranslator != null) {
            this.mTempRect.set(rect);
            rect = this.mTempRect;
            int i2 = this.mCurScrollY;
            if (i2 != 0) {
                rect.offset(0, -i2);
            }
            CompatibilityInfo.Translator translator = this.mTranslator;
            if (translator != null) {
                translator.translateRectInAppWindowToScreen(rect);
            }
            if (this.mAttachInfo.mScalingRequired) {
                rect.inset(-1, -1);
            }
        }
        invalidateRectOnScreen(rect);
        return null;
    }

    public void invalidateWorld(View view) {
        view.invalidate();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                invalidateWorld(viewGroup.getChildAt(i2));
            }
        }
    }

    public boolean isInLayout() {
        return this.mInLayout;
    }

    @Override // android.view.ViewParent
    public boolean isLayoutDirectionResolved() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean isLayoutRequested() {
        return this.mLayoutRequested;
    }

    @Override // android.view.ViewParent
    public boolean isTextAlignmentResolved() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean isTextDirectionResolved() {
        return true;
    }

    @Override // android.view.ViewParent
    public View keyboardNavigationClusterSearch(View view, int i2) {
        checkThread();
        return FocusFinder.getInstance().findNextKeyboardNavigationCluster(this.mView, view, i2);
    }

    public void loadSystemProperties() {
        this.mHandler.post(new Runnable() { // from class: android.view.ViewRootImpl.4
            @Override // java.lang.Runnable
            public void run() {
                ViewRootImpl.this.mProfileRendering = SystemProperties.getBoolean(ViewRootImpl.PROPERTY_PROFILE_RENDERING, false);
                ViewRootImpl viewRootImpl = ViewRootImpl.this;
                viewRootImpl.profileRendering(viewRootImpl.mAttachInfo.mHasWindowFocus);
                ThreadedRenderer threadedRenderer = ViewRootImpl.this.mAttachInfo.mThreadedRenderer;
                if (threadedRenderer != null && threadedRenderer.loadSystemProperties()) {
                    ViewRootImpl.this.invalidate();
                }
                boolean z2 = SystemProperties.getBoolean(View.DEBUG_LAYOUT_PROPERTY, false);
                ViewRootImpl viewRootImpl2 = ViewRootImpl.this;
                View.AttachInfo attachInfo = viewRootImpl2.mAttachInfo;
                if (z2 != attachInfo.mDebugLayout) {
                    attachInfo.mDebugLayout = z2;
                    if (viewRootImpl2.mHandler.hasMessages(22)) {
                        return;
                    }
                    ViewRootImpl.this.mHandler.sendEmptyMessageDelayed(22, 200L);
                }
            }
        });
    }

    public void notifyChildRebuilt() {
        if (this.mView instanceof RootViewSurfaceTaker) {
            SurfaceHolder.Callback2 callback2 = this.mSurfaceHolderCallback;
            if (callback2 != null) {
                this.mSurfaceHolder.removeCallback(callback2);
            }
            SurfaceHolder.Callback2 callback2WillYouTakeTheSurface = ((RootViewSurfaceTaker) this.mView).willYouTakeTheSurface();
            this.mSurfaceHolderCallback = callback2WillYouTakeTheSurface;
            if (callback2WillYouTakeTheSurface != null) {
                TakenSurfaceHolder takenSurfaceHolder = new TakenSurfaceHolder();
                this.mSurfaceHolder = takenSurfaceHolder;
                takenSurfaceHolder.setFormat(0);
                this.mSurfaceHolder.addCallback(this.mSurfaceHolderCallback);
            } else {
                this.mSurfaceHolder = null;
            }
            InputQueue.Callback callbackWillYouTakeTheInputQueue = ((RootViewSurfaceTaker) this.mView).willYouTakeTheInputQueue();
            this.mInputQueueCallback = callbackWillYouTakeTheInputQueue;
            if (callbackWillYouTakeTheInputQueue != null) {
                callbackWillYouTakeTheInputQueue.onInputQueueCreated(this.mInputQueue);
            }
        }
    }

    public void notifyRendererOfFramePending() {
        ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
        if (threadedRenderer != null) {
            threadedRenderer.notifyFramePending();
        }
    }

    @Override // android.view.ViewParent
    public void notifySubtreeAccessibilityStateChanged(View view, View view2, int i2) {
        postSendWindowContentChangedCallback((View) Preconditions.checkNotNull(view2), i2);
    }

    @Override // android.view.ViewParent
    public void onDescendantInvalidated(View view, View view2) {
        if ((view2.mPrivateFlags & 64) != 0) {
            this.mIsAnimating = true;
        }
        invalidate();
    }

    public void onMovedToDisplay(int i2, Configuration configuration) {
        if (this.mDisplay.getDisplayId() == i2) {
            return;
        }
        Display adjustedDisplay = ResourcesManager.getInstance().getAdjustedDisplay(i2, this.mView.getResources());
        this.mDisplay = adjustedDisplay;
        this.mAttachInfo.mDisplayState = adjustedDisplay.getState();
        this.mView.dispatchMovedToDisplay(this.mDisplay, configuration);
    }

    @Override // android.view.ViewParent
    public boolean onNestedFling(View view, float f2, float f3, boolean z2) {
        return false;
    }

    @Override // android.view.ViewParent
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.ViewParent
    public boolean onNestedPrePerformAccessibilityAction(View view, int i2, Bundle bundle) {
        return false;
    }

    @Override // android.view.ViewParent
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
    }

    @Override // android.view.ViewParent
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
    }

    @Override // android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i2) {
    }

    @Override // android.view.ThreadedRenderer.DrawCallbacks
    public void onPostDraw(DisplayListCanvas displayListCanvas) {
        drawAccessibilityFocusedDrawableIfNeeded(displayListCanvas);
        for (int size = this.mWindowCallbacks.size() - 1; size >= 0; size--) {
            this.mWindowCallbacks.get(size).onPostDraw(displayListCanvas);
        }
    }

    @Override // android.view.ThreadedRenderer.DrawCallbacks
    public void onPreDraw(DisplayListCanvas displayListCanvas) {
        if (this.mCurScrollY != 0 && this.mHardwareYOffset != 0 && this.mAttachInfo.mThreadedRenderer.isOpaque()) {
            displayListCanvas.drawColor(-16777216);
        }
        displayListCanvas.translate(-this.mHardwareXOffset, -this.mHardwareYOffset);
    }

    @Override // android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return false;
    }

    @Override // android.view.ViewParent
    public void onStopNestedScroll(View view) {
    }

    public void onWindowTitleChanged() {
        this.mAttachInfo.mForceReportNewAttributes = true;
    }

    public void outputDisplayList(View view) {
        view.mRenderNode.output();
        ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
        if (threadedRenderer != null) {
            threadedRenderer.serializeDisplayListTree();
        }
    }

    public void pendingDrawFinished() {
        int i2 = this.mDrawsNeededToReport;
        if (i2 == 0) {
            throw new RuntimeException("Unbalanced drawPending/pendingDrawFinished calls");
        }
        int i3 = i2 - 1;
        this.mDrawsNeededToReport = i3;
        if (i3 == 0) {
            reportDrawFinished();
        }
    }

    @Override // android.view.View.AttachInfo.Callbacks
    public boolean performHapticFeedback(int i2, boolean z2) {
        try {
            return this.mWindowSession.performHapticFeedback(this.mWindow, i2, z2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.View.AttachInfo.Callbacks
    public void playSoundEffect(int i2) {
        checkThread();
        try {
            AudioManager audioManager = getAudioManager();
            if (i2 == 0) {
                audioManager.playSoundEffect(0);
                return;
            }
            if (i2 == 1) {
                audioManager.playSoundEffect(3);
                return;
            }
            if (i2 == 2) {
                audioManager.playSoundEffect(1);
                return;
            }
            if (i2 == 3) {
                audioManager.playSoundEffect(4);
                return;
            }
            if (i2 == 4) {
                audioManager.playSoundEffect(2);
                return;
            }
            throw new IllegalArgumentException("unknown effect id " + i2 + " not defined in " + SoundEffectConstants.class.getCanonicalName());
        } catch (IllegalStateException e2) {
            Log.e(this.mTag, "FATAL EXCEPTION when attempting to play sound effect: " + e2);
            e2.printStackTrace();
        }
    }

    public void pokeDrawLockIfNeeded() {
        int i2 = this.mAttachInfo.mDisplayState;
        if (this.mView != null && this.mAdded && this.mTraversalScheduled) {
            if (i2 == 3 || i2 == 4) {
                try {
                    this.mWindowSession.pokeDrawLock(this.mWindow);
                } catch (RemoteException unused) {
                }
            }
        }
    }

    public void profile() {
        this.mProfile = true;
    }

    @Override // android.view.ViewParent
    public void recomputeViewAttributes(View view) {
        checkThread();
        if (this.mView == view) {
            this.mAttachInfo.mRecomputeGlobalAttributes = true;
            if (this.mWillDrawSoon) {
                return;
            }
            scheduleTraversals();
        }
    }

    public void registerAnimatingRenderNode(RenderNode renderNode) {
        View.AttachInfo attachInfo = this.mAttachInfo;
        ThreadedRenderer threadedRenderer = attachInfo.mThreadedRenderer;
        if (threadedRenderer != null) {
            threadedRenderer.registerAnimatingRenderNode(renderNode);
            return;
        }
        if (attachInfo.mPendingAnimatingRenderNodes == null) {
            attachInfo.mPendingAnimatingRenderNodes = new ArrayList();
        }
        this.mAttachInfo.mPendingAnimatingRenderNodes.add(renderNode);
    }

    public void registerVectorDrawableAnimator(AnimatedVectorDrawable.VectorDrawableAnimatorRT vectorDrawableAnimatorRT) {
        ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
        if (threadedRenderer != null) {
            threadedRenderer.registerVectorDrawableAnimator(vectorDrawableAnimatorRT);
        }
    }

    public void removeWindowCallbacks(WindowCallbacks windowCallbacks) {
        synchronized (this.mWindowCallbacks) {
            this.mWindowCallbacks.remove(windowCallbacks);
        }
    }

    public void removeWindowStoppedCallback(WindowStoppedCallback windowStoppedCallback) {
        this.mWindowStoppedCallbacks.remove(windowStoppedCallback);
    }

    public void reportActivityRelaunched() {
        this.mActivityRelaunched = true;
    }

    public void reportDrawFinish() {
        CountDownLatch countDownLatch = this.mWindowDrawCountDown;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    @Override // android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        checkThread();
        scheduleTraversals();
    }

    @Override // android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        if (rect == null) {
            return scrollToRectOrFocus(null, z2);
        }
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        boolean zScrollToRectOrFocus = scrollToRectOrFocus(rect, z2);
        this.mTempRect.set(rect);
        this.mTempRect.offset(0, -this.mCurScrollY);
        Rect rect2 = this.mTempRect;
        View.AttachInfo attachInfo = this.mAttachInfo;
        rect2.offset(attachInfo.mWindowLeft, attachInfo.mWindowTop);
        try {
            this.mWindowSession.onRectangleOnScreenRequested(this.mWindow, this.mTempRect);
        } catch (RemoteException unused) {
        }
        return zScrollToRectOrFocus;
    }

    @Override // android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z2) {
    }

    @Override // android.view.ViewParent
    public void requestFitSystemWindows() {
        checkThread();
        this.mApplyInsetsRequested = true;
        scheduleTraversals();
    }

    public void requestInvalidateRootRenderNode() {
        this.mInvalidateRootRequested = true;
    }

    @Override // android.view.ViewParent
    public void requestLayout() {
        if (this.mHandlingLayoutInLayoutRequest) {
            return;
        }
        checkThread();
        this.mLayoutRequested = true;
        scheduleTraversals();
    }

    public boolean requestLayoutDuringLayout(View view) {
        if (view.mParent == null || view.mAttachInfo == null) {
            return true;
        }
        if (!this.mLayoutRequesters.contains(view)) {
            this.mLayoutRequesters.add(view);
        }
        return !this.mHandlingLayoutInLayoutRequest;
    }

    public void requestPointerCapture(boolean z2) {
        if (this.mPointerCapture == z2) {
            return;
        }
        InputManager.getInstance().requestPointerCapture(this.mAttachInfo.mWindowToken, z2);
    }

    @Override // android.view.ViewParent
    public boolean requestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        SendWindowContentChangedAccessibilityEvent sendWindowContentChangedAccessibilityEvent;
        if (this.mView == null || this.mStopped || this.mPausedForTransition) {
            return false;
        }
        if (accessibilityEvent.getEventType() != 2048 && (sendWindowContentChangedAccessibilityEvent = this.mSendWindowContentChangedAccessibilityEvent) != null && sendWindowContentChangedAccessibilityEvent.mSource != null) {
            sendWindowContentChangedAccessibilityEvent.removeCallbacksAndRun();
        }
        int eventType = accessibilityEvent.getEventType();
        if (eventType == 2048) {
            handleWindowContentChangedEvent(accessibilityEvent);
        } else if (eventType == 32768) {
            long sourceNodeId = accessibilityEvent.getSourceNodeId();
            View viewFindViewByAccessibilityId = this.mView.findViewByAccessibilityId(AccessibilityNodeInfo.getAccessibilityViewId(sourceNodeId));
            if (viewFindViewByAccessibilityId != null && (accessibilityNodeProvider = viewFindViewByAccessibilityId.getAccessibilityNodeProvider()) != null) {
                setAccessibilityFocus(viewFindViewByAccessibilityId, accessibilityNodeProvider.createAccessibilityNodeInfo(AccessibilityNodeInfo.getVirtualDescendantId(sourceNodeId)));
            }
        } else if (eventType == 65536) {
            View viewFindViewByAccessibilityId2 = this.mView.findViewByAccessibilityId(AccessibilityNodeInfo.getAccessibilityViewId(accessibilityEvent.getSourceNodeId()));
            if (viewFindViewByAccessibilityId2 != null && viewFindViewByAccessibilityId2.getAccessibilityNodeProvider() != null) {
                setAccessibilityFocus(null, null);
            }
        }
        this.mAccessibilityManager.sendAccessibilityEvent(accessibilityEvent);
        return true;
    }

    public void requestTransitionStart(LayoutTransition layoutTransition) {
        ArrayList<LayoutTransition> arrayList = this.mPendingTransitions;
        if (arrayList == null || !arrayList.contains(layoutTransition)) {
            if (this.mPendingTransitions == null) {
                this.mPendingTransitions = new ArrayList<>();
            }
            this.mPendingTransitions.add(layoutTransition);
        }
    }

    @Override // android.view.ViewParent
    public void requestTransparentRegion(View view) {
        checkThread();
        View view2 = this.mView;
        if (view2 == view) {
            view2.mPrivateFlags |= 512;
            this.mWindowAttributesChanged = true;
            this.mWindowAttributesChangesFlag = 0;
            requestLayout();
        }
    }

    public void requestUpdateConfiguration(Configuration configuration) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(18, configuration));
    }

    public void scheduleConsumeBatchedInput() {
        if (this.mConsumeBatchedInputScheduled) {
            return;
        }
        this.mConsumeBatchedInputScheduled = true;
        this.mChoreographer.postCallback(0, this.mConsumedBatchedInputRunnable, null);
    }

    public void scheduleConsumeBatchedInputImmediately() {
        if (this.mConsumeBatchedInputImmediatelyScheduled) {
            return;
        }
        unscheduleConsumeBatchedInput();
        this.mConsumeBatchedInputImmediatelyScheduled = true;
        this.mHandler.post(this.mConsumeBatchedInputImmediatelyRunnable);
    }

    public void scheduleTraversals() {
        if (this.mTraversalScheduled) {
            return;
        }
        this.mTraversalScheduled = true;
        this.mTraversalBarrier = this.mHandler.getLooper().getQueue().postSyncBarrier();
        this.mChoreographer.postCallback(2, this.mTraversalRunnable, null);
        if (!this.mUnbufferedInputDispatch) {
            scheduleConsumeBatchedInput();
        }
        notifyRendererOfFramePending();
        pokeDrawLockIfNeeded();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00bb  */
    public boolean scrollToRectOrFocus(Rect rect, boolean z2) {
        int height;
        boolean z3;
        View.AttachInfo attachInfo = this.mAttachInfo;
        Rect rect2 = attachInfo.mContentInsets;
        Rect rect3 = attachInfo.mVisibleInsets;
        if (rect3.left > rect2.left || rect3.top > rect2.top || rect3.right > rect2.right || rect3.bottom > rect2.bottom) {
            height = this.mScrollY;
            View viewFindFocus = this.mView.findFocus();
            if (viewFindFocus == null) {
                return false;
            }
            WeakReference<View> weakReference = this.mLastScrolledFocus;
            View view = weakReference != null ? weakReference.get() : null;
            if (viewFindFocus != view) {
                rect = null;
            }
            if (viewFindFocus == view && !this.mScrollMayChange && rect == null) {
                z3 = false;
            } else {
                this.mLastScrolledFocus = new WeakReference<>(viewFindFocus);
                this.mScrollMayChange = false;
                if (viewFindFocus.getGlobalVisibleRect(this.mVisRect, null)) {
                    if (rect == null) {
                        viewFindFocus.getFocusedRect(this.mTempRect);
                        View view2 = this.mView;
                        if (view2 instanceof ViewGroup) {
                            ((ViewGroup) view2).offsetDescendantRectToMyCoords(viewFindFocus, this.mTempRect);
                        }
                    } else {
                        this.mTempRect.set(rect);
                    }
                    if (this.mTempRect.intersect(this.mVisRect)) {
                        int iHeight = this.mTempRect.height();
                        int height2 = this.mView.getHeight();
                        int i2 = rect3.top;
                        if (iHeight <= (height2 - i2) - rect3.bottom) {
                            Rect rect4 = this.mTempRect;
                            int i3 = rect4.top;
                            if (i3 < i2) {
                                height = i3 - i2;
                            } else {
                                height = rect4.bottom > this.mView.getHeight() - rect3.bottom ? this.mTempRect.bottom - (this.mView.getHeight() - rect3.bottom) : 0;
                            }
                        }
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                } else {
                    z3 = false;
                }
            }
        } else {
            z3 = false;
            height = 0;
        }
        if (height != this.mScrollY) {
            if (z2) {
                Scroller scroller = this.mScroller;
                if (scroller != null) {
                    scroller.abortAnimation();
                }
            } else {
                if (this.mScroller == null) {
                    this.mScroller = new Scroller(this.mView.getContext());
                }
                Scroller scroller2 = this.mScroller;
                int i4 = this.mScrollY;
                scroller2.startScroll(0, i4, 0, height - i4);
            }
            this.mScrollY = height;
        }
        return z3;
    }

    public void setAccessibilityFocus(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        AccessibilityNodeInfo accessibilityNodeInfo2 = this.mAccessibilityFocusedVirtualView;
        if (accessibilityNodeInfo2 != null) {
            View view2 = this.mAccessibilityFocusedHost;
            this.mAccessibilityFocusedHost = null;
            this.mAccessibilityFocusedVirtualView = null;
            view2.clearAccessibilityFocusNoCallbacks(64);
            AccessibilityNodeProvider accessibilityNodeProvider = view2.getAccessibilityNodeProvider();
            if (accessibilityNodeProvider != null) {
                accessibilityNodeInfo2.getBoundsInParent(this.mTempRect);
                view2.invalidate(this.mTempRect);
                accessibilityNodeProvider.performAction(AccessibilityNodeInfo.getVirtualDescendantId(accessibilityNodeInfo2.getSourceNodeId()), 128, null);
            }
            accessibilityNodeInfo2.recycle();
        }
        View view3 = this.mAccessibilityFocusedHost;
        if (view3 != null && view3 != view) {
            view3.clearAccessibilityFocusNoCallbacks(64);
        }
        this.mAccessibilityFocusedHost = view;
        this.mAccessibilityFocusedVirtualView = accessibilityNodeInfo;
        ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
        if (threadedRenderer != null) {
            threadedRenderer.invalidateRoot();
        }
    }

    public void setActivityConfigCallback(ActivityConfigCallback activityConfigCallback) {
        this.mActivityConfigCallback = activityConfigCallback;
    }

    public void setDragFocus(View view, DragEvent dragEvent) {
        View view2 = this.mCurrentDragView;
        if (view2 != view && !View.sCascadedDragDrop) {
            float f2 = dragEvent.mX;
            float f3 = dragEvent.mY;
            int i2 = dragEvent.mAction;
            ClipData clipData = dragEvent.mClipData;
            dragEvent.mX = 0.0f;
            dragEvent.mY = 0.0f;
            dragEvent.mClipData = null;
            if (view2 != null) {
                dragEvent.mAction = 6;
                view2.callDragEventHandler(dragEvent);
            }
            if (view != null) {
                dragEvent.mAction = 5;
                view.callDragEventHandler(dragEvent);
            }
            dragEvent.mAction = i2;
            dragEvent.mX = f2;
            dragEvent.mY = f3;
            dragEvent.mClipData = clipData;
        }
        this.mCurrentDragView = view;
    }

    public void setIsAmbientMode(boolean z2) {
        this.mIsAmbientMode = z2;
    }

    public void setLayoutParams(WindowManager.LayoutParams layoutParams, boolean z2) {
        synchronized (this) {
            WindowManager.LayoutParams layoutParams2 = this.mWindowAttributes;
            Rect rect = layoutParams2.surfaceInsets;
            int i2 = rect.left;
            int i3 = rect.top;
            int i4 = rect.right;
            int i5 = rect.bottom;
            int i6 = layoutParams2.softInputMode;
            boolean z3 = layoutParams2.hasManualSurfaceInsets;
            this.mClientWindowLayoutFlags = layoutParams.flags;
            int i7 = layoutParams2.privateFlags & 128;
            layoutParams.systemUiVisibility = layoutParams2.systemUiVisibility;
            layoutParams.subtreeSystemUiVisibility = layoutParams2.subtreeSystemUiVisibility;
            int iCopyFrom = layoutParams2.copyFrom(layoutParams);
            this.mWindowAttributesChangesFlag = iCopyFrom;
            if ((524288 & iCopyFrom) != 0) {
                this.mAttachInfo.mRecomputeGlobalAttributes = true;
            }
            if ((iCopyFrom & 1) != 0) {
                this.mAttachInfo.mNeedsUpdateLightCenter = true;
            }
            WindowManager.LayoutParams layoutParams3 = this.mWindowAttributes;
            if (layoutParams3.packageName == null) {
                layoutParams3.packageName = this.mBasePackageName;
            }
            layoutParams3.privateFlags = i7 | layoutParams3.privateFlags;
            if (layoutParams3.preservePreviousSurfaceInsets) {
                layoutParams3.surfaceInsets.set(i2, i3, i4, i5);
                this.mWindowAttributes.hasManualSurfaceInsets = z3;
            } else {
                Rect rect2 = layoutParams3.surfaceInsets;
                if (rect2.left != i2 || rect2.top != i3 || rect2.right != i4 || rect2.bottom != i5) {
                    this.mNeedsRendererSetup = true;
                }
            }
            applyKeepScreenOnFlag(this.mWindowAttributes);
            if (z2) {
                this.mSoftInputMode = layoutParams.softInputMode;
                requestLayout();
            }
            if ((layoutParams.softInputMode & 240) == 0) {
                WindowManager.LayoutParams layoutParams4 = this.mWindowAttributes;
                layoutParams4.softInputMode = (layoutParams4.softInputMode & (-241)) | (i6 & 240);
            }
            this.mWindowAttributesChanged = true;
            scheduleTraversals();
        }
    }

    public void setLocalDragState(Object obj) {
        this.mLocalDragState = obj;
    }

    public void setPausedForTransition(boolean z2) {
        this.mPausedForTransition = z2;
    }

    public void setReportNextDraw() {
        reportNextDraw();
        invalidate();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setView(View view, WindowManager.LayoutParams layoutParams, View view2) {
        boolean z2;
        synchronized (this) {
            if (this.mView == null) {
                this.mView = view;
                this.mAttachInfo.mDisplayState = this.mDisplay.getState();
                this.mDisplayManager.registerDisplayListener(this.mDisplayListener, this.mHandler);
                this.mViewLayoutDirectionInitial = this.mView.getRawLayoutDirection();
                this.mFallbackEventHandler.setView(view);
                this.mWindowAttributes.copyFrom(layoutParams);
                WindowManager.LayoutParams layoutParams2 = this.mWindowAttributes;
                if (layoutParams2.packageName == null) {
                    layoutParams2.packageName = this.mBasePackageName;
                }
                setTag();
                this.mClientWindowLayoutFlags = layoutParams2.flags;
                setAccessibilityFocus(null, null);
                if (view instanceof RootViewSurfaceTaker) {
                    SurfaceHolder.Callback2 callback2WillYouTakeTheSurface = ((RootViewSurfaceTaker) view).willYouTakeTheSurface();
                    this.mSurfaceHolderCallback = callback2WillYouTakeTheSurface;
                    if (callback2WillYouTakeTheSurface != null) {
                        TakenSurfaceHolder takenSurfaceHolder = new TakenSurfaceHolder();
                        this.mSurfaceHolder = takenSurfaceHolder;
                        takenSurfaceHolder.setFormat(0);
                        this.mSurfaceHolder.addCallback(this.mSurfaceHolderCallback);
                    }
                }
                if (!layoutParams2.hasManualSurfaceInsets) {
                    layoutParams2.setSurfaceInsets(view, false, true);
                }
                CompatibilityInfo compatibilityInfo = this.mDisplay.getDisplayAdjustments().getCompatibilityInfo();
                this.mTranslator = compatibilityInfo.getTranslator();
                if (this.mSurfaceHolder == null) {
                    enableHardwareAcceleration(layoutParams2);
                }
                CompatibilityInfo.Translator translator = this.mTranslator;
                if (translator != null) {
                    this.mSurface.setCompatibilityTranslator(translator);
                    layoutParams2.backup();
                    this.mTranslator.translateWindowLayout(layoutParams2);
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!compatibilityInfo.supportsScreen()) {
                    layoutParams2.privateFlags |= 128;
                    this.mLastInCompatMode = true;
                }
                this.mSoftInputMode = layoutParams2.softInputMode;
                this.mWindowAttributesChanged = true;
                this.mWindowAttributesChangesFlag = -1;
                View.AttachInfo attachInfo = this.mAttachInfo;
                attachInfo.mRootView = view;
                CompatibilityInfo.Translator translator2 = this.mTranslator;
                attachInfo.mScalingRequired = translator2 != null;
                attachInfo.mApplicationScale = translator2 == null ? 1.0f : translator2.applicationScale;
                if (view2 != null) {
                    attachInfo.mPanelParentWindowToken = view2.getApplicationWindowToken();
                }
                this.mAdded = true;
                requestLayout();
                if ((this.mWindowAttributes.inputFeatures & 2) == 0) {
                    this.mInputChannel = new InputChannel();
                }
                WindowManager.LayoutParams layoutParams3 = this.mWindowAttributes;
                this.mForceDecorViewVisibility = (layoutParams3.privateFlags & 16384) != 0;
                try {
                    try {
                        this.mOrigWindowType = layoutParams3.type;
                        this.mAttachInfo.mRecomputeGlobalAttributes = true;
                        collectViewAttributes();
                        IWindowSession iWindowSession = this.mWindowSession;
                        W w2 = this.mWindow;
                        int i2 = this.mSeq;
                        WindowManager.LayoutParams layoutParams4 = this.mWindowAttributes;
                        int hostVisibility = getHostVisibility();
                        int displayId = this.mDisplay.getDisplayId();
                        View.AttachInfo attachInfo2 = this.mAttachInfo;
                        int iAddToDisplay = iWindowSession.addToDisplay(w2, i2, layoutParams4, hostVisibility, displayId, attachInfo2.mContentInsets, attachInfo2.mStableInsets, attachInfo2.mOutsets, this.mInputChannel);
                        if (z2) {
                            layoutParams2.restore();
                        }
                        CompatibilityInfo.Translator translator3 = this.mTranslator;
                        if (translator3 != null) {
                            translator3.translateRectInScreenToAppWindow(this.mAttachInfo.mContentInsets);
                        }
                        this.mPendingOverscanInsets.set(0, 0, 0, 0);
                        this.mPendingContentInsets.set(this.mAttachInfo.mContentInsets);
                        this.mPendingStableInsets.set(this.mAttachInfo.mStableInsets);
                        this.mPendingVisibleInsets.set(0, 0, 0, 0);
                        View.AttachInfo attachInfo3 = this.mAttachInfo;
                        boolean z3 = (iAddToDisplay & 4) != 0;
                        attachInfo3.mAlwaysConsumeNavBar = z3;
                        this.mPendingAlwaysConsumeNavBar = z3;
                        if (iAddToDisplay < 0) {
                            attachInfo3.mRootView = null;
                            this.mAdded = false;
                            this.mFallbackEventHandler.setView(null);
                            unscheduleTraversals();
                            setAccessibilityFocus(null, null);
                            switch (iAddToDisplay) {
                                case -10:
                                    throw new WindowManager.InvalidDisplayException("Unable to add window " + this.mWindow + " -- the specified window type " + this.mWindowAttributes.type + " is not valid");
                                case -9:
                                    throw new WindowManager.InvalidDisplayException("Unable to add window " + this.mWindow + " -- the specified display can not be found");
                                case -8:
                                    throw new WindowManager.BadTokenException("Unable to add window " + this.mWindow + " -- permission denied for window type " + this.mWindowAttributes.type);
                                case -7:
                                    throw new WindowManager.BadTokenException("Unable to add window " + this.mWindow + " -- another window of type " + this.mWindowAttributes.type + " already exists");
                                case -6:
                                    return;
                                case -5:
                                    throw new WindowManager.BadTokenException("Unable to add window -- window " + this.mWindow + " has already been added");
                                case -4:
                                    throw new WindowManager.BadTokenException("Unable to add window -- app for token " + layoutParams2.token + " is exiting");
                                case -3:
                                    throw new WindowManager.BadTokenException("Unable to add window -- token " + layoutParams2.token + " is not for an application");
                                case -2:
                                case -1:
                                    throw new WindowManager.BadTokenException("Unable to add window -- token " + layoutParams2.token + " is not valid; is your activity running?");
                                default:
                                    throw new RuntimeException("Unable to add window -- unknown error code " + iAddToDisplay);
                            }
                        }
                        if (view instanceof RootViewSurfaceTaker) {
                            this.mInputQueueCallback = ((RootViewSurfaceTaker) view).willYouTakeTheInputQueue();
                        }
                        if (this.mInputChannel != null) {
                            if (this.mInputQueueCallback != null) {
                                InputQueue inputQueue = new InputQueue();
                                this.mInputQueue = inputQueue;
                                this.mInputQueueCallback.onInputQueueCreated(inputQueue);
                            }
                            this.mInputEventReceiver = new WindowInputEventReceiver(this.mInputChannel, Looper.myLooper());
                        }
                        view.assignParent(this);
                        this.mAddedTouchMode = (iAddToDisplay & 1) != 0;
                        this.mAppVisible = (iAddToDisplay & 2) != 0;
                        if (this.mAccessibilityManager.isEnabled()) {
                            this.mAccessibilityInteractionConnectionManager.ensureConnection();
                        }
                        if (view.getImportantForAccessibility() == 0) {
                            view.setImportantForAccessibility(1);
                        }
                        CharSequence title = layoutParams2.getTitle();
                        SyntheticInputStage syntheticInputStage = new SyntheticInputStage();
                        this.mSyntheticInputStage = syntheticInputStage;
                        EarlyPostImeInputStage earlyPostImeInputStage = new EarlyPostImeInputStage(new NativePostImeInputStage(new ViewPostImeInputStage(syntheticInputStage), "aq:native-post-ime:" + ((Object) title)));
                        this.mFirstInputStage = new NativePreImeInputStage(new ViewPreImeInputStage(new ImeInputStage(earlyPostImeInputStage, "aq:ime:" + ((Object) title))), "aq:native-pre-ime:" + ((Object) title));
                        this.mFirstPostImeInputStage = earlyPostImeInputStage;
                        this.mPendingInputEventQueueLengthCounterName = "aq:pending:" + ((Object) title);
                    } catch (RemoteException e2) {
                        this.mAdded = false;
                        this.mView = null;
                        this.mAttachInfo.mRootView = null;
                        this.mInputChannel = null;
                        this.mFallbackEventHandler.setView(null);
                        unscheduleTraversals();
                        setAccessibilityFocus(null, null);
                        throw new RuntimeException("Adding window failed", e2);
                    }
                } catch (Throwable th) {
                    if (z2) {
                        layoutParams2.restore();
                    }
                    throw th;
                }
            }
        }
    }

    public void setWindowStopped(boolean z2) {
        if (this.mStopped != z2) {
            this.mStopped = z2;
            ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
            if (threadedRenderer != null) {
                threadedRenderer.setStopped(z2);
            }
            if (!this.mStopped) {
                scheduleTraversals();
            } else if (threadedRenderer != null) {
                threadedRenderer.destroyHardwareResources(this.mView);
            }
            for (int i2 = 0; i2 < this.mWindowStoppedCallbacks.size(); i2++) {
                this.mWindowStoppedCallbacks.get(i2).windowStopped(z2);
            }
        }
    }

    @Override // android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        return false;
    }

    @Override // android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    public void synthesizeInputEvent(InputEvent inputEvent) {
        Message messageObtainMessage = this.mHandler.obtainMessage(24, inputEvent);
        messageObtainMessage.setAsynchronous(true);
        this.mHandler.sendMessage(messageObtainMessage);
    }

    public void transformMatrixToGlobal(Matrix matrix) {
        View.AttachInfo attachInfo = this.mAttachInfo;
        matrix.preTranslate(attachInfo.mWindowLeft, attachInfo.mWindowTop);
    }

    public void transformMatrixToLocal(Matrix matrix) {
        View.AttachInfo attachInfo = this.mAttachInfo;
        matrix.postTranslate(-attachInfo.mWindowLeft, -attachInfo.mWindowTop);
    }

    public void unscheduleConsumeBatchedInput() {
        if (this.mConsumeBatchedInputScheduled) {
            this.mConsumeBatchedInputScheduled = false;
            this.mChoreographer.removeCallbacks(0, this.mConsumedBatchedInputRunnable, null);
        }
    }

    public void unscheduleTraversals() {
        if (this.mTraversalScheduled) {
            this.mTraversalScheduled = false;
            this.mHandler.getLooper().getQueue().removeSyncBarrier(this.mTraversalBarrier);
            this.mChoreographer.removeCallbacks(2, this.mTraversalRunnable, null);
        }
    }

    public void updateConfiguration(int i2) {
        View view = this.mView;
        if (view == null) {
            return;
        }
        Resources resources = view.getResources();
        Configuration configuration = resources.getConfiguration();
        if (i2 != -1) {
            onMovedToDisplay(i2, configuration);
        }
        if (this.mForceNextConfigUpdate || this.mLastConfigurationFromResources.diff(configuration) != 0) {
            this.mDisplay = ResourcesManager.getInstance().getAdjustedDisplay(this.mDisplay.getDisplayId(), resources);
            int layoutDirection = this.mLastConfigurationFromResources.getLayoutDirection();
            int layoutDirection2 = configuration.getLayoutDirection();
            this.mLastConfigurationFromResources.setTo(configuration);
            if (layoutDirection != layoutDirection2 && this.mViewLayoutDirectionInitial == 2) {
                this.mView.setLayoutDirection(layoutDirection2);
            }
            this.mView.dispatchConfigurationChanged(configuration);
            this.mForceNextWindowRelayout = true;
            requestLayout();
        }
    }

    public void windowFocusChanged(boolean z2, boolean z3) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 6;
        messageObtain.arg1 = z2 ? 1 : 0;
        messageObtain.arg2 = z3 ? 1 : 0;
        this.mHandler.sendMessage(messageObtain);
    }

    public void dispatchInputEvent(InputEvent inputEvent, InputEventReceiver inputEventReceiver) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = inputEvent;
        someArgsObtain.arg2 = inputEventReceiver;
        Message messageObtainMessage = this.mHandler.obtainMessage(7, someArgsObtain);
        messageObtainMessage.setAsynchronous(true);
        this.mHandler.sendMessage(messageObtainMessage);
    }

    public void enqueueInputEvent(InputEvent inputEvent, InputEventReceiver inputEventReceiver, int i2, boolean z2) {
        adjustInputEventForCompatibility(inputEvent);
        QueuedInputEvent queuedInputEventObtainQueuedInputEvent = obtainQueuedInputEvent(inputEvent, inputEventReceiver, i2);
        QueuedInputEvent queuedInputEvent = this.mPendingInputEventTail;
        if (queuedInputEvent == null) {
            this.mPendingInputEventHead = queuedInputEventObtainQueuedInputEvent;
            this.mPendingInputEventTail = queuedInputEventObtainQueuedInputEvent;
        } else {
            queuedInputEvent.mNext = queuedInputEventObtainQueuedInputEvent;
            this.mPendingInputEventTail = queuedInputEventObtainQueuedInputEvent;
        }
        int i3 = this.mPendingInputEventCount + 1;
        this.mPendingInputEventCount = i3;
        Trace.traceCounter(4L, this.mPendingInputEventQueueLengthCounterName, i3);
        if (z2) {
            doProcessInputEvents();
        } else {
            scheduleProcessInputEvents();
        }
    }

    @Override // android.view.ViewParent
    public boolean showContextMenuForChild(View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i2) {
        return null;
    }

    public final class SyntheticTouchNavigationHandler extends Handler {
        private static final float DEFAULT_HEIGHT_MILLIMETERS = 48.0f;
        private static final float DEFAULT_WIDTH_MILLIMETERS = 48.0f;
        private static final float FLING_TICK_DECAY = 0.8f;
        private static final boolean LOCAL_DEBUG = false;
        private static final String LOCAL_TAG = "SyntheticTouchNavigationHandler";
        private static final float MAX_FLING_VELOCITY_TICKS_PER_SECOND = 20.0f;
        private static final float MIN_FLING_VELOCITY_TICKS_PER_SECOND = 6.0f;
        private static final int TICK_DISTANCE_MILLIMETERS = 12;
        private float mAccumulatedX;
        private float mAccumulatedY;
        private int mActivePointerId;
        private float mConfigMaxFlingVelocity;
        private float mConfigMinFlingVelocity;
        private float mConfigTickDistance;
        private boolean mConsumedMovement;
        private int mCurrentDeviceId;
        private boolean mCurrentDeviceSupported;
        private int mCurrentSource;
        private final Runnable mFlingRunnable;
        private float mFlingVelocity;
        private boolean mFlinging;
        private float mLastX;
        private float mLastY;
        private int mPendingKeyCode;
        private long mPendingKeyDownTime;
        private int mPendingKeyMetaState;
        private int mPendingKeyRepeatCount;
        private float mStartX;
        private float mStartY;
        private VelocityTracker mVelocityTracker;

        public SyntheticTouchNavigationHandler() {
            super(true);
            this.mCurrentDeviceId = -1;
            this.mActivePointerId = -1;
            this.mPendingKeyCode = 0;
            this.mFlingRunnable = new Runnable() { // from class: android.view.ViewRootImpl.SyntheticTouchNavigationHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    SyntheticTouchNavigationHandler syntheticTouchNavigationHandler = SyntheticTouchNavigationHandler.this;
                    syntheticTouchNavigationHandler.sendKeyDownOrRepeat(jUptimeMillis, syntheticTouchNavigationHandler.mPendingKeyCode, SyntheticTouchNavigationHandler.this.mPendingKeyMetaState);
                    SyntheticTouchNavigationHandler.this.mFlingVelocity *= SyntheticTouchNavigationHandler.FLING_TICK_DECAY;
                    if (SyntheticTouchNavigationHandler.this.postFling(jUptimeMillis)) {
                        return;
                    }
                    SyntheticTouchNavigationHandler.this.mFlinging = false;
                    SyntheticTouchNavigationHandler.this.finishKeys(jUptimeMillis);
                }
            };
        }

        private void cancelFling() {
            if (this.mFlinging) {
                removeCallbacks(this.mFlingRunnable);
                this.mFlinging = false;
            }
        }

        private void consumeAccumulatedMovement(long j2, int i2) {
            float fAbs = Math.abs(this.mAccumulatedX);
            float fAbs2 = Math.abs(this.mAccumulatedY);
            if (fAbs >= fAbs2) {
                if (fAbs >= this.mConfigTickDistance) {
                    this.mAccumulatedX = consumeAccumulatedMovement(j2, i2, this.mAccumulatedX, 21, 22);
                    this.mAccumulatedY = 0.0f;
                    this.mConsumedMovement = true;
                    return;
                }
                return;
            }
            if (fAbs2 >= this.mConfigTickDistance) {
                this.mAccumulatedY = consumeAccumulatedMovement(j2, i2, this.mAccumulatedY, 19, 20);
                this.mAccumulatedX = 0.0f;
                this.mConsumedMovement = true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void finishKeys(long j2) {
            cancelFling();
            sendKeyUp(j2);
        }

        private void finishTracking(long j2) {
            if (this.mActivePointerId >= 0) {
                this.mActivePointerId = -1;
                this.mVelocityTracker.recycle();
                this.mVelocityTracker = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean postFling(long j2) {
            float f2 = this.mFlingVelocity;
            if (f2 < this.mConfigMinFlingVelocity) {
                return false;
            }
            postAtTime(this.mFlingRunnable, j2 + ((long) ((this.mConfigTickDistance / f2) * 1000.0f)));
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendKeyDownOrRepeat(long j2, int i2, int i3) {
            if (this.mPendingKeyCode != i2) {
                sendKeyUp(j2);
                this.mPendingKeyDownTime = j2;
                this.mPendingKeyCode = i2;
                this.mPendingKeyRepeatCount = 0;
            } else {
                this.mPendingKeyRepeatCount++;
            }
            this.mPendingKeyMetaState = i3;
            ViewRootImpl.this.enqueueInputEvent(new KeyEvent(this.mPendingKeyDownTime, j2, 0, this.mPendingKeyCode, this.mPendingKeyRepeatCount, this.mPendingKeyMetaState, this.mCurrentDeviceId, 1024, this.mCurrentSource));
        }

        private void sendKeyUp(long j2) {
            if (this.mPendingKeyCode != 0) {
                ViewRootImpl.this.enqueueInputEvent(new KeyEvent(this.mPendingKeyDownTime, j2, 1, this.mPendingKeyCode, 0, this.mPendingKeyMetaState, this.mCurrentDeviceId, 0, 1024, this.mCurrentSource));
                this.mPendingKeyCode = 0;
            }
        }

        private boolean startFling(long j2, float f2, float f3) {
            switch (this.mPendingKeyCode) {
                case 19:
                    float f4 = -f3;
                    if (f4 < this.mConfigMinFlingVelocity || Math.abs(f2) >= this.mConfigMinFlingVelocity) {
                        return false;
                    }
                    this.mFlingVelocity = f4;
                    break;
                case 20:
                    if (f3 < this.mConfigMinFlingVelocity || Math.abs(f2) >= this.mConfigMinFlingVelocity) {
                        return false;
                    }
                    this.mFlingVelocity = f3;
                    break;
                case 21:
                    float f5 = -f2;
                    if (f5 < this.mConfigMinFlingVelocity || Math.abs(f3) >= this.mConfigMinFlingVelocity) {
                        return false;
                    }
                    this.mFlingVelocity = f5;
                    break;
                case 22:
                    if (f2 < this.mConfigMinFlingVelocity || Math.abs(f3) >= this.mConfigMinFlingVelocity) {
                        return false;
                    }
                    this.mFlingVelocity = f2;
                    break;
            }
            boolean zPostFling = postFling(j2);
            this.mFlinging = zPostFling;
            return zPostFling;
        }

        public void cancel(MotionEvent motionEvent) {
            if (this.mCurrentDeviceId == motionEvent.getDeviceId() && this.mCurrentSource == motionEvent.getSource()) {
                long eventTime = motionEvent.getEventTime();
                finishKeys(eventTime);
                finishTracking(eventTime);
            }
        }

        public void process(MotionEvent motionEvent) {
            long eventTime = motionEvent.getEventTime();
            int deviceId = motionEvent.getDeviceId();
            int source = motionEvent.getSource();
            if (this.mCurrentDeviceId != deviceId || this.mCurrentSource != source) {
                finishKeys(eventTime);
                finishTracking(eventTime);
                this.mCurrentDeviceId = deviceId;
                this.mCurrentSource = source;
                this.mCurrentDeviceSupported = false;
                InputDevice device = motionEvent.getDevice();
                if (device != null) {
                    InputDevice.MotionRange motionRange = device.getMotionRange(0);
                    InputDevice.MotionRange motionRange2 = device.getMotionRange(1);
                    if (motionRange != null && motionRange2 != null) {
                        this.mCurrentDeviceSupported = true;
                        float resolution = motionRange.getResolution();
                        if (resolution <= 0.0f) {
                            resolution = motionRange.getRange() / 48.0f;
                        }
                        float resolution2 = motionRange2.getResolution();
                        if (resolution2 <= 0.0f) {
                            resolution2 = motionRange2.getRange() / 48.0f;
                        }
                        float f2 = (resolution + resolution2) * 0.5f * 12.0f;
                        this.mConfigTickDistance = f2;
                        this.mConfigMinFlingVelocity = MIN_FLING_VELOCITY_TICKS_PER_SECOND * f2;
                        this.mConfigMaxFlingVelocity = f2 * MAX_FLING_VELOCITY_TICKS_PER_SECOND;
                    }
                }
            }
            if (this.mCurrentDeviceSupported) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    boolean z2 = this.mFlinging;
                    finishKeys(eventTime);
                    finishTracking(eventTime);
                    this.mActivePointerId = motionEvent.getPointerId(0);
                    VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
                    this.mVelocityTracker = velocityTrackerObtain;
                    velocityTrackerObtain.addMovement(motionEvent);
                    this.mStartX = motionEvent.getX();
                    float y2 = motionEvent.getY();
                    this.mStartY = y2;
                    this.mLastX = this.mStartX;
                    this.mLastY = y2;
                    this.mAccumulatedX = 0.0f;
                    this.mAccumulatedY = 0.0f;
                    this.mConsumedMovement = z2;
                    return;
                }
                if (actionMasked != 1 && actionMasked != 2) {
                    if (actionMasked != 3) {
                        return;
                    }
                    finishKeys(eventTime);
                    finishTracking(eventTime);
                    return;
                }
                int i2 = this.mActivePointerId;
                if (i2 < 0) {
                    return;
                }
                int iFindPointerIndex = motionEvent.findPointerIndex(i2);
                if (iFindPointerIndex < 0) {
                    finishKeys(eventTime);
                    finishTracking(eventTime);
                    return;
                }
                this.mVelocityTracker.addMovement(motionEvent);
                float x2 = motionEvent.getX(iFindPointerIndex);
                float y3 = motionEvent.getY(iFindPointerIndex);
                this.mAccumulatedX = (x2 - this.mLastX) + this.mAccumulatedX;
                this.mAccumulatedY = (y3 - this.mLastY) + this.mAccumulatedY;
                this.mLastX = x2;
                this.mLastY = y3;
                consumeAccumulatedMovement(eventTime, motionEvent.getMetaState());
                if (actionMasked == 1) {
                    if (this.mConsumedMovement && this.mPendingKeyCode != 0) {
                        this.mVelocityTracker.computeCurrentVelocity(1000, this.mConfigMaxFlingVelocity);
                        if (!startFling(eventTime, this.mVelocityTracker.getXVelocity(this.mActivePointerId), this.mVelocityTracker.getYVelocity(this.mActivePointerId))) {
                            finishKeys(eventTime);
                        }
                    }
                    finishTracking(eventTime);
                }
            }
        }

        private float consumeAccumulatedMovement(long j2, int i2, float f2, int i3, int i4) {
            while (f2 <= (-this.mConfigTickDistance)) {
                sendKeyDownOrRepeat(j2, i3, i2);
                f2 += this.mConfigTickDistance;
            }
            while (f2 >= this.mConfigTickDistance) {
                sendKeyDownOrRepeat(j2, i4, i2);
                f2 -= this.mConfigTickDistance;
            }
            return f2;
        }
    }

    public void updatePointerIcon(float f2, float f3) {
        this.mHandler.removeMessages(27);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(27, MotionEvent.obtain(0L, SystemClock.uptimeMillis(), 7, f2, f3, 0)));
    }
}
