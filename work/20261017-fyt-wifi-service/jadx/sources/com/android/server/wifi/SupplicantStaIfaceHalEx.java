package com.android.server.wifi;

import android.content.Context;
import android.hardware.wifi.supplicant.V1_0.ISupplicant;
import android.hardware.wifi.supplicant.V1_0.ISupplicantIface;
import android.hardware.wifi.supplicant.V1_0.ISupplicantNetwork;
import android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback;
import android.hardware.wifi.supplicant.V1_0.SupplicantStatus;
import android.hardware.wifi.supplicant.V1_0.WpsConfigMethods;
import android.hidl.manager.V1_0.IServiceManager;
import android.hidl.manager.V1_0.IServiceNotification;
import android.net.IpConfiguration;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiSsid;
import android.os.Handler;
import android.os.HidlSupport;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.util.MutableBoolean;
import android.util.MutableInt;
import android.util.Pair;
import android.util.SparseArray;
import com.android.internal.annotations.VisibleForTesting;
import com.android.server.wifi.hotspot2.AnqpEvent;
import com.android.server.wifi.hotspot2.IconEvent;
import com.android.server.wifi.hotspot2.WnmData;
import com.android.server.wifi.hotspot2.anqp.ANQPElement;
import com.android.server.wifi.hotspot2.anqp.ANQPParser;
import com.android.server.wifi.hotspot2.anqp.Constants;
import com.android.server.wifi.util.NativeUtil;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.concurrent.ThreadSafe;
import vendor.sprd.hardware.wifi.supplicant.V1_2.ISupplicantStaIface;
import vendor.sprd.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallbackEx;
import vendor.sprd.hardware.wifi.supplicant.V1_2.ISupplicantStaNetwork;

/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class SupplicantStaIfaceHalEx {

    @VisibleForTesting
    public static final String HAL_INSTANCE_NAME = "default";

    @VisibleForTesting
    public static final String INIT_SERVICE_NAME = "wpa_supplicant";

    @VisibleForTesting
    public static final String INIT_START_PROPERTY = "ctl.start";

    @VisibleForTesting
    public static final String INIT_STOP_PROPERTY = "ctl.stop";
    private static final String TAG = "SupplicantStaIfaceHalEx";
    private static final Pattern WPS_DEVICE_TYPE_PATTERN = Pattern.compile("^(\\d{1,2})-([0-9a-fA-F]{8})-(\\d{1,2})$");
    private final Context mContext;
    private WifiNative.SupplicantDeathEventHandler mDeathEventHandler;
    private final Handler mEventHandler;
    private ISupplicant mISupplicant;
    private final PropertyService mPropertyService;
    private ServiceManagerDeathRecipient mServiceManagerDeathRecipient;
    private SupplicantDeathRecipient mSupplicantDeathRecipient;
    private final WifiMonitor mWifiMonitor;
    private final Object mLock = new Object();
    private boolean mVerboseLoggingEnabled = false;
    private IServiceManager mIServiceManager = null;
    private HashMap<String, ISupplicantStaIface> mISupplicantStaIfaces = new HashMap<>();
    private HashMap<String, ISupplicantStaIfaceCallbackEx> mISupplicantStaIfaceCallbacks = new HashMap<>();
    private HashMap<String, SupplicantStaNetworkHalEx> mCurrentNetworkRemoteHandles = new HashMap<>();
    private HashMap<String, WifiConfiguration> mCurrentNetworkLocalConfigs = new HashMap<>();
    private long mDeathRecipientCookie = 0;
    private WifiNative.DppEventCallback mDppCallback = null;
    private final IServiceNotification mServiceNotificationCallback = new IServiceNotification.Stub() { // from class: com.android.server.wifi.SupplicantStaIfaceHalEx.1
        public void onRegistration(String fqName, String name, boolean preexisting) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                if (SupplicantStaIfaceHalEx.this.mVerboseLoggingEnabled) {
                    Log.i(SupplicantStaIfaceHalEx.TAG, "IServiceNotification.onRegistration for: " + fqName + ", " + name + " preexisting=" + preexisting);
                }
                if (!SupplicantStaIfaceHalEx.this.initSupplicantService()) {
                    Log.e(SupplicantStaIfaceHalEx.TAG, "initalizing ISupplicant failed.");
                    SupplicantStaIfaceHalEx.this.supplicantServiceDiedHandler(SupplicantStaIfaceHalEx.this.mDeathRecipientCookie);
                } else {
                    Log.i(SupplicantStaIfaceHalEx.TAG, "Completed initialization of ISupplicant.");
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    class ServiceManagerDeathRecipient implements IHwBinder.DeathRecipient {
        private ServiceManagerDeathRecipient() {
        }

        public void serviceDied(final long cookie) {
            SupplicantStaIfaceHalEx.this.mEventHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$SupplicantStaIfaceHalEx$ServiceManagerDeathRecipient$LpsT_pqKoPqIQEPpXkwOSUzHI_I
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$serviceDied$0$SupplicantStaIfaceHalEx$ServiceManagerDeathRecipient(cookie);
                }
            });
        }

        public /* synthetic */ void lambda$serviceDied$0$SupplicantStaIfaceHalEx$ServiceManagerDeathRecipient(long cookie) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                Log.w(SupplicantStaIfaceHalEx.TAG, "IServiceManager died: cookie=" + cookie);
                SupplicantStaIfaceHalEx.this.supplicantServiceDiedHandler(SupplicantStaIfaceHalEx.this.mDeathRecipientCookie);
                SupplicantStaIfaceHalEx.this.mIServiceManager = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class SupplicantDeathRecipient implements IHwBinder.DeathRecipient {
        private SupplicantDeathRecipient() {
        }

        public void serviceDied(final long cookie) {
            SupplicantStaIfaceHalEx.this.mEventHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$SupplicantStaIfaceHalEx$SupplicantDeathRecipient$fyDUx0v8RMOdUeD4pE_Cykjkcuw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$serviceDied$0$SupplicantStaIfaceHalEx$SupplicantDeathRecipient(cookie);
                }
            });
        }

        public /* synthetic */ void lambda$serviceDied$0$SupplicantStaIfaceHalEx$SupplicantDeathRecipient(long cookie) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                Log.w(SupplicantStaIfaceHalEx.TAG, "ISupplicant died: cookie=" + cookie);
                SupplicantStaIfaceHalEx.this.supplicantServiceDiedHandler(cookie);
            }
        }
    }

    public SupplicantStaIfaceHalEx(Context context, WifiMonitor monitor, PropertyService propertyService, Looper looper) {
        this.mContext = context;
        this.mWifiMonitor = monitor;
        this.mPropertyService = propertyService;
        this.mEventHandler = new Handler(looper);
        this.mServiceManagerDeathRecipient = new ServiceManagerDeathRecipient();
        this.mSupplicantDeathRecipient = new SupplicantDeathRecipient();
    }

    void enableVerboseLogging(boolean enable) {
        synchronized (this.mLock) {
            this.mVerboseLoggingEnabled = enable;
        }
    }

    private boolean linkToServiceManagerDeath() {
        synchronized (this.mLock) {
            if (this.mIServiceManager == null) {
                return false;
            }
            try {
                if (!this.mIServiceManager.linkToDeath(this.mServiceManagerDeathRecipient, 0L)) {
                    Log.wtf(TAG, "Error on linkToDeath on IServiceManager");
                    supplicantServiceDiedHandler(this.mDeathRecipientCookie);
                    this.mIServiceManager = null;
                    return false;
                }
                return true;
            } catch (RemoteException e) {
                Log.e(TAG, "IServiceManager.linkToDeath exception", e);
                return false;
            }
        }
    }

    public boolean initialize() {
        synchronized (this.mLock) {
            if (this.mVerboseLoggingEnabled) {
                Log.i(TAG, "Registering ISupplicant service ready callback.");
            }
            this.mISupplicant = null;
            this.mISupplicantStaIfaces.clear();
            if (this.mIServiceManager != null) {
                return true;
            }
            try {
                this.mIServiceManager = getServiceManagerMockable();
                if (this.mIServiceManager == null) {
                    Log.e(TAG, "Failed to get HIDL Service Manager");
                    return false;
                }
                if (!linkToServiceManagerDeath()) {
                    return false;
                }
                if (this.mIServiceManager.registerForNotifications(ISupplicant.kInterfaceName, "", this.mServiceNotificationCallback)) {
                    return true;
                }
                Log.e(TAG, "Failed to register for notifications to android.hardware.wifi.supplicant@1.0::ISupplicant");
                this.mIServiceManager = null;
                return false;
            } catch (RemoteException e) {
                Log.e(TAG, "Exception while trying to register a listener for ISupplicant service: " + e);
                supplicantServiceDiedHandler(this.mDeathRecipientCookie);
            }
        }
    }

    private boolean linkToSupplicantDeath() {
        synchronized (this.mLock) {
            if (this.mISupplicant == null) {
                return false;
            }
            try {
                ISupplicant iSupplicant = this.mISupplicant;
                SupplicantDeathRecipient supplicantDeathRecipient = this.mSupplicantDeathRecipient;
                long j = this.mDeathRecipientCookie + 1;
                this.mDeathRecipientCookie = j;
                if (!iSupplicant.linkToDeath(supplicantDeathRecipient, j)) {
                    Log.wtf(TAG, "Error on linkToDeath on ISupplicant");
                    supplicantServiceDiedHandler(this.mDeathRecipientCookie);
                    return false;
                }
                return true;
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicant.linkToDeath exception", e);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean initSupplicantService() {
        synchronized (this.mLock) {
            try {
                try {
                    try {
                        this.mISupplicant = getSupplicantMockable();
                        if (this.mISupplicant == null) {
                            Log.e(TAG, "Got null ISupplicant service. Stopping supplicant HIDL startup");
                            return false;
                        }
                        if (!linkToSupplicantDeath()) {
                            return false;
                        }
                        return true;
                    } catch (RemoteException e) {
                        Log.e(TAG, "ISupplicant.getService exception: " + e);
                        return false;
                    }
                } catch (NoSuchElementException e2) {
                    Log.e(TAG, "ISupplicant.getService exception: " + e2);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrentNetworkId(String ifaceName) {
        synchronized (this.mLock) {
            WifiConfiguration currentConfig = getCurrentNetworkLocalConfig(ifaceName);
            if (currentConfig == null) {
                return -1;
            }
            return currentConfig.networkId;
        }
    }

    public boolean setupIface(String ifaceName) {
        ISupplicantIface ifaceHwBinder;
        if (checkSupplicantStaIfaceAndLogFailure(ifaceName, "setupIface") != null) {
            return false;
        }
        if (isV1_1()) {
            ifaceHwBinder = addIfaceV1_1(ifaceName);
        } else {
            ifaceHwBinder = getIfaceV1_0(ifaceName);
        }
        if (ifaceHwBinder == null) {
            Log.e(TAG, "setupIface got null iface");
            return false;
        }
        SupplicantStaIfaceHalCallback callback = new SupplicantStaIfaceHalCallback(ifaceName);
        if (isSprdV1_2()) {
            ISupplicantStaIface iface = getStaIfaceMockableV1_2Ex(ifaceHwBinder);
            SupplicantStaIfaceHalCallbackV1_1 callbackV11 = new SupplicantStaIfaceHalCallbackV1_1(ifaceName, callback);
            SupplicantStaIfaceHalCallbackV1_2 callbackV12 = new SupplicantStaIfaceHalCallbackV1_2(callbackV11);
            if (!registerCallbackV1_2(iface, callbackV12)) {
                return false;
            }
            SupplicantStaIfaceHalCallbackEx callbackEx = new SupplicantStaIfaceHalCallbackEx(ifaceName);
            if (!registerCallbackV1_2Ex(iface, callbackEx)) {
                return false;
            }
            this.mISupplicantStaIfaces.put(ifaceName, iface);
            this.mISupplicantStaIfaceCallbacks.put(ifaceName, callbackEx);
            return true;
        }
        return true;
    }

    private ISupplicantIface getIfaceV1_0(String ifaceName) {
        synchronized (this.mLock) {
            try {
                if (this.mISupplicant == null) {
                    return null;
                }
                final ArrayList<ISupplicant.IfaceInfo> supplicantIfaces = new ArrayList<>();
                try {
                    this.mISupplicant.listInterfaces(new ISupplicant.listInterfacesCallback() { // from class: com.android.server.wifi.-$$Lambda$SupplicantStaIfaceHalEx$dJMY6JyBMjRAXSdi3Yy7idN7-Bc
                        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicant.listInterfacesCallback
                        public final void onValues(SupplicantStatus supplicantStatus, ArrayList arrayList) {
                            SupplicantStaIfaceHalEx.lambda$getIfaceV1_0$0(supplicantIfaces, supplicantStatus, arrayList);
                        }
                    });
                    if (supplicantIfaces.size() == 0) {
                        Log.e(TAG, "Got zero HIDL supplicant ifaces. Stopping supplicant HIDL startup.");
                        return null;
                    }
                    final HidlSupport.Mutable<ISupplicantIface> supplicantIface = new HidlSupport.Mutable<>();
                    for (ISupplicant.IfaceInfo ifaceInfo : supplicantIfaces) {
                        if (ifaceInfo.type == 0 && ifaceName.equals(ifaceInfo.name)) {
                            try {
                                this.mISupplicant.getInterface(ifaceInfo, new ISupplicant.getInterfaceCallback() { // from class: com.android.server.wifi.-$$Lambda$SupplicantStaIfaceHalEx$9lz_aS3xkVBTSeoT1mm_zISj0sU
                                    @Override // android.hardware.wifi.supplicant.V1_0.ISupplicant.getInterfaceCallback
                                    public final void onValues(SupplicantStatus supplicantStatus, ISupplicantIface iSupplicantIface) {
                                        SupplicantStaIfaceHalEx.lambda$getIfaceV1_0$1(supplicantIface, supplicantStatus, iSupplicantIface);
                                    }
                                });
                                break;
                            } catch (RemoteException e) {
                                Log.e(TAG, "ISupplicant.getInterface exception: " + e);
                                handleRemoteException(e, "getInterface");
                                return null;
                            }
                        }
                    }
                    return (ISupplicantIface) supplicantIface.value;
                } catch (RemoteException e2) {
                    Log.e(TAG, "ISupplicant.listInterfaces exception: " + e2);
                    handleRemoteException(e2, "listInterfaces");
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static /* synthetic */ void lambda$getIfaceV1_0$0(ArrayList supplicantIfaces, SupplicantStatus status, ArrayList ifaces) {
        if (status.code != 0) {
            Log.e(TAG, "Getting Supplicant Interfaces failed: " + status.code);
            return;
        }
        supplicantIfaces.addAll(ifaces);
    }

    static /* synthetic */ void lambda$getIfaceV1_0$1(HidlSupport.Mutable supplicantIface, SupplicantStatus status, ISupplicantIface iface) {
        if (status.code != 0) {
            Log.e(TAG, "Failed to get ISupplicantIface " + status.code);
            return;
        }
        supplicantIface.value = iface;
    }

    private ISupplicantIface addIfaceV1_1(String ifaceName) {
        ISupplicantIface iSupplicantIface;
        synchronized (this.mLock) {
            ISupplicant.IfaceInfo ifaceInfo = new ISupplicant.IfaceInfo();
            ifaceInfo.name = ifaceName;
            ifaceInfo.type = 0;
            final HidlSupport.Mutable<ISupplicantIface> supplicantIface = new HidlSupport.Mutable<>();
            try {
                try {
                    getSupplicantMockableV1_1().addInterface(ifaceInfo, new android.hardware.wifi.supplicant.V1_1.ISupplicant.addInterfaceCallback() { // from class: com.android.server.wifi.-$$Lambda$SupplicantStaIfaceHalEx$kyEad3rdev-oBMo7ap4QwpMkzss
                        @Override // android.hardware.wifi.supplicant.V1_1.ISupplicant.addInterfaceCallback
                        public final void onValues(SupplicantStatus supplicantStatus, ISupplicantIface iSupplicantIface2) {
                            SupplicantStaIfaceHalEx.lambda$addIfaceV1_1$2(supplicantIface, supplicantStatus, iSupplicantIface2);
                        }
                    });
                    iSupplicantIface = (ISupplicantIface) supplicantIface.value;
                } catch (NoSuchElementException e) {
                    Log.e(TAG, "ISupplicant.addInterface exception: " + e);
                    handleNoSuchElementException(e, "addInterface");
                    return null;
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "ISupplicant.addInterface exception: " + e2);
                handleRemoteException(e2, "addInterface");
                return null;
            }
        }
        return iSupplicantIface;
    }

    static /* synthetic */ void lambda$addIfaceV1_1$2(HidlSupport.Mutable supplicantIface, SupplicantStatus status, ISupplicantIface iface) {
        if (status.code != 0 && status.code != 5) {
            Log.e(TAG, "Failed to create ISupplicantIface " + status.code);
            return;
        }
        supplicantIface.value = iface;
    }

    public boolean teardownIface(String ifaceName) {
        synchronized (this.mLock) {
            if (checkSupplicantStaIfaceAndLogFailure(ifaceName, "teardownIface") == null) {
                return false;
            }
            if (isV1_1() && !removeIfaceV1_1(ifaceName)) {
                Log.e(TAG, "Failed to remove iface = " + ifaceName);
                return false;
            }
            if (this.mISupplicantStaIfaces.remove(ifaceName) == null) {
                Log.e(TAG, "Trying to teardown unknown inteface");
                return false;
            }
            this.mISupplicantStaIfaceCallbacks.remove(ifaceName);
            return true;
        }
    }

    private boolean removeIfaceV1_1(String ifaceName) {
        synchronized (this.mLock) {
            try {
                try {
                    ISupplicant.IfaceInfo ifaceInfo = new ISupplicant.IfaceInfo();
                    ifaceInfo.name = ifaceName;
                    ifaceInfo.type = 0;
                    SupplicantStatus status = getSupplicantMockableV1_1().removeInterface(ifaceInfo);
                    if (status.code != 0) {
                        Log.e(TAG, "Failed to remove iface " + status.code);
                        return false;
                    }
                    return true;
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicant.removeInterface exception: " + e);
                    handleRemoteException(e, "removeInterface");
                    return false;
                } catch (NoSuchElementException e2) {
                    Log.e(TAG, "ISupplicant.removeInterface exception: " + e2);
                    handleNoSuchElementException(e2, "removeInterface");
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean registerDeathHandler(WifiNative.SupplicantDeathEventHandler handler) {
        if (this.mDeathEventHandler != null) {
            Log.e(TAG, "Death handler already present");
        }
        this.mDeathEventHandler = handler;
        return true;
    }

    public boolean deregisterDeathHandler() {
        if (this.mDeathEventHandler == null) {
            Log.e(TAG, "No Death handler present");
        }
        this.mDeathEventHandler = null;
        return true;
    }

    private void clearState() {
        synchronized (this.mLock) {
            this.mISupplicant = null;
            this.mISupplicantStaIfaces.clear();
            this.mCurrentNetworkLocalConfigs.clear();
            this.mCurrentNetworkRemoteHandles.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void supplicantServiceDiedHandler(long cookie) {
        synchronized (this.mLock) {
            if (this.mDeathRecipientCookie != cookie) {
                Log.i(TAG, "Ignoring stale death recipient notification");
                return;
            }
            for (String ifaceName : this.mISupplicantStaIfaces.keySet()) {
                this.mWifiMonitor.broadcastSupplicantDisconnectionEvent(ifaceName);
            }
            clearState();
            if (this.mDeathEventHandler != null) {
                this.mDeathEventHandler.onDeath();
            }
        }
    }

    public boolean isInitializationStarted() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mIServiceManager != null;
        }
        return z;
    }

    public boolean isInitializationComplete() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mISupplicant != null;
        }
        return z;
    }

    private boolean startDaemon_V1_1() {
        synchronized (this.mLock) {
            try {
                getSupplicantMockableV1_1();
            } catch (RemoteException e) {
                Log.e(TAG, "Exception while trying to start supplicant: " + e);
                supplicantServiceDiedHandler(this.mDeathRecipientCookie);
                return false;
            } catch (NoSuchElementException e2) {
                Log.d(TAG, "Successfully triggered start of supplicant using HIDL");
            }
        }
        return true;
    }

    public boolean startDaemon() {
        synchronized (this.mLock) {
            if (isV1_1()) {
                Log.i(TAG, "Starting supplicant using HIDL");
                return startDaemon_V1_1();
            }
            Log.i(TAG, "Starting supplicant using init");
            this.mPropertyService.set("ctl.start", "wpa_supplicant");
            return true;
        }
    }

    private void terminate_V1_1() {
        synchronized (this.mLock) {
            if (checkSupplicantAndLogFailure("terminate")) {
                try {
                    getSupplicantMockableV1_1().terminate();
                } catch (RemoteException e) {
                    handleRemoteException(e, "terminate");
                } catch (NoSuchElementException e2) {
                    handleNoSuchElementException(e2, "terminate");
                }
            }
        }
    }

    public void terminate() {
        synchronized (this.mLock) {
            if (isV1_1()) {
                Log.i(TAG, "Terminating supplicant using HIDL");
                terminate_V1_1();
            } else {
                Log.i(TAG, "Terminating supplicant using init");
                this.mPropertyService.set("ctl.stop", "wpa_supplicant");
            }
        }
    }

    protected IServiceManager getServiceManagerMockable() throws RemoteException {
        IServiceManager service;
        synchronized (this.mLock) {
            service = IServiceManager.getService();
        }
        return service;
    }

    protected ISupplicant getSupplicantMockable() throws RemoteException, NoSuchElementException {
        ISupplicant service;
        synchronized (this.mLock) {
            service = ISupplicant.getService();
        }
        return service;
    }

    protected android.hardware.wifi.supplicant.V1_1.ISupplicant getSupplicantMockableV1_1() throws RemoteException, NoSuchElementException {
        android.hardware.wifi.supplicant.V1_1.ISupplicant iSupplicantCastFrom;
        synchronized (this.mLock) {
            iSupplicantCastFrom = android.hardware.wifi.supplicant.V1_1.ISupplicant.castFrom((IHwInterface) ISupplicant.getService());
        }
        return iSupplicantCastFrom;
    }

    protected android.hardware.wifi.supplicant.V1_2.ISupplicant getSupplicantMockableV1_2() throws RemoteException, NoSuchElementException {
        android.hardware.wifi.supplicant.V1_2.ISupplicant iSupplicantCastFrom;
        synchronized (this.mLock) {
            iSupplicantCastFrom = android.hardware.wifi.supplicant.V1_2.ISupplicant.castFrom((IHwInterface) ISupplicant.getService());
        }
        return iSupplicantCastFrom;
    }

    protected ISupplicantStaIface getStaIfaceMockable(ISupplicantIface iface) {
        ISupplicantStaIface iSupplicantStaIfaceAsInterface;
        synchronized (this.mLock) {
            iSupplicantStaIfaceAsInterface = ISupplicantStaIface.asInterface(iface.asBinder());
        }
        return iSupplicantStaIfaceAsInterface;
    }

    protected android.hardware.wifi.supplicant.V1_1.ISupplicantStaIface getStaIfaceMockableV1_1(ISupplicantIface iface) {
        android.hardware.wifi.supplicant.V1_1.ISupplicantStaIface iSupplicantStaIfaceAsInterface;
        synchronized (this.mLock) {
            iSupplicantStaIfaceAsInterface = android.hardware.wifi.supplicant.V1_1.ISupplicantStaIface.asInterface(iface.asBinder());
        }
        return iSupplicantStaIfaceAsInterface;
    }

    protected android.hardware.wifi.supplicant.V1_2.ISupplicantStaIface getStaIfaceMockableV1_2(ISupplicantIface iface) {
        android.hardware.wifi.supplicant.V1_2.ISupplicantStaIface iSupplicantStaIfaceAsInterface;
        synchronized (this.mLock) {
            iSupplicantStaIfaceAsInterface = android.hardware.wifi.supplicant.V1_2.ISupplicantStaIface.asInterface(iface.asBinder());
        }
        return iSupplicantStaIfaceAsInterface;
    }

    protected ISupplicantStaIface getStaIfaceMockableV1_2Ex(ISupplicantIface iface) {
        ISupplicantStaIface iSupplicantStaIfaceAsInterface;
        synchronized (this.mLock) {
            iSupplicantStaIfaceAsInterface = ISupplicantStaIface.asInterface(iface.asBinder());
        }
        return iSupplicantStaIfaceAsInterface;
    }

    private boolean isV1_1() {
        return checkHalVersionByInterfaceName(android.hardware.wifi.supplicant.V1_1.ISupplicant.kInterfaceName);
    }

    private boolean isV1_2() {
        return checkHalVersionByInterfaceName(android.hardware.wifi.supplicant.V1_2.ISupplicant.kInterfaceName);
    }

    private boolean isSprdV1_2() {
        return true;
    }

    private boolean checkHalVersionByInterfaceName(String interfaceName) {
        if (interfaceName == null) {
            return false;
        }
        synchronized (this.mLock) {
            if (this.mIServiceManager == null) {
                Log.e(TAG, "checkHalVersionByInterfaceName: called but mServiceManager is null");
                return false;
            }
            try {
                return this.mIServiceManager.getTransport(interfaceName, "default") != 0;
            } catch (RemoteException e) {
                Log.e(TAG, "Exception while operating on IServiceManager: " + e);
                handleRemoteException(e, "getTransport");
                return false;
            }
        }
    }

    private ISupplicantStaIface getStaIface(String ifaceName) {
        return this.mISupplicantStaIfaces.get(ifaceName);
    }

    private SupplicantStaNetworkHalEx getCurrentNetworkRemoteHandle(String ifaceName) {
        return this.mCurrentNetworkRemoteHandles.get(ifaceName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WifiConfiguration getCurrentNetworkLocalConfig(String ifaceName) {
        return this.mCurrentNetworkLocalConfigs.get(ifaceName);
    }

    private Pair<SupplicantStaNetworkHalEx, WifiConfiguration> addNetworkAndSaveConfig(String ifaceName, WifiConfiguration config) {
        synchronized (this.mLock) {
            logi("addSupplicantStaNetwork via HIDL");
            if (config == null) {
                loge("Cannot add NULL network!");
                return null;
            }
            SupplicantStaNetworkHalEx network = addNetwork(ifaceName);
            if (network == null) {
                loge("Failed to add a network!");
                return null;
            }
            boolean saveSuccess = false;
            try {
                saveSuccess = network.saveWifiConfiguration(config);
            } catch (IllegalArgumentException e) {
                Log.e(TAG, "Exception while saving config params: " + config, e);
            }
            if (!saveSuccess) {
                loge("Failed to save variables for: " + config.configKey());
                if (!removeAllNetworks(ifaceName)) {
                    loge("Failed to remove all networks on failure.");
                }
                return null;
            }
            return new Pair<>(network, new WifiConfiguration(config));
        }
    }

    private String getHexSsidForGbkSsids(WifiConfiguration config) {
        HashMap<String, String> gbkWifiSsids = WificondControl.getGbkWifiSsids();
        return gbkWifiSsids.get(NativeUtil.removeEnclosingQuotes(config.SSID));
    }

    public boolean connectToNetwork(String ifaceName, WifiConfiguration config) {
        synchronized (this.mLock) {
            logd("connectToNetwork " + config.configKey());
            String hexSsidForGbk = getHexSsidForGbkSsids(config);
            if (hexSsidForGbk != null) {
                config.SSID = hexSsidForGbk;
                logi("Use hex string for GBK coder ssid: " + hexSsidForGbk);
            }
            WifiConfiguration currentConfig = getCurrentNetworkLocalConfig(ifaceName);
            if (WifiConfigurationUtil.isSameNetwork(config, currentConfig)) {
                String networkSelectionBSSID = config.getNetworkSelectionStatus().getNetworkSelectionBSSID();
                String networkSelectionBSSIDCurrent = currentConfig.getNetworkSelectionStatus().getNetworkSelectionBSSID();
                if (Objects.equals(networkSelectionBSSID, networkSelectionBSSIDCurrent)) {
                    logd("Network is already saved, will not trigger remove and add operation.");
                } else {
                    logd("Network is already saved, but need to update BSSID.");
                    if (!setCurrentNetworkBssid(ifaceName, config.getNetworkSelectionStatus().getNetworkSelectionBSSID())) {
                        loge("Failed to set current network BSSID.");
                        return false;
                    }
                    this.mCurrentNetworkLocalConfigs.put(ifaceName, new WifiConfiguration(config));
                }
            } else {
                this.mCurrentNetworkRemoteHandles.remove(ifaceName);
                this.mCurrentNetworkLocalConfigs.remove(ifaceName);
                if (!removeAllNetworks(ifaceName)) {
                    loge("Failed to remove existing networks");
                    return false;
                }
                Pair<SupplicantStaNetworkHalEx, WifiConfiguration> pair = addNetworkAndSaveConfig(ifaceName, config);
                if (pair == null) {
                    loge("Failed to add/save network configuration: " + config.configKey());
                    return false;
                }
                this.mCurrentNetworkRemoteHandles.put(ifaceName, (SupplicantStaNetworkHalEx) pair.first);
                this.mCurrentNetworkLocalConfigs.put(ifaceName, (WifiConfiguration) pair.second);
            }
            SupplicantStaNetworkHalEx networkHandle = checkSupplicantStaNetworkAndLogFailure(ifaceName, "connectToNetwork");
            if (networkHandle != null && networkHandle.select()) {
                return true;
            }
            loge("Failed to select network configuration: " + config.configKey());
            return false;
        }
    }

    public boolean roamToNetwork(String ifaceName, WifiConfiguration config) {
        synchronized (this.mLock) {
            if (getCurrentNetworkId(ifaceName) != config.networkId) {
                Log.w(TAG, "Cannot roam to a different network, initiate new connection. Current network ID: " + getCurrentNetworkId(ifaceName));
                return connectToNetwork(ifaceName, config);
            }
            String bssid = config.getNetworkSelectionStatus().getNetworkSelectionBSSID();
            logd("roamToNetwork" + config.configKey() + " (bssid " + bssid + ")");
            SupplicantStaNetworkHalEx networkHandle = checkSupplicantStaNetworkAndLogFailure(ifaceName, "roamToNetwork");
            if (networkHandle != null && networkHandle.setBssid(bssid)) {
                if (!reassociate(ifaceName)) {
                    loge("Failed to trigger reassociate");
                    return false;
                }
                return true;
            }
            loge("Failed to set new bssid on network: " + config.configKey());
            return false;
        }
    }

    public boolean loadNetworks(String ifaceName, Map<String, WifiConfiguration> configs, SparseArray<Map<String, String>> networkExtras) throws Throwable {
        synchronized (this.mLock) {
            try {
                List<Integer> networkIds = listNetworks(ifaceName);
                boolean z = false;
                if (networkIds == null) {
                    Log.e(TAG, "Failed to list networks");
                    return false;
                }
                for (Integer networkId : networkIds) {
                    SupplicantStaNetworkHalEx network = getNetwork(ifaceName, networkId.intValue());
                    if (network == null) {
                        Log.e(TAG, "Failed to get network with ID: " + networkId);
                        return z;
                    }
                    WifiConfiguration config = new WifiConfiguration();
                    Map<String, String> networkExtra = new HashMap<>();
                    boolean loadSuccess = false;
                    try {
                        loadSuccess = network.loadWifiConfiguration(config, networkExtra);
                    } catch (IllegalArgumentException e) {
                        Log.wtf(TAG, "Exception while loading config params: " + config, e);
                    }
                    if (!loadSuccess) {
                        Log.e(TAG, "Failed to load wifi configuration for network with ID: " + networkId + ". Skipping...");
                    } else {
                        config.setIpAssignment(IpConfiguration.IpAssignment.DHCP);
                        config.setProxySettings(IpConfiguration.ProxySettings.NONE);
                        networkExtras.put(networkId.intValue(), networkExtra);
                        String configKey = networkExtra.get("configKey");
                        try {
                            WifiConfiguration duplicateConfig = configs.put(configKey, config);
                            if (duplicateConfig != null) {
                                Log.i(TAG, "Replacing duplicate network: " + duplicateConfig.networkId);
                                removeNetwork(ifaceName, duplicateConfig.networkId);
                                networkExtras.remove(duplicateConfig.networkId);
                            }
                            z = false;
                        } catch (Throwable th) {
                            th = th;
                        }
                    }
                }
                return true;
            } catch (Throwable th2) {
                th = th2;
            }
            throw th;
        }
    }

    public void removeNetworkIfCurrent(String ifaceName, int networkId) {
        synchronized (this.mLock) {
            if (getCurrentNetworkId(ifaceName) == networkId) {
                removeAllNetworks(ifaceName);
            }
        }
    }

    public boolean removeAllNetworks(String ifaceName) {
        synchronized (this.mLock) {
            ArrayList<Integer> networks = listNetworks(ifaceName);
            if (networks == null) {
                Log.e(TAG, "removeAllNetworks failed, got null networks");
                return false;
            }
            Iterator<Integer> it = networks.iterator();
            while (it.hasNext()) {
                int id = it.next().intValue();
                if (!removeNetwork(ifaceName, id)) {
                    Log.e(TAG, "removeAllNetworks failed to remove network: " + id);
                    return false;
                }
            }
            this.mCurrentNetworkRemoteHandles.remove(ifaceName);
            this.mCurrentNetworkLocalConfigs.remove(ifaceName);
            return true;
        }
    }

    public boolean setCurrentNetworkBssid(String ifaceName, String bssidStr) {
        synchronized (this.mLock) {
            SupplicantStaNetworkHalEx networkHandle = checkSupplicantStaNetworkAndLogFailure(ifaceName, "setCurrentNetworkBssid");
            if (networkHandle == null) {
                return false;
            }
            return networkHandle.setBssid(bssidStr);
        }
    }

    public String getCurrentNetworkWpsNfcConfigurationToken(String ifaceName) {
        synchronized (this.mLock) {
            SupplicantStaNetworkHalEx networkHandle = checkSupplicantStaNetworkAndLogFailure(ifaceName, "getCurrentNetworkWpsNfcConfigurationToken");
            if (networkHandle == null) {
                return null;
            }
            return networkHandle.getWpsNfcConfigurationToken();
        }
    }

    public String getCurrentNetworkEapAnonymousIdentity(String ifaceName) {
        synchronized (this.mLock) {
            SupplicantStaNetworkHalEx networkHandle = checkSupplicantStaNetworkAndLogFailure(ifaceName, "getCurrentNetworkEapAnonymousIdentity");
            if (networkHandle == null) {
                return null;
            }
            return networkHandle.fetchEapAnonymousIdentity();
        }
    }

    public boolean sendCurrentNetworkEapIdentityResponse(String ifaceName, String identity, String encryptedIdentity) {
        synchronized (this.mLock) {
            SupplicantStaNetworkHalEx networkHandle = checkSupplicantStaNetworkAndLogFailure(ifaceName, "sendCurrentNetworkEapIdentityResponse");
            if (networkHandle == null) {
                return false;
            }
            return networkHandle.sendNetworkEapIdentityResponse(identity, encryptedIdentity);
        }
    }

    public boolean sendCurrentNetworkEapSimGsmAuthResponse(String ifaceName, String paramsStr) {
        synchronized (this.mLock) {
            SupplicantStaNetworkHalEx networkHandle = checkSupplicantStaNetworkAndLogFailure(ifaceName, "sendCurrentNetworkEapSimGsmAuthResponse");
            if (networkHandle == null) {
                return false;
            }
            return networkHandle.sendNetworkEapSimGsmAuthResponse(paramsStr);
        }
    }

    public boolean sendCurrentNetworkEapSimGsmAuthFailure(String ifaceName) {
        synchronized (this.mLock) {
            SupplicantStaNetworkHalEx networkHandle = checkSupplicantStaNetworkAndLogFailure(ifaceName, "sendCurrentNetworkEapSimGsmAuthFailure");
            if (networkHandle == null) {
                return false;
            }
            return networkHandle.sendNetworkEapSimGsmAuthFailure();
        }
    }

    public boolean sendCurrentNetworkEapSimUmtsAuthResponse(String ifaceName, String paramsStr) {
        synchronized (this.mLock) {
            SupplicantStaNetworkHalEx networkHandle = checkSupplicantStaNetworkAndLogFailure(ifaceName, "sendCurrentNetworkEapSimUmtsAuthResponse");
            if (networkHandle == null) {
                return false;
            }
            return networkHandle.sendNetworkEapSimUmtsAuthResponse(paramsStr);
        }
    }

    public boolean sendCurrentNetworkEapSimUmtsAutsResponse(String ifaceName, String paramsStr) {
        synchronized (this.mLock) {
            SupplicantStaNetworkHalEx networkHandle = checkSupplicantStaNetworkAndLogFailure(ifaceName, "sendCurrentNetworkEapSimUmtsAutsResponse");
            if (networkHandle == null) {
                return false;
            }
            return networkHandle.sendNetworkEapSimUmtsAutsResponse(paramsStr);
        }
    }

    public boolean sendCurrentNetworkEapSimUmtsAuthFailure(String ifaceName) {
        synchronized (this.mLock) {
            SupplicantStaNetworkHalEx networkHandle = checkSupplicantStaNetworkAndLogFailure(ifaceName, "sendCurrentNetworkEapSimUmtsAuthFailure");
            if (networkHandle == null) {
                return false;
            }
            return networkHandle.sendNetworkEapSimUmtsAuthFailure();
        }
    }

    private SupplicantStaNetworkHalEx addNetwork(String ifaceName) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "addNetwork");
            if (iface == null) {
                return null;
            }
            final HidlSupport.Mutable<ISupplicantNetwork> newNetwork = new HidlSupport.Mutable<>();
            try {
                iface.addNetwork(new ISupplicantIface.addNetworkCallback() { // from class: com.android.server.wifi.-$$Lambda$SupplicantStaIfaceHalEx$rwrgGlfZxF5300DBwobh99NVhfo
                    @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantIface.addNetworkCallback
                    public final void onValues(SupplicantStatus supplicantStatus, ISupplicantNetwork iSupplicantNetwork) {
                        this.f$0.lambda$addNetwork$3$SupplicantStaIfaceHalEx(newNetwork, supplicantStatus, iSupplicantNetwork);
                    }
                });
            } catch (RemoteException e) {
                handleRemoteException(e, "addNetwork");
            }
            if (newNetwork.value == null) {
                return null;
            }
            return getStaNetworkMockable(ifaceName, ISupplicantStaNetwork.asInterface(((ISupplicantNetwork) newNetwork.value).asBinder()));
        }
    }

    public /* synthetic */ void lambda$addNetwork$3$SupplicantStaIfaceHalEx(HidlSupport.Mutable newNetwork, SupplicantStatus status, ISupplicantNetwork network) {
        if (checkStatusAndLogFailure(status, "addNetwork")) {
            newNetwork.value = network;
        }
    }

    private boolean removeNetwork(String ifaceName, int id) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "removeNetwork");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.removeNetwork(id);
                return checkStatusAndLogFailure(status, "removeNetwork");
            } catch (RemoteException e) {
                handleRemoteException(e, "removeNetwork");
                return false;
            }
        }
    }

    protected SupplicantStaNetworkHalEx getStaNetworkMockable(String ifaceName, ISupplicantStaNetwork iSupplicantStaNetwork) {
        SupplicantStaNetworkHalEx network;
        synchronized (this.mLock) {
            network = new SupplicantStaNetworkHalEx(iSupplicantStaNetwork, ifaceName, this.mContext, this.mWifiMonitor);
            network.enableVerboseLogging(this.mVerboseLoggingEnabled);
        }
        return network;
    }

    private SupplicantStaNetworkHalEx getNetwork(String ifaceName, int id) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "getNetwork");
            if (iface == null) {
                return null;
            }
            final HidlSupport.Mutable<ISupplicantNetwork> gotNetwork = new HidlSupport.Mutable<>();
            try {
                iface.getNetwork(id, new ISupplicantIface.getNetworkCallback() { // from class: com.android.server.wifi.-$$Lambda$SupplicantStaIfaceHalEx$mtiOhQ-ETFvSiRmtViIucLPpT5M
                    @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantIface.getNetworkCallback
                    public final void onValues(SupplicantStatus supplicantStatus, ISupplicantNetwork iSupplicantNetwork) {
                        this.f$0.lambda$getNetwork$4$SupplicantStaIfaceHalEx(gotNetwork, supplicantStatus, iSupplicantNetwork);
                    }
                });
            } catch (RemoteException e) {
                handleRemoteException(e, "getNetwork");
            }
            if (gotNetwork.value == null) {
                return null;
            }
            return getStaNetworkMockable(ifaceName, ISupplicantStaNetwork.asInterface(((ISupplicantNetwork) gotNetwork.value).asBinder()));
        }
    }

    public /* synthetic */ void lambda$getNetwork$4$SupplicantStaIfaceHalEx(HidlSupport.Mutable gotNetwork, SupplicantStatus status, ISupplicantNetwork network) {
        if (checkStatusAndLogFailure(status, "getNetwork")) {
            gotNetwork.value = network;
        }
    }

    private boolean registerCallback(ISupplicantStaIface iface, ISupplicantStaIfaceCallback callback) {
        synchronized (this.mLock) {
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.registerCallback(callback);
                return checkStatusAndLogFailure(status, "registerCallback");
            } catch (RemoteException e) {
                handleRemoteException(e, "registerCallback");
                return false;
            }
        }
    }

    private boolean registerCallbackV1_1(android.hardware.wifi.supplicant.V1_1.ISupplicantStaIface iface, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback callback) {
        synchronized (this.mLock) {
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.registerCallback_1_1(callback);
                return checkStatusAndLogFailure(status, "registerCallback_1_1");
            } catch (RemoteException e) {
                handleRemoteException(e, "registerCallback_1_1");
                return false;
            }
        }
    }

    private boolean registerCallbackV1_2(android.hardware.wifi.supplicant.V1_2.ISupplicantStaIface iface, android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback callback) {
        synchronized (this.mLock) {
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.registerCallback_1_2(callback);
                return checkStatusAndLogFailure(status, "registerCallback_1_2");
            } catch (RemoteException e) {
                handleRemoteException(e, "registerCallback_1_2");
                return false;
            }
        }
    }

    private boolean registerCallbackV1_2Ex(ISupplicantStaIface iface, ISupplicantStaIfaceCallbackEx callback) {
        synchronized (this.mLock) {
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.registerCallback_sprd_1_2(callback);
                return checkStatusAndLogFailure(status, "registerCallback_1_2");
            } catch (RemoteException e) {
                handleRemoteException(e, "registerCallback_1_2");
                return false;
            }
        }
    }

    private ArrayList<Integer> listNetworks(String ifaceName) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "listNetworks");
            if (iface == null) {
                return null;
            }
            final HidlSupport.Mutable<ArrayList<Integer>> networkIdList = new HidlSupport.Mutable<>();
            try {
                iface.listNetworks(new ISupplicantIface.listNetworksCallback() { // from class: com.android.server.wifi.-$$Lambda$SupplicantStaIfaceHalEx$YPkoJ5DTblAJhaB5Y5okRsekOtk
                    @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantIface.listNetworksCallback
                    public final void onValues(SupplicantStatus supplicantStatus, ArrayList arrayList) {
                        this.f$0.lambda$listNetworks$5$SupplicantStaIfaceHalEx(networkIdList, supplicantStatus, arrayList);
                    }
                });
            } catch (RemoteException e) {
                handleRemoteException(e, "listNetworks");
            }
            return (ArrayList) networkIdList.value;
        }
    }

    public /* synthetic */ void lambda$listNetworks$5$SupplicantStaIfaceHalEx(HidlSupport.Mutable networkIdList, SupplicantStatus status, ArrayList networkIds) {
        if (checkStatusAndLogFailure(status, "listNetworks")) {
            networkIdList.value = networkIds;
        }
    }

    public boolean setWpsDeviceName(String ifaceName, String name) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "setWpsDeviceName");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.setWpsDeviceName(name);
                return checkStatusAndLogFailure(status, "setWpsDeviceName");
            } catch (RemoteException e) {
                handleRemoteException(e, "setWpsDeviceName");
                return false;
            }
        }
    }

    public boolean setWpsDeviceType(String ifaceName, String typeStr) {
        synchronized (this.mLock) {
            try {
                try {
                    Matcher match = WPS_DEVICE_TYPE_PATTERN.matcher(typeStr);
                    if (match.find() && match.groupCount() == 3) {
                        short categ = Short.parseShort(match.group(1));
                        byte[] oui = NativeUtil.hexStringToByteArray(match.group(2));
                        short subCateg = Short.parseShort(match.group(3));
                        byte[] bytes = new byte[8];
                        ByteBuffer byteBuffer = ByteBuffer.wrap(bytes).order(ByteOrder.BIG_ENDIAN);
                        byteBuffer.putShort(categ);
                        byteBuffer.put(oui);
                        byteBuffer.putShort(subCateg);
                        return setWpsDeviceType(ifaceName, bytes);
                    }
                    Log.e(TAG, "Malformed WPS device type " + typeStr);
                    return false;
                } catch (IllegalArgumentException e) {
                    Log.e(TAG, "Illegal argument " + typeStr, e);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean setWpsDeviceType(String ifaceName, byte[] type) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "setWpsDeviceType");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.setWpsDeviceType(type);
                return checkStatusAndLogFailure(status, "setWpsDeviceType");
            } catch (RemoteException e) {
                handleRemoteException(e, "setWpsDeviceType");
                return false;
            }
        }
    }

    public boolean setWpsManufacturer(String ifaceName, String manufacturer) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "setWpsManufacturer");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.setWpsManufacturer(manufacturer);
                return checkStatusAndLogFailure(status, "setWpsManufacturer");
            } catch (RemoteException e) {
                handleRemoteException(e, "setWpsManufacturer");
                return false;
            }
        }
    }

    public boolean setWpsModelName(String ifaceName, String modelName) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "setWpsModelName");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.setWpsModelName(modelName);
                return checkStatusAndLogFailure(status, "setWpsModelName");
            } catch (RemoteException e) {
                handleRemoteException(e, "setWpsModelName");
                return false;
            }
        }
    }

    public boolean setWpsModelNumber(String ifaceName, String modelNumber) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "setWpsModelNumber");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.setWpsModelNumber(modelNumber);
                return checkStatusAndLogFailure(status, "setWpsModelNumber");
            } catch (RemoteException e) {
                handleRemoteException(e, "setWpsModelNumber");
                return false;
            }
        }
    }

    public boolean setWpsSerialNumber(String ifaceName, String serialNumber) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "setWpsSerialNumber");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.setWpsSerialNumber(serialNumber);
                return checkStatusAndLogFailure(status, "setWpsSerialNumber");
            } catch (RemoteException e) {
                handleRemoteException(e, "setWpsSerialNumber");
                return false;
            }
        }
    }

    public boolean setWpsConfigMethods(String ifaceName, String configMethodsStr) {
        boolean wpsConfigMethods;
        synchronized (this.mLock) {
            short configMethodsMask = 0;
            String[] configMethodsStrArr = configMethodsStr.split("\\s+");
            for (String str : configMethodsStrArr) {
                configMethodsMask = (short) (stringToWpsConfigMethod(str) | configMethodsMask);
            }
            wpsConfigMethods = setWpsConfigMethods(ifaceName, configMethodsMask);
        }
        return wpsConfigMethods;
    }

    private boolean setWpsConfigMethods(String ifaceName, short configMethods) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "setWpsConfigMethods");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.setWpsConfigMethods(configMethods);
                return checkStatusAndLogFailure(status, "setWpsConfigMethods");
            } catch (RemoteException e) {
                handleRemoteException(e, "setWpsConfigMethods");
                return false;
            }
        }
    }

    public boolean reassociate(String ifaceName) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "reassociate");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.reassociate();
                return checkStatusAndLogFailure(status, "reassociate");
            } catch (RemoteException e) {
                handleRemoteException(e, "reassociate");
                return false;
            }
        }
    }

    public boolean reconnect(String ifaceName) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "reconnect");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.reconnect();
                return checkStatusAndLogFailure(status, "reconnect");
            } catch (RemoteException e) {
                handleRemoteException(e, "reconnect");
                return false;
            }
        }
    }

    public boolean disconnect(String ifaceName) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "disconnect");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.disconnect();
                return checkStatusAndLogFailure(status, "disconnect");
            } catch (RemoteException e) {
                handleRemoteException(e, "disconnect");
                return false;
            }
        }
    }

    public boolean setPowerSave(String ifaceName, boolean enable) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "setPowerSave");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.setPowerSave(enable);
                return checkStatusAndLogFailure(status, "setPowerSave");
            } catch (RemoteException e) {
                handleRemoteException(e, "setPowerSave");
                return false;
            }
        }
    }

    public boolean initiateTdlsDiscover(String ifaceName, String macAddress) {
        boolean zInitiateTdlsDiscover;
        synchronized (this.mLock) {
            try {
                try {
                    zInitiateTdlsDiscover = initiateTdlsDiscover(ifaceName, NativeUtil.macAddressToByteArray(macAddress));
                } catch (IllegalArgumentException e) {
                    Log.e(TAG, "Illegal argument " + macAddress, e);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zInitiateTdlsDiscover;
    }

    private boolean initiateTdlsDiscover(String ifaceName, byte[] macAddress) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "initiateTdlsDiscover");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.initiateTdlsDiscover(macAddress);
                return checkStatusAndLogFailure(status, "initiateTdlsDiscover");
            } catch (RemoteException e) {
                handleRemoteException(e, "initiateTdlsDiscover");
                return false;
            }
        }
    }

    public boolean initiateTdlsSetup(String ifaceName, String macAddress) {
        boolean zInitiateTdlsSetup;
        synchronized (this.mLock) {
            try {
                try {
                    zInitiateTdlsSetup = initiateTdlsSetup(ifaceName, NativeUtil.macAddressToByteArray(macAddress));
                } catch (IllegalArgumentException e) {
                    Log.e(TAG, "Illegal argument " + macAddress, e);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zInitiateTdlsSetup;
    }

    private boolean initiateTdlsSetup(String ifaceName, byte[] macAddress) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "initiateTdlsSetup");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.initiateTdlsSetup(macAddress);
                return checkStatusAndLogFailure(status, "initiateTdlsSetup");
            } catch (RemoteException e) {
                handleRemoteException(e, "initiateTdlsSetup");
                return false;
            }
        }
    }

    public boolean initiateTdlsTeardown(String ifaceName, String macAddress) {
        boolean zInitiateTdlsTeardown;
        synchronized (this.mLock) {
            try {
                try {
                    zInitiateTdlsTeardown = initiateTdlsTeardown(ifaceName, NativeUtil.macAddressToByteArray(macAddress));
                } catch (IllegalArgumentException e) {
                    Log.e(TAG, "Illegal argument " + macAddress, e);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zInitiateTdlsTeardown;
    }

    private boolean initiateTdlsTeardown(String ifaceName, byte[] macAddress) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "initiateTdlsTeardown");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.initiateTdlsTeardown(macAddress);
                return checkStatusAndLogFailure(status, "initiateTdlsTeardown");
            } catch (RemoteException e) {
                handleRemoteException(e, "initiateTdlsTeardown");
                return false;
            }
        }
    }

    public boolean initiateAnqpQuery(String ifaceName, String bssid, ArrayList<Short> infoElements, ArrayList<Integer> hs20SubTypes) {
        boolean zInitiateAnqpQuery;
        synchronized (this.mLock) {
            try {
                try {
                    zInitiateAnqpQuery = initiateAnqpQuery(ifaceName, NativeUtil.macAddressToByteArray(bssid), infoElements, hs20SubTypes);
                } catch (IllegalArgumentException e) {
                    Log.e(TAG, "Illegal argument " + bssid, e);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zInitiateAnqpQuery;
    }

    private boolean initiateAnqpQuery(String ifaceName, byte[] macAddress, ArrayList<Short> infoElements, ArrayList<Integer> subTypes) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "initiateAnqpQuery");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.initiateAnqpQuery(macAddress, infoElements, subTypes);
                return checkStatusAndLogFailure(status, "initiateAnqpQuery");
            } catch (RemoteException e) {
                handleRemoteException(e, "initiateAnqpQuery");
                return false;
            }
        }
    }

    public boolean initiateHs20IconQuery(String ifaceName, String bssid, String fileName) {
        boolean zInitiateHs20IconQuery;
        synchronized (this.mLock) {
            try {
                try {
                    zInitiateHs20IconQuery = initiateHs20IconQuery(ifaceName, NativeUtil.macAddressToByteArray(bssid), fileName);
                } catch (IllegalArgumentException e) {
                    Log.e(TAG, "Illegal argument " + bssid, e);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zInitiateHs20IconQuery;
    }

    private boolean initiateHs20IconQuery(String ifaceName, byte[] macAddress, String fileName) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "initiateHs20IconQuery");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.initiateHs20IconQuery(macAddress, fileName);
                return checkStatusAndLogFailure(status, "initiateHs20IconQuery");
            } catch (RemoteException e) {
                handleRemoteException(e, "initiateHs20IconQuery");
                return false;
            }
        }
    }

    public String getMacAddress(String ifaceName) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "getMacAddress");
            if (iface == null) {
                return null;
            }
            final HidlSupport.Mutable<String> gotMac = new HidlSupport.Mutable<>();
            try {
                iface.getMacAddress(new android.hardware.wifi.supplicant.V1_0.ISupplicantStaIface.getMacAddressCallback() { // from class: com.android.server.wifi.-$$Lambda$SupplicantStaIfaceHalEx$--w7JGxZV3gZjSLOWdofo6RugeE
                    @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIface.getMacAddressCallback
                    public final void onValues(SupplicantStatus supplicantStatus, byte[] bArr) {
                        this.f$0.lambda$getMacAddress$6$SupplicantStaIfaceHalEx(gotMac, supplicantStatus, bArr);
                    }
                });
            } catch (RemoteException e) {
                handleRemoteException(e, "getMacAddress");
            }
            return (String) gotMac.value;
        }
    }

    public /* synthetic */ void lambda$getMacAddress$6$SupplicantStaIfaceHalEx(HidlSupport.Mutable gotMac, SupplicantStatus status, byte[] macAddr) {
        if (checkStatusAndLogFailure(status, "getMacAddress")) {
            gotMac.value = NativeUtil.macAddressFromByteArray(macAddr);
        }
    }

    public boolean startRxFilter(String ifaceName) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "startRxFilter");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.startRxFilter();
                return checkStatusAndLogFailure(status, "startRxFilter");
            } catch (RemoteException e) {
                handleRemoteException(e, "startRxFilter");
                return false;
            }
        }
    }

    public boolean stopRxFilter(String ifaceName) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "stopRxFilter");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.stopRxFilter();
                return checkStatusAndLogFailure(status, "stopRxFilter");
            } catch (RemoteException e) {
                handleRemoteException(e, "stopRxFilter");
                return false;
            }
        }
    }

    public boolean addRxFilter(String ifaceName, int type) {
        byte halType;
        synchronized (this.mLock) {
            try {
                if (type == 0) {
                    halType = 0;
                } else if (type == 1) {
                    halType = 1;
                } else {
                    Log.e(TAG, "Invalid Rx Filter type: " + type);
                    return false;
                }
                return addRxFilter(ifaceName, halType);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean addRxFilter(String ifaceName, byte type) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "addRxFilter");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.addRxFilter(type);
                return checkStatusAndLogFailure(status, "addRxFilter");
            } catch (RemoteException e) {
                handleRemoteException(e, "addRxFilter");
                return false;
            }
        }
    }

    public boolean removeRxFilter(String ifaceName, int type) {
        byte halType;
        synchronized (this.mLock) {
            try {
                if (type == 0) {
                    halType = 0;
                } else if (type == 1) {
                    halType = 1;
                } else {
                    Log.e(TAG, "Invalid Rx Filter type: " + type);
                    return false;
                }
                return removeRxFilter(ifaceName, halType);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean removeRxFilter(String ifaceName, byte type) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "removeRxFilter");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.removeRxFilter(type);
                return checkStatusAndLogFailure(status, "removeRxFilter");
            } catch (RemoteException e) {
                handleRemoteException(e, "removeRxFilter");
                return false;
            }
        }
    }

    public boolean setBtCoexistenceMode(String ifaceName, int mode) {
        byte halMode;
        synchronized (this.mLock) {
            try {
                if (mode == 0) {
                    halMode = 0;
                } else if (mode == 1) {
                    halMode = 1;
                } else if (mode == 2) {
                    halMode = 2;
                } else {
                    Log.e(TAG, "Invalid Bt Coex mode: " + mode);
                    return false;
                }
                return setBtCoexistenceMode(ifaceName, halMode);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean setBtCoexistenceMode(String ifaceName, byte mode) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "setBtCoexistenceMode");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.setBtCoexistenceMode(mode);
                return checkStatusAndLogFailure(status, "setBtCoexistenceMode");
            } catch (RemoteException e) {
                handleRemoteException(e, "setBtCoexistenceMode");
                return false;
            }
        }
    }

    public boolean setBtCoexistenceScanModeEnabled(String ifaceName, boolean enable) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "setBtCoexistenceScanModeEnabled");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.setBtCoexistenceScanModeEnabled(enable);
                return checkStatusAndLogFailure(status, "setBtCoexistenceScanModeEnabled");
            } catch (RemoteException e) {
                handleRemoteException(e, "setBtCoexistenceScanModeEnabled");
                return false;
            }
        }
    }

    public boolean setSuspendModeEnabled(String ifaceName, boolean enable) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "setSuspendModeEnabled");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.setSuspendModeEnabled(enable);
                return checkStatusAndLogFailure(status, "setSuspendModeEnabled");
            } catch (RemoteException e) {
                handleRemoteException(e, "setSuspendModeEnabled");
                return false;
            }
        }
    }

    public boolean setCountryCode(String ifaceName, String codeStr) {
        synchronized (this.mLock) {
            if (TextUtils.isEmpty(codeStr)) {
                return false;
            }
            byte[] countryCodeBytes = NativeUtil.stringToByteArray(codeStr);
            if (countryCodeBytes.length != 2) {
                return false;
            }
            return setCountryCode(ifaceName, countryCodeBytes);
        }
    }

    private boolean setCountryCode(String ifaceName, byte[] code) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "setCountryCode");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.setCountryCode(code);
                return checkStatusAndLogFailure(status, "setCountryCode");
            } catch (RemoteException e) {
                handleRemoteException(e, "setCountryCode");
                return false;
            }
        }
    }

    public boolean startWpsRegistrar(String ifaceName, String bssidStr, String pin) {
        synchronized (this.mLock) {
            if (TextUtils.isEmpty(bssidStr) || TextUtils.isEmpty(pin)) {
                return false;
            }
            try {
                return startWpsRegistrar(ifaceName, NativeUtil.macAddressToByteArray(bssidStr), pin);
            } catch (IllegalArgumentException e) {
                Log.e(TAG, "Illegal argument " + bssidStr, e);
                return false;
            }
        }
    }

    private boolean startWpsRegistrar(String ifaceName, byte[] bssid, String pin) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "startWpsRegistrar");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.startWpsRegistrar(bssid, pin);
                return checkStatusAndLogFailure(status, "startWpsRegistrar");
            } catch (RemoteException e) {
                handleRemoteException(e, "startWpsRegistrar");
                return false;
            }
        }
    }

    public boolean startWpsPbc(String ifaceName, String bssidStr) {
        boolean zStartWpsPbc;
        synchronized (this.mLock) {
            try {
                try {
                    zStartWpsPbc = startWpsPbc(ifaceName, NativeUtil.macAddressToByteArray(bssidStr));
                } catch (IllegalArgumentException e) {
                    Log.e(TAG, "Illegal argument " + bssidStr, e);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zStartWpsPbc;
    }

    private boolean startWpsPbc(String ifaceName, byte[] bssid) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "startWpsPbc");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.startWpsPbc(bssid);
                return checkStatusAndLogFailure(status, "startWpsPbc");
            } catch (RemoteException e) {
                handleRemoteException(e, "startWpsPbc");
                return false;
            }
        }
    }

    public boolean startWpsPinKeypad(String ifaceName, String pin) {
        if (TextUtils.isEmpty(pin)) {
            return false;
        }
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "startWpsPinKeypad");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.startWpsPinKeypad(pin);
                return checkStatusAndLogFailure(status, "startWpsPinKeypad");
            } catch (RemoteException e) {
                handleRemoteException(e, "startWpsPinKeypad");
                return false;
            }
        }
    }

    public String startWpsPinDisplay(String ifaceName, String bssidStr) {
        String strStartWpsPinDisplay;
        synchronized (this.mLock) {
            try {
                try {
                    strStartWpsPinDisplay = startWpsPinDisplay(ifaceName, NativeUtil.macAddressToByteArray(bssidStr));
                } catch (IllegalArgumentException e) {
                    Log.e(TAG, "Illegal argument " + bssidStr, e);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return strStartWpsPinDisplay;
    }

    private String startWpsPinDisplay(String ifaceName, byte[] bssid) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "startWpsPinDisplay");
            if (iface == null) {
                return null;
            }
            final HidlSupport.Mutable<String> gotPin = new HidlSupport.Mutable<>();
            try {
                iface.startWpsPinDisplay(bssid, new android.hardware.wifi.supplicant.V1_0.ISupplicantStaIface.startWpsPinDisplayCallback() { // from class: com.android.server.wifi.-$$Lambda$SupplicantStaIfaceHalEx$AWEsgrZ-5tV49U1AhJGJx6MWHAM
                    @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIface.startWpsPinDisplayCallback
                    public final void onValues(SupplicantStatus supplicantStatus, String str) {
                        this.f$0.lambda$startWpsPinDisplay$7$SupplicantStaIfaceHalEx(gotPin, supplicantStatus, str);
                    }
                });
            } catch (RemoteException e) {
                handleRemoteException(e, "startWpsPinDisplay");
            }
            return (String) gotPin.value;
        }
    }

    public /* synthetic */ void lambda$startWpsPinDisplay$7$SupplicantStaIfaceHalEx(HidlSupport.Mutable gotPin, SupplicantStatus status, String pin) {
        if (checkStatusAndLogFailure(status, "startWpsPinDisplay")) {
            gotPin.value = pin;
        }
    }

    public boolean cancelWps(String ifaceName) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "cancelWps");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.cancelWps();
                return checkStatusAndLogFailure(status, "cancelWps");
            } catch (RemoteException e) {
                handleRemoteException(e, "cancelWps");
                return false;
            }
        }
    }

    public boolean setExternalSim(String ifaceName, boolean useExternalSim) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "setExternalSim");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.setExternalSim(useExternalSim);
                return checkStatusAndLogFailure(status, "setExternalSim");
            } catch (RemoteException e) {
                handleRemoteException(e, "setExternalSim");
                return false;
            }
        }
    }

    public boolean enableAutoReconnect(String ifaceName, boolean enable) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "enableAutoReconnect");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.enableAutoReconnect(enable);
                return checkStatusAndLogFailure(status, "enableAutoReconnect");
            } catch (RemoteException e) {
                handleRemoteException(e, "enableAutoReconnect");
                return false;
            }
        }
    }

    public boolean setLogLevel(boolean turnOnVerbose) {
        int logLevel;
        boolean debugParams;
        synchronized (this.mLock) {
            boolean showKey = true;
            if (turnOnVerbose) {
                logLevel = 1;
            } else {
                logLevel = 3;
            }
            if (!turnOnVerbose) {
                showKey = false;
            }
            debugParams = setDebugParams(logLevel, false, showKey);
        }
        return debugParams;
    }

    private boolean setDebugParams(int level, boolean showTimestamp, boolean showKeys) {
        synchronized (this.mLock) {
            if (!checkSupplicantAndLogFailure("setDebugParams")) {
                return false;
            }
            try {
                SupplicantStatus status = this.mISupplicant.setDebugParams(level, showTimestamp, showKeys);
                return checkStatusAndLogFailure(status, "setDebugParams");
            } catch (RemoteException e) {
                handleRemoteException(e, "setDebugParams");
                return false;
            }
        }
    }

    public boolean setConcurrencyPriority(boolean isStaHigherPriority) {
        synchronized (this.mLock) {
            try {
                if (isStaHigherPriority) {
                    return setConcurrencyPriority(0);
                }
                return setConcurrencyPriority(1);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean setConcurrencyPriority(int type) {
        synchronized (this.mLock) {
            if (!checkSupplicantAndLogFailure("setConcurrencyPriority")) {
                return false;
            }
            try {
                SupplicantStatus status = this.mISupplicant.setConcurrencyPriority(type);
                return checkStatusAndLogFailure(status, "setConcurrencyPriority");
            } catch (RemoteException e) {
                handleRemoteException(e, "setConcurrencyPriority");
                return false;
            }
        }
    }

    private boolean checkSupplicantAndLogFailure(String methodStr) {
        synchronized (this.mLock) {
            if (this.mISupplicant == null) {
                Log.e(TAG, "Can't call " + methodStr + ", ISupplicant is null");
                return false;
            }
            return true;
        }
    }

    private ISupplicantStaIface checkSupplicantStaIfaceAndLogFailure(String ifaceName, String methodStr) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = getStaIface(ifaceName);
            if (iface != null) {
                return iface;
            }
            Log.e(TAG, "Can't call " + methodStr + ", ISupplicantStaIface is null");
            return null;
        }
    }

    private SupplicantStaNetworkHalEx checkSupplicantStaNetworkAndLogFailure(String ifaceName, String methodStr) {
        synchronized (this.mLock) {
            SupplicantStaNetworkHalEx networkHal = getCurrentNetworkRemoteHandle(ifaceName);
            if (networkHal != null) {
                return networkHal;
            }
            Log.e(TAG, "Can't call " + methodStr + ", SupplicantStaNetwork is null");
            return null;
        }
    }

    private boolean checkStatusAndLogFailure(SupplicantStatus status, String methodStr) {
        synchronized (this.mLock) {
            if (status.code != 0) {
                Log.e(TAG, "ISupplicantStaIface." + methodStr + " failed: " + status);
                return false;
            }
            if (this.mVerboseLoggingEnabled) {
                Log.d(TAG, "ISupplicantStaIface." + methodStr + " succeeded");
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logCallback(String methodStr) {
        synchronized (this.mLock) {
            if (this.mVerboseLoggingEnabled) {
                Log.d(TAG, "ISupplicantStaIfaceCallback." + methodStr + " received");
            }
        }
    }

    private void handleNoSuchElementException(NoSuchElementException e, String methodStr) {
        synchronized (this.mLock) {
            clearState();
            Log.e(TAG, "ISupplicantStaIface." + methodStr + " failed with exception", e);
        }
    }

    private void handleRemoteException(RemoteException e, String methodStr) {
        synchronized (this.mLock) {
            clearState();
            Log.e(TAG, "ISupplicantStaIface." + methodStr + " failed with exception", e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:47:0x00a4  */
    private static short stringToWpsConfigMethod(String configMethod) {
        switch (configMethod) {
            case "usba":
                return (short) 1;
            case "ethernet":
                return (short) 2;
            case "label":
                return (short) 4;
            case "display":
                return (short) 8;
            case "int_nfc_token":
                return (short) 32;
            case "ext_nfc_token":
                return (short) 16;
            case "nfc_interface":
                return (short) 64;
            case "push_button":
                return WpsConfigMethods.PUSHBUTTON;
            case "keypad":
                return WpsConfigMethods.KEYPAD;
            case "virtual_push_button":
                return WpsConfigMethods.VIRT_PUSHBUTTON;
            case "physical_push_button":
                return WpsConfigMethods.PHY_PUSHBUTTON;
            case "p2ps":
                return WpsConfigMethods.P2PS;
            case "virtual_display":
                return WpsConfigMethods.VIRT_DISPLAY;
            case "physical_display":
                return WpsConfigMethods.PHY_DISPLAY;
            default:
                throw new IllegalArgumentException("Invalid WPS config method: " + configMethod);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SupplicantState supplicantHidlStateToFrameworkState(int state) {
        switch (state) {
            case 0:
                return SupplicantState.DISCONNECTED;
            case 1:
                return SupplicantState.INTERFACE_DISABLED;
            case 2:
                return SupplicantState.INACTIVE;
            case 3:
                return SupplicantState.SCANNING;
            case 4:
                return SupplicantState.AUTHENTICATING;
            case 5:
                return SupplicantState.ASSOCIATING;
            case 6:
                return SupplicantState.ASSOCIATED;
            case 7:
                return SupplicantState.FOUR_WAY_HANDSHAKE;
            case 8:
                return SupplicantState.GROUP_HANDSHAKE;
            case 9:
                return SupplicantState.COMPLETED;
            default:
                throw new IllegalArgumentException("Invalid state: " + state);
        }
    }

    private class SupplicantStaIfaceHalCallbackEx extends ISupplicantStaIfaceCallbackEx.Stub {
        private String mIfaceName;
        private boolean mStateIsFourway = false;

        SupplicantStaIfaceHalCallbackEx(String ifaceName) {
            this.mIfaceName = ifaceName;
        }

        @Override // vendor.sprd.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallbackEx
        public void onEventEx(String event) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                Log.d(SupplicantStaIfaceHalEx.TAG, "onEventEx " + event);
                SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastSupplicantEventEx(this.mIfaceName, event);
            }
        }
    }

    private class SupplicantStaIfaceHalCallback extends ISupplicantStaIfaceCallback.Stub {
        private String mIfaceName;
        private boolean mStateIsFourway = false;

        SupplicantStaIfaceHalCallback(String ifaceName) {
            this.mIfaceName = ifaceName;
        }

        private ANQPElement parseAnqpElement(Constants.ANQPElementType infoID, ArrayList<Byte> payload) {
            ANQPElement hS20Element;
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                try {
                    try {
                        if (Constants.getANQPElementID(infoID) != null) {
                            hS20Element = ANQPParser.parseElement(infoID, ByteBuffer.wrap(NativeUtil.byteArrayFromArrayList(payload)));
                        } else {
                            hS20Element = ANQPParser.parseHS20Element(infoID, ByteBuffer.wrap(NativeUtil.byteArrayFromArrayList(payload)));
                        }
                    } catch (IOException | BufferUnderflowException e) {
                        Log.e(SupplicantStaIfaceHalEx.TAG, "Failed parsing ANQP element payload: " + infoID, e);
                        return null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return hS20Element;
        }

        private void addAnqpElementToMap(Map<Constants.ANQPElementType, ANQPElement> elementsMap, Constants.ANQPElementType infoID, ArrayList<Byte> payload) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                if (payload != null) {
                    if (!payload.isEmpty()) {
                        ANQPElement element = parseAnqpElement(infoID, payload);
                        if (element != null) {
                            elementsMap.put(infoID, element);
                        }
                    }
                }
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onNetworkAdded(int id) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onNetworkAdded");
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onNetworkRemoved(int id) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onNetworkRemoved");
                this.mStateIsFourway = false;
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onStateChanged(int newState, byte[] bssid, int id, ArrayList<Byte> ssid) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onStateChanged");
                SupplicantState newSupplicantState = SupplicantStaIfaceHalEx.supplicantHidlStateToFrameworkState(newState);
                WifiSsid wifiSsid = WifiSsid.createFromByteArray(NativeUtil.byteArrayFromArrayList(ssid));
                String bssidStr = NativeUtil.macAddressFromByteArray(bssid);
                this.mStateIsFourway = newState == 7;
                if (newSupplicantState == SupplicantState.COMPLETED) {
                    SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastNetworkConnectionEvent(this.mIfaceName, SupplicantStaIfaceHalEx.this.getCurrentNetworkId(this.mIfaceName), bssidStr);
                }
                SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastSupplicantStateChangeEvent(this.mIfaceName, SupplicantStaIfaceHalEx.this.getCurrentNetworkId(this.mIfaceName), wifiSsid, bssidStr, newSupplicantState);
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onAnqpQueryDone(byte[] bssid, ISupplicantStaIfaceCallback.AnqpData data, ISupplicantStaIfaceCallback.Hs20AnqpData hs20Data) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onAnqpQueryDone");
                Map<Constants.ANQPElementType, ANQPElement> elementsMap = new HashMap<>();
                addAnqpElementToMap(elementsMap, Constants.ANQPElementType.ANQPVenueName, data.venueName);
                addAnqpElementToMap(elementsMap, Constants.ANQPElementType.ANQPRoamingConsortium, data.roamingConsortium);
                addAnqpElementToMap(elementsMap, Constants.ANQPElementType.ANQPIPAddrAvailability, data.ipAddrTypeAvailability);
                addAnqpElementToMap(elementsMap, Constants.ANQPElementType.ANQPNAIRealm, data.naiRealm);
                addAnqpElementToMap(elementsMap, Constants.ANQPElementType.ANQP3GPPNetwork, data.anqp3gppCellularNetwork);
                addAnqpElementToMap(elementsMap, Constants.ANQPElementType.ANQPDomName, data.domainName);
                addAnqpElementToMap(elementsMap, Constants.ANQPElementType.HSFriendlyName, hs20Data.operatorFriendlyName);
                addAnqpElementToMap(elementsMap, Constants.ANQPElementType.HSWANMetrics, hs20Data.wanMetrics);
                addAnqpElementToMap(elementsMap, Constants.ANQPElementType.HSConnCapability, hs20Data.connectionCapability);
                addAnqpElementToMap(elementsMap, Constants.ANQPElementType.HSOSUProviders, hs20Data.osuProvidersList);
                SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastAnqpDoneEvent(this.mIfaceName, new AnqpEvent(NativeUtil.macAddressToLong(bssid).longValue(), elementsMap));
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onHs20IconQueryDone(byte[] bssid, String fileName, ArrayList<Byte> data) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onHs20IconQueryDone");
                SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastIconDoneEvent(this.mIfaceName, new IconEvent(NativeUtil.macAddressToLong(bssid).longValue(), fileName, data.size(), NativeUtil.byteArrayFromArrayList(data)));
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onHs20SubscriptionRemediation(byte[] bssid, byte osuMethod, String url) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onHs20SubscriptionRemediation");
                SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastWnmEvent(this.mIfaceName, new WnmData(NativeUtil.macAddressToLong(bssid).longValue(), url, osuMethod));
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onHs20DeauthImminentNotice(byte[] bssid, int reasonCode, int reAuthDelayInSec, String url) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onHs20DeauthImminentNotice");
                WifiMonitor wifiMonitor = SupplicantStaIfaceHalEx.this.mWifiMonitor;
                String str = this.mIfaceName;
                long jLongValue = NativeUtil.macAddressToLong(bssid).longValue();
                boolean z = true;
                if (reasonCode != 1) {
                    z = false;
                }
                wifiMonitor.broadcastWnmEvent(str, new WnmData(jLongValue, url, z, reAuthDelayInSec));
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onDisconnected(byte[] bssid, boolean locallyGenerated, int reasonCode) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onDisconnected");
                if (SupplicantStaIfaceHalEx.this.mVerboseLoggingEnabled) {
                    Log.e(SupplicantStaIfaceHalEx.TAG, "onDisconnected 4way=" + this.mStateIsFourway + " locallyGenerated=" + locallyGenerated + " reasonCode=" + reasonCode);
                }
                if (this.mStateIsFourway && (!locallyGenerated || reasonCode != 17)) {
                    SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastAuthenticationFailureEvent(this.mIfaceName, 2, -1);
                }
                SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastNetworkDisconnectionEvent(this.mIfaceName, locallyGenerated ? 1 : 0, reasonCode, NativeUtil.macAddressFromByteArray(bssid));
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onAssociationRejected(byte[] bssid, int statusCode, boolean timedOut) {
            WifiConfiguration curConfiguration;
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onAssociationRejected");
                if (statusCode == 1 && (curConfiguration = SupplicantStaIfaceHalEx.this.getCurrentNetworkLocalConfig(this.mIfaceName)) != null && curConfiguration.allowedKeyManagement.get(8)) {
                    SupplicantStaIfaceHalEx.this.logCallback("SAE incorrect password");
                    SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastAuthenticationFailureEvent(this.mIfaceName, 2, -1);
                }
                SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastAssociationRejectionEvent(this.mIfaceName, statusCode, timedOut, NativeUtil.macAddressFromByteArray(bssid));
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onAuthenticationTimeout(byte[] bssid) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onAuthenticationTimeout");
                SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastAuthenticationFailureEvent(this.mIfaceName, 1, -1);
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onBssidChanged(byte reason, byte[] bssid) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onBssidChanged");
                if (reason == 0) {
                    SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastTargetBssidEvent(this.mIfaceName, NativeUtil.macAddressFromByteArray(bssid));
                } else if (reason == 1) {
                    SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastAssociatedBssidEvent(this.mIfaceName, NativeUtil.macAddressFromByteArray(bssid));
                }
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onEapFailure() {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onEapFailure");
                SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastAuthenticationFailureEvent(this.mIfaceName, 3, -1);
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onWpsEventSuccess() {
            SupplicantStaIfaceHalEx.this.logCallback("onWpsEventSuccess");
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastWpsSuccessEvent(this.mIfaceName);
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onWpsEventFail(byte[] bssid, short configError, short errorInd) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onWpsEventFail");
                if (configError != 16 || errorInd != 0) {
                    SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastWpsFailEvent(this.mIfaceName, configError, errorInd);
                } else {
                    SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastWpsTimeoutEvent(this.mIfaceName);
                }
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onWpsEventPbcOverlap() {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onWpsEventPbcOverlap");
                SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastWpsOverlapEvent(this.mIfaceName);
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onExtRadioWorkStart(int id) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onExtRadioWorkStart");
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onExtRadioWorkTimeout(int id) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onExtRadioWorkTimeout");
            }
        }
    }

    private class SupplicantStaIfaceHalCallbackV1_1 extends android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback.Stub {
        private SupplicantStaIfaceHalCallback mCallbackV1_0;
        private String mIfaceName;

        SupplicantStaIfaceHalCallbackV1_1(String ifaceName, SupplicantStaIfaceHalCallback callback) {
            this.mIfaceName = ifaceName;
            this.mCallbackV1_0 = callback;
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onNetworkAdded(int id) {
            this.mCallbackV1_0.onNetworkAdded(id);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onNetworkRemoved(int id) {
            this.mCallbackV1_0.onNetworkRemoved(id);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onStateChanged(int newState, byte[] bssid, int id, ArrayList<Byte> ssid) {
            this.mCallbackV1_0.onStateChanged(newState, bssid, id, ssid);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onAnqpQueryDone(byte[] bssid, ISupplicantStaIfaceCallback.AnqpData data, ISupplicantStaIfaceCallback.Hs20AnqpData hs20Data) {
            this.mCallbackV1_0.onAnqpQueryDone(bssid, data, hs20Data);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onHs20IconQueryDone(byte[] bssid, String fileName, ArrayList<Byte> data) {
            this.mCallbackV1_0.onHs20IconQueryDone(bssid, fileName, data);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onHs20SubscriptionRemediation(byte[] bssid, byte osuMethod, String url) {
            this.mCallbackV1_0.onHs20SubscriptionRemediation(bssid, osuMethod, url);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onHs20DeauthImminentNotice(byte[] bssid, int reasonCode, int reAuthDelayInSec, String url) {
            this.mCallbackV1_0.onHs20DeauthImminentNotice(bssid, reasonCode, reAuthDelayInSec, url);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onDisconnected(byte[] bssid, boolean locallyGenerated, int reasonCode) {
            this.mCallbackV1_0.onDisconnected(bssid, locallyGenerated, reasonCode);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onAssociationRejected(byte[] bssid, int statusCode, boolean timedOut) {
            this.mCallbackV1_0.onAssociationRejected(bssid, statusCode, timedOut);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onAuthenticationTimeout(byte[] bssid) {
            this.mCallbackV1_0.onAuthenticationTimeout(bssid);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onBssidChanged(byte reason, byte[] bssid) {
            this.mCallbackV1_0.onBssidChanged(reason, bssid);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onEapFailure() {
            this.mCallbackV1_0.onEapFailure();
        }

        @Override // android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback
        public void onEapFailure_1_1(int code) {
            synchronized (SupplicantStaIfaceHalEx.this.mLock) {
                SupplicantStaIfaceHalEx.this.logCallback("onEapFailure_1_1");
                SupplicantStaIfaceHalEx.this.mWifiMonitor.broadcastAuthenticationFailureEvent(this.mIfaceName, 3, code);
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onWpsEventSuccess() {
            this.mCallbackV1_0.onWpsEventSuccess();
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onWpsEventFail(byte[] bssid, short configError, short errorInd) {
            this.mCallbackV1_0.onWpsEventFail(bssid, configError, errorInd);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onWpsEventPbcOverlap() {
            this.mCallbackV1_0.onWpsEventPbcOverlap();
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onExtRadioWorkStart(int id) {
            this.mCallbackV1_0.onExtRadioWorkStart(id);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onExtRadioWorkTimeout(int id) {
            this.mCallbackV1_0.onExtRadioWorkTimeout(id);
        }
    }

    private class SupplicantStaIfaceHalCallbackV1_2 extends android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback.Stub {
        private SupplicantStaIfaceHalCallbackV1_1 mCallbackV1_1;

        SupplicantStaIfaceHalCallbackV1_2(SupplicantStaIfaceHalCallbackV1_1 callback) {
            this.mCallbackV1_1 = callback;
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onNetworkAdded(int id) {
            this.mCallbackV1_1.onNetworkAdded(id);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onNetworkRemoved(int id) {
            this.mCallbackV1_1.onNetworkRemoved(id);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onStateChanged(int newState, byte[] bssid, int id, ArrayList<Byte> ssid) {
            this.mCallbackV1_1.onStateChanged(newState, bssid, id, ssid);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onAnqpQueryDone(byte[] bssid, ISupplicantStaIfaceCallback.AnqpData data, ISupplicantStaIfaceCallback.Hs20AnqpData hs20Data) {
            this.mCallbackV1_1.onAnqpQueryDone(bssid, data, hs20Data);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onHs20IconQueryDone(byte[] bssid, String fileName, ArrayList<Byte> data) {
            this.mCallbackV1_1.onHs20IconQueryDone(bssid, fileName, data);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onHs20SubscriptionRemediation(byte[] bssid, byte osuMethod, String url) {
            this.mCallbackV1_1.onHs20SubscriptionRemediation(bssid, osuMethod, url);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onHs20DeauthImminentNotice(byte[] bssid, int reasonCode, int reAuthDelayInSec, String url) {
            this.mCallbackV1_1.onHs20DeauthImminentNotice(bssid, reasonCode, reAuthDelayInSec, url);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onDisconnected(byte[] bssid, boolean locallyGenerated, int reasonCode) {
            this.mCallbackV1_1.onDisconnected(bssid, locallyGenerated, reasonCode);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onAssociationRejected(byte[] bssid, int statusCode, boolean timedOut) {
            this.mCallbackV1_1.onAssociationRejected(bssid, statusCode, timedOut);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onAuthenticationTimeout(byte[] bssid) {
            this.mCallbackV1_1.onAuthenticationTimeout(bssid);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onBssidChanged(byte reason, byte[] bssid) {
            this.mCallbackV1_1.onBssidChanged(reason, bssid);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onEapFailure() {
            this.mCallbackV1_1.onEapFailure();
        }

        @Override // android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback
        public void onEapFailure_1_1(int code) {
            this.mCallbackV1_1.onEapFailure_1_1(code);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onWpsEventSuccess() {
            this.mCallbackV1_1.onWpsEventSuccess();
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onWpsEventFail(byte[] bssid, short configError, short errorInd) {
            this.mCallbackV1_1.onWpsEventFail(bssid, configError, errorInd);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onWpsEventPbcOverlap() {
            this.mCallbackV1_1.onWpsEventPbcOverlap();
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onExtRadioWorkStart(int id) {
            this.mCallbackV1_1.onExtRadioWorkStart(id);
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onExtRadioWorkTimeout(int id) {
            this.mCallbackV1_1.onExtRadioWorkTimeout(id);
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback
        public void onDppSuccessConfigReceived(ArrayList<Byte> ssid, String password, byte[] psk, int securityAkm) {
            if (SupplicantStaIfaceHalEx.this.mDppCallback == null) {
                SupplicantStaIfaceHalEx.loge("onDppSuccessConfigReceived callback is null");
                return;
            }
            WifiConfiguration newWifiConfiguration = new WifiConfiguration();
            WifiSsid wifiSsid = WifiSsid.createFromByteArray(NativeUtil.byteArrayFromArrayList(ssid));
            newWifiConfiguration.SSID = "\"" + wifiSsid.toString() + "\"";
            if (password != null) {
                newWifiConfiguration.preSharedKey = "\"" + password + "\"";
            } else if (psk != null) {
                newWifiConfiguration.preSharedKey = psk.toString();
            }
            if (securityAkm == 2 || securityAkm == 1) {
                newWifiConfiguration.allowedKeyManagement.set(8);
                newWifiConfiguration.requirePMF = true;
            } else if (securityAkm == 0) {
                newWifiConfiguration.allowedKeyManagement.set(1);
            } else {
                onDppFailure(7);
                return;
            }
            newWifiConfiguration.creatorName = SupplicantStaIfaceHalEx.this.mContext.getPackageManager().getNameForUid(1010);
            newWifiConfiguration.allowedAuthAlgorithms.set(0);
            newWifiConfiguration.allowedPairwiseCiphers.set(2);
            newWifiConfiguration.allowedProtocols.set(1);
            newWifiConfiguration.status = 2;
            SupplicantStaIfaceHalEx.this.mDppCallback.onSuccessConfigReceived(newWifiConfiguration);
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback
        public void onDppSuccessConfigSent() {
            if (SupplicantStaIfaceHalEx.this.mDppCallback != null) {
                SupplicantStaIfaceHalEx.this.mDppCallback.onSuccessConfigSent();
            } else {
                SupplicantStaIfaceHalEx.loge("onSuccessConfigSent callback is null");
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback
        public void onDppProgress(int code) {
            if (SupplicantStaIfaceHalEx.this.mDppCallback != null) {
                SupplicantStaIfaceHalEx.this.mDppCallback.onProgress(code);
            } else {
                SupplicantStaIfaceHalEx.loge("onDppProgress callback is null");
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback
        public void onDppFailure(int code) {
            if (SupplicantStaIfaceHalEx.this.mDppCallback != null) {
                SupplicantStaIfaceHalEx.this.mDppCallback.onFailure(code);
            } else {
                SupplicantStaIfaceHalEx.loge("onDppFailure callback is null");
            }
        }
    }

    private static void logd(String s) {
        Log.d(TAG, s);
    }

    private static void logi(String s) {
        Log.i(TAG, s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loge(String s) {
        Log.e(TAG, s);
    }

    public long getAdvancedKeyMgmtCapabilities(String ifaceName) {
        long advancedCapabilities = 0;
        int keyMgmtCapabilities = getKeyMgmtCapabilities(ifaceName);
        if ((keyMgmtCapabilities & 1024) != 0) {
            advancedCapabilities = 0 | 134217728;
            if (this.mVerboseLoggingEnabled) {
                Log.v(TAG, "getAdvancedKeyMgmtCapabilities: SAE supported");
            }
        }
        if ((131072 & keyMgmtCapabilities) != 0) {
            advancedCapabilities |= 268435456;
            if (this.mVerboseLoggingEnabled) {
                Log.v(TAG, "getAdvancedKeyMgmtCapabilities: SUITE_B supported");
            }
        }
        if ((4194304 & keyMgmtCapabilities) != 0) {
            advancedCapabilities |= 536870912;
            if (this.mVerboseLoggingEnabled) {
                Log.v(TAG, "getAdvancedKeyMgmtCapabilities: OWE supported");
            }
        }
        if ((8388608 & keyMgmtCapabilities) != 0) {
            advancedCapabilities |= 2147483648L;
            if (this.mVerboseLoggingEnabled) {
                Log.v(TAG, "getAdvancedKeyMgmtCapabilities: DPP supported");
            }
        }
        if ((keyMgmtCapabilities & 4096) != 0 && (keyMgmtCapabilities & 8192) != 0) {
            advancedCapabilities |= 8589934592L;
            if (this.mVerboseLoggingEnabled) {
                Log.v(TAG, "getAdvancedKeyMgmtCapabilities: WAPI supported, WIFI_FEATURE_WAPI = 8589934592");
            }
        }
        if (this.mVerboseLoggingEnabled) {
            Log.v(TAG, "getAdvancedKeyMgmtCapabilities: Capability flags = " + keyMgmtCapabilities + ", advancedCapabilities=" + advancedCapabilities);
        }
        return advancedCapabilities;
    }

    private int getKeyMgmtCapabilities(String ifaceName) {
        final MutableBoolean status = new MutableBoolean(false);
        final MutableInt keyMgmtMask = new MutableInt(0);
        if (isV1_2()) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "getKeyMgmtCapabilities");
            if (iface == null) {
                return 0;
            }
            android.hardware.wifi.supplicant.V1_2.ISupplicantStaIface staIfaceV12 = getStaIfaceMockableV1_2(iface);
            if (staIfaceV12 == null) {
                Log.e(TAG, "getKeyMgmtCapabilities: ISupplicantStaIface is null, cannot get advanced capabilities");
                return 0;
            }
            try {
                staIfaceV12.getKeyMgmtCapabilities(new android.hardware.wifi.supplicant.V1_2.ISupplicantStaIface.getKeyMgmtCapabilitiesCallback() { // from class: com.android.server.wifi.-$$Lambda$SupplicantStaIfaceHalEx$m2oTKduqC2DLcAJP_AJfCAetZNY
                    @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIface.getKeyMgmtCapabilitiesCallback
                    public final void onValues(SupplicantStatus supplicantStatus, int i) {
                        this.f$0.lambda$getKeyMgmtCapabilities$8$SupplicantStaIfaceHalEx(status, keyMgmtMask, supplicantStatus, i);
                    }
                });
            } catch (RemoteException e) {
                handleRemoteException(e, "getKeyMgmtCapabilities");
            }
        } else {
            Log.e(TAG, "Method getKeyMgmtCapabilities is not supported in existing HAL");
        }
        return keyMgmtMask.value;
    }

    public /* synthetic */ void lambda$getKeyMgmtCapabilities$8$SupplicantStaIfaceHalEx(MutableBoolean status, MutableInt keyMgmtMask, SupplicantStatus statusInternal, int keyMgmtMaskInternal) {
        status.value = statusInternal.code == 0;
        if (status.value) {
            keyMgmtMask.value = keyMgmtMaskInternal;
        }
        checkStatusAndLogFailure(statusInternal, "getKeyMgmtCapabilities");
    }

    public int addDppPeerUri(String ifaceName, String uri) {
        final MutableBoolean status = new MutableBoolean(false);
        final MutableInt bootstrapId = new MutableInt(-1);
        if (!isV1_2()) {
            Log.e(TAG, "Method addDppPeerUri is not supported in existing HAL");
            return -1;
        }
        ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "addDppPeerUri");
        if (iface == null) {
            return -1;
        }
        android.hardware.wifi.supplicant.V1_2.ISupplicantStaIface staIfaceV12 = getStaIfaceMockableV1_2(iface);
        if (staIfaceV12 == null) {
            Log.e(TAG, "addDppPeerUri: ISupplicantStaIface is null");
            return -1;
        }
        try {
            staIfaceV12.addDppPeerUri(uri, new android.hardware.wifi.supplicant.V1_2.ISupplicantStaIface.addDppPeerUriCallback() { // from class: com.android.server.wifi.-$$Lambda$SupplicantStaIfaceHalEx$h7N5yzn1_HsciAZU6q2wXHKEN9c
                @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIface.addDppPeerUriCallback
                public final void onValues(SupplicantStatus supplicantStatus, int i) {
                    this.f$0.lambda$addDppPeerUri$9$SupplicantStaIfaceHalEx(status, bootstrapId, supplicantStatus, i);
                }
            });
            return bootstrapId.value;
        } catch (RemoteException e) {
            handleRemoteException(e, "addDppPeerUri");
            return -1;
        }
    }

    public /* synthetic */ void lambda$addDppPeerUri$9$SupplicantStaIfaceHalEx(MutableBoolean status, MutableInt bootstrapId, SupplicantStatus statusInternal, int bootstrapIdInternal) {
        status.value = statusInternal.code == 0;
        if (status.value) {
            bootstrapId.value = bootstrapIdInternal;
        }
        checkStatusAndLogFailure(statusInternal, "addDppPeerUri");
    }

    public boolean removeDppUri(String ifaceName, int bootstrapId) {
        if (!isV1_2()) {
            Log.e(TAG, "Method removeDppUri is not supported in existing HAL");
            return false;
        }
        ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "removeDppUri");
        if (iface == null) {
            return false;
        }
        android.hardware.wifi.supplicant.V1_2.ISupplicantStaIface staIfaceV12 = getStaIfaceMockableV1_2(iface);
        if (staIfaceV12 == null) {
            Log.e(TAG, "removeDppUri: ISupplicantStaIface is null");
            return false;
        }
        try {
            SupplicantStatus status = staIfaceV12.removeDppUri(bootstrapId);
            return checkStatusAndLogFailure(status, "removeDppUri");
        } catch (RemoteException e) {
            handleRemoteException(e, "removeDppUri");
            return false;
        }
    }

    public boolean stopDppInitiator(String ifaceName) {
        ISupplicantStaIface iface;
        if (!isV1_2() || (iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "stopDppInitiator")) == null) {
            return false;
        }
        android.hardware.wifi.supplicant.V1_2.ISupplicantStaIface staIfaceV12 = getStaIfaceMockableV1_2(iface);
        if (staIfaceV12 == null) {
            Log.e(TAG, "stopDppInitiator: ISupplicantStaIface is null");
            return false;
        }
        try {
            SupplicantStatus status = staIfaceV12.stopDppInitiator();
            return checkStatusAndLogFailure(status, "stopDppInitiator");
        } catch (RemoteException e) {
            handleRemoteException(e, "stopDppInitiator");
            return false;
        }
    }

    public boolean startDppConfiguratorInitiator(String ifaceName, int peerBootstrapId, int ownBootstrapId, String ssid, String password, String psk, int netRole, int securityAkm) {
        if (isV1_2()) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "startDppConfiguratorInitiator");
            if (iface == null) {
                return false;
            }
            android.hardware.wifi.supplicant.V1_2.ISupplicantStaIface staIfaceV12 = getStaIfaceMockableV1_2(iface);
            if (staIfaceV12 == null) {
                Log.e(TAG, "startDppConfiguratorInitiator: ISupplicantStaIface is null");
                return false;
            }
            try {
                SupplicantStatus status = staIfaceV12.startDppConfiguratorInitiator(peerBootstrapId, ownBootstrapId, ssid, password != null ? password : "", psk != null ? psk : "", netRole, securityAkm);
                return checkStatusAndLogFailure(status, "startDppConfiguratorInitiator");
            } catch (RemoteException e) {
                handleRemoteException(e, "startDppConfiguratorInitiator");
                return false;
            }
        }
        Log.e(TAG, "Method startDppConfiguratorInitiator is not supported in existing HAL");
        return false;
    }

    public boolean startDppEnrolleeInitiator(String ifaceName, int peerBootstrapId, int ownBootstrapId) {
        if (!isV1_2()) {
            Log.e(TAG, "Method startDppEnrolleeInitiator is not supported in existing HAL");
            return false;
        }
        ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "startDppEnrolleeInitiator");
        if (iface == null) {
            return false;
        }
        android.hardware.wifi.supplicant.V1_2.ISupplicantStaIface staIfaceV12 = getStaIfaceMockableV1_2(iface);
        if (staIfaceV12 == null) {
            Log.e(TAG, "startDppEnrolleeInitiator: ISupplicantStaIface is null");
            return false;
        }
        try {
            SupplicantStatus status = staIfaceV12.startDppEnrolleeInitiator(peerBootstrapId, ownBootstrapId);
            return checkStatusAndLogFailure(status, "startDppEnrolleeInitiator");
        } catch (RemoteException e) {
            handleRemoteException(e, "startDppEnrolleeInitiator");
            return false;
        }
    }

    public void registerDppCallback(WifiNative.DppEventCallback dppCallback) {
        this.mDppCallback = dppCallback;
    }

    public boolean setParamToSupplicant(String ifaceName, String key, String value) {
        synchronized (this.mLock) {
            ISupplicantStaIface iface = checkSupplicantStaIfaceAndLogFailure(ifaceName, "setParamToSupplicant");
            if (iface == null) {
                return false;
            }
            try {
                SupplicantStatus status = iface.setParamToSupplicant(key, value);
                Log.d(TAG, "setParamToSupplicant " + key + ", " + value);
                return checkStatusAndLogFailure(status, "setParamToSupplicant");
            } catch (RemoteException e) {
                handleRemoteException(e, "setParamToSupplicant");
                return false;
            }
        }
    }
}
