package android.accessibilityservice;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ParceledListSlice;
import android.graphics.Region;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.WindowManager;
import android.view.WindowManagerImpl;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityInteractionClient;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import com.android.internal.os.HandlerCaller;
import com.android.internal.os.SomeArgs;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class AccessibilityService extends Service {
    public static final int GESTURE_SWIPE_DOWN = 2;
    public static final int GESTURE_SWIPE_DOWN_AND_LEFT = 15;
    public static final int GESTURE_SWIPE_DOWN_AND_RIGHT = 16;
    public static final int GESTURE_SWIPE_DOWN_AND_UP = 8;
    public static final int GESTURE_SWIPE_LEFT = 3;
    public static final int GESTURE_SWIPE_LEFT_AND_DOWN = 10;
    public static final int GESTURE_SWIPE_LEFT_AND_RIGHT = 5;
    public static final int GESTURE_SWIPE_LEFT_AND_UP = 9;
    public static final int GESTURE_SWIPE_RIGHT = 4;
    public static final int GESTURE_SWIPE_RIGHT_AND_DOWN = 12;
    public static final int GESTURE_SWIPE_RIGHT_AND_LEFT = 6;
    public static final int GESTURE_SWIPE_RIGHT_AND_UP = 11;
    public static final int GESTURE_SWIPE_UP = 1;
    public static final int GESTURE_SWIPE_UP_AND_DOWN = 7;
    public static final int GESTURE_SWIPE_UP_AND_LEFT = 13;
    public static final int GESTURE_SWIPE_UP_AND_RIGHT = 14;
    public static final int GLOBAL_ACTION_BACK = 1;
    public static final int GLOBAL_ACTION_HOME = 2;
    public static final int GLOBAL_ACTION_NOTIFICATIONS = 4;
    public static final int GLOBAL_ACTION_POWER_DIALOG = 6;
    public static final int GLOBAL_ACTION_QUICK_SETTINGS = 5;
    public static final int GLOBAL_ACTION_RECENTS = 3;
    public static final int GLOBAL_ACTION_TOGGLE_SPLIT_SCREEN = 7;
    private static final String LOG_TAG = "AccessibilityService";
    public static final String SERVICE_INTERFACE = "android.accessibilityservice.AccessibilityService";
    public static final String SERVICE_META_DATA = "android.accessibilityservice";
    public static final int SHOW_MODE_AUTO = 0;
    public static final int SHOW_MODE_HIDDEN = 1;
    private AccessibilityButtonController mAccessibilityButtonController;
    private FingerprintGestureController mFingerprintGestureController;
    private SparseArray<GestureResultCallbackInfo> mGestureStatusCallbackInfos;
    private int mGestureStatusCallbackSequence;
    private AccessibilityServiceInfo mInfo;
    private MagnificationController mMagnificationController;
    private SoftKeyboardController mSoftKeyboardController;
    private WindowManager mWindowManager;
    private IBinder mWindowToken;
    private int mConnectionId = -1;
    private final Object mLock = new Object();

    public interface Callbacks {
        void init(int i2, IBinder iBinder);

        void onAccessibilityButtonAvailabilityChanged(boolean z2);

        void onAccessibilityButtonClicked();

        void onAccessibilityEvent(AccessibilityEvent accessibilityEvent);

        void onFingerprintCapturingGesturesChanged(boolean z2);

        void onFingerprintGesture(int i2);

        boolean onGesture(int i2);

        void onInterrupt();

        boolean onKeyEvent(KeyEvent keyEvent);

        void onMagnificationChanged(Region region, float f2, float f3, float f4);

        void onPerformGestureResult(int i2, boolean z2);

        void onServiceConnected();

        void onSoftKeyboardShowModeChanged(int i2);
    }

    public static abstract class GestureResultCallback {
        public void onCancelled(GestureDescription gestureDescription) {
        }

        public void onCompleted(GestureDescription gestureDescription) {
        }
    }

    public static class GestureResultCallbackInfo {
        GestureResultCallback callback;
        GestureDescription gestureDescription;
        Handler handler;

        public GestureResultCallbackInfo(GestureDescription gestureDescription, GestureResultCallback gestureResultCallback, Handler handler) {
            this.gestureDescription = gestureDescription;
            this.callback = gestureResultCallback;
            this.handler = handler;
        }
    }

    public static class IAccessibilityServiceClientWrapper extends IAccessibilityServiceClient.Stub implements HandlerCaller.Callback {
        private static final int DO_ACCESSIBILITY_BUTTON_AVAILABILITY_CHANGED = 13;
        private static final int DO_ACCESSIBILITY_BUTTON_CLICKED = 12;
        private static final int DO_CLEAR_ACCESSIBILITY_CACHE = 5;
        private static final int DO_GESTURE_COMPLETE = 9;
        private static final int DO_INIT = 1;
        private static final int DO_ON_ACCESSIBILITY_EVENT = 3;
        private static final int DO_ON_FINGERPRINT_ACTIVE_CHANGED = 10;
        private static final int DO_ON_FINGERPRINT_GESTURE = 11;
        private static final int DO_ON_GESTURE = 4;
        private static final int DO_ON_INTERRUPT = 2;
        private static final int DO_ON_KEY_EVENT = 6;
        private static final int DO_ON_MAGNIFICATION_CHANGED = 7;
        private static final int DO_ON_SOFT_KEYBOARD_SHOW_MODE_CHANGED = 8;
        private final Callbacks mCallback;
        private final HandlerCaller mCaller;
        private int mConnectionId = -1;

        public IAccessibilityServiceClientWrapper(Context context, Looper looper, Callbacks callbacks) {
            this.mCallback = callbacks;
            this.mCaller = new HandlerCaller(context, looper, this, true);
        }

        @Override // android.accessibilityservice.IAccessibilityServiceClient
        public void clearAccessibilityCache() {
            this.mCaller.sendMessage(this.mCaller.obtainMessage(5));
        }

        @Override // com.android.internal.os.HandlerCaller.Callback
        public void executeMessage(Message message) {
            switch (message.what) {
                case 1:
                    this.mConnectionId = message.arg1;
                    SomeArgs someArgs = (SomeArgs) message.obj;
                    IAccessibilityServiceConnection iAccessibilityServiceConnection = (IAccessibilityServiceConnection) someArgs.arg1;
                    IBinder iBinder = (IBinder) someArgs.arg2;
                    someArgs.recycle();
                    if (iAccessibilityServiceConnection != null) {
                        AccessibilityInteractionClient.getInstance().addConnection(this.mConnectionId, iAccessibilityServiceConnection);
                        this.mCallback.init(this.mConnectionId, iBinder);
                        this.mCallback.onServiceConnected();
                        return;
                    } else {
                        AccessibilityInteractionClient.getInstance().removeConnection(this.mConnectionId);
                        this.mConnectionId = -1;
                        AccessibilityInteractionClient.getInstance().clearCache();
                        this.mCallback.init(-1, null);
                        return;
                    }
                case 2:
                    if (this.mConnectionId != -1) {
                        this.mCallback.onInterrupt();
                        return;
                    }
                    return;
                case 3:
                    AccessibilityEvent accessibilityEvent = (AccessibilityEvent) message.obj;
                    boolean z2 = message.arg1 != 0;
                    if (accessibilityEvent != null) {
                        AccessibilityInteractionClient.getInstance().onAccessibilityEvent(accessibilityEvent);
                        if (z2 && this.mConnectionId != -1) {
                            this.mCallback.onAccessibilityEvent(accessibilityEvent);
                        }
                        try {
                            accessibilityEvent.recycle();
                            return;
                        } catch (IllegalStateException unused) {
                            return;
                        }
                    }
                    return;
                case 4:
                    if (this.mConnectionId != -1) {
                        this.mCallback.onGesture(message.arg1);
                        return;
                    }
                    return;
                case 5:
                    AccessibilityInteractionClient.getInstance().clearCache();
                    return;
                case 6:
                    KeyEvent keyEvent = (KeyEvent) message.obj;
                    try {
                        IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mConnectionId);
                        if (connection != null) {
                            try {
                                connection.setOnKeyEventResult(this.mCallback.onKeyEvent(keyEvent), message.arg1);
                                break;
                            } catch (RemoteException unused2) {
                            }
                        }
                        try {
                            return;
                        } catch (IllegalStateException unused3) {
                            return;
                        }
                    } finally {
                        try {
                            keyEvent.recycle();
                            break;
                        } catch (IllegalStateException unused4) {
                        }
                    }
                case 7:
                    if (this.mConnectionId != -1) {
                        SomeArgs someArgs2 = (SomeArgs) message.obj;
                        this.mCallback.onMagnificationChanged((Region) someArgs2.arg1, ((Float) someArgs2.arg2).floatValue(), ((Float) someArgs2.arg3).floatValue(), ((Float) someArgs2.arg4).floatValue());
                        return;
                    }
                    return;
                case 8:
                    if (this.mConnectionId != -1) {
                        this.mCallback.onSoftKeyboardShowModeChanged(message.arg1);
                        return;
                    }
                    return;
                case 9:
                    if (this.mConnectionId != -1) {
                        this.mCallback.onPerformGestureResult(message.arg1, message.arg2 == 1);
                        return;
                    }
                    return;
                case 10:
                    if (this.mConnectionId != -1) {
                        this.mCallback.onFingerprintCapturingGesturesChanged(message.arg1 == 1);
                        return;
                    }
                    return;
                case 11:
                    if (this.mConnectionId != -1) {
                        this.mCallback.onFingerprintGesture(message.arg1);
                        return;
                    }
                    return;
                case 12:
                    if (this.mConnectionId != -1) {
                        this.mCallback.onAccessibilityButtonClicked();
                        return;
                    }
                    return;
                case 13:
                    if (this.mConnectionId != -1) {
                        this.mCallback.onAccessibilityButtonAvailabilityChanged(message.arg1 != 0);
                        return;
                    }
                    return;
                default:
                    c.A(new StringBuilder("Unknown message type "), message.what, AccessibilityService.LOG_TAG);
                    return;
            }
        }

        @Override // android.accessibilityservice.IAccessibilityServiceClient
        public void init(IAccessibilityServiceConnection iAccessibilityServiceConnection, int i2, IBinder iBinder) {
            this.mCaller.sendMessage(this.mCaller.obtainMessageIOO(1, i2, iAccessibilityServiceConnection, iBinder));
        }

        @Override // android.accessibilityservice.IAccessibilityServiceClient
        public void onAccessibilityButtonAvailabilityChanged(boolean z2) {
            this.mCaller.sendMessage(this.mCaller.obtainMessageI(13, z2 ? 1 : 0));
        }

        @Override // android.accessibilityservice.IAccessibilityServiceClient
        public void onAccessibilityButtonClicked() {
            this.mCaller.sendMessage(this.mCaller.obtainMessage(12));
        }

        @Override // android.accessibilityservice.IAccessibilityServiceClient
        public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent, boolean z2) {
            this.mCaller.sendMessage(this.mCaller.obtainMessageBO(3, z2, accessibilityEvent));
        }

        @Override // android.accessibilityservice.IAccessibilityServiceClient
        public void onFingerprintCapturingGesturesChanged(boolean z2) {
            HandlerCaller handlerCaller = this.mCaller;
            handlerCaller.sendMessage(handlerCaller.obtainMessageI(10, z2 ? 1 : 0));
        }

        @Override // android.accessibilityservice.IAccessibilityServiceClient
        public void onFingerprintGesture(int i2) {
            HandlerCaller handlerCaller = this.mCaller;
            handlerCaller.sendMessage(handlerCaller.obtainMessageI(11, i2));
        }

        @Override // android.accessibilityservice.IAccessibilityServiceClient
        public void onGesture(int i2) {
            this.mCaller.sendMessage(this.mCaller.obtainMessageI(4, i2));
        }

        @Override // android.accessibilityservice.IAccessibilityServiceClient
        public void onInterrupt() {
            this.mCaller.sendMessage(this.mCaller.obtainMessage(2));
        }

        @Override // android.accessibilityservice.IAccessibilityServiceClient
        public void onKeyEvent(KeyEvent keyEvent, int i2) {
            this.mCaller.sendMessage(this.mCaller.obtainMessageIO(6, i2, keyEvent));
        }

        @Override // android.accessibilityservice.IAccessibilityServiceClient
        public void onMagnificationChanged(Region region, float f2, float f3, float f4) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.arg1 = region;
            someArgsObtain.arg2 = Float.valueOf(f2);
            someArgsObtain.arg3 = Float.valueOf(f3);
            someArgsObtain.arg4 = Float.valueOf(f4);
            this.mCaller.sendMessage(this.mCaller.obtainMessageO(7, someArgsObtain));
        }

        @Override // android.accessibilityservice.IAccessibilityServiceClient
        public void onPerformGestureResult(int i2, boolean z2) {
            this.mCaller.sendMessage(this.mCaller.obtainMessageII(9, i2, z2 ? 1 : 0));
        }

        @Override // android.accessibilityservice.IAccessibilityServiceClient
        public void onSoftKeyboardShowModeChanged(int i2) {
            this.mCaller.sendMessage(this.mCaller.obtainMessageI(8, i2));
        }
    }

    public static final class MagnificationController {
        private ArrayMap<OnMagnificationChangedListener, Handler> mListeners;
        private final Object mLock;
        private final AccessibilityService mService;

        public interface OnMagnificationChangedListener {
            void onMagnificationChanged(MagnificationController magnificationController, Region region, float f2, float f3, float f4);
        }

        public MagnificationController(AccessibilityService accessibilityService, Object obj) {
            this.mService = accessibilityService;
            this.mLock = obj;
        }

        private void setMagnificationCallbackEnabled(boolean z2) {
            IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mService.mConnectionId);
            if (connection != null) {
                try {
                    connection.setMagnificationCallbackEnabled(z2);
                } catch (RemoteException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }

        public void addListener(OnMagnificationChangedListener onMagnificationChangedListener) {
            addListener(onMagnificationChangedListener, null);
        }

        public void dispatchMagnificationChanged(final Region region, final float f2, final float f3, final float f4) {
            synchronized (this.mLock) {
                ArrayMap<OnMagnificationChangedListener, Handler> arrayMap = this.mListeners;
                if (arrayMap != null && !arrayMap.isEmpty()) {
                    ArrayMap arrayMap2 = new ArrayMap(this.mListeners);
                    int size = arrayMap2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        final OnMagnificationChangedListener onMagnificationChangedListener = (OnMagnificationChangedListener) arrayMap2.keyAt(i2);
                        Handler handler = (Handler) arrayMap2.valueAt(i2);
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: android.accessibilityservice.AccessibilityService.MagnificationController.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    onMagnificationChangedListener.onMagnificationChanged(MagnificationController.this, region, f2, f3, f4);
                                }
                            });
                        } else {
                            onMagnificationChangedListener.onMagnificationChanged(this, region, f2, f3, f4);
                        }
                    }
                    return;
                }
                Slog.d(AccessibilityService.LOG_TAG, "Received magnification changed callback with no listeners registered!");
                setMagnificationCallbackEnabled(false);
            }
        }

        public float getCenterX() {
            IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mService.mConnectionId);
            if (connection == null) {
                return 0.0f;
            }
            try {
                return connection.getMagnificationCenterX();
            } catch (RemoteException e2) {
                Log.w(AccessibilityService.LOG_TAG, "Failed to obtain center X", e2);
                e2.rethrowFromSystemServer();
                return 0.0f;
            }
        }

        public float getCenterY() {
            IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mService.mConnectionId);
            if (connection == null) {
                return 0.0f;
            }
            try {
                return connection.getMagnificationCenterY();
            } catch (RemoteException e2) {
                Log.w(AccessibilityService.LOG_TAG, "Failed to obtain center Y", e2);
                e2.rethrowFromSystemServer();
                return 0.0f;
            }
        }

        public Region getMagnificationRegion() {
            IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mService.mConnectionId);
            if (connection != null) {
                try {
                    return connection.getMagnificationRegion();
                } catch (RemoteException e2) {
                    Log.w(AccessibilityService.LOG_TAG, "Failed to obtain magnified region", e2);
                    e2.rethrowFromSystemServer();
                }
            }
            return Region.obtain();
        }

        public float getScale() {
            IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mService.mConnectionId);
            if (connection == null) {
                return 1.0f;
            }
            try {
                return connection.getMagnificationScale();
            } catch (RemoteException e2) {
                Log.w(AccessibilityService.LOG_TAG, "Failed to obtain scale", e2);
                e2.rethrowFromSystemServer();
                return 1.0f;
            }
        }

        public void onServiceConnected() {
            synchronized (this.mLock) {
                ArrayMap<OnMagnificationChangedListener, Handler> arrayMap = this.mListeners;
                if (arrayMap != null && !arrayMap.isEmpty()) {
                    setMagnificationCallbackEnabled(true);
                }
            }
        }

        public boolean removeListener(OnMagnificationChangedListener onMagnificationChangedListener) {
            boolean z2;
            if (this.mListeners == null) {
                return false;
            }
            synchronized (this.mLock) {
                int iIndexOfKey = this.mListeners.indexOfKey(onMagnificationChangedListener);
                z2 = iIndexOfKey >= 0;
                if (z2) {
                    this.mListeners.removeAt(iIndexOfKey);
                }
                if (z2 && this.mListeners.isEmpty()) {
                    setMagnificationCallbackEnabled(false);
                }
            }
            return z2;
        }

        public boolean reset(boolean z2) {
            IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mService.mConnectionId);
            if (connection == null) {
                return false;
            }
            try {
                return connection.resetMagnification(z2);
            } catch (RemoteException e2) {
                Log.w(AccessibilityService.LOG_TAG, "Failed to reset", e2);
                e2.rethrowFromSystemServer();
                return false;
            }
        }

        public boolean setCenter(float f2, float f3, boolean z2) {
            IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mService.mConnectionId);
            if (connection == null) {
                return false;
            }
            try {
                return connection.setMagnificationScaleAndCenter(Float.NaN, f2, f3, z2);
            } catch (RemoteException e2) {
                Log.w(AccessibilityService.LOG_TAG, "Failed to set center", e2);
                e2.rethrowFromSystemServer();
                return false;
            }
        }

        public boolean setScale(float f2, boolean z2) {
            IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mService.mConnectionId);
            if (connection == null) {
                return false;
            }
            try {
                return connection.setMagnificationScaleAndCenter(f2, Float.NaN, Float.NaN, z2);
            } catch (RemoteException e2) {
                Log.w(AccessibilityService.LOG_TAG, "Failed to set scale", e2);
                e2.rethrowFromSystemServer();
                return false;
            }
        }

        public void addListener(OnMagnificationChangedListener onMagnificationChangedListener, Handler handler) {
            synchronized (this.mLock) {
                if (this.mListeners == null) {
                    this.mListeners = new ArrayMap<>();
                }
                boolean zIsEmpty = this.mListeners.isEmpty();
                this.mListeners.put(onMagnificationChangedListener, handler);
                if (zIsEmpty) {
                    setMagnificationCallbackEnabled(true);
                }
            }
        }
    }

    public static final class SoftKeyboardController {
        private ArrayMap<OnShowModeChangedListener, Handler> mListeners;
        private final Object mLock;
        private final AccessibilityService mService;

        public interface OnShowModeChangedListener {
            void onShowModeChanged(SoftKeyboardController softKeyboardController, int i2);
        }

        public SoftKeyboardController(AccessibilityService accessibilityService, Object obj) {
            this.mService = accessibilityService;
            this.mLock = obj;
        }

        private void setSoftKeyboardCallbackEnabled(boolean z2) {
            IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mService.mConnectionId);
            if (connection != null) {
                try {
                    connection.setSoftKeyboardCallbackEnabled(z2);
                } catch (RemoteException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }

        public void addOnShowModeChangedListener(OnShowModeChangedListener onShowModeChangedListener) {
            addOnShowModeChangedListener(onShowModeChangedListener, null);
        }

        public void dispatchSoftKeyboardShowModeChanged(final int i2) {
            synchronized (this.mLock) {
                ArrayMap<OnShowModeChangedListener, Handler> arrayMap = this.mListeners;
                if (arrayMap != null && !arrayMap.isEmpty()) {
                    ArrayMap arrayMap2 = new ArrayMap(this.mListeners);
                    int size = arrayMap2.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        final OnShowModeChangedListener onShowModeChangedListener = (OnShowModeChangedListener) arrayMap2.keyAt(i3);
                        Handler handler = (Handler) arrayMap2.valueAt(i3);
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: android.accessibilityservice.AccessibilityService.SoftKeyboardController.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    onShowModeChangedListener.onShowModeChanged(SoftKeyboardController.this, i2);
                                }
                            });
                        } else {
                            onShowModeChangedListener.onShowModeChanged(this, i2);
                        }
                    }
                    return;
                }
                Slog.w(AccessibilityService.LOG_TAG, "Received soft keyboard show mode changed callback with no listeners registered!");
                setSoftKeyboardCallbackEnabled(false);
            }
        }

        public int getShowMode() {
            try {
                return Settings.Secure.getInt(this.mService.getContentResolver(), Settings.Secure.ACCESSIBILITY_SOFT_KEYBOARD_MODE);
            } catch (Settings.SettingNotFoundException e2) {
                Log.v(AccessibilityService.LOG_TAG, "Failed to obtain the soft keyboard mode", e2);
                return 0;
            }
        }

        public void onServiceConnected() {
            synchronized (this.mLock) {
                ArrayMap<OnShowModeChangedListener, Handler> arrayMap = this.mListeners;
                if (arrayMap != null && !arrayMap.isEmpty()) {
                    setSoftKeyboardCallbackEnabled(true);
                }
            }
        }

        public boolean removeOnShowModeChangedListener(OnShowModeChangedListener onShowModeChangedListener) {
            boolean z2;
            if (this.mListeners == null) {
                return false;
            }
            synchronized (this.mLock) {
                int iIndexOfKey = this.mListeners.indexOfKey(onShowModeChangedListener);
                z2 = iIndexOfKey >= 0;
                if (z2) {
                    this.mListeners.removeAt(iIndexOfKey);
                }
                if (z2 && this.mListeners.isEmpty()) {
                    setSoftKeyboardCallbackEnabled(false);
                }
            }
            return z2;
        }

        public boolean setShowMode(int i2) {
            IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mService.mConnectionId);
            if (connection == null) {
                return false;
            }
            try {
                return connection.setSoftKeyboardShowMode(i2);
            } catch (RemoteException e2) {
                Log.w(AccessibilityService.LOG_TAG, "Failed to set soft keyboard behavior", e2);
                e2.rethrowFromSystemServer();
                return false;
            }
        }

        public void addOnShowModeChangedListener(OnShowModeChangedListener onShowModeChangedListener, Handler handler) {
            synchronized (this.mLock) {
                if (this.mListeners == null) {
                    this.mListeners = new ArrayMap<>();
                }
                boolean zIsEmpty = this.mListeners.isEmpty();
                this.mListeners.put(onShowModeChangedListener, handler);
                if (zIsEmpty) {
                    setSoftKeyboardCallbackEnabled(true);
                }
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SoftKeyboardShowMode {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchServiceConnected() {
        MagnificationController magnificationController = this.mMagnificationController;
        if (magnificationController != null) {
            magnificationController.onServiceConnected();
        }
        SoftKeyboardController softKeyboardController = this.mSoftKeyboardController;
        if (softKeyboardController != null) {
            softKeyboardController.onServiceConnected();
        }
        onServiceConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAccessibilityButtonAvailabilityChanged(boolean z2) {
        getAccessibilityButtonController().dispatchAccessibilityButtonAvailabilityChanged(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAccessibilityButtonClicked() {
        getAccessibilityButtonController().dispatchAccessibilityButtonClicked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFingerprintCapturingGesturesChanged(boolean z2) {
        getFingerprintGestureController().onGestureDetectionActiveChanged(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFingerprintGesture(int i2) {
        getFingerprintGestureController().onGesture(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMagnificationChanged(Region region, float f2, float f3, float f4) {
        MagnificationController magnificationController = this.mMagnificationController;
        if (magnificationController != null) {
            magnificationController.dispatchMagnificationChanged(region, f2, f3, f4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSoftKeyboardShowModeChanged(int i2) {
        SoftKeyboardController softKeyboardController = this.mSoftKeyboardController;
        if (softKeyboardController != null) {
            softKeyboardController.dispatchSoftKeyboardShowModeChanged(i2);
        }
    }

    private void sendServiceInfo() {
        IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mConnectionId);
        AccessibilityServiceInfo accessibilityServiceInfo = this.mInfo;
        if (accessibilityServiceInfo == null || connection == null) {
            return;
        }
        try {
            connection.setServiceInfo(accessibilityServiceInfo);
            this.mInfo = null;
            AccessibilityInteractionClient.getInstance().clearCache();
        } catch (RemoteException e2) {
            Log.w(LOG_TAG, "Error while setting AccessibilityServiceInfo", e2);
            e2.rethrowFromSystemServer();
        }
    }

    public final void disableSelf() {
        IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mConnectionId);
        if (connection != null) {
            try {
                connection.disableSelf();
            } catch (RemoteException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public final boolean dispatchGesture(GestureDescription gestureDescription, GestureResultCallback gestureResultCallback, Handler handler) {
        IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mConnectionId);
        if (connection == null) {
            return false;
        }
        List<GestureDescription.GestureStep> gestureStepsFromGestureDescription = GestureDescription.MotionEventGenerator.getGestureStepsFromGestureDescription(gestureDescription, 100);
        try {
            synchronized (this.mLock) {
                this.mGestureStatusCallbackSequence++;
                if (gestureResultCallback != null) {
                    if (this.mGestureStatusCallbackInfos == null) {
                        this.mGestureStatusCallbackInfos = new SparseArray<>();
                    }
                    this.mGestureStatusCallbackInfos.put(this.mGestureStatusCallbackSequence, new GestureResultCallbackInfo(gestureDescription, gestureResultCallback, handler));
                }
                connection.sendGesture(this.mGestureStatusCallbackSequence, new ParceledListSlice(gestureStepsFromGestureDescription));
            }
            return true;
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public AccessibilityNodeInfo findFocus(int i2) {
        return AccessibilityInteractionClient.getInstance().findFocus(this.mConnectionId, -2, AccessibilityNodeInfo.ROOT_NODE_ID, i2);
    }

    public final AccessibilityButtonController getAccessibilityButtonController() {
        AccessibilityButtonController accessibilityButtonController;
        synchronized (this.mLock) {
            if (this.mAccessibilityButtonController == null) {
                this.mAccessibilityButtonController = new AccessibilityButtonController(AccessibilityInteractionClient.getInstance().getConnection(this.mConnectionId));
            }
            accessibilityButtonController = this.mAccessibilityButtonController;
        }
        return accessibilityButtonController;
    }

    public final FingerprintGestureController getFingerprintGestureController() {
        if (this.mFingerprintGestureController == null) {
            this.mFingerprintGestureController = new FingerprintGestureController(AccessibilityInteractionClient.getInstance().getConnection(this.mConnectionId));
        }
        return this.mFingerprintGestureController;
    }

    public final MagnificationController getMagnificationController() {
        MagnificationController magnificationController;
        synchronized (this.mLock) {
            if (this.mMagnificationController == null) {
                this.mMagnificationController = new MagnificationController(this, this.mLock);
            }
            magnificationController = this.mMagnificationController;
        }
        return magnificationController;
    }

    public AccessibilityNodeInfo getRootInActiveWindow() {
        return AccessibilityInteractionClient.getInstance().getRootInActiveWindow(this.mConnectionId);
    }

    public final AccessibilityServiceInfo getServiceInfo() {
        IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mConnectionId);
        if (connection == null) {
            return null;
        }
        try {
            return connection.getServiceInfo();
        } catch (RemoteException e2) {
            Log.w(LOG_TAG, "Error while getting AccessibilityServiceInfo", e2);
            e2.rethrowFromSystemServer();
            return null;
        }
    }

    public final SoftKeyboardController getSoftKeyboardController() {
        SoftKeyboardController softKeyboardController;
        synchronized (this.mLock) {
            if (this.mSoftKeyboardController == null) {
                this.mSoftKeyboardController = new SoftKeyboardController(this, this.mLock);
            }
            softKeyboardController = this.mSoftKeyboardController;
        }
        return softKeyboardController;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (getBaseContext() == null) {
            throw new IllegalStateException("System services not available to Activities before onCreate()");
        }
        if (!Context.WINDOW_SERVICE.equals(str)) {
            return super.getSystemService(str);
        }
        if (this.mWindowManager == null) {
            this.mWindowManager = (WindowManager) getBaseContext().getSystemService(str);
        }
        return this.mWindowManager;
    }

    public List<AccessibilityWindowInfo> getWindows() {
        return AccessibilityInteractionClient.getInstance().getWindows(this.mConnectionId);
    }

    public abstract void onAccessibilityEvent(AccessibilityEvent accessibilityEvent);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return new IAccessibilityServiceClientWrapper(this, getMainLooper(), new Callbacks() { // from class: android.accessibilityservice.AccessibilityService.2
            @Override // android.accessibilityservice.AccessibilityService.Callbacks
            public void init(int i2, IBinder iBinder) {
                AccessibilityService.this.mConnectionId = i2;
                AccessibilityService.this.mWindowToken = iBinder;
                ((WindowManagerImpl) AccessibilityService.this.getSystemService(Context.WINDOW_SERVICE)).setDefaultToken(iBinder);
            }

            @Override // android.accessibilityservice.AccessibilityService.Callbacks
            public void onAccessibilityButtonAvailabilityChanged(boolean z2) {
                AccessibilityService.this.onAccessibilityButtonAvailabilityChanged(z2);
            }

            @Override // android.accessibilityservice.AccessibilityService.Callbacks
            public void onAccessibilityButtonClicked() {
                AccessibilityService.this.onAccessibilityButtonClicked();
            }

            @Override // android.accessibilityservice.AccessibilityService.Callbacks
            public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
                AccessibilityService.this.onAccessibilityEvent(accessibilityEvent);
            }

            @Override // android.accessibilityservice.AccessibilityService.Callbacks
            public void onFingerprintCapturingGesturesChanged(boolean z2) {
                AccessibilityService.this.onFingerprintCapturingGesturesChanged(z2);
            }

            @Override // android.accessibilityservice.AccessibilityService.Callbacks
            public void onFingerprintGesture(int i2) {
                AccessibilityService.this.onFingerprintGesture(i2);
            }

            @Override // android.accessibilityservice.AccessibilityService.Callbacks
            public boolean onGesture(int i2) {
                return AccessibilityService.this.onGesture(i2);
            }

            @Override // android.accessibilityservice.AccessibilityService.Callbacks
            public void onInterrupt() {
                AccessibilityService.this.onInterrupt();
            }

            @Override // android.accessibilityservice.AccessibilityService.Callbacks
            public boolean onKeyEvent(KeyEvent keyEvent) {
                return AccessibilityService.this.onKeyEvent(keyEvent);
            }

            @Override // android.accessibilityservice.AccessibilityService.Callbacks
            public void onMagnificationChanged(Region region, float f2, float f3, float f4) {
                AccessibilityService.this.onMagnificationChanged(region, f2, f3, f4);
            }

            @Override // android.accessibilityservice.AccessibilityService.Callbacks
            public void onPerformGestureResult(int i2, boolean z2) {
                AccessibilityService.this.onPerformGestureResult(i2, z2);
            }

            @Override // android.accessibilityservice.AccessibilityService.Callbacks
            public void onServiceConnected() {
                AccessibilityService.this.dispatchServiceConnected();
            }

            @Override // android.accessibilityservice.AccessibilityService.Callbacks
            public void onSoftKeyboardShowModeChanged(int i2) {
                AccessibilityService.this.onSoftKeyboardShowModeChanged(i2);
            }
        });
    }

    public boolean onGesture(int i2) {
        return false;
    }

    public abstract void onInterrupt();

    public boolean onKeyEvent(KeyEvent keyEvent) {
        return false;
    }

    public void onPerformGestureResult(int i2, final boolean z2) {
        final GestureResultCallbackInfo gestureResultCallbackInfo;
        GestureDescription gestureDescription;
        GestureResultCallback gestureResultCallback;
        if (this.mGestureStatusCallbackInfos == null) {
            return;
        }
        synchronized (this.mLock) {
            gestureResultCallbackInfo = this.mGestureStatusCallbackInfos.get(i2);
        }
        if (gestureResultCallbackInfo == null || (gestureDescription = gestureResultCallbackInfo.gestureDescription) == null || (gestureResultCallback = gestureResultCallbackInfo.callback) == null) {
            return;
        }
        Handler handler = gestureResultCallbackInfo.handler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: android.accessibilityservice.AccessibilityService.1
                @Override // java.lang.Runnable
                public void run() {
                    if (z2) {
                        GestureResultCallbackInfo gestureResultCallbackInfo2 = gestureResultCallbackInfo;
                        gestureResultCallbackInfo2.callback.onCompleted(gestureResultCallbackInfo2.gestureDescription);
                    } else {
                        GestureResultCallbackInfo gestureResultCallbackInfo3 = gestureResultCallbackInfo;
                        gestureResultCallbackInfo3.callback.onCancelled(gestureResultCallbackInfo3.gestureDescription);
                    }
                }
            });
        } else if (z2) {
            gestureResultCallback.onCompleted(gestureDescription);
        } else {
            gestureResultCallback.onCancelled(gestureDescription);
        }
    }

    public void onServiceConnected() {
    }

    public final boolean performGlobalAction(int i2) {
        IAccessibilityServiceConnection connection = AccessibilityInteractionClient.getInstance().getConnection(this.mConnectionId);
        if (connection == null) {
            return false;
        }
        try {
            return connection.performGlobalAction(i2);
        } catch (RemoteException e2) {
            Log.w(LOG_TAG, "Error while calling performGlobalAction", e2);
            e2.rethrowFromSystemServer();
            return false;
        }
    }

    public final void setServiceInfo(AccessibilityServiceInfo accessibilityServiceInfo) {
        this.mInfo = accessibilityServiceInfo;
        sendServiceInfo();
    }
}
