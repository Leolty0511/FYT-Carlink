package android.webkit;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class CookieSyncManager extends WebSyncManager {
    private static boolean sGetInstanceAllowed = false;
    private static CookieSyncManager sRef;

    private CookieSyncManager() {
        super("CookieSyncManager");
    }

    private static void checkInstanceIsAllowed() {
        if (!sGetInstanceAllowed) {
            throw new IllegalStateException("CookieSyncManager::createInstance() needs to be called before CookieSyncManager::getInstance()");
        }
    }

    public static synchronized CookieSyncManager createInstance(Context context) {
        try {
            if (context == null) {
                throw new IllegalArgumentException("Invalid context argument");
            }
            setGetInstanceIsAllowed();
        } catch (Throwable th) {
            throw th;
        }
        return getInstance();
    }

    public static synchronized CookieSyncManager getInstance() {
        checkInstanceIsAllowed();
        if (sRef == null) {
            sRef = new CookieSyncManager();
        }
        return sRef;
    }

    public static void setGetInstanceIsAllowed() {
        sGetInstanceAllowed = true;
    }

    @Override // android.webkit.WebSyncManager
    public /* bridge */ /* synthetic */ void resetSync() {
        super.resetSync();
    }

    @Override // android.webkit.WebSyncManager, java.lang.Runnable
    public /* bridge */ /* synthetic */ void run() {
        super.run();
    }

    @Override // android.webkit.WebSyncManager
    public /* bridge */ /* synthetic */ void startSync() {
        super.startSync();
    }

    @Override // android.webkit.WebSyncManager
    public /* bridge */ /* synthetic */ void stopSync() {
        super.stopSync();
    }

    @Override // android.webkit.WebSyncManager
    public /* bridge */ /* synthetic */ void sync() {
        super.sync();
    }

    @Override // android.webkit.WebSyncManager
    public void syncFromRamToFlash() {
        CookieManager cookieManager = CookieManager.getInstance();
        if (cookieManager.acceptCookie()) {
            cookieManager.flushCookieStore();
        }
    }
}
