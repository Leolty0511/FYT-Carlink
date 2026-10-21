package android.app;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.accessibilityservice.IAccessibilityServiceClient;
import android.accessibilityservice.IAccessibilityServiceConnection;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Region;
import android.hardware.display.DisplayManagerGlobal;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.Log;
import android.view.Display;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.WindowAnimationFrameStats;
import android.view.WindowContentFrameStats;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityInteractionClient;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeoutException;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public final class UiAutomation {
    private static final int CONNECTION_ID_UNDEFINED = -1;
    private static final long CONNECT_TIMEOUT_MILLIS = 5000;
    private static final boolean DEBUG = false;
    public static final int FLAG_DONT_SUPPRESS_ACCESSIBILITY_SERVICES = 1;
    private static final String LOG_TAG = "UiAutomation";
    public static final int ROTATION_FREEZE_0 = 0;
    public static final int ROTATION_FREEZE_180 = 2;
    public static final int ROTATION_FREEZE_270 = 3;
    public static final int ROTATION_FREEZE_90 = 1;
    public static final int ROTATION_FREEZE_CURRENT = -1;
    public static final int ROTATION_UNFREEZE = -2;
    private final IAccessibilityServiceClient mClient;
    private int mFlags;
    private boolean mIsConnecting;
    private boolean mIsDestroyed;
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
                public void init(int i2, IBinder iBinder) {
                    synchronized (uiAutomation.mLock) {
                        uiAutomation.mConnectionId = i2;
                        uiAutomation.mLock.notifyAll();
                    }
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onAccessibilityButtonAvailabilityChanged(boolean z2) {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onAccessibilityButtonClicked() {
                }

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
                public void onFingerprintCapturingGesturesChanged(boolean z2) {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onFingerprintGesture(int i2) {
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
                public void onMagnificationChanged(Region region, float f2, float f3, float f4) {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onPerformGestureResult(int i2, boolean z2) {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onServiceConnected() {
                }

                @Override // android.accessibilityservice.AccessibilityService.Callbacks
                public void onSoftKeyboardShowModeChanged(int i2) {
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

    public void clearWindowAnimationFrameStats() {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            this.mUiAutomationConnection.clearWindowAnimationFrameStats();
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error clearing window animation frame stats!", e2);
        }
    }

    public boolean clearWindowContentFrameStats(int i2) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            return this.mUiAutomationConnection.clearWindowContentFrameStats(i2);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error clearing window content frame stats!", e2);
            return false;
        }
    }

    public void connect() {
        connect(0);
    }

    public void destroy() {
        disconnect();
        this.mIsDestroyed = true;
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
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            this.mEventQueue.clear();
            this.mWaitingForEventDelivery = true;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        runnable.run();
        try {
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            while (true) {
                ArrayList arrayList = new ArrayList();
                synchronized (this.mLock) {
                    arrayList.addAll(this.mEventQueue);
                    this.mEventQueue.clear();
                }
                while (!arrayList.isEmpty()) {
                    AccessibilityEvent accessibilityEvent = (AccessibilityEvent) arrayList.remove(0);
                    if (accessibilityEvent.getEventTime() >= jUptimeMillis) {
                        if (accessibilityEventFilter.accept(accessibilityEvent)) {
                            synchronized (this.mLock) {
                                this.mWaitingForEventDelivery = false;
                                this.mEventQueue.clear();
                                this.mLock.notifyAll();
                            }
                            return accessibilityEvent;
                        }
                        accessibilityEvent.recycle();
                    }
                }
                long jUptimeMillis3 = j2 - (SystemClock.uptimeMillis() - jUptimeMillis2);
                if (jUptimeMillis3 <= 0) {
                    throw new TimeoutException("Expected event not received within: " + j2 + " ms.");
                }
                synchronized (this.mLock) {
                    if (this.mEventQueue.isEmpty()) {
                        try {
                            this.mLock.wait(jUptimeMillis3);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        } catch (Throwable th) {
            synchronized (this.mLock) {
                this.mWaitingForEventDelivery = false;
                this.mEventQueue.clear();
                this.mLock.notifyAll();
                throw th;
            }
        }
    }

    public ParcelFileDescriptor executeShellCommand(String str) throws Throwable {
        ParcelFileDescriptor parcelFileDescriptor;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        ParcelFileDescriptor parcelFileDescriptor2 = null;
        try {
            try {
                ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
                parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
                try {
                    ParcelFileDescriptor parcelFileDescriptor3 = parcelFileDescriptorArrCreatePipe[1];
                    try {
                        this.mUiAutomationConnection.executeShellCommand(str, parcelFileDescriptor3, null);
                        IoUtils.closeQuietly(parcelFileDescriptor3);
                    } catch (RemoteException e2) {
                        e = e2;
                        parcelFileDescriptor2 = parcelFileDescriptor3;
                        Log.e(LOG_TAG, "Error executing shell command!", e);
                        IoUtils.closeQuietly(parcelFileDescriptor2);
                    } catch (IOException e3) {
                        e = e3;
                        parcelFileDescriptor2 = parcelFileDescriptor3;
                        Log.e(LOG_TAG, "Error executing shell command!", e);
                        IoUtils.closeQuietly(parcelFileDescriptor2);
                    } catch (Throwable th) {
                        th = th;
                        parcelFileDescriptor2 = parcelFileDescriptor3;
                        IoUtils.closeQuietly(parcelFileDescriptor2);
                        throw th;
                    }
                } catch (RemoteException e4) {
                    e = e4;
                } catch (IOException e5) {
                    e = e5;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (RemoteException e6) {
            e = e6;
            parcelFileDescriptor = null;
        } catch (IOException e7) {
            e = e7;
            parcelFileDescriptor = null;
        }
        return parcelFileDescriptor;
    }

    public ParcelFileDescriptor[] executeShellCommandRw(String str) throws Throwable {
        ParcelFileDescriptor parcelFileDescriptor;
        ParcelFileDescriptor parcelFileDescriptor2;
        ParcelFileDescriptor parcelFileDescriptor3;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        ParcelFileDescriptor parcelFileDescriptor4 = null;
        try {
            try {
                try {
                    ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
                    parcelFileDescriptor3 = parcelFileDescriptorArrCreatePipe[0];
                    try {
                        ParcelFileDescriptor parcelFileDescriptor5 = parcelFileDescriptorArrCreatePipe[1];
                        try {
                            ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe2 = ParcelFileDescriptor.createPipe();
                            parcelFileDescriptor = parcelFileDescriptorArrCreatePipe2[0];
                            try {
                                parcelFileDescriptor4 = parcelFileDescriptorArrCreatePipe2[1];
                                this.mUiAutomationConnection.executeShellCommand(str, parcelFileDescriptor5, parcelFileDescriptor);
                                IoUtils.closeQuietly(parcelFileDescriptor5);
                                IoUtils.closeQuietly(parcelFileDescriptor);
                            } catch (RemoteException e2) {
                                e = e2;
                                parcelFileDescriptor2 = parcelFileDescriptor4;
                                parcelFileDescriptor4 = parcelFileDescriptor5;
                                Log.e(LOG_TAG, "Error executing shell command!", e);
                                IoUtils.closeQuietly(parcelFileDescriptor4);
                                IoUtils.closeQuietly(parcelFileDescriptor);
                                parcelFileDescriptor4 = parcelFileDescriptor2;
                            } catch (IOException e3) {
                                e = e3;
                                parcelFileDescriptor2 = parcelFileDescriptor4;
                                parcelFileDescriptor4 = parcelFileDescriptor5;
                                Log.e(LOG_TAG, "Error executing shell command!", e);
                                IoUtils.closeQuietly(parcelFileDescriptor4);
                                IoUtils.closeQuietly(parcelFileDescriptor);
                                parcelFileDescriptor4 = parcelFileDescriptor2;
                            } catch (Throwable th) {
                                th = th;
                                parcelFileDescriptor4 = parcelFileDescriptor5;
                                IoUtils.closeQuietly(parcelFileDescriptor4);
                                IoUtils.closeQuietly(parcelFileDescriptor);
                                throw th;
                            }
                        } catch (RemoteException e4) {
                            e = e4;
                            parcelFileDescriptor = null;
                            parcelFileDescriptor4 = parcelFileDescriptor5;
                            parcelFileDescriptor2 = null;
                        } catch (IOException e5) {
                            e = e5;
                            parcelFileDescriptor = null;
                            parcelFileDescriptor4 = parcelFileDescriptor5;
                            parcelFileDescriptor2 = null;
                        } catch (Throwable th2) {
                            th = th2;
                            parcelFileDescriptor = null;
                        }
                    } catch (RemoteException e6) {
                        e = e6;
                        parcelFileDescriptor2 = null;
                        parcelFileDescriptor = null;
                    } catch (IOException e7) {
                        e = e7;
                        parcelFileDescriptor2 = null;
                        parcelFileDescriptor = null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    parcelFileDescriptor = null;
                }
            } catch (RemoteException e8) {
                e = e8;
                parcelFileDescriptor2 = null;
                parcelFileDescriptor3 = null;
                parcelFileDescriptor = null;
            } catch (IOException e9) {
                e = e9;
                parcelFileDescriptor2 = null;
                parcelFileDescriptor3 = null;
                parcelFileDescriptor = null;
            }
            return new ParcelFileDescriptor[]{parcelFileDescriptor3, parcelFileDescriptor4};
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public AccessibilityNodeInfo findFocus(int i2) {
        return AccessibilityInteractionClient.getInstance().findFocus(this.mConnectionId, -2, AccessibilityNodeInfo.ROOT_NODE_ID, i2);
    }

    public int getConnectionId() {
        int i2;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            i2 = this.mConnectionId;
        }
        return i2;
    }

    public int getFlags() {
        return this.mFlags;
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

    public WindowAnimationFrameStats getWindowAnimationFrameStats() {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            return this.mUiAutomationConnection.getWindowAnimationFrameStats();
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error getting window animation frame stats!", e2);
            return null;
        }
    }

    public WindowContentFrameStats getWindowContentFrameStats(int i2) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            return this.mUiAutomationConnection.getWindowContentFrameStats(i2);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error getting window content frame stats!", e2);
            return null;
        }
    }

    public List<AccessibilityWindowInfo> getWindows() {
        int i2;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
            i2 = this.mConnectionId;
        }
        return AccessibilityInteractionClient.getInstance().getWindows(i2);
    }

    public boolean grantRuntimePermission(String str, String str2, UserHandle userHandle) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            this.mUiAutomationConnection.grantRuntimePermission(str, str2, userHandle.getIdentifier());
            return true;
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error granting runtime permission", e2);
            return false;
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

    public boolean isDestroyed() {
        return this.mIsDestroyed;
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

    public boolean revokeRuntimePermission(String str, String str2, UserHandle userHandle) {
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        try {
            this.mUiAutomationConnection.revokeRuntimePermission(str, str2, userHandle.getIdentifier());
            return true;
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error revoking runtime permission", e2);
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
            ActivityManager.getService().setUserIsMonkey(z2);
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

    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    public Bitmap takeScreenshot() {
        float f2;
        float f3;
        synchronized (this.mLock) {
            throwIfNotConnectedLocked();
        }
        Display realDisplay = DisplayManagerGlobal.getInstance().getRealDisplay(0);
        Point point = new Point();
        realDisplay.getRealSize(point);
        int i2 = point.f71x;
        int i3 = point.f72y;
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
                    throw new IllegalArgumentException(android.accessibilityservice.c.d("Invalid rotation: ", rotation));
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
                bitmapTakeScreenshot.recycle();
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
        try {
            boolean z2 = false;
            boolean z3 = false;
            for (StackTraceElement stackTraceElement : new Throwable().getStackTrace()) {
                if ("android.autofillservice.cts.SessionLifecycleTest".equals(stackTraceElement.getClassName()) && "testDatasetAuthResponseWhileAutofilledAppIsLifecycled".equals(stackTraceElement.getMethodName())) {
                    z3 = true;
                } else if ("android.support.test.uiautomator.UiDevice".equals(stackTraceElement.getClassName()) && "getDisplayRotation".equals(stackTraceElement.getMethodName())) {
                    z2 = true;
                }
            }
            if (z2 && z3) {
                SystemClock.sleep(2000L);
                Log.w(LOG_TAG, "waitForIdle workaroud for cts, should be removed if google's bug is fixed");
            }
        } catch (Exception e2) {
            Log.e(LOG_TAG, "Error while doing workaround!", e2);
        }
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

    public void connect(int i2) {
        synchronized (this.mLock) {
            throwIfConnectedLocked();
            if (this.mIsConnecting) {
                return;
            }
            this.mIsConnecting = true;
            try {
                this.mUiAutomationConnection.connect(this.mClient, i2);
                this.mFlags = i2;
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
}
