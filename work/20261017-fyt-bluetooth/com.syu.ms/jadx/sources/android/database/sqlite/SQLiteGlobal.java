package android.database.sqlite;

import android.content.res.Resources;
import android.os.StatFs;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes.dex */
public final class SQLiteGlobal {
    private static final String TAG = "SQLiteGlobal";
    private static int sDefaultPageSize;
    private static final Object sLock = new Object();

    private SQLiteGlobal() {
    }

    public static String getDefaultJournalMode() {
        return SystemProperties.get("debug.sqlite.journalmode", Resources.getSystem().getString(17039401));
    }

    public static int getDefaultPageSize() {
        int i2;
        synchronized (sLock) {
            if (sDefaultPageSize == 0) {
                sDefaultPageSize = new StatFs("/data").getBlockSize();
            }
            i2 = SystemProperties.getInt("debug.sqlite.pagesize", sDefaultPageSize);
        }
        return i2;
    }

    public static String getDefaultSyncMode() {
        return SystemProperties.get("debug.sqlite.syncmode", Resources.getSystem().getString(17039402));
    }

    public static int getJournalSizeLimit() {
        return SystemProperties.getInt("debug.sqlite.journalsizelimit", Resources.getSystem().getInteger(17694774));
    }

    public static int getWALAutoCheckpoint() {
        return Math.max(1, SystemProperties.getInt("debug.sqlite.wal.autocheckpoint", Resources.getSystem().getInteger(17694775)));
    }

    public static int getWALConnectionPoolSize() {
        return Math.max(2, SystemProperties.getInt("debug.sqlite.wal.poolsize", Resources.getSystem().getInteger(17694773)));
    }

    public static String getWALSyncMode() {
        return SystemProperties.get("debug.sqlite.wal.syncmode", Resources.getSystem().getString(17039403));
    }

    private static native int nativeReleaseMemory();

    public static int releaseMemory() {
        return nativeReleaseMemory();
    }
}
