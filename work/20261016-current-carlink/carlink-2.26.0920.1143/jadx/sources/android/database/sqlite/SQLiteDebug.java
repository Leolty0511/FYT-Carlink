package android.database.sqlite;

import android.os.Build;
import android.os.SystemProperties;
import android.util.Log;
import android.util.Printer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class SQLiteDebug {
    public static final boolean DEBUG_SQL_LOG = Log.isLoggable("SQLiteLog", 2);
    public static final boolean DEBUG_SQL_STATEMENTS = Log.isLoggable("SQLiteStatements", 2);
    public static final boolean DEBUG_SQL_TIME = Log.isLoggable("SQLiteTime", 2);
    public static final boolean DEBUG_LOG_SLOW_QUERIES = Build.IS_DEBUGGABLE;

    public static class DbStats {
        public String cache;
        public String dbName;
        public long dbSize;
        public int lookaside;
        public long pageSize;

        public DbStats(String str, long j2, long j3, int i2, int i3, int i4, int i5) {
            this.dbName = str;
            this.pageSize = j3 / 1024;
            this.dbSize = (j2 * j3) / 1024;
            this.lookaside = i2;
            this.cache = i3 + "/" + i4 + "/" + i5;
        }
    }

    public static class PagerStats {
        public ArrayList<DbStats> dbStats;
        public int largestMemAlloc;
        public int memoryUsed;
        public int pageCacheOverflow;
    }

    private SQLiteDebug() {
    }

    public static void dump(Printer printer, String[] strArr) {
        boolean z2 = false;
        for (String str : strArr) {
            if (str.equals("-v")) {
                z2 = true;
            }
        }
        SQLiteDatabase.dumpAll(printer, z2);
    }

    public static PagerStats getDatabaseInfo() {
        PagerStats pagerStats = new PagerStats();
        nativeGetPagerStats(pagerStats);
        pagerStats.dbStats = SQLiteDatabase.getDbStats();
        return pagerStats;
    }

    private static native void nativeGetPagerStats(PagerStats pagerStats);

    public static final boolean shouldLogSlowQuery(long j2) {
        int i2 = SystemProperties.getInt("db.log.slow_query_threshold", -1);
        return i2 >= 0 && j2 >= ((long) i2);
    }
}
