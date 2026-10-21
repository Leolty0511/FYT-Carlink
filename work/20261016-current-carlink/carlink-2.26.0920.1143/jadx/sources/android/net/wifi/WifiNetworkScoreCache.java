package android.net.wifi;

import android.Manifest;
import android.accessibilityservice.c;
import android.app.m;
import android.content.Context;
import android.net.INetworkScoreCache;
import android.net.NetworkKey;
import android.net.RssiCurve;
import android.net.ScoredNetwork;
import android.net.WifiKey;
import android.os.Handler;
import android.os.Process;
import android.util.Log;
import android.util.LruCache;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WifiNetworkScoreCache extends INetworkScoreCache.Stub {
    private static final int DEFAULT_MAX_CACHE_SIZE = 100;
    public static final int INVALID_NETWORK_SCORE = -128;

    @GuardedBy("mLock")
    private final LruCache<String, ScoredNetwork> mCache;
    private final Context mContext;

    @GuardedBy("mLock")
    private CacheListener mListener;
    private final Object mLock;
    private static final String TAG = "WifiNetworkScoreCache";
    private static final boolean DBG = Log.isLoggable(TAG, 3);

    public static abstract class CacheListener {
        private Handler mHandler;

        public CacheListener(Handler handler) {
            Preconditions.checkNotNull(handler);
            this.mHandler = handler;
        }

        public abstract void networkCacheUpdated(List<ScoredNetwork> list);

        public void post(final List<ScoredNetwork> list) {
            this.mHandler.post(new Runnable() { // from class: android.net.wifi.WifiNetworkScoreCache.CacheListener.1
                @Override // java.lang.Runnable
                public void run() {
                    CacheListener.this.networkCacheUpdated(list);
                }
            });
        }
    }

    public WifiNetworkScoreCache(Context context) {
        this(context, null);
    }

    private String buildNetworkKey(ScoredNetwork scoredNetwork) {
        if (scoredNetwork == null) {
            return null;
        }
        return buildNetworkKey(scoredNetwork.networkKey);
    }

    @Override // android.net.INetworkScoreCache
    public final void clearScores() {
        synchronized (this.mLock) {
            this.mCache.evictAll();
        }
    }

    @Override // android.os.Binder
    public final void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.mContext.enforceCallingOrSelfPermission(Manifest.permission.DUMP, TAG);
        printWriter.println(String.format("WifiNetworkScoreCache (%s/%d)", this.mContext.getPackageName(), Integer.valueOf(Process.myUid())));
        printWriter.println("  All score curves:");
        synchronized (this.mLock) {
            Iterator<ScoredNetwork> it = this.mCache.snapshot().values().iterator();
            while (it.hasNext()) {
                printWriter.println("    " + it.next());
            }
            printWriter.println("  Network scores for latest ScanResults:");
            for (ScanResult scanResult : ((WifiManager) this.mContext.getSystemService("wifi")).getScanResults()) {
                printWriter.println("    " + buildNetworkKey(scanResult) + ": " + getNetworkScore(scanResult));
            }
        }
    }

    public boolean getMeteredHint(ScanResult scanResult) {
        ScoredNetwork scoredNetwork = getScoredNetwork(scanResult);
        return scoredNetwork != null && scoredNetwork.meteredHint;
    }

    public int getNetworkScore(ScanResult scanResult) {
        RssiCurve rssiCurve;
        ScoredNetwork scoredNetwork = getScoredNetwork(scanResult);
        if (scoredNetwork == null || (rssiCurve = scoredNetwork.rssiCurve) == null) {
            return INVALID_NETWORK_SCORE;
        }
        byte bLookupScore = rssiCurve.lookupScore(scanResult.level);
        if (!DBG) {
            return bLookupScore;
        }
        StringBuilder sb = new StringBuilder("getNetworkScore found scored network ");
        sb.append(scoredNetwork.networkKey);
        sb.append(" score ");
        sb.append(Integer.toString(bLookupScore));
        sb.append(" RSSI ");
        m.t(sb, scanResult.level, TAG);
        return bLookupScore;
    }

    public ScoredNetwork getScoredNetwork(ScanResult scanResult) {
        ScoredNetwork scoredNetwork;
        String strBuildNetworkKey = buildNetworkKey(scanResult);
        if (strBuildNetworkKey == null) {
            return null;
        }
        synchronized (this.mLock) {
            scoredNetwork = this.mCache.get(strBuildNetworkKey);
        }
        return scoredNetwork;
    }

    public boolean hasScoreCurve(ScanResult scanResult) {
        ScoredNetwork scoredNetwork = getScoredNetwork(scanResult);
        return (scoredNetwork == null || scoredNetwork.rssiCurve == null) ? false : true;
    }

    public boolean isScoredNetwork(ScanResult scanResult) {
        return getScoredNetwork(scanResult) != null;
    }

    public void registerListener(CacheListener cacheListener) {
        synchronized (this.mLock) {
            this.mListener = cacheListener;
        }
    }

    public void unregisterListener() {
        synchronized (this.mLock) {
            this.mListener = null;
        }
    }

    @Override // android.net.INetworkScoreCache
    public final void updateScores(List<ScoredNetwork> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (DBG) {
            Log.d(TAG, "updateScores list size=" + list.size());
        }
        synchronized (this.mLock) {
            boolean z2 = false;
            for (ScoredNetwork scoredNetwork : list) {
                String strBuildNetworkKey = buildNetworkKey(scoredNetwork);
                if (strBuildNetworkKey != null) {
                    this.mCache.put(strBuildNetworkKey, scoredNetwork);
                    z2 = true;
                } else if (DBG) {
                    Log.d(TAG, "Failed to build network key for ScoredNetwork" + scoredNetwork);
                }
            }
            CacheListener cacheListener = this.mListener;
            if (cacheListener != null && z2) {
                cacheListener.post(list);
            }
        }
    }

    public WifiNetworkScoreCache(Context context, CacheListener cacheListener) {
        this(context, cacheListener, 100);
    }

    private String buildNetworkKey(NetworkKey networkKey) {
        WifiKey wifiKey;
        String str;
        if (networkKey == null || (wifiKey = networkKey.wifiKey) == null || networkKey.type != 1 || (str = wifiKey.ssid) == null) {
            return null;
        }
        if (wifiKey.bssid == null) {
            return str;
        }
        StringBuilder sbR = c.r(str);
        sbR.append(networkKey.wifiKey.bssid);
        return sbR.toString();
    }

    public WifiNetworkScoreCache(Context context, CacheListener cacheListener, int i2) {
        this.mLock = new Object();
        this.mContext = context.getApplicationContext();
        this.mListener = cacheListener;
        this.mCache = new LruCache<>(i2);
    }

    public ScoredNetwork getScoredNetwork(NetworkKey networkKey) {
        ScoredNetwork scoredNetwork;
        String strBuildNetworkKey = buildNetworkKey(networkKey);
        if (strBuildNetworkKey == null) {
            if (!DBG) {
                return null;
            }
            Log.d(TAG, "Could not build key string for Network Key: " + networkKey);
            return null;
        }
        synchronized (this.mLock) {
            scoredNetwork = this.mCache.get(strBuildNetworkKey);
        }
        return scoredNetwork;
    }

    private String buildNetworkKey(ScanResult scanResult) {
        if (scanResult == null || scanResult.SSID == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder("\"");
        sb.append(scanResult.SSID);
        sb.append("\"");
        String str = scanResult.BSSID;
        if (str != null) {
            sb.append(str);
        }
        return sb.toString();
    }

    public int getNetworkScore(ScanResult scanResult, boolean z2) {
        RssiCurve rssiCurve;
        ScoredNetwork scoredNetwork = getScoredNetwork(scanResult);
        if (scoredNetwork == null || (rssiCurve = scoredNetwork.rssiCurve) == null) {
            return INVALID_NETWORK_SCORE;
        }
        byte bLookupScore = rssiCurve.lookupScore(scanResult.level, z2);
        if (!DBG) {
            return bLookupScore;
        }
        Log.d(TAG, "getNetworkScore found scored network " + scoredNetwork.networkKey + " score " + Integer.toString(bLookupScore) + " RSSI " + scanResult.level + " isActiveNetwork " + z2);
        return bLookupScore;
    }
}
