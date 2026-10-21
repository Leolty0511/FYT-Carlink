package com.android.server.wifi;

import android.hardware.wifi.V1_0.IWifi;
import android.hardware.wifi.V1_0.IWifiApIface;
import android.hardware.wifi.V1_0.IWifiChip;
import android.hardware.wifi.V1_0.IWifiChipEventCallback;
import android.hardware.wifi.V1_0.IWifiEventCallback;
import android.hardware.wifi.V1_0.IWifiIface;
import android.hardware.wifi.V1_0.IWifiNanIface;
import android.hardware.wifi.V1_0.IWifiP2pIface;
import android.hardware.wifi.V1_0.IWifiRttController;
import android.hardware.wifi.V1_0.IWifiStaIface;
import android.hardware.wifi.V1_0.WifiDebugRingBufferStatus;
import android.hardware.wifi.V1_0.WifiStatus;
import android.hidl.manager.V1_0.IServiceNotification;
import android.hidl.manager.V1_2.IServiceManager;
import android.os.Handler;
import android.os.HidlSupport;
import android.os.IHwBinder;
import android.os.RemoteException;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.MutableBoolean;
import android.util.MutableInt;
import android.util.Pair;
import android.util.SparseArray;
import com.android.internal.annotations.VisibleForTesting;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class HalDeviceManager {
    private static final int[] IFACE_TYPES_BY_PRIORITY = {1, 0, 2, 3};
    private static final int START_HAL_RETRY_INTERVAL_MS = 20;

    @VisibleForTesting
    public static final int START_HAL_RETRY_TIMES = 3;
    private static final String TAG = "HalDevMgr";
    private static final boolean VDBG = false;
    private final Clock mClock;
    private IWifiRttController mIWifiRttController;
    private boolean mIsReady;
    private IServiceManager mServiceManager;
    private IWifi mWifi;
    private boolean mDbg = false;
    private boolean mIsVendorHalSupported = false;
    private final Object mLock = new Object();
    private final WifiEventCallback mWifiEventCallback = new WifiEventCallback();
    private final Set<ManagerStatusListenerProxy> mManagerStatusListeners = new HashSet();
    private final Set<InterfaceRttControllerLifecycleCallbackProxy> mRttControllerLifecycleCallbacks = new HashSet();
    private final SparseArray<Map<InterfaceAvailableForRequestListenerProxy, Boolean>> mInterfaceAvailableForRequestListeners = new SparseArray<>();
    private final SparseArray<IWifiChipEventCallback.Stub> mDebugCallbacks = new SparseArray<>();
    private final Map<Pair<String, Integer>, InterfaceCacheEntry> mInterfaceInfoCache = new HashMap();
    private final IHwBinder.DeathRecipient mServiceManagerDeathRecipient = new IHwBinder.DeathRecipient() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$SeJCUxQL5U06-W-tkK8XwQet85g
        public final void serviceDied(long j) {
            this.f$0.lambda$new$1$HalDeviceManager(j);
        }
    };
    private final IServiceNotification mServiceNotificationCallback = new IServiceNotification.Stub() { // from class: com.android.server.wifi.HalDeviceManager.1
        public void onRegistration(String fqName, String name, boolean preexisting) {
            Log.d(HalDeviceManager.TAG, "IWifi registration notification: fqName=" + fqName + ", name=" + name + ", preexisting=" + preexisting);
            synchronized (HalDeviceManager.this.mLock) {
                HalDeviceManager.this.initIWifiIfNecessary();
            }
        }
    };
    private final IHwBinder.DeathRecipient mIWifiDeathRecipient = new IHwBinder.DeathRecipient() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$jNAzj5YlVhwJm5NjZ6HiKskQStI
        public final void serviceDied(long j) {
            this.f$0.lambda$new$2$HalDeviceManager(j);
        }
    };

    public interface InterfaceAvailableForRequestListener {
        void onAvailabilityChanged(boolean z);
    }

    public interface InterfaceDestroyedListener {
        void onDestroyed(String str);
    }

    public interface InterfaceRttControllerLifecycleCallback {
        void onNewRttController(IWifiRttController iWifiRttController);

        void onRttControllerDestroyed();
    }

    public interface ManagerStatusListener {
        void onStatusChanged();
    }

    public HalDeviceManager(Clock clock) {
        this.mClock = clock;
        this.mInterfaceAvailableForRequestListeners.put(0, new HashMap());
        this.mInterfaceAvailableForRequestListeners.put(1, new HashMap());
        this.mInterfaceAvailableForRequestListeners.put(2, new HashMap());
        this.mInterfaceAvailableForRequestListeners.put(3, new HashMap());
    }

    void enableVerboseLogging(int verbose) {
        if (verbose > 0) {
            this.mDbg = true;
        } else {
            this.mDbg = false;
        }
    }

    public void initialize() {
        initializeInternal();
    }

    public void registerStatusListener(ManagerStatusListener listener, Handler handler) {
        synchronized (this.mLock) {
            if (!this.mManagerStatusListeners.add(new ManagerStatusListenerProxy(listener, handler))) {
                Log.w(TAG, "registerStatusListener: duplicate registration ignored");
            }
        }
    }

    public boolean isSupported() {
        return this.mIsVendorHalSupported;
    }

    public boolean isReady() {
        return this.mIsReady;
    }

    public boolean isStarted() {
        return isWifiStarted();
    }

    public boolean start() {
        return startWifi();
    }

    public void stop() {
        stopWifi();
        this.mWifi = null;
    }

    public Set<Integer> getSupportedIfaceTypes() {
        return getSupportedIfaceTypesInternal(null);
    }

    public Set<Integer> getSupportedIfaceTypes(IWifiChip chip) {
        return getSupportedIfaceTypesInternal(chip);
    }

    public IWifiStaIface createStaIface(boolean lowPrioritySta, InterfaceDestroyedListener destroyedListener, Handler handler) {
        return (IWifiStaIface) createIface(0, lowPrioritySta, destroyedListener, handler);
    }

    public IWifiApIface createApIface(InterfaceDestroyedListener destroyedListener, Handler handler) {
        return (IWifiApIface) createIface(1, false, destroyedListener, handler);
    }

    public IWifiP2pIface createP2pIface(InterfaceDestroyedListener destroyedListener, Handler handler) {
        return (IWifiP2pIface) createIface(2, false, destroyedListener, handler);
    }

    public IWifiNanIface createNanIface(InterfaceDestroyedListener destroyedListener, Handler handler) {
        return (IWifiNanIface) createIface(3, false, destroyedListener, handler);
    }

    public boolean removeIface(IWifiIface iface) throws RemoteException {
        boolean success = removeIfaceInternal(iface);
        dispatchAvailableForRequestListeners();
        return success;
    }

    public IWifiChip getChip(IWifiIface iface) {
        String name = getName(iface);
        int type = getType(iface);
        synchronized (this.mLock) {
            InterfaceCacheEntry cacheEntry = this.mInterfaceInfoCache.get(Pair.create(name, Integer.valueOf(type)));
            if (cacheEntry == null) {
                Log.e(TAG, "getChip: no entry for iface(name)=" + name);
                return null;
            }
            return cacheEntry.chip;
        }
    }

    public boolean registerDestroyedListener(IWifiIface iface, InterfaceDestroyedListener destroyedListener, Handler handler) {
        String name = getName(iface);
        int type = getType(iface);
        synchronized (this.mLock) {
            InterfaceCacheEntry cacheEntry = this.mInterfaceInfoCache.get(Pair.create(name, Integer.valueOf(type)));
            if (cacheEntry == null) {
                Log.e(TAG, "registerDestroyedListener: no entry for iface(name)=" + name);
                return false;
            }
            return cacheEntry.destroyedListeners.add(new InterfaceDestroyedListenerProxy(name, destroyedListener, handler));
        }
    }

    public void registerInterfaceAvailableForRequestListener(int ifaceType, InterfaceAvailableForRequestListener listener, Handler handler) {
        synchronized (this.mLock) {
            InterfaceAvailableForRequestListenerProxy proxy = new InterfaceAvailableForRequestListenerProxy(listener, handler);
            if (this.mInterfaceAvailableForRequestListeners.get(ifaceType).containsKey(proxy)) {
                return;
            }
            this.mInterfaceAvailableForRequestListeners.get(ifaceType).put(proxy, null);
            WifiChipInfo[] chipInfos = getAllChipInfo();
            if (chipInfos == null) {
                Log.e(TAG, "registerInterfaceAvailableForRequestListener: no chip info found - but possibly registered pre-started - ignoring");
            } else {
                dispatchAvailableForRequestListenersForType(ifaceType, chipInfos);
            }
        }
    }

    public void unregisterInterfaceAvailableForRequestListener(int ifaceType, InterfaceAvailableForRequestListener listener) {
        synchronized (this.mLock) {
            this.mInterfaceAvailableForRequestListeners.get(ifaceType).remove(new InterfaceAvailableForRequestListenerProxy(listener, null));
        }
    }

    public void registerRttControllerLifecycleCallback(InterfaceRttControllerLifecycleCallback callback, Handler handler) {
        if (callback == null || handler == null) {
            Log.wtf(TAG, "registerRttControllerLifecycleCallback with nulls!? callback=" + callback + ", handler=" + handler);
            return;
        }
        synchronized (this.mLock) {
            InterfaceRttControllerLifecycleCallbackProxy proxy = new InterfaceRttControllerLifecycleCallbackProxy(callback, handler);
            if (!this.mRttControllerLifecycleCallbacks.add(proxy)) {
                Log.d(TAG, "registerRttControllerLifecycleCallback: registering an existing callback=" + callback);
                return;
            }
            if (this.mIWifiRttController == null) {
                this.mIWifiRttController = createRttControllerIfPossible();
            }
            if (this.mIWifiRttController != null) {
                proxy.onNewRttController(this.mIWifiRttController);
            }
        }
    }

    public static String getName(IWifiIface iface) {
        if (iface == null) {
            return "<null>";
        }
        final HidlSupport.Mutable<String> nameResp = new HidlSupport.Mutable<>();
        try {
            iface.getName(new IWifiIface.getNameCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$bTmsDoAj9faJCBOTeT1Q3Ww5yNM
                @Override // android.hardware.wifi.V1_0.IWifiIface.getNameCallback
                public final void onValues(WifiStatus wifiStatus, String str) {
                    HalDeviceManager.lambda$getName$0(nameResp, wifiStatus, str);
                }
            });
        } catch (RemoteException e) {
            Log.e(TAG, "Exception on getName: " + e);
        }
        return (String) nameResp.value;
    }

    static /* synthetic */ void lambda$getName$0(HidlSupport.Mutable nameResp, WifiStatus status, String name) {
        if (status.code == 0) {
            nameResp.value = name;
            return;
        }
        Log.e(TAG, "Error on getName: " + statusString(status));
    }

    private class InterfaceCacheEntry {
        public IWifiChip chip;
        public int chipId;
        public long creationTime;
        public Set<InterfaceDestroyedListenerProxy> destroyedListeners;
        public boolean isLowPriority;
        public String name;
        public int type;

        private InterfaceCacheEntry() {
            this.destroyedListeners = new HashSet();
        }

        public String toString() {
            return "{name=" + this.name + ", type=" + this.type + ", destroyedListeners.size()=" + this.destroyedListeners.size() + ", creationTime=" + this.creationTime + ", isLowPriority=" + this.isLowPriority + "}";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class WifiIfaceInfo {
        public IWifiIface iface;
        public String name;

        private WifiIfaceInfo() {
        }
    }

    private class WifiChipInfo {
        public ArrayList<IWifiChip.ChipMode> availableModes;
        public IWifiChip chip;
        public int chipId;
        public int currentModeId;
        public boolean currentModeIdValid;
        public WifiIfaceInfo[][] ifaces;

        private WifiChipInfo() {
            this.ifaces = new WifiIfaceInfo[HalDeviceManager.IFACE_TYPES_BY_PRIORITY.length][];
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("{chipId=");
            sb.append(this.chipId);
            sb.append(", availableModes=");
            sb.append(this.availableModes);
            sb.append(", currentModeIdValid=");
            sb.append(this.currentModeIdValid);
            sb.append(", currentModeId=");
            sb.append(this.currentModeId);
            for (int type : HalDeviceManager.IFACE_TYPES_BY_PRIORITY) {
                sb.append(", ifaces[" + type + "].length=");
                sb.append(this.ifaces[type].length);
            }
            sb.append(")");
            return sb.toString();
        }
    }

    protected IWifi getWifiServiceMockable() {
        try {
            return IWifi.getService(true);
        } catch (RemoteException e) {
            Log.e(TAG, "Exception getting IWifi service: " + e);
            return null;
        }
    }

    protected IServiceManager getServiceManagerMockable() {
        try {
            return IServiceManager.getService();
        } catch (RemoteException e) {
            Log.e(TAG, "Exception getting IServiceManager: " + e);
            return null;
        }
    }

    private void initializeInternal() {
        initIServiceManagerIfNecessary();
        if (this.mIsVendorHalSupported) {
            initIWifiIfNecessary();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void teardownInternal() {
        managerStatusListenerDispatch();
        dispatchAllDestroyedListeners();
        this.mInterfaceAvailableForRequestListeners.get(0).clear();
        this.mInterfaceAvailableForRequestListeners.get(1).clear();
        this.mInterfaceAvailableForRequestListeners.get(2).clear();
        this.mInterfaceAvailableForRequestListeners.get(3).clear();
        this.mIWifiRttController = null;
        dispatchRttControllerLifecycleOnDestroyed();
        this.mRttControllerLifecycleCallbacks.clear();
    }

    public /* synthetic */ void lambda$new$1$HalDeviceManager(long cookie) {
        Log.wtf(TAG, "IServiceManager died: cookie=" + cookie);
        synchronized (this.mLock) {
            this.mServiceManager = null;
        }
    }

    private void initIServiceManagerIfNecessary() {
        if (this.mDbg) {
            Log.d(TAG, "initIServiceManagerIfNecessary");
        }
        synchronized (this.mLock) {
            if (this.mServiceManager != null) {
                return;
            }
            this.mServiceManager = getServiceManagerMockable();
            if (this.mServiceManager == null) {
                Log.wtf(TAG, "Failed to get IServiceManager instance");
            } else {
                try {
                    if (!this.mServiceManager.linkToDeath(this.mServiceManagerDeathRecipient, 0L)) {
                        Log.wtf(TAG, "Error on linkToDeath on IServiceManager");
                        this.mServiceManager = null;
                    } else {
                        if (!this.mServiceManager.registerForNotifications(IWifi.kInterfaceName, "", this.mServiceNotificationCallback)) {
                            Log.wtf(TAG, "Failed to register a listener for IWifi service");
                            this.mServiceManager = null;
                        }
                        this.mIsVendorHalSupported = isSupportedInternal();
                    }
                } catch (RemoteException e) {
                    Log.wtf(TAG, "Exception while operating on IServiceManager: " + e);
                    this.mServiceManager = null;
                }
            }
        }
    }

    private boolean isSupportedInternal() {
        synchronized (this.mLock) {
            if (this.mServiceManager == null) {
                Log.e(TAG, "isSupported: called but mServiceManager is null!?");
                return false;
            }
            try {
                List<String> wifiServices = this.mServiceManager.listManifestByInterface(IWifi.kInterfaceName);
                return wifiServices.isEmpty() ? false : true;
            } catch (RemoteException e) {
                Log.wtf(TAG, "Exception while operating on IServiceManager: " + e);
                return false;
            }
        }
    }

    public /* synthetic */ void lambda$new$2$HalDeviceManager(long cookie) {
        Log.e(TAG, "IWifi HAL service died! Have a listener for it ... cookie=" + cookie);
        synchronized (this.mLock) {
            this.mWifi = null;
            this.mIsReady = false;
            teardownInternal();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initIWifiIfNecessary() {
        if (this.mDbg) {
            Log.d(TAG, "initIWifiIfNecessary");
        }
        synchronized (this.mLock) {
            if (this.mWifi != null) {
                return;
            }
            try {
                this.mWifi = getWifiServiceMockable();
                if (this.mWifi == null) {
                    Log.e(TAG, "IWifi not (yet) available - but have a listener for it ...");
                    return;
                }
                if (!this.mWifi.linkToDeath(this.mIWifiDeathRecipient, 0L)) {
                    Log.e(TAG, "Error on linkToDeath on IWifi - will retry later");
                    return;
                }
                WifiStatus status = this.mWifi.registerEventCallback(this.mWifiEventCallback);
                if (status.code != 0) {
                    Log.e(TAG, "IWifi.registerEventCallback failed: " + statusString(status));
                    this.mWifi = null;
                    return;
                }
                stopWifi();
                this.mIsReady = true;
            } catch (RemoteException e) {
                Log.e(TAG, "Exception while operating on IWifi: " + e);
            }
        }
    }

    private void initIWifiChipDebugListeners() {
    }

    private static /* synthetic */ void lambda$initIWifiChipDebugListeners$3(MutableBoolean statusOk, HidlSupport.Mutable chipIdsResp, WifiStatus status, ArrayList chipIds) {
        statusOk.value = status.code == 0;
        if (statusOk.value) {
            chipIdsResp.value = chipIds;
            return;
        }
        Log.e(TAG, "getChipIds failed: " + statusString(status));
    }

    private static /* synthetic */ void lambda$initIWifiChipDebugListeners$4(MutableBoolean statusOk, HidlSupport.Mutable chipResp, WifiStatus status, IWifiChip chip) {
        statusOk.value = status.code == 0;
        if (statusOk.value) {
            chipResp.value = chip;
            return;
        }
        Log.e(TAG, "getChip failed: " + statusString(status));
    }

    /* JADX INFO: renamed from: com.android.server.wifi.HalDeviceManager$2, reason: invalid class name */
    class AnonymousClass2 extends IWifiChipEventCallback.Stub {
        AnonymousClass2() {
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onChipReconfigured(int modeId) throws RemoteException {
            Log.d(HalDeviceManager.TAG, "onChipReconfigured: modeId=" + modeId);
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onChipReconfigureFailure(WifiStatus status) throws RemoteException {
            Log.d(HalDeviceManager.TAG, "onChipReconfigureFailure: status=" + HalDeviceManager.statusString(status));
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onIfaceAdded(int type, String name) throws RemoteException {
            Log.d(HalDeviceManager.TAG, "onIfaceAdded: type=" + type + ", name=" + name);
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onIfaceRemoved(int type, String name) throws RemoteException {
            Log.d(HalDeviceManager.TAG, "onIfaceRemoved: type=" + type + ", name=" + name);
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onDebugRingBufferDataAvailable(WifiDebugRingBufferStatus status, ArrayList<Byte> data) throws RemoteException {
            Log.d(HalDeviceManager.TAG, "onDebugRingBufferDataAvailable");
        }

        @Override // android.hardware.wifi.V1_0.IWifiChipEventCallback
        public void onDebugErrorAlert(int errorCode, ArrayList<Byte> debugData) throws RemoteException {
            Log.d(HalDeviceManager.TAG, "onDebugErrorAlert");
        }
    }

    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v10 */
    private WifiChipInfo[] getAllChipInfo() {
        synchronized (this.mLock) {
            WifiChipInfo[] wifiChipInfoArr = null;
            if (this.mWifi == null) {
                Log.e(TAG, "getAllChipInfo: called but mWifi is null!?");
                return null;
            }
            try {
                ?? r10 = 0;
                final MutableBoolean statusOk = new MutableBoolean(false);
                final HidlSupport.Mutable<ArrayList<Integer>> chipIdsResp = new HidlSupport.Mutable<>();
                this.mWifi.getChipIds(new IWifi.getChipIdsCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$J6ItBAiUMCzTjCuPD7lYSuJSIGU
                    @Override // android.hardware.wifi.V1_0.IWifi.getChipIdsCallback
                    public final void onValues(WifiStatus wifiStatus, ArrayList arrayList) {
                        HalDeviceManager.lambda$getAllChipInfo$5(statusOk, chipIdsResp, wifiStatus, arrayList);
                    }
                });
                if (!statusOk.value) {
                    return null;
                }
                if (((ArrayList) chipIdsResp.value).size() == 0) {
                    Log.e(TAG, "Should have at least 1 chip!");
                    return null;
                }
                WifiChipInfo[] chipsInfo = new WifiChipInfo[((ArrayList) chipIdsResp.value).size()];
                final HidlSupport.Mutable<IWifiChip> chipResp = new HidlSupport.Mutable<>();
                Iterator it = ((ArrayList) chipIdsResp.value).iterator();
                int chipInfoIndex = 0;
                while (it.hasNext()) {
                    Integer chipId = (Integer) it.next();
                    this.mWifi.getChip(chipId.intValue(), new IWifi.getChipCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$J_rq9pD25U5x_bgsE9o4bIVv6Rs
                        @Override // android.hardware.wifi.V1_0.IWifi.getChipCallback
                        public final void onValues(WifiStatus wifiStatus, IWifiChip iWifiChip) {
                            HalDeviceManager.lambda$getAllChipInfo$6(statusOk, chipResp, wifiStatus, iWifiChip);
                        }
                    });
                    if (!statusOk.value) {
                        return wifiChipInfoArr;
                    }
                    final HidlSupport.Mutable<ArrayList<IWifiChip.ChipMode>> availableModesResp = new HidlSupport.Mutable<>();
                    ((IWifiChip) chipResp.value).getAvailableModes(new IWifiChip.getAvailableModesCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$GV5vgwCMe-GctE92pSijMSntP7M
                        @Override // android.hardware.wifi.V1_0.IWifiChip.getAvailableModesCallback
                        public final void onValues(WifiStatus wifiStatus, ArrayList arrayList) {
                            HalDeviceManager.lambda$getAllChipInfo$7(statusOk, availableModesResp, wifiStatus, arrayList);
                        }
                    });
                    if (!statusOk.value) {
                        return wifiChipInfoArr;
                    }
                    final MutableBoolean currentModeValidResp = new MutableBoolean(r10);
                    final MutableInt currentModeResp = new MutableInt(r10);
                    ((IWifiChip) chipResp.value).getMode(new IWifiChip.getModeCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$kKpeJmcjHk7E6pKqNwVTgOU76EA
                        @Override // android.hardware.wifi.V1_0.IWifiChip.getModeCallback
                        public final void onValues(WifiStatus wifiStatus, int i) {
                            HalDeviceManager.lambda$getAllChipInfo$8(statusOk, currentModeValidResp, currentModeResp, wifiStatus, i);
                        }
                    });
                    if (!statusOk.value) {
                        return wifiChipInfoArr;
                    }
                    final HidlSupport.Mutable<ArrayList<String>> ifaceNamesResp = new HidlSupport.Mutable<>();
                    MutableInt ifaceIndex = new MutableInt(r10);
                    ((IWifiChip) chipResp.value).getStaIfaceNames(new IWifiChip.getStaIfaceNamesCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$WPv-AGl6UabBR2Zo5mjPN7Pljlo
                        @Override // android.hardware.wifi.V1_0.IWifiChip.getStaIfaceNamesCallback
                        public final void onValues(WifiStatus wifiStatus, ArrayList arrayList) {
                            HalDeviceManager.lambda$getAllChipInfo$9(statusOk, ifaceNamesResp, wifiStatus, arrayList);
                        }
                    });
                    if (!statusOk.value) {
                        return wifiChipInfoArr;
                    }
                    WifiIfaceInfo[] staIfaces = new WifiIfaceInfo[((ArrayList) ifaceNamesResp.value).size()];
                    for (final String ifaceName : (ArrayList) ifaceNamesResp.value) {
                        HidlSupport.Mutable<ArrayList<Integer>> chipIdsResp2 = chipIdsResp;
                        final MutableInt ifaceIndex2 = ifaceIndex;
                        Iterator it2 = it;
                        HidlSupport.Mutable<ArrayList<String>> ifaceNamesResp2 = ifaceNamesResp;
                        MutableInt currentModeResp2 = currentModeResp;
                        MutableBoolean currentModeValidResp2 = currentModeValidResp;
                        final WifiIfaceInfo[] wifiIfaceInfoArr = staIfaces;
                        WifiIfaceInfo[] staIfaces2 = staIfaces;
                        HidlSupport.Mutable<ArrayList<IWifiChip.ChipMode>> availableModesResp2 = availableModesResp;
                        ((IWifiChip) chipResp.value).getStaIface(ifaceName, new IWifiChip.getStaIfaceCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$NbsSOlQ2rIfa_a-hKmLVOeqJ0sk
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getStaIfaceCallback
                            public final void onValues(WifiStatus wifiStatus, IWifiStaIface iWifiStaIface) {
                                this.f$0.lambda$getAllChipInfo$10$HalDeviceManager(statusOk, ifaceName, wifiIfaceInfoArr, ifaceIndex2, wifiStatus, iWifiStaIface);
                            }
                        });
                        if (!statusOk.value) {
                            return null;
                        }
                        availableModesResp = availableModesResp2;
                        ifaceNamesResp = ifaceNamesResp2;
                        chipIdsResp = chipIdsResp2;
                        ifaceIndex = ifaceIndex2;
                        it = it2;
                        currentModeResp = currentModeResp2;
                        currentModeValidResp = currentModeValidResp2;
                        staIfaces = staIfaces2;
                    }
                    final MutableInt ifaceIndex3 = ifaceIndex;
                    MutableInt currentModeResp3 = currentModeResp;
                    MutableBoolean currentModeValidResp3 = currentModeValidResp;
                    WifiIfaceInfo[] staIfaces3 = staIfaces;
                    HidlSupport.Mutable<ArrayList<Integer>> chipIdsResp3 = chipIdsResp;
                    Iterator it3 = it;
                    final HidlSupport.Mutable<ArrayList<String>> ifaceNamesResp3 = ifaceNamesResp;
                    HidlSupport.Mutable<ArrayList<IWifiChip.ChipMode>> availableModesResp3 = availableModesResp;
                    ifaceIndex3.value = 0;
                    ((IWifiChip) chipResp.value).getApIfaceNames(new IWifiChip.getApIfaceNamesCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$G_a1DJorXSzwXeeGcyX-nUw44LU
                        @Override // android.hardware.wifi.V1_0.IWifiChip.getApIfaceNamesCallback
                        public final void onValues(WifiStatus wifiStatus, ArrayList arrayList) {
                            HalDeviceManager.lambda$getAllChipInfo$11(statusOk, ifaceNamesResp3, wifiStatus, arrayList);
                        }
                    });
                    if (!statusOk.value) {
                        return null;
                    }
                    WifiIfaceInfo[] apIfaces = new WifiIfaceInfo[((ArrayList) ifaceNamesResp3.value).size()];
                    for (final String ifaceName2 : (ArrayList) ifaceNamesResp3.value) {
                        HidlSupport.Mutable<ArrayList<IWifiChip.ChipMode>> availableModesResp4 = availableModesResp3;
                        WifiChipInfo[] chipsInfo2 = chipsInfo;
                        final WifiIfaceInfo[] wifiIfaceInfoArr2 = apIfaces;
                        WifiIfaceInfo[] apIfaces2 = apIfaces;
                        ((IWifiChip) chipResp.value).getApIface(ifaceName2, new IWifiChip.getApIfaceCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$jZreS4fq6SFMLm2Ky9h8uCsiqO8
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getApIfaceCallback
                            public final void onValues(WifiStatus wifiStatus, IWifiApIface iWifiApIface) {
                                this.f$0.lambda$getAllChipInfo$12$HalDeviceManager(statusOk, ifaceName2, wifiIfaceInfoArr2, ifaceIndex3, wifiStatus, iWifiApIface);
                            }
                        });
                        if (!statusOk.value) {
                            return null;
                        }
                        availableModesResp3 = availableModesResp4;
                        chipsInfo = chipsInfo2;
                        apIfaces = apIfaces2;
                    }
                    HidlSupport.Mutable<ArrayList<IWifiChip.ChipMode>> availableModesResp5 = availableModesResp3;
                    WifiIfaceInfo[] apIfaces3 = apIfaces;
                    WifiChipInfo[] chipsInfo3 = chipsInfo;
                    ifaceIndex3.value = 0;
                    ((IWifiChip) chipResp.value).getP2pIfaceNames(new IWifiChip.getP2pIfaceNamesCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$eCjBY_x53LlceEqam19pM9GP8Hg
                        @Override // android.hardware.wifi.V1_0.IWifiChip.getP2pIfaceNamesCallback
                        public final void onValues(WifiStatus wifiStatus, ArrayList arrayList) {
                            HalDeviceManager.lambda$getAllChipInfo$13(statusOk, ifaceNamesResp3, wifiStatus, arrayList);
                        }
                    });
                    if (!statusOk.value) {
                        return null;
                    }
                    WifiIfaceInfo[] p2pIfaces = new WifiIfaceInfo[((ArrayList) ifaceNamesResp3.value).size()];
                    Iterator it4 = ((ArrayList) ifaceNamesResp3.value).iterator();
                    while (it4.hasNext()) {
                        final String ifaceName3 = (String) it4.next();
                        Iterator it5 = it4;
                        final WifiIfaceInfo[] wifiIfaceInfoArr3 = p2pIfaces;
                        WifiIfaceInfo[] p2pIfaces2 = p2pIfaces;
                        ((IWifiChip) chipResp.value).getP2pIface(ifaceName3, new IWifiChip.getP2pIfaceCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$Y4lM61kLmbzKhU2PVXYtGOePWWM
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getP2pIfaceCallback
                            public final void onValues(WifiStatus wifiStatus, IWifiP2pIface iWifiP2pIface) {
                                this.f$0.lambda$getAllChipInfo$14$HalDeviceManager(statusOk, ifaceName3, wifiIfaceInfoArr3, ifaceIndex3, wifiStatus, iWifiP2pIface);
                            }
                        });
                        if (!statusOk.value) {
                            return null;
                        }
                        it4 = it5;
                        p2pIfaces = p2pIfaces2;
                    }
                    WifiIfaceInfo[] p2pIfaces3 = p2pIfaces;
                    ifaceIndex3.value = 0;
                    ((IWifiChip) chipResp.value).getNanIfaceNames(new IWifiChip.getNanIfaceNamesCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$yPcf5jFsIHD8FLJVWQLrQ1Z9fSc
                        @Override // android.hardware.wifi.V1_0.IWifiChip.getNanIfaceNamesCallback
                        public final void onValues(WifiStatus wifiStatus, ArrayList arrayList) {
                            HalDeviceManager.lambda$getAllChipInfo$15(statusOk, ifaceNamesResp3, wifiStatus, arrayList);
                        }
                    });
                    if (!statusOk.value) {
                        return null;
                    }
                    final WifiIfaceInfo[] nanIfaces = new WifiIfaceInfo[((ArrayList) ifaceNamesResp3.value).size()];
                    Iterator it6 = ((ArrayList) ifaceNamesResp3.value).iterator();
                    while (it6.hasNext()) {
                        final String ifaceName4 = (String) it6.next();
                        Iterator it7 = it6;
                        HidlSupport.Mutable<ArrayList<String>> ifaceNamesResp4 = ifaceNamesResp3;
                        ((IWifiChip) chipResp.value).getNanIface(ifaceName4, new IWifiChip.getNanIfaceCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$hzrxXx9RDE1QCGSaFElLzJYP5ag
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getNanIfaceCallback
                            public final void onValues(WifiStatus wifiStatus, IWifiNanIface iWifiNanIface) {
                                this.f$0.lambda$getAllChipInfo$16$HalDeviceManager(statusOk, ifaceName4, nanIfaces, ifaceIndex3, wifiStatus, iWifiNanIface);
                            }
                        });
                        if (!statusOk.value) {
                            return null;
                        }
                        it6 = it7;
                        ifaceNamesResp3 = ifaceNamesResp4;
                    }
                    WifiChipInfo chipInfo = new WifiChipInfo();
                    int chipInfoIndex2 = chipInfoIndex + 1;
                    chipsInfo3[chipInfoIndex] = chipInfo;
                    chipInfo.chip = (IWifiChip) chipResp.value;
                    chipInfo.chipId = chipId.intValue();
                    chipInfo.availableModes = (ArrayList) availableModesResp5.value;
                    chipInfo.currentModeIdValid = currentModeValidResp3.value;
                    chipInfo.currentModeId = currentModeResp3.value;
                    chipInfo.ifaces[0] = staIfaces3;
                    chipInfo.ifaces[1] = apIfaces3;
                    chipInfo.ifaces[2] = p2pIfaces3;
                    chipInfo.ifaces[3] = nanIfaces;
                    chipInfoIndex = chipInfoIndex2;
                    r10 = 0;
                    chipIdsResp = chipIdsResp3;
                    chipsInfo = chipsInfo3;
                    it = it3;
                    wifiChipInfoArr = null;
                }
                return chipsInfo;
            } catch (RemoteException e) {
                Log.e(TAG, "getAllChipInfoAndValidateCache exception: " + e);
                return null;
            }
        }
    }

    static /* synthetic */ void lambda$getAllChipInfo$5(MutableBoolean statusOk, HidlSupport.Mutable chipIdsResp, WifiStatus status, ArrayList chipIds) {
        statusOk.value = status.code == 0;
        if (statusOk.value) {
            chipIdsResp.value = chipIds;
            return;
        }
        Log.e(TAG, "getChipIds failed: " + statusString(status));
    }

    static /* synthetic */ void lambda$getAllChipInfo$6(MutableBoolean statusOk, HidlSupport.Mutable chipResp, WifiStatus status, IWifiChip chip) {
        statusOk.value = status.code == 0;
        if (statusOk.value) {
            chipResp.value = chip;
            return;
        }
        Log.e(TAG, "getChip failed: " + statusString(status));
    }

    static /* synthetic */ void lambda$getAllChipInfo$7(MutableBoolean statusOk, HidlSupport.Mutable availableModesResp, WifiStatus status, ArrayList modes) {
        statusOk.value = status.code == 0;
        if (statusOk.value) {
            availableModesResp.value = modes;
            return;
        }
        Log.e(TAG, "getAvailableModes failed: " + statusString(status));
    }

    static /* synthetic */ void lambda$getAllChipInfo$8(MutableBoolean statusOk, MutableBoolean currentModeValidResp, MutableInt currentModeResp, WifiStatus status, int modeId) {
        statusOk.value = status.code == 0;
        if (statusOk.value) {
            currentModeValidResp.value = true;
            currentModeResp.value = modeId;
        } else {
            if (status.code == 5) {
                statusOk.value = true;
                return;
            }
            Log.e(TAG, "getMode failed: " + statusString(status));
        }
    }

    static /* synthetic */ void lambda$getAllChipInfo$9(MutableBoolean statusOk, HidlSupport.Mutable ifaceNamesResp, WifiStatus status, ArrayList ifnames) {
        statusOk.value = status.code == 0;
        if (statusOk.value) {
            ifaceNamesResp.value = ifnames;
            return;
        }
        Log.e(TAG, "getStaIfaceNames failed: " + statusString(status));
    }

    public /* synthetic */ void lambda$getAllChipInfo$10$HalDeviceManager(MutableBoolean statusOk, String ifaceName, WifiIfaceInfo[] staIfaces, MutableInt ifaceIndex, WifiStatus status, IWifiStaIface iface) {
        statusOk.value = status.code == 0;
        if (statusOk.value) {
            WifiIfaceInfo ifaceInfo = new WifiIfaceInfo();
            ifaceInfo.name = ifaceName;
            ifaceInfo.iface = iface;
            int i = ifaceIndex.value;
            ifaceIndex.value = i + 1;
            staIfaces[i] = ifaceInfo;
            return;
        }
        Log.e(TAG, "getStaIface failed: " + statusString(status));
    }

    static /* synthetic */ void lambda$getAllChipInfo$11(MutableBoolean statusOk, HidlSupport.Mutable ifaceNamesResp, WifiStatus status, ArrayList ifnames) {
        statusOk.value = status.code == 0;
        if (statusOk.value) {
            ifaceNamesResp.value = ifnames;
            return;
        }
        Log.e(TAG, "getApIfaceNames failed: " + statusString(status));
    }

    public /* synthetic */ void lambda$getAllChipInfo$12$HalDeviceManager(MutableBoolean statusOk, String ifaceName, WifiIfaceInfo[] apIfaces, MutableInt ifaceIndex, WifiStatus status, IWifiApIface iface) {
        statusOk.value = status.code == 0;
        if (statusOk.value) {
            WifiIfaceInfo ifaceInfo = new WifiIfaceInfo();
            ifaceInfo.name = ifaceName;
            ifaceInfo.iface = iface;
            int i = ifaceIndex.value;
            ifaceIndex.value = i + 1;
            apIfaces[i] = ifaceInfo;
            return;
        }
        Log.e(TAG, "getApIface failed: " + statusString(status));
    }

    static /* synthetic */ void lambda$getAllChipInfo$13(MutableBoolean statusOk, HidlSupport.Mutable ifaceNamesResp, WifiStatus status, ArrayList ifnames) {
        statusOk.value = status.code == 0;
        if (statusOk.value) {
            ifaceNamesResp.value = ifnames;
            return;
        }
        Log.e(TAG, "getP2pIfaceNames failed: " + statusString(status));
    }

    public /* synthetic */ void lambda$getAllChipInfo$14$HalDeviceManager(MutableBoolean statusOk, String ifaceName, WifiIfaceInfo[] p2pIfaces, MutableInt ifaceIndex, WifiStatus status, IWifiP2pIface iface) {
        statusOk.value = status.code == 0;
        if (statusOk.value) {
            WifiIfaceInfo ifaceInfo = new WifiIfaceInfo();
            ifaceInfo.name = ifaceName;
            ifaceInfo.iface = iface;
            int i = ifaceIndex.value;
            ifaceIndex.value = i + 1;
            p2pIfaces[i] = ifaceInfo;
            return;
        }
        Log.e(TAG, "getP2pIface failed: " + statusString(status));
    }

    static /* synthetic */ void lambda$getAllChipInfo$15(MutableBoolean statusOk, HidlSupport.Mutable ifaceNamesResp, WifiStatus status, ArrayList ifnames) {
        statusOk.value = status.code == 0;
        if (statusOk.value) {
            ifaceNamesResp.value = ifnames;
            return;
        }
        Log.e(TAG, "getNanIfaceNames failed: " + statusString(status));
    }

    public /* synthetic */ void lambda$getAllChipInfo$16$HalDeviceManager(MutableBoolean statusOk, String ifaceName, WifiIfaceInfo[] nanIfaces, MutableInt ifaceIndex, WifiStatus status, IWifiNanIface iface) {
        statusOk.value = status.code == 0;
        if (statusOk.value) {
            WifiIfaceInfo ifaceInfo = new WifiIfaceInfo();
            ifaceInfo.name = ifaceName;
            ifaceInfo.iface = iface;
            int i = ifaceIndex.value;
            ifaceIndex.value = i + 1;
            nanIfaces[i] = ifaceInfo;
            return;
        }
        Log.e(TAG, "getNanIface failed: " + statusString(status));
    }

    private boolean validateInterfaceCache(WifiChipInfo[] chipInfos) {
        synchronized (this.mLock) {
            for (InterfaceCacheEntry entry : this.mInterfaceInfoCache.values()) {
                WifiChipInfo matchingChipInfo = null;
                for (WifiChipInfo ci : chipInfos) {
                    if (ci.chipId == entry.chipId) {
                        matchingChipInfo = ci;
                        break;
                    }
                }
                if (matchingChipInfo == null) {
                    Log.e(TAG, "validateInterfaceCache: no chip found for " + entry);
                    return false;
                }
                WifiIfaceInfo[] ifaceInfoList = matchingChipInfo.ifaces[entry.type];
                if (ifaceInfoList == null) {
                    Log.e(TAG, "validateInterfaceCache: invalid type on entry " + entry);
                    return false;
                }
                boolean matchFound = false;
                for (WifiIfaceInfo ifaceInfo : ifaceInfoList) {
                    if (ifaceInfo.name.equals(entry.name)) {
                        matchFound = true;
                        break;
                    }
                }
                if (!matchFound) {
                    Log.e(TAG, "validateInterfaceCache: no interface found for " + entry);
                    return false;
                }
            }
            return true;
        }
    }

    private boolean isWifiStarted() {
        synchronized (this.mLock) {
            try {
                try {
                    if (this.mWifi == null) {
                        Log.w(TAG, "isWifiStarted called but mWifi is null!?");
                        return false;
                    }
                    return this.mWifi.isStarted();
                } catch (RemoteException e) {
                    Log.e(TAG, "isWifiStarted exception: " + e);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean startWifi() {
        initIWifiIfNecessary();
        synchronized (this.mLock) {
            try {
                try {
                    if (this.mWifi == null) {
                        Log.w(TAG, "startWifi called but mWifi is null!?");
                        return false;
                    }
                    int triedCount = 0;
                    while (triedCount <= 3) {
                        WifiStatus status = this.mWifi.start();
                        if (status.code == 0) {
                            initIWifiChipDebugListeners();
                            managerStatusListenerDispatch();
                            if (triedCount != 0) {
                                Log.d(TAG, "start IWifi succeeded after trying " + triedCount + " times");
                            }
                            return true;
                        }
                        if (status.code == 5) {
                            Log.e(TAG, "Cannot start IWifi: " + statusString(status) + ", Retrying...");
                            try {
                                Thread.sleep(20L);
                            } catch (InterruptedException e) {
                            }
                            triedCount++;
                        } else {
                            Log.e(TAG, "Cannot start IWifi: " + statusString(status));
                            return false;
                        }
                    }
                    Log.e(TAG, "Cannot start IWifi after trying " + triedCount + " times");
                    return false;
                } catch (RemoteException e2) {
                    Log.e(TAG, "startWifi exception: " + e2);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void stopWifi() {
        synchronized (this.mLock) {
            try {
                if (this.mWifi == null) {
                    Log.w(TAG, "stopWifi called but mWifi is null!?");
                } else {
                    WifiStatus status = this.mWifi.stop();
                    if (status.code != 0) {
                        Log.e(TAG, "Cannot stop IWifi: " + statusString(status));
                    }
                    teardownInternal();
                }
            } catch (RemoteException e) {
                Log.e(TAG, "stopWifi exception: " + e);
            }
        }
    }

    private class WifiEventCallback extends IWifiEventCallback.Stub {
        private WifiEventCallback() {
        }

        @Override // android.hardware.wifi.V1_0.IWifiEventCallback
        public void onStart() throws RemoteException {
        }

        @Override // android.hardware.wifi.V1_0.IWifiEventCallback
        public void onStop() throws RemoteException {
        }

        @Override // android.hardware.wifi.V1_0.IWifiEventCallback
        public void onFailure(WifiStatus status) throws RemoteException {
            Log.e(HalDeviceManager.TAG, "IWifiEventCallback.onFailure: " + HalDeviceManager.statusString(status));
            HalDeviceManager.this.teardownInternal();
        }
    }

    private void managerStatusListenerDispatch() {
        synchronized (this.mLock) {
            for (ManagerStatusListenerProxy cb : this.mManagerStatusListeners) {
                cb.trigger();
            }
        }
    }

    private class ManagerStatusListenerProxy extends ListenerProxy<ManagerStatusListener> {
        ManagerStatusListenerProxy(ManagerStatusListener statusListener, Handler handler) {
            super(statusListener, handler, "ManagerStatusListenerProxy");
        }

        @Override // com.android.server.wifi.HalDeviceManager.ListenerProxy
        /* JADX INFO: renamed from: action */
        protected void lambda$trigger$0$HalDeviceManager$ListenerProxy() {
            ((ManagerStatusListener) this.mListener).onStatusChanged();
        }
    }

    Set<Integer> getSupportedIfaceTypesInternal(IWifiChip chip) {
        Set<Integer> results = new HashSet<>();
        WifiChipInfo[] chipInfos = getAllChipInfo();
        if (chipInfos == null) {
            Log.e(TAG, "getSupportedIfaceTypesInternal: no chip info found");
            return results;
        }
        final MutableInt chipIdIfProvided = new MutableInt(0);
        if (chip != null) {
            final MutableBoolean statusOk = new MutableBoolean(false);
            try {
                chip.getId(new IWifiChip.getIdCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$kMV_gE_EG84f-tY-S0Yp4P7U_NM
                    @Override // android.hardware.wifi.V1_0.IWifiChip.getIdCallback
                    public final void onValues(WifiStatus wifiStatus, int i) {
                        HalDeviceManager.lambda$getSupportedIfaceTypesInternal$17(chipIdIfProvided, statusOk, wifiStatus, i);
                    }
                });
                if (!statusOk.value) {
                    return results;
                }
            } catch (RemoteException e) {
                Log.e(TAG, "getSupportedIfaceTypesInternal IWifiChip.getId() exception: " + e);
                return results;
            }
        }
        for (WifiChipInfo wci : chipInfos) {
            if (chip == null || wci.chipId == chipIdIfProvided.value) {
                for (IWifiChip.ChipMode cm : wci.availableModes) {
                    for (IWifiChip.ChipIfaceCombination cic : cm.availableCombinations) {
                        for (IWifiChip.ChipIfaceCombinationLimit cicl : cic.limits) {
                            Iterator<Integer> it = cicl.types.iterator();
                            while (it.hasNext()) {
                                int type = it.next().intValue();
                                results.add(Integer.valueOf(type));
                            }
                        }
                    }
                }
            }
        }
        return results;
    }

    static /* synthetic */ void lambda$getSupportedIfaceTypesInternal$17(MutableInt chipIdIfProvided, MutableBoolean statusOk, WifiStatus status, int id) {
        if (status.code == 0) {
            chipIdIfProvided.value = id;
            statusOk.value = true;
            return;
        }
        Log.e(TAG, "getSupportedIfaceTypesInternal: IWifiChip.getId() error: " + statusString(status));
        statusOk.value = false;
    }

    private IWifiIface createIface(int ifaceType, boolean lowPriority, InterfaceDestroyedListener destroyedListener, Handler handler) {
        if (this.mDbg) {
            Log.d(TAG, "createIface: ifaceType=" + ifaceType + ", lowPriority=" + lowPriority);
        }
        synchronized (this.mLock) {
            WifiChipInfo[] chipInfos = getAllChipInfo();
            if (chipInfos == null) {
                Log.e(TAG, "createIface: no chip info found");
                stopWifi();
                return null;
            }
            if (!validateInterfaceCache(chipInfos)) {
                Log.e(TAG, "createIface: local cache is invalid!");
                stopWifi();
                return null;
            }
            IWifiIface iface = createIfaceIfPossible(chipInfos, ifaceType, lowPriority, destroyedListener, handler);
            if (iface == null || dispatchAvailableForRequestListeners()) {
                return iface;
            }
            return null;
        }
    }

    private IWifiIface createIfaceIfPossible(WifiChipInfo[] chipInfos, int ifaceType, boolean lowPriority, InterfaceDestroyedListener destroyedListener, Handler handler) throws Throwable {
        IWifiIface iface;
        synchronized (this.mLock) {
            try {
                try {
                    IfaceCreationData bestIfaceCreationProposal = null;
                    for (WifiChipInfo chipInfo : chipInfos) {
                        Iterator<IWifiChip.ChipMode> it = chipInfo.availableModes.iterator();
                        while (it.hasNext()) {
                            IWifiChip.ChipMode chipMode = it.next();
                            for (IWifiChip.ChipIfaceCombination chipIfaceCombo : chipMode.availableCombinations) {
                                int[][] expandedIfaceCombos = expandIfaceCombos(chipIfaceCombo);
                                int length = expandedIfaceCombos.length;
                                IfaceCreationData bestIfaceCreationProposal2 = bestIfaceCreationProposal;
                                int i = 0;
                                while (i < length) {
                                    int[] expandedIfaceCombo = expandedIfaceCombos[i];
                                    IfaceCreationData bestIfaceCreationProposal3 = bestIfaceCreationProposal2;
                                    int i2 = i;
                                    int i3 = length;
                                    int[][] expandedIfaceCombos2 = expandedIfaceCombos;
                                    IWifiChip.ChipIfaceCombination chipIfaceCombo2 = chipIfaceCombo;
                                    IWifiChip.ChipMode chipMode2 = chipMode;
                                    IfaceCreationData currentProposal = canIfaceComboSupportRequest(chipInfo, chipMode, expandedIfaceCombo, ifaceType, lowPriority);
                                    bestIfaceCreationProposal2 = compareIfaceCreationData(currentProposal, bestIfaceCreationProposal3) ? currentProposal : bestIfaceCreationProposal3;
                                    i = i2 + 1;
                                    length = i3;
                                    expandedIfaceCombos = expandedIfaceCombos2;
                                    chipIfaceCombo = chipIfaceCombo2;
                                    chipMode = chipMode2;
                                }
                                bestIfaceCreationProposal = bestIfaceCreationProposal2;
                            }
                        }
                    }
                    if (bestIfaceCreationProposal == null || (iface = executeChipReconfiguration(bestIfaceCreationProposal, ifaceType)) == null) {
                        return null;
                    }
                    InterfaceCacheEntry cacheEntry = new InterfaceCacheEntry();
                    cacheEntry.chip = bestIfaceCreationProposal.chipInfo.chip;
                    cacheEntry.chipId = bestIfaceCreationProposal.chipInfo.chipId;
                    cacheEntry.name = getName(iface);
                    cacheEntry.type = ifaceType;
                    if (destroyedListener != null) {
                        try {
                            try {
                                cacheEntry.destroyedListeners.add(new InterfaceDestroyedListenerProxy(cacheEntry.name, destroyedListener, handler));
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                    cacheEntry.creationTime = this.mClock.getUptimeSinceBootMillis();
                    cacheEntry.isLowPriority = lowPriority;
                    if (this.mDbg) {
                        Log.d(TAG, "createIfaceIfPossible: added cacheEntry=" + cacheEntry);
                    }
                    this.mInterfaceInfoCache.put(Pair.create(cacheEntry.name, Integer.valueOf(cacheEntry.type)), cacheEntry);
                    return iface;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
            throw th;
        }
    }

    private boolean isItPossibleToCreateIface(WifiChipInfo[] chipInfos, int ifaceType) {
        for (WifiChipInfo chipInfo : chipInfos) {
            for (IWifiChip.ChipMode chipMode : chipInfo.availableModes) {
                for (IWifiChip.ChipIfaceCombination chipIfaceCombo : chipMode.availableCombinations) {
                    int[][] expandedIfaceCombos = expandIfaceCombos(chipIfaceCombo);
                    int length = expandedIfaceCombos.length;
                    int i = 0;
                    while (i < length) {
                        int[] expandedIfaceCombo = expandedIfaceCombos[i];
                        int i2 = i;
                        int i3 = length;
                        int[][] expandedIfaceCombos2 = expandedIfaceCombos;
                        if (canIfaceComboSupportRequest(chipInfo, chipMode, expandedIfaceCombo, ifaceType, false) == null) {
                            i = i2 + 1;
                            length = i3;
                            expandedIfaceCombos = expandedIfaceCombos2;
                        } else {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private int[][] expandIfaceCombos(IWifiChip.ChipIfaceCombination chipIfaceCombo) {
        int numOfCombos = 1;
        for (IWifiChip.ChipIfaceCombinationLimit limit : chipIfaceCombo.limits) {
            for (int i = 0; i < limit.maxIfaces; i++) {
                numOfCombos *= limit.types.size();
            }
        }
        int[][] expandedIfaceCombos = (int[][]) Array.newInstance((Class<?>) int.class, numOfCombos, IFACE_TYPES_BY_PRIORITY.length);
        int span = numOfCombos;
        for (IWifiChip.ChipIfaceCombinationLimit limit2 : chipIfaceCombo.limits) {
            for (int i2 = 0; i2 < limit2.maxIfaces; i2++) {
                span /= limit2.types.size();
                for (int k = 0; k < numOfCombos; k++) {
                    int[] iArr = expandedIfaceCombos[k];
                    int iIntValue = limit2.types.get((k / span) % limit2.types.size()).intValue();
                    iArr[iIntValue] = iArr[iIntValue] + 1;
                }
            }
        }
        return expandedIfaceCombos;
    }

    private class IfaceCreationData {
        public WifiChipInfo chipInfo;
        public int chipModeId;
        public List<WifiIfaceInfo> interfacesToBeRemovedFirst;

        private IfaceCreationData() {
        }

        public String toString() {
            return "{chipInfo=" + this.chipInfo + ", chipModeId=" + this.chipModeId + ", interfacesToBeRemovedFirst=" + this.interfacesToBeRemovedFirst + ")";
        }
    }

    private IfaceCreationData canIfaceComboSupportRequest(WifiChipInfo chipInfo, IWifiChip.ChipMode chipMode, int[] chipIfaceCombo, int ifaceType, boolean lowPriority) {
        if (chipIfaceCombo[ifaceType] == 0) {
            return null;
        }
        int i = 0;
        boolean isChipModeChangeProposed = chipInfo.currentModeIdValid && chipInfo.currentModeId != chipMode.id;
        if (isChipModeChangeProposed) {
            int[] iArr = IFACE_TYPES_BY_PRIORITY;
            int length = iArr.length;
            while (i < length) {
                int type = iArr[i];
                if (chipInfo.ifaces[type].length != 0 && (lowPriority || !allowedToDeleteIfaceTypeForRequestedType(type, ifaceType, chipInfo.ifaces, chipInfo.ifaces[type].length))) {
                    return null;
                }
                i++;
            }
            IfaceCreationData ifaceCreationData = new IfaceCreationData();
            ifaceCreationData.chipInfo = chipInfo;
            ifaceCreationData.chipModeId = chipMode.id;
            return ifaceCreationData;
        }
        List<WifiIfaceInfo> interfacesToBeRemovedFirst = new ArrayList<>();
        int[] iArr2 = IFACE_TYPES_BY_PRIORITY;
        int length2 = iArr2.length;
        while (i < length2) {
            int type2 = iArr2[i];
            int tooManyInterfaces = chipInfo.ifaces[type2].length - chipIfaceCombo[type2];
            if (type2 == ifaceType) {
                tooManyInterfaces++;
            }
            if (tooManyInterfaces > 0) {
                if (lowPriority || !allowedToDeleteIfaceTypeForRequestedType(type2, ifaceType, chipInfo.ifaces, tooManyInterfaces)) {
                    return null;
                }
                interfacesToBeRemovedFirst = selectInterfacesToDelete(tooManyInterfaces, chipInfo.ifaces[type2]);
            }
            i++;
        }
        IfaceCreationData ifaceCreationData2 = new IfaceCreationData();
        ifaceCreationData2.chipInfo = chipInfo;
        ifaceCreationData2.chipModeId = chipMode.id;
        ifaceCreationData2.interfacesToBeRemovedFirst = interfacesToBeRemovedFirst;
        return ifaceCreationData2;
    }

    private boolean compareIfaceCreationData(IfaceCreationData val1, IfaceCreationData val2) {
        int numIfacesToDelete1;
        int numIfacesToDelete2;
        if (val1 == null) {
            return false;
        }
        if (val2 == null) {
            return true;
        }
        for (int type : IFACE_TYPES_BY_PRIORITY) {
            if (val1.chipInfo.currentModeIdValid && val1.chipInfo.currentModeId != val1.chipModeId) {
                numIfacesToDelete1 = val1.chipInfo.ifaces[type].length;
            } else {
                numIfacesToDelete1 = val1.interfacesToBeRemovedFirst.size();
            }
            if (val2.chipInfo.currentModeIdValid && val2.chipInfo.currentModeId != val2.chipModeId) {
                numIfacesToDelete2 = val2.chipInfo.ifaces[type].length;
            } else {
                numIfacesToDelete2 = val2.interfacesToBeRemovedFirst.size();
            }
            if (numIfacesToDelete1 < numIfacesToDelete2) {
                return true;
            }
        }
        return false;
    }

    private boolean allowedToDeleteIfaceTypeForRequestedType(int existingIfaceType, int requestedIfaceType, WifiIfaceInfo[][] currentIfaces, int numNecessaryInterfaces) {
        int numAvailableLowPriorityInterfaces = 0;
        for (InterfaceCacheEntry entry : this.mInterfaceInfoCache.values()) {
            if (entry.type == existingIfaceType && entry.isLowPriority) {
                numAvailableLowPriorityInterfaces++;
            }
        }
        if (numAvailableLowPriorityInterfaces >= numNecessaryInterfaces) {
            return true;
        }
        if (existingIfaceType != requestedIfaceType && currentIfaces[requestedIfaceType].length == 0) {
            if (currentIfaces[existingIfaceType].length > 1) {
                return true;
            }
            if (requestedIfaceType == 3) {
                return false;
            }
            if (requestedIfaceType != 2 || existingIfaceType == 3) {
                return true;
            }
            return false;
        }
        return false;
    }

    private List<WifiIfaceInfo> selectInterfacesToDelete(int excessInterfaces, WifiIfaceInfo[] interfaces) {
        boolean lookupError = false;
        LongSparseArray<WifiIfaceInfo> orderedListLowPriority = new LongSparseArray<>();
        LongSparseArray<WifiIfaceInfo> orderedList = new LongSparseArray<>();
        for (WifiIfaceInfo info : interfaces) {
            InterfaceCacheEntry cacheEntry = this.mInterfaceInfoCache.get(Pair.create(info.name, Integer.valueOf(getType(info.iface))));
            if (cacheEntry == null) {
                Log.e(TAG, "selectInterfacesToDelete: can't find cache entry with name=" + info.name);
                lookupError = true;
                break;
            }
            if (cacheEntry.isLowPriority) {
                orderedListLowPriority.append(cacheEntry.creationTime, info);
            } else {
                orderedList.append(cacheEntry.creationTime, info);
            }
        }
        if (lookupError) {
            Log.e(TAG, "selectInterfacesToDelete: falling back to arbitrary selection");
            return Arrays.asList((WifiIfaceInfo[]) Arrays.copyOf(interfaces, excessInterfaces));
        }
        List<WifiIfaceInfo> result = new ArrayList<>(excessInterfaces);
        for (int i = 0; i < excessInterfaces; i++) {
            int lowPriorityNextIndex = (orderedListLowPriority.size() - i) - 1;
            if (lowPriorityNextIndex >= 0) {
                result.add(orderedListLowPriority.valueAt(lowPriorityNextIndex));
            } else {
                result.add(orderedList.valueAt(((orderedList.size() - i) + orderedListLowPriority.size()) - 1));
            }
        }
        return result;
    }

    private IWifiIface executeChipReconfiguration(IfaceCreationData ifaceCreationData, int ifaceType) {
        if (this.mDbg) {
            Log.d(TAG, "executeChipReconfiguration: ifaceCreationData=" + ifaceCreationData + ", ifaceType=" + ifaceType);
        }
        synchronized (this.mLock) {
            try {
                try {
                    boolean isModeConfigNeeded = (ifaceCreationData.chipInfo.currentModeIdValid && ifaceCreationData.chipInfo.currentModeId == ifaceCreationData.chipModeId) ? false : true;
                    if (this.mDbg) {
                        Log.d(TAG, "isModeConfigNeeded=" + isModeConfigNeeded);
                    }
                    if (isModeConfigNeeded) {
                        for (WifiIfaceInfo[] ifaceInfos : ifaceCreationData.chipInfo.ifaces) {
                            for (WifiIfaceInfo ifaceInfo : ifaceInfos) {
                                removeIfaceInternal(ifaceInfo.iface);
                            }
                        }
                        WifiStatus status = ifaceCreationData.chipInfo.chip.configureChip(ifaceCreationData.chipModeId);
                        updateRttControllerOnModeChange();
                        if (status.code != 0) {
                            Log.e(TAG, "executeChipReconfiguration: configureChip error: " + statusString(status));
                            return null;
                        }
                    } else {
                        for (WifiIfaceInfo ifaceInfo2 : ifaceCreationData.interfacesToBeRemovedFirst) {
                            removeIfaceInternal(ifaceInfo2.iface);
                        }
                    }
                    final HidlSupport.Mutable<WifiStatus> statusResp = new HidlSupport.Mutable<>();
                    final HidlSupport.Mutable<IWifiIface> ifaceResp = new HidlSupport.Mutable<>();
                    if (ifaceType == 0) {
                        ifaceCreationData.chipInfo.chip.createStaIface(new IWifiChip.createStaIfaceCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$0fExlzrQXvHvboqrhwLsuIEN8sQ
                            @Override // android.hardware.wifi.V1_0.IWifiChip.createStaIfaceCallback
                            public final void onValues(WifiStatus wifiStatus, IWifiStaIface iWifiStaIface) {
                                HalDeviceManager.lambda$executeChipReconfiguration$18(statusResp, ifaceResp, wifiStatus, iWifiStaIface);
                            }
                        });
                    } else if (ifaceType == 1) {
                        ifaceCreationData.chipInfo.chip.createApIface(new IWifiChip.createApIfaceCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$OnsWneK7WJWdtu1Yc97G_SlWc5w
                            @Override // android.hardware.wifi.V1_0.IWifiChip.createApIfaceCallback
                            public final void onValues(WifiStatus wifiStatus, IWifiApIface iWifiApIface) {
                                HalDeviceManager.lambda$executeChipReconfiguration$19(statusResp, ifaceResp, wifiStatus, iWifiApIface);
                            }
                        });
                    } else if (ifaceType == 2) {
                        ifaceCreationData.chipInfo.chip.createP2pIface(new IWifiChip.createP2pIfaceCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$MPjapT5h9jFZYNnOBjLSEdwh6tg
                            @Override // android.hardware.wifi.V1_0.IWifiChip.createP2pIfaceCallback
                            public final void onValues(WifiStatus wifiStatus, IWifiP2pIface iWifiP2pIface) {
                                HalDeviceManager.lambda$executeChipReconfiguration$20(statusResp, ifaceResp, wifiStatus, iWifiP2pIface);
                            }
                        });
                    } else if (ifaceType == 3) {
                        ifaceCreationData.chipInfo.chip.createNanIface(new IWifiChip.createNanIfaceCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$BkJ-u2mnM7l_bsdJ9qDxHZJRcVM
                            @Override // android.hardware.wifi.V1_0.IWifiChip.createNanIfaceCallback
                            public final void onValues(WifiStatus wifiStatus, IWifiNanIface iWifiNanIface) {
                                HalDeviceManager.lambda$executeChipReconfiguration$21(statusResp, ifaceResp, wifiStatus, iWifiNanIface);
                            }
                        });
                    }
                    if (((WifiStatus) statusResp.value).code != 0) {
                        Log.e(TAG, "executeChipReconfiguration: failed to create interface ifaceType=" + ifaceType + ": " + statusString((WifiStatus) statusResp.value));
                        return null;
                    }
                    return (IWifiIface) ifaceResp.value;
                } catch (RemoteException e) {
                    Log.e(TAG, "executeChipReconfiguration exception: " + e);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static /* synthetic */ void lambda$executeChipReconfiguration$18(HidlSupport.Mutable statusResp, HidlSupport.Mutable ifaceResp, WifiStatus status, IWifiStaIface iface) {
        statusResp.value = status;
        ifaceResp.value = iface;
    }

    static /* synthetic */ void lambda$executeChipReconfiguration$19(HidlSupport.Mutable statusResp, HidlSupport.Mutable ifaceResp, WifiStatus status, IWifiApIface iface) {
        statusResp.value = status;
        ifaceResp.value = iface;
    }

    static /* synthetic */ void lambda$executeChipReconfiguration$20(HidlSupport.Mutable statusResp, HidlSupport.Mutable ifaceResp, WifiStatus status, IWifiP2pIface iface) {
        statusResp.value = status;
        ifaceResp.value = iface;
    }

    static /* synthetic */ void lambda$executeChipReconfiguration$21(HidlSupport.Mutable statusResp, HidlSupport.Mutable ifaceResp, WifiStatus status, IWifiNanIface iface) {
        statusResp.value = status;
        ifaceResp.value = iface;
    }

    private boolean removeIfaceInternal(IWifiIface iface) throws RemoteException {
        String name = getName(iface);
        int type = getType(iface);
        if (this.mDbg) {
            Log.d(TAG, "removeIfaceInternal: iface(name)=" + name + ", type=" + type);
        }
        if (type == -1) {
            Log.e(TAG, "removeIfaceInternal: can't get type -- iface(name)=" + name);
            return false;
        }
        synchronized (this.mLock) {
            if (this.mWifi == null) {
                Log.e(TAG, "removeIfaceInternal: null IWifi -- iface(name)=" + name);
                return false;
            }
            IWifiChip chip = getChip(iface);
            if (chip == null) {
                Log.e(TAG, "removeIfaceInternal: null IWifiChip -- iface(name)=" + name);
                return false;
            }
            if (name == null) {
                Log.e(TAG, "removeIfaceInternal: can't get name");
                return false;
            }
            WifiStatus status = null;
            try {
                if (type != 0) {
                    if (type == 1) {
                        status = chip.removeApIface(name);
                    } else if (type == 2) {
                        status = chip.removeP2pIface(name);
                    } else if (type == 3) {
                        status = chip.removeNanIface(name);
                    } else {
                        Log.wtf(TAG, "removeIfaceInternal: invalid type=" + type);
                        return false;
                    }
                } else {
                    status = chip.removeStaIface(name);
                }
            } catch (RemoteException e) {
                Log.e(TAG, "IWifiChip.removeXxxIface exception: " + e);
            }
            dispatchDestroyedListeners(name, type);
            if (status != null && status.code == 0) {
                return true;
            }
            Log.e(TAG, "IWifiChip.removeXxxIface failed: " + statusString(status));
            return false;
        }
    }

    private boolean dispatchAvailableForRequestListeners() {
        synchronized (this.mLock) {
            WifiChipInfo[] chipInfos = getAllChipInfo();
            if (chipInfos == null) {
                Log.e(TAG, "dispatchAvailableForRequestListeners: no chip info found");
                stopWifi();
                return false;
            }
            for (int ifaceType : IFACE_TYPES_BY_PRIORITY) {
                dispatchAvailableForRequestListenersForType(ifaceType, chipInfos);
            }
            return true;
        }
    }

    private void dispatchAvailableForRequestListenersForType(int ifaceType, WifiChipInfo[] chipInfos) {
        synchronized (this.mLock) {
            Map<InterfaceAvailableForRequestListenerProxy, Boolean> listeners = this.mInterfaceAvailableForRequestListeners.get(ifaceType);
            if (listeners.size() == 0) {
                return;
            }
            boolean isAvailable = isItPossibleToCreateIface(chipInfos, ifaceType);
            for (Map.Entry<InterfaceAvailableForRequestListenerProxy, Boolean> listenerEntry : listeners.entrySet()) {
                if (listenerEntry.getValue() == null || listenerEntry.getValue().booleanValue() != isAvailable) {
                    listenerEntry.getKey().triggerWithArg(isAvailable);
                }
                listenerEntry.setValue(Boolean.valueOf(isAvailable));
            }
        }
    }

    private void dispatchDestroyedListeners(String name, int type) {
        synchronized (this.mLock) {
            InterfaceCacheEntry entry = this.mInterfaceInfoCache.get(Pair.create(name, Integer.valueOf(type)));
            if (entry == null) {
                Log.e(TAG, "dispatchDestroyedListeners: no cache entry for iface(name)=" + name);
                return;
            }
            for (InterfaceDestroyedListenerProxy listener : entry.destroyedListeners) {
                listener.trigger();
            }
            entry.destroyedListeners.clear();
            this.mInterfaceInfoCache.remove(Pair.create(name, Integer.valueOf(type)));
        }
    }

    private void dispatchAllDestroyedListeners() {
        synchronized (this.mLock) {
            for (InterfaceCacheEntry cacheEntry : this.mInterfaceInfoCache.values()) {
                for (InterfaceDestroyedListenerProxy listener : cacheEntry.destroyedListeners) {
                    listener.trigger();
                }
                cacheEntry.destroyedListeners.clear();
            }
            this.mInterfaceInfoCache.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    abstract class ListenerProxy<LISTENER> {
        private Handler mHandler;
        protected LISTENER mListener;

        public boolean equals(Object obj) {
            return this.mListener == ((ListenerProxy) obj).mListener;
        }

        public int hashCode() {
            return this.mListener.hashCode();
        }

        void trigger() {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$ListenerProxy$EUZ7m5GXHY27oKauEW_8pihGjbw
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$trigger$0$HalDeviceManager$ListenerProxy();
                    }
                });
            } else {
                lambda$trigger$0$HalDeviceManager$ListenerProxy();
            }
        }

        void triggerWithArg(final boolean arg) {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$ListenerProxy$YGLSZf58sxTORRCaSB1wOY_oquo
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$triggerWithArg$1$HalDeviceManager$ListenerProxy(arg);
                    }
                });
            } else {
                lambda$triggerWithArg$1$HalDeviceManager$ListenerProxy(arg);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX INFO: renamed from: action, reason: merged with bridge method [inline-methods] */
        public void lambda$trigger$0$HalDeviceManager$ListenerProxy() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX INFO: renamed from: actionWithArg, reason: merged with bridge method [inline-methods] */
        public void lambda$triggerWithArg$1$HalDeviceManager$ListenerProxy(boolean arg) {
        }

        ListenerProxy(LISTENER listener, Handler handler, String tag) {
            this.mListener = listener;
            this.mHandler = handler;
        }
    }

    private class InterfaceDestroyedListenerProxy extends ListenerProxy<InterfaceDestroyedListener> {
        private final String mIfaceName;

        InterfaceDestroyedListenerProxy(String ifaceName, InterfaceDestroyedListener destroyedListener, Handler handler) {
            super(destroyedListener, handler, "InterfaceDestroyedListenerProxy");
            this.mIfaceName = ifaceName;
        }

        @Override // com.android.server.wifi.HalDeviceManager.ListenerProxy
        /* JADX INFO: renamed from: action */
        protected void lambda$trigger$0$HalDeviceManager$ListenerProxy() {
            ((InterfaceDestroyedListener) this.mListener).onDestroyed(this.mIfaceName);
        }
    }

    private class InterfaceAvailableForRequestListenerProxy extends ListenerProxy<InterfaceAvailableForRequestListener> {
        InterfaceAvailableForRequestListenerProxy(InterfaceAvailableForRequestListener destroyedListener, Handler handler) {
            super(destroyedListener, handler, "InterfaceAvailableForRequestListenerProxy");
        }

        @Override // com.android.server.wifi.HalDeviceManager.ListenerProxy
        /* JADX INFO: renamed from: actionWithArg */
        protected void lambda$triggerWithArg$1$HalDeviceManager$ListenerProxy(boolean isAvailable) {
            ((InterfaceAvailableForRequestListener) this.mListener).onAvailabilityChanged(isAvailable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class InterfaceRttControllerLifecycleCallbackProxy implements InterfaceRttControllerLifecycleCallback {
        private InterfaceRttControllerLifecycleCallback mCallback;
        private Handler mHandler;

        InterfaceRttControllerLifecycleCallbackProxy(InterfaceRttControllerLifecycleCallback callback, Handler handler) {
            this.mCallback = callback;
            this.mHandler = handler;
        }

        public boolean equals(Object obj) {
            return this.mCallback == ((InterfaceRttControllerLifecycleCallbackProxy) obj).mCallback;
        }

        public int hashCode() {
            return this.mCallback.hashCode();
        }

        public /* synthetic */ void lambda$onNewRttController$0$HalDeviceManager$InterfaceRttControllerLifecycleCallbackProxy(IWifiRttController controller) {
            this.mCallback.onNewRttController(controller);
        }

        @Override // com.android.server.wifi.HalDeviceManager.InterfaceRttControllerLifecycleCallback
        public void onNewRttController(final IWifiRttController controller) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$InterfaceRttControllerLifecycleCallbackProxy$Vt8Gvz01jOxC1TqVEIeBuJ45xAg
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNewRttController$0$HalDeviceManager$InterfaceRttControllerLifecycleCallbackProxy(controller);
                }
            });
        }

        public /* synthetic */ void lambda$onRttControllerDestroyed$1$HalDeviceManager$InterfaceRttControllerLifecycleCallbackProxy() {
            this.mCallback.onRttControllerDestroyed();
        }

        @Override // com.android.server.wifi.HalDeviceManager.InterfaceRttControllerLifecycleCallback
        public void onRttControllerDestroyed() {
            this.mHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$InterfaceRttControllerLifecycleCallbackProxy$Jq3jiK0PF_ihQmDGnOqjWGZKR74
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onRttControllerDestroyed$1$HalDeviceManager$InterfaceRttControllerLifecycleCallbackProxy();
                }
            });
        }
    }

    private void dispatchRttControllerLifecycleOnNew() {
        for (InterfaceRttControllerLifecycleCallbackProxy cbp : this.mRttControllerLifecycleCallbacks) {
            cbp.onNewRttController(this.mIWifiRttController);
        }
    }

    private void dispatchRttControllerLifecycleOnDestroyed() {
        for (InterfaceRttControllerLifecycleCallbackProxy cbp : this.mRttControllerLifecycleCallbacks) {
            cbp.onRttControllerDestroyed();
        }
    }

    private void updateRttControllerOnModeChange() {
        synchronized (this.mLock) {
            boolean controllerDestroyed = this.mIWifiRttController != null;
            this.mIWifiRttController = null;
            if (this.mRttControllerLifecycleCallbacks.size() == 0) {
                Log.d(TAG, "updateRttController: no one is interested in RTT controllers");
                return;
            }
            IWifiRttController newRttController = createRttControllerIfPossible();
            if (newRttController == null) {
                if (controllerDestroyed) {
                    dispatchRttControllerLifecycleOnDestroyed();
                }
            } else {
                this.mIWifiRttController = newRttController;
                dispatchRttControllerLifecycleOnNew();
            }
        }
    }

    private IWifiRttController createRttControllerIfPossible() {
        synchronized (this.mLock) {
            if (!isWifiStarted()) {
                Log.d(TAG, "createRttControllerIfPossible: Wifi is not started");
                return null;
            }
            WifiChipInfo[] chipInfos = getAllChipInfo();
            if (chipInfos == null) {
                Log.d(TAG, "createRttControllerIfPossible: no chip info found - most likely chip not up yet");
                return null;
            }
            for (WifiChipInfo chipInfo : chipInfos) {
                if (chipInfo.currentModeIdValid) {
                    final HidlSupport.Mutable<IWifiRttController> rttResp = new HidlSupport.Mutable<>();
                    try {
                        chipInfo.chip.createRttController(null, new IWifiChip.createRttControllerCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$X9vx2J4m1oo365x_oO3URsq_nqo
                            @Override // android.hardware.wifi.V1_0.IWifiChip.createRttControllerCallback
                            public final void onValues(WifiStatus wifiStatus, IWifiRttController iWifiRttController) {
                                HalDeviceManager.lambda$createRttControllerIfPossible$22(rttResp, wifiStatus, iWifiRttController);
                            }
                        });
                    } catch (RemoteException e) {
                        Log.e(TAG, "IWifiChip.createRttController exception: " + e);
                    }
                    if (rttResp.value != null) {
                        return (IWifiRttController) rttResp.value;
                    }
                }
            }
            Log.w(TAG, "createRttControllerIfPossible: not available from any of the chips");
            return null;
        }
    }

    static /* synthetic */ void lambda$createRttControllerIfPossible$22(HidlSupport.Mutable rttResp, WifiStatus status, IWifiRttController rtt) {
        if (status.code == 0) {
            rttResp.value = rtt;
            return;
        }
        Log.e(TAG, "IWifiChip.createRttController failed: " + statusString(status));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String statusString(WifiStatus status) {
        if (status == null) {
            return "status=null";
        }
        return status.code + " (" + status.description + ")";
    }

    private static int getType(IWifiIface iface) {
        final MutableInt typeResp = new MutableInt(-1);
        try {
            iface.getType(new IWifiIface.getTypeCallback() { // from class: com.android.server.wifi.-$$Lambda$HalDeviceManager$ErxCpEghr4yhQpGHX1NQPumvouc
                @Override // android.hardware.wifi.V1_0.IWifiIface.getTypeCallback
                public final void onValues(WifiStatus wifiStatus, int i) {
                    HalDeviceManager.lambda$getType$23(typeResp, wifiStatus, i);
                }
            });
        } catch (RemoteException e) {
            Log.e(TAG, "Exception on getType: " + e);
        }
        return typeResp.value;
    }

    static /* synthetic */ void lambda$getType$23(MutableInt typeResp, WifiStatus status, int type) {
        if (status.code == 0) {
            typeResp.value = type;
            return;
        }
        Log.e(TAG, "Error on getType: " + statusString(status));
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("HalDeviceManager:");
        pw.println("  mServiceManager: " + this.mServiceManager);
        pw.println("  mWifi: " + this.mWifi);
        pw.println("  mManagerStatusListeners: " + this.mManagerStatusListeners);
        pw.println("  mInterfaceAvailableForRequestListeners: " + this.mInterfaceAvailableForRequestListeners);
        pw.println("  mInterfaceInfoCache: " + this.mInterfaceInfoCache);
    }
}
