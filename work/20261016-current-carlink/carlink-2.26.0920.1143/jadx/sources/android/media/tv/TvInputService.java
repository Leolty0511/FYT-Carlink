package android.media.tv;

import android.accessibilityservice.c;
import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.Service;
import android.app.m;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.hardware.hdmi.HdmiDeviceInfo;
import android.media.PlaybackParams;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Process;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.util.TimedRemoteCaller;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventReceiver;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.os.SomeArgs;
import com.android.internal.util.Preconditions;
import com.google.android.material.badge.BadgeDrawable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class TvInputService extends Service {
    private static final boolean DEBUG = false;
    private static final int DETACH_OVERLAY_VIEW_TIMEOUT_MS = 5000;
    public static final String SERVICE_INTERFACE = "android.media.tv.TvInputService";
    public static final String SERVICE_META_DATA = "android.media.tv.input";
    private static final String TAG = "TvInputService";
    private TvInputManager mTvInputManager;
    private final Handler mServiceHandler = new ServiceHandler();
    private final RemoteCallbackList<ITvInputServiceCallback> mCallbacks = new RemoteCallbackList<>();

    public static abstract class HardwareSession extends Session {
        private TvInputManager.Session mHardwareSession;
        private final TvInputManager.SessionCallback mHardwareSessionCallback;
        private ITvInputSession mProxySession;
        private ITvInputSessionCallback mProxySessionCallback;
        private Handler mServiceHandler;

        public HardwareSession(Context context) {
            super(context);
            this.mHardwareSessionCallback = new TvInputManager.SessionCallback() { // from class: android.media.tv.TvInputService.HardwareSession.1
                @Override // android.media.tv.TvInputManager.SessionCallback
                public void onSessionCreated(TvInputManager.Session session) {
                    HardwareSession.this.mHardwareSession = session;
                    SomeArgs someArgsObtain = SomeArgs.obtain();
                    if (session != null) {
                        HardwareSession hardwareSession = HardwareSession.this;
                        someArgsObtain.arg1 = hardwareSession;
                        someArgsObtain.arg2 = hardwareSession.mProxySession;
                        someArgsObtain.arg3 = HardwareSession.this.mProxySessionCallback;
                        someArgsObtain.arg4 = session.getToken();
                        session.tune(TvContract.buildChannelUriForPassthroughInput(HardwareSession.this.getHardwareInputId()));
                    } else {
                        someArgsObtain.arg1 = null;
                        someArgsObtain.arg2 = null;
                        someArgsObtain.arg3 = HardwareSession.this.mProxySessionCallback;
                        someArgsObtain.arg4 = null;
                        HardwareSession.this.onRelease();
                    }
                    HardwareSession.this.mServiceHandler.obtainMessage(2, someArgsObtain).sendToTarget();
                }

                @Override // android.media.tv.TvInputManager.SessionCallback
                public void onVideoAvailable(TvInputManager.Session session) {
                    if (HardwareSession.this.mHardwareSession == session) {
                        HardwareSession.this.onHardwareVideoAvailable();
                    }
                }

                @Override // android.media.tv.TvInputManager.SessionCallback
                public void onVideoUnavailable(TvInputManager.Session session, int i2) {
                    if (HardwareSession.this.mHardwareSession == session) {
                        HardwareSession.this.onHardwareVideoUnavailable(i2);
                    }
                }
            };
        }

        public abstract String getHardwareInputId();

        public void onHardwareVideoAvailable() {
        }

        public void onHardwareVideoUnavailable(int i2) {
        }

        @Override // android.media.tv.TvInputService.Session
        public final boolean onSetSurface(Surface surface) {
            Log.e(TvInputService.TAG, "onSetSurface() should not be called in HardwareProxySession.");
            return false;
        }

        @Override // android.media.tv.TvInputService.Session
        public void release() {
            TvInputManager.Session session = this.mHardwareSession;
            if (session != null) {
                session.release();
                this.mHardwareSession = null;
            }
            super.release();
        }
    }

    public static final class OverlayViewCleanUpTask extends AsyncTask<View, Void, Void> {
        private OverlayViewCleanUpTask() {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(View... viewArr) {
            View view = viewArr[0];
            try {
                Thread.sleep(TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
                if (!isCancelled() && view.isAttachedToWindow()) {
                    Log.e(TvInputService.TAG, "Time out on releasing overlay view. Killing " + view.getContext().getPackageName());
                    Process.killProcess(Process.myPid());
                }
            } catch (InterruptedException unused) {
            }
            return null;
        }
    }

    public static abstract class RecordingSession {
        final Handler mHandler;
        private final Object mLock = new Object();
        private final List<Runnable> mPendingActions = new ArrayList();
        private ITvInputSessionCallback mSessionCallback;

        public RecordingSession(Context context) {
            this.mHandler = new Handler(context.getMainLooper());
        }

        private void executeOrPostRunnableOnMainThread(Runnable runnable) {
            synchronized (this.mLock) {
                if (this.mSessionCallback == null) {
                    this.mPendingActions.add(runnable);
                } else if (this.mHandler.getLooper().isCurrentThread()) {
                    runnable.run();
                } else {
                    this.mHandler.post(runnable);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initialize(ITvInputSessionCallback iTvInputSessionCallback) {
            synchronized (this.mLock) {
                this.mSessionCallback = iTvInputSessionCallback;
                Iterator<Runnable> it = this.mPendingActions.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
                this.mPendingActions.clear();
            }
        }

        public void appPrivateCommand(String str, Bundle bundle) {
            onAppPrivateCommand(str, bundle);
        }

        public void notifyError(final int i2) {
            if (i2 < 0 || i2 > 2) {
                Log.w(TvInputService.TAG, "notifyError - invalid error code (" + i2 + ") is changed to RECORDING_ERROR_UNKNOWN.");
                i2 = 0;
            }
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.RecordingSession.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (RecordingSession.this.mSessionCallback != null) {
                            RecordingSession.this.mSessionCallback.onError(i2);
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in notifyError", e2);
                    }
                }
            });
        }

        public void notifyRecordingStopped(final Uri uri) {
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.RecordingSession.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (RecordingSession.this.mSessionCallback != null) {
                            RecordingSession.this.mSessionCallback.onRecordingStopped(uri);
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in notifyRecordingStopped", e2);
                    }
                }
            });
        }

        public void notifySessionEvent(final String str, final Bundle bundle) {
            Preconditions.checkNotNull(str);
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.RecordingSession.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (RecordingSession.this.mSessionCallback != null) {
                            RecordingSession.this.mSessionCallback.onSessionEvent(str, bundle);
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in sending event (event=" + str + ")", e2);
                    }
                }
            });
        }

        public void notifyTuned(final Uri uri) {
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.RecordingSession.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (RecordingSession.this.mSessionCallback != null) {
                            RecordingSession.this.mSessionCallback.onTuned(uri);
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in notifyTuned", e2);
                    }
                }
            });
        }

        public void onAppPrivateCommand(String str, Bundle bundle) {
        }

        public abstract void onRelease();

        public abstract void onStartRecording(Uri uri);

        public abstract void onStopRecording();

        public abstract void onTune(Uri uri);

        public void onTune(Uri uri, Bundle bundle) {
            onTune(uri);
        }

        public void release() {
            onRelease();
        }

        public void startRecording(Uri uri) {
            onStartRecording(uri);
        }

        public void stopRecording() {
            onStopRecording();
        }

        public void tune(Uri uri, Bundle bundle) {
            onTune(uri, bundle);
        }
    }

    @SuppressLint({"HandlerLeak"})
    public final class ServiceHandler extends Handler {
        private static final int DO_ADD_HARDWARE_INPUT = 4;
        private static final int DO_ADD_HDMI_INPUT = 6;
        private static final int DO_CREATE_RECORDING_SESSION = 3;
        private static final int DO_CREATE_SESSION = 1;
        private static final int DO_NOTIFY_SESSION_CREATED = 2;
        private static final int DO_REMOVE_HARDWARE_INPUT = 5;
        private static final int DO_REMOVE_HDMI_INPUT = 7;

        private ServiceHandler() {
        }

        private void broadcastAddHardwareInput(int i2, TvInputInfo tvInputInfo) {
            int iBeginBroadcast = TvInputService.this.mCallbacks.beginBroadcast();
            for (int i3 = 0; i3 < iBeginBroadcast; i3++) {
                try {
                    ((ITvInputServiceCallback) TvInputService.this.mCallbacks.getBroadcastItem(i3)).addHardwareInput(i2, tvInputInfo);
                } catch (RemoteException e2) {
                    Log.e(TvInputService.TAG, "error in broadcastAddHardwareInput", e2);
                }
            }
            TvInputService.this.mCallbacks.finishBroadcast();
        }

        private void broadcastAddHdmiInput(int i2, TvInputInfo tvInputInfo) {
            int iBeginBroadcast = TvInputService.this.mCallbacks.beginBroadcast();
            for (int i3 = 0; i3 < iBeginBroadcast; i3++) {
                try {
                    ((ITvInputServiceCallback) TvInputService.this.mCallbacks.getBroadcastItem(i3)).addHdmiInput(i2, tvInputInfo);
                } catch (RemoteException e2) {
                    Log.e(TvInputService.TAG, "error in broadcastAddHdmiInput", e2);
                }
            }
            TvInputService.this.mCallbacks.finishBroadcast();
        }

        private void broadcastRemoveHardwareInput(String str) {
            int iBeginBroadcast = TvInputService.this.mCallbacks.beginBroadcast();
            for (int i2 = 0; i2 < iBeginBroadcast; i2++) {
                try {
                    ((ITvInputServiceCallback) TvInputService.this.mCallbacks.getBroadcastItem(i2)).removeHardwareInput(str);
                } catch (RemoteException e2) {
                    Log.e(TvInputService.TAG, "error in broadcastRemoveHardwareInput", e2);
                }
            }
            TvInputService.this.mCallbacks.finishBroadcast();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    SomeArgs someArgs = (SomeArgs) message.obj;
                    InputChannel inputChannel = (InputChannel) someArgs.arg1;
                    ITvInputSessionCallback iTvInputSessionCallback = (ITvInputSessionCallback) someArgs.arg2;
                    String str = (String) someArgs.arg3;
                    someArgs.recycle();
                    Session sessionOnCreateSession = TvInputService.this.onCreateSession(str);
                    if (sessionOnCreateSession != null) {
                        ITvInputSessionWrapper iTvInputSessionWrapper = new ITvInputSessionWrapper(TvInputService.this, sessionOnCreateSession, inputChannel);
                        if (!(sessionOnCreateSession instanceof HardwareSession)) {
                            SomeArgs someArgsObtain = SomeArgs.obtain();
                            someArgsObtain.arg1 = sessionOnCreateSession;
                            someArgsObtain.arg2 = iTvInputSessionWrapper;
                            someArgsObtain.arg3 = iTvInputSessionCallback;
                            someArgsObtain.arg4 = null;
                            TvInputService.this.mServiceHandler.obtainMessage(2, someArgsObtain).sendToTarget();
                        } else {
                            HardwareSession hardwareSession = (HardwareSession) sessionOnCreateSession;
                            String hardwareInputId = hardwareSession.getHardwareInputId();
                            if (!TextUtils.isEmpty(hardwareInputId) && TvInputService.this.isPassthroughInput(hardwareInputId)) {
                                hardwareSession.mProxySession = iTvInputSessionWrapper;
                                hardwareSession.mProxySessionCallback = iTvInputSessionCallback;
                                hardwareSession.mServiceHandler = TvInputService.this.mServiceHandler;
                                ((TvInputManager) TvInputService.this.getSystemService(Context.TV_INPUT_SERVICE)).createSession(hardwareInputId, hardwareSession.mHardwareSessionCallback, TvInputService.this.mServiceHandler);
                            } else {
                                if (TextUtils.isEmpty(hardwareInputId)) {
                                    Log.w(TvInputService.TAG, "Hardware input id is not setup yet.");
                                } else {
                                    Log.w(TvInputService.TAG, "Invalid hardware input id : " + hardwareInputId);
                                }
                                sessionOnCreateSession.onRelease();
                                try {
                                    iTvInputSessionCallback.onSessionCreated(null, null);
                                } catch (RemoteException e2) {
                                    Log.e(TvInputService.TAG, "error in onSessionCreated", e2);
                                    return;
                                }
                            }
                        }
                    } else {
                        try {
                            iTvInputSessionCallback.onSessionCreated(null, null);
                        } catch (RemoteException e3) {
                            Log.e(TvInputService.TAG, "error in onSessionCreated", e3);
                            return;
                        }
                    }
                    break;
                case 2:
                    SomeArgs someArgs2 = (SomeArgs) message.obj;
                    Session session = (Session) someArgs2.arg1;
                    ITvInputSession iTvInputSession = (ITvInputSession) someArgs2.arg2;
                    ITvInputSessionCallback iTvInputSessionCallback2 = (ITvInputSessionCallback) someArgs2.arg3;
                    try {
                        iTvInputSessionCallback2.onSessionCreated(iTvInputSession, (IBinder) someArgs2.arg4);
                    } catch (RemoteException e4) {
                        Log.e(TvInputService.TAG, "error in onSessionCreated", e4);
                    }
                    if (session != null) {
                        session.initialize(iTvInputSessionCallback2);
                    }
                    someArgs2.recycle();
                    break;
                case 3:
                    SomeArgs someArgs3 = (SomeArgs) message.obj;
                    ITvInputSessionCallback iTvInputSessionCallback3 = (ITvInputSessionCallback) someArgs3.arg1;
                    String str2 = (String) someArgs3.arg2;
                    someArgs3.recycle();
                    RecordingSession recordingSessionOnCreateRecordingSession = TvInputService.this.onCreateRecordingSession(str2);
                    if (recordingSessionOnCreateRecordingSession != null) {
                        try {
                            iTvInputSessionCallback3.onSessionCreated(new ITvInputSessionWrapper(TvInputService.this, recordingSessionOnCreateRecordingSession), null);
                        } catch (RemoteException e5) {
                            Log.e(TvInputService.TAG, "error in onSessionCreated", e5);
                        }
                        recordingSessionOnCreateRecordingSession.initialize(iTvInputSessionCallback3);
                    } else {
                        try {
                            iTvInputSessionCallback3.onSessionCreated(null, null);
                        } catch (RemoteException e6) {
                            Log.e(TvInputService.TAG, "error in onSessionCreated", e6);
                            return;
                        }
                    }
                    break;
                case 4:
                    TvInputHardwareInfo tvInputHardwareInfo = (TvInputHardwareInfo) message.obj;
                    TvInputInfo tvInputInfoOnHardwareAdded = TvInputService.this.onHardwareAdded(tvInputHardwareInfo);
                    if (tvInputInfoOnHardwareAdded != null) {
                        broadcastAddHardwareInput(tvInputHardwareInfo.getDeviceId(), tvInputInfoOnHardwareAdded);
                    }
                    break;
                case 5:
                    String strOnHardwareRemoved = TvInputService.this.onHardwareRemoved((TvInputHardwareInfo) message.obj);
                    if (strOnHardwareRemoved != null) {
                        broadcastRemoveHardwareInput(strOnHardwareRemoved);
                    }
                    break;
                case 6:
                    HdmiDeviceInfo hdmiDeviceInfo = (HdmiDeviceInfo) message.obj;
                    TvInputInfo tvInputInfoOnHdmiDeviceAdded = TvInputService.this.onHdmiDeviceAdded(hdmiDeviceInfo);
                    if (tvInputInfoOnHdmiDeviceAdded != null) {
                        broadcastAddHdmiInput(hdmiDeviceInfo.getId(), tvInputInfoOnHdmiDeviceAdded);
                    }
                    break;
                case 7:
                    String strOnHdmiDeviceRemoved = TvInputService.this.onHdmiDeviceRemoved((HdmiDeviceInfo) message.obj);
                    if (strOnHdmiDeviceRemoved != null) {
                        broadcastRemoveHardwareInput(strOnHdmiDeviceRemoved);
                    }
                    break;
                default:
                    c.A(new StringBuilder("Unhandled message code: "), message.what, TvInputService.TAG);
                    break;
            }
        }
    }

    public static abstract class Session implements KeyEvent.Callback {
        private static final int POSITION_UPDATE_INTERVAL_MS = 1000;
        private final Context mContext;
        final Handler mHandler;
        private Rect mOverlayFrame;
        private View mOverlayView;
        private OverlayViewCleanUpTask mOverlayViewCleanUpTask;
        private FrameLayout mOverlayViewContainer;
        private boolean mOverlayViewEnabled;
        private ITvInputSessionCallback mSessionCallback;
        private Surface mSurface;
        private final WindowManager mWindowManager;
        private WindowManager.LayoutParams mWindowParams;
        private IBinder mWindowToken;
        private final KeyEvent.DispatcherState mDispatcherState = new KeyEvent.DispatcherState();
        private long mStartPositionMs = Long.MIN_VALUE;
        private long mCurrentPositionMs = Long.MIN_VALUE;
        private final TimeShiftPositionTrackingRunnable mTimeShiftPositionTrackingRunnable = new TimeShiftPositionTrackingRunnable();
        private final Object mLock = new Object();
        private final List<Runnable> mPendingActions = new ArrayList();

        public final class TimeShiftPositionTrackingRunnable implements Runnable {
            private TimeShiftPositionTrackingRunnable() {
            }

            @Override // java.lang.Runnable
            public void run() {
                long jOnTimeShiftGetStartPosition = Session.this.onTimeShiftGetStartPosition();
                if (Session.this.mStartPositionMs == Long.MIN_VALUE || Session.this.mStartPositionMs != jOnTimeShiftGetStartPosition) {
                    Session.this.mStartPositionMs = jOnTimeShiftGetStartPosition;
                    Session.this.notifyTimeShiftStartPositionChanged(jOnTimeShiftGetStartPosition);
                }
                long jOnTimeShiftGetCurrentPosition = Session.this.onTimeShiftGetCurrentPosition();
                if (jOnTimeShiftGetCurrentPosition < Session.this.mStartPositionMs) {
                    StringBuilder sbL = m.l("Current position (", jOnTimeShiftGetCurrentPosition, ") cannot be earlier than start position (");
                    sbL.append(Session.this.mStartPositionMs);
                    sbL.append("). Reset to the start position.");
                    Log.w(TvInputService.TAG, sbL.toString());
                    jOnTimeShiftGetCurrentPosition = Session.this.mStartPositionMs;
                }
                if (Session.this.mCurrentPositionMs == Long.MIN_VALUE || Session.this.mCurrentPositionMs != jOnTimeShiftGetCurrentPosition) {
                    Session.this.mCurrentPositionMs = jOnTimeShiftGetCurrentPosition;
                    Session.this.notifyTimeShiftCurrentPositionChanged(jOnTimeShiftGetCurrentPosition);
                }
                Session session = Session.this;
                session.mHandler.removeCallbacks(session.mTimeShiftPositionTrackingRunnable);
                Session session2 = Session.this;
                session2.mHandler.postDelayed(session2.mTimeShiftPositionTrackingRunnable, 1000L);
            }
        }

        public Session(Context context) {
            this.mContext = context;
            this.mWindowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
            this.mHandler = new Handler(context.getMainLooper());
        }

        private void executeOrPostRunnableOnMainThread(Runnable runnable) {
            synchronized (this.mLock) {
                if (this.mSessionCallback == null) {
                    this.mPendingActions.add(runnable);
                } else if (this.mHandler.getLooper().isCurrentThread()) {
                    runnable.run();
                } else {
                    this.mHandler.post(runnable);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initialize(ITvInputSessionCallback iTvInputSessionCallback) {
            synchronized (this.mLock) {
                this.mSessionCallback = iTvInputSessionCallback;
                Iterator<Runnable> it = this.mPendingActions.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
                this.mPendingActions.clear();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyTimeShiftCurrentPositionChanged(final long j2) {
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.Session.12
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Session.this.mSessionCallback != null) {
                            Session.this.mSessionCallback.onTimeShiftCurrentPositionChanged(j2);
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in notifyTimeShiftCurrentPositionChanged", e2);
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyTimeShiftStartPositionChanged(final long j2) {
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.Session.11
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Session.this.mSessionCallback != null) {
                            Session.this.mSessionCallback.onTimeShiftStartPositionChanged(j2);
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in notifyTimeShiftStartPositionChanged", e2);
                    }
                }
            });
        }

        public void appPrivateCommand(String str, Bundle bundle) {
            onAppPrivateCommand(str, bundle);
        }

        public void createOverlayView(IBinder iBinder, Rect rect) {
            if (this.mOverlayViewContainer != null) {
                removeOverlayView(false);
            }
            this.mWindowToken = iBinder;
            this.mOverlayFrame = rect;
            onOverlayViewSizeChanged(rect.right - rect.left, rect.bottom - rect.top);
            if (this.mOverlayViewEnabled) {
                View viewOnCreateOverlayView = onCreateOverlayView();
                this.mOverlayView = viewOnCreateOverlayView;
                if (viewOnCreateOverlayView == null) {
                    return;
                }
                OverlayViewCleanUpTask overlayViewCleanUpTask = this.mOverlayViewCleanUpTask;
                if (overlayViewCleanUpTask != null) {
                    overlayViewCleanUpTask.cancel(true);
                    this.mOverlayViewCleanUpTask = null;
                }
                FrameLayout frameLayout = new FrameLayout(this.mContext.getApplicationContext());
                this.mOverlayViewContainer = frameLayout;
                frameLayout.addView(this.mOverlayView);
                int i2 = ActivityManager.isHighEndGfx() ? 16777752 : MetricsProto.MetricsEvent.DIALOG_RUNNIGN_SERVICE;
                int i3 = rect.right;
                int i4 = rect.left;
                int i5 = i3 - i4;
                int i6 = rect.bottom;
                int i7 = rect.top;
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(i5, i6 - i7, i4, i7, 1004, i2, -2);
                this.mWindowParams = layoutParams;
                layoutParams.privateFlags |= 64;
                layoutParams.gravity = BadgeDrawable.TOP_START;
                layoutParams.token = iBinder;
                this.mWindowManager.addView(this.mOverlayViewContainer, layoutParams);
            }
        }

        public int dispatchInputEvent(InputEvent inputEvent, InputEventReceiver inputEventReceiver) {
            boolean z2;
            boolean zIsNavigationKey;
            if (inputEvent instanceof KeyEvent) {
                KeyEvent keyEvent = (KeyEvent) inputEvent;
                if (keyEvent.dispatch(this, this.mDispatcherState, this)) {
                    return 1;
                }
                zIsNavigationKey = TvInputService.isNavigationKey(keyEvent.getKeyCode());
                z2 = KeyEvent.isMediaKey(keyEvent.getKeyCode()) || keyEvent.getKeyCode() == 222;
            } else {
                if (inputEvent instanceof MotionEvent) {
                    MotionEvent motionEvent = (MotionEvent) inputEvent;
                    int source = motionEvent.getSource();
                    if (motionEvent.isTouchEvent()) {
                        if (onTouchEvent(motionEvent)) {
                            return 1;
                        }
                    } else if ((source & 4) != 0) {
                        if (onTrackballEvent(motionEvent)) {
                            return 1;
                        }
                    } else if (onGenericMotionEvent(motionEvent)) {
                        return 1;
                    }
                }
                z2 = false;
                zIsNavigationKey = false;
            }
            FrameLayout frameLayout = this.mOverlayViewContainer;
            if (frameLayout == null || !frameLayout.isAttachedToWindow() || z2) {
                return 0;
            }
            if (!this.mOverlayViewContainer.hasWindowFocus()) {
                this.mOverlayViewContainer.getViewRootImpl().windowFocusChanged(true, true);
            }
            if (zIsNavigationKey && this.mOverlayViewContainer.hasFocusable()) {
                this.mOverlayViewContainer.getViewRootImpl().dispatchInputEvent(inputEvent);
                return 1;
            }
            this.mOverlayViewContainer.getViewRootImpl().dispatchInputEvent(inputEvent, inputEventReceiver);
            return -1;
        }

        public void dispatchSurfaceChanged(int i2, int i3, int i4) {
            onSurfaceChanged(i2, i3, i4);
        }

        public void layoutSurface(final int i2, final int i3, final int i4, final int i5) {
            if (i2 > i4 || i3 > i5) {
                throw new IllegalArgumentException("Invalid parameter");
            }
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.Session.13
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Session.this.mSessionCallback != null) {
                            Session.this.mSessionCallback.onLayoutSurface(i2, i3, i4, i5);
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in layoutSurface", e2);
                    }
                }
            });
        }

        public void notifyChannelRetuned(final Uri uri) {
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.Session.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Session.this.mSessionCallback != null) {
                            Session.this.mSessionCallback.onChannelRetuned(uri);
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in notifyChannelRetuned", e2);
                    }
                }
            });
        }

        public void notifyContentAllowed() {
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.Session.8
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Session.this.mSessionCallback != null) {
                            Session.this.mSessionCallback.onContentAllowed();
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in notifyContentAllowed", e2);
                    }
                }
            });
        }

        public void notifyContentBlocked(final TvContentRating tvContentRating) {
            Preconditions.checkNotNull(tvContentRating);
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.Session.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Session.this.mSessionCallback != null) {
                            Session.this.mSessionCallback.onContentBlocked(tvContentRating.flattenToString());
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in notifyContentBlocked", e2);
                    }
                }
            });
        }

        public void notifySessionEvent(final String str, final Bundle bundle) {
            Preconditions.checkNotNull(str);
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.Session.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Session.this.mSessionCallback != null) {
                            Session.this.mSessionCallback.onSessionEvent(str, bundle);
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in sending event (event=" + str + ")", e2);
                    }
                }
            });
        }

        public void notifyTimeShiftStatusChanged(final int i2) {
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.Session.10
                @Override // java.lang.Runnable
                public void run() {
                    Session.this.timeShiftEnablePositionTracking(i2 == 3);
                    try {
                        if (Session.this.mSessionCallback != null) {
                            Session.this.mSessionCallback.onTimeShiftStatusChanged(i2);
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in notifyTimeShiftStatusChanged", e2);
                    }
                }
            });
        }

        public void notifyTrackSelected(final int i2, final String str) {
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.Session.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Session.this.mSessionCallback != null) {
                            Session.this.mSessionCallback.onTrackSelected(i2, str);
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in notifyTrackSelected", e2);
                    }
                }
            });
        }

        public void notifyTracksChanged(List<TvTrackInfo> list) {
            final ArrayList arrayList = new ArrayList(list);
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.Session.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Session.this.mSessionCallback != null) {
                            Session.this.mSessionCallback.onTracksChanged(arrayList);
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in notifyTracksChanged", e2);
                    }
                }
            });
        }

        public void notifyVideoAvailable() {
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.Session.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Session.this.mSessionCallback != null) {
                            Session.this.mSessionCallback.onVideoAvailable();
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in notifyVideoAvailable", e2);
                    }
                }
            });
        }

        public void notifyVideoUnavailable(final int i2) {
            if (i2 < 0 || i2 > 4) {
                m.p("notifyVideoUnavailable - unknown reason: ", i2, TvInputService.TAG);
            }
            executeOrPostRunnableOnMainThread(new Runnable() { // from class: android.media.tv.TvInputService.Session.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Session.this.mSessionCallback != null) {
                            Session.this.mSessionCallback.onVideoUnavailable(i2);
                        }
                    } catch (RemoteException e2) {
                        Log.w(TvInputService.TAG, "error in notifyVideoUnavailable", e2);
                    }
                }
            });
        }

        public void onAppPrivateCommand(String str, Bundle bundle) {
        }

        public View onCreateOverlayView() {
            return null;
        }

        public boolean onGenericMotionEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.KeyEvent.Callback
        public boolean onKeyDown(int i2, KeyEvent keyEvent) {
            return false;
        }

        @Override // android.view.KeyEvent.Callback
        public boolean onKeyLongPress(int i2, KeyEvent keyEvent) {
            return false;
        }

        @Override // android.view.KeyEvent.Callback
        public boolean onKeyMultiple(int i2, int i3, KeyEvent keyEvent) {
            return false;
        }

        @Override // android.view.KeyEvent.Callback
        public boolean onKeyUp(int i2, KeyEvent keyEvent) {
            return false;
        }

        public void onOverlayViewSizeChanged(int i2, int i3) {
        }

        public abstract void onRelease();

        public boolean onSelectTrack(int i2, String str) {
            return false;
        }

        public abstract void onSetCaptionEnabled(boolean z2);

        public void onSetMain(boolean z2) {
        }

        public abstract void onSetStreamVolume(float f2);

        public abstract boolean onSetSurface(Surface surface);

        public void onSurfaceChanged(int i2, int i3, int i4) {
        }

        public long onTimeShiftGetCurrentPosition() {
            return Long.MIN_VALUE;
        }

        public long onTimeShiftGetStartPosition() {
            return Long.MIN_VALUE;
        }

        public void onTimeShiftPause() {
        }

        public void onTimeShiftPlay(Uri uri) {
        }

        public void onTimeShiftResume() {
        }

        public void onTimeShiftSeekTo(long j2) {
        }

        public void onTimeShiftSetPlaybackParams(PlaybackParams playbackParams) {
        }

        public boolean onTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public boolean onTrackballEvent(MotionEvent motionEvent) {
            return false;
        }

        public abstract boolean onTune(Uri uri);

        public boolean onTune(Uri uri, Bundle bundle) {
            return onTune(uri);
        }

        public void onUnblockContent(TvContentRating tvContentRating) {
        }

        public void relayoutOverlayView(Rect rect) {
            FrameLayout frameLayout;
            Rect rect2 = this.mOverlayFrame;
            if (rect2 == null || rect2.width() != rect.width() || this.mOverlayFrame.height() != rect.height()) {
                onOverlayViewSizeChanged(rect.right - rect.left, rect.bottom - rect.top);
            }
            this.mOverlayFrame = rect;
            if (!this.mOverlayViewEnabled || (frameLayout = this.mOverlayViewContainer) == null) {
                return;
            }
            WindowManager.LayoutParams layoutParams = this.mWindowParams;
            int i2 = rect.left;
            layoutParams.f211x = i2;
            int i3 = rect.top;
            layoutParams.f212y = i3;
            layoutParams.width = rect.right - i2;
            layoutParams.height = rect.bottom - i3;
            this.mWindowManager.updateViewLayout(frameLayout, layoutParams);
        }

        public void release() {
            onRelease();
            Surface surface = this.mSurface;
            if (surface != null) {
                surface.release();
                this.mSurface = null;
            }
            synchronized (this.mLock) {
                this.mSessionCallback = null;
                this.mPendingActions.clear();
            }
            removeOverlayView(true);
            this.mHandler.removeCallbacks(this.mTimeShiftPositionTrackingRunnable);
        }

        public void removeOverlayView(boolean z2) {
            if (z2) {
                this.mWindowToken = null;
                this.mOverlayFrame = null;
            }
            FrameLayout frameLayout = this.mOverlayViewContainer;
            if (frameLayout != null) {
                frameLayout.removeView(this.mOverlayView);
                this.mOverlayView = null;
                this.mWindowManager.removeView(this.mOverlayViewContainer);
                this.mOverlayViewContainer = null;
                this.mWindowParams = null;
            }
        }

        public void scheduleOverlayViewCleanup() {
            FrameLayout frameLayout = this.mOverlayViewContainer;
            if (frameLayout != null) {
                OverlayViewCleanUpTask overlayViewCleanUpTask = new OverlayViewCleanUpTask();
                this.mOverlayViewCleanUpTask = overlayViewCleanUpTask;
                overlayViewCleanUpTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, frameLayout);
            }
        }

        public void selectTrack(int i2, String str) {
            onSelectTrack(i2, str);
        }

        public void setCaptionEnabled(boolean z2) {
            onSetCaptionEnabled(z2);
        }

        public void setMain(boolean z2) {
            onSetMain(z2);
        }

        public void setOverlayViewEnabled(final boolean z2) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.TvInputService.Session.1
                @Override // java.lang.Runnable
                public void run() {
                    if (z2 == Session.this.mOverlayViewEnabled) {
                        return;
                    }
                    Session.this.mOverlayViewEnabled = z2;
                    if (!z2) {
                        Session.this.removeOverlayView(false);
                    } else if (Session.this.mWindowToken != null) {
                        Session session = Session.this;
                        session.createOverlayView(session.mWindowToken, Session.this.mOverlayFrame);
                    }
                }
            });
        }

        public void setStreamVolume(float f2) {
            onSetStreamVolume(f2);
        }

        public void setSurface(Surface surface) {
            onSetSurface(surface);
            Surface surface2 = this.mSurface;
            if (surface2 != null) {
                surface2.release();
            }
            this.mSurface = surface;
        }

        public void timeShiftEnablePositionTracking(boolean z2) {
            if (z2) {
                this.mHandler.post(this.mTimeShiftPositionTrackingRunnable);
                return;
            }
            this.mHandler.removeCallbacks(this.mTimeShiftPositionTrackingRunnable);
            this.mStartPositionMs = Long.MIN_VALUE;
            this.mCurrentPositionMs = Long.MIN_VALUE;
        }

        public void timeShiftPause() {
            onTimeShiftPause();
        }

        public void timeShiftPlay(Uri uri) {
            this.mCurrentPositionMs = 0L;
            onTimeShiftPlay(uri);
        }

        public void timeShiftResume() {
            onTimeShiftResume();
        }

        public void timeShiftSeekTo(long j2) {
            onTimeShiftSeekTo(j2);
        }

        public void timeShiftSetPlaybackParams(PlaybackParams playbackParams) {
            onTimeShiftSetPlaybackParams(playbackParams);
        }

        public void tune(Uri uri, Bundle bundle) {
            this.mCurrentPositionMs = Long.MIN_VALUE;
            onTune(uri, bundle);
        }

        public void unblockContent(String str) {
            onUnblockContent(TvContentRating.unflattenFromString(str));
        }
    }

    public static boolean isNavigationKey(int i2) {
        if (i2 == 61 || i2 == 62 || i2 == 66 || i2 == 92 || i2 == 93 || i2 == 122 || i2 == 123) {
            return true;
        }
        switch (i2) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPassthroughInput(String str) {
        if (this.mTvInputManager == null) {
            this.mTvInputManager = (TvInputManager) getSystemService(Context.TV_INPUT_SERVICE);
        }
        TvInputInfo tvInputInfo = this.mTvInputManager.getTvInputInfo(str);
        return tvInputInfo != null && tvInputInfo.isPassthroughInput();
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return new ITvInputService.Stub() { // from class: android.media.tv.TvInputService.1
            @Override // android.media.tv.ITvInputService
            public void createRecordingSession(ITvInputSessionCallback iTvInputSessionCallback, String str) {
                if (iTvInputSessionCallback == null) {
                    return;
                }
                SomeArgs someArgsObtain = SomeArgs.obtain();
                someArgsObtain.arg1 = iTvInputSessionCallback;
                someArgsObtain.arg2 = str;
                TvInputService.this.mServiceHandler.obtainMessage(3, someArgsObtain).sendToTarget();
            }

            @Override // android.media.tv.ITvInputService
            public void createSession(InputChannel inputChannel, ITvInputSessionCallback iTvInputSessionCallback, String str) {
                if (inputChannel == null) {
                    Log.w(TvInputService.TAG, "Creating session without input channel");
                }
                if (iTvInputSessionCallback == null) {
                    return;
                }
                SomeArgs someArgsObtain = SomeArgs.obtain();
                someArgsObtain.arg1 = inputChannel;
                someArgsObtain.arg2 = iTvInputSessionCallback;
                someArgsObtain.arg3 = str;
                TvInputService.this.mServiceHandler.obtainMessage(1, someArgsObtain).sendToTarget();
            }

            @Override // android.media.tv.ITvInputService
            public void notifyHardwareAdded(TvInputHardwareInfo tvInputHardwareInfo) {
                TvInputService.this.mServiceHandler.obtainMessage(4, tvInputHardwareInfo).sendToTarget();
            }

            @Override // android.media.tv.ITvInputService
            public void notifyHardwareRemoved(TvInputHardwareInfo tvInputHardwareInfo) {
                TvInputService.this.mServiceHandler.obtainMessage(5, tvInputHardwareInfo).sendToTarget();
            }

            @Override // android.media.tv.ITvInputService
            public void notifyHdmiDeviceAdded(HdmiDeviceInfo hdmiDeviceInfo) {
                TvInputService.this.mServiceHandler.obtainMessage(6, hdmiDeviceInfo).sendToTarget();
            }

            @Override // android.media.tv.ITvInputService
            public void notifyHdmiDeviceRemoved(HdmiDeviceInfo hdmiDeviceInfo) {
                TvInputService.this.mServiceHandler.obtainMessage(7, hdmiDeviceInfo).sendToTarget();
            }

            @Override // android.media.tv.ITvInputService
            public void registerCallback(ITvInputServiceCallback iTvInputServiceCallback) {
                if (iTvInputServiceCallback != null) {
                    TvInputService.this.mCallbacks.register(iTvInputServiceCallback);
                }
            }

            @Override // android.media.tv.ITvInputService
            public void unregisterCallback(ITvInputServiceCallback iTvInputServiceCallback) {
                if (iTvInputServiceCallback != null) {
                    TvInputService.this.mCallbacks.unregister(iTvInputServiceCallback);
                }
            }
        };
    }

    public RecordingSession onCreateRecordingSession(String str) {
        return null;
    }

    public abstract Session onCreateSession(String str);

    public TvInputInfo onHardwareAdded(TvInputHardwareInfo tvInputHardwareInfo) {
        return null;
    }

    public String onHardwareRemoved(TvInputHardwareInfo tvInputHardwareInfo) {
        return null;
    }

    public TvInputInfo onHdmiDeviceAdded(HdmiDeviceInfo hdmiDeviceInfo) {
        return null;
    }

    public String onHdmiDeviceRemoved(HdmiDeviceInfo hdmiDeviceInfo) {
        return null;
    }
}
