package android.net.wifi.aware;

import android.net.NetworkSpecifier;
import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import dalvik.system.CloseGuard;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class WifiAwareSession implements AutoCloseable {
    private static final boolean DBG = false;
    private static final String TAG = "WifiAwareSession";
    private static final boolean VDBG = false;
    private final Binder mBinder;
    private final int mClientId;
    private final CloseGuard mCloseGuard;
    private final WeakReference<WifiAwareManager> mMgr;
    private boolean mTerminated;

    public WifiAwareSession(WifiAwareManager wifiAwareManager, Binder binder, int i2) {
        this.mTerminated = true;
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mMgr = new WeakReference<>(wifiAwareManager);
        this.mBinder = binder;
        this.mClientId = i2;
        this.mTerminated = false;
        closeGuard.open("close");
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        WifiAwareManager wifiAwareManager = this.mMgr.get();
        if (wifiAwareManager == null) {
            Log.w(TAG, "destroy: called post GC on WifiAwareManager");
            return;
        }
        wifiAwareManager.disconnect(this.mClientId, this.mBinder);
        this.mTerminated = true;
        this.mMgr.clear();
        this.mCloseGuard.close();
    }

    public NetworkSpecifier createNetworkSpecifierOpen(int i2, byte[] bArr) {
        WifiAwareManager wifiAwareManager = this.mMgr.get();
        if (wifiAwareManager == null) {
            Log.e(TAG, "createNetworkSpecifierOpen: called post GC on WifiAwareManager");
            return null;
        }
        if (!this.mTerminated) {
            return wifiAwareManager.createNetworkSpecifier(this.mClientId, i2, bArr, null, null);
        }
        Log.e(TAG, "createNetworkSpecifierOpen: called after termination");
        return null;
    }

    public NetworkSpecifier createNetworkSpecifierPassphrase(int i2, byte[] bArr, String str) {
        WifiAwareManager wifiAwareManager = this.mMgr.get();
        if (wifiAwareManager == null) {
            Log.e(TAG, "createNetworkSpecifierPassphrase: called post GC on WifiAwareManager");
            return null;
        }
        if (this.mTerminated) {
            Log.e(TAG, "createNetworkSpecifierPassphrase: called after termination");
            return null;
        }
        if (WifiAwareUtils.validatePassphrase(str)) {
            return wifiAwareManager.createNetworkSpecifier(this.mClientId, i2, bArr, null, str);
        }
        throw new IllegalArgumentException("Passphrase must meet length requirements");
    }

    public NetworkSpecifier createNetworkSpecifierPmk(int i2, byte[] bArr, byte[] bArr2) {
        WifiAwareManager wifiAwareManager = this.mMgr.get();
        if (wifiAwareManager == null) {
            Log.e(TAG, "createNetworkSpecifierPmk: called post GC on WifiAwareManager");
            return null;
        }
        if (this.mTerminated) {
            Log.e(TAG, "createNetworkSpecifierPmk: called after termination");
            return null;
        }
        if (WifiAwareUtils.validatePmk(bArr2)) {
            return wifiAwareManager.createNetworkSpecifier(this.mClientId, i2, bArr, bArr2, null);
        }
        throw new IllegalArgumentException("PMK must 32 bytes");
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

    public void publish(PublishConfig publishConfig, DiscoverySessionCallback discoverySessionCallback, Handler handler) {
        WifiAwareManager wifiAwareManager = this.mMgr.get();
        if (wifiAwareManager == null) {
            Log.e(TAG, "publish: called post GC on WifiAwareManager");
        } else if (this.mTerminated) {
            Log.e(TAG, "publish: called after termination");
        } else {
            wifiAwareManager.publish(this.mClientId, handler == null ? Looper.getMainLooper() : handler.getLooper(), publishConfig, discoverySessionCallback);
        }
    }

    public void subscribe(SubscribeConfig subscribeConfig, DiscoverySessionCallback discoverySessionCallback, Handler handler) {
        WifiAwareManager wifiAwareManager = this.mMgr.get();
        if (wifiAwareManager == null) {
            Log.e(TAG, "publish: called post GC on WifiAwareManager");
        } else if (this.mTerminated) {
            Log.e(TAG, "publish: called after termination");
        } else {
            wifiAwareManager.subscribe(this.mClientId, handler == null ? Looper.getMainLooper() : handler.getLooper(), subscribeConfig, discoverySessionCallback);
        }
    }
}
