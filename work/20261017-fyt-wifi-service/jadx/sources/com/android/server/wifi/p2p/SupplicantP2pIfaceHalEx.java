package com.android.server.wifi.p2p;

import android.hardware.wifi.supplicant.V1_0.ISupplicant;
import android.hardware.wifi.supplicant.V1_0.ISupplicantIface;
import android.hardware.wifi.supplicant.V1_0.ISupplicantNetwork;
import android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIfaceCallback;
import android.hardware.wifi.supplicant.V1_0.ISupplicantP2pNetwork;
import android.hardware.wifi.supplicant.V1_0.SupplicantStatus;
import android.hardware.wifi.supplicant.V1_0.WpsConfigMethods;
import android.hidl.manager.V1_0.IServiceManager;
import android.hidl.manager.V1_0.IServiceNotification;
import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pDevice;
import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pGroupList;
import android.net.wifi.p2p.nsd.WifiP2pServiceInfo;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.util.ArrayUtils;
import com.android.server.wifi.util.NativeUtil;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import vendor.sprd.hardware.wifi.supplicant.V1_2.ISupplicantP2pIface;

/* JADX INFO: loaded from: classes.dex */
public class SupplicantP2pIfaceHalEx {
    private static final int DEFAULT_GROUP_OWNER_INTENT = 6;
    private static final int DEFAULT_OPERATING_CLASS = 81;
    private static final int RESULT_NOT_VALID = -1;
    private static final String TAG = "SupplicantP2pIfaceHalEx";
    private final WifiP2pMonitor mMonitor;
    private static boolean sVerboseLoggingEnabled = true;
    private static final Pattern WPS_DEVICE_TYPE_PATTERN = Pattern.compile("^(\\d{1,2})-([0-9a-fA-F]{8})-(\\d{1,2})$");
    private Object mLock = new Object();
    private IServiceManager mIServiceManager = null;
    private ISupplicant mISupplicant = null;
    private ISupplicantIface mHidlSupplicantIface = null;
    private ISupplicantP2pIface mISupplicantP2pIface = null;
    private final IServiceNotification mServiceNotificationCallback = new IServiceNotification.Stub() { // from class: com.android.server.wifi.p2p.SupplicantP2pIfaceHalEx.1
        public void onRegistration(String fqName, String name, boolean preexisting) {
            synchronized (SupplicantP2pIfaceHalEx.this.mLock) {
                if (SupplicantP2pIfaceHalEx.sVerboseLoggingEnabled) {
                    Log.i(SupplicantP2pIfaceHalEx.TAG, "IServiceNotification.onRegistration for: " + fqName + ", " + name + " preexisting=" + preexisting);
                }
                if (!SupplicantP2pIfaceHalEx.this.initSupplicantService()) {
                    Log.e(SupplicantP2pIfaceHalEx.TAG, "initalizing ISupplicant failed.");
                    SupplicantP2pIfaceHalEx.this.supplicantServiceDiedHandler();
                } else {
                    Log.i(SupplicantP2pIfaceHalEx.TAG, "Completed initialization of ISupplicant interfaces.");
                }
            }
        }
    };
    private final IHwBinder.DeathRecipient mServiceManagerDeathRecipient = new IHwBinder.DeathRecipient() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$Dl_h32oJREF7YbpGi7sDlejt3NE
        public final void serviceDied(long j) {
            this.f$0.lambda$new$0$SupplicantP2pIfaceHalEx(j);
        }
    };
    private final IHwBinder.DeathRecipient mSupplicantDeathRecipient = new IHwBinder.DeathRecipient() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$Z-CU6bMSQrMAlkyo-EPCi8vRxTA
        public final void serviceDied(long j) {
            this.f$0.lambda$new$1$SupplicantP2pIfaceHalEx(j);
        }
    };
    private SupplicantP2pIfaceCallback mCallback = null;

    public /* synthetic */ void lambda$new$0$SupplicantP2pIfaceHalEx(long cookie) {
        Log.w(TAG, "IServiceManager died: cookie=" + cookie);
        synchronized (this.mLock) {
            supplicantServiceDiedHandler();
            this.mIServiceManager = null;
        }
    }

    public /* synthetic */ void lambda$new$1$SupplicantP2pIfaceHalEx(long cookie) {
        Log.w(TAG, "ISupplicant/ISupplicantStaIface died: cookie=" + cookie);
        synchronized (this.mLock) {
            supplicantServiceDiedHandler();
        }
    }

    public SupplicantP2pIfaceHalEx(WifiP2pMonitor monitor) {
        this.mMonitor = monitor;
    }

    private boolean linkToServiceManagerDeath() {
        IServiceManager iServiceManager = this.mIServiceManager;
        if (iServiceManager == null) {
            return false;
        }
        try {
            if (!iServiceManager.linkToDeath(this.mServiceManagerDeathRecipient, 0L)) {
                Log.wtf(TAG, "Error on linkToDeath on IServiceManager");
                supplicantServiceDiedHandler();
                this.mIServiceManager = null;
                return false;
            }
            return true;
        } catch (RemoteException e) {
            Log.e(TAG, "IServiceManager.linkToDeath exception", e);
            return false;
        }
    }

    public static void enableVerboseLogging(int verbose) {
        sVerboseLoggingEnabled = verbose > 0;
        SupplicantP2pIfaceCallback.enableVerboseLogging(verbose);
    }

    public boolean initialize() {
        if (sVerboseLoggingEnabled) {
            Log.i(TAG, "Registering ISupplicant service ready callback.");
        }
        synchronized (this.mLock) {
            if (this.mIServiceManager != null) {
                Log.i(TAG, "Supplicant HAL already initialized.");
                return true;
            }
            this.mISupplicant = null;
            this.mISupplicantP2pIface = null;
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
                supplicantServiceDiedHandler();
                return false;
            }
        }
    }

    private boolean linkToSupplicantDeath() {
        ISupplicant iSupplicant = this.mISupplicant;
        if (iSupplicant == null) {
            return false;
        }
        try {
            if (!iSupplicant.linkToDeath(this.mSupplicantDeathRecipient, 0L)) {
                Log.wtf(TAG, "Error on linkToDeath on ISupplicant");
                supplicantServiceDiedHandler();
                return false;
            }
            return true;
        } catch (RemoteException e) {
            Log.e(TAG, "ISupplicant.linkToDeath exception", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean initSupplicantService() {
        synchronized (this.mLock) {
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
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean linkToSupplicantP2pIfaceDeath() {
        ISupplicantP2pIface iSupplicantP2pIface = this.mISupplicantP2pIface;
        if (iSupplicantP2pIface == null) {
            return false;
        }
        try {
            if (!iSupplicantP2pIface.linkToDeath(this.mSupplicantDeathRecipient, 0L)) {
                Log.wtf(TAG, "Error on linkToDeath on ISupplicantP2pIface");
                supplicantServiceDiedHandler();
                return false;
            }
            return true;
        } catch (RemoteException e) {
            Log.e(TAG, "ISupplicantP2pIface.linkToDeath exception", e);
            return false;
        }
    }

    public boolean setupIface(String ifaceName) {
        ISupplicantIface ifaceHwBinder;
        synchronized (this.mLock) {
            if (this.mISupplicantP2pIface != null) {
                return false;
            }
            if (isV1_1()) {
                ifaceHwBinder = addIfaceV1_1(ifaceName);
            } else {
                ifaceHwBinder = getIfaceV1_0(ifaceName);
            }
            if (ifaceHwBinder == null) {
                Log.e(TAG, "initSupplicantP2pIface got null iface");
                return false;
            }
            this.mISupplicantP2pIface = getP2pIfaceMockable(ifaceHwBinder);
            if (!linkToSupplicantP2pIfaceDeath()) {
                return false;
            }
            if (this.mISupplicantP2pIface != null && this.mMonitor != null) {
                this.mCallback = new SupplicantP2pIfaceCallback(ifaceName, this.mMonitor);
                if (!registerCallback(this.mCallback)) {
                    Log.e(TAG, "Callback registration failed. Initialization incomplete.");
                    return false;
                }
            }
            return true;
        }
    }

    private ISupplicantIface getIfaceV1_0(String ifaceName) {
        final ArrayList<ISupplicant.IfaceInfo> supplicantIfaces = new ArrayList<>();
        try {
            this.mISupplicant.listInterfaces(new ISupplicant.listInterfacesCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$kdN5eD8tMr1hJRsvBMI6i0jGxVk
                @Override // android.hardware.wifi.supplicant.V1_0.ISupplicant.listInterfacesCallback
                public final void onValues(SupplicantStatus supplicantStatus, ArrayList arrayList) {
                    SupplicantP2pIfaceHalEx.lambda$getIfaceV1_0$2(supplicantIfaces, supplicantStatus, arrayList);
                }
            });
            if (supplicantIfaces.size() == 0) {
                Log.e(TAG, "Got zero HIDL supplicant ifaces. Stopping supplicant HIDL startup.");
                supplicantServiceDiedHandler();
                return null;
            }
            final SupplicantResult<ISupplicantIface> supplicantIface = new SupplicantResult<>("getInterface()");
            for (ISupplicant.IfaceInfo ifaceInfo : supplicantIfaces) {
                if (ifaceInfo.type == 1 && ifaceName.equals(ifaceInfo.name)) {
                    try {
                        this.mISupplicant.getInterface(ifaceInfo, new ISupplicant.getInterfaceCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$Y97AvawhpiKMdP82Y5E4CwFfjp4
                            @Override // android.hardware.wifi.supplicant.V1_0.ISupplicant.getInterfaceCallback
                            public final void onValues(SupplicantStatus supplicantStatus, ISupplicantIface iSupplicantIface) {
                                SupplicantP2pIfaceHalEx.lambda$getIfaceV1_0$3(supplicantIface, supplicantStatus, iSupplicantIface);
                            }
                        });
                        break;
                    } catch (RemoteException e) {
                        Log.e(TAG, "ISupplicant.getInterface exception: " + e);
                        supplicantServiceDiedHandler();
                        return null;
                    }
                }
            }
            return supplicantIface.getResult();
        } catch (RemoteException e2) {
            Log.e(TAG, "ISupplicant.listInterfaces exception: " + e2);
            return null;
        }
    }

    static /* synthetic */ void lambda$getIfaceV1_0$2(ArrayList supplicantIfaces, SupplicantStatus status, ArrayList ifaces) {
        if (status.code != 0) {
            Log.e(TAG, "Getting Supplicant Interfaces failed: " + status.code);
            return;
        }
        supplicantIfaces.addAll(ifaces);
    }

    static /* synthetic */ void lambda$getIfaceV1_0$3(SupplicantResult supplicantIface, SupplicantStatus status, ISupplicantIface iface) {
        if (status.code != 0) {
            Log.e(TAG, "Failed to get ISupplicantIface " + status.code);
            return;
        }
        supplicantIface.setResult(status, iface);
    }

    private ISupplicantIface addIfaceV1_1(String ifaceName) {
        synchronized (this.mLock) {
            ISupplicant.IfaceInfo ifaceInfo = new ISupplicant.IfaceInfo();
            ifaceInfo.name = ifaceName;
            ifaceInfo.type = 1;
            final SupplicantResult<ISupplicantIface> supplicantIface = new SupplicantResult<>("addInterface(" + ifaceInfo + ")");
            try {
                android.hardware.wifi.supplicant.V1_1.ISupplicant supplicant_v1_1 = getSupplicantMockableV1_1();
                if (supplicant_v1_1 == null) {
                    Log.e(TAG, "Can't call addIface: ISupplicantP2pIface is null");
                    return null;
                }
                supplicant_v1_1.addInterface(ifaceInfo, new android.hardware.wifi.supplicant.V1_1.ISupplicant.addInterfaceCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$8446uMmASArg6D-JjhZZaGsbuVo
                    @Override // android.hardware.wifi.supplicant.V1_1.ISupplicant.addInterfaceCallback
                    public final void onValues(SupplicantStatus supplicantStatus, ISupplicantIface iSupplicantIface) {
                        SupplicantP2pIfaceHalEx.lambda$addIfaceV1_1$4(supplicantIface, supplicantStatus, iSupplicantIface);
                    }
                });
                return supplicantIface.getResult();
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicant.addInterface exception: " + e);
                supplicantServiceDiedHandler();
                return null;
            }
        }
    }

    static /* synthetic */ void lambda$addIfaceV1_1$4(SupplicantResult supplicantIface, SupplicantStatus status, ISupplicantIface iface) {
        if (status.code != 0 && status.code != 5) {
            Log.e(TAG, "Failed to get ISupplicantIface " + status.code);
            return;
        }
        supplicantIface.setResult(status, iface);
    }

    public boolean teardownIface(String ifaceName) {
        synchronized (this.mLock) {
            if (this.mISupplicantP2pIface == null) {
                return false;
            }
            if (isV1_1()) {
                return removeIfaceV1_1(ifaceName);
            }
            return true;
        }
    }

    private boolean removeIfaceV1_1(String ifaceName) {
        synchronized (this.mLock) {
            try {
                try {
                    android.hardware.wifi.supplicant.V1_1.ISupplicant supplicant_v1_1 = getSupplicantMockableV1_1();
                    if (supplicant_v1_1 == null) {
                        Log.e(TAG, "Can't call removeIface: ISupplicantP2pIface is null");
                        return false;
                    }
                    ISupplicant.IfaceInfo ifaceInfo = new ISupplicant.IfaceInfo();
                    ifaceInfo.name = ifaceName;
                    ifaceInfo.type = 1;
                    SupplicantStatus status = supplicant_v1_1.removeInterface(ifaceInfo);
                    if (status.code != 0) {
                        Log.e(TAG, "Failed to remove iface " + status.code);
                        return false;
                    }
                    this.mCallback = null;
                    this.mISupplicantP2pIface = null;
                    return true;
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicant.removeInterface exception: " + e);
                    supplicantServiceDiedHandler();
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void supplicantServiceDiedHandler() {
        synchronized (this.mLock) {
            this.mISupplicant = null;
            this.mISupplicantP2pIface = null;
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
        return this.mISupplicant != null;
    }

    protected IServiceManager getServiceManagerMockable() throws RemoteException {
        return IServiceManager.getService();
    }

    protected ISupplicant getSupplicantMockable() throws RemoteException {
        try {
            return ISupplicant.getService();
        } catch (NoSuchElementException e) {
            Log.e(TAG, "Failed to get ISupplicant", e);
            return null;
        }
    }

    protected android.hardware.wifi.supplicant.V1_1.ISupplicant getSupplicantMockableV1_1() throws RemoteException {
        android.hardware.wifi.supplicant.V1_1.ISupplicant iSupplicantCastFrom;
        synchronized (this.mLock) {
            try {
                try {
                    iSupplicantCastFrom = android.hardware.wifi.supplicant.V1_1.ISupplicant.castFrom((IHwInterface) ISupplicant.getService());
                } catch (NoSuchElementException e) {
                    Log.e(TAG, "Failed to get ISupplicant", e);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iSupplicantCastFrom;
    }

    protected ISupplicantP2pIface getP2pIfaceMockable(ISupplicantIface iface) {
        return ISupplicantP2pIface.asInterface(iface.asBinder());
    }

    protected ISupplicantP2pIface getP2pIfaceMockableV1_2() {
        ISupplicantP2pIface iSupplicantP2pIface = this.mISupplicantP2pIface;
        if (iSupplicantP2pIface == null) {
            return null;
        }
        return ISupplicantP2pIface.castFrom((IHwInterface) iSupplicantP2pIface);
    }

    protected ISupplicantP2pNetwork getP2pNetworkMockable(ISupplicantNetwork network) {
        return ISupplicantP2pNetwork.asInterface(network.asBinder());
    }

    private boolean isV1_1() {
        boolean z;
        synchronized (this.mLock) {
            try {
                try {
                    z = getSupplicantMockableV1_1() != null;
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicant.getService exception: " + e);
                    supplicantServiceDiedHandler();
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    protected static void logd(String s) {
        if (sVerboseLoggingEnabled) {
            Log.d(TAG, s);
        }
    }

    protected static void logCompletion(String operation, SupplicantStatus status) {
        if (status == null) {
            Log.w(TAG, operation + " failed: no status code returned.");
            return;
        }
        if (status.code == 0) {
            logd(operation + " completed successfully.");
            return;
        }
        Log.w(TAG, operation + " failed: " + status.code + " (" + status.debugMessage + ")");
    }

    private boolean checkSupplicantP2pIfaceAndLogFailure(String method) {
        if (this.mISupplicantP2pIface == null) {
            Log.e(TAG, "Can't call " + method + ": ISupplicantP2pIface is null");
            return false;
        }
        return true;
    }

    private boolean checkSupplicantP2pIfaceAndLogFailureV1_2(String method) {
        if (getP2pIfaceMockableV1_2() == null) {
            Log.e(TAG, "Can't call " + method + ": ISupplicantP2pIface is null");
            return false;
        }
        return true;
    }

    private int wpsInfoToConfigMethod(int info) {
        if (info == 0) {
            return 0;
        }
        if (info == 1) {
            return 1;
        }
        if (info == 2 || info == 3) {
            return 2;
        }
        Log.e(TAG, "Unsupported WPS provision method: " + info);
        return -1;
    }

    public String getName() {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("getName")) {
                return null;
            }
            final SupplicantResult<String> result = new SupplicantResult<>("getName()");
            try {
                this.mISupplicantP2pIface.getName(new ISupplicantIface.getNameCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$bXCN3Nd4RjBPAPYRyDoyxZzuJp8
                    @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantIface.getNameCallback
                    public final void onValues(SupplicantStatus supplicantStatus, String str) {
                        result.setResult(supplicantStatus, str);
                    }
                });
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.getResult();
        }
    }

    public boolean registerCallback(ISupplicantP2pIfaceCallback receiver) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("registerCallback")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("registerCallback()");
            try {
                result.setResult(this.mISupplicantP2pIface.registerCallback(receiver));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean find(int timeout) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("find")) {
                return false;
            }
            if (timeout < 0) {
                Log.e(TAG, "Invalid timeout value: " + timeout);
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("find(" + timeout + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.find(timeout));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean stopFind() {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("stopFind")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("stopFind()");
            try {
                result.setResult(this.mISupplicantP2pIface.stopFind());
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean flush() {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("flush")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("flush()");
            try {
                result.setResult(this.mISupplicantP2pIface.flush());
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean serviceFlush() {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("serviceFlush")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("serviceFlush()");
            try {
                result.setResult(this.mISupplicantP2pIface.flushServices());
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean setPowerSave(String groupIfName, boolean enable) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("setPowerSave")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("setPowerSave(" + groupIfName + ", " + enable + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.setPowerSave(groupIfName, enable));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean setGroupIdle(String groupIfName, int timeoutInSec) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("setGroupIdle")) {
                return false;
            }
            if (timeoutInSec < 0) {
                Log.e(TAG, "Invalid group timeout value " + timeoutInSec);
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("setGroupIdle(" + groupIfName + ", " + timeoutInSec + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.setGroupIdle(groupIfName, timeoutInSec));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean setSsidPostfix(String postfix) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("setSsidPostfix")) {
                return false;
            }
            if (postfix == null) {
                Log.e(TAG, "Invalid SSID postfix value (null).");
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("setSsidPostfix(" + postfix + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.setSsidPostfix(NativeUtil.decodeSsid("\"" + postfix + "\"")));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            } catch (IllegalArgumentException e2) {
                Log.e(TAG, "Could not decode SSID.", e2);
                return false;
            }
            return result.isSuccess();
        }
    }

    public String connect(WifiP2pConfig config, boolean joinExistingGroup) {
        if (config == null) {
            return null;
        }
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("setSsidPostfix")) {
                return null;
            }
            if (config.deviceAddress == null) {
                Log.e(TAG, "Could not parse null mac address.");
                return null;
            }
            if (config.wps.setup == 0 && !TextUtils.isEmpty(config.wps.pin)) {
                Log.e(TAG, "Expected empty pin for PBC.");
                return null;
            }
            try {
                byte[] peerAddress = NativeUtil.macAddressToByteArray(config.deviceAddress);
                int provisionMethod = wpsInfoToConfigMethod(config.wps.setup);
                if (provisionMethod == -1) {
                    Log.e(TAG, "Invalid WPS config method: " + config.wps.setup);
                    return null;
                }
                String preSelectedPin = TextUtils.isEmpty(config.wps.pin) ? "" : config.wps.pin;
                boolean persistent = config.netId == -2;
                int goIntent = 0;
                if (!joinExistingGroup) {
                    int groupOwnerIntent = config.groupOwnerIntent;
                    if (groupOwnerIntent < 0 || groupOwnerIntent > 15) {
                        groupOwnerIntent = 6;
                    }
                    goIntent = groupOwnerIntent;
                }
                final SupplicantResult<String> result = new SupplicantResult<>("connect(" + config.deviceAddress + ")");
                try {
                    this.mISupplicantP2pIface.connect(peerAddress, provisionMethod, preSelectedPin, joinExistingGroup, persistent, goIntent, new android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.connectCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$QvmRxzyEvqAE54mLyV04O3nBVOM
                        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.connectCallback
                        public final void onValues(SupplicantStatus supplicantStatus, String str) {
                            result.setResult(supplicantStatus, str);
                        }
                    });
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                    supplicantServiceDiedHandler();
                }
                return result.getResult();
            } catch (Exception e2) {
                Log.e(TAG, "Could not parse peer mac address.", e2);
                return null;
            }
        }
    }

    public boolean cancelConnect() {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("cancelConnect")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("cancelConnect()");
            try {
                result.setResult(this.mISupplicantP2pIface.cancelConnect());
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean provisionDiscovery(WifiP2pConfig config) {
        if (config == null) {
            return false;
        }
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("provisionDiscovery")) {
                return false;
            }
            int targetMethod = wpsInfoToConfigMethod(config.wps.setup);
            if (targetMethod == -1) {
                Log.e(TAG, "Unrecognized WPS configuration method: " + config.wps.setup);
                return false;
            }
            if (targetMethod == 1) {
                targetMethod = 2;
            } else if (targetMethod == 2) {
                targetMethod = 1;
            }
            if (config.deviceAddress == null) {
                Log.e(TAG, "Cannot parse null mac address.");
                return false;
            }
            try {
                byte[] macAddress = NativeUtil.macAddressToByteArray(config.deviceAddress);
                SupplicantResult<Void> result = new SupplicantResult<>("provisionDiscovery(" + config.deviceAddress + ", " + config.wps.setup + ")");
                try {
                    result.setResult(this.mISupplicantP2pIface.provisionDiscovery(macAddress, targetMethod));
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                    supplicantServiceDiedHandler();
                }
                return result.isSuccess();
            } catch (Exception e2) {
                Log.e(TAG, "Could not parse peer mac address.", e2);
                return false;
            }
        }
    }

    public boolean invite(WifiP2pGroup group, String peerAddress) {
        if (TextUtils.isEmpty(peerAddress)) {
            return false;
        }
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("invite")) {
                return false;
            }
            if (group == null) {
                Log.e(TAG, "Cannot invite to null group.");
                return false;
            }
            if (group.getOwner() == null) {
                Log.e(TAG, "Cannot invite to group with null owner.");
                return false;
            }
            if (group.getOwner().deviceAddress == null) {
                Log.e(TAG, "Group owner has no mac address.");
                return false;
            }
            try {
                byte[] ownerMacAddress = NativeUtil.macAddressToByteArray(group.getOwner().deviceAddress);
                if (peerAddress == null) {
                    Log.e(TAG, "Cannot parse peer mac address.");
                    return false;
                }
                try {
                    byte[] peerMacAddress = NativeUtil.macAddressToByteArray(peerAddress);
                    SupplicantResult<Void> result = new SupplicantResult<>("invite(" + group.getInterface() + ", " + group.getOwner().deviceAddress + ", " + peerAddress + ")");
                    try {
                        result.setResult(this.mISupplicantP2pIface.invite(group.getInterface(), ownerMacAddress, peerMacAddress));
                    } catch (RemoteException e) {
                        Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                        supplicantServiceDiedHandler();
                    }
                    return result.isSuccess();
                } catch (Exception e2) {
                    Log.e(TAG, "Peer mac address parse error.", e2);
                    return false;
                }
            } catch (Exception e3) {
                Log.e(TAG, "Group owner mac address parse error.", e3);
                return false;
            }
        }
    }

    public boolean reject(String peerAddress) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("reject")) {
                return false;
            }
            if (peerAddress == null) {
                Log.e(TAG, "Cannot parse rejected peer's mac address.");
                return false;
            }
            try {
                byte[] macAddress = NativeUtil.macAddressToByteArray(peerAddress);
                SupplicantResult<Void> result = new SupplicantResult<>("reject(" + peerAddress + ")");
                try {
                    result.setResult(this.mISupplicantP2pIface.reject(macAddress));
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                    supplicantServiceDiedHandler();
                }
                return result.isSuccess();
            } catch (Exception e2) {
                Log.e(TAG, "Could not parse peer mac address.", e2);
                return false;
            }
        }
    }

    public String getDeviceAddress() {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("getDeviceAddress")) {
                return null;
            }
            final SupplicantResult<String> result = new SupplicantResult<>("getDeviceAddress()");
            try {
                this.mISupplicantP2pIface.getDeviceAddress(new android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.getDeviceAddressCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$5r-qdzYsKC3GOtm8Y3bhkiYXJNA
                    @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.getDeviceAddressCallback
                    public final void onValues(SupplicantStatus supplicantStatus, byte[] bArr) {
                        SupplicantP2pIfaceHalEx.lambda$getDeviceAddress$7(result, supplicantStatus, bArr);
                    }
                });
                return result.getResult();
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
                return null;
            }
        }
    }

    static /* synthetic */ void lambda$getDeviceAddress$7(SupplicantResult result, SupplicantStatus status, byte[] address) {
        String parsedAddress = null;
        try {
            parsedAddress = NativeUtil.macAddressFromByteArray(address);
        } catch (Exception e) {
            Log.e(TAG, "Could not process reported address.", e);
        }
        result.setResult(status, parsedAddress);
    }

    public String getSsid(String address) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("getSsid")) {
                return null;
            }
            if (address == null) {
                Log.e(TAG, "Cannot parse peer mac address.");
                return null;
            }
            try {
                byte[] macAddress = NativeUtil.macAddressToByteArray(address);
                final SupplicantResult<String> result = new SupplicantResult<>("getSsid(" + address + ")");
                try {
                    this.mISupplicantP2pIface.getSsid(macAddress, new android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.getSsidCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$6SuVE3HtNDTZdL9DAjgBr3cCK34
                        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.getSsidCallback
                        public final void onValues(SupplicantStatus supplicantStatus, ArrayList arrayList) {
                            SupplicantP2pIfaceHalEx.lambda$getSsid$8(result, supplicantStatus, arrayList);
                        }
                    });
                    return result.getResult();
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                    supplicantServiceDiedHandler();
                    return null;
                }
            } catch (Exception e2) {
                Log.e(TAG, "Could not parse mac address.", e2);
                return null;
            }
        }
    }

    static /* synthetic */ void lambda$getSsid$8(SupplicantResult result, SupplicantStatus status, ArrayList ssid) {
        String ssidString = null;
        if (ssid != null) {
            try {
                ssidString = NativeUtil.removeEnclosingQuotes(NativeUtil.encodeSsid(ssid));
            } catch (Exception e) {
                Log.e(TAG, "Could not encode SSID.", e);
            }
        }
        result.setResult(status, ssidString);
    }

    public boolean reinvoke(int networkId, String peerAddress) {
        if (TextUtils.isEmpty(peerAddress) || networkId < 0) {
            return false;
        }
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("reinvoke")) {
                return false;
            }
            if (peerAddress == null) {
                Log.e(TAG, "Cannot parse peer mac address.");
                return false;
            }
            try {
                byte[] macAddress = NativeUtil.macAddressToByteArray(peerAddress);
                SupplicantResult<Void> result = new SupplicantResult<>("reinvoke(" + networkId + ", " + peerAddress + ")");
                try {
                    result.setResult(this.mISupplicantP2pIface.reinvoke(networkId, macAddress));
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                    supplicantServiceDiedHandler();
                }
                return result.isSuccess();
            } catch (Exception e2) {
                Log.e(TAG, "Could not parse mac address.", e2);
                return false;
            }
        }
    }

    public boolean groupAdd(int networkId, boolean isPersistent) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("groupAdd")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("groupAdd(" + networkId + ", " + isPersistent + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.addGroup(isPersistent, networkId));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean groupAdd(String networkName, String passphrase, boolean isPersistent, int freq, String peerAddress, boolean join) throws Exception {
        synchronized (this.mLock) {
            try {
                try {
                    if (!checkSupplicantP2pIfaceAndLogFailureV1_2("groupAdd_1_2")) {
                        return false;
                    }
                    ArrayList<Byte> ssid = NativeUtil.decodeSsid("\"" + networkName + "\"");
                    try {
                        byte[] macAddress = NativeUtil.macAddressToByteArray(peerAddress);
                        ISupplicantP2pIface ifaceV12 = getP2pIfaceMockableV1_2();
                        StringBuilder sb = new StringBuilder();
                        sb.append("groupAdd(");
                        sb.append(networkName);
                        sb.append(", ");
                        sb.append(TextUtils.isEmpty(passphrase) ? "<Empty>" : "<Non-Empty>");
                        sb.append(", ");
                        try {
                            sb.append(isPersistent);
                            sb.append(", ");
                            try {
                                sb.append(freq);
                                sb.append(", ");
                                try {
                                    sb.append(peerAddress);
                                    sb.append(", ");
                                    sb.append(join);
                                    sb.append(")");
                                    SupplicantResult<Void> result = new SupplicantResult<>(sb.toString());
                                    try {
                                        result.setResult(ifaceV12.addGroup_1_2(ssid, passphrase, isPersistent, freq, macAddress, join));
                                    } catch (RemoteException e) {
                                        Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                                        supplicantServiceDiedHandler();
                                    }
                                    return result.isSuccess();
                                } catch (Throwable th) {
                                    e = th;
                                    throw e;
                                }
                            } catch (Throwable th2) {
                                e = th2;
                                throw e;
                            }
                        } catch (Throwable th3) {
                            e = th3;
                            throw e;
                        }
                    } catch (Exception e2) {
                        Log.e(TAG, "Could not parse mac address.", e2);
                        return false;
                    }
                } catch (Throwable th4) {
                    e = th4;
                    throw e;
                }
            } catch (Throwable th5) {
                e = th5;
            }
        }
    }

    public boolean groupAdd(boolean isPersistent) {
        return groupAdd(-1, isPersistent);
    }

    public boolean groupRemove(String groupName) {
        if (TextUtils.isEmpty(groupName)) {
            return false;
        }
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("groupRemove")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("groupRemove(" + groupName + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.removeGroup(groupName));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public int getGroupCapability(String peerAddress) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("getGroupCapability")) {
                return -1;
            }
            if (peerAddress == null) {
                Log.e(TAG, "Cannot parse peer mac address.");
                return -1;
            }
            try {
                byte[] macAddress = NativeUtil.macAddressToByteArray(peerAddress);
                final SupplicantResult<Integer> capability = new SupplicantResult<>("getGroupCapability(" + peerAddress + ")");
                try {
                    this.mISupplicantP2pIface.getGroupCapability(macAddress, new android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.getGroupCapabilityCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$esdmxaVJGFqlH9xKgzKi8bJXzxc
                        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.getGroupCapabilityCallback
                        public final void onValues(SupplicantStatus supplicantStatus, int i) {
                            capability.setResult(supplicantStatus, Integer.valueOf(i));
                        }
                    });
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                    supplicantServiceDiedHandler();
                }
                if (!capability.isSuccess()) {
                    return -1;
                }
                return capability.getResult().intValue();
            } catch (Exception e2) {
                Log.e(TAG, "Could not parse group address.", e2);
                return -1;
            }
        }
    }

    public boolean configureExtListen(boolean enable, int periodInMillis, int intervalInMillis) {
        if (enable && intervalInMillis < periodInMillis) {
            return false;
        }
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("configureExtListen")) {
                return false;
            }
            if (!enable) {
                periodInMillis = 0;
                intervalInMillis = 0;
            }
            if (periodInMillis >= 0 && intervalInMillis >= 0) {
                SupplicantResult<Void> result = new SupplicantResult<>("configureExtListen(" + periodInMillis + ", " + intervalInMillis + ")");
                try {
                    result.setResult(this.mISupplicantP2pIface.configureExtListen(periodInMillis, intervalInMillis));
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                    supplicantServiceDiedHandler();
                }
                return result.isSuccess();
            }
            Log.e(TAG, "Invalid parameters supplied to configureExtListen: " + periodInMillis + ", " + intervalInMillis);
            return false;
        }
    }

    public boolean setListenChannel(int listenChannel, int operatingChannel) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("setListenChannel")) {
                return false;
            }
            if (listenChannel >= 1 && listenChannel <= 11) {
                SupplicantResult<Void> result = new SupplicantResult<>("setListenChannel(" + listenChannel + ", 81)");
                try {
                    result.setResult(this.mISupplicantP2pIface.setListenChannel(listenChannel, 81));
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                    supplicantServiceDiedHandler();
                }
                if (!result.isSuccess()) {
                    return false;
                }
            } else if (listenChannel != 0) {
                return false;
            }
            if (operatingChannel < 0 || operatingChannel > 165) {
                return false;
            }
            ArrayList<android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.FreqRange> ranges = new ArrayList<>();
            if (operatingChannel >= 1 && operatingChannel <= 165) {
                int freq = (operatingChannel <= 14 ? 2407 : 5000) + (operatingChannel * 5);
                android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.FreqRange range1 = new android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.FreqRange();
                range1.min = 1000;
                range1.max = freq - 5;
                android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.FreqRange range2 = new android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.FreqRange();
                range2.min = freq + 5;
                range2.max = 6000;
                ranges.add(range1);
                ranges.add(range2);
            }
            SupplicantResult<Void> result2 = new SupplicantResult<>("setDisallowedFrequencies(" + ranges + ")");
            try {
                result2.setResult(this.mISupplicantP2pIface.setDisallowedFrequencies(ranges));
            } catch (RemoteException e2) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e2);
                supplicantServiceDiedHandler();
            }
            return result2.isSuccess();
        }
    }

    public boolean serviceAdd(WifiP2pServiceInfo servInfo) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("serviceAdd")) {
                return false;
            }
            if (servInfo == null) {
                Log.e(TAG, "Null service info passed.");
                return false;
            }
            for (String s : servInfo.getSupplicantQueryList()) {
                if (s == null) {
                    Log.e(TAG, "Invalid service description (null).");
                    return false;
                }
                String[] data = s.split(" ");
                if (data.length < 3) {
                    Log.e(TAG, "Service specification invalid: " + s);
                    return false;
                }
                SupplicantResult<Void> result = null;
                try {
                    if ("upnp".equals(data[0])) {
                        try {
                            int version = Integer.parseInt(data[1], 16);
                            result = new SupplicantResult<>("addUpnpService(" + data[1] + ", " + data[2] + ")");
                            result.setResult(this.mISupplicantP2pIface.addUpnpService(version, data[2]));
                        } catch (NumberFormatException e) {
                            Log.e(TAG, "UPnP Service specification invalid: " + s, e);
                            return false;
                        }
                    } else {
                        if (!"bonjour".equals(data[0])) {
                            return false;
                        }
                        if (data[1] != null && data[2] != null) {
                            try {
                                ArrayList<Byte> request = NativeUtil.byteArrayToArrayList(NativeUtil.hexStringToByteArray(data[1]));
                                ArrayList<Byte> response = NativeUtil.byteArrayToArrayList(NativeUtil.hexStringToByteArray(data[2]));
                                result = new SupplicantResult<>("addBonjourService(" + data[1] + ", " + data[2] + ")");
                                result.setResult(this.mISupplicantP2pIface.addBonjourService(request, response));
                            } catch (Exception e2) {
                                Log.e(TAG, "Invalid bonjour service description.");
                                return false;
                            }
                        }
                    }
                } catch (RemoteException e3) {
                    Log.e(TAG, "ISupplicantP2pIface exception: " + e3);
                    supplicantServiceDiedHandler();
                }
                if (result != null && result.isSuccess()) {
                }
                return false;
            }
            return true;
        }
    }

    public boolean serviceRemove(WifiP2pServiceInfo servInfo) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("serviceRemove")) {
                return false;
            }
            if (servInfo == null) {
                Log.e(TAG, "Null service info passed.");
                return false;
            }
            for (String s : servInfo.getSupplicantQueryList()) {
                if (s == null) {
                    Log.e(TAG, "Invalid service description (null).");
                    return false;
                }
                String[] data = s.split(" ");
                if (data.length < 3) {
                    Log.e(TAG, "Service specification invalid: " + s);
                    return false;
                }
                SupplicantResult<Void> result = null;
                try {
                    if ("upnp".equals(data[0])) {
                        try {
                            int version = Integer.parseInt(data[1], 16);
                            result = new SupplicantResult<>("removeUpnpService(" + data[1] + ", " + data[2] + ")");
                            result.setResult(this.mISupplicantP2pIface.removeUpnpService(version, data[2]));
                            if (result == null && result.isSuccess()) {
                            }
                            return false;
                        } catch (NumberFormatException e) {
                            Log.e(TAG, "UPnP Service specification invalid: " + s, e);
                            return false;
                        }
                    }
                    if ("bonjour".equals(data[0])) {
                        if (data[1] != null) {
                            try {
                                ArrayList<Byte> request = NativeUtil.byteArrayToArrayList(NativeUtil.hexStringToByteArray(data[1]));
                                result = new SupplicantResult<>("removeBonjourService(" + data[1] + ")");
                                result.setResult(this.mISupplicantP2pIface.removeBonjourService(request));
                            } catch (Exception e2) {
                                Log.e(TAG, "Invalid bonjour service description.");
                                return false;
                            }
                        }
                        if (result == null) {
                        }
                        return false;
                    }
                    Log.e(TAG, "Unknown / unsupported P2P service requested: " + data[0]);
                    return false;
                } catch (RemoteException e3) {
                    Log.e(TAG, "ISupplicantP2pIface exception: " + e3);
                    supplicantServiceDiedHandler();
                }
            }
            return true;
        }
    }

    public String requestServiceDiscovery(String peerAddress, String query) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("requestServiceDiscovery")) {
                return null;
            }
            if (peerAddress == null) {
                Log.e(TAG, "Cannot parse peer mac address.");
                return null;
            }
            try {
                byte[] macAddress = NativeUtil.macAddressToByteArray(peerAddress);
                if (query == null) {
                    Log.e(TAG, "Cannot parse service discovery query: " + query);
                    return null;
                }
                try {
                    ArrayList<Byte> binQuery = NativeUtil.byteArrayToArrayList(NativeUtil.hexStringToByteArray(query));
                    final SupplicantResult<Long> result = new SupplicantResult<>("requestServiceDiscovery(" + peerAddress + ", " + query + ")");
                    try {
                        this.mISupplicantP2pIface.requestServiceDiscovery(macAddress, binQuery, new android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.requestServiceDiscoveryCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$x0IBzgCcizJYbfpii3qDGTASFfA
                            @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.requestServiceDiscoveryCallback
                            public final void onValues(SupplicantStatus supplicantStatus, long j) {
                                result.setResult(supplicantStatus, new Long(j));
                            }
                        });
                    } catch (RemoteException e) {
                        Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                        supplicantServiceDiedHandler();
                    }
                    Long value = result.getResult();
                    if (value == null) {
                        return null;
                    }
                    return value.toString();
                } catch (Exception e2) {
                    Log.e(TAG, "Could not parse service query.", e2);
                    return null;
                }
            } catch (Exception e3) {
                Log.e(TAG, "Could not process peer MAC address.", e3);
                return null;
            }
        }
    }

    public boolean cancelServiceDiscovery(String identifier) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("cancelServiceDiscovery")) {
                return false;
            }
            if (identifier == null) {
                Log.e(TAG, "cancelServiceDiscovery requires a valid tag.");
                return false;
            }
            try {
                long id = Long.parseLong(identifier);
                SupplicantResult<Void> result = new SupplicantResult<>("cancelServiceDiscovery(" + identifier + ")");
                try {
                    result.setResult(this.mISupplicantP2pIface.cancelServiceDiscovery(id));
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                    supplicantServiceDiedHandler();
                }
                return result.isSuccess();
            } catch (NumberFormatException e2) {
                Log.e(TAG, "Service discovery identifier invalid: " + identifier, e2);
                return false;
            }
        }
    }

    public boolean setMiracastMode(int mode) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("setMiracastMode")) {
                return false;
            }
            byte targetMode = 0;
            if (mode == 1) {
                targetMode = 1;
            } else if (mode == 2) {
                targetMode = 2;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("setMiracastMode(" + mode + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.setMiracastMode(targetMode));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean startWpsPbc(String groupIfName, String bssid) {
        if (TextUtils.isEmpty(groupIfName)) {
            Log.e(TAG, "Group name required when requesting WPS PBC. Got (" + groupIfName + ")");
            return false;
        }
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("startWpsPbc")) {
                return false;
            }
            try {
                byte[] macAddress = NativeUtil.macAddressToByteArray(bssid);
                SupplicantResult<Void> result = new SupplicantResult<>("startWpsPbc(" + groupIfName + ", " + bssid + ")");
                try {
                    result.setResult(this.mISupplicantP2pIface.startWpsPbc(groupIfName, macAddress));
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                    supplicantServiceDiedHandler();
                }
                return result.isSuccess();
            } catch (Exception e2) {
                Log.e(TAG, "Could not parse BSSID.", e2);
                return false;
            }
        }
    }

    public boolean startWpsPinKeypad(String groupIfName, String pin) {
        if (TextUtils.isEmpty(groupIfName) || TextUtils.isEmpty(pin)) {
            return false;
        }
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("startWpsPinKeypad")) {
                return false;
            }
            if (groupIfName == null) {
                Log.e(TAG, "Group name required when requesting WPS KEYPAD.");
                return false;
            }
            if (pin == null) {
                Log.e(TAG, "PIN required when requesting WPS KEYPAD.");
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("startWpsPinKeypad(" + groupIfName + ", " + pin + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.startWpsPinKeypad(groupIfName, pin));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public String startWpsPinDisplay(String groupIfName, String bssid) {
        if (TextUtils.isEmpty(groupIfName)) {
            return null;
        }
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("startWpsPinDisplay")) {
                return null;
            }
            if (groupIfName == null) {
                Log.e(TAG, "Group name required when requesting WPS KEYPAD.");
                return null;
            }
            try {
                byte[] macAddress = NativeUtil.macAddressToByteArray(bssid);
                final SupplicantResult<String> result = new SupplicantResult<>("startWpsPinDisplay(" + groupIfName + ", " + bssid + ")");
                try {
                    this.mISupplicantP2pIface.startWpsPinDisplay(groupIfName, macAddress, new android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.startWpsPinDisplayCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$pg2sBPDCKxfMJAb4Fkg2eeV6Q-Q
                        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.startWpsPinDisplayCallback
                        public final void onValues(SupplicantStatus supplicantStatus, String str) {
                            result.setResult(supplicantStatus, str);
                        }
                    });
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                    supplicantServiceDiedHandler();
                }
                return result.getResult();
            } catch (Exception e2) {
                Log.e(TAG, "Could not parse BSSID.", e2);
                return null;
            }
        }
    }

    public boolean cancelWps(String groupIfName) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("cancelWps")) {
                return false;
            }
            if (groupIfName == null) {
                Log.e(TAG, "Group name required when requesting WPS KEYPAD.");
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("cancelWps(" + groupIfName + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.cancelWps(groupIfName));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean enableWfd(boolean enable) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("enableWfd")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("enableWfd(" + enable + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.enableWfd(enable));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean setWfdDeviceInfo(String info) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("setWfdDeviceInfo")) {
                return false;
            }
            if (info == null) {
                Log.e(TAG, "Cannot parse null WFD info string.");
                return false;
            }
            try {
                byte[] wfdInfo = NativeUtil.hexStringToByteArray(info);
                SupplicantResult<Void> result = new SupplicantResult<>("setWfdDeviceInfo(" + info + ")");
                try {
                    result.setResult(this.mISupplicantP2pIface.setWfdDeviceInfo(wfdInfo));
                } catch (RemoteException e) {
                    Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                    supplicantServiceDiedHandler();
                }
                return result.isSuccess();
            } catch (Exception e2) {
                Log.e(TAG, "Could not parse WFD Device Info string.");
                return false;
            }
        }
    }

    public boolean removeNetwork(int networkId) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("removeNetwork")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("removeNetwork(" + networkId + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.removeNetwork(networkId));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    private List<Integer> listNetworks() {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("listNetworks")) {
                return null;
            }
            final SupplicantResult<ArrayList> result = new SupplicantResult<>("listNetworks()");
            try {
                this.mISupplicantP2pIface.listNetworks(new ISupplicantIface.listNetworksCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$sVui63_brRVwa-UAUefiGkE1KsI
                    @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantIface.listNetworksCallback
                    public final void onValues(SupplicantStatus supplicantStatus, ArrayList arrayList) {
                        result.setResult(supplicantStatus, arrayList);
                    }
                });
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.getResult();
        }
    }

    private ISupplicantP2pNetwork getNetwork(int networkId) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("getNetwork")) {
                return null;
            }
            final SupplicantResult<ISupplicantNetwork> result = new SupplicantResult<>("getNetwork(" + networkId + ")");
            try {
                this.mISupplicantP2pIface.getNetwork(networkId, new ISupplicantIface.getNetworkCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$u45OR7gKlX756IV3P38DnHEquc0
                    @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantIface.getNetworkCallback
                    public final void onValues(SupplicantStatus supplicantStatus, ISupplicantNetwork iSupplicantNetwork) {
                        result.setResult(supplicantStatus, iSupplicantNetwork);
                    }
                });
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            if (result.getResult() == null) {
                Log.e(TAG, "getNetwork got null network");
                return null;
            }
            return getP2pNetworkMockable(result.getResult());
        }
    }

    public boolean loadGroups(WifiP2pGroupList groups) {
        synchronized (this.mLock) {
            try {
                if (!checkSupplicantP2pIfaceAndLogFailure("loadGroups")) {
                    return false;
                }
                List<Integer> networkIds = listNetworks();
                if (networkIds != null && !networkIds.isEmpty()) {
                    for (Integer networkId : networkIds) {
                        ISupplicantP2pNetwork network = getNetwork(networkId.intValue());
                        if (network == null) {
                            Log.e(TAG, "Failed to retrieve network object for " + networkId);
                        } else {
                            final SupplicantResult<Boolean> resultIsCurrent = new SupplicantResult<>("isCurrent(" + networkId + ")");
                            try {
                                network.isCurrent(new ISupplicantP2pNetwork.isCurrentCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$nB1NfZrU1CxVJYVc_3cdcrjLmSE
                                    @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantP2pNetwork.isCurrentCallback
                                    public final void onValues(SupplicantStatus supplicantStatus, boolean z) {
                                        resultIsCurrent.setResult(supplicantStatus, Boolean.valueOf(z));
                                    }
                                });
                            } catch (RemoteException e) {
                                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                                supplicantServiceDiedHandler();
                            }
                            if (!resultIsCurrent.isSuccess() || resultIsCurrent.getResult().booleanValue()) {
                                Log.i(TAG, "Skipping current network");
                            } else {
                                WifiP2pGroup group = new WifiP2pGroup();
                                group.setNetworkId(networkId.intValue());
                                final SupplicantResult<ArrayList> resultSsid = new SupplicantResult<>("getSsid(" + networkId + ")");
                                try {
                                    network.getSsid(new ISupplicantP2pNetwork.getSsidCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$OWsmOnJgaCdoy2rv8jo9fKASlAk
                                        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantP2pNetwork.getSsidCallback
                                        public final void onValues(SupplicantStatus supplicantStatus, ArrayList arrayList) {
                                            resultSsid.setResult(supplicantStatus, arrayList);
                                        }
                                    });
                                } catch (RemoteException e2) {
                                    Log.e(TAG, "ISupplicantP2pIface exception: " + e2);
                                    supplicantServiceDiedHandler();
                                }
                                if (resultSsid.isSuccess() && resultSsid.getResult() != null && !resultSsid.getResult().isEmpty()) {
                                    group.setNetworkName(NativeUtil.removeEnclosingQuotes(NativeUtil.encodeSsid(resultSsid.getResult())));
                                }
                                final SupplicantResult<byte[]> resultBssid = new SupplicantResult<>("getBssid(" + networkId + ")");
                                try {
                                    network.getBssid(new ISupplicantP2pNetwork.getBssidCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$au2dISQO5hZF-xcWf4rXcL5Cc_M
                                        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantP2pNetwork.getBssidCallback
                                        public final void onValues(SupplicantStatus supplicantStatus, byte[] bArr) {
                                            resultBssid.setResult(supplicantStatus, bArr);
                                        }
                                    });
                                } catch (RemoteException e3) {
                                    Log.e(TAG, "ISupplicantP2pIface exception: " + e3);
                                    supplicantServiceDiedHandler();
                                }
                                if (resultBssid.isSuccess() && !ArrayUtils.isEmpty(resultBssid.getResult())) {
                                    WifiP2pDevice device = new WifiP2pDevice();
                                    device.deviceAddress = NativeUtil.macAddressFromByteArray(resultBssid.getResult());
                                    group.setOwner(device);
                                }
                                final SupplicantResult<Boolean> resultIsGo = new SupplicantResult<>("isGo(" + networkId + ")");
                                try {
                                    network.isGo(new ISupplicantP2pNetwork.isGoCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$XQ6ilcTz7RG5uZ-f5XC0KnR8VhE
                                        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantP2pNetwork.isGoCallback
                                        public final void onValues(SupplicantStatus supplicantStatus, boolean z) {
                                            resultIsGo.setResult(supplicantStatus, Boolean.valueOf(z));
                                        }
                                    });
                                } catch (RemoteException e4) {
                                    Log.e(TAG, "ISupplicantP2pIface exception: " + e4);
                                    supplicantServiceDiedHandler();
                                }
                                if (resultIsGo.isSuccess()) {
                                    group.setIsGroupOwner(resultIsGo.getResult().booleanValue());
                                }
                                groups.add(group);
                            }
                        }
                    }
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean setWpsDeviceName(String name) {
        if (name == null) {
            return false;
        }
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("setWpsDeviceName")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("setWpsDeviceName(" + name + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.setWpsDeviceName(name));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean setWpsDeviceType(String typeStr) {
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
                synchronized (this.mLock) {
                    if (!checkSupplicantP2pIfaceAndLogFailure("setWpsDeviceType")) {
                        return false;
                    }
                    SupplicantResult<Void> result = new SupplicantResult<>("setWpsDeviceType(" + typeStr + ")");
                    try {
                        result.setResult(this.mISupplicantP2pIface.setWpsDeviceType(bytes));
                    } catch (RemoteException e) {
                        Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                        supplicantServiceDiedHandler();
                    }
                    return result.isSuccess();
                }
            }
            Log.e(TAG, "Malformed WPS device type " + typeStr);
            return false;
        } catch (IllegalArgumentException e2) {
            Log.e(TAG, "Illegal argument " + typeStr, e2);
            return false;
        }
    }

    public boolean setWpsConfigMethods(String configMethodsStr) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("setWpsConfigMethods")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("setWpsConfigMethods(" + configMethodsStr + ")");
            short configMethodsMask = 0;
            String[] configMethodsStrArr = configMethodsStr.split("\\s+");
            for (String str : configMethodsStrArr) {
                configMethodsMask = (short) (stringToWpsConfigMethod(str) | configMethodsMask);
            }
            try {
                result.setResult(this.mISupplicantP2pIface.setWpsConfigMethods(configMethodsMask));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public String getNfcHandoverRequest() {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("getNfcHandoverRequest")) {
                return null;
            }
            final SupplicantResult<ArrayList> result = new SupplicantResult<>("getNfcHandoverRequest()");
            try {
                this.mISupplicantP2pIface.createNfcHandoverRequestMessage(new android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.createNfcHandoverRequestMessageCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$-EYF_tFmopGhil_TGtH-HQRxDKg
                    @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.createNfcHandoverRequestMessageCallback
                    public final void onValues(SupplicantStatus supplicantStatus, ArrayList arrayList) {
                        result.setResult(supplicantStatus, arrayList);
                    }
                });
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            if (!result.isSuccess()) {
                return null;
            }
            return NativeUtil.hexStringFromByteArray(NativeUtil.byteArrayFromArrayList(result.getResult()));
        }
    }

    public String getNfcHandoverSelect() {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("getNfcHandoverSelect")) {
                return null;
            }
            final SupplicantResult<ArrayList> result = new SupplicantResult<>("getNfcHandoverSelect()");
            try {
                this.mISupplicantP2pIface.createNfcHandoverSelectMessage(new android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.createNfcHandoverSelectMessageCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$Gi8EjAjw3WfkkgicEtHfB86JL_4
                    @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantP2pIface.createNfcHandoverSelectMessageCallback
                    public final void onValues(SupplicantStatus supplicantStatus, ArrayList arrayList) {
                        result.setResult(supplicantStatus, arrayList);
                    }
                });
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            if (!result.isSuccess()) {
                return null;
            }
            return NativeUtil.hexStringFromByteArray(NativeUtil.byteArrayFromArrayList(result.getResult()));
        }
    }

    public boolean initiatorReportNfcHandover(String selectMessage) {
        if (selectMessage == null) {
            return false;
        }
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("initiatorReportNfcHandover")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("initiatorReportNfcHandover(" + selectMessage + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.reportNfcHandoverInitiation(NativeUtil.byteArrayToArrayList(NativeUtil.hexStringToByteArray(selectMessage))));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            } catch (IllegalArgumentException e2) {
                Log.e(TAG, "Illegal argument " + selectMessage, e2);
                return false;
            }
            return result.isSuccess();
        }
    }

    public boolean responderReportNfcHandover(String requestMessage) {
        if (requestMessage == null) {
            return false;
        }
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("responderReportNfcHandover")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("responderReportNfcHandover(" + requestMessage + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.reportNfcHandoverResponse(NativeUtil.byteArrayToArrayList(NativeUtil.hexStringToByteArray(requestMessage))));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            } catch (IllegalArgumentException e2) {
                Log.e(TAG, "Illegal argument " + requestMessage, e2);
                return false;
            }
            return result.isSuccess();
        }
    }

    public boolean setClientList(int networkId, String clientListStr) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("setClientList")) {
                return false;
            }
            if (TextUtils.isEmpty(clientListStr)) {
                Log.e(TAG, "Invalid client list");
                return false;
            }
            ISupplicantP2pNetwork network = getNetwork(networkId);
            if (network == null) {
                Log.e(TAG, "Invalid network id ");
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("setClientList(" + networkId + ", " + clientListStr + ")");
            try {
                ArrayList<byte[]> clients = new ArrayList<>();
                for (String clientStr : Arrays.asList(clientListStr.split("\\s+"))) {
                    clients.add(NativeUtil.macAddressToByteArray(clientStr));
                }
                result.setResult(network.setClientList(clients));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            } catch (IllegalArgumentException e2) {
                Log.e(TAG, "Illegal argument " + clientListStr, e2);
                return false;
            }
            return result.isSuccess();
        }
    }

    public String getClientList(int networkId) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("getClientList")) {
                return null;
            }
            ISupplicantP2pNetwork network = getNetwork(networkId);
            if (network == null) {
                Log.e(TAG, "Invalid network id ");
                return null;
            }
            final SupplicantResult<ArrayList> result = new SupplicantResult<>("getClientList(" + networkId + ")");
            try {
                network.getClientList(new ISupplicantP2pNetwork.getClientListCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$jRrduLaP9WlUszPzgvEXMJhKSv4
                    @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantP2pNetwork.getClientListCallback
                    public final void onValues(SupplicantStatus supplicantStatus, ArrayList arrayList) {
                        result.setResult(supplicantStatus, arrayList);
                    }
                });
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            if (!result.isSuccess()) {
                return null;
            }
            ArrayList<byte[]> clients = result.getResult();
            return (String) clients.stream().map($$Lambda$22Qhg7RQJlXihi83tqGgsfFMs.INSTANCE).collect(Collectors.joining(" "));
        }
    }

    public boolean saveConfig() {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("saveConfig")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("saveConfig()");
            try {
                result.setResult(this.mISupplicantP2pIface.saveConfig());
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean setMacRandomization(boolean enable) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailureV1_2("setMacRandomization")) {
                return false;
            }
            ISupplicantP2pIface ifaceV12 = getP2pIfaceMockableV1_2();
            SupplicantResult<Void> result = new SupplicantResult<>("setMacRandomization(" + enable + ")");
            try {
                result.setResult(ifaceV12.setMacRandomization(enable));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public boolean setParamToP2pSupplicant(String key, String value) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("setParamToP2pSupplicant")) {
                return false;
            }
            SupplicantResult<Void> result = new SupplicantResult<>("setParamToP2pSupplicant(" + key + ", " + value + ")");
            try {
                result.setResult(this.mISupplicantP2pIface.setParamToP2pSupplicant(key, value));
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            return result.isSuccess();
        }
    }

    public int getParamToP2pSupplicant(String key) {
        synchronized (this.mLock) {
            if (!checkSupplicantP2pIfaceAndLogFailure("getParamToP2pSupplicant")) {
                return -1;
            }
            final SupplicantResult<Integer> result = new SupplicantResult<>("getParamToP2pSupplicant(" + key + ")");
            try {
                this.mISupplicantP2pIface.getParamToP2pSupplicant(key, new ISupplicantP2pIface.getParamToP2pSupplicantCallback() { // from class: com.android.server.wifi.p2p.-$$Lambda$SupplicantP2pIfaceHalEx$RRet1Mpq7V_I9dNlRsJLCBszmyY
                    @Override // vendor.sprd.hardware.wifi.supplicant.V1_2.ISupplicantP2pIface.getParamToP2pSupplicantCallback
                    public final void onValues(SupplicantStatus supplicantStatus, int i) {
                        result.setResult(supplicantStatus, Integer.valueOf(i));
                    }
                });
            } catch (RemoteException e) {
                Log.e(TAG, "ISupplicantP2pIface exception: " + e);
                supplicantServiceDiedHandler();
            }
            if (!result.isSuccess()) {
                return -1;
            }
            return result.getResult().intValue();
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
    static class SupplicantResult<E> {
        private String mMethodName;
        private SupplicantStatus mStatus = null;
        private E mValue = null;

        SupplicantResult(String methodName) {
            this.mMethodName = methodName;
            SupplicantP2pIfaceHalEx.logd("entering " + this.mMethodName);
        }

        public void setResult(SupplicantStatus status, E value) {
            SupplicantP2pIfaceHalEx.logCompletion(this.mMethodName, status);
            SupplicantP2pIfaceHalEx.logd("leaving " + this.mMethodName + " with result = " + value);
            this.mStatus = status;
            this.mValue = value;
        }

        public void setResult(SupplicantStatus status) {
            SupplicantP2pIfaceHalEx.logCompletion(this.mMethodName, status);
            SupplicantP2pIfaceHalEx.logd("leaving " + this.mMethodName);
            this.mStatus = status;
        }

        public boolean isSuccess() {
            SupplicantStatus supplicantStatus = this.mStatus;
            return supplicantStatus != null && (supplicantStatus.code == 0 || this.mStatus.code == 5);
        }

        public E getResult() {
            if (isSuccess()) {
                return this.mValue;
            }
            return null;
        }
    }
}
