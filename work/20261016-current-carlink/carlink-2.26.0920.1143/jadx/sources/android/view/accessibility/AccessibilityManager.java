package android.view.accessibility;

import android.Manifest;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.accessibilityservice.d;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Log;
import android.util.SparseArray;
import android.view.IWindow;
import com.android.internal.R;
import com.android.internal.util.IntPair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AccessibilityManager {
    public static final String ACTION_CHOOSE_ACCESSIBILITY_BUTTON = "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON";
    public static final int AUTOCLICK_DELAY_DEFAULT = 600;
    public static final int DALTONIZER_CORRECT_DEUTERANOMALY = 12;
    public static final int DALTONIZER_DISABLED = -1;
    public static final int DALTONIZER_SIMULATE_MONOCHROMACY = 0;
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "AccessibilityManager";
    public static final int STATE_FLAG_ACCESSIBILITY_ENABLED = 1;
    public static final int STATE_FLAG_HIGH_TEXT_CONTRAST_ENABLED = 4;
    public static final int STATE_FLAG_TOUCH_EXPLORATION_ENABLED = 2;
    private static AccessibilityManager sInstance;
    static final Object sInstanceSync = new Object();
    private final ArrayMap<AccessibilityStateChangeListener, Handler> mAccessibilityStateChangeListeners;
    final Handler.Callback mCallback;
    private final IAccessibilityManagerClient.Stub mClient;
    final Handler mHandler;
    private final ArrayMap<HighTextContrastChangeListener, Handler> mHighTextContrastStateChangeListeners;
    boolean mIsEnabled;
    boolean mIsHighTextContrastEnabled;
    boolean mIsTouchExplorationEnabled;
    private final Object mLock;
    int mRelevantEventTypes;
    private SparseArray<List<AccessibilityRequestPreparer>> mRequestPreparerLists;
    private IAccessibilityManager mService;
    private final ArrayMap<AccessibilityServicesStateChangeListener, Handler> mServicesStateChangeListeners;
    private final ArrayMap<TouchExplorationStateChangeListener, Handler> mTouchExplorationStateChangeListeners;
    final int mUserId;

    /* JADX INFO: renamed from: android.view.accessibility.AccessibilityManager$1, reason: invalid class name */
    public class AnonymousClass1 extends IAccessibilityManagerClient.Stub {
        public AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$notifyServicesStateChanged$0(AccessibilityServicesStateChangeListener accessibilityServicesStateChangeListener) {
            accessibilityServicesStateChangeListener.onAccessibilityServicesStateChanged(AccessibilityManager.this);
        }

        @Override // android.view.accessibility.IAccessibilityManagerClient
        public void notifyServicesStateChanged() {
            synchronized (AccessibilityManager.this.mLock) {
                if (AccessibilityManager.this.mServicesStateChangeListeners.isEmpty()) {
                    return;
                }
                int size = new ArrayMap(AccessibilityManager.this.mServicesStateChangeListeners).size();
                for (int i2 = 0; i2 < size; i2++) {
                    final AccessibilityServicesStateChangeListener accessibilityServicesStateChangeListener = (AccessibilityServicesStateChangeListener) AccessibilityManager.this.mServicesStateChangeListeners.keyAt(i2);
                    ((Handler) AccessibilityManager.this.mServicesStateChangeListeners.valueAt(i2)).post(new Runnable() { // from class: android.view.accessibility.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f214b.lambda$notifyServicesStateChanged$0(accessibilityServicesStateChangeListener);
                        }
                    });
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityManagerClient
        public void setRelevantEventTypes(int i2) {
            AccessibilityManager.this.mRelevantEventTypes = i2;
        }

        @Override // android.view.accessibility.IAccessibilityManagerClient
        public void setState(int i2) {
            AccessibilityManager.this.mHandler.obtainMessage(1, i2, 0).sendToTarget();
        }
    }

    public interface AccessibilityServicesStateChangeListener {
        void onAccessibilityServicesStateChanged(AccessibilityManager accessibilityManager);
    }

    public interface AccessibilityStateChangeListener {
        void onAccessibilityStateChanged(boolean z2);
    }

    public interface HighTextContrastChangeListener {
        void onHighTextContrastStateChanged(boolean z2);
    }

    public final class MyCallback implements Handler.Callback {
        public static final int MSG_SET_STATE = 1;

        private MyCallback() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                int i2 = message.arg1;
                synchronized (AccessibilityManager.this.mLock) {
                    AccessibilityManager.this.setStateLocked(i2);
                }
            }
            return true;
        }

        public /* synthetic */ MyCallback(AccessibilityManager accessibilityManager, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public interface TouchExplorationStateChangeListener {
        void onTouchExplorationStateChanged(boolean z2);
    }

    public AccessibilityManager(Context context, IAccessibilityManager iAccessibilityManager, int i2) {
        Object obj = new Object();
        this.mLock = obj;
        this.mRelevantEventTypes = -1;
        this.mAccessibilityStateChangeListeners = new ArrayMap<>();
        this.mTouchExplorationStateChangeListeners = new ArrayMap<>();
        this.mHighTextContrastStateChangeListeners = new ArrayMap<>();
        this.mServicesStateChangeListeners = new ArrayMap<>();
        this.mClient = new AnonymousClass1();
        MyCallback myCallback = new MyCallback(this, null);
        this.mCallback = myCallback;
        this.mHandler = new Handler(context.getMainLooper(), myCallback);
        this.mUserId = i2;
        synchronized (obj) {
            tryConnectToServiceLocked(iAccessibilityManager);
        }
    }

    public static AccessibilityManager getInstance(Context context) {
        synchronized (sInstanceSync) {
            if (sInstance == null) {
                sInstance = new AccessibilityManager(context, (IAccessibilityManager) null, (Binder.getCallingUid() == 1000 || context.checkCallingOrSelfPermission(Manifest.permission.INTERACT_ACROSS_USERS) == 0 || context.checkCallingOrSelfPermission(Manifest.permission.INTERACT_ACROSS_USERS_FULL) == 0) ? -2 : UserHandle.myUserId());
            }
        }
        return sInstance;
    }

    private IAccessibilityManager getServiceLocked() {
        if (this.mService == null) {
            tryConnectToServiceLocked(null);
        }
        return this.mService;
    }

    public static boolean isAccessibilityButtonSupported() {
        return Resources.getSystem().getBoolean(R.bool.config_showNavigationBar);
    }

    private void notifyAccessibilityStateChanged() {
        synchronized (this.mLock) {
            if (this.mAccessibilityStateChangeListeners.isEmpty()) {
                return;
            }
            boolean z2 = this.mIsEnabled;
            int size = new ArrayMap(this.mAccessibilityStateChangeListeners).size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mAccessibilityStateChangeListeners.valueAt(i2).post(new d(1, z2, this.mAccessibilityStateChangeListeners.keyAt(i2)));
            }
        }
    }

    private void notifyHighTextContrastStateChanged() {
        synchronized (this.mLock) {
            if (this.mHighTextContrastStateChangeListeners.isEmpty()) {
                return;
            }
            boolean z2 = this.mIsHighTextContrastEnabled;
            int size = new ArrayMap(this.mHighTextContrastStateChangeListeners).size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mHighTextContrastStateChangeListeners.valueAt(i2).post(new d(2, z2, this.mHighTextContrastStateChangeListeners.keyAt(i2)));
            }
        }
    }

    private void notifyTouchExplorationStateChanged() {
        synchronized (this.mLock) {
            if (this.mTouchExplorationStateChangeListeners.isEmpty()) {
                return;
            }
            boolean z2 = this.mIsTouchExplorationEnabled;
            int size = new ArrayMap(this.mTouchExplorationStateChangeListeners).size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mTouchExplorationStateChangeListeners.valueAt(i2).post(new d(3, z2, this.mTouchExplorationStateChangeListeners.keyAt(i2)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStateLocked(int i2) {
        boolean z2 = (i2 & 1) != 0;
        boolean z3 = (i2 & 2) != 0;
        boolean z4 = (i2 & 4) != 0;
        boolean z5 = this.mIsEnabled;
        boolean z6 = this.mIsTouchExplorationEnabled;
        boolean z7 = this.mIsHighTextContrastEnabled;
        this.mIsEnabled = z2;
        this.mIsTouchExplorationEnabled = z3;
        this.mIsHighTextContrastEnabled = z4;
        if (z5 != z2) {
            notifyAccessibilityStateChanged();
        }
        if (z6 != z3) {
            notifyTouchExplorationStateChanged();
        }
        if (z7 != z4) {
            notifyHighTextContrastStateChanged();
        }
    }

    private void tryConnectToServiceLocked(IAccessibilityManager iAccessibilityManager) {
        if (iAccessibilityManager == null) {
            IBinder service = ServiceManager.getService(Context.ACCESSIBILITY_SERVICE);
            if (service == null) {
                return;
            } else {
                iAccessibilityManager = IAccessibilityManager.Stub.asInterface(service);
            }
        }
        try {
            long jAddClient = iAccessibilityManager.addClient(this.mClient, this.mUserId);
            setStateLocked(IntPair.first(jAddClient));
            this.mRelevantEventTypes = IntPair.second(jAddClient);
            this.mService = iAccessibilityManager;
        } catch (RemoteException e2) {
            Log.e(LOG_TAG, "AccessibilityManagerService is dead", e2);
        }
    }

    public int addAccessibilityInteractionConnection(IWindow iWindow, IAccessibilityInteractionConnection iAccessibilityInteractionConnection) {
        synchronized (this.mLock) {
            IAccessibilityManager serviceLocked = getServiceLocked();
            if (serviceLocked == null) {
                return -1;
            }
            int i2 = this.mUserId;
            try {
                return serviceLocked.addAccessibilityInteractionConnection(iWindow, iAccessibilityInteractionConnection, i2);
            } catch (RemoteException e2) {
                Log.e(LOG_TAG, "Error while adding an accessibility interaction connection. ", e2);
                return -1;
            }
        }
    }

    public void addAccessibilityRequestPreparer(AccessibilityRequestPreparer accessibilityRequestPreparer) {
        if (this.mRequestPreparerLists == null) {
            this.mRequestPreparerLists = new SparseArray<>(1);
        }
        int accessibilityViewId = accessibilityRequestPreparer.getView().getAccessibilityViewId();
        List<AccessibilityRequestPreparer> arrayList = this.mRequestPreparerLists.get(accessibilityViewId);
        if (arrayList == null) {
            arrayList = new ArrayList<>(1);
            this.mRequestPreparerLists.put(accessibilityViewId, arrayList);
        }
        arrayList.add(accessibilityRequestPreparer);
    }

    public void addAccessibilityServicesStateChangeListener(AccessibilityServicesStateChangeListener accessibilityServicesStateChangeListener, Handler handler) {
        synchronized (this.mLock) {
            ArrayMap<AccessibilityServicesStateChangeListener, Handler> arrayMap = this.mServicesStateChangeListeners;
            if (handler == null) {
                handler = this.mHandler;
            }
            arrayMap.put(accessibilityServicesStateChangeListener, handler);
        }
    }

    public boolean addAccessibilityStateChangeListener(AccessibilityStateChangeListener accessibilityStateChangeListener) {
        addAccessibilityStateChangeListener(accessibilityStateChangeListener, null);
        return true;
    }

    public void addHighTextContrastStateChangeListener(HighTextContrastChangeListener highTextContrastChangeListener, Handler handler) {
        synchronized (this.mLock) {
            ArrayMap<HighTextContrastChangeListener, Handler> arrayMap = this.mHighTextContrastStateChangeListeners;
            if (handler == null) {
                handler = this.mHandler;
            }
            arrayMap.put(highTextContrastChangeListener, handler);
        }
    }

    public boolean addTouchExplorationStateChangeListener(TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        addTouchExplorationStateChangeListener(touchExplorationStateChangeListener, null);
        return true;
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

    public Handler.Callback getCallback() {
        return this.mCallback;
    }

    public IAccessibilityManagerClient getClient() {
        return this.mClient;
    }

    public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(int i2) {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        synchronized (this.mLock) {
            IAccessibilityManager serviceLocked = getServiceLocked();
            if (serviceLocked == null) {
                return Collections.emptyList();
            }
            int i3 = this.mUserId;
            try {
                enabledAccessibilityServiceList = serviceLocked.getEnabledAccessibilityServiceList(i2, i3);
            } catch (RemoteException e2) {
                Log.e(LOG_TAG, "Error while obtaining the installed AccessibilityServices. ", e2);
                enabledAccessibilityServiceList = null;
            }
            return enabledAccessibilityServiceList != null ? Collections.unmodifiableList(enabledAccessibilityServiceList) : Collections.emptyList();
        }
    }

    public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList() {
        List<AccessibilityServiceInfo> installedAccessibilityServiceList;
        synchronized (this.mLock) {
            IAccessibilityManager serviceLocked = getServiceLocked();
            if (serviceLocked == null) {
                return Collections.emptyList();
            }
            int i2 = this.mUserId;
            try {
                installedAccessibilityServiceList = serviceLocked.getInstalledAccessibilityServiceList(i2);
            } catch (RemoteException e2) {
                Log.e(LOG_TAG, "Error while obtaining the installed AccessibilityServices. ", e2);
                installedAccessibilityServiceList = null;
            }
            return installedAccessibilityServiceList != null ? Collections.unmodifiableList(installedAccessibilityServiceList) : Collections.emptyList();
        }
    }

    public AccessibilityServiceInfo getInstalledServiceInfoWithComponentName(ComponentName componentName) {
        List<AccessibilityServiceInfo> installedAccessibilityServiceList = getInstalledAccessibilityServiceList();
        if (installedAccessibilityServiceList != null && componentName != null) {
            for (int i2 = 0; i2 < installedAccessibilityServiceList.size(); i2++) {
                if (componentName.equals(installedAccessibilityServiceList.get(i2).getComponentName())) {
                    return installedAccessibilityServiceList.get(i2);
                }
            }
        }
        return null;
    }

    public List<AccessibilityRequestPreparer> getRequestPreparersForAccessibilityId(int i2) {
        SparseArray<List<AccessibilityRequestPreparer>> sparseArray = this.mRequestPreparerLists;
        if (sparseArray == null) {
            return null;
        }
        return sparseArray.get(i2);
    }

    public void interrupt() {
        synchronized (this.mLock) {
            IAccessibilityManager serviceLocked = getServiceLocked();
            if (serviceLocked == null) {
                return;
            }
            if (!this.mIsEnabled) {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    throw new IllegalStateException("Accessibility off. Did you forget to check that?");
                }
                Log.e(LOG_TAG, "Interrupt called with accessibility disabled");
            } else {
                int i2 = this.mUserId;
                try {
                    serviceLocked.interrupt(i2);
                } catch (RemoteException e2) {
                    Log.e(LOG_TAG, "Error while requesting interrupt from all services. ", e2);
                }
            }
        }
    }

    public boolean isAccessibilityVolumeStreamActive() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = getEnabledAccessibilityServiceList(-1);
        for (int i2 = 0; i2 < enabledAccessibilityServiceList.size(); i2++) {
            if ((enabledAccessibilityServiceList.get(i2).flags & 128) != 0) {
                return true;
            }
        }
        return false;
    }

    public boolean isEnabled() {
        synchronized (this.mLock) {
            if (getServiceLocked() == null) {
                return false;
            }
            return this.mIsEnabled;
        }
    }

    public boolean isHighTextContrastEnabled() {
        synchronized (this.mLock) {
            if (getServiceLocked() == null) {
                return false;
            }
            return this.mIsHighTextContrastEnabled;
        }
    }

    public boolean isTouchExplorationEnabled() {
        synchronized (this.mLock) {
            if (getServiceLocked() == null) {
                return false;
            }
            return this.mIsTouchExplorationEnabled;
        }
    }

    public void notifyAccessibilityButtonClicked() {
        synchronized (this.mLock) {
            IAccessibilityManager serviceLocked = getServiceLocked();
            if (serviceLocked == null) {
                return;
            }
            try {
                serviceLocked.notifyAccessibilityButtonClicked();
            } catch (RemoteException e2) {
                Log.e(LOG_TAG, "Error while dispatching accessibility button click", e2);
            }
        }
    }

    public void notifyAccessibilityButtonVisibilityChanged(boolean z2) {
        synchronized (this.mLock) {
            IAccessibilityManager serviceLocked = getServiceLocked();
            if (serviceLocked == null) {
                return;
            }
            try {
                serviceLocked.notifyAccessibilityButtonVisibilityChanged(z2);
            } catch (RemoteException e2) {
                Log.e(LOG_TAG, "Error while dispatching accessibility button visibility change", e2);
            }
        }
    }

    public void performAccessibilityShortcut() {
        synchronized (this.mLock) {
            IAccessibilityManager serviceLocked = getServiceLocked();
            if (serviceLocked == null) {
                return;
            }
            try {
                serviceLocked.performAccessibilityShortcut();
            } catch (RemoteException e2) {
                Log.e(LOG_TAG, "Error performing accessibility shortcut. ", e2);
            }
        }
    }

    public void removeAccessibilityInteractionConnection(IWindow iWindow) {
        synchronized (this.mLock) {
            IAccessibilityManager serviceLocked = getServiceLocked();
            if (serviceLocked == null) {
                return;
            }
            try {
                serviceLocked.removeAccessibilityInteractionConnection(iWindow);
            } catch (RemoteException e2) {
                Log.e(LOG_TAG, "Error while removing an accessibility interaction connection. ", e2);
            }
        }
    }

    public void removeAccessibilityRequestPreparer(AccessibilityRequestPreparer accessibilityRequestPreparer) {
        int accessibilityViewId;
        List<AccessibilityRequestPreparer> list;
        if (this.mRequestPreparerLists == null || (list = this.mRequestPreparerLists.get((accessibilityViewId = accessibilityRequestPreparer.getView().getAccessibilityViewId()))) == null) {
            return;
        }
        list.remove(accessibilityRequestPreparer);
        if (list.isEmpty()) {
            this.mRequestPreparerLists.remove(accessibilityViewId);
        }
    }

    public void removeAccessibilityServicesStateChangeListener(AccessibilityServicesStateChangeListener accessibilityServicesStateChangeListener) {
        this.mServicesStateChangeListeners.remove(accessibilityServicesStateChangeListener);
    }

    public boolean removeAccessibilityStateChangeListener(AccessibilityStateChangeListener accessibilityStateChangeListener) {
        boolean z2;
        synchronized (this.mLock) {
            int iIndexOfKey = this.mAccessibilityStateChangeListeners.indexOfKey(accessibilityStateChangeListener);
            this.mAccessibilityStateChangeListeners.remove(accessibilityStateChangeListener);
            z2 = iIndexOfKey >= 0;
        }
        return z2;
    }

    public void removeHighTextContrastStateChangeListener(HighTextContrastChangeListener highTextContrastChangeListener) {
        synchronized (this.mLock) {
            this.mHighTextContrastStateChangeListeners.remove(highTextContrastChangeListener);
        }
    }

    public boolean removeTouchExplorationStateChangeListener(TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        boolean z2;
        synchronized (this.mLock) {
            int iIndexOfKey = this.mTouchExplorationStateChangeListeners.indexOfKey(touchExplorationStateChangeListener);
            this.mTouchExplorationStateChangeListeners.remove(touchExplorationStateChangeListener);
            z2 = iIndexOfKey >= 0;
        }
        return z2;
    }

    public void sendAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        synchronized (this.mLock) {
            IAccessibilityManager serviceLocked = getServiceLocked();
            if (serviceLocked == null) {
                return;
            }
            if (!this.mIsEnabled) {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    throw new IllegalStateException("Accessibility off. Did you forget to check that?");
                }
                Log.e(LOG_TAG, "AccessibilityEvent sent with accessibility disabled");
            } else {
                if ((accessibilityEvent.getEventType() & this.mRelevantEventTypes) == 0) {
                    return;
                }
                int i2 = this.mUserId;
                try {
                    try {
                        accessibilityEvent.setEventTime(SystemClock.uptimeMillis());
                        long jClearCallingIdentity = Binder.clearCallingIdentity();
                        serviceLocked.sendAccessibilityEvent(accessibilityEvent, i2);
                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                    } catch (RemoteException e2) {
                        Log.e(LOG_TAG, "Error during sending " + accessibilityEvent + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER, e2);
                    }
                } finally {
                    accessibilityEvent.recycle();
                }
            }
        }
    }

    public boolean sendFingerprintGesture(int i2) {
        synchronized (this.mLock) {
            IAccessibilityManager serviceLocked = getServiceLocked();
            if (serviceLocked == null) {
                return false;
            }
            try {
                return serviceLocked.sendFingerprintGesture(i2);
            } catch (RemoteException unused) {
                return false;
            }
        }
    }

    public void setPictureInPictureActionReplacingConnection(IAccessibilityInteractionConnection iAccessibilityInteractionConnection) {
        synchronized (this.mLock) {
            IAccessibilityManager serviceLocked = getServiceLocked();
            if (serviceLocked == null) {
                return;
            }
            try {
                serviceLocked.setPictureInPictureActionReplacingConnection(iAccessibilityInteractionConnection);
            } catch (RemoteException e2) {
                Log.e(LOG_TAG, "Error setting picture in picture action replacement", e2);
            }
        }
    }

    public void addAccessibilityStateChangeListener(AccessibilityStateChangeListener accessibilityStateChangeListener, Handler handler) {
        synchronized (this.mLock) {
            ArrayMap<AccessibilityStateChangeListener, Handler> arrayMap = this.mAccessibilityStateChangeListeners;
            if (handler == null) {
                handler = this.mHandler;
            }
            arrayMap.put(accessibilityStateChangeListener, handler);
        }
    }

    public void addTouchExplorationStateChangeListener(TouchExplorationStateChangeListener touchExplorationStateChangeListener, Handler handler) {
        synchronized (this.mLock) {
            ArrayMap<TouchExplorationStateChangeListener, Handler> arrayMap = this.mTouchExplorationStateChangeListeners;
            if (handler == null) {
                handler = this.mHandler;
            }
            arrayMap.put(touchExplorationStateChangeListener, handler);
        }
    }

    public AccessibilityManager(Handler handler, IAccessibilityManager iAccessibilityManager, int i2) {
        Object obj = new Object();
        this.mLock = obj;
        this.mRelevantEventTypes = -1;
        this.mAccessibilityStateChangeListeners = new ArrayMap<>();
        this.mTouchExplorationStateChangeListeners = new ArrayMap<>();
        this.mHighTextContrastStateChangeListeners = new ArrayMap<>();
        this.mServicesStateChangeListeners = new ArrayMap<>();
        this.mClient = new AnonymousClass1();
        this.mCallback = new MyCallback(this, null);
        this.mHandler = handler;
        this.mUserId = i2;
        synchronized (obj) {
            tryConnectToServiceLocked(iAccessibilityManager);
        }
    }
}
