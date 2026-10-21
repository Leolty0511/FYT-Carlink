package com.android.server.wifi;

import android.content.Context;
import android.net.wifi.IDppCallback;
import android.net.wifi.WifiConfiguration;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.WakeupMessage;

/* JADX INFO: loaded from: classes.dex */
public class DppManager {
    private static final int DPP_TIMEOUT_MS = 40000;
    private static final String DPP_TIMEOUT_TAG = "DppManager Request Timeout";
    private static final String TAG = "DppManager";
    private String mClientIfaceName;
    private final Clock mClock;
    private final Context mContext;
    private final DppMetrics mDppMetrics;

    @VisibleForTesting
    public WakeupMessage mDppTimeoutMessage;
    public Handler mHandler;
    private boolean mVerboseLoggingEnabled;
    WifiConfigManager mWifiConfigManager;
    private final WifiNative mWifiNative;
    private DppRequestInfo mDppRequestInfo = null;
    private final WifiNative.DppEventCallback mDppEventCallback = new AnonymousClass1();

    /* JADX INFO: renamed from: com.android.server.wifi.DppManager$1, reason: invalid class name */
    class AnonymousClass1 implements WifiNative.DppEventCallback {
        AnonymousClass1() {
        }

        @Override // com.android.server.wifi.WifiNative.DppEventCallback
        public void onSuccessConfigReceived(final WifiConfiguration newWifiConfiguration) {
            DppManager.this.mHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$DppManager$1$U0628k0SO9nbWXHcSqGqAv95C-s
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onSuccessConfigReceived$0$DppManager$1(newWifiConfiguration);
                }
            });
        }

        public /* synthetic */ void lambda$onSuccessConfigReceived$0$DppManager$1(WifiConfiguration newWifiConfiguration) {
            DppManager.this.onSuccessConfigReceived(newWifiConfiguration);
        }

        @Override // com.android.server.wifi.WifiNative.DppEventCallback
        public void onSuccessConfigSent() {
            DppManager.this.mHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$DppManager$1$gzH7DSbwfOFSmFq2EQgtaHGvPjU
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onSuccessConfigSent$1$DppManager$1();
                }
            });
        }

        public /* synthetic */ void lambda$onSuccessConfigSent$1$DppManager$1() {
            DppManager.this.onSuccessConfigSent();
        }

        @Override // com.android.server.wifi.WifiNative.DppEventCallback
        public void onProgress(final int dppStatusCode) {
            DppManager.this.mHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$DppManager$1$bfS4BUNqu7nHS4nxpvnMnB3JANY
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onProgress$2$DppManager$1(dppStatusCode);
                }
            });
        }

        public /* synthetic */ void lambda$onProgress$2$DppManager$1(int dppStatusCode) {
            DppManager.this.onProgress(dppStatusCode);
        }

        @Override // com.android.server.wifi.WifiNative.DppEventCallback
        public void onFailure(final int dppStatusCode) {
            DppManager.this.mHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$DppManager$1$k1zNvwoENkp4S8I6iGFLib2dDKI
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onFailure$3$DppManager$1(dppStatusCode);
                }
            });
        }

        public /* synthetic */ void lambda$onFailure$3$DppManager$1(int dppStatusCode) {
            DppManager.this.onFailure(dppStatusCode);
        }
    }

    DppManager(Looper looper, WifiNative wifiNative, WifiConfigManager wifiConfigManager, Context context, DppMetrics dppMetrics) {
        this.mDppTimeoutMessage = null;
        this.mHandler = new Handler(looper);
        this.mWifiNative = wifiNative;
        this.mWifiConfigManager = wifiConfigManager;
        this.mWifiNative.registerDppEventCallback(this.mDppEventCallback);
        this.mContext = context;
        this.mClock = new Clock();
        this.mDppMetrics = dppMetrics;
        this.mDppTimeoutMessage = new WakeupMessage(this.mContext, this.mHandler, DPP_TIMEOUT_TAG, new Runnable() { // from class: com.android.server.wifi.-$$Lambda$DppManager$J9Orgg4nAdvBMsVtJK-uYWJzo2s
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0$DppManager();
            }
        });
    }

    private static String encodeStringToHex(String str) {
        if (str.length() > 1 && str.charAt(0) == '\"' && str.charAt(str.length() - 1) == '\"') {
            char[] charsArray = str.substring(1, str.length() - 1).toCharArray();
            StringBuffer hexBuffer = new StringBuffer();
            for (char c : charsArray) {
                hexBuffer.append(Integer.toHexString(c));
            }
            return hexBuffer.toString();
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: timeoutDppRequest, reason: merged with bridge method [inline-methods] */
    public void lambda$new$0$DppManager() {
        logd("DPP timeout");
        if (this.mDppRequestInfo == null) {
            Log.e(TAG, "DPP timeout with no request info");
            return;
        }
        if (!this.mWifiNative.stopDppInitiator(this.mClientIfaceName)) {
            Log.e(TAG, "Failed to stop DPP Initiator");
        }
        onFailure(5);
    }

    public void startDppAsConfiguratorInitiator(int uid, IBinder binder, String enrolleeUri, int selectedNetworkId, int enrolleeNetworkRole, IDppCallback callback) {
        String password;
        int securityAkm;
        this.mDppMetrics.updateDppConfiguratorInitiatorRequests();
        if (this.mDppRequestInfo == null) {
            this.mClientIfaceName = this.mWifiNative.getClientInterfaceName();
            if (this.mClientIfaceName == null) {
                try {
                    Log.e(TAG, "Wi-Fi client interface does not exist");
                    this.mDppMetrics.updateDppFailure(-7);
                    callback.onFailure(-7);
                    return;
                } catch (RemoteException e) {
                    return;
                }
            }
            WifiConfiguration selectedNetwork = this.mWifiConfigManager.getConfiguredNetworkWithoutMasking(selectedNetworkId);
            if (selectedNetwork == null) {
                try {
                    Log.e(TAG, "Selected network is null");
                    this.mDppMetrics.updateDppFailure(-9);
                    callback.onFailure(-9);
                    return;
                } catch (RemoteException e2) {
                    return;
                }
            }
            String psk = null;
            if (selectedNetwork.allowedKeyManagement.get(8)) {
                password = selectedNetwork.preSharedKey;
                securityAkm = 2;
            } else {
                if (!selectedNetwork.allowedKeyManagement.get(1)) {
                    try {
                        Log.e(TAG, "Key management must be either PSK or SAE");
                        this.mDppMetrics.updateDppFailure(-9);
                        callback.onFailure(-9);
                        return;
                    } catch (RemoteException e3) {
                        return;
                    }
                }
                if (selectedNetwork.preSharedKey.matches(String.format("[0-9A-Fa-f]{%d}", 64))) {
                    psk = selectedNetwork.preSharedKey;
                    password = null;
                } else {
                    String password2 = selectedNetwork.preSharedKey;
                    password = password2;
                }
                securityAkm = 0;
            }
            this.mDppRequestInfo = new DppRequestInfo(null);
            DppRequestInfo dppRequestInfo = this.mDppRequestInfo;
            dppRequestInfo.uid = uid;
            dppRequestInfo.binder = binder;
            dppRequestInfo.callback = callback;
            if (!linkToDeath(dppRequestInfo)) {
                onFailure(-7);
                return;
            }
            logd("Interface " + this.mClientIfaceName + ": Initializing URI: " + enrolleeUri);
            this.mDppRequestInfo.startTime = this.mClock.getElapsedSinceBootMillis();
            this.mDppTimeoutMessage.schedule(this.mDppRequestInfo.startTime + 40000);
            int peerId = this.mWifiNative.addDppPeerUri(this.mClientIfaceName, enrolleeUri);
            if (peerId < 0) {
                Log.e(TAG, "DPP add URI failure");
                onFailure(0);
                return;
            }
            this.mDppRequestInfo.peerId = peerId;
            logd("Authenticating");
            String ssidEncoded = encodeStringToHex(selectedNetwork.SSID);
            String passwordEncoded = null;
            if (password != null) {
                passwordEncoded = encodeStringToHex(selectedNetwork.preSharedKey);
            }
            if (!this.mWifiNative.startDppConfiguratorInitiator(this.mClientIfaceName, this.mDppRequestInfo.peerId, 0, ssidEncoded, passwordEncoded, psk, enrolleeNetworkRole == 1 ? 1 : 0, securityAkm)) {
                Log.e(TAG, "DPP Start Configurator Initiator failure");
                onFailure(6);
                return;
            } else {
                logd("Success: Started DPP Initiator with peer ID " + this.mDppRequestInfo.peerId);
                return;
            }
        }
        try {
            Log.e(TAG, "DPP request already in progress");
            Log.e(TAG, "Ongoing request UID: " + this.mDppRequestInfo.uid + ", new UID: " + uid);
            this.mDppMetrics.updateDppFailure(-5);
            callback.onFailure(-5);
        } catch (RemoteException e4) {
        }
    }

    public void startDppAsEnrolleeInitiator(int uid, IBinder binder, String configuratorUri, IDppCallback callback) {
        this.mDppMetrics.updateDppEnrolleeInitiatorRequests();
        if (this.mDppRequestInfo != null) {
            try {
                Log.e(TAG, "DPP request already in progress");
                Log.e(TAG, "Ongoing request UID: " + this.mDppRequestInfo.uid + ", new UID: " + uid);
                this.mDppMetrics.updateDppFailure(-5);
                callback.onFailure(-5);
                return;
            } catch (RemoteException e) {
                return;
            }
        }
        this.mDppRequestInfo = new DppRequestInfo(null);
        DppRequestInfo dppRequestInfo = this.mDppRequestInfo;
        dppRequestInfo.uid = uid;
        dppRequestInfo.binder = binder;
        dppRequestInfo.callback = callback;
        if (!linkToDeath(dppRequestInfo)) {
            onFailure(6);
            return;
        }
        this.mDppRequestInfo.startTime = this.mClock.getElapsedSinceBootMillis();
        this.mDppTimeoutMessage.schedule(this.mDppRequestInfo.startTime + 40000);
        this.mClientIfaceName = this.mWifiNative.getClientInterfaceName();
        logd("Interface " + this.mClientIfaceName + ": Initializing URI: " + configuratorUri);
        int peerId = this.mWifiNative.addDppPeerUri(this.mClientIfaceName, configuratorUri);
        if (peerId < 0) {
            Log.e(TAG, "DPP add URI failure");
            onFailure(0);
            return;
        }
        this.mDppRequestInfo.peerId = peerId;
        logd("Authenticating");
        if (!this.mWifiNative.startDppEnrolleeInitiator(this.mClientIfaceName, this.mDppRequestInfo.peerId, 0)) {
            Log.e(TAG, "DPP Start Enrollee Initiator failure");
            onFailure(6);
        } else {
            logd("Success: Started DPP Initiator with peer ID " + this.mDppRequestInfo.peerId);
        }
    }

    public void stopDppSession(int uid) {
        DppRequestInfo dppRequestInfo = this.mDppRequestInfo;
        if (dppRequestInfo == null) {
            logd("UID " + uid + " called stop DPP session with no active DPP session");
            return;
        }
        if (dppRequestInfo.uid != uid) {
            Log.e(TAG, "UID " + uid + " called stop DPP session but UID " + this.mDppRequestInfo.uid + " has started it");
            return;
        }
        if (!this.mWifiNative.stopDppInitiator(this.mClientIfaceName)) {
            Log.e(TAG, "Failed to stop DPP Initiator");
        }
        cleanupDppResources();
        logd("Success: Stopped DPP Initiator");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanupDppResources() {
        logd("DPP clean up resources");
        if (this.mDppRequestInfo == null) {
            return;
        }
        this.mDppTimeoutMessage.cancel();
        if (!this.mWifiNative.removeDppUri(this.mClientIfaceName, this.mDppRequestInfo.peerId)) {
            Log.e(TAG, "Failed to remove DPP URI ID " + this.mDppRequestInfo.peerId);
        }
        this.mDppRequestInfo.binder.unlinkToDeath(this.mDppRequestInfo.dr, 0);
        this.mDppRequestInfo = null;
    }

    private static class DppRequestInfo {
        public IBinder binder;
        public IDppCallback callback;
        public IBinder.DeathRecipient dr;
        public int peerId;
        public long startTime;
        public int uid;

        private DppRequestInfo() {
        }

        /* synthetic */ DppRequestInfo(AnonymousClass1 x0) {
            this();
        }

        public String toString() {
            return "DppRequestInfo: uid=" + this.uid + ", binder=" + this.binder + ", dr=" + this.dr + ", callback=" + this.callback + ", peerId=" + this.peerId;
        }
    }

    public void enableVerboseLogging(int verbose) {
        this.mVerboseLoggingEnabled = verbose != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSuccessConfigReceived(WifiConfiguration newWifiConfiguration) {
        try {
            logd("onSuccessConfigReceived");
            if (this.mDppRequestInfo == null) {
                Log.e(TAG, "Unexpected null Wi-Fi configuration object");
            } else {
                long now = this.mClock.getElapsedSinceBootMillis();
                this.mDppMetrics.updateDppOperationTime((int) (now - this.mDppRequestInfo.startTime));
                NetworkUpdateResult networkUpdateResult = this.mWifiConfigManager.addOrUpdateNetwork(newWifiConfiguration, this.mDppRequestInfo.uid);
                if (!networkUpdateResult.isSuccess()) {
                    Log.e(TAG, "DPP configuration received, but failed to update network");
                    this.mDppMetrics.updateDppFailure(-4);
                    this.mDppRequestInfo.callback.onFailure(-4);
                } else {
                    this.mDppMetrics.updateDppEnrolleeSuccess();
                    this.mDppRequestInfo.callback.onSuccessConfigReceived(networkUpdateResult.getNetworkId());
                }
            }
        } catch (RemoteException e) {
            Log.e(TAG, "Callback failure");
        }
        cleanupDppResources();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSuccessConfigSent() {
        try {
            if (this.mDppRequestInfo == null) {
                Log.e(TAG, "onDppSuccessConfigSent event without a request information object");
                return;
            }
            logd("onSuccessConfigSent");
            long now = this.mClock.getElapsedSinceBootMillis();
            this.mDppMetrics.updateDppOperationTime((int) (now - this.mDppRequestInfo.startTime));
            this.mDppMetrics.updateDppConfiguratorSuccess(0);
            this.mDppRequestInfo.callback.onSuccess(0);
            cleanupDppResources();
        } catch (RemoteException e) {
            Log.e(TAG, "Callback failure");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProgress(int dppStatusCode) {
        int dppProgressCode;
        try {
            if (this.mDppRequestInfo == null) {
                Log.e(TAG, "onProgress event without a request information object");
                return;
            }
            logd("onProgress: " + dppStatusCode);
            if (dppStatusCode == 0) {
                dppProgressCode = 0;
            } else if (dppStatusCode == 1) {
                dppProgressCode = 1;
            } else {
                Log.e(TAG, "onProgress: unknown code " + dppStatusCode);
                return;
            }
            this.mDppRequestInfo.callback.onProgress(dppProgressCode);
        } catch (RemoteException e) {
            Log.e(TAG, "Callback failure");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFailure(int dppStatusCode) {
        int dppFailureCode;
        try {
            if (this.mDppRequestInfo == null) {
                Log.e(TAG, "onFailure event without a request information object");
                return;
            }
            logd("OnFailure: " + dppStatusCode);
            long now = this.mClock.getElapsedSinceBootMillis();
            this.mDppMetrics.updateDppOperationTime((int) (now - this.mDppRequestInfo.startTime));
            if (dppStatusCode == 0) {
                dppFailureCode = -1;
            } else if (dppStatusCode == 1) {
                dppFailureCode = -2;
            } else if (dppStatusCode == 2) {
                dppFailureCode = -3;
            } else if (dppStatusCode == 3) {
                dppFailureCode = -4;
            } else if (dppStatusCode == 4) {
                dppFailureCode = -5;
            } else if (dppStatusCode == 5) {
                dppFailureCode = -6;
            } else if (dppStatusCode == 7) {
                dppFailureCode = -8;
            } else {
                dppFailureCode = -7;
            }
            this.mDppMetrics.updateDppFailure(dppFailureCode);
            this.mDppRequestInfo.callback.onFailure(dppFailureCode);
            cleanupDppResources();
        } catch (RemoteException e) {
            Log.e(TAG, "Callback failure");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logd(String message) {
        if (this.mVerboseLoggingEnabled) {
            Log.d(TAG, message);
        }
    }

    /* JADX INFO: renamed from: com.android.server.wifi.DppManager$2, reason: invalid class name */
    class AnonymousClass2 implements IBinder.DeathRecipient {
        final /* synthetic */ DppRequestInfo val$dppRequestInfo;

        AnonymousClass2(DppRequestInfo dppRequestInfo) {
            this.val$dppRequestInfo = dppRequestInfo;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            if (this.val$dppRequestInfo == null) {
                return;
            }
            DppManager.this.logd("binderDied: uid=" + this.val$dppRequestInfo.uid);
            DppManager.this.mHandler.post(new Runnable() { // from class: com.android.server.wifi.-$$Lambda$DppManager$2$xcyS07hDIDiUryjRilDed6t-2Uo
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$binderDied$0$DppManager$2();
                }
            });
        }

        public /* synthetic */ void lambda$binderDied$0$DppManager$2() {
            DppManager.this.cleanupDppResources();
        }
    }

    private boolean linkToDeath(DppRequestInfo dppRequestInfo) {
        dppRequestInfo.dr = new AnonymousClass2(dppRequestInfo);
        try {
            dppRequestInfo.binder.linkToDeath(dppRequestInfo.dr, 0);
            return true;
        } catch (RemoteException e) {
            Log.e(TAG, "Error on linkToDeath - " + e);
            dppRequestInfo.dr = null;
            return false;
        }
    }
}
