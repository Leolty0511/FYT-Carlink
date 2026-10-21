package android.net.http;

import android.os.Process;
import android.os.SystemClock;
import org.apache.http.HttpHost;

/* JADX INFO: loaded from: classes.dex */
class IdleCache {
    private static final int CHECK_INTERVAL = 2000;
    private static final int EMPTY_CHECK_MAX = 5;
    private static final int IDLE_CACHE_MAX = 8;
    private static final int TIMEOUT = 6000;
    private Entry[] mEntries = new Entry[8];
    private int mCount = 0;
    private IdleReaper mThread = null;
    private int mCached = 0;
    private int mReused = 0;

    public class Entry {
        public Connection mConnection;
        public HttpHost mHost;
        public long mTimeout;

        public Entry() {
        }
    }

    public class IdleReaper extends Thread {
        private IdleReaper() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            setName("IdleReaper");
            Process.setThreadPriority(10);
            synchronized (IdleCache.this) {
                while (true) {
                    int i2 = 0;
                    while (true) {
                        if (i2 < 5) {
                            try {
                                IdleCache.this.wait(2000L);
                            } catch (InterruptedException unused) {
                            }
                            if (IdleCache.this.mCount == 0) {
                                i2++;
                            }
                        } else {
                            IdleCache.this.mThread = null;
                        }
                        throw th;
                    }
                    IdleCache.this.clearIdle();
                }
            }
        }
    }

    public IdleCache() {
        for (int i2 = 0; i2 < 8; i2++) {
            this.mEntries[i2] = new Entry();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void clearIdle() {
        if (this.mCount > 0) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            for (int i2 = 0; i2 < 8; i2++) {
                Entry entry = this.mEntries[i2];
                if (entry.mHost != null && jUptimeMillis > entry.mTimeout) {
                    entry.mHost = null;
                    entry.mConnection.closeConnection();
                    entry.mConnection = null;
                    this.mCount--;
                }
            }
        }
    }

    public synchronized boolean cacheConnection(HttpHost httpHost, Connection connection) {
        boolean z2;
        z2 = false;
        if (this.mCount < 8) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            for (int i2 = 0; i2 < 8; i2++) {
                Entry entry = this.mEntries[i2];
                if (entry.mHost == null) {
                    entry.mHost = httpHost;
                    entry.mConnection = connection;
                    entry.mTimeout = jUptimeMillis + 6000;
                    this.mCount++;
                    if (this.mThread == null) {
                        IdleReaper idleReaper = new IdleReaper();
                        this.mThread = idleReaper;
                        idleReaper.start();
                    }
                    z2 = true;
                    break;
                }
            }
        }
        return z2;
    }

    public synchronized void clear() {
        for (int i2 = 0; this.mCount > 0 && i2 < 8; i2++) {
            Entry entry = this.mEntries[i2];
            if (entry.mHost != null) {
                entry.mHost = null;
                entry.mConnection.closeConnection();
                entry.mConnection = null;
                this.mCount--;
            }
        }
    }

    public synchronized Connection getConnection(HttpHost httpHost) {
        Connection connection;
        connection = null;
        if (this.mCount > 0) {
            for (int i2 = 0; i2 < 8; i2++) {
                Entry entry = this.mEntries[i2];
                HttpHost httpHost2 = entry.mHost;
                if (httpHost2 != null && httpHost2.equals(httpHost)) {
                    Connection connection2 = entry.mConnection;
                    entry.mHost = null;
                    entry.mConnection = null;
                    this.mCount--;
                    connection = connection2;
                    break;
                }
            }
        }
        return connection;
    }
}
