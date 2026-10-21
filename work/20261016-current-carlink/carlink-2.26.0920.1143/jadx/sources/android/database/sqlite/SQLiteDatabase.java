package android.database.sqlite;

import android.accessibilityservice.c;
import android.app.ActivityManager;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.DatabaseUtils;
import android.database.DefaultDatabaseErrorHandler;
import android.database.SQLException;
import android.os.CancellationSignal;
import android.os.Looper;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.EventLog;
import android.util.Log;
import android.util.Pair;
import android.util.Printer;
import com.android.internal.util.Preconditions;
import dalvik.system.CloseGuard;
import java.io.File;
import java.io.FileFilter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public final class SQLiteDatabase extends SQLiteClosable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int CONFLICT_ABORT = 2;
    public static final int CONFLICT_FAIL = 3;
    public static final int CONFLICT_IGNORE = 4;
    public static final int CONFLICT_NONE = 0;
    public static final int CONFLICT_REPLACE = 5;
    public static final int CONFLICT_ROLLBACK = 1;
    public static final int CREATE_IF_NECESSARY = 268435456;
    public static final int ENABLE_WRITE_AHEAD_LOGGING = 536870912;
    private static final int EVENT_DB_CORRUPT = 75004;
    public static final int MAX_SQL_CACHE_SIZE = 100;
    public static final int NO_LOCALIZED_COLLATORS = 16;
    public static final int OPEN_READONLY = 1;
    public static final int OPEN_READWRITE = 0;
    private static final int OPEN_READ_MASK = 1;
    public static final int SQLITE_MAX_LIKE_PATTERN_LENGTH = 50000;
    private static final String TAG = "SQLiteDatabase";
    private final SQLiteDatabaseConfiguration mConfigurationLocked;
    private SQLiteConnectionPool mConnectionPoolLocked;
    private final CursorFactory mCursorFactory;
    private final DatabaseErrorHandler mErrorHandler;
    private boolean mHasAttachedDbsLocked;
    private static final boolean DEBUG_CLOSE_IDLE_CONNECTIONS = SystemProperties.getBoolean("persist.debug.sqlite.close_idle_connections", false);
    private static WeakHashMap<SQLiteDatabase, Object> sActiveDatabases = new WeakHashMap<>();
    private static final String[] CONFLICT_VALUES = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};
    private final ThreadLocal<SQLiteSession> mThreadSession = ThreadLocal.withInitial(new Supplier() { // from class: android.database.sqlite.a
        @Override // java.util.function.Supplier
        public final Object get() {
            return this.f59b.createSession();
        }
    });
    private final Object mLock = new Object();
    private final CloseGuard mCloseGuardLocked = CloseGuard.get();

    public interface CursorFactory {
        Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery);
    }

    public interface CustomFunction {
        void callback(String[] strArr);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DatabaseOpenFlags {
    }

    public static final class OpenParams {
        private final CursorFactory mCursorFactory;
        private final DatabaseErrorHandler mErrorHandler;
        private long mIdleConnectionTimeout;
        private final int mLookasideSlotCount;
        private final int mLookasideSlotSize;
        private final int mOpenFlags;

        public CursorFactory getCursorFactory() {
            return this.mCursorFactory;
        }

        public DatabaseErrorHandler getErrorHandler() {
            return this.mErrorHandler;
        }

        public long getIdleConnectionTimeout() {
            return this.mIdleConnectionTimeout;
        }

        public int getLookasideSlotCount() {
            return this.mLookasideSlotCount;
        }

        public int getLookasideSlotSize() {
            return this.mLookasideSlotSize;
        }

        public int getOpenFlags() {
            return this.mOpenFlags;
        }

        public Builder toBuilder() {
            return new Builder(this);
        }

        private OpenParams(int i2, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler, int i3, int i4, long j2) {
            this.mOpenFlags = i2;
            this.mCursorFactory = cursorFactory;
            this.mErrorHandler = databaseErrorHandler;
            this.mLookasideSlotSize = i3;
            this.mLookasideSlotCount = i4;
            this.mIdleConnectionTimeout = j2;
        }

        public static final class Builder {
            private CursorFactory mCursorFactory;
            private DatabaseErrorHandler mErrorHandler;
            private long mIdleConnectionTimeout;
            private int mLookasideSlotCount;
            private int mLookasideSlotSize;
            private int mOpenFlags;

            public Builder() {
                this.mLookasideSlotSize = -1;
                this.mLookasideSlotCount = -1;
                this.mIdleConnectionTimeout = -1L;
            }

            public Builder addOpenFlags(int i2) {
                this.mOpenFlags = i2 | this.mOpenFlags;
                return this;
            }

            public OpenParams build() {
                return new OpenParams(this.mOpenFlags, this.mCursorFactory, this.mErrorHandler, this.mLookasideSlotSize, this.mLookasideSlotCount, this.mIdleConnectionTimeout);
            }

            public boolean isWriteAheadLoggingEnabled() {
                return (this.mOpenFlags & 536870912) != 0;
            }

            public Builder removeOpenFlags(int i2) {
                this.mOpenFlags = (~i2) & this.mOpenFlags;
                return this;
            }

            public Builder setCursorFactory(CursorFactory cursorFactory) {
                this.mCursorFactory = cursorFactory;
                return this;
            }

            public Builder setErrorHandler(DatabaseErrorHandler databaseErrorHandler) {
                this.mErrorHandler = databaseErrorHandler;
                return this;
            }

            public Builder setIdleConnectionTimeout(long j2) {
                Preconditions.checkArgument(j2 >= 0, "idle connection timeout cannot be negative");
                this.mIdleConnectionTimeout = j2;
                return this;
            }

            public Builder setLookasideConfig(int i2, int i3) {
                boolean z2 = true;
                Preconditions.checkArgument(i2 >= 0, "lookasideSlotCount cannot be negative");
                Preconditions.checkArgument(i3 >= 0, "lookasideSlotSize cannot be negative");
                if ((i2 <= 0 || i3 <= 0) && (i3 != 0 || i2 != 0)) {
                    z2 = false;
                }
                Preconditions.checkArgument(z2, "Invalid configuration: " + i2 + ", " + i3);
                this.mLookasideSlotSize = i2;
                this.mLookasideSlotCount = i3;
                return this;
            }

            public Builder setOpenFlags(int i2) {
                this.mOpenFlags = i2;
                return this;
            }

            public void setWriteAheadLoggingEnabled(boolean z2) {
                if (z2) {
                    addOpenFlags(536870912);
                } else {
                    removeOpenFlags(536870912);
                }
            }

            public Builder(OpenParams openParams) {
                this.mLookasideSlotSize = -1;
                this.mLookasideSlotCount = -1;
                this.mIdleConnectionTimeout = -1L;
                this.mLookasideSlotSize = openParams.mLookasideSlotSize;
                this.mLookasideSlotCount = openParams.mLookasideSlotCount;
                this.mOpenFlags = openParams.mOpenFlags;
                this.mCursorFactory = openParams.mCursorFactory;
                this.mErrorHandler = openParams.mErrorHandler;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0054  */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.database.sqlite.a] */
    private SQLiteDatabase(String str, int i2, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler, int i3, int i4, long j2) {
        this.mCursorFactory = cursorFactory;
        this.mErrorHandler = databaseErrorHandler == null ? new DefaultDatabaseErrorHandler() : databaseErrorHandler;
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = new SQLiteDatabaseConfiguration(str, i2);
        this.mConfigurationLocked = sQLiteDatabaseConfiguration;
        sQLiteDatabaseConfiguration.lookasideSlotSize = i3;
        sQLiteDatabaseConfiguration.lookasideSlotCount = i4;
        if (ActivityManager.isLowRamDeviceStatic()) {
            sQLiteDatabaseConfiguration.lookasideSlotCount = 0;
            sQLiteDatabaseConfiguration.lookasideSlotSize = 0;
        }
        if (sQLiteDatabaseConfiguration.isInMemoryDb()) {
            j2 = Long.MAX_VALUE;
        } else if (j2 < 0) {
            if (DEBUG_CLOSE_IDLE_CONNECTIONS) {
                j2 = SQLiteGlobal.getIdleConnectionTimeout();
            } else {
                j2 = Long.MAX_VALUE;
            }
        }
        sQLiteDatabaseConfiguration.idleConnectionTimeoutMs = j2;
    }

    private void collectDbStats(ArrayList<SQLiteDebug.DbStats> arrayList) {
        synchronized (this.mLock) {
            SQLiteConnectionPool sQLiteConnectionPool = this.mConnectionPoolLocked;
            if (sQLiteConnectionPool != null) {
                sQLiteConnectionPool.collectDbStats(arrayList);
            }
        }
    }

    public static SQLiteDatabase create(CursorFactory cursorFactory) {
        return openDatabase(SQLiteDatabaseConfiguration.MEMORY_DB_PATH, cursorFactory, 268435456);
    }

    public static SQLiteDatabase createInMemory(OpenParams openParams) {
        return openDatabase(SQLiteDatabaseConfiguration.MEMORY_DB_PATH, openParams.toBuilder().addOpenFlags(268435456).build());
    }

    public static boolean deleteDatabase(File file) {
        if (file == null) {
            throw new IllegalArgumentException("file must not be null");
        }
        boolean zDelete = file.delete() | false | new File(file.getPath() + "-journal").delete() | new File(file.getPath() + "-shm").delete() | new File(file.getPath() + "-wal").delete();
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            final String str = file.getName() + "-mj";
            File[] fileArrListFiles = parentFile.listFiles(new FileFilter() { // from class: android.database.sqlite.SQLiteDatabase.1
                @Override // java.io.FileFilter
                public boolean accept(File file2) {
                    return file2.getName().startsWith(str);
                }
            });
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    zDelete |= file2.delete();
                }
            }
        }
        return zDelete;
    }

    private void dispose(boolean z2) {
        SQLiteConnectionPool sQLiteConnectionPool;
        synchronized (this.mLock) {
            CloseGuard closeGuard = this.mCloseGuardLocked;
            if (closeGuard != null) {
                if (z2) {
                    closeGuard.warnIfOpen();
                }
                this.mCloseGuardLocked.close();
            }
            sQLiteConnectionPool = this.mConnectionPoolLocked;
            this.mConnectionPoolLocked = null;
        }
        if (z2) {
            return;
        }
        synchronized (sActiveDatabases) {
            sActiveDatabases.remove(this);
        }
        if (sQLiteConnectionPool != null) {
            sQLiteConnectionPool.close();
        }
    }

    private void dump(Printer printer, boolean z2) {
        synchronized (this.mLock) {
            if (this.mConnectionPoolLocked != null) {
                printer.println("");
                this.mConnectionPoolLocked.dump(printer, z2);
            }
        }
    }

    public static void dumpAll(Printer printer, boolean z2) {
        Iterator<SQLiteDatabase> it = getActiveDatabases().iterator();
        while (it.hasNext()) {
            it.next().dump(printer, z2);
        }
    }

    private int executeSql(String str, Object[] objArr) {
        boolean z2;
        acquireReference();
        try {
            if (DatabaseUtils.getSqlStatementType(str) == 3) {
                synchronized (this.mLock) {
                    if (this.mHasAttachedDbsLocked) {
                        z2 = false;
                    } else {
                        z2 = true;
                        this.mHasAttachedDbsLocked = true;
                        this.mConnectionPoolLocked.disableIdleConnectionHandler();
                    }
                }
                if (z2) {
                    disableWriteAheadLogging();
                }
            }
            SQLiteStatement sQLiteStatement = new SQLiteStatement(this, str, objArr);
            try {
                int iExecuteUpdateDelete = sQLiteStatement.executeUpdateDelete();
                sQLiteStatement.close();
                releaseReference();
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                sQLiteStatement.close();
                throw th;
            }
        } catch (Throwable th2) {
            releaseReference();
            throw th2;
        }
    }

    public static String findEditTable(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalStateException("Invalid tables");
        }
        int iIndexOf = str.indexOf(32);
        int iIndexOf2 = str.indexOf(44);
        if (iIndexOf > 0 && (iIndexOf < iIndexOf2 || iIndexOf2 < 0)) {
            return str.substring(0, iIndexOf);
        }
        if (iIndexOf2 > 0) {
            return (iIndexOf2 < iIndexOf || iIndexOf < 0) ? str.substring(0, iIndexOf2) : str;
        }
        return str;
    }

    private static ArrayList<SQLiteDatabase> getActiveDatabases() {
        ArrayList<SQLiteDatabase> arrayList = new ArrayList<>();
        synchronized (sActiveDatabases) {
            arrayList.addAll(sActiveDatabases.keySet());
        }
        return arrayList;
    }

    public static ArrayList<SQLiteDebug.DbStats> getDbStats() {
        ArrayList<SQLiteDebug.DbStats> arrayList = new ArrayList<>();
        Iterator<SQLiteDatabase> it = getActiveDatabases().iterator();
        while (it.hasNext()) {
            it.next().collectDbStats(arrayList);
        }
        return arrayList;
    }

    private static boolean isMainThread() {
        Looper looperMyLooper = Looper.myLooper();
        return looperMyLooper != null && looperMyLooper == Looper.getMainLooper();
    }

    private boolean isReadOnlyLocked() {
        return (this.mConfigurationLocked.openFlags & 1) == 1;
    }

    private void open() {
        try {
            try {
                openInner();
            } catch (SQLiteDatabaseCorruptException unused) {
                onCorruption();
                openInner();
            }
        } catch (SQLiteException e2) {
            Log.e(TAG, "Failed to open database '" + getLabel() + "'.", e2);
            close();
            throw e2;
        }
    }

    public static SQLiteDatabase openDatabase(String str, CursorFactory cursorFactory, int i2) {
        return openDatabase(str, cursorFactory, i2, null);
    }

    private void openInner() {
        synchronized (this.mLock) {
            this.mConnectionPoolLocked = SQLiteConnectionPool.open(this.mConfigurationLocked);
            this.mCloseGuardLocked.open("close");
        }
        synchronized (sActiveDatabases) {
            sActiveDatabases.put(this, null);
        }
    }

    public static SQLiteDatabase openOrCreateDatabase(File file, CursorFactory cursorFactory) {
        return openOrCreateDatabase(file.getPath(), cursorFactory);
    }

    public static int releaseMemory() {
        return SQLiteGlobal.releaseMemory();
    }

    private void throwIfNotOpenLocked() {
        if (this.mConnectionPoolLocked == null) {
            throw new IllegalStateException(c.n(new StringBuilder("The database '"), this.mConfigurationLocked.label, "' is not open."));
        }
    }

    private boolean yieldIfContendedHelper(boolean z2, long j2) {
        acquireReference();
        try {
            return getThreadSession().yieldTransaction(j2, z2, null);
        } finally {
            releaseReference();
        }
    }

    public void addCustomFunction(String str, int i2, CustomFunction customFunction) {
        SQLiteCustomFunction sQLiteCustomFunction = new SQLiteCustomFunction(str, i2, customFunction);
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            this.mConfigurationLocked.customFunctions.add(sQLiteCustomFunction);
            try {
                this.mConnectionPoolLocked.reconfigure(this.mConfigurationLocked);
            } catch (RuntimeException e2) {
                this.mConfigurationLocked.customFunctions.remove(sQLiteCustomFunction);
                throw e2;
            }
        }
    }

    public void beginTransaction() {
        beginTransaction(null, true);
    }

    public void beginTransactionNonExclusive() {
        beginTransaction(null, false);
    }

    public void beginTransactionWithListener(SQLiteTransactionListener sQLiteTransactionListener) {
        beginTransaction(sQLiteTransactionListener, true);
    }

    public void beginTransactionWithListenerNonExclusive(SQLiteTransactionListener sQLiteTransactionListener) {
        beginTransaction(sQLiteTransactionListener, false);
    }

    public SQLiteStatement compileStatement(String str) {
        acquireReference();
        try {
            return new SQLiteStatement(this, str, null);
        } finally {
            releaseReference();
        }
    }

    public SQLiteSession createSession() {
        SQLiteConnectionPool sQLiteConnectionPool;
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            sQLiteConnectionPool = this.mConnectionPoolLocked;
        }
        return new SQLiteSession(sQLiteConnectionPool);
    }

    public int delete(String str, String str2, String[] strArr) {
        String str3;
        acquireReference();
        try {
            StringBuilder sb = new StringBuilder("DELETE FROM ");
            sb.append(str);
            if (TextUtils.isEmpty(str2)) {
                str3 = "";
            } else {
                str3 = " WHERE " + str2;
            }
            sb.append(str3);
            SQLiteStatement sQLiteStatement = new SQLiteStatement(this, sb.toString(), strArr);
            try {
                int iExecuteUpdateDelete = sQLiteStatement.executeUpdateDelete();
                sQLiteStatement.close();
                releaseReference();
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                sQLiteStatement.close();
                throw th;
            }
        } catch (Throwable th2) {
            releaseReference();
            throw th2;
        }
    }

    public void disableWriteAheadLogging() {
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfigurationLocked;
            int i2 = sQLiteDatabaseConfiguration.openFlags;
            if ((i2 & 536870912) == 0) {
                return;
            }
            sQLiteDatabaseConfiguration.openFlags = i2 & (-536870913);
            try {
                this.mConnectionPoolLocked.reconfigure(sQLiteDatabaseConfiguration);
            } catch (RuntimeException e2) {
                SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration2 = this.mConfigurationLocked;
                sQLiteDatabaseConfiguration2.openFlags = 536870912 | sQLiteDatabaseConfiguration2.openFlags;
                throw e2;
            }
        }
    }

    public boolean enableWriteAheadLogging() {
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            if ((this.mConfigurationLocked.openFlags & 536870912) != 0) {
                return true;
            }
            if (isReadOnlyLocked()) {
                return false;
            }
            if (this.mConfigurationLocked.isInMemoryDb()) {
                Log.i(TAG, "can't enable WAL for memory databases.");
                return false;
            }
            if (this.mHasAttachedDbsLocked) {
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "this database: " + this.mConfigurationLocked.label + " has attached databases. can't  enable WAL.");
                }
                return false;
            }
            SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfigurationLocked;
            sQLiteDatabaseConfiguration.openFlags |= 536870912;
            try {
                this.mConnectionPoolLocked.reconfigure(sQLiteDatabaseConfiguration);
                return true;
            } catch (RuntimeException e2) {
                this.mConfigurationLocked.openFlags &= -536870913;
                throw e2;
            }
        }
    }

    public void endTransaction() {
        acquireReference();
        try {
            getThreadSession().endTransaction(null);
        } finally {
            releaseReference();
        }
    }

    public void execSQL(String str) {
        executeSql(str, null);
    }

    public void finalize() throws Throwable {
        try {
            dispose(true);
        } finally {
            super.finalize();
        }
    }

    public List<Pair<String, String>> getAttachedDbs() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mLock) {
            Cursor cursorRawQuery = null;
            if (this.mConnectionPoolLocked == null) {
                return null;
            }
            if (!this.mHasAttachedDbsLocked) {
                arrayList.add(new Pair("main", this.mConfigurationLocked.path));
                return arrayList;
            }
            acquireReference();
            try {
                try {
                    cursorRawQuery = rawQuery("pragma database_list;", null);
                    while (cursorRawQuery.moveToNext()) {
                        arrayList.add(new Pair(cursorRawQuery.getString(1), cursorRawQuery.getString(2)));
                    }
                    cursorRawQuery.close();
                    releaseReference();
                    return arrayList;
                } catch (Throwable th) {
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                releaseReference();
                throw th2;
            }
        }
    }

    public String getLabel() {
        String str;
        synchronized (this.mLock) {
            str = this.mConfigurationLocked.label;
        }
        return str;
    }

    public long getMaximumSize() {
        return getPageSize() * DatabaseUtils.longForQuery(this, "PRAGMA max_page_count;", null);
    }

    public long getPageSize() {
        return DatabaseUtils.longForQuery(this, "PRAGMA page_size;", null);
    }

    public final String getPath() {
        String str;
        synchronized (this.mLock) {
            str = this.mConfigurationLocked.path;
        }
        return str;
    }

    @Deprecated
    public Map<String, String> getSyncedTables() {
        return new HashMap(0);
    }

    public int getThreadDefaultConnectionFlags(boolean z2) {
        int i2 = z2 ? 1 : 2;
        return isMainThread() ? i2 | 4 : i2;
    }

    public SQLiteSession getThreadSession() {
        return this.mThreadSession.get();
    }

    public int getVersion() {
        return Long.valueOf(DatabaseUtils.longForQuery(this, "PRAGMA user_version;", null)).intValue();
    }

    public boolean inTransaction() {
        acquireReference();
        try {
            return getThreadSession().hasTransaction();
        } finally {
            releaseReference();
        }
    }

    public long insert(String str, String str2, ContentValues contentValues) {
        try {
            return insertWithOnConflict(str, str2, contentValues, 0);
        } catch (SQLException e2) {
            Log.e(TAG, "Error inserting " + contentValues, e2);
            return -1L;
        }
    }

    public long insertOrThrow(String str, String str2, ContentValues contentValues) {
        return insertWithOnConflict(str, str2, contentValues, 0);
    }

    public long insertWithOnConflict(String str, String str2, ContentValues contentValues, int i2) {
        Object[] objArr;
        acquireReference();
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("INSERT");
            sb.append(CONFLICT_VALUES[i2]);
            sb.append(" INTO ");
            sb.append(str);
            sb.append('(');
            int i3 = 0;
            int size = (contentValues == null || contentValues.isEmpty()) ? 0 : contentValues.size();
            if (size > 0) {
                objArr = new Object[size];
                int i4 = 0;
                for (String str3 : contentValues.keySet()) {
                    sb.append(i4 > 0 ? "," : "");
                    sb.append(str3);
                    objArr[i4] = contentValues.get(str3);
                    i4++;
                }
                sb.append(')');
                sb.append(" VALUES (");
                while (i3 < size) {
                    sb.append(i3 > 0 ? ",?" : "?");
                    i3++;
                }
            } else {
                sb.append(str2 + ") VALUES (NULL");
                objArr = null;
            }
            sb.append(')');
            SQLiteStatement sQLiteStatement = new SQLiteStatement(this, sb.toString(), objArr);
            try {
                long jExecuteInsert = sQLiteStatement.executeInsert();
                sQLiteStatement.close();
                releaseReference();
                return jExecuteInsert;
            } catch (Throwable th) {
                sQLiteStatement.close();
                throw th;
            }
        } catch (Throwable th2) {
            releaseReference();
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isDatabaseIntegrityOk() {
        List list;
        acquireReference();
        try {
            try {
                List<Pair<String, String>> attachedDbs = getAttachedDbs();
                if (attachedDbs == null) {
                    throw new IllegalStateException("databaselist for: " + getPath() + " couldn't be retrieved. probably because the database is closed");
                }
                list = attachedDbs;
                for (int i2 = 0; i2 < list.size(); i2++) {
                    Pair pair = (Pair) list.get(i2);
                    SQLiteStatement sQLiteStatementCompileStatement = null;
                    try {
                        sQLiteStatementCompileStatement = compileStatement("PRAGMA " + ((String) pair.first) + ".integrity_check(1);");
                        String strSimpleQueryForString = sQLiteStatementCompileStatement.simpleQueryForString();
                        if (!strSimpleQueryForString.equalsIgnoreCase("ok")) {
                            Log.e(TAG, "PRAGMA integrity_check on " + ((String) pair.second) + " returned: " + strSimpleQueryForString);
                            sQLiteStatementCompileStatement.close();
                            releaseReference();
                            return false;
                        }
                        sQLiteStatementCompileStatement.close();
                    } catch (Throwable th) {
                        if (sQLiteStatementCompileStatement != null) {
                            sQLiteStatementCompileStatement.close();
                        }
                        throw th;
                    }
                }
                releaseReference();
                return true;
            } catch (SQLiteException unused) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new Pair("main", getPath()));
                list = arrayList;
            }
        } catch (Throwable th2) {
            releaseReference();
            throw th2;
        }
        releaseReference();
        throw th2;
    }

    public boolean isDbLockedByCurrentThread() {
        acquireReference();
        try {
            return getThreadSession().hasConnection();
        } finally {
            releaseReference();
        }
    }

    @Deprecated
    public boolean isDbLockedByOtherThreads() {
        return false;
    }

    public boolean isInMemoryDatabase() {
        boolean zIsInMemoryDb;
        synchronized (this.mLock) {
            zIsInMemoryDb = this.mConfigurationLocked.isInMemoryDb();
        }
        return zIsInMemoryDb;
    }

    public boolean isOpen() {
        boolean z2;
        synchronized (this.mLock) {
            z2 = this.mConnectionPoolLocked != null;
        }
        return z2;
    }

    public boolean isReadOnly() {
        boolean zIsReadOnlyLocked;
        synchronized (this.mLock) {
            zIsReadOnlyLocked = isReadOnlyLocked();
        }
        return zIsReadOnlyLocked;
    }

    public boolean isWriteAheadLoggingEnabled() {
        boolean z2;
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            z2 = (this.mConfigurationLocked.openFlags & 536870912) != 0;
        }
        return z2;
    }

    @Deprecated
    public void markTableSyncable(String str, String str2) {
    }

    public boolean needUpgrade(int i2) {
        return i2 > getVersion();
    }

    @Override // android.database.sqlite.SQLiteClosable
    public void onAllReferencesReleased() {
        dispose(false);
    }

    public void onCorruption() {
        EventLog.writeEvent(EVENT_DB_CORRUPT, getLabel());
        this.mErrorHandler.onCorruption(this);
    }

    public Cursor query(boolean z2, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        return queryWithFactory(null, z2, str, strArr, str2, strArr2, str3, str4, str5, str6, null);
    }

    public Cursor queryWithFactory(CursorFactory cursorFactory, boolean z2, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        return queryWithFactory(cursorFactory, z2, str, strArr, str2, strArr2, str3, str4, str5, str6, null);
    }

    public Cursor rawQuery(String str, String[] strArr) {
        return rawQueryWithFactory(null, str, strArr, null, null);
    }

    public Cursor rawQueryWithFactory(CursorFactory cursorFactory, String str, String[] strArr, String str2) {
        return rawQueryWithFactory(cursorFactory, str, strArr, str2, null);
    }

    public void reopenReadWrite() {
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            if (isReadOnlyLocked()) {
                SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfigurationLocked;
                int i2 = sQLiteDatabaseConfiguration.openFlags;
                sQLiteDatabaseConfiguration.openFlags = (i2 & (-2)) | 0;
                try {
                    this.mConnectionPoolLocked.reconfigure(sQLiteDatabaseConfiguration);
                } catch (RuntimeException e2) {
                    this.mConfigurationLocked.openFlags = i2;
                    throw e2;
                }
            }
        }
    }

    public long replace(String str, String str2, ContentValues contentValues) {
        try {
            return insertWithOnConflict(str, str2, contentValues, 5);
        } catch (SQLException e2) {
            Log.e(TAG, "Error inserting " + contentValues, e2);
            return -1L;
        }
    }

    public long replaceOrThrow(String str, String str2, ContentValues contentValues) {
        return insertWithOnConflict(str, str2, contentValues, 5);
    }

    public void setForeignKeyConstraintsEnabled(boolean z2) {
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfigurationLocked;
            if (sQLiteDatabaseConfiguration.foreignKeyConstraintsEnabled == z2) {
                return;
            }
            sQLiteDatabaseConfiguration.foreignKeyConstraintsEnabled = z2;
            try {
                this.mConnectionPoolLocked.reconfigure(sQLiteDatabaseConfiguration);
            } catch (RuntimeException e2) {
                this.mConfigurationLocked.foreignKeyConstraintsEnabled = !z2;
                throw e2;
            }
        }
    }

    public void setLocale(Locale locale) {
        if (locale == null) {
            throw new IllegalArgumentException("locale must not be null.");
        }
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfigurationLocked;
            Locale locale2 = sQLiteDatabaseConfiguration.locale;
            sQLiteDatabaseConfiguration.locale = locale;
            try {
                this.mConnectionPoolLocked.reconfigure(sQLiteDatabaseConfiguration);
            } catch (RuntimeException e2) {
                this.mConfigurationLocked.locale = locale2;
                throw e2;
            }
        }
    }

    @Deprecated
    public void setLockingEnabled(boolean z2) {
    }

    public void setMaxSqlCacheSize(int i2) {
        if (i2 > 100 || i2 < 0) {
            throw new IllegalStateException("expected value between 0 and 100");
        }
        synchronized (this.mLock) {
            throwIfNotOpenLocked();
            SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfigurationLocked;
            int i3 = sQLiteDatabaseConfiguration.maxSqlCacheSize;
            sQLiteDatabaseConfiguration.maxSqlCacheSize = i2;
            try {
                this.mConnectionPoolLocked.reconfigure(sQLiteDatabaseConfiguration);
            } catch (RuntimeException e2) {
                this.mConfigurationLocked.maxSqlCacheSize = i3;
                throw e2;
            }
        }
    }

    public long setMaximumSize(long j2) {
        long pageSize = getPageSize();
        long j3 = j2 / pageSize;
        if (j2 % pageSize != 0) {
            j3++;
        }
        return DatabaseUtils.longForQuery(this, "PRAGMA max_page_count = " + j3, null) * pageSize;
    }

    public void setPageSize(long j2) {
        execSQL("PRAGMA page_size = " + j2);
    }

    public void setTransactionSuccessful() {
        acquireReference();
        try {
            getThreadSession().setTransactionSuccessful();
        } finally {
            releaseReference();
        }
    }

    public void setVersion(int i2) {
        execSQL("PRAGMA user_version = " + i2);
    }

    public String toString() {
        return "SQLiteDatabase: " + getPath();
    }

    public int update(String str, ContentValues contentValues, String str2, String[] strArr) {
        return updateWithOnConflict(str, contentValues, str2, strArr, 0);
    }

    public int updateWithOnConflict(String str, ContentValues contentValues, String str2, String[] strArr, int i2) {
        if (contentValues == null || contentValues.isEmpty()) {
            throw new IllegalArgumentException("Empty values");
        }
        acquireReference();
        try {
            StringBuilder sb = new StringBuilder(120);
            sb.append("UPDATE ");
            sb.append(CONFLICT_VALUES[i2]);
            sb.append(str);
            sb.append(" SET ");
            int size = contentValues.size();
            int length = strArr == null ? size : strArr.length + size;
            Object[] objArr = new Object[length];
            int i3 = 0;
            for (String str3 : contentValues.keySet()) {
                sb.append(i3 > 0 ? "," : "");
                sb.append(str3);
                objArr[i3] = contentValues.get(str3);
                sb.append("=?");
                i3++;
            }
            if (strArr != null) {
                for (int i4 = size; i4 < length; i4++) {
                    objArr[i4] = strArr[i4 - size];
                }
            }
            if (!TextUtils.isEmpty(str2)) {
                sb.append(" WHERE ");
                sb.append(str2);
            }
            SQLiteStatement sQLiteStatement = new SQLiteStatement(this, sb.toString(), objArr);
            try {
                int iExecuteUpdateDelete = sQLiteStatement.executeUpdateDelete();
                sQLiteStatement.close();
                releaseReference();
                return iExecuteUpdateDelete;
            } catch (Throwable th) {
                sQLiteStatement.close();
                throw th;
            }
        } catch (Throwable th2) {
            releaseReference();
            throw th2;
        }
    }

    public void validateSql(String str, CancellationSignal cancellationSignal) {
        getThreadSession().prepare(str, getThreadDefaultConnectionFlags(true), cancellationSignal, null);
    }

    @Deprecated
    public boolean yieldIfContended() {
        return yieldIfContendedHelper(false, -1L);
    }

    public boolean yieldIfContendedSafely() {
        return yieldIfContendedHelper(true, -1L);
    }

    private void beginTransaction(SQLiteTransactionListener sQLiteTransactionListener, boolean z2) {
        acquireReference();
        try {
            getThreadSession().beginTransaction(z2 ? 2 : 1, sQLiteTransactionListener, getThreadDefaultConnectionFlags(false), null);
        } finally {
            releaseReference();
        }
    }

    public static SQLiteDatabase openDatabase(File file, OpenParams openParams) {
        return openDatabase(file.getPath(), openParams);
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, CursorFactory cursorFactory) {
        return openDatabase(str, cursorFactory, 268435456, null);
    }

    public void execSQL(String str, Object[] objArr) {
        if (objArr == null) {
            throw new IllegalArgumentException("Empty bindArgs");
        }
        executeSql(str, objArr);
    }

    @Deprecated
    public void markTableSyncable(String str, String str2, String str3) {
    }

    public Cursor query(boolean z2, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, CancellationSignal cancellationSignal) {
        return queryWithFactory(null, z2, str, strArr, str2, strArr2, str3, str4, str5, str6, cancellationSignal);
    }

    public Cursor queryWithFactory(CursorFactory cursorFactory, boolean z2, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, CancellationSignal cancellationSignal) {
        acquireReference();
        try {
            return rawQueryWithFactory(cursorFactory, SQLiteQueryBuilder.buildQueryString(z2, str, strArr, str2, str3, str4, str5, str6), strArr2, findEditTable(str), cancellationSignal);
        } finally {
            releaseReference();
        }
    }

    public Cursor rawQuery(String str, String[] strArr, CancellationSignal cancellationSignal) {
        return rawQueryWithFactory(null, str, strArr, null, cancellationSignal);
    }

    public Cursor rawQueryWithFactory(CursorFactory cursorFactory, String str, String[] strArr, String str2, CancellationSignal cancellationSignal) {
        acquireReference();
        try {
            SQLiteDirectCursorDriver sQLiteDirectCursorDriver = new SQLiteDirectCursorDriver(this, str, str2, cancellationSignal);
            if (cursorFactory == null) {
                cursorFactory = this.mCursorFactory;
            }
            return sQLiteDirectCursorDriver.query(cursorFactory, strArr);
        } finally {
            releaseReference();
        }
    }

    public boolean yieldIfContendedSafely(long j2) {
        return yieldIfContendedHelper(true, j2);
    }

    private static SQLiteDatabase openDatabase(String str, OpenParams openParams) {
        Preconditions.checkArgument(openParams != null, "OpenParams cannot be null");
        SQLiteDatabase sQLiteDatabase = new SQLiteDatabase(str, openParams.mOpenFlags, openParams.mCursorFactory, openParams.mErrorHandler, openParams.mLookasideSlotSize, openParams.mLookasideSlotCount, openParams.mIdleConnectionTimeout);
        sQLiteDatabase.open();
        return sQLiteDatabase;
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return openDatabase(str, cursorFactory, 268435456, databaseErrorHandler);
    }

    public Cursor query(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        return query(false, str, strArr, str2, strArr2, str3, str4, str5, null);
    }

    public Cursor query(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        return query(false, str, strArr, str2, strArr2, str3, str4, str5, str6);
    }

    public static SQLiteDatabase openDatabase(String str, CursorFactory cursorFactory, int i2, DatabaseErrorHandler databaseErrorHandler) {
        SQLiteDatabase sQLiteDatabase = new SQLiteDatabase(str, i2, cursorFactory, databaseErrorHandler, -1, -1, -1L);
        sQLiteDatabase.open();
        return sQLiteDatabase;
    }
}
