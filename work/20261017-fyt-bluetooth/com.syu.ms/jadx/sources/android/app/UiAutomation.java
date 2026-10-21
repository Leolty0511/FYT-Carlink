package android.app;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.accessibilityservice.IAccessibilityServiceClient;
import android.accessibilityservice.IAccessibilityServiceConnection;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.hardware.display.DisplayManagerGlobal;
import android.os.Looper;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import android.view.Display;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityInteractionClient;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class UiAutomation {
    private static final int CONNECTION_ID_UNDEFINED = -1;
    private static final long CONNECT_TIMEOUT_MILLIS = 5000;
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "UiAutomation";
    public static final int ROTATION_FREEZE_0 = 0;
    public static final int ROTATION_FREEZE_180 = 2;
    public static final int ROTATION_FREEZE_270 = 3;
    public static final int ROTATION_FREEZE_90 = 1;
    public static final int ROTATION_FREEZE_CURRENT = -1;
    public static final int ROTATION_UNFREEZE = -2;
    private final IAccessibilityServiceClient mClient;
    private boolean mIsConnecting;
    private long mLastEventTimeMillis;
    private OnAccessibilityEventListener mOnAccessibilityEventListener;
    private final IUiAutomationConnection mUiAutomationConnection;
    private boolean mWaitingForEventDelivery;
    private final Object mLock = new Object();
    private final ArrayList<AccessibilityEvent> mEventQueue = new ArrayList<>();
    private int mConnectionId = -1;

    public interface AccessibilityEventFilter {
        boolean accept(AccessibilityEvent accessibilityEvent);
    }

    public class IAccessibilityServiceClientImpl extends AccessibilityService.IAccessibilityServiceClientWrapper {
        public IAccessibilityServiceClientImpl(Looper looper) {
            super(null, looper, new AccessibilityService.Callbacks() { // from class: android.app.UiAutomation.IAccessibilityServiceClientImpl.1
                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
                    synchronized (uiAutomation.mLock) {
                        uiAutomation.mLastEventTimeMillis = accessibilityEvent.getEventTime();
                        if (uiAutomation.mWaitingForEventDelivery) {
                            uiAutomation.mEventQueue.add(AccessibilityEvent.obtain(accessibilityEvent));
                        }
                        uiAutomation.mLock.notifyAll();
                    }
                    OnAccessibilityEventListener onAccessibilityEventListener = uiAutomation.mOnAccessibilityEventListener;
                    if (onAccessibilityEventListener != null) {
                        onAccessibilityEventListener.onAccessibilityEvent(AccessibilityEvent.obtain(accessibilityEvent));
                    }
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public boolean onGesture(int i2) {
                    return false;
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onInterrupt() {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public boolean onKeyEvent(KeyEvent keyEvent) {
                    return false;
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onServiceConnected() {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onSetConnectionId(int i2) {
                    synchronized (uiAutomation.mLock) {
                        uiAutomation.mConnectionId = i2;
                        uiAutomation.mLock.notifyAll();
                    }
                }
            });
        }
    }

    public interface OnAccessibilityEventListener {
        void onAccessibilityEvent(AccessibilityEvent accessibilityEvent);
    }

    public UiAutomation(Looper looper, IUiAutomationConnection iUiAutomationConnection) {
        if (looper == null) {
            throw new IllegalArgumentException("Looper cannot be null!");
        }
        if (iUiAutomationConnection == null) {
            throw new IllegalArgumentException("Connection cannot be null!");
        }
        this.mUiAutomationConnection = iUiAutomationConnection;
        this.mClient = new IAccessibilityServiceClientImpl(looper);
    }

    private static float getDegreesForRotation(int i2) {
        if (i2 == 1) {
            return 270.0f;
        }
        if (i2 != 2) {
            return i2 != 3 ? 0.0f : 90.0f;
        }
        return 180.0f;
    }

    private boolean isConnectedLocked() {
        return this.mConnectionId != -1;
    }

    private void throwIfConnectedLocked() {
        if (this.mConnectionId != -1) {
            throw new IllegalStateException("UiAutomation not connected!");
        }
    }

    private void throwIfNotConnectedLocked() {
        if (!isConnectedLocked()) {
            throw new IllegalStateException("UiAutomation not connected!");
        }
    }

    public void connect() {
        synchronized (this.mLock) {
            throwIfConnectedLocked();
            if (this.mIsConnecting) {
                return;
            }
            this.mIsConnecting = true;
            try {
                this.mUiAutomationConnection.connect(this.mClient);
                synchronized (this.mLock) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    while (!isConnectedLocked()) {
                        try {
                            long jUptimeMillis2 = 5000 - (SystemClock.uptimeMillis() - jUptimeMillis);
                            if (jUptimeMillis2 <= 0) {
                                throw new RuntimeException("Error while connecting UiAutomation");
                            }
                            try {
                                this.mLock.wait(jUptimeMillis2);
                            } catch (InterruptedException unused) {
                            }
                        } catch (Throwable th) {
                            this.mIsConnecting = false;
                            throw th;
                        }
                    }
                    this.mIsConnecting = false;
                }
            } catch (RemoteException e2) {
                throw new RuntimeException("Error while connecting UiAutomation", e2);
            }
        }
    }

    public void disconnect() {
        synchronized (this.mLock) {
            if (this.mIsConnecting) {
                throw new IllegalStateException("Cannot call disconnect() while connecting!");
            }
            throwIfNotConnectedLocked();
            this.mConnectionId = -1;
        }
        try {
            this.mUiAutomationConnection.disconnect();
        } catch (RemoteException e2) {
            throw new RuntimeException("Error while disconnecting UiAutomation", e2);
        }
    }

    public AccessibilityEvent executeAndWaitForEvent(Runnable runnable, AccessibilityEventFilter accessibilityEventFilter, long j2) {
        AccessibilityEvent accessibilityEventRemove;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            this.mEventQueue.clear();
            this.mWaitingForEventDelivery = true;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        runnable.run();
        synchronized (this.mLock) {
            try {
                long jUptimeMillis2 = SystemClock.uptimeMillis();
                while (true) {
                    if (this.mEventQueue.isEmpty()) {
                        long jUptimeMillis3 = j2 - (SystemClock.uptimeMillis() - jUptimeMillis2);
                        if (jUptimeMillis3 <= 0) {
                            throw new TimeoutException("Expected event not received within: " + j2 + " ms.");
                        }
                        try {
                            this.mLock.wait(jUptimeMillis3);
                        } catch (InterruptedException unused) {
                        }
                    } else {
                        accessibilityEventRemove = this.mEventQueue.remove(0);
                        if (accessibilityEventRemove.getEventTime() >= jUptimeMillis) {
                            if (accessibilityEventFilter.accept(accessibilityEventRemove)) {
                                this.mWaitingForEventDelivery = false;
                                this.mEventQueue.clear();
                                this.mLock.notifyAll();
                            } else {
                                accessibilityEventRemove.recycle();
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                this.mWaitingForEventDelivery = false;
                this.mEventQueue.clear();
                this.mLock.notifyAll();
                throw th;
            }
        }
        return accessibilityEventRemove;
    }

    public int getConnectionId() {
        int i2;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            i2 = this.mConnectionId;
        }
        return i2;
    }

    public AccessibilityNodeInfo getRootInActiveWindow() {
        int i2;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            i2 = this.mConnectionId;
        }
        return AccessibilityInteractionClient.getInstance().getRootInActiveWindow(i2);
    }

    public final AccessibilityServiceInfo getServiceInfo() {
        IAccessibilityServiceConnection connection;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            connection = AccessibilityInteractionClient.getInstance().getConnection(this.mConnectionId);
        }
        if (connection == null) {
            return null;
        }
        try {
            return connection.getServiceInfo();
        } catch (RemoteException e2) {
            Log.w(LOG_TAG, "Error while getting AccessibilityServiceInfo", e2);
            return null;
        }
    }

    public boolean injectInputEvent(InputEvent inputEvent, boolean z2) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            return this.mUiAutomationConnection.injectInputEvent(inputEvent, z2);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error while injecting input event!", e2);
            return false;
        }
    }

    public final boolean performGlobalAction(int i2) {
        IAccessibilityServiceConnection connection;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            connection = AccessibilityInteractionClient.getInstance().getConnection(this.mConnectionId);
        }
        if (connection == null) {
            return false;
        }
        try {
            return connection.performGlobalAction(i2);
        } catch (RemoteException e2) {
            Log.w(LOG_TAG, "Error while calling performGlobalAction", e2);
            return false;
        }
    }

    public void setOnAccessibilityEventListener(OnAccessibilityEventListener onAccessibilityEventListener) {
        synchronized (this.mLock) {
            this.mOnAccessibilityEventListener = onAccessibilityEventListener;
        }
    }

    public boolean setRotation(int i2) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        if (i2 != -2 && i2 != -1 && i2 != 0 && i2 != 1 && i2 != 2 && i2 != 3) {
            throw new IllegalArgumentException("Invalid rotation.");
        }
        try {
            this.mUiAutomationConnection.setRotation(i2);
            return true;
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error while setting rotation!", e2);
            return false;
        }
    }

    public void setRunAsMonkey(boolean z2) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            ActivityManagerNative.getDefault().setUserIsMonkey(z2);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error while setting run as monkey!", e2);
        }
    }

    public final void setServiceInfo(AccessibilityServiceInfo accessibilityServiceInfo) {
        IAccessibilityServiceConnection connection;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            AccessibilityInteractionClient.getInstance().clearCache();
            connection = AccessibilityInteractionClient.getInstance().getConnection(this.mConnectionId);
        }
        if (connection != null) {
            try {
                connection.setServiceInfo(accessibilityServiceInfo);
            } catch (RemoteException e2) {
                Log.w(LOG_TAG, "Error while setting AccessibilityServiceInfo", e2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0046  */
    public Bitmap takeScreenshot() {
        float f2;
        float f3;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        Display realDisplay = DisplayManagerGlobal.getInstance().getRealDisplay(0);
        Point point = new Point();
        realDisplay.getRealSize(point);
        int i2 = point.f137x;
        int i3 = point.f138y;
        int rotation = realDisplay.getRotation();
        if (rotation == 0) {
            f2 = i2;
            f3 = i3;
        } else {
            if (rotation != 1) {
                if (rotation == 2) {
                    f2 = i2;
                    f3 = i3;
                } else if (rotation != 3) {
                    throw new IllegalArgumentException("Invalid rotation: " + rotation);
                }
            }
            f2 = i3;
            f3 = i2;
        }
        try {
            Bitmap bitmapTakeScreenshot = this.mUiAutomationConnection.takeScreenshot((int) f2, (int) f3);
            if (bitmapTakeScreenshot == null) {
                return null;
            }
            if (rotation != 0) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                canvas.translate(bitmapCreateBitmap.getWidth() / 2, bitmapCreateBitmap.getHeight() / 2);
                canvas.rotate(getDegreesForRotation(rotation));
                canvas.translate((-f2) / 2.0f, (-f3) / 2.0f);
                canvas.drawBitmap(bitmapTakeScreenshot, 0.0f, 0.0f, (Paint) null);
                canvas.setBitmap(null);
                bitmapTakeScreenshot = bitmapCreateBitmap;
            }
            bitmapTakeScreenshot.setHasAlpha(false);
            return bitmapTakeScreenshot;
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error while taking screnshot!", e2);
            return null;
        }
    }

    public void waitForIdle(long j2, long j3) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (this.mLastEventTimeMillis <= 0) {
                this.mLastEventTimeMillis = jUptimeMillis;
            }
            while (true) {
                long jUptimeMillis2 = SystemClock.uptimeMillis();
                if (j3 - (jUptimeMillis2 - jUptimeMillis) <= 0) {
                    throw new TimeoutException("No idle state with idle timeout: " + j2 + " within global timeout: " + j3);
                }
                long j4 = j2 - (jUptimeMillis2 - this.mLastEventTimeMillis);
                if (j4 > 0) {
                    try {
                        this.mLock.wait(j4);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }
}
