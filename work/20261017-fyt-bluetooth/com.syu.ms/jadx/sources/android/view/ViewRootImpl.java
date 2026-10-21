package android.view;

import android.Manifest;
import android.animation.LayoutTransition;
import android.app.ActivityManagerNative;
import android.content.ClipDescription;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.net.LinkQualityInfo;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.AndroidRuntimeException;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Slog;
import android.util.TypedValue;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.accessibility.IAccessibilityInteractionConnection;
import android.view.accessibility.IAccessibilityInteractionConnectionCallback;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.Scroller;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import o.f;
import p.b;
import v.c;
import v.d;

/* JADX INFO: loaded from: classes.dex */
public final class ViewRootImpl implements ViewParent, View.AttachInfo.Callbacks, HardwareRenderer.HardwareDrawCallbacks {
    private static final boolean DBG = false;
    private static final boolean DEBUG_CONFIGURATION = false;
    private static final boolean DEBUG_DIALOG = false;
    private static final boolean DEBUG_DRAW = false;
    private static final boolean DEBUG_FPS = false;
    private static final boolean DEBUG_IMF = false;
    private static final boolean DEBUG_INPUT_PROCESSING = false;
    private static final boolean DEBUG_INPUT_RESIZE = false;
    private static final boolean DEBUG_LAYOUT = false;
    private static final boolean DEBUG_ORIENTATION = false;
    private static final boolean DEBUG_TRACKBALL = false;
    private static final boolean LOCAL_LOGV = false;
    private static final int MAX_QUEUED_INPUT_EVENT_POOL_SIZE = 10;
    public static final int MAX_TRACKBALL_DELAY = 250;
    private static final int MSG_CHECK_FOCUS = 13;
    private static final int MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST = 21;
    private static final int MSG_CLOSE_SYSTEM_DIALOGS = 14;
    private static final int MSG_DIE = 3;
    private static final int MSG_DISPATCH_APP_VISIBILITY = 8;
    private static final int MSG_DISPATCH_DONE_ANIMATING = 22;
    private static final int MSG_DISPATCH_DRAG_EVENT = 15;
    private static final int MSG_DISPATCH_DRAG_LOCATION_EVENT = 16;
    private static final int MSG_DISPATCH_GET_NEW_SURFACE = 9;
    private static final int MSG_DISPATCH_INPUT_EVENT = 7;
    private static final int MSG_DISPATCH_KEY_FROM_IME = 11;
    private static final int MSG_DISPATCH_SCREEN_STATE = 20;
    private static final int MSG_DISPATCH_SYSTEM_UI_VISIBILITY = 17;
    private static final int MSG_FINISH_INPUT_CONNECTION = 12;
    private static final int MSG_FLUSH_LAYER_UPDATES = 25;
    private static final int MSG_INVALIDATE = 1;
    private static final int MSG_INVALIDATE_RECT = 2;
    private static final int MSG_INVALIDATE_WORLD = 23;
    private static final int MSG_PROCESS_INPUT_EVENTS = 19;
    private static final int MSG_RESIZED = 4;
    private static final int MSG_RESIZED_REPORT = 5;
    private static final int MSG_UPDATE_CONFIGURATION = 18;
    private static final int MSG_WINDOW_FOCUS_CHANGED = 6;
    private static final int MSG_WINDOW_MOVED = 24;
    private static final String PROPERTY_MEDIA_DISABLED = "config.disable_media";
    private static final String PROPERTY_PROFILE_RENDERING = "viewroot.profile_rendering";
    private static final String TAG = "ViewRootImpl";
    public boolean drawsoft;
    public int fulldraw_pit;
    public View mAccessibilityFocusedHost;
    public AccessibilityNodeInfo mAccessibilityFocusedVirtualView;
    public AccessibilityInteractionConnectionManager mAccessibilityInteractionConnectionManager;
    public AccessibilityInteractionController mAccessibilityInteractionController;
    public final AccessibilityManager mAccessibilityManager;
    public boolean mAdded;
    public boolean mAddedTouchMode;
    public final View.AttachInfo mAttachInfo;
    public AudioManager mAudioManager;
    public final String mBasePackageName;
    public Choreographer mChoreographer;
    public int mClientWindowLayoutFlags;
    public boolean mConsumeBatchedInputScheduled;
    public final ConsumeBatchedInputRunnable mConsumedBatchedInputRunnable;
    public final Context mContext;
    public int mCurScrollY;
    public View mCurrentDragView;
    private final int mDensity;
    public Rect mDirty;
    public final Display mDisplay;
    public final DisplayAdjustments mDisplayAdjustments;
    public ClipDescription mDragDescription;
    public boolean mDrawDuringWindowsAnimating;
    public boolean mDrawingAllowed;
    public FallbackEventHandler mFallbackEventHandler;
    public boolean mFirst;
    public InputStage mFirstInputStage;
    public InputStage mFirstPostImeInputStage;
    public boolean mFitSystemWindowsRequested;
    private int mFpsNumFrames;
    public boolean mFullRedrawNeeded;
    public final ViewRootHandler mHandler;
    public int mHardwareYOffset;
    public boolean mHasHadWindowFocus;
    public int mHeight;
    private final SurfaceHolder mHolder;
    public InputChannel mInputChannel;
    public final InputEventConsistencyVerifier mInputEventConsistencyVerifier;
    public WindowInputEventReceiver mInputEventReceiver;
    public InputQueue mInputQueue;
    public InputQueue.Callback mInputQueueCallback;
    public final InvalidateOnAnimationRunnable mInvalidateOnAnimationRunnable;
    public boolean mIsAnimating;
    public boolean mIsCreating;
    public boolean mIsDrawing;
    public boolean mIsInTraversal;
    public boolean mLastOverscanRequested;
    public WeakReference<View> mLastScrolledFocus;
    public int mLastSystemUiVisibility;
    public boolean mLastWasImTarget;
    public boolean mLayoutRequested;
    public volatile Object mLocalDragState;
    public final WindowLeaked mLocation;
    private boolean mMediaDisabled;
    public boolean mNewSurfaceNeeded;
    private final int mNoncompatDensity;
    public int mPendingInputEventCount;
    public QueuedInputEvent mPendingInputEventHead;
    public QueuedInputEvent mPendingInputEventTail;
    private ArrayList<LayoutTransition> mPendingTransitions;
    public final Region mPreviousTransparentRegion;
    public boolean mProcessInputEventsScheduled;
    private boolean mProfile;
    private boolean mProfileRendering;
    private QueuedInputEvent mQueuedInputEventPool;
    private int mQueuedInputEventPoolSize;
    private boolean mRemoved;
    private Choreographer.FrameCallback mRenderProfiler;
    private boolean mRenderProfilingEnabled;
    public boolean mReportNextDraw;
    public int mResizeAlpha;
    public HardwareLayer mResizeBuffer;
    public int mResizeBufferDuration;
    public long mResizeBufferStartTime;
    public final Paint mResizePaint;
    public boolean mScrollMayChange;
    public int mScrollY;
    public Scroller mScroller;
    public SendWindowContentChangedAccessibilityEvent mSendWindowContentChangedAccessibilityEvent;
    public int mSeq;
    public int mSoftInputMode;
    public c mSurfaceHolder;
    public SurfaceHolder.Callback2 mSurfaceHolderCallback;
    public final int mTargetSdkVersion;
    public HashSet<View> mTempHashSet;
    public final Rect mTempRect;
    public final Thread mThread;
    public CompatibilityInfo.Translator mTranslator;
    public final Region mTransparentRegion;
    public int mTraversalBarrier;
    public final TraversalRunnable mTraversalRunnable;
    public boolean mTraversalScheduled;
    public boolean mUpdateTranformHint;
    public View mView;
    public final ViewConfiguration mViewConfiguration;
    private int mViewLayoutDirectionInitial;
    public int mViewVisibility;
    public final Rect mVisRect;
    public int mWidth;
    public boolean mWillDrawSoon;
    public final Rect mWinFrame;
    public final W mWindow;
    public final IWindowSession mWindowSession;
    public boolean mWindowsAnimating;
    public int mWrotation;
    public int mWrotation_old;
    public static final ThreadLocal<RunQueue> sRunQueues = new ThreadLocal<>();
    public static final ArrayList<Runnable> sFirstDrawHandlers = new ArrayList<>();
    public static boolean sFirstDrawComplete = false;
    public static final ArrayList<ComponentCallbacks> sConfigCallbacks = new ArrayList<>();
    public static final Interpolator mResizeInterpolator = new AccelerateDecelerateInterpolator();
    public final int[] mTmpLocation = new int[2];
    public final TypedValue mTmpValue = new TypedValue();
    public final WindowManager.LayoutParams mWindowAttributes = new WindowManager.LayoutParams();
    public boolean mAppVisible = true;
    public int mOrigWindowType = -1;
    public boolean mStopped = false;
    public boolean mLastInCompatMode = false;
    public final Rect mCurrentDirty = new Rect();
    public String mPendingInputEventQueueLengthCounterName = "pq";
    public boolean mWindowAttributesChanged = false;
    public int mWindowAttributesChangesFlag = 0;
    private final Surface mSurface = new Surface();
    public final Rect mPendingOverscanInsets = new Rect();
    public final Rect mPendingVisibleInsets = new Rect();
    public final Rect mPendingContentInsets = new Rect();
    public final ViewTreeObserver.InternalInsetsInfo mLastGivenInsets = new ViewTreeObserver.InternalInsetsInfo();
    public final Rect mFitSystemWindowsInsets = new Rect();
    public final Configuration mLastConfiguration = new Configuration();
    public final Configuration mPendingConfiguration = new Configuration();
    public boolean mConfigurationChanged = false;
    public final PointF mDragPoint = new PointF();
    public final PointF mLastTouchPoint = new PointF();
    private long mFpsStartTime = -1;
    private long mFpsPrevTime = -1;
    private final ArrayList<DisplayList> mDisplayLists = new ArrayList<>();
    private boolean mInLayout = false;
    public ArrayList<View> mLayoutRequesters = new ArrayList<>();
    public boolean mHandlingLayoutInLayoutRequest = false;

    public static final class AccessibilityInteractionConnection extends IAccessibilityInteractionConnection.Stub {
        private final WeakReference<ViewRootImpl> mViewRootImpl;

        public AccessibilityInteractionConnection(ViewRootImpl viewRootImpl) {
            this.mViewRootImpl = new WeakReference<>(viewRootImpl);
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfoByAccessibilityId(long j2, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfoByAccessibilityIdClientThread(j2, i2, iAccessibilityInteractionConnectionCallback, i3, i4, j3, magnificationSpec);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(null, i2);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfosByText(long j2, String str, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfosByTextClientThread(j2, str, i2, iAccessibilityInteractionConnectionCallback, i3, i4, j3, magnificationSpec);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(null, i2);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfosByViewId(long j2, String str, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j3, MagnificationSpec magnificationSpec) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfosByViewIdClientThread(j2, str, i2, iAccessibilityInteractionConnectionCallback, i3, i4, j3, magnificationSpec);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(null, i2);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findFocus(long j2, int i2, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3, MagnificationSpec magnificationSpec) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findFocusClientThread(j2, i2, i3, iAccessibilityInteractionConnectionCallback, i4, i5, j3, magnificationSpec);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(null, i3);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void focusSearch(long j2, int i2, int i3, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i4, int i5, long j3, MagnificationSpec magnificationSpec) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().focusSearchClientThread(j2, i2, i3, iAccessibilityInteractionConnectionCallback, i4, i5, j3, magnificationSpec);
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
            if (attachInfo != null) {
                if (attachInfo.mAccessibilityWindowId != -1) {
                    return;
                }
                attachInfo.mAccessibilityWindowId = viewRootImpl.mAccessibilityManager.addAccessibilityInteractionConnection(viewRootImpl.mWindow, new AccessibilityInteractionConnection(ViewRootImpl.this));
            }
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
            if (!z2) {
                ensureNoConnection();
                ViewRootImpl.this.mHandler.obtainMessage(21).sendToTarget();
                return;
            }
            ensureConnection();
            ViewRootImpl viewRootImpl = ViewRootImpl.this;
            View.AttachInfo attachInfo = viewRootImpl.mAttachInfo;
            if (attachInfo == null || !attachInfo.mHasWindowFocus) {
                return;
            }
            viewRootImpl.mView.sendAccessibilityEvent(32);
            View viewFindFocus = ViewRootImpl.this.mView.findFocus();
            if (viewFindFocus == null || viewFindFocus == ViewRootImpl.this.mView) {
                return;
            }
            viewFindFocus.sendAccessibilityEvent(8);
        }
    }

    public abstract class AsyncInputStage extends InputStage {
        public static final int DEFER = 3;
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
            if (ViewRootImpl.this.checkForLeavingTouchModeAndConsume(keyEvent)) {
                return 1;
            }
            ViewRootImpl.this.mFallbackEventHandler.preDispatchKeyEvent(keyEvent);
            return 0;
        }

        private int processPointerEvent(QueuedInputEvent queuedInputEvent) {
            MotionEvent motionEvent = (MotionEvent) queuedInputEvent.mEvent;
            CompatibilityInfo.Translator translator = ViewRootImpl.this.mTranslator;
            if (translator != null) {
                translator.translateEventInScreenToAppWindow(motionEvent);
            }
            int action = motionEvent.getAction();
            if (action == 0 || action == 8) {
                ViewRootImpl.this.ensureTouchMode(true);
            }
            int i2 = ViewRootImpl.this.mCurScrollY;
            if (i2 != 0) {
                motionEvent.offsetLocation(0.0f, i2);
            }
            if (!motionEvent.isTouchEvent()) {
                return 0;
            }
            ViewRootImpl.this.mLastTouchPoint.f139x = motionEvent.getRawX();
            ViewRootImpl.this.mLastTouchPoint.f140y = motionEvent.getRawY();
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
            return iDispatchInputEvent == 0 ? 2 : 3;
        }
    }

    public abstract class InputStage {
        public static final int FINISH_HANDLED = 1;
        public static final int FINISH_NOT_HANDLED = 2;
        public static final int FORWARD = 0;
        private final InputStage mNext;

        public InputStage(InputStage inputStage) {
            this.mNext = inputStage;
        }

        public void apply(QueuedInputEvent queuedInputEvent, int i2) {
            if (i2 == 0) {
                forward(queuedInputEvent);
                return;
            }
            if (i2 == 1) {
                finish(queuedInputEvent, true);
            } else {
                if (i2 == 2) {
                    finish(queuedInputEvent, false);
                    return;
                }
                throw new IllegalArgumentException("Invalid result: " + i2);
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
                Slog.w(ViewRootImpl.TAG, "Dropping event due to root view being removed: " + queuedInputEvent.mEvent);
                return true;
            }
            if (viewRootImpl.mAttachInfo.mHasWindowFocus || queuedInputEvent.mEvent.isFromSource(2) || ViewRootImpl.isTerminalInputEvent(queuedInputEvent.mEvent)) {
                return false;
            }
            Slog.w(ViewRootImpl.TAG, "Dropping event due to no window focus: " + queuedInputEvent.mEvent);
            return true;
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
        public InputEvent mEvent;
        public int mFlags;
        public QueuedInputEvent mNext;
        public InputEventReceiver mReceiver;

        private QueuedInputEvent() {
        }

        public boolean shouldSkipIme() {
            if ((this.mFlags & 1) != 0) {
                return true;
            }
            InputEvent inputEvent = this.mEvent;
            return (inputEvent instanceof MotionEvent) && inputEvent.isFromSource(2);
        }
    }

    public static final class RunQueue {
        private final ArrayList<HandlerAction> mActions = new ArrayList<>();

        public static class HandlerAction {
            public Runnable action;
            public long delay;

            private HandlerAction() {
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || getClass() != obj.getClass()) {
                    return false;
                }
                Runnable runnable = this.action;
                Runnable runnable2 = ((HandlerAction) obj).action;
                if (runnable != null) {
                    if (runnable.equals(runnable2)) {
                        return true;
                    }
                } else if (runnable2 == null) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                Runnable runnable = this.action;
                int iHashCode = runnable != null ? runnable.hashCode() : 0;
                long j2 = this.delay;
                return (iHashCode * 31) + ((int) (j2 ^ (j2 >>> 32)));
            }
        }

        public void executeActions(Handler handler) {
            synchronized (this.mActions) {
                ArrayList<HandlerAction> arrayList = this.mActions;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    HandlerAction handlerAction = arrayList.get(i2);
                    handler.postDelayed(handlerAction.action, handlerAction.delay);
                }
                arrayList.clear();
            }
        }

        public void post(Runnable runnable) {
            postDelayed(runnable, 0L);
        }

        public void postDelayed(Runnable runnable, long j2) {
            HandlerAction handlerAction = new HandlerAction();
            handlerAction.action = runnable;
            handlerAction.delay = j2;
            synchronized (this.mActions) {
                this.mActions.add(handlerAction);
            }
        }

        public void removeCallbacks(Runnable runnable) {
            HandlerAction handlerAction = new HandlerAction();
            handlerAction.action = runnable;
            synchronized (this.mActions) {
                while (this.mActions.remove(handlerAction)) {
                }
            }
        }
    }

    public class SendWindowContentChangedAccessibilityEvent implements Runnable {
        private int mChangeTypes;
        public long mLastEventTimeMillis;
        public View mSource;

        private SendWindowContentChangedAccessibilityEvent() {
            this.mChangeTypes = 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AccessibilityManager.getInstance(ViewRootImpl.this.mContext).isEnabled()) {
                this.mLastEventTimeMillis = SystemClock.uptimeMillis();
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(2048);
                accessibilityEventObtain.setContentChangeTypes(this.mChangeTypes);
                this.mSource.sendAccessibilityEventUnchecked(accessibilityEventObtain);
            } else {
                this.mLastEventTimeMillis = 0L;
            }
            this.mSource.resetSubtreeAccessibilityStateChanged();
            this.mSource = null;
            this.mChangeTypes = 0;
        }

        public void runOrPost(View view, int i2) {
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
            if (jUptimeMillis < sendRecurringAccessibilityEventsInterval) {
                this.mSource.postDelayed(this, sendRecurringAccessibilityEventsInterval - jUptimeMillis);
            } else {
                this.mSource.removeCallbacks(this);
                run();
            }
        }
    }

    public final class SyntheticInputStage extends InputStage {
        private final SyntheticJoystickHandler mJoystick;
        private final SyntheticTouchNavigationHandler mTouchNavigation;
        private final SyntheticTrackballHandler mTrackball;

        public SyntheticInputStage() {
            super(null);
            this.mTrackball = ViewRootImpl.this.new SyntheticTrackballHandler();
            this.mJoystick = ViewRootImpl.this.new SyntheticJoystickHandler();
            this.mTouchNavigation = ViewRootImpl.this.new SyntheticTouchNavigationHandler();
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
            queuedInputEvent.mFlags |= 16;
            InputEvent inputEvent = queuedInputEvent.mEvent;
            if (!(inputEvent instanceof MotionEvent)) {
                return 0;
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
        private int mLastXDirection;
        private int mLastXKeyCode;
        private int mLastYDirection;
        private int mLastYKeyCode;

        public SyntheticJoystickHandler() {
            super(true);
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

        public void cancel(MotionEvent motionEvent) {
            update(motionEvent, false);
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
            update(motionEvent, true);
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
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 6 more
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
            Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
            	... 5 more
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
        public int globalVisibility;
        public int localChanges;
        public int localValue;
        public int seq;
    }

    public class TakenSurfaceHolder extends c {
        public TakenSurfaceHolder() {
        }

        @Override // android.view.SurfaceHolder
        public boolean isCreating() {
            return ViewRootImpl.this.mIsCreating;
        }

        @Override // v.c
        public boolean onAllowLockCanvas() {
            return ViewRootImpl.this.mDrawingAllowed;
        }

        @Override // v.c
        public void onRelayoutContainer() {
        }

        @Override // v.c
        public void onUpdateSurface() {
            throw new IllegalStateException("Shouldn't be here");
        }

        @Override // v.c, android.view.SurfaceHolder
        public void setFixedSize(int i2, int i3) {
            throw new UnsupportedOperationException("Currently only support sizing from layout");
        }

        @Override // v.c, android.view.SurfaceHolder
        public void setFormat(int i2) {
            ((d) ViewRootImpl.this.mView).e(i2);
        }

        @Override // android.view.SurfaceHolder
        public void setKeepScreenOn(boolean z2) {
            ((d) ViewRootImpl.this.mView).c(z2);
        }

        @Override // v.c, android.view.SurfaceHolder
        public void setType(int i2) {
            ((d) ViewRootImpl.this.mView).d(i2);
        }
    }

    public static final class TrackballAxis {
        public static final float ACCEL_MOVE_SCALING_FACTOR = 0.025f;
        public static final long FAST_MOVE_TIME = 150;
        public static final float FIRST_MOVEMENT_THRESHOLD = 0.5f;
        public static final float MAX_ACCELERATION = 20.0f;
        public static final float SECOND_CUMULATIVE_MOVEMENT_THRESHOLD = 2.0f;
        public static final float SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD = 1.0f;
        public int dir;
        public int nonAccelMovement;
        public float position;
        public int step;
        public float acceleration = 1.0f;
        public long lastMoveTime = 0;

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
                    float f4 = (j3 - j4) * 0.025f;
                    if (f4 > 1.0f) {
                        f3 *= f4;
                    }
                    if (f3 >= 20.0f) {
                        f3 = 20.0f;
                    }
                    this.acceleration = f3;
                } else {
                    float f5 = (j4 - j3) * 0.025f;
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
                        if (f4 < 20.0f) {
                            f3 = f4;
                        }
                        this.acceleration = f3;
                    } else {
                        if (Math.abs(f2) < 2.0f) {
                            return i2;
                        }
                        i2 += i3;
                        this.nonAccelMovement += i3;
                        this.position -= i3 * 2.0f;
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

        private int processGenericMotionEvent(QueuedInputEvent queuedInputEvent) {
            return ViewRootImpl.this.mView.dispatchGenericMotionEvent((MotionEvent) queuedInputEvent.mEvent) ? 1 : 0;
        }

        private int processKeyEvent(QueuedInputEvent queuedInputEvent) {
            KeyEvent keyEvent = (KeyEvent) queuedInputEvent.mEvent;
            if (keyEvent.getAction() != 1) {
                ViewRootImpl.this.handleDispatchDoneAnimating();
            }
            if (ViewRootImpl.this.mView.dispatchKeyEvent(keyEvent)) {
                return 1;
            }
            int i2 = 2;
            if (shouldDropInputEvent(queuedInputEvent)) {
                return 2;
            }
            if (keyEvent.getAction() == 0 && keyEvent.isCtrlPressed() && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode())) {
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
                } else if (!keyEvent.hasNoModifiers()) {
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
                                return 1;
                            }
                        }
                        if (ViewRootImpl.this.mView.dispatchUnhandledMove(viewFindFocus, i2)) {
                            return 1;
                        }
                    } else {
                        View viewFocusSearch2 = ViewRootImpl.this.focusSearch(null, i2);
                        if (viewFocusSearch2 != null && viewFocusSearch2.requestFocus(i2)) {
                            return 1;
                        }
                    }
                }
            }
            return 0;
        }

        private int processPointerEvent(QueuedInputEvent queuedInputEvent) {
            return ViewRootImpl.this.mView.dispatchPointerEvent((MotionEvent) queuedInputEvent.mEvent) ? 1 : 0;
        }

        private int processTrackballEvent(QueuedInputEvent queuedInputEvent) {
            return ViewRootImpl.this.mView.dispatchTrackballEvent((MotionEvent) queuedInputEvent.mEvent) ? 1 : 0;
        }

        @Override // android.view.ViewRootImpl.InputStage
        public int onProcess(QueuedInputEvent queuedInputEvent) {
            if (queuedInputEvent.mEvent instanceof KeyEvent) {
                return processKeyEvent(queuedInputEvent);
            }
            ViewRootImpl.this.handleDispatchDoneAnimating();
            int source = queuedInputEvent.mEvent.getSource();
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
                case 23:
                default:
                    return super.getMessageName(message);
                case 11:
                    return "MSG_DISPATCH_KEY_FROM_IME";
                case 12:
                    return "MSG_FINISH_INPUT_CONNECTION";
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
                case 20:
                    return "MSG_DISPATCH_SCREEN_STATE";
                case 21:
                    return "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST";
                case 22:
                    return "MSG_DISPATCH_DONE_ANIMATING";
                case 24:
                    return "MSG_WINDOW_MOVED";
                case 25:
                    return "MSG_FLUSH_LAYER_UPDATES";
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
                    f fVar = (f) message.obj;
                    if (ViewRootImpl.this.mWinFrame.equals(fVar.f16709c) && ViewRootImpl.this.mPendingOverscanInsets.equals(fVar.f16713g) && ViewRootImpl.this.mPendingContentInsets.equals(fVar.f16710d) && ViewRootImpl.this.mPendingVisibleInsets.equals(fVar.f16711e) && fVar.f16712f == null) {
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
                            if (viewRootImpl2.mAttachInfo.mHardwareRenderer != null && viewRootImpl2.mSurface.isValid()) {
                                ViewRootImpl viewRootImpl3 = ViewRootImpl.this;
                                viewRootImpl3.mFullRedrawNeeded = true;
                                try {
                                    viewRootImpl3.mAttachInfo.mHardwareRenderer.initializeIfNeeded(viewRootImpl3.mWidth, viewRootImpl3.mHeight, viewRootImpl3.mHolder.getSurface());
                                } catch (Surface.OutOfResourcesException e2) {
                                    Log.e(ViewRootImpl.TAG, "OutOfResourcesException locking surface", e2);
                                    try {
                                        ViewRootImpl viewRootImpl4 = ViewRootImpl.this;
                                        if (!viewRootImpl4.mWindowSession.outOfMemory(viewRootImpl4.mWindow)) {
                                            Slog.w(ViewRootImpl.TAG, "No processes killed for memory; killing self");
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
                        ViewRootImpl viewRootImpl6 = ViewRootImpl.this;
                        if (viewRootImpl6.mView != null) {
                            if (z2 && inputMethodManagerPeekInstance != null && viewRootImpl6.mLastWasImTarget && !viewRootImpl6.isInLocalFocusMode()) {
                                inputMethodManagerPeekInstance.startGettingWindowFocus(ViewRootImpl.this.mView);
                            }
                            ViewRootImpl.this.mAttachInfo.mKeyDispatchState.reset();
                            ViewRootImpl.this.mView.dispatchWindowFocusChanged(z2);
                            ViewRootImpl.this.mAttachInfo.mTreeObserver.dispatchOnWindowFocusChange(z2);
                        }
                        if (z2) {
                            if (inputMethodManagerPeekInstance != null) {
                                ViewRootImpl viewRootImpl7 = ViewRootImpl.this;
                                if (viewRootImpl7.mLastWasImTarget && !viewRootImpl7.isInLocalFocusMode()) {
                                    View view = ViewRootImpl.this.mView;
                                    View viewFindFocus = view.findFocus();
                                    ViewRootImpl viewRootImpl8 = ViewRootImpl.this;
                                    WindowManager.LayoutParams layoutParams = viewRootImpl8.mWindowAttributes;
                                    inputMethodManagerPeekInstance.onWindowFocus(view, viewFindFocus, layoutParams.softInputMode, !viewRootImpl8.mHasHadWindowFocus, layoutParams.flags);
                                }
                            }
                            ViewRootImpl viewRootImpl9 = ViewRootImpl.this;
                            viewRootImpl9.mWindowAttributes.softInputMode &= -257;
                            ((WindowManager.LayoutParams) viewRootImpl9.mView.getLayoutParams()).softInputMode &= -257;
                            ViewRootImpl.this.mHasHadWindowFocus = true;
                        }
                        ViewRootImpl.this.setAccessibilityFocus(null, null);
                        ViewRootImpl viewRootImpl10 = ViewRootImpl.this;
                        if (viewRootImpl10.mView != null && viewRootImpl10.mAccessibilityManager.isEnabled() && z2) {
                            ViewRootImpl.this.mView.sendAccessibilityEvent(32);
                            return;
                        }
                        return;
                    }
                    return;
                case 7:
                    ViewRootImpl.this.enqueueInputEvent((InputEvent) message.obj, null, 0, true);
                    return;
                case 8:
                    ViewRootImpl.this.handleAppVisibility(message.arg1 != 0);
                    return;
                case 9:
                    ViewRootImpl.this.handleGetNewSurface();
                    return;
                case 10:
                default:
                    return;
                case 11:
                    KeyEvent keyEventChangeFlags = (KeyEvent) message.obj;
                    if ((keyEventChangeFlags.getFlags() & 8) != 0) {
                        keyEventChangeFlags = KeyEvent.changeFlags(keyEventChangeFlags, keyEventChangeFlags.getFlags() & (-9));
                    }
                    ViewRootImpl.this.enqueueInputEvent(keyEventChangeFlags, null, 1, true);
                    return;
                case 12:
                    InputMethodManager inputMethodManagerPeekInstance2 = InputMethodManager.peekInstance();
                    if (inputMethodManagerPeekInstance2 != null) {
                        inputMethodManagerPeekInstance2.reportFinishInputConnection((InputConnection) message.obj);
                        return;
                    }
                    return;
                case 13:
                    InputMethodManager inputMethodManagerPeekInstance3 = InputMethodManager.peekInstance();
                    if (inputMethodManagerPeekInstance3 != null) {
                        inputMethodManagerPeekInstance3.checkFocus();
                        return;
                    }
                    return;
                case 14:
                    View view2 = ViewRootImpl.this.mView;
                    if (view2 != null) {
                        view2.onCloseSystemDialogs((String) message.obj);
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
                    Configuration configuration = (Configuration) message.obj;
                    if (configuration.isOtherSeqNewer(ViewRootImpl.this.mLastConfiguration)) {
                        configuration = ViewRootImpl.this.mLastConfiguration;
                    }
                    ViewRootImpl.this.updateConfiguration(configuration, false);
                    return;
                case 19:
                    ViewRootImpl viewRootImpl11 = ViewRootImpl.this;
                    viewRootImpl11.mProcessInputEventsScheduled = false;
                    viewRootImpl11.doProcessInputEvents();
                    return;
                case 20:
                    ViewRootImpl viewRootImpl12 = ViewRootImpl.this;
                    if (viewRootImpl12.mView != null) {
                        viewRootImpl12.handleScreenStateChange(message.arg1 == 1);
                        return;
                    }
                    return;
                case 21:
                    ViewRootImpl.this.setAccessibilityFocus(null, null);
                    return;
                case 22:
                    ViewRootImpl.this.handleDispatchDoneAnimating();
                    return;
                case 23:
                    ViewRootImpl viewRootImpl13 = ViewRootImpl.this;
                    View view3 = viewRootImpl13.mView;
                    if (view3 != null) {
                        viewRootImpl13.invalidateWorld(view3);
                        return;
                    }
                    return;
                case 24:
                    ViewRootImpl viewRootImpl14 = ViewRootImpl.this;
                    if (viewRootImpl14.mAdded) {
                        int iWidth = viewRootImpl14.mWinFrame.width();
                        int iHeight = ViewRootImpl.this.mWinFrame.height();
                        int i2 = message.arg1;
                        int i3 = message.arg2;
                        ViewRootImpl viewRootImpl15 = ViewRootImpl.this;
                        Rect rect = viewRootImpl15.mWinFrame;
                        rect.left = i2;
                        rect.right = i2 + iWidth;
                        rect.top = i3;
                        rect.bottom = i3 + iHeight;
                        View view4 = viewRootImpl15.mView;
                        if (view4 != null) {
                            ViewRootImpl.forceLayout(view4);
                        }
                        ViewRootImpl.this.requestLayout();
                        return;
                    }
                    return;
                case 25:
                    ViewRootImpl.this.flushHardwareLayerUpdates();
                    return;
            }
            ViewRootImpl viewRootImpl16 = ViewRootImpl.this;
            if (viewRootImpl16.mAdded) {
                f fVar2 = (f) message.obj;
                Configuration configuration2 = (Configuration) fVar2.f16712f;
                if (configuration2 != null) {
                    viewRootImpl16.updateConfiguration(configuration2, false);
                }
                ViewRootImpl.this.mWinFrame.set((Rect) fVar2.f16709c);
                ViewRootImpl.this.mPendingOverscanInsets.set((Rect) fVar2.f16713g);
                ViewRootImpl.this.mPendingContentInsets.set((Rect) fVar2.f16710d);
                ViewRootImpl.this.mPendingVisibleInsets.set((Rect) fVar2.f16711e);
                fVar2.c();
                if (message.what == 5) {
                    ViewRootImpl.this.mReportNextDraw = true;
                }
                View view5 = ViewRootImpl.this.mView;
                if (view5 != null) {
                    ViewRootImpl.forceLayout(view5);
                }
                ViewRootImpl.this.requestLayout();
            }
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
                return ActivityManagerNative.getDefault().checkPermission(str, Binder.getCallingPid(), Binder.getCallingUid());
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
        public void dispatchScreenState(boolean z2) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchScreenStateChange(z2);
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
        public void doneAnimating() {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchDoneAnimating();
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
        public void resized(Rect rect, Rect rect2, Rect rect3, Rect rect4, boolean z2, Configuration configuration) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchResized(rect, rect2, rect3, rect4, z2, configuration);
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
            ViewRootImpl.this.scheduleConsumeBatchedInput();
        }

        @Override // android.view.InputEventReceiver
        public void onInputEvent(InputEvent inputEvent) {
            ViewRootImpl.this.enqueueInputEvent(inputEvent, this, 0, true);
        }
    }

    public ViewRootImpl(Context context, Display display) {
        this.mInputEventConsistencyVerifier = InputEventConsistencyVerifier.isInstrumentationEnabled() ? new InputEventConsistencyVerifier(this, 0) : null;
        this.mProfile = false;
        this.mResizePaint = new Paint();
        this.mWrotation = -1;
        this.mWrotation_old = -2;
        this.drawsoft = false;
        this.fulldraw_pit = -1;
        ViewRootHandler viewRootHandler = new ViewRootHandler();
        this.mHandler = viewRootHandler;
        this.mTraversalRunnable = new TraversalRunnable();
        this.mConsumedBatchedInputRunnable = new ConsumeBatchedInputRunnable();
        this.mInvalidateOnAnimationRunnable = new InvalidateOnAnimationRunnable();
        this.mHolder = new SurfaceHolder() { // from class: android.view.ViewRootImpl.5
            @Override // android.view.SurfaceHolder
            public void addCallback(SurfaceHolder.Callback callback) {
            }

            @Override // android.view.SurfaceHolder
            public Surface getSurface() {
                return ViewRootImpl.this.mSurface;
            }

            @Override // android.view.SurfaceHolder
            public Rect getSurfaceFrame() {
                return null;
            }

            @Override // android.view.SurfaceHolder
            public boolean isCreating() {
                return false;
            }

            @Override // android.view.SurfaceHolder
            public Canvas lockCanvas() {
                return null;
            }

            @Override // android.view.SurfaceHolder
            public Canvas lockCanvas(Rect rect) {
                return null;
            }

            @Override // android.view.SurfaceHolder
            public void removeCallback(SurfaceHolder.Callback callback) {
            }

            @Override // android.view.SurfaceHolder
            public void setFixedSize(int i2, int i3) {
            }

            @Override // android.view.SurfaceHolder
            public void setFormat(int i2) {
            }

            @Override // android.view.SurfaceHolder
            public void setKeepScreenOn(boolean z2) {
            }

            @Override // android.view.SurfaceHolder
            public void setSizeFromLayout() {
            }

            @Override // android.view.SurfaceHolder
            public void setType(int i2) {
            }

            @Override // android.view.SurfaceHolder
            public void unlockCanvasAndPost(Canvas canvas) {
            }
        };
        this.mContext = context;
        IWindowSession windowSession = WindowManagerGlobal.getWindowSession();
        this.mWindowSession = windowSession;
        this.mDisplay = display;
        this.mBasePackageName = context.getBasePackageName();
        this.mDisplayAdjustments = display.getDisplayAdjustments();
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
        AccessibilityManager accessibilityManager = AccessibilityManager.getInstance(context);
        this.mAccessibilityManager = accessibilityManager;
        AccessibilityInteractionConnectionManager accessibilityInteractionConnectionManager = new AccessibilityInteractionConnectionManager();
        this.mAccessibilityInteractionConnectionManager = accessibilityInteractionConnectionManager;
        accessibilityManager.addAccessibilityStateChangeListener(accessibilityInteractionConnectionManager);
        View.AttachInfo attachInfo = new View.AttachInfo(windowSession, w2, display, this, viewRootHandler, this);
        this.mAttachInfo = attachInfo;
        this.mViewConfiguration = ViewConfiguration.get(context);
        this.mDensity = context.getResources().getDisplayMetrics().densityDpi;
        this.mNoncompatDensity = context.getResources().getDisplayMetrics().noncompatDensityDpi;
        this.mFallbackEventHandler = b.a(context);
        this.mChoreographer = Choreographer.getInstance();
        attachInfo.mScreenOn = ((PowerManager) context.getSystemService(Context.POWER_SERVICE)).isScreenOn();
        loadSystemProperties();
    }

    public static void addConfigCallback(ComponentCallbacks componentCallbacks) {
        ArrayList<ComponentCallbacks> arrayList = sConfigCallbacks;
        synchronized (arrayList) {
            arrayList.add(componentCallbacks);
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
            int i2 = attachInfo.mSystemUiVisibility & (~attachInfo.mDisabledSystemUiVisibility);
            attachInfo.mSystemUiVisibility = i2;
            WindowManager.LayoutParams layoutParams = this.mWindowAttributes;
            int impliedSystemUiVisibility = i2 | getImpliedSystemUiVisibility(layoutParams);
            attachInfo.mSystemUiVisibility = impliedSystemUiVisibility;
            if (attachInfo.mKeepScreenOn != z2 || impliedSystemUiVisibility != layoutParams.subtreeSystemUiVisibility || attachInfo.mHasSystemUiListeners != layoutParams.hasSystemUiListeners) {
                applyKeepScreenOnFlag(layoutParams);
                int i3 = attachInfo.mSystemUiVisibility;
                layoutParams.subtreeSystemUiVisibility = i3;
                layoutParams.hasSystemUiListeners = attachInfo.mHasSystemUiListeners;
                this.mView.dispatchWindowSystemUiVisiblityChanged(i3);
                return true;
            }
        }
        return false;
    }

    private void deliverInputEvent(QueuedInputEvent queuedInputEvent) {
        Trace.traceBegin(8L, "deliverInputEvent");
        try {
            InputEventConsistencyVerifier inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier;
            if (inputEventConsistencyVerifier != null) {
                inputEventConsistencyVerifier.onInputEvent(queuedInputEvent.mEvent, 0);
            }
            InputStage inputStage = queuedInputEvent.shouldSkipIme() ? this.mFirstPostImeInputStage : this.mFirstInputStage;
            if (inputStage != null) {
                inputStage.deliver(queuedInputEvent);
            } else {
                finishInputEvent(queuedInputEvent);
            }
        } finally {
            Trace.traceEnd(8L);
        }
    }

    private void destroyHardwareRenderer() {
        View.AttachInfo attachInfo = this.mAttachInfo;
        HardwareRenderer hardwareRenderer = attachInfo.mHardwareRenderer;
        if (hardwareRenderer != null) {
            View view = this.mView;
            if (view != null) {
                hardwareRenderer.destroyHardwareResources(view);
            }
            hardwareRenderer.destroy(true);
            hardwareRenderer.setRequested(false);
            attachInfo.mHardwareRenderer = null;
            attachInfo.mHardwareAccelerated = false;
        }
    }

    private void draw(boolean z2, boolean z3) {
        boolean z4;
        boolean z5;
        int interpolation;
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
            Scroller scroller = this.mScroller;
            boolean z6 = scroller != null && scroller.computeScrollOffset();
            int currY = z6 ? this.mScroller.getCurrY() : this.mScrollY;
            if (this.mCurScrollY != currY) {
                this.mCurScrollY = currY;
                z4 = true;
            } else {
                z4 = z2;
            }
            float f2 = attachInfo.mApplicationScale;
            boolean z7 = attachInfo.mScalingRequired;
            if (this.mResizeBuffer != null) {
                long jUptimeMillis = SystemClock.uptimeMillis() - this.mResizeBufferStartTime;
                int i3 = this.mResizeBufferDuration;
                if (jUptimeMillis < i3) {
                    interpolation = 255 - ((int) (mResizeInterpolator.getInterpolation(jUptimeMillis / i3) * 255.0f));
                    z5 = true;
                } else {
                    disposeResizeBuffer();
                    z5 = z6;
                    interpolation = 0;
                }
            } else {
                z5 = z6;
                interpolation = 0;
            }
            Rect rect = this.mDirty;
            if (this.mSurfaceHolder != null) {
                rect.setEmpty();
                if (z5) {
                    Scroller scroller2 = this.mScroller;
                    if (scroller2 != null) {
                        scroller2.abortAnimation();
                    }
                    disposeResizeBuffer();
                    return;
                }
                return;
            }
            if (z4) {
                attachInfo.mIgnoreDirtyState = true;
                rect.set(0, 0, (int) ((this.mWidth * f2) + 0.5f), (int) ((this.mHeight * f2) + 0.5f));
            }
            invalidateDisplayLists();
            attachInfo.mTreeObserver.dispatchOnDraw();
            if (!rect.isEmpty() || this.mIsAnimating) {
                HardwareRenderer hardwareRenderer = attachInfo.mHardwareRenderer;
                if (hardwareRenderer == null || !hardwareRenderer.isEnabled()) {
                    HardwareRenderer hardwareRenderer2 = attachInfo.mHardwareRenderer;
                    if (hardwareRenderer2 != null && !hardwareRenderer2.isEnabled() && attachInfo.mHardwareRenderer.isRequested()) {
                        try {
                            attachInfo.mHardwareRenderer.initializeIfNeeded(this.mWidth, this.mHeight, this.mHolder.getSurface());
                            this.mFullRedrawNeeded = true;
                            scheduleTraversals();
                            return;
                        } catch (Surface.OutOfResourcesException e2) {
                            handleOutOfResourcesException(e2);
                            return;
                        }
                    }
                    if (!drawSoftware(surface, attachInfo, currY, z7, rect)) {
                        return;
                    }
                } else {
                    this.mIsAnimating = false;
                    this.mHardwareYOffset = currY;
                    this.mResizeAlpha = interpolation;
                    this.mCurrentDirty.set(rect);
                    rect.setEmpty();
                    attachInfo.mHardwareRenderer.draw(this.mView, attachInfo, this, z5 ? null : this.mCurrentDirty);
                }
            }
            if (z5) {
                this.mFullRedrawNeeded = true;
                scheduleTraversals();
            }
            if (z3) {
                this.mFullRedrawNeeded = true;
                scheduleTraversals();
            }
        }
    }

    private void drawAccessibilityFocusedDrawableIfNeeded(Canvas canvas) {
        View view;
        Drawable accessibilityFocusedDrawable;
        AccessibilityManager accessibilityManager = AccessibilityManager.getInstance(this.mView.mContext);
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || (view = this.mAccessibilityFocusedHost) == null || view.mAttachInfo == null || (accessibilityFocusedDrawable = getAccessibilityFocusedDrawable()) == null) {
            return;
        }
        AccessibilityNodeProvider accessibilityNodeProvider = this.mAccessibilityFocusedHost.getAccessibilityNodeProvider();
        Rect rect = this.mView.mAttachInfo.mTmpInvalRect;
        if (accessibilityNodeProvider == null) {
            this.mAccessibilityFocusedHost.getBoundsOnScreen(rect);
        } else {
            AccessibilityNodeInfo accessibilityNodeInfo = this.mAccessibilityFocusedVirtualView;
            if (accessibilityNodeInfo == null) {
                return;
            } else {
                accessibilityNodeInfo.getBoundsInScreen(rect);
            }
        }
        View.AttachInfo attachInfo = this.mAttachInfo;
        rect.offset(-attachInfo.mWindowLeft, -attachInfo.mWindowTop);
        ViewRootImpl viewRootImpl = this.mAttachInfo.mViewRootImpl;
        rect.intersect(0, 0, viewRootImpl.mWidth, viewRootImpl.mHeight);
        accessibilityFocusedDrawable.setBounds(rect);
        accessibilityFocusedDrawable.draw(canvas);
    }

    private boolean drawSoftware(Surface surface, View.AttachInfo attachInfo, int i2, boolean z2, Rect rect) {
        int i3;
        int i4;
        try {
            int i5 = rect.left;
            int i6 = rect.top;
            int i7 = rect.right;
            int i8 = rect.bottom;
            int rotation = this.mWindowSession.getRotation(this.mWindow);
            this.mWrotation = rotation;
            boolean z3 = Build.USE_LCDC_COMPOSER;
            if (z3) {
                this.mSurface.ChangeWH(rotation);
            }
            Canvas canvasLockCanvas = this.mSurface.lockCanvas(rect);
            if (i5 != rect.left || i6 != rect.top || i7 != rect.right || i8 != rect.bottom) {
                attachInfo.mIgnoreDirtyState = true;
            }
            canvasLockCanvas.setDensity(this.mDensity);
            try {
                if (!canvasLockCanvas.isOpaque() || i2 != 0) {
                    canvasLockCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
                }
                rect.setEmpty();
                this.mIsAnimating = false;
                attachInfo.mDrawingTime = SystemClock.uptimeMillis();
                this.mView.mPrivateFlags |= 32;
                try {
                    canvasLockCanvas.translate(0.0f, -i2);
                    CompatibilityInfo.Translator translator = this.mTranslator;
                    if (translator != null) {
                        translator.translateCanvas(canvasLockCanvas);
                    }
                    canvasLockCanvas.setScreenDensity(z2 ? this.mNoncompatDensity : 0);
                    attachInfo.mSetIgnoreDirtyState = false;
                    if (z3) {
                        int width = canvasLockCanvas.getWidth();
                        int height = canvasLockCanvas.getHeight();
                        if (this.mWrotation == 1) {
                            if (width > height) {
                                i4 = (width > height ? width : height) / 2;
                            } else {
                                i4 = (height < width ? height : width) / 2;
                            }
                            float f2 = i4;
                            canvasLockCanvas.rotate(90.0f, f2, f2);
                        }
                        if (this.mWrotation == 3) {
                            if (width > height) {
                                i3 = (height < width ? height : width) / 2;
                            } else {
                                i3 = (width > height ? width : height) / 2;
                            }
                            float f3 = i3;
                            canvasLockCanvas.rotate(-90.0f, f3, f3);
                        }
                        if (this.mWrotation == 2) {
                            canvasLockCanvas.rotate(180.0f, width / 2, height / 2);
                        }
                    }
                    this.mView.draw(canvasLockCanvas);
                    drawAccessibilityFocusedDrawableIfNeeded(canvasLockCanvas);
                    if (!attachInfo.mSetIgnoreDirtyState) {
                        attachInfo.mIgnoreDirtyState = false;
                    }
                    try {
                        surface.unlockCanvasAndPost(canvasLockCanvas);
                        return true;
                    } catch (IllegalArgumentException e2) {
                        Log.e(TAG, "Could not unlock surface", e2);
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
                    Log.e(TAG, "Could not unlock surface", e3);
                    this.mLayoutRequested = true;
                    return false;
                }
            }
        } catch (RemoteException unused) {
            Log.e(TAG, "                drawSoftware()            getRotation()  error~~~@!    ");
            return false;
        } catch (Surface.OutOfResourcesException e4) {
            handleOutOfResourcesException(e4);
            return false;
        } catch (IllegalArgumentException e5) {
            Log.e(TAG, "Could not lock surface", e5);
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
            String str2 = str + "  ";
            for (int i2 = 0; i2 < childCount; i2++) {
                dumpViewHierarchy(str2, printWriter, viewGroup.getChildAt(i2));
            }
        }
    }

    private void enableHardwareAcceleration(WindowManager.LayoutParams layoutParams) {
        View.AttachInfo attachInfo = this.mAttachInfo;
        attachInfo.mHardwareAccelerated = false;
        attachInfo.mHardwareAccelerationRequested = false;
        if (this.mTranslator != null) {
            return;
        }
        boolean z2 = (layoutParams.flags & 16777216) != 0;
        this.drawsoft = true;
        if (z2 && HardwareRenderer.isAvailable()) {
            this.drawsoft = false;
            int i2 = layoutParams.privateFlags;
            boolean z3 = (i2 & 1) != 0;
            boolean z4 = (i2 & 2) != 0;
            if (HardwareRenderer.sRendererDisabled && (!HardwareRenderer.sSystemRendererDisabled || !z4)) {
                if (z3) {
                    this.mAttachInfo.mHardwareAccelerationRequested = true;
                    return;
                }
                return;
            }
            if (!HardwareRenderer.sSystemRendererDisabled && Looper.getMainLooper() != Looper.myLooper()) {
                Log.w(HardwareRenderer.LOG_TAG, "Attempting to initialize hardware acceleration outside of the main thread, aborting");
                return;
            }
            HardwareRenderer hardwareRenderer = this.mAttachInfo.mHardwareRenderer;
            if (hardwareRenderer != null) {
                hardwareRenderer.destroy(true);
            }
            this.mAttachInfo.mHardwareRenderer = HardwareRenderer.createGlRenderer(2, layoutParams.format != -1);
            HardwareRenderer hardwareRenderer2 = this.mAttachInfo.mHardwareRenderer;
            if (hardwareRenderer2 != null) {
                hardwareRenderer2.setName(layoutParams.getTitle().toString());
                View.AttachInfo attachInfo2 = this.mAttachInfo;
                attachInfo2.mHardwareAccelerationRequested = true;
                attachInfo2.mHardwareAccelerated = true;
            }
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
        viewFindFocus.clearFocusInternal(true, false);
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
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            return null;
        }
        if (attachInfo.mAccessibilityFocusDrawable == null) {
            TypedValue typedValue = new TypedValue();
            if (this.mView.mContext.getTheme().resolveAttribute(16843809, typedValue, true)) {
                this.mAttachInfo.mAccessibilityFocusDrawable = this.mView.mContext.getResources().getDrawable(typedValue.resourceId);
            }
        }
        return this.mAttachInfo.mAccessibilityFocusDrawable;
    }

    private AudioManager getAudioManager() {
        View view = this.mView;
        if (view == null) {
            throw new IllegalStateException("getAudioManager called when there is no mView");
        }
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) view.getContext().getSystemService(Context.AUDIO_SERVICE);
        }
        return this.mAudioManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getCommonPredecessor(View view, View view2) {
        if (this.mAttachInfo != null) {
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
        }
        return null;
    }

    private static void getGfxInfo(View view, int[] iArr) {
        DisplayList displayList = view.mDisplayList;
        iArr[0] = iArr[0] + 1;
        if (displayList != null) {
            iArr[1] = iArr[1] + displayList.getSize();
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

    public static RunQueue getRunQueue() {
        ThreadLocal<RunQueue> threadLocal = sRunQueues;
        RunQueue runQueue = threadLocal.get();
        if (runQueue != null) {
            return runQueue;
        }
        RunQueue runQueue2 = new RunQueue();
        threadLocal.set(runQueue2);
        return runQueue2;
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
    /* JADX WARN: Code duplicated, block: B:29:0x0069 A[Catch: RemoteException -> 0x0071, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x0071, blocks: (B:26:0x005e, B:27:0x0065, B:29:0x0069), top: B:42:0x005e }] */
    public void handleDragEvent(DragEvent dragEvent) {
        View view = this.mView;
        if (view != null && this.mAdded) {
            int i2 = dragEvent.mAction;
            if (i2 == 6) {
                view.dispatchDragEvent(dragEvent);
            } else {
                if (i2 == 1) {
                    this.mCurrentDragView = null;
                    this.mDragDescription = dragEvent.mClipDescription;
                } else {
                    dragEvent.mClipDescription = this.mDragDescription;
                }
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
                    dragEvent.mX = pointF.f139x;
                    dragEvent.mY = pointF.f140y;
                }
                View view2 = this.mCurrentDragView;
                boolean zDispatchDragEvent = this.mView.dispatchDragEvent(dragEvent);
                if (view2 != this.mCurrentDragView) {
                    if (view2 != null) {
                        try {
                            this.mWindowSession.dragRecipientExited(this.mWindow);
                            if (this.mCurrentDragView != null) {
                                this.mWindowSession.dragRecipientEntered(this.mWindow);
                            }
                        } catch (RemoteException unused) {
                            Slog.e(TAG, "Unable to note drag target change");
                        }
                    } else if (this.mCurrentDragView != null) {
                        this.mWindowSession.dragRecipientEntered(this.mWindow);
                    }
                }
                if (i2 == 3) {
                    this.mDragDescription = null;
                    try {
                        Log.i(TAG, "Reporting drop result: " + zDispatchDragEvent);
                        this.mWindowSession.reportDropResult(this.mWindow, zDispatchDragEvent);
                    } catch (RemoteException unused2) {
                        Log.e(TAG, "Unable to report drop result");
                    }
                }
                if (i2 == 4) {
                    setLocalDragState(null);
                }
            }
        }
        dragEvent.recycle();
    }

    private void handleOutOfResourcesException(Surface.OutOfResourcesException outOfResourcesException) {
        Log.e(TAG, "OutOfResourcesException initializing HW surface", outOfResourcesException);
        try {
            if (!this.mWindowSession.outOfMemory(this.mWindow) && Process.myUid() != 1000) {
                Slog.w(TAG, "No processes killed for memory; killing self");
                Process.killProcess(Process.myPid());
            }
        } catch (RemoteException unused) {
        }
        this.mLayoutRequested = true;
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

    /* JADX WARN: Code duplicated, block: B:16:0x0053  */
    private boolean measureHierarchy(View view, WindowManager.LayoutParams layoutParams, Resources resources, int i2, int i3) {
        boolean z2;
        if (layoutParams.width == -2) {
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            resources.getValue(17104903, this.mTmpValue, true);
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
        if (z2) {
            return false;
        }
        performMeasure(getRootMeasureSpec(i2, layoutParams.width), getRootMeasureSpec(i3, layoutParams.height));
        return (this.mWidth == view.getMeasuredWidth() && this.mHeight == view.getMeasuredHeight()) ? false : true;
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

    private void performDraw() {
        if (this.mAttachInfo.mScreenOn || this.mReportNextDraw) {
            boolean z2 = this.mFullRedrawNeeded;
            this.mFullRedrawNeeded = false;
            if (Build.USE_LCDC_COMPOSER && this.drawsoft) {
                try {
                    this.mWrotation = this.mWindowSession.getRotation(this.mWindow);
                } catch (RemoteException unused) {
                    Log.e(TAG, "                performDraw()            getRotation()  error~~~@!    ");
                    this.mWrotation = -1;
                }
                int i2 = this.mWrotation;
                if (i2 != this.mWrotation_old) {
                    this.fulldraw_pit = 5;
                }
                this.mWrotation_old = i2;
                int i3 = this.fulldraw_pit;
                if (i3 > 0) {
                    this.fulldraw_pit = i3 - 1;
                    z2 = true;
                }
            }
            boolean z3 = this.mUpdateTranformHint;
            this.mUpdateTranformHint = false;
            this.mIsDrawing = true;
            Trace.traceBegin(8L, "draw");
            try {
                draw(z2, z3);
                this.mIsDrawing = false;
                Trace.traceEnd(8L);
                if (this.mReportNextDraw) {
                    this.mReportNextDraw = false;
                    if (this.mSurfaceHolder != null && this.mSurface.isValid()) {
                        this.mSurfaceHolderCallback.surfaceRedrawNeeded(this.mSurfaceHolder);
                        SurfaceHolder.Callback[] callbacks = this.mSurfaceHolder.getCallbacks();
                        if (callbacks != null) {
                            for (SurfaceHolder.Callback callback : callbacks) {
                                if (callback instanceof SurfaceHolder.Callback2) {
                                    ((SurfaceHolder.Callback2) callback).surfaceRedrawNeeded(this.mSurfaceHolder);
                                }
                            }
                        }
                    }
                    try {
                        this.mWindowSession.finishDrawing(this.mWindow);
                    } catch (RemoteException unused2) {
                    }
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
        Trace.traceBegin(8L, "layout");
        try {
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            this.mInLayout = false;
            if (this.mLayoutRequesters.size() > 0 && (validLayoutRequesters = getValidLayoutRequesters(this.mLayoutRequesters, false)) != null) {
                this.mHandlingLayoutInLayoutRequest = true;
                int size = validLayoutRequesters.size();
                for (int i4 = 0; i4 < size; i4++) {
                    validLayoutRequesters.get(i4).requestLayout();
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
                                ((View) validLayoutRequesters2.get(i5)).requestLayout();
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
        Trace.traceBegin(8L, "measure");
        try {
            this.mView.measure(i2, i3);
        } finally {
            Trace.traceEnd(8L);
        }
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 24351. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:99)
        */
    private void performTraversals() {
        /*
            Method dump skipped, instruction units count: 2435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.view.ViewRootImpl.performTraversals():void");
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
        this.mPendingConfiguration.seq = 0;
        if (layoutParams != null && this.mOrigWindowType != layoutParams.type && this.mTargetSdkVersion < 14) {
            Slog.w(TAG, "Window type can not be changed after the window is added; ignoring change of " + this.mView);
            layoutParams.type = this.mOrigWindowType;
        }
        int iRelayout = this.mWindowSession.relayout(this.mWindow, this.mSeq, layoutParams, (int) ((this.mView.getMeasuredWidth() * f2) + 0.5f), (int) ((this.mView.getMeasuredHeight() * f2) + 0.5f), i2, z2 ? 1 : 0, this.mWinFrame, this.mPendingOverscanInsets, this.mPendingContentInsets, this.mPendingVisibleInsets, this.mPendingConfiguration, this.mSurface);
        if (objArr != false) {
            layoutParams.restore();
        }
        CompatibilityInfo.Translator translator = this.mTranslator;
        if (translator != null) {
            translator.translateRectInScreenToAppWinFrame(this.mWinFrame);
            this.mTranslator.translateRectInScreenToAppWindow(this.mPendingOverscanInsets);
            this.mTranslator.translateRectInScreenToAppWindow(this.mPendingContentInsets);
            this.mTranslator.translateRectInScreenToAppWindow(this.mPendingVisibleInsets);
        }
        return iRelayout;
    }

    private void removeSendWindowContentChangedCallback() {
        SendWindowContentChangedAccessibilityEvent sendWindowContentChangedAccessibilityEvent = this.mSendWindowContentChangedAccessibilityEvent;
        if (sendWindowContentChangedAccessibilityEvent != null) {
            this.mHandler.removeCallbacks(sendWindowContentChangedAccessibilityEvent);
        }
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
        Log.v(TAG, "0x" + hexString + "\tFrame time:\t" + j2);
        this.mFpsPrevTime = jCurrentTimeMillis;
        if (j3 > 1000) {
            Log.v(TAG, "0x" + hexString + "\tFPS:\t" + ((this.mFpsNumFrames * 1000.0f) / j3));
            this.mFpsStartTime = jCurrentTimeMillis;
            this.mFpsNumFrames = 0;
        }
    }

    public boolean attachFunctor(int i2) {
        HardwareRenderer hardwareRenderer = this.mAttachInfo.mHardwareRenderer;
        if (hardwareRenderer == null || !hardwareRenderer.isEnabled()) {
            return false;
        }
        View.AttachInfo attachInfo = this.mAttachInfo;
        return attachInfo.mHardwareRenderer.attachFunctor(attachInfo, i2);
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
        Log.d(TAG, "changeCanvasOpacity: opaque=" + z2);
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

    public void destroyHardwareLayers() {
        if (this.mThread != Thread.currentThread()) {
            HardwareRenderer hardwareRenderer = this.mAttachInfo.mHardwareRenderer;
            if (hardwareRenderer == null || !hardwareRenderer.isEnabled()) {
                return;
            }
            HardwareRenderer.trimMemory(60);
            return;
        }
        invalidateDisplayLists();
        HardwareRenderer hardwareRenderer2 = this.mAttachInfo.mHardwareRenderer;
        if (hardwareRenderer2 == null || !hardwareRenderer2.isEnabled()) {
            return;
        }
        this.mAttachInfo.mHardwareRenderer.destroyLayers(this.mView);
    }

    public void destroyHardwareResources() {
        invalidateDisplayLists();
        HardwareRenderer hardwareRenderer = this.mAttachInfo.mHardwareRenderer;
        if (hardwareRenderer != null) {
            hardwareRenderer.destroyHardwareResources(this.mView);
            this.mAttachInfo.mHardwareRenderer.destroy(false);
        }
    }

    public void detachFunctor(int i2) {
        HardwareRenderer hardwareRenderer = this.mAttachInfo.mHardwareRenderer;
        if (hardwareRenderer != null) {
            hardwareRenderer.detachFunctor(i2);
        }
    }

    public boolean die(boolean z2) {
        if (z2 && !this.mIsInTraversal) {
            doDie();
            return false;
        }
        if (this.mIsDrawing) {
            Log.e(TAG, "Attempting to destroy the window while drawing!\n  window=" + this + ", title=" + ((Object) this.mWindowAttributes.getTitle()));
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
            HardwareRenderer hardwareRenderer = this.mAttachInfo.mHardwareRenderer;
            if (hardwareRenderer != null && hardwareRenderer.isEnabled()) {
                this.mAttachInfo.mHardwareRenderer.validate();
            }
            this.mAttachInfo.mTreeObserver.dispatchOnWindowAttachedChange(false);
            this.mView.dispatchDetachedFromWindow();
        }
        this.mAccessibilityInteractionConnectionManager.ensureNoConnection();
        this.mAccessibilityManager.removeAccessibilityStateChangeListener(this.mAccessibilityInteractionConnectionManager);
        removeSendWindowContentChangedCallback();
        destroyHardwareRenderer();
        setAccessibilityFocus(null, null);
        this.mView.assignParent(null);
        this.mView = null;
        View.AttachInfo attachInfo = this.mAttachInfo;
        attachInfo.mRootView = null;
        attachInfo.mSurface = null;
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
        unscheduleTraversals();
    }

    public void dispatchDoneAnimating() {
        this.mHandler.sendEmptyMessage(22);
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

    public void dispatchFinishInputConnection(InputConnection inputConnection) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(12, inputConnection));
    }

    public void dispatchFlushHardwareLayerUpdates() {
        this.mHandler.removeMessages(25);
        ViewRootHandler viewRootHandler = this.mHandler;
        viewRootHandler.sendMessageAtFrontOfQueue(viewRootHandler.obtainMessage(25));
    }

    public void dispatchGetNewSurface() {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(9));
    }

    public void dispatchInputEvent(InputEvent inputEvent) {
        Message messageObtainMessage = this.mHandler.obtainMessage(7, inputEvent);
        messageObtainMessage.setAsynchronous(true);
        this.mHandler.sendMessage(messageObtainMessage);
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
            i2 = (int) (((double) pointF.f139x) + 0.5d);
            i3 = (int) (((double) pointF.f140y) + 0.5d);
        }
        this.mHandler.sendMessage(this.mHandler.obtainMessage(24, i2, i3));
    }

    public void dispatchResized(Rect rect, Rect rect2, Rect rect3, Rect rect4, boolean z2, Configuration configuration) {
        Message messageObtainMessage = this.mHandler.obtainMessage(z2 ? 5 : 4);
        CompatibilityInfo.Translator translator = this.mTranslator;
        if (translator != null) {
            translator.translateRectInScreenToAppWindow(rect);
            this.mTranslator.translateRectInScreenToAppWindow(rect2);
            this.mTranslator.translateRectInScreenToAppWindow(rect3);
            this.mTranslator.translateRectInScreenToAppWindow(rect4);
        }
        f fVarB = f.b();
        boolean z3 = Binder.getCallingPid() == Process.myPid();
        if (z3) {
            rect = new Rect(rect);
        }
        fVarB.f16709c = rect;
        if (z3) {
            rect3 = new Rect(rect3);
        }
        fVarB.f16710d = rect3;
        if (z3) {
            rect4 = new Rect(rect4);
        }
        fVarB.f16711e = rect4;
        if (z3 && configuration != null) {
            configuration = new Configuration(configuration);
        }
        fVarB.f16712f = configuration;
        if (z3) {
            rect2 = new Rect(rect2);
        }
        fVarB.f16713g = rect2;
        messageObtainMessage.obj = fVarB;
        this.mHandler.sendMessage(messageObtainMessage);
    }

    public void dispatchScreenStateChange(boolean z2) {
        Message messageObtainMessage = this.mHandler.obtainMessage(20);
        messageObtainMessage.arg1 = z2 ? 1 : 0;
        this.mHandler.sendMessage(messageObtainMessage);
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

    public void dispatchUnhandledKey(KeyEvent keyEvent) {
        KeyCharacterMap.FallbackAction fallbackAction;
        if ((keyEvent.getFlags() & 1024) != 0 || (fallbackAction = keyEvent.getKeyCharacterMap().getFallbackAction(keyEvent.getKeyCode(), keyEvent.getMetaState())) == null) {
            return;
        }
        KeyEvent keyEventObtain = KeyEvent.obtain(keyEvent.getDownTime(), keyEvent.getEventTime(), keyEvent.getAction(), fallbackAction.keyCode, keyEvent.getRepeatCount(), fallbackAction.metaState, keyEvent.getDeviceId(), keyEvent.getScanCode(), keyEvent.getFlags() | 1024, keyEvent.getSource(), null);
        fallbackAction.recycle();
        dispatchInputEvent(keyEventObtain);
    }

    public void disposeResizeBuffer() {
        HardwareRenderer hardwareRenderer;
        if (this.mResizeBuffer == null || (hardwareRenderer = this.mAttachInfo.mHardwareRenderer) == null) {
            return;
        }
        hardwareRenderer.safelyRun(new Runnable() { // from class: android.view.ViewRootImpl.1
            @Override // java.lang.Runnable
            public void run() {
                ViewRootImpl.this.mResizeBuffer.destroy();
                ViewRootImpl.this.mResizeBuffer = null;
            }
        });
    }

    public void doConsumeBatchedInput(long j2) {
        if (this.mConsumeBatchedInputScheduled) {
            this.mConsumeBatchedInputScheduled = false;
            WindowInputEventReceiver windowInputEventReceiver = this.mInputEventReceiver;
            if (windowInputEventReceiver != null && windowInputEventReceiver.consumeBatchedInputEvents(j2)) {
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
                invalidateDisplayLists();
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

    public void doProcessInputEvents() {
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
            this.mHandler.getLooper().removeSyncBarrier(this.mTraversalBarrier);
            if (this.mProfile) {
                Debug.startMethodTracing("ViewAncestor");
            }
            Trace.traceBegin(8L, "performTraversals");
            try {
                performTraversals();
                Trace.traceEnd(8L);
                if (this.mProfile) {
                    Debug.stopMethodTracing();
                    this.mProfile = false;
                }
            } catch (Throwable th) {
                Trace.traceEnd(8L);
                throw th;
            }
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "  ";
        printWriter.print(str);
        printWriter.println("ViewRoot:");
        printWriter.print(str2);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoved=");
        printWriter.println(this.mRemoved);
        printWriter.print(str2);
        printWriter.print("mConsumeBatchedInputScheduled=");
        printWriter.println(this.mConsumeBatchedInputScheduled);
        printWriter.print(str2);
        printWriter.print("mPendingInputEventCount=");
        printWriter.println(this.mPendingInputEventCount);
        printWriter.print(str2);
        printWriter.print("mProcessInputEventsScheduled=");
        printWriter.println(this.mProcessInputEventsScheduled);
        printWriter.print(str2);
        printWriter.print("mTraversalScheduled=");
        printWriter.print(this.mTraversalScheduled);
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

    public void enqueueDisplayList(DisplayList displayList) {
        this.mDisplayLists.add(displayList);
    }

    public void enqueueInputEvent(InputEvent inputEvent) {
        enqueueInputEvent(inputEvent, null, 0, false);
    }

    public boolean ensureTouchMode(boolean z2) {
        if (this.mAttachInfo.mInTouchMode == z2) {
            return false;
        }
        try {
            if (!isInLocalFocusMode()) {
                this.mWindowSession.setInTouchMode(z2);
            }
            return ensureTouchModeLocally(z2);
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void flushHardwareLayerUpdates() {
        HardwareRenderer hardwareRenderer = this.mAttachInfo.mHardwareRenderer;
        if (hardwareRenderer != null && hardwareRenderer.isEnabled() && this.mAttachInfo.mHardwareRenderer.validate()) {
            this.mAttachInfo.mHardwareRenderer.flushLayerUpdates();
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
                view.requestFocus();
                return;
            }
            View viewFindFocus = this.mView.findFocus();
            if ((viewFindFocus instanceof ViewGroup) && ((ViewGroup) viewFindFocus).getDescendantFocusability() == 262144 && isViewDescendantOf(view, viewFindFocus)) {
                view.requestFocus();
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

    public int getHostVisibility() {
        if (this.mAppVisible) {
            return this.mView.getVisibility();
        }
        return 8;
    }

    public void getLastTouchPoint(Point point) {
        PointF pointF = this.mLastTouchPoint;
        point.f137x = (int) pointF.f139x;
        point.f138y = (int) pointF.f140y;
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

    public View getView() {
        return this.mView;
    }

    public void handleAppVisibility(boolean z2) {
        if (this.mAppVisible != z2) {
            this.mAppVisible = z2;
            scheduleTraversals();
        }
    }

    public void handleDispatchDoneAnimating() {
        if (this.mWindowsAnimating) {
            this.mWindowsAnimating = false;
            if (!this.mDirty.isEmpty() || this.mIsAnimating || this.mFullRedrawNeeded) {
                scheduleTraversals();
            }
        }
    }

    public void handleDispatchSystemUiVisibilityChanged(SystemUiVisibilityInfo systemUiVisibilityInfo) {
        int i2;
        int i3 = this.mSeq;
        int i4 = systemUiVisibilityInfo.seq;
        if (i3 != i4) {
            this.mSeq = i4;
            this.mAttachInfo.mForceReportNewAttributes = true;
            scheduleTraversals();
        }
        View view = this.mView;
        if (view == null) {
            return;
        }
        int i5 = systemUiVisibilityInfo.localChanges;
        if (i5 != 0) {
            view.updateLocalSystemUiVisibility(systemUiVisibilityInfo.localValue, i5);
        }
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null || (i2 = systemUiVisibilityInfo.globalVisibility & 7) == attachInfo.mGlobalSystemUiVisibility) {
            return;
        }
        attachInfo.mGlobalSystemUiVisibility = i2;
        this.mView.dispatchSystemUiVisibilityChanged(i2);
    }

    public void handleGetNewSurface() {
        this.mNewSurfaceNeeded = true;
        this.mFullRedrawNeeded = true;
        scheduleTraversals();
    }

    public void handleScreenStateChange(boolean z2) {
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (z2 != attachInfo.mScreenOn) {
            attachInfo.mScreenOn = z2;
            View view = this.mView;
            if (view != null) {
                view.dispatchScreenStateChanged(z2 ? 1 : 0);
            }
            if (z2) {
                this.mFullRedrawNeeded = true;
                scheduleTraversals();
            }
        }
    }

    public void invalidate() {
        this.mDirty.set(0, 0, this.mWidth, this.mHeight);
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
        if (!this.mWillDrawSoon && (zIntersect || this.mIsAnimating)) {
            scheduleTraversals();
        }
        return null;
    }

    public void invalidateDisplayLists() {
        ArrayList<DisplayList> arrayList = this.mDisplayLists;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            DisplayList displayList = arrayList.get(i2);
            if (displayList.isDirty()) {
                displayList.reset();
            }
        }
        arrayList.clear();
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

    public void loadSystemProperties() {
        this.mHandler.post(new Runnable() { // from class: android.view.ViewRootImpl.4
            @Override // java.lang.Runnable
            public void run() {
                ViewRootImpl.this.mProfileRendering = SystemProperties.getBoolean(ViewRootImpl.PROPERTY_PROFILE_RENDERING, false);
                ViewRootImpl viewRootImpl = ViewRootImpl.this;
                viewRootImpl.profileRendering(viewRootImpl.mAttachInfo.mHasWindowFocus);
                ViewRootImpl.this.mMediaDisabled = SystemProperties.getBoolean(ViewRootImpl.PROPERTY_MEDIA_DISABLED, false);
                ViewRootImpl viewRootImpl2 = ViewRootImpl.this;
                HardwareRenderer hardwareRenderer = viewRootImpl2.mAttachInfo.mHardwareRenderer;
                if (hardwareRenderer != null && hardwareRenderer.loadSystemProperties(viewRootImpl2.mHolder.getSurface())) {
                    ViewRootImpl.this.invalidate();
                }
                boolean z2 = SystemProperties.getBoolean(View.DEBUG_LAYOUT_PROPERTY, false);
                ViewRootImpl viewRootImpl3 = ViewRootImpl.this;
                View.AttachInfo attachInfo = viewRootImpl3.mAttachInfo;
                if (z2 != attachInfo.mDebugLayout) {
                    attachInfo.mDebugLayout = z2;
                    if (viewRootImpl3.mHandler.hasMessages(23)) {
                        return;
                    }
                    ViewRootImpl.this.mHandler.sendEmptyMessageDelayed(23, 200L);
                }
            }
        });
    }

    @Override // android.view.ViewParent
    public void notifySubtreeAccessibilityStateChanged(View view, View view2, int i2) {
        postSendWindowContentChangedCallback(view2, i2);
    }

    @Override // android.view.HardwareRenderer.HardwareDrawCallbacks
    public void onHardwarePostDraw(HardwareCanvas hardwareCanvas) {
        if (this.mResizeBuffer != null) {
            this.mResizePaint.setAlpha(this.mResizeAlpha);
            hardwareCanvas.drawHardwareLayer(this.mResizeBuffer, 0.0f, this.mHardwareYOffset, this.mResizePaint);
        }
        drawAccessibilityFocusedDrawableIfNeeded(hardwareCanvas);
    }

    @Override // android.view.HardwareRenderer.HardwareDrawCallbacks
    public void onHardwarePreDraw(HardwareCanvas hardwareCanvas) {
        hardwareCanvas.translate(0.0f, -this.mHardwareYOffset);
    }

    public void outputDisplayList(View view) {
        DisplayList displayList;
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null || attachInfo.mHardwareCanvas == null || (displayList = view.getDisplayList()) == null) {
            return;
        }
        this.mAttachInfo.mHardwareCanvas.outputDisplayList(displayList);
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
        if (this.mMediaDisabled) {
            return;
        }
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
            Log.e(TAG, "FATAL EXCEPTION when attempting to play sound effect: " + e2);
            e2.printStackTrace();
        }
    }

    public void profile() {
        this.mProfile = true;
    }

    public void pushHardwareLayerUpdate(HardwareLayer hardwareLayer) {
        HardwareRenderer hardwareRenderer = this.mAttachInfo.mHardwareRenderer;
        if (hardwareRenderer == null || !hardwareRenderer.isEnabled()) {
            return;
        }
        this.mAttachInfo.mHardwareRenderer.pushLayerUpdate(hardwareLayer);
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

    @Override // android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        checkThread();
        scheduleTraversals();
    }

    @Override // android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        boolean zScrollToRectOrFocus = scrollToRectOrFocus(rect, z2);
        if (rect != null) {
            this.mTempRect.set(rect);
            this.mTempRect.offset(0, -this.mCurScrollY);
            Rect rect2 = this.mTempRect;
            View.AttachInfo attachInfo = this.mAttachInfo;
            rect2.offset(attachInfo.mWindowLeft, attachInfo.mWindowTop);
            try {
                this.mWindowSession.onRectangleOnScreenRequested(this.mWindow, this.mTempRect, z2);
            } catch (RemoteException unused) {
            }
        }
        return zScrollToRectOrFocus;
    }

    @Override // android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z2) {
    }

    @Override // android.view.ViewParent
    public void requestFitSystemWindows() {
        checkThread();
        this.mFitSystemWindowsRequested = true;
        scheduleTraversals();
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

    @Override // android.view.ViewParent
    public boolean requestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        if (this.mView == null) {
            return false;
        }
        int eventType = accessibilityEvent.getEventType();
        if (eventType == 32768) {
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

    public void scheduleTraversals() {
        if (this.mTraversalScheduled) {
            return;
        }
        this.mTraversalScheduled = true;
        this.mTraversalBarrier = this.mHandler.getLooper().postSyncBarrier();
        this.mChoreographer.postCallback(2, this.mTraversalRunnable, null);
        scheduleConsumeBatchedInput();
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00bf  */
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
                            if (i3 - height < i2) {
                                height -= i2 - (i3 - height);
                            } else if (rect4.bottom - height > this.mView.getHeight() - rect3.bottom) {
                                height += (this.mTempRect.bottom - height) - (this.mView.getHeight() - rect3.bottom);
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
            if (z2 || this.mResizeBuffer != null) {
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
            view2.clearAccessibilityFocusNoCallbacks();
            AccessibilityNodeProvider accessibilityNodeProvider = view2.getAccessibilityNodeProvider();
            if (accessibilityNodeProvider != null) {
                accessibilityNodeInfo2.getBoundsInParent(this.mTempRect);
                view2.invalidate(this.mTempRect);
                accessibilityNodeProvider.performAction(AccessibilityNodeInfo.getVirtualDescendantId(accessibilityNodeInfo2.getSourceNodeId()), 128, null);
            }
            accessibilityNodeInfo2.recycle();
        }
        View view3 = this.mAccessibilityFocusedHost;
        if (view3 != null) {
            view3.clearAccessibilityFocusNoCallbacks();
        }
        this.mAccessibilityFocusedHost = view;
        this.mAccessibilityFocusedVirtualView = accessibilityNodeInfo;
    }

    public void setDragFocus(View view) {
        if (this.mCurrentDragView != view) {
            this.mCurrentDragView = view;
        }
    }

    public void setDrawDuringWindowsAnimating(boolean z2) {
        this.mDrawDuringWindowsAnimating = z2;
        if (z2) {
            handleDispatchDoneAnimating();
        }
    }

    public void setLayoutParams(WindowManager.LayoutParams layoutParams, boolean z2) {
        synchronized (this) {
            WindowManager.LayoutParams layoutParams2 = this.mWindowAttributes;
            int i2 = layoutParams2.softInputMode;
            this.mClientWindowLayoutFlags = layoutParams.flags;
            int i3 = layoutParams2.privateFlags & 128;
            layoutParams.systemUiVisibility = layoutParams2.systemUiVisibility;
            layoutParams.subtreeSystemUiVisibility = layoutParams2.subtreeSystemUiVisibility;
            int iCopyFrom = layoutParams2.copyFrom(layoutParams);
            this.mWindowAttributesChangesFlag = iCopyFrom;
            if ((iCopyFrom & 524288) != 0) {
                this.mAttachInfo.mRecomputeGlobalAttributes = true;
            }
            WindowManager.LayoutParams layoutParams3 = this.mWindowAttributes;
            if (layoutParams3.packageName == null) {
                layoutParams3.packageName = this.mBasePackageName;
            }
            layoutParams3.privateFlags = i3 | layoutParams3.privateFlags;
            applyKeepScreenOnFlag(layoutParams3);
            if (z2) {
                this.mSoftInputMode = layoutParams.softInputMode;
                requestLayout();
            }
            if ((layoutParams.softInputMode & 240) == 0) {
                WindowManager.LayoutParams layoutParams4 = this.mWindowAttributes;
                layoutParams4.softInputMode = (layoutParams4.softInputMode & (-241)) | (i2 & 240);
            }
            this.mWindowAttributesChanged = true;
            this.mUpdateTranformHint = true;
            scheduleTraversals();
        }
    }

    public void setLocalDragState(Object obj) {
        this.mLocalDragState = obj;
    }

    public void setStopped(boolean z2) {
        if (this.mStopped != z2) {
            this.mStopped = z2;
            if (z2) {
                return;
            }
            scheduleTraversals();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setView(View view, WindowManager.LayoutParams layoutParams, View view2) {
        boolean z2;
        synchronized (this) {
            if (this.mView == null) {
                this.mView = view;
                this.mViewLayoutDirectionInitial = view.getRawLayoutDirection();
                this.mFallbackEventHandler.setView(view);
                this.mWindowAttributes.copyFrom(layoutParams);
                WindowManager.LayoutParams layoutParams2 = this.mWindowAttributes;
                if (layoutParams2.packageName == null) {
                    layoutParams2.packageName = this.mBasePackageName;
                }
                this.mClientWindowLayoutFlags = layoutParams2.flags;
                setAccessibilityFocus(null, null);
                if (view instanceof d) {
                    SurfaceHolder.Callback2 callback2B = ((d) view).b();
                    this.mSurfaceHolderCallback = callback2B;
                    if (callback2B != null) {
                        TakenSurfaceHolder takenSurfaceHolder = new TakenSurfaceHolder();
                        this.mSurfaceHolder = takenSurfaceHolder;
                        takenSurfaceHolder.setFormat(0);
                    }
                }
                CompatibilityInfo compatibilityInfo = this.mDisplayAdjustments.getCompatibilityInfo();
                this.mTranslator = compatibilityInfo.getTranslator();
                this.mDisplayAdjustments.setActivityToken(layoutParams2.token);
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
                try {
                    try {
                        this.mOrigWindowType = this.mWindowAttributes.type;
                        this.mAttachInfo.mRecomputeGlobalAttributes = true;
                        collectViewAttributes();
                        int iAddToDisplay = this.mWindowSession.addToDisplay(this.mWindow, this.mSeq, this.mWindowAttributes, getHostVisibility(), this.mDisplay.getDisplayId(), this.mAttachInfo.mContentInsets, this.mInputChannel);
                        if (z2) {
                            layoutParams2.restore();
                        }
                        CompatibilityInfo.Translator translator3 = this.mTranslator;
                        if (translator3 != null) {
                            translator3.translateRectInScreenToAppWindow(this.mAttachInfo.mContentInsets);
                        }
                        this.mPendingOverscanInsets.set(0, 0, 0, 0);
                        this.mPendingContentInsets.set(this.mAttachInfo.mContentInsets);
                        this.mPendingVisibleInsets.set(0, 0, 0, 0);
                        if (iAddToDisplay < 0) {
                            this.mAttachInfo.mRootView = null;
                            this.mAdded = false;
                            this.mFallbackEventHandler.setView(null);
                            unscheduleTraversals();
                            setAccessibilityFocus(null, null);
                            switch (iAddToDisplay) {
                                case -9:
                                    throw new WindowManager.InvalidDisplayException("Unable to add window " + this.mWindow + " -- the specified display can not be found");
                                case -8:
                                    throw new WindowManager.BadTokenException("Unable to add window " + this.mWindow + " -- permission denied for this window type");
                                case -7:
                                    throw new WindowManager.BadTokenException("Unable to add window " + this.mWindow + " -- another window of this type already exists");
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
                        if (view instanceof d) {
                            this.mInputQueueCallback = ((d) view).a();
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
                        EarlyPostImeInputStage earlyPostImeInputStage = new EarlyPostImeInputStage(new NativePostImeInputStage(new ViewPostImeInputStage(new SyntheticInputStage()), "aq:native-post-ime:" + ((Object) title)));
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

    @Override // android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        return false;
    }

    @Override // android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
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
            this.mHandler.getLooper().removeSyncBarrier(this.mTraversalBarrier);
            this.mChoreographer.removeCallbacks(2, this.mTraversalRunnable, null);
        }
    }

    public void updateConfiguration(Configuration configuration, boolean z2) {
        CompatibilityInfo compatibilityInfo = this.mDisplayAdjustments.getCompatibilityInfo();
        if (!compatibilityInfo.equals(CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO)) {
            Configuration configuration2 = new Configuration(configuration);
            compatibilityInfo.applyToConfiguration(this.mNoncompatDensity, configuration2);
            configuration = configuration2;
        }
        ArrayList<ComponentCallbacks> arrayList = sConfigCallbacks;
        synchronized (arrayList) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                sConfigCallbacks.get(size).onConfigurationChanged(configuration);
            }
        }
        View view = this.mView;
        if (view != null) {
            Configuration configuration3 = view.getResources().getConfiguration();
            if (z2 || this.mLastConfiguration.diff(configuration3) != 0) {
                int layoutDirection = this.mLastConfiguration.getLayoutDirection();
                int layoutDirection2 = configuration3.getLayoutDirection();
                this.mLastConfiguration.setTo(configuration3);
                if (layoutDirection != layoutDirection2 && this.mViewLayoutDirectionInitial == 2) {
                    this.mView.setLayoutDirection(layoutDirection2);
                }
                this.mView.dispatchConfigurationChanged(configuration3);
                if (Build.USE_LCDC_COMPOSER) {
                    this.mConfigurationChanged = true;
                }
            }
        }
    }

    public void windowFocusChanged(boolean z2, boolean z3) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 6;
        messageObtain.arg1 = z2 ? 1 : 0;
        messageObtain.arg2 = z3 ? 1 : 0;
        this.mHandler.sendMessage(messageObtain);
    }

    public void enqueueInputEvent(InputEvent inputEvent, InputEventReceiver inputEventReceiver, int i2, boolean z2) {
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
        private long mLastConfirmKeyTime;
        private float mLastX;
        private float mLastY;
        private int mPendingKeyCode;
        private long mPendingKeyDownTime;
        private int mPendingKeyMetaState;
        private int mPendingKeyRepeatCount;
        private long mStartTime;
        private float mStartX;
        private float mStartY;
        private VelocityTracker mVelocityTracker;

        public SyntheticTouchNavigationHandler() {
            super(true);
            this.mCurrentDeviceId = -1;
            this.mActivePointerId = -1;
            this.mPendingKeyCode = 0;
            this.mLastConfirmKeyTime = LinkQualityInfo.UNKNOWN_LONG;
            this.mFlingRunnable = new Runnable() { // from class: android.view.ViewRootImpl.SyntheticTouchNavigationHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    SyntheticTouchNavigationHandler syntheticTouchNavigationHandler = SyntheticTouchNavigationHandler.this;
                    syntheticTouchNavigationHandler.sendKeyDownOrRepeat(jUptimeMillis, syntheticTouchNavigationHandler.mPendingKeyCode, SyntheticTouchNavigationHandler.this.mPendingKeyMetaState);
                    SyntheticTouchNavigationHandler.access$1432(SyntheticTouchNavigationHandler.this, SyntheticTouchNavigationHandler.FLING_TICK_DECAY);
                    if (SyntheticTouchNavigationHandler.this.postFling(jUptimeMillis)) {
                        return;
                    }
                    SyntheticTouchNavigationHandler.this.mFlinging = false;
                    SyntheticTouchNavigationHandler.this.finishKeys(jUptimeMillis);
                }
            };
        }

        public static /* synthetic */ float access$1432(SyntheticTouchNavigationHandler syntheticTouchNavigationHandler, float f2) {
            float f3 = syntheticTouchNavigationHandler.mFlingVelocity * f2;
            syntheticTouchNavigationHandler.mFlingVelocity = f3;
            return f3;
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
                        this.mConfigMaxFlingVelocity = f2 * 20.0f;
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
                    this.mStartTime = eventTime;
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
                this.mAccumulatedX += x2 - this.mLastX;
                this.mAccumulatedY += y3 - this.mLastY;
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
}
