package com.android.server.wifi.aware;

import android.app.AppOpsManager;
import android.content.Context;
import android.database.ContentObserver;
import android.net.wifi.aware.Characteristics;
import android.net.wifi.aware.DiscoverySession;
import android.net.wifi.aware.IWifiAwareDiscoverySessionCallback;
import android.net.wifi.aware.IWifiAwareMacAddressProvider;
import android.net.wifi.aware.IWifiAwareManager;
import android.net.wifi.aware.PublishConfig;
import android.net.wifi.aware.SubscribeConfig;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.provider.Settings;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.android.server.wifi.Clock;
import com.android.server.wifi.FrameworkFacade;
import com.android.server.wifi.WifiInjector;
import com.android.server.wifi.util.WifiPermissionsUtil;
import com.android.server.wifi.util.WifiPermissionsWrapper;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WifiAwareServiceImpl extends IWifiAwareManager.Stub {
    private static final String TAG = "WifiAwareService";
    private static final boolean VDBG = false;
    private AppOpsManager mAppOps;
    private Context mContext;
    private WifiAwareShellCommand mShellCommand;
    private WifiAwareStateManager mStateManager;
    private WifiPermissionsUtil mWifiPermissionsUtil;
    boolean mDbg = false;
    private final Object mLock = new Object();
    private final SparseArray<IBinder.DeathRecipient> mDeathRecipientsByClientId = new SparseArray<>();
    private int mNextClientId = 1;
    private final SparseIntArray mUidByClientId = new SparseIntArray();

    public WifiAwareServiceImpl(Context context) {
        this.mContext = context.getApplicationContext();
        this.mAppOps = (AppOpsManager) context.getSystemService("appops");
    }

    public int getMockableCallingUid() {
        return getCallingUid();
    }

    public void start(HandlerThread handlerThread, final WifiAwareStateManager awareStateManager, WifiAwareShellCommand awareShellCommand, WifiAwareMetrics awareMetrics, WifiPermissionsUtil wifiPermissionsUtil, WifiPermissionsWrapper permissionsWrapper, final FrameworkFacade frameworkFacade, final WifiAwareNativeManager wifiAwareNativeManager, final WifiAwareNativeApi wifiAwareNativeApi, final WifiAwareNativeCallback wifiAwareNativeCallback) {
        Log.i(TAG, "Starting Wi-Fi Aware service");
        this.mWifiPermissionsUtil = wifiPermissionsUtil;
        this.mStateManager = awareStateManager;
        this.mShellCommand = awareShellCommand;
        this.mStateManager.start(this.mContext, handlerThread.getLooper(), awareMetrics, wifiPermissionsUtil, permissionsWrapper, new Clock());
        frameworkFacade.registerContentObserver(this.mContext, Settings.Global.getUriFor("wifi_verbose_logging_enabled"), true, new ContentObserver(new Handler(handlerThread.getLooper())) { // from class: com.android.server.wifi.aware.WifiAwareServiceImpl.1
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                WifiAwareServiceImpl wifiAwareServiceImpl = WifiAwareServiceImpl.this;
                wifiAwareServiceImpl.enableVerboseLogging(frameworkFacade.getIntegerSetting(wifiAwareServiceImpl.mContext, "wifi_verbose_logging_enabled", 0), awareStateManager, wifiAwareNativeManager, wifiAwareNativeApi, wifiAwareNativeCallback);
            }
        });
        enableVerboseLogging(frameworkFacade.getIntegerSetting(this.mContext, "wifi_verbose_logging_enabled", 0), awareStateManager, wifiAwareNativeManager, wifiAwareNativeApi, wifiAwareNativeCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enableVerboseLogging(int verbose, WifiAwareStateManager awareStateManager, WifiAwareNativeManager wifiAwareNativeManager, WifiAwareNativeApi wifiAwareNativeApi, WifiAwareNativeCallback wifiAwareNativeCallback) {
        boolean dbg;
        if (verbose > 0) {
            dbg = true;
        } else {
            dbg = false;
        }
        this.mDbg = dbg;
        awareStateManager.mDbg = dbg;
        if (awareStateManager.mDataPathMgr != null) {
            awareStateManager.mDataPathMgr.mDbg = dbg;
            WifiInjector.getInstance().getWifiMetrics().getWifiAwareMetrics().mDbg = dbg;
        }
        wifiAwareNativeCallback.mDbg = dbg;
        wifiAwareNativeManager.mDbg = dbg;
        wifiAwareNativeApi.mDbg = dbg;
    }

    public void startLate() {
        Log.i(TAG, "Late initialization of Wi-Fi Aware service");
        this.mStateManager.startLate();
    }

    public boolean isUsageEnabled() {
        enforceAccessPermission();
        return this.mStateManager.isUsageEnabled();
    }

    public Characteristics getCharacteristics() {
        enforceAccessPermission();
        if (this.mStateManager.getCapabilities() == null) {
            return null;
        }
        return this.mStateManager.getCapabilities().toPublicCharacteristics();
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00b1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void connect(final android.os.IBinder r20, java.lang.String r21, android.net.wifi.aware.IWifiAwareEventCallback r22, android.net.wifi.aware.ConfigRequest r23, boolean r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wifi.aware.WifiAwareServiceImpl.connect(android.os.IBinder, java.lang.String, android.net.wifi.aware.IWifiAwareEventCallback, android.net.wifi.aware.ConfigRequest, boolean):void");
    }

    public void disconnect(int clientId, IBinder binder) {
        enforceAccessPermission();
        enforceChangePermission();
        int uid = getMockableCallingUid();
        enforceClientValidity(uid, clientId);
        if (this.mDbg) {
            Log.v(TAG, "disconnect: uid=" + uid + ", clientId=" + clientId);
        }
        if (binder == null) {
            throw new IllegalArgumentException("Binder must not be null");
        }
        synchronized (this.mLock) {
            IBinder.DeathRecipient dr = this.mDeathRecipientsByClientId.get(clientId);
            if (dr != null) {
                binder.unlinkToDeath(dr, 0);
                this.mDeathRecipientsByClientId.delete(clientId);
            }
            this.mUidByClientId.delete(clientId);
        }
        this.mStateManager.disconnect(clientId);
    }

    public void terminateSession(int clientId, int sessionId) {
        enforceAccessPermission();
        enforceChangePermission();
        int uid = getMockableCallingUid();
        enforceClientValidity(uid, clientId);
        this.mStateManager.terminateSession(clientId, sessionId);
    }

    public void publish(String callingPackage, int clientId, PublishConfig publishConfig, IWifiAwareDiscoverySessionCallback callback) {
        enforceAccessPermission();
        enforceChangePermission();
        int uid = getMockableCallingUid();
        this.mAppOps.checkPackage(uid, callingPackage);
        enforceLocationPermission(callingPackage, getMockableCallingUid());
        if (callback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        if (publishConfig == null) {
            throw new IllegalArgumentException("PublishConfig must not be null");
        }
        publishConfig.assertValid(this.mStateManager.getCharacteristics(), this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.rtt"));
        enforceClientValidity(uid, clientId);
        this.mStateManager.publish(clientId, publishConfig, callback);
    }

    public void updatePublish(int clientId, int sessionId, PublishConfig publishConfig) {
        enforceAccessPermission();
        enforceChangePermission();
        if (publishConfig == null) {
            throw new IllegalArgumentException("PublishConfig must not be null");
        }
        publishConfig.assertValid(this.mStateManager.getCharacteristics(), this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.rtt"));
        int uid = getMockableCallingUid();
        enforceClientValidity(uid, clientId);
        this.mStateManager.updatePublish(clientId, sessionId, publishConfig);
    }

    public void subscribe(String callingPackage, int clientId, SubscribeConfig subscribeConfig, IWifiAwareDiscoverySessionCallback callback) {
        enforceAccessPermission();
        enforceChangePermission();
        int uid = getMockableCallingUid();
        this.mAppOps.checkPackage(uid, callingPackage);
        enforceLocationPermission(callingPackage, getMockableCallingUid());
        if (callback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        if (subscribeConfig == null) {
            throw new IllegalArgumentException("SubscribeConfig must not be null");
        }
        subscribeConfig.assertValid(this.mStateManager.getCharacteristics(), this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.rtt"));
        enforceClientValidity(uid, clientId);
        this.mStateManager.subscribe(clientId, subscribeConfig, callback);
    }

    public void updateSubscribe(int clientId, int sessionId, SubscribeConfig subscribeConfig) {
        enforceAccessPermission();
        enforceChangePermission();
        if (subscribeConfig == null) {
            throw new IllegalArgumentException("SubscribeConfig must not be null");
        }
        subscribeConfig.assertValid(this.mStateManager.getCharacteristics(), this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi.rtt"));
        int uid = getMockableCallingUid();
        enforceClientValidity(uid, clientId);
        this.mStateManager.updateSubscribe(clientId, sessionId, subscribeConfig);
    }

    public void sendMessage(int clientId, int sessionId, int peerId, byte[] message, int messageId, int retryCount) {
        enforceAccessPermission();
        enforceChangePermission();
        if (retryCount != 0) {
            enforceNetworkStackPermission();
        }
        if (message != null && message.length > this.mStateManager.getCharacteristics().getMaxServiceSpecificInfoLength()) {
            throw new IllegalArgumentException("Message length longer than supported by device characteristics");
        }
        if (retryCount < 0 || retryCount > DiscoverySession.getMaxSendRetryCount()) {
            throw new IllegalArgumentException("Invalid 'retryCount' must be non-negative and <= DiscoverySession.MAX_SEND_RETRY_COUNT");
        }
        int uid = getMockableCallingUid();
        enforceClientValidity(uid, clientId);
        this.mStateManager.sendMessage(clientId, sessionId, peerId, message, messageId, retryCount);
    }

    public void requestMacAddresses(int uid, List peerIds, IWifiAwareMacAddressProvider callback) {
        enforceNetworkStackPermission();
        this.mStateManager.requestMacAddresses(uid, peerIds, callback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
        this.mShellCommand.exec(this, in, out, err, args, callback, resultReceiver);
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.DUMP") != 0) {
            pw.println("Permission Denial: can't dump WifiAwareService from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
            return;
        }
        pw.println("Wi-Fi Aware Service");
        synchronized (this.mLock) {
            pw.println("  mNextClientId: " + this.mNextClientId);
            pw.println("  mDeathRecipientsByClientId: " + this.mDeathRecipientsByClientId);
            pw.println("  mUidByClientId: " + this.mUidByClientId);
        }
        this.mStateManager.dump(fd, pw, args);
    }

    private void enforceClientValidity(int uid, int clientId) {
        synchronized (this.mLock) {
            int uidIndex = this.mUidByClientId.indexOfKey(clientId);
            if (uidIndex < 0 || this.mUidByClientId.valueAt(uidIndex) != uid) {
                throw new SecurityException("Attempting to use invalid uid+clientId mapping: uid=" + uid + ", clientId=" + clientId);
            }
        }
    }

    private void enforceAccessPermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE", TAG);
    }

    private void enforceChangePermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.CHANGE_WIFI_STATE", TAG);
    }

    private void enforceLocationPermission(String callingPackage, int uid) {
        this.mWifiPermissionsUtil.enforceLocationPermission(callingPackage, uid);
    }

    private void enforceNetworkStackPermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.NETWORK_STACK", TAG);
    }
}
