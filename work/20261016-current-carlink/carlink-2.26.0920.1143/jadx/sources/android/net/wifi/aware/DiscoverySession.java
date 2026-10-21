package android.net.wifi.aware;

import android.net.NetworkSpecifier;
import android.net.wifi.RttManager;
import android.util.Log;
import dalvik.system.CloseGuard;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class DiscoverySession implements AutoCloseable {
    private static final boolean DBG = false;
    private static final int MAX_SEND_RETRY_COUNT = 5;
    private static final String TAG = "DiscoverySession";
    private static final boolean VDBG = false;
    protected final int mClientId;
    private final CloseGuard mCloseGuard;
    protected WeakReference<WifiAwareManager> mMgr;
    protected final int mSessionId;
    protected boolean mTerminated = false;

    public DiscoverySession(WifiAwareManager wifiAwareManager, int i2, int i3) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mMgr = new WeakReference<>(wifiAwareManager);
        this.mClientId = i2;
        this.mSessionId = i3;
        closeGuard.open("close");
    }

    public static int getMaxSendRetryCount() {
        return 5;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        WifiAwareManager wifiAwareManager = this.mMgr.get();
        if (wifiAwareManager == null) {
            Log.w(TAG, "destroy: called post GC on WifiAwareManager");
            return;
        }
        wifiAwareManager.terminateSession(this.mClientId, this.mSessionId);
        this.mTerminated = true;
        this.mMgr.clear();
        this.mCloseGuard.close();
    }

    public NetworkSpecifier createNetworkSpecifierOpen(PeerHandle peerHandle) {
        if (this.mTerminated) {
            Log.w(TAG, "createNetworkSpecifierOpen: called on terminated session");
            return null;
        }
        WifiAwareManager wifiAwareManager = this.mMgr.get();
        if (wifiAwareManager == null) {
            Log.w(TAG, "createNetworkSpecifierOpen: called post GC on WifiAwareManager");
            return null;
        }
        return wifiAwareManager.createNetworkSpecifier(this.mClientId, !(this instanceof SubscribeDiscoverySession) ? 1 : 0, this.mSessionId, peerHandle, null, null);
    }

    public NetworkSpecifier createNetworkSpecifierPassphrase(PeerHandle peerHandle, String str) {
        if (!WifiAwareUtils.validatePassphrase(str)) {
            throw new IllegalArgumentException("Passphrase must meet length requirements");
        }
        if (this.mTerminated) {
            Log.w(TAG, "createNetworkSpecifierPassphrase: called on terminated session");
            return null;
        }
        WifiAwareManager wifiAwareManager = this.mMgr.get();
        if (wifiAwareManager == null) {
            Log.w(TAG, "createNetworkSpecifierPassphrase: called post GC on WifiAwareManager");
            return null;
        }
        return wifiAwareManager.createNetworkSpecifier(this.mClientId, !(this instanceof SubscribeDiscoverySession) ? 1 : 0, this.mSessionId, peerHandle, null, str);
    }

    public NetworkSpecifier createNetworkSpecifierPmk(PeerHandle peerHandle, byte[] bArr) {
        if (!WifiAwareUtils.validatePmk(bArr)) {
            throw new IllegalArgumentException("PMK must 32 bytes");
        }
        if (this.mTerminated) {
            Log.w(TAG, "createNetworkSpecifierPmk: called on terminated session");
            return null;
        }
        WifiAwareManager wifiAwareManager = this.mMgr.get();
        if (wifiAwareManager == null) {
            Log.w(TAG, "createNetworkSpecifierPmk: called post GC on WifiAwareManager");
            return null;
        }
        return wifiAwareManager.createNetworkSpecifier(this.mClientId, !(this instanceof SubscribeDiscoverySession) ? 1 : 0, this.mSessionId, peerHandle, bArr, null);
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            if (!this.mTerminated) {
                close();
            }
        } finally {
            super.finalize();
        }
    }

    public void sendMessage(PeerHandle peerHandle, int i2, byte[] bArr, int i3) {
        if (this.mTerminated) {
            Log.w(TAG, "sendMessage: called on terminated session");
            return;
        }
        WifiAwareManager wifiAwareManager = this.mMgr.get();
        if (wifiAwareManager == null) {
            Log.w(TAG, "sendMessage: called post GC on WifiAwareManager");
        } else {
            wifiAwareManager.sendMessage(this.mClientId, this.mSessionId, peerHandle, bArr, i2, i3);
        }
    }

    public void setTerminated() {
        if (this.mTerminated) {
            Log.w(TAG, "terminate: already terminated.");
            return;
        }
        this.mTerminated = true;
        this.mMgr.clear();
        this.mCloseGuard.close();
    }

    public void startRanging(RttManager.RttParams[] rttParamsArr, RttManager.RttListener rttListener) {
        if (this.mTerminated) {
            Log.w(TAG, "startRanging: called on terminated session");
            return;
        }
        WifiAwareManager wifiAwareManager = this.mMgr.get();
        if (wifiAwareManager == null) {
            Log.w(TAG, "startRanging: called post GC on WifiAwareManager");
        } else {
            wifiAwareManager.startRanging(this.mClientId, this.mSessionId, rttParamsArr, rttListener);
        }
    }

    public void sendMessage(PeerHandle peerHandle, int i2, byte[] bArr) {
        sendMessage(peerHandle, i2, bArr, 0);
    }
}
