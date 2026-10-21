package android.util;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.SprdSntpClient;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class NtpTrustedTime implements TrustedTime {
    private static final boolean LOGD = false;
    private static final String TAG = "NtpTrustedTime";
    private static Context sContext;
    private static NtpTrustedTime sSingleton;
    private ConnectivityManager mCM;
    private long mCachedNtpCertainty;
    private long mCachedNtpElapsedRealtime;
    private long mCachedNtpTime;
    private boolean mHasCache;
    private final String mServer;
    private final long mTimeout;

    private NtpTrustedTime(String str, long j2) {
        this.mServer = str;
        this.mTimeout = j2;
    }

    public static synchronized NtpTrustedTime getInstance(Context context) {
        if (sSingleton == null) {
            Resources resources = context.getResources();
            ContentResolver contentResolver = context.getContentResolver();
            String string = resources.getString(R.string.config_ntpServer);
            long integer = resources.getInteger(R.integer.config_ntpTimeout);
            String string2 = Settings.Global.getString(contentResolver, Settings.Global.NTP_SERVER);
            long j2 = Settings.Global.getLong(contentResolver, Settings.Global.NTP_TIMEOUT, integer);
            if (string2 != null) {
                string = string2;
            }
            sSingleton = new NtpTrustedTime(string, j2);
            sContext = context;
        }
        return sSingleton;
    }

    @Override // android.util.TrustedTime
    public long currentTimeMillis() {
        if (!this.mHasCache) {
            throw new IllegalStateException("Missing authoritative time source");
        }
        return getCacheAge() + this.mCachedNtpTime;
    }

    @Override // android.util.TrustedTime
    public boolean forceRefresh() {
        if (TextUtils.isEmpty(this.mServer)) {
            return false;
        }
        synchronized (this) {
            if (this.mCM == null) {
                this.mCM = (ConnectivityManager) sContext.getSystemService(Context.CONNECTIVITY_SERVICE);
            }
        }
        ConnectivityManager connectivityManager = this.mCM;
        NetworkInfo activeNetworkInfo = connectivityManager == null ? null : connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return false;
        }
        SprdSntpClient sprdSntpClient = new SprdSntpClient();
        if (!sprdSntpClient.requestTime(this.mServer, (int) this.mTimeout)) {
            return false;
        }
        this.mHasCache = true;
        this.mCachedNtpTime = sprdSntpClient.getNtpTime();
        this.mCachedNtpElapsedRealtime = sprdSntpClient.getNtpTimeReference();
        this.mCachedNtpCertainty = sprdSntpClient.getRoundTripTime() / 2;
        return true;
    }

    @Override // android.util.TrustedTime
    public long getCacheAge() {
        if (this.mHasCache) {
            return SystemClock.elapsedRealtime() - this.mCachedNtpElapsedRealtime;
        }
        return Long.MAX_VALUE;
    }

    @Override // android.util.TrustedTime
    public long getCacheCertainty() {
        if (this.mHasCache) {
            return this.mCachedNtpCertainty;
        }
        return Long.MAX_VALUE;
    }

    public long getCachedNtpTime() {
        return this.mCachedNtpTime;
    }

    public long getCachedNtpTimeReference() {
        return this.mCachedNtpElapsedRealtime;
    }

    @Override // android.util.TrustedTime
    public boolean hasCache() {
        return this.mHasCache;
    }
}
