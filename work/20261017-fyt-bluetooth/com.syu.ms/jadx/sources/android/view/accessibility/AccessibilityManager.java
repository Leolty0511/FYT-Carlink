package android.view.accessibility;

import android.Manifest;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.pm.ServiceInfo;
import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.Log;
import android.view.IWindow;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class AccessibilityManager {
    private static final boolean DEBUG = false;
    private static final int DO_SET_STATE = 10;
    private static final String LOG_TAG = "AccessibilityManager";
    public static final int STATE_FLAG_ACCESSIBILITY_ENABLED = 1;
    public static final int STATE_FLAG_TOUCH_EXPLORATION_ENABLED = 2;
    private static AccessibilityManager sInstance;
    public static final Object sInstanceSync = new Object();
    public final IAccessibilityManagerClient.Stub mClient;
    public final Handler mHandler;
    public boolean mIsEnabled;
    public boolean mIsTouchExplorationEnabled;
    public final IAccessibilityManager mService;
    public final int mUserId;
    private final CopyOnWriteArrayList<AccessibilityStateChangeListener> mAccessibilityStateChangeListeners = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<TouchExplorationStateChangeListener> mTouchExplorationStateChangeListeners = new CopyOnWriteArrayList<>();

    public interface AccessibilityStateChangeListener {
        void onAccessibilityStateChanged(boolean z2);
    }

    public class MyHandler extends Handler {
        public MyHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 10) {
                AccessibilityManager.this.setState(message.arg1);
                return;
            }
            Log.w(AccessibilityManager.LOG_TAG, "Unknown message type: " + message.what);
        }
    }

    public interface TouchExplorationStateChangeListener {
        void onTouchExplorationStateChanged(boolean z2);
    }

    public AccessibilityManager(Context context, IAccessibilityManager iAccessibilityManager, int i2) {
        IAccessibilityManagerClient.Stub stub = new IAccessibilityManagerClient.Stub() { // from class: android.view.accessibility.AccessibilityManager.1
            @Override // android.view.accessibility.IAccessibilityManagerClient
            public void setState(int i3) {
                AccessibilityManager.this.mHandler.obtainMessage(10, i3, 0).sendToTarget();
            }
        };
        this.mClient = stub;
        this.mHandler = new MyHandler(context.getMainLooper());
        this.mService = iAccessibilityManager;
        this.mUserId = i2;
        try {
            setState(iAccessibilityManager.addClient(stub, i2));
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "AccessibilityManagerService is dead", e2);
        }
    }

    public static AccessibilityManager getInstance(Context context) {
        synchronized (sInstanceSync) {
            if (sInstance == null) {
                sInstance = new AccessibilityManager(context, IAccessibilityManager.Stub.asInterface(ServiceManager.getService(Context.ACCESSIBILITY_SERVICE)), (Binder.getCallingUid() == 1000 || context.checkCallingOrSelfPermission(Manifest.permission.INTERACT_ACROSS_USERS) == 0 || context.checkCallingOrSelfPermission(Manifest.permission.INTERACT_ACROSS_USERS_FULL) == 0) ? -2 : UserHandle.myUserId());
            }
        }
        return sInstance;
    }

    private void notifyAccessibilityStateChangedLh() {
        int size = this.mAccessibilityStateChangeListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mAccessibilityStateChangeListeners.get(i2).onAccessibilityStateChanged(this.mIsEnabled);
        }
    }

    private void notifyTouchExplorationStateChangedLh() {
        int size = this.mTouchExplorationStateChangeListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTouchExplorationStateChangeListeners.get(i2).onTouchExplorationStateChanged(this.mIsTouchExplorationEnabled);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(int i2) {
        boolean z2 = (i2 & 1) != 0;
        boolean z3 = (i2 & 2) != 0;
        synchronized (this.mHandler) {
            boolean z4 = this.mIsEnabled;
            boolean z5 = this.mIsTouchExplorationEnabled;
            this.mIsEnabled = z2;
            this.mIsTouchExplorationEnabled = z3;
            if (z4 != z2) {
                notifyAccessibilityStateChangedLh();
            }
            if (z5 != z3) {
                notifyTouchExplorationStateChangedLh();
            }
        }
    }

    public int addAccessibilityInteractionConnection(IWindow iWindow, IAccessibilityInteractionConnection iAccessibilityInteractionConnection) {
        try {
            return this.mService.addAccessibilityInteractionConnection(iWindow, iAccessibilityInteractionConnection, this.mUserId);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error while adding an accessibility interaction connection. ", e2);
            return -1;
        }
    }

    public boolean addAccessibilityStateChangeListener(AccessibilityStateChangeListener accessibilityStateChangeListener) {
        return this.mAccessibilityStateChangeListeners.add(accessibilityStateChangeListener);
    }

    public boolean addTouchExplorationStateChangeListener(TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        return this.mTouchExplorationStateChangeListeners.add(touchExplorationStateChangeListener);
    }

    @Deprecated
    public List<ServiceInfo> getAccessibilityServiceList() {
        List<AccessibilityServiceInfo> installedAccessibilityServiceList = getInstalledAccessibilityServiceList();
        ArrayList arrayList = new ArrayList();
        int size = installedAccessibilityServiceList.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(installedAccessibilityServiceList.get(i2).getResolveInfo().serviceInfo);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public IAccessibilityManagerClient getClient() {
        return (IAccessibilityManagerClient) this.mClient.asBinder();
    }

    public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(int i2) {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        try {
            enabledAccessibilityServiceList = this.mService.getEnabledAccessibilityServiceList(i2, this.mUserId);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error while obtaining the installed AccessibilityServices. ", e2);
            enabledAccessibilityServiceList = null;
        }
        return Collections.unmodifiableList(enabledAccessibilityServiceList);
    }

    public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList() {
        List<AccessibilityServiceInfo> installedAccessibilityServiceList;
        try {
            installedAccessibilityServiceList = this.mService.getInstalledAccessibilityServiceList(this.mUserId);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error while obtaining the installed AccessibilityServices. ", e2);
            installedAccessibilityServiceList = null;
        }
        return Collections.unmodifiableList(installedAccessibilityServiceList);
    }

    public void interrupt() {
        if (!this.mIsEnabled) {
            throw new IllegalStateException("Accessibility off. Did you forget to check that?");
        }
        try {
            this.mService.interrupt(this.mUserId);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error while requesting interrupt from all services. ", e2);
        }
    }

    public boolean isEnabled() {
        boolean z2;
        synchronized (this.mHandler) {
            z2 = this.mIsEnabled;
        }
        return z2;
    }

    public boolean isTouchExplorationEnabled() {
        boolean z2;
        synchronized (this.mHandler) {
            z2 = this.mIsTouchExplorationEnabled;
        }
        return z2;
    }

    public void removeAccessibilityInteractionConnection(IWindow iWindow) {
        try {
            this.mService.removeAccessibilityInteractionConnection(iWindow);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error while removing an accessibility interaction connection. ", e2);
        }
    }

    public boolean removeAccessibilityStateChangeListener(AccessibilityStateChangeListener accessibilityStateChangeListener) {
        return this.mAccessibilityStateChangeListeners.remove(accessibilityStateChangeListener);
    }

    public boolean removeTouchExplorationStateChangeListener(TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        return this.mTouchExplorationStateChangeListeners.remove(touchExplorationStateChangeListener);
    }

    public void sendAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (!this.mIsEnabled) {
            throw new IllegalStateException("Accessibility off. Did you forget to check that?");
        }
        boolean zSendAccessibilityEvent = false;
        try {
            accessibilityEvent.setEventTime(SystemClock.uptimeMillis());
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            zSendAccessibilityEvent = this.mService.sendAccessibilityEvent(accessibilityEvent, this.mUserId);
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "Error during sending " + accessibilityEvent + " ", e2);
        } finally {
            if (zSendAccessibilityEvent) {
                accessibilityEvent.recycle();
            }
        }
    }
}
