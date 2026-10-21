package com.android.server.wifi;

import android.R;
import android.content.Context;
import android.hardware.wifi.hostapd.V1_0.HostapdStatus;
import android.hardware.wifi.hostapd.V1_1.IHostapd;
import android.hardware.wifi.hostapd.V1_1.IHostapdCallback;
import android.hidl.manager.V1_0.IServiceManager;
import android.hidl.manager.V1_0.IServiceNotification;
import android.net.wifi.WifiConfiguration;
import android.os.Handler;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.util.Log;
import com.android.internal.annotations.VisibleForTesting;
import com.android.server.wifi.util.NativeUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.NoSuchElementException;
import javax.annotation.concurrent.ThreadSafe;
import vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapdCallbackEx;

/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class HostapdHal {

    @VisibleForTesting
    public static final String HAL_INSTANCE_NAME = "default";
    private static final String TAG = "HostapdHal";
    private final List<IHostapd.AcsChannelRange> mAcsChannelRanges;
    private WifiNative.HostapdDeathEventHandler mDeathEventHandler;
    private final boolean mEnableAcs;
    private final boolean mEnableIeee80211AC;
    private final Handler mEventHandler;
    private int mForcedApBand;
    private int mForcedApChannel;
    private HostapdDeathRecipient mHostapdDeathRecipient;
    private android.hardware.wifi.hostapd.V1_0.IHostapd mIHostapd;
    private ServiceManagerDeathRecipient mServiceManagerDeathRecipient;
    private final Object mLock = new Object();
    private boolean mVerboseLoggingEnabled = false;
    private boolean mForceApChannel = false;
    private IServiceManager mIServiceManager = null;
    private HashMap<String, WifiNative.SoftApListener> mSoftApListeners = new HashMap<>();
    private long mDeathRecipientCookie = 0;
    private final String AP_STA_CONNECTED_STR = "AP-STA-CONNECTED";
    private final String AP_STA_DISCONNECTED_STR = "AP-STA-DISCONNECTED";
    public String mInterfaceName = SystemProperties.get("wifi.interface", "wlan0");
    private final IServiceNotification mServiceNotificationCallback = new IServiceNotification.Stub() { // from class: com.android.server.wifi.HostapdHal.1
        public void onRegistration(String fqName, String name, boolean preexisting) {
            synchronized (HostapdHal.this.mLock) {
                if (HostapdHal.this.mVerboseLoggingEnabled) {
                    Log.i(HostapdHal.TAG, "IServiceNotification.onRegistration for: " + fqName + ", " + name + " preexisting=" + preexisting);
                }
                if (!HostapdHal.this.initHostapdService()) {
                    Log.e(HostapdHal.TAG, "initalizing IHostapd failed.");
                    HostapdHal.this.hostapdServiceDiedHandler(HostapdHal.this.mDeathRecipientCookie);
                } else {
                    Log.i(HostapdHal.TAG, "Completed initialization of IHostapd.");
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    class ServiceManagerDeathRecipient implements IHwBinder.DeathRecipient {
        private ServiceManagerDeathRecipient() {
        }

        public void serviceDied(final long cookie) {
            HostapdHal.this.mEventHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$HostapdHal$ServiceManagerDeathRecipient$aN_-IbolJT4zQFmZSkS03rhWzp4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$serviceDied$0$HostapdHal$ServiceManagerDeathRecipient(cookie);
                }
            });
        }

        public /* synthetic */ void lambda$serviceDied$0$HostapdHal$ServiceManagerDeathRecipient(long cookie) {
            synchronized (HostapdHal.this.mLock) {
                Log.w(HostapdHal.TAG, "IServiceManager died: cookie=" + cookie);
                HostapdHal.this.hostapdServiceDiedHandler(HostapdHal.this.mDeathRecipientCookie);
                HostapdHal.this.mIServiceManager = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class HostapdDeathRecipient implements IHwBinder.DeathRecipient {
        private HostapdDeathRecipient() {
        }

        public void serviceDied(final long cookie) {
            HostapdHal.this.mEventHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$HostapdHal$HostapdDeathRecipient$ib3KTtj8cq4L8rb11KtWrFxWIBI
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$serviceDied$0$HostapdHal$HostapdDeathRecipient(cookie);
                }
            });
        }

        public /* synthetic */ void lambda$serviceDied$0$HostapdHal$HostapdDeathRecipient(long cookie) {
            synchronized (HostapdHal.this.mLock) {
                Log.w(HostapdHal.TAG, "IHostapd/IHostapd died: cookie=" + cookie);
                HostapdHal.this.hostapdServiceDiedHandler(cookie);
            }
        }
    }

    public HostapdHal(Context context, Looper looper) {
        this.mEventHandler = new Handler(looper);
        this.mEnableAcs = context.getResources().getBoolean(R.bool.config_cecTvWakeOnOneTouchPlayEnabled_allowed);
        this.mEnableIeee80211AC = context.getResources().getBoolean(R.bool.config_cecTvWakeOnOneTouchPlayEnabled_default);
        this.mAcsChannelRanges = toAcsChannelRanges(context.getResources().getString(R.string.biometric_error_hw_unavailable));
        this.mServiceManagerDeathRecipient = new ServiceManagerDeathRecipient();
        this.mHostapdDeathRecipient = new HostapdDeathRecipient();
    }

    void enableVerboseLogging(boolean enable) {
        synchronized (this.mLock) {
            this.mVerboseLoggingEnabled = enable;
        }
    }

    private boolean isV1_1() {
        synchronized (this.mLock) {
            if (this.mIServiceManager == null) {
                Log.e(TAG, "isV1_1: called but mServiceManager is null!?");
                return false;
            }
            try {
                return this.mIServiceManager.getTransport(IHostapd.kInterfaceName, "default") != 0;
            } catch (RemoteException e) {
                Log.e(TAG, "Exception while operating on IServiceManager: " + e);
                handleRemoteException(e, "getTransport");
                return false;
            }
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
                    hostapdServiceDiedHandler(this.mDeathRecipientCookie);
                    this.mIServiceManager = null;
                    return false;
                }
                return true;
            } catch (RemoteException e) {
                Log.e(TAG, "IServiceManager.linkToDeath exception", e);
                this.mIServiceManager = null;
                return false;
            }
        }
    }

    public boolean initialize() {
        synchronized (this.mLock) {
            if (this.mVerboseLoggingEnabled) {
                Log.i(TAG, "Registering IHostapd service ready callback.");
            }
            this.mIHostapd = null;
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
                    Log.e(TAG, "linkToServiceManagerDeath failed");
                    return false;
                }
                if (this.mIServiceManager.registerForNotifications(android.hardware.wifi.hostapd.V1_0.IHostapd.kInterfaceName, "", this.mServiceNotificationCallback)) {
                    return true;
                }
                Log.e(TAG, "Failed to register for notifications to android.hardware.wifi.hostapd@1.0::IHostapd");
                this.mIServiceManager = null;
                return false;
            } catch (RemoteException e) {
                Log.e(TAG, "Exception while trying to register a listener for IHostapd service: " + e);
                hostapdServiceDiedHandler(this.mDeathRecipientCookie);
                this.mIServiceManager = null;
                return false;
            }
        }
    }

    private boolean linkToHostapdDeath() {
        synchronized (this.mLock) {
            if (this.mIHostapd == null) {
                return false;
            }
            try {
                android.hardware.wifi.hostapd.V1_0.IHostapd iHostapd = this.mIHostapd;
                HostapdDeathRecipient hostapdDeathRecipient = this.mHostapdDeathRecipient;
                long j = this.mDeathRecipientCookie + 1;
                this.mDeathRecipientCookie = j;
                if (!iHostapd.linkToDeath(hostapdDeathRecipient, j)) {
                    Log.wtf(TAG, "Error on linkToDeath on IHostapd");
                    hostapdServiceDiedHandler(this.mDeathRecipientCookie);
                    return false;
                }
                return true;
            } catch (RemoteException e) {
                Log.e(TAG, "IHostapd.linkToDeath exception", e);
                return false;
            }
        }
    }

    private boolean registerCallback(IHostapdCallback callback) {
        synchronized (this.mLock) {
            try {
                IHostapd iHostapdV1_1 = getHostapdMockableV1_1();
                if (iHostapdV1_1 == null) {
                    return false;
                }
                HostapdStatus status = iHostapdV1_1.registerCallback(callback);
                return checkStatusAndLogFailure(status, "registerCallback_1_1");
            } catch (RemoteException e) {
                handleRemoteException(e, "registerCallback_1_1");
                return false;
            }
        }
    }

    private boolean registerCallbackEx(IHostapdCallbackEx callback) {
        synchronized (this.mLock) {
            try {
                vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd iHostapdV1_1 = getHostapdMockableV1_1_Ex();
                if (iHostapdV1_1 == null) {
                    return false;
                }
                HostapdStatus status = iHostapdV1_1.registerCallbackEx(callback);
                return checkStatusAndLogFailure(status, "registerCallback_1_1");
            } catch (RemoteException e) {
                handleRemoteException(e, "registerCallback_1_1");
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean initHostapdService() {
        synchronized (this.mLock) {
            try {
                try {
                    try {
                        this.mIHostapd = getHostapdMockable();
                        if (this.mIHostapd == null) {
                            Log.e(TAG, "Got null IHostapd service. Stopping hostapd HIDL startup");
                            return false;
                        }
                        if (!linkToHostapdDeath()) {
                            this.mIHostapd = null;
                            return false;
                        }
                        if (isV1_1() && !registerCallback(new HostapdCallback())) {
                            this.mIHostapd = null;
                            return false;
                        }
                        if (isV1_1() && !registerCallbackEx(new HostapdCallbackEx())) {
                            this.mIHostapd = null;
                            return false;
                        }
                        return true;
                    } catch (RemoteException e) {
                        Log.e(TAG, "IHostapd.getService exception: " + e);
                        return false;
                    }
                } catch (NoSuchElementException e2) {
                    Log.e(TAG, "IHostapd.getService exception: " + e2);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void enableForceSoftApChannel(int forcedApChannel, int forcedApBand) {
        Log.d(TAG, "enableForceSoftApChannel(), forcedApChannel is " + forcedApChannel + ", and forcedApBand is " + forcedApBand);
        this.mForceApChannel = true;
        this.mForcedApChannel = forcedApChannel;
        this.mForcedApBand = forcedApBand;
    }

    void disableForceSoftApChannel() {
        this.mForceApChannel = false;
    }

    private static int getBandForForcedChannel(int forcedApBand) {
        if (forcedApBand == -1) {
            return 2;
        }
        if (forcedApBand == 0) {
            return 0;
        }
        if (forcedApBand == 1) {
            return 1;
        }
        throw new IllegalArgumentException();
    }

    public boolean addAccessPoint(String ifaceName, WifiConfiguration config, WifiNative.SoftApListener listener) {
        HostapdStatus status;
        synchronized (this.mLock) {
            android.hardware.wifi.hostapd.V1_0.IHostapd.IfaceParams ifaceParams = new android.hardware.wifi.hostapd.V1_0.IHostapd.IfaceParams();
            ifaceParams.ifaceName = ifaceName;
            ifaceParams.hwModeParams.enable80211N = true;
            ifaceParams.hwModeParams.enable80211AC = this.mEnableIeee80211AC;
            try {
                ifaceParams.channelParams.band = this.mForceApChannel ? getBandForForcedChannel(this.mForcedApBand) : getBand(config);
                if (this.mEnableAcs && !this.mForceApChannel) {
                    ifaceParams.channelParams.enableAcs = true;
                    ifaceParams.channelParams.acsShouldExcludeDfs = true;
                } else {
                    if (ifaceParams.channelParams.band == 2) {
                        Log.d(TAG, "ACS is not supported on this device, using 2.4 GHz band.");
                        ifaceParams.channelParams.band = 0;
                    }
                    ifaceParams.channelParams.enableAcs = false;
                    ifaceParams.channelParams.channel = this.mForceApChannel ? this.mForcedApChannel : config.apChannel;
                    Log.d(TAG, "addAccessPoint mForceApChannel is " + this.mForceApChannel + "and mForcedApChannel is " + this.mForcedApChannel);
                }
                vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd.NetworkParamsEx nwParams = new vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd.NetworkParamsEx();
                nwParams.networkParams.ssid.addAll(NativeUtil.stringToByteArrayListForSsid(config.SSID));
                nwParams.networkParams.isHidden = config.hiddenSSID;
                nwParams.networkParams.encryptionType = getEncryptionType(config);
                nwParams.networkParams.pskPassphrase = config.preSharedKey != null ? config.preSharedKey : "";
                nwParams.softApMaxNumSta = config.softApMaxNumSta;
                nwParams.macAddrAcl = config.macAddrAcl;
                if (!checkHostapdAndLogFailure("addAccessPoint")) {
                    return false;
                }
                try {
                    if (isV1_1()) {
                        IHostapd.IfaceParams ifaceParams1_1 = new IHostapd.IfaceParams();
                        ifaceParams1_1.V1_0 = ifaceParams;
                        if (this.mEnableAcs) {
                            ifaceParams1_1.channelParams.acsChannelRanges.addAll(this.mAcsChannelRanges);
                        }
                        vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd iHostapdV1_1 = getHostapdMockableV1_1_Ex();
                        if (iHostapdV1_1 == null) {
                            return false;
                        }
                        status = iHostapdV1_1.addAccessPointEx_1_1(ifaceParams1_1, nwParams);
                    } else {
                        android.hardware.wifi.hostapd.V1_0.IHostapd.NetworkParams nwParams1_0 = new android.hardware.wifi.hostapd.V1_0.IHostapd.NetworkParams();
                        status = this.mIHostapd.addAccessPoint(ifaceParams, nwParams1_0);
                    }
                    if (!checkStatusAndLogFailure(status, "addAccessPoint")) {
                        return false;
                    }
                    this.mSoftApListeners.put(ifaceName, listener);
                    return true;
                } catch (RemoteException e) {
                    handleRemoteException(e, "addAccessPoint");
                    return false;
                }
            } catch (IllegalArgumentException e2) {
                Log.e(TAG, "Unrecognized apBand " + config.apBand);
                return false;
            }
        }
    }

    public boolean removeAccessPoint(String ifaceName) {
        synchronized (this.mLock) {
            if (!checkHostapdAndLogFailure("removeAccessPoint")) {
                return false;
            }
            try {
                HostapdStatus status = this.mIHostapd.removeAccessPoint(ifaceName);
                if (!checkStatusAndLogFailure(status, "removeAccessPoint")) {
                    return false;
                }
                this.mSoftApListeners.remove(ifaceName);
                return true;
            } catch (RemoteException e) {
                handleRemoteException(e, "removeAccessPoint");
                return false;
            }
        }
    }

    public boolean registerDeathHandler(WifiNative.HostapdDeathEventHandler handler) {
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
            this.mIHostapd = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hostapdServiceDiedHandler(long cookie) {
        synchronized (this.mLock) {
            if (this.mDeathRecipientCookie != cookie) {
                Log.i(TAG, "Ignoring stale death recipient notification");
                return;
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
            z = this.mIHostapd != null;
        }
        return z;
    }

    public boolean startDaemon() {
        synchronized (this.mLock) {
            try {
                getHostapdMockable();
            } catch (RemoteException e) {
                Log.e(TAG, "Exception while trying to start hostapd: " + e);
                hostapdServiceDiedHandler(this.mDeathRecipientCookie);
                return false;
            } catch (NoSuchElementException e2) {
                Log.d(TAG, "Successfully triggered start of hostapd using HIDL");
            }
        }
        return true;
    }

    public void terminate() {
        synchronized (this.mLock) {
            if (checkHostapdAndLogFailure("terminate")) {
                try {
                    this.mIHostapd.terminate();
                } catch (RemoteException e) {
                    handleRemoteException(e, "terminate");
                }
            }
        }
    }

    @VisibleForTesting
    protected IServiceManager getServiceManagerMockable() throws RemoteException {
        IServiceManager service;
        synchronized (this.mLock) {
            service = IServiceManager.getService();
        }
        return service;
    }

    @VisibleForTesting
    protected android.hardware.wifi.hostapd.V1_0.IHostapd getHostapdMockable() throws RemoteException {
        android.hardware.wifi.hostapd.V1_0.IHostapd service;
        synchronized (this.mLock) {
            service = android.hardware.wifi.hostapd.V1_0.IHostapd.getService();
        }
        return service;
    }

    @VisibleForTesting
    protected IHostapd getHostapdMockableV1_1() throws RemoteException {
        IHostapd iHostapdCastFrom;
        synchronized (this.mLock) {
            try {
                try {
                    iHostapdCastFrom = IHostapd.castFrom((IHwInterface) this.mIHostapd);
                } catch (NoSuchElementException e) {
                    Log.e(TAG, "Failed to get IHostapd", e);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iHostapdCastFrom;
    }

    protected vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd getHostapdMockableV1_1_Ex() throws RemoteException {
        vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd iHostapdCastFrom;
        synchronized (this.mLock) {
            try {
                try {
                    iHostapdCastFrom = vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd.castFrom((IHwInterface) this.mIHostapd);
                } catch (NoSuchElementException e) {
                    Log.e(TAG, "Failed to get IHostapd", e);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iHostapdCastFrom;
    }

    private static int getEncryptionType(WifiConfiguration localConfig) {
        int authType = localConfig.getAuthType();
        if (authType == 0) {
            return 0;
        }
        if (authType == 1) {
            return 1;
        }
        if (authType == 4) {
            return 2;
        }
        return 0;
    }

    private static int getBand(WifiConfiguration localConfig) {
        int i = localConfig.apBand;
        if (i == -1) {
            return 2;
        }
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 1;
        }
        throw new IllegalArgumentException();
    }

    private List<IHostapd.AcsChannelRange> toAcsChannelRanges(String channelListStr) {
        ArrayList<IHostapd.AcsChannelRange> acsChannelRanges = new ArrayList<>();
        String[] channelRanges = channelListStr.split(",");
        for (String channelRange : channelRanges) {
            IHostapd.AcsChannelRange acsChannelRange = new IHostapd.AcsChannelRange();
            try {
                if (channelRange.contains("-")) {
                    String[] channels = channelRange.split("-");
                    if (channels.length != 2) {
                        Log.e(TAG, "Unrecognized channel range, length is " + channels.length);
                    } else {
                        int start = Integer.parseInt(channels[0]);
                        int end = Integer.parseInt(channels[1]);
                        if (start > end) {
                            Log.e(TAG, "Invalid channel range, from " + start + " to " + end);
                        } else {
                            acsChannelRange.start = start;
                            acsChannelRange.end = end;
                        }
                    }
                } else {
                    acsChannelRange.start = Integer.parseInt(channelRange);
                    acsChannelRange.end = acsChannelRange.start;
                }
                acsChannelRanges.add(acsChannelRange);
            } catch (NumberFormatException e) {
                Log.e(TAG, "Malformed channel value detected: " + e);
            }
        }
        return acsChannelRanges;
    }

    private boolean checkHostapdAndLogFailure(String methodStr) {
        synchronized (this.mLock) {
            if (this.mIHostapd == null) {
                Log.e(TAG, "Can't call " + methodStr + ", IHostapd is null");
                return false;
            }
            return true;
        }
    }

    private boolean checkStatusAndLogFailure(HostapdStatus status, String methodStr) {
        synchronized (this.mLock) {
            if (status.code != 0) {
                Log.e(TAG, "IHostapd." + methodStr + " failed: " + status.code + ", " + status.debugMessage);
                return false;
            }
            if (this.mVerboseLoggingEnabled) {
                Log.d(TAG, "IHostapd." + methodStr + " succeeded");
            }
            return true;
        }
    }

    private void handleRemoteException(RemoteException e, String methodStr) {
        synchronized (this.mLock) {
            hostapdServiceDiedHandler(this.mDeathRecipientCookie);
            Log.e(TAG, "IHostapd." + methodStr + " failed with exception", e);
        }
    }

    public boolean doHostapdBooleanCommand(String ifaceName, String cmd) {
        synchronized (this.mLock) {
            try {
                try {
                    vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd iHostapdV1_1 = getHostapdMockableV1_1_Ex();
                    if (iHostapdV1_1 == null) {
                        Log.d(TAG, "doHostapdBooleanCommand iHostapdV1_1 is null");
                        return false;
                    }
                    IHostapd.IfaceParams ifaceParams1_1 = new IHostapd.IfaceParams();
                    ifaceParams1_1.V1_0.ifaceName = ifaceName;
                    Log.e(TAG, "doHostapdBooleanCommand");
                    return iHostapdV1_1.doHostapdBooleanCommand(ifaceParams1_1, cmd);
                } catch (RemoteException e) {
                    handleRemoteException(e, "doHostapdBooleanCommand");
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int doHostapdIntCommand(String ifaceName, String cmd) {
        synchronized (this.mLock) {
            try {
                try {
                    vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd iHostapdV1_1 = getHostapdMockableV1_1_Ex();
                    if (iHostapdV1_1 == null) {
                        Log.d(TAG, "doHostapdIntCommand iHostapdV1_1 is null");
                        return 0;
                    }
                    IHostapd.IfaceParams ifaceParams1_1 = new IHostapd.IfaceParams();
                    ifaceParams1_1.V1_0.ifaceName = ifaceName;
                    Log.e(TAG, "doHostapdIntCommand");
                    return iHostapdV1_1.doHostapdIntCommand(ifaceParams1_1, cmd);
                } catch (RemoteException e) {
                    handleRemoteException(e, "doHostapdIntCommand");
                    return 0;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String doHostapdStringCommand(String ifaceName, String cmd) {
        synchronized (this.mLock) {
            try {
                try {
                    vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd iHostapdV1_1 = getHostapdMockableV1_1_Ex();
                    if (iHostapdV1_1 == null) {
                        Log.d(TAG, "doHostapdStringCommand iHostapdV1_1 is null");
                        return "fail";
                    }
                    IHostapd.IfaceParams ifaceParams1_1 = new IHostapd.IfaceParams();
                    ifaceParams1_1.V1_0.ifaceName = ifaceName;
                    Log.e(TAG, "doHostapdStringCommand");
                    String result = iHostapdV1_1.doHostapdStringCommand(ifaceParams1_1, cmd);
                    Log.e(TAG, "doHostapdStringCommand return " + result);
                    return result;
                } catch (RemoteException e) {
                    handleRemoteException(e, "doHostapdStringCommand");
                    return "fail";
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private class HostapdCallback extends IHostapdCallback.Stub {
        private HostapdCallback() {
        }

        @Override // android.hardware.wifi.hostapd.V1_1.IHostapdCallback
        public void onFailure(String ifaceName) {
            Log.w(HostapdHal.TAG, "Failure on iface " + ifaceName);
            WifiNative.SoftApListener listener = (WifiNative.SoftApListener) HostapdHal.this.mSoftApListeners.get(ifaceName);
            if (listener != null) {
                listener.onFailure();
            }
        }
    }

    private class HostapdCallbackEx extends IHostapdCallbackEx.Stub {
        private HostapdCallbackEx() {
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapdCallbackEx
        public void HostApEvents(String staEvent) {
            WifiNative.SoftApListener listener = (WifiNative.SoftApListener) HostapdHal.this.mSoftApListeners.get(HostapdHal.this.mInterfaceName);
            Log.e(HostapdHal.TAG, "call back :" + staEvent + ", listener= " + listener);
            String[] tokens = staEvent.split(" ");
            if (tokens[0].equals("AP-STA-CONNECTED")) {
                if (listener != null) {
                    Log.e(HostapdHal.TAG, "HostApEvents onSoftApConnectionEvent");
                    listener.onSoftApConnectionEvent(tokens[1]);
                    return;
                }
                return;
            }
            if (tokens[0].equals("AP-STA-DISCONNECTED") && listener != null) {
                listener.onSoftApDisconnectionEvent(tokens[1]);
            }
        }
    }
}
