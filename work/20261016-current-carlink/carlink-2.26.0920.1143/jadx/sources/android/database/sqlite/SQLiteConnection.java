package android.database.sqlite;

import android.accessibilityservice.c;
import android.database.CursorWindow;
import android.database.DatabaseUtils;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.os.Trace;
import android.provider.SettingsStringUtil;
import android.util.Log;
import android.util.LruCache;
import android.util.Printer;
import dalvik.system.BlockGuard;
import dalvik.system.CloseGuard;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class SQLiteConnection implements CancellationSignal.OnCancelListener {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final boolean DEBUG = false;
    private static final String TAG = "SQLiteConnection";
    private int mCancellationSignalAttachCount;
    private final CloseGuard mCloseGuard;
    private final SQLiteDatabaseConfiguration mConfiguration;
    private final int mConnectionId;
    private long mConnectionPtr;
    private final boolean mIsPrimaryConnection;
    private final boolean mIsReadOnlyConnection;
    private boolean mOnlyAllowReadOnlyOperations;
    private final SQLiteConnectionPool mPool;
    private final PreparedStatementCache mPreparedStatementCache;
    private PreparedStatement mPreparedStatementPool;
    private final OperationLog mRecentOperations;
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];

    public static final class Operation {
        private static final int MAX_TRACE_METHOD_NAME_LEN = 256;
        public ArrayList<Object> mBindArgs;
        public int mCookie;
        public long mEndTime;
        public Exception mException;
        public boolean mFinished;
        public String mKind;
        public String mSql;
        public long mStartTime;
        public long mStartWallTime;

        private Operation() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getFormattedStartTime() {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS").format(new Date(this.mStartWallTime));
        }

        private String getStatus() {
            if (this.mFinished) {
                return this.mException != null ? "failed" : "succeeded";
            }
            return "running";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getTraceMethodName() {
            String str = this.mKind + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + this.mSql;
            return str.length() > 256 ? str.substring(0, 256) : str;
        }

        public void describe(StringBuilder sb, boolean z2) {
            ArrayList<Object> arrayList;
            sb.append(this.mKind);
            if (this.mFinished) {
                sb.append(" took ");
                sb.append(this.mEndTime - this.mStartTime);
                sb.append("ms");
            } else {
                sb.append(" started ");
                sb.append(System.currentTimeMillis() - this.mStartWallTime);
                sb.append("ms ago");
            }
            sb.append(" - ");
            sb.append(getStatus());
            if (this.mSql != null) {
                sb.append(", sql=\"");
                sb.append(SQLiteConnection.trimSqlForDisplay(this.mSql));
                sb.append("\"");
            }
            if (z2 && (arrayList = this.mBindArgs) != null && arrayList.size() != 0) {
                sb.append(", bindArgs=[");
                int size = this.mBindArgs.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Object obj = this.mBindArgs.get(i2);
                    if (i2 != 0) {
                        sb.append(", ");
                    }
                    if (obj == null) {
                        sb.append("null");
                    } else if (obj instanceof byte[]) {
                        sb.append("<byte[]>");
                    } else if (obj instanceof String) {
                        sb.append("\"");
                        sb.append((String) obj);
                        sb.append("\"");
                    } else {
                        sb.append(obj);
                    }
                }
                sb.append("]");
            }
            if (this.mException != null) {
                sb.append(", exception=\"");
                sb.append(this.mException.getMessage());
                sb.append("\"");
            }
        }
    }

    public static final class OperationLog {
        private static final int COOKIE_GENERATION_SHIFT = 8;
        private static final int COOKIE_INDEX_MASK = 255;
        private static final int MAX_RECENT_OPERATIONS = 20;
        private int mGeneration;
        private int mIndex;
        private final Operation[] mOperations;

        private OperationLog() {
            this.mOperations = new Operation[20];
        }

        private boolean endOperationDeferLogLocked(int i2) {
            Operation operationLocked = getOperationLocked(i2);
            if (operationLocked == null) {
                return false;
            }
            if (Trace.isTagEnabled(1048576L)) {
                Trace.asyncTraceEnd(1048576L, operationLocked.getTraceMethodName(), operationLocked.mCookie);
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            operationLocked.mEndTime = jUptimeMillis;
            operationLocked.mFinished = true;
            return SQLiteDebug.DEBUG_LOG_SLOW_QUERIES && SQLiteDebug.shouldLogSlowQuery(jUptimeMillis - operationLocked.mStartTime);
        }

        private Operation getOperationLocked(int i2) {
            Operation operation = this.mOperations[i2 & 255];
            if (operation.mCookie == i2) {
                return operation;
            }
            return null;
        }

        private void logOperationLocked(int i2, String str) {
            Operation operationLocked = getOperationLocked(i2);
            StringBuilder sb = new StringBuilder();
            operationLocked.describe(sb, false);
            if (str != null) {
                sb.append(", ");
                sb.append(str);
            }
            Log.d(SQLiteConnection.TAG, sb.toString());
        }

        private int newOperationCookieLocked(int i2) {
            int i3 = this.mGeneration;
            this.mGeneration = i3 + 1;
            return i2 | (i3 << 8);
        }

        public int beginOperation(String str, String str2, Object[] objArr) {
            int i2;
            synchronized (this.mOperations) {
                int i3 = (this.mIndex + 1) % 20;
                Operation operation = this.mOperations[i3];
                if (operation == null) {
                    operation = new Operation();
                    this.mOperations[i3] = operation;
                } else {
                    operation.mFinished = false;
                    operation.mException = null;
                    ArrayList<Object> arrayList = operation.mBindArgs;
                    if (arrayList != null) {
                        arrayList.clear();
                    }
                }
                operation.mStartWallTime = System.currentTimeMillis();
                operation.mStartTime = SystemClock.uptimeMillis();
                operation.mKind = str;
                operation.mSql = str2;
                if (objArr != null) {
                    ArrayList<Object> arrayList2 = operation.mBindArgs;
                    if (arrayList2 == null) {
                        operation.mBindArgs = new ArrayList<>();
                    } else {
                        arrayList2.clear();
                    }
                    for (Object obj : objArr) {
                        if (obj == null || !(obj instanceof byte[])) {
                            operation.mBindArgs.add(obj);
                        } else {
                            operation.mBindArgs.add(SQLiteConnection.EMPTY_BYTE_ARRAY);
                        }
                    }
                }
                operation.mCookie = newOperationCookieLocked(i3);
                if (Trace.isTagEnabled(1048576L)) {
                    Trace.asyncTraceBegin(1048576L, operation.getTraceMethodName(), operation.mCookie);
                }
                this.mIndex = i3;
                i2 = operation.mCookie;
            }
            return i2;
        }

        public String describeCurrentOperation() {
            synchronized (this.mOperations) {
                Operation operation = this.mOperations[this.mIndex];
                if (operation == null || operation.mFinished) {
                    return null;
                }
                StringBuilder sb = new StringBuilder();
                operation.describe(sb, false);
                return sb.toString();
            }
        }

        public void dump(Printer printer, boolean z2) {
            synchronized (this.mOperations) {
                printer.println("  Most recently executed operations:");
                int i2 = this.mIndex;
                Operation operation = this.mOperations[i2];
                if (operation != null) {
                    int i3 = 0;
                    do {
                        StringBuilder sb = new StringBuilder();
                        sb.append("    ");
                        sb.append(i3);
                        sb.append(": [");
                        sb.append(operation.getFormattedStartTime());
                        sb.append("] ");
                        operation.describe(sb, z2);
                        printer.println(sb.toString());
                        i2 = i2 > 0 ? i2 - 1 : 19;
                        i3++;
                        operation = this.mOperations[i2];
                        if (operation == null) {
                            break;
                        }
                    } while (i3 < 20);
                } else {
                    printer.println("    <none>");
                }
            }
        }

        public void endOperation(int i2) {
            synchronized (this.mOperations) {
                if (endOperationDeferLogLocked(i2)) {
                    logOperationLocked(i2, null);
                }
            }
        }

        public boolean endOperationDeferLog(int i2) {
            boolean zEndOperationDeferLogLocked;
            synchronized (this.mOperations) {
                zEndOperationDeferLogLocked = endOperationDeferLogLocked(i2);
            }
            return zEndOperationDeferLogLocked;
        }

        public void failOperation(int i2, Exception exc) {
            synchronized (this.mOperations) {
                Operation operationLocked = getOperationLocked(i2);
                if (operationLocked != null) {
                    operationLocked.mException = exc;
                }
            }
        }

        public void logOperation(int i2, String str) {
            synchronized (this.mOperations) {
                logOperationLocked(i2, str);
            }
        }
    }

    public static final class PreparedStatement {
        public boolean mInCache;
        public boolean mInUse;
        public int mNumParameters;
        public PreparedStatement mPoolNext;
        public boolean mReadOnly;
        public String mSql;
        public long mStatementPtr;
        public int mType;

        private PreparedStatement() {
        }
    }

    public final class PreparedStatementCache extends LruCache<String, PreparedStatement> {
        public PreparedStatementCache(int i2) {
            super(i2);
        }

        public void dump(Printer printer) {
            printer.println("  Prepared statement cache:");
            Map<String, PreparedStatement> mapSnapshot = snapshot();
            if (mapSnapshot.isEmpty()) {
                printer.println("    <none>");
                return;
            }
            int i2 = 0;
            for (Map.Entry<String, PreparedStatement> entry : mapSnapshot.entrySet()) {
                PreparedStatement value = entry.getValue();
                if (value.mInCache) {
                    String key = entry.getKey();
                    StringBuilder sbS = c.s("    ", i2, ": statementPtr=0x");
                    sbS.append(Long.toHexString(value.mStatementPtr));
                    sbS.append(", numParameters=");
                    sbS.append(value.mNumParameters);
                    sbS.append(", type=");
                    sbS.append(value.mType);
                    sbS.append(", readOnly=");
                    sbS.append(value.mReadOnly);
                    sbS.append(", sql=\"");
                    sbS.append(SQLiteConnection.trimSqlForDisplay(key));
                    sbS.append("\"");
                    printer.println(sbS.toString());
                }
                i2++;
            }
        }

        @Override // android.util.LruCache
        public void entryRemoved(boolean z2, String str, PreparedStatement preparedStatement, PreparedStatement preparedStatement2) {
            preparedStatement.mInCache = false;
            if (preparedStatement.mInUse) {
                return;
            }
            SQLiteConnection.this.finalizePreparedStatement(preparedStatement);
        }
    }

    private SQLiteConnection(SQLiteConnectionPool sQLiteConnectionPool, SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration, int i2, boolean z2) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mRecentOperations = new OperationLog();
        this.mPool = sQLiteConnectionPool;
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration2 = new SQLiteDatabaseConfiguration(sQLiteDatabaseConfiguration);
        this.mConfiguration = sQLiteDatabaseConfiguration2;
        this.mConnectionId = i2;
        this.mIsPrimaryConnection = z2;
        this.mIsReadOnlyConnection = (sQLiteDatabaseConfiguration.openFlags & 1) != 0;
        this.mPreparedStatementCache = new PreparedStatementCache(sQLiteDatabaseConfiguration2.maxSqlCacheSize);
        closeGuard.open("close");
    }

    private PreparedStatement acquirePreparedStatement(String str) {
        boolean z2;
        PreparedStatement preparedStatementObtainPreparedStatement = this.mPreparedStatementCache.get(str);
        if (preparedStatementObtainPreparedStatement == null) {
            z2 = false;
        } else {
            if (!preparedStatementObtainPreparedStatement.mInUse) {
                return preparedStatementObtainPreparedStatement;
            }
            z2 = true;
        }
        long jNativePrepareStatement = nativePrepareStatement(this.mConnectionPtr, str);
        try {
            int iNativeGetParameterCount = nativeGetParameterCount(this.mConnectionPtr, jNativePrepareStatement);
            int sqlStatementType = DatabaseUtils.getSqlStatementType(str);
            preparedStatementObtainPreparedStatement = obtainPreparedStatement(str, jNativePrepareStatement, iNativeGetParameterCount, sqlStatementType, nativeIsReadOnly(this.mConnectionPtr, jNativePrepareStatement));
            if (!z2 && isCacheable(sqlStatementType)) {
                this.mPreparedStatementCache.put(str, preparedStatementObtainPreparedStatement);
                preparedStatementObtainPreparedStatement.mInCache = true;
            }
            preparedStatementObtainPreparedStatement.mInUse = true;
            return preparedStatementObtainPreparedStatement;
        } catch (RuntimeException e2) {
            if (preparedStatementObtainPreparedStatement == null || !preparedStatementObtainPreparedStatement.mInCache) {
                nativeFinalizeStatement(this.mConnectionPtr, jNativePrepareStatement);
            }
            throw e2;
        }
    }

    private void applyBlockGuardPolicy(PreparedStatement preparedStatement) {
        if (this.mConfiguration.isInMemoryDb()) {
            return;
        }
        if (preparedStatement.mReadOnly) {
            BlockGuard.getThreadPolicy().onReadFromDisk();
        } else {
            BlockGuard.getThreadPolicy().onWriteToDisk();
        }
    }

    private void attachCancellationSignal(CancellationSignal cancellationSignal) {
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
            int i2 = this.mCancellationSignalAttachCount + 1;
            this.mCancellationSignalAttachCount = i2;
            if (i2 == 1) {
                nativeResetCancel(this.mConnectionPtr, true);
                cancellationSignal.setOnCancelListener(this);
            }
        }
    }

    private void bindArguments(PreparedStatement preparedStatement, Object[] objArr) {
        int length = objArr != null ? objArr.length : 0;
        if (length != preparedStatement.mNumParameters) {
            throw new SQLiteBindOrColumnIndexOutOfRangeException("Expected " + preparedStatement.mNumParameters + " bind arguments but " + length + " were provided.");
        }
        if (length == 0) {
            return;
        }
        long j2 = preparedStatement.mStatementPtr;
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = objArr[i2];
            int typeOfObject = DatabaseUtils.getTypeOfObject(obj);
            if (typeOfObject == 0) {
                nativeBindNull(this.mConnectionPtr, j2, i2 + 1);
            } else if (typeOfObject == 1) {
                nativeBindLong(this.mConnectionPtr, j2, i2 + 1, ((Number) obj).longValue());
            } else if (typeOfObject == 2) {
                nativeBindDouble(this.mConnectionPtr, j2, i2 + 1, ((Number) obj).doubleValue());
            } else if (typeOfObject == 4) {
                nativeBindBlob(this.mConnectionPtr, j2, i2 + 1, (byte[]) obj);
            } else if (obj instanceof Boolean) {
                nativeBindLong(this.mConnectionPtr, j2, i2 + 1, ((Boolean) obj).booleanValue() ? 1L : 0L);
            } else {
                nativeBindString(this.mConnectionPtr, j2, i2 + 1, obj.toString());
            }
        }
    }

    private static String canonicalizeSyncMode(String str) {
        if (str.equals(WifiEnterpriseConfig.ENGINE_DISABLE)) {
            return "OFF";
        }
        if (str.equals(WifiEnterpriseConfig.ENGINE_ENABLE)) {
            return "NORMAL";
        }
        return str.equals("2") ? "FULL" : str;
    }

    private void detachCancellationSignal(CancellationSignal cancellationSignal) {
        if (cancellationSignal != null) {
            int i2 = this.mCancellationSignalAttachCount - 1;
            this.mCancellationSignalAttachCount = i2;
            if (i2 == 0) {
                cancellationSignal.setOnCancelListener(null);
                nativeResetCancel(this.mConnectionPtr, false);
            }
        }
    }

    private void dispose(boolean z2) {
        CloseGuard closeGuard = this.mCloseGuard;
        if (closeGuard != null) {
            if (z2) {
                closeGuard.warnIfOpen();
            }
            this.mCloseGuard.close();
        }
        if (this.mConnectionPtr != 0) {
            int iBeginOperation = this.mRecentOperations.beginOperation("close", null, null);
            try {
                this.mPreparedStatementCache.evictAll();
                nativeClose(this.mConnectionPtr);
                this.mConnectionPtr = 0L;
            } finally {
                this.mRecentOperations.endOperation(iBeginOperation);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finalizePreparedStatement(PreparedStatement preparedStatement) {
        nativeFinalizeStatement(this.mConnectionPtr, preparedStatement.mStatementPtr);
        recyclePreparedStatement(preparedStatement);
    }

    private SQLiteDebug.DbStats getMainDbStatsUnsafe(int i2, long j2, long j3) {
        String strM = this.mConfiguration.path;
        if (!this.mIsPrimaryConnection) {
            strM = c.m(c.u(strM, " ("), this.mConnectionId, ")");
        }
        return new SQLiteDebug.DbStats(strM, j2, j3, i2, this.mPreparedStatementCache.hitCount(), this.mPreparedStatementCache.missCount(), this.mPreparedStatementCache.size());
    }

    private static boolean isCacheable(int i2) {
        return i2 == 2 || i2 == 1;
    }

    private static native void nativeBindBlob(long j2, long j3, int i2, byte[] bArr);

    private static native void nativeBindDouble(long j2, long j3, int i2, double d2);

    private static native void nativeBindLong(long j2, long j3, int i2, long j4);

    private static native void nativeBindNull(long j2, long j3, int i2);

    private static native void nativeBindString(long j2, long j3, int i2, String str);

    private static native void nativeCancel(long j2);

    private static native void nativeClose(long j2);

    private static native void nativeExecute(long j2, long j3);

    private static native int nativeExecuteForBlobFileDescriptor(long j2, long j3);

    private static native int nativeExecuteForChangedRowCount(long j2, long j3);

    private static native long nativeExecuteForCursorWindow(long j2, long j3, long j4, int i2, int i3, boolean z2);

    private static native long nativeExecuteForLastInsertedRowId(long j2, long j3);

    private static native long nativeExecuteForLong(long j2, long j3);

    private static native String nativeExecuteForString(long j2, long j3);

    private static native void nativeFinalizeStatement(long j2, long j3);

    private static native int nativeGetColumnCount(long j2, long j3);

    private static native String nativeGetColumnName(long j2, long j3, int i2);

    private static native int nativeGetDbLookaside(long j2);

    private static native int nativeGetParameterCount(long j2, long j3);

    private static native boolean nativeIsReadOnly(long j2, long j3);

    private static native long nativeOpen(String str, int i2, String str2, boolean z2, boolean z3, int i3, int i4);

    private static native long nativePrepareStatement(long j2, String str);

    private static native void nativeRegisterCustomFunction(long j2, SQLiteCustomFunction sQLiteCustomFunction);

    private static native void nativeRegisterLocalizedCollators(long j2, String str);

    private static native void nativeResetCancel(long j2, boolean z2);

    private static native void nativeResetStatementAndClearBindings(long j2, long j3);

    private PreparedStatement obtainPreparedStatement(String str, long j2, int i2, int i3, boolean z2) {
        PreparedStatement preparedStatement = this.mPreparedStatementPool;
        if (preparedStatement != null) {
            this.mPreparedStatementPool = preparedStatement.mPoolNext;
            preparedStatement.mPoolNext = null;
            preparedStatement.mInCache = false;
        } else {
            preparedStatement = new PreparedStatement();
        }
        preparedStatement.mSql = str;
        preparedStatement.mStatementPtr = j2;
        preparedStatement.mNumParameters = i2;
        preparedStatement.mType = i3;
        preparedStatement.mReadOnly = z2;
        return preparedStatement;
    }

    public static SQLiteConnection open(SQLiteConnectionPool sQLiteConnectionPool, SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration, int i2, boolean z2) {
        SQLiteConnection sQLiteConnection = new SQLiteConnection(sQLiteConnectionPool, sQLiteDatabaseConfiguration, i2, z2);
        try {
            sQLiteConnection.open();
            return sQLiteConnection;
        } catch (SQLiteException e2) {
            sQLiteConnection.dispose(false);
            throw e2;
        }
    }

    private void recyclePreparedStatement(PreparedStatement preparedStatement) {
        preparedStatement.mSql = null;
        preparedStatement.mPoolNext = this.mPreparedStatementPool;
        this.mPreparedStatementPool = preparedStatement;
    }

    private void releasePreparedStatement(PreparedStatement preparedStatement) {
        preparedStatement.mInUse = false;
        if (!preparedStatement.mInCache) {
            finalizePreparedStatement(preparedStatement);
            return;
        }
        try {
            nativeResetStatementAndClearBindings(this.mConnectionPtr, preparedStatement.mStatementPtr);
        } catch (SQLiteException unused) {
            this.mPreparedStatementCache.remove(preparedStatement.mSql);
        }
    }

    private void setAutoCheckpointInterval() {
        if (this.mConfiguration.isInMemoryDb() || this.mIsReadOnlyConnection) {
            return;
        }
        long wALAutoCheckpoint = SQLiteGlobal.getWALAutoCheckpoint();
        if (executeForLong("PRAGMA wal_autocheckpoint", null, null) != wALAutoCheckpoint) {
            executeForLong(c.f("PRAGMA wal_autocheckpoint=", wALAutoCheckpoint), null, null);
        }
    }

    private void setForeignKeyModeFromConfiguration() {
        if (this.mIsReadOnlyConnection) {
            return;
        }
        long j2 = this.mConfiguration.foreignKeyConstraintsEnabled ? 1L : 0L;
        if (executeForLong("PRAGMA foreign_keys", null, null) != j2) {
            execute(c.f("PRAGMA foreign_keys=", j2), null, null);
        }
    }

    private void setJournalMode(String str) {
        String strExecuteForString = executeForString("PRAGMA journal_mode", null, null);
        if (strExecuteForString.equalsIgnoreCase(str)) {
            return;
        }
        try {
            if (executeForString("PRAGMA journal_mode=" + str, null, null).equalsIgnoreCase(str)) {
                return;
            }
        } catch (SQLiteDatabaseLockedException unused) {
        }
        Log.w(TAG, "Could not change the database journal mode of '" + this.mConfiguration.label + "' from '" + strExecuteForString + "' to '" + str + "' because the database is locked.  This usually means that there are other open connections to the database which prevents the database from enabling or disabling write-ahead logging mode.  Proceeding without changing the journal mode.");
    }

    private void setJournalSizeLimit() {
        if (this.mConfiguration.isInMemoryDb() || this.mIsReadOnlyConnection) {
            return;
        }
        long journalSizeLimit = SQLiteGlobal.getJournalSizeLimit();
        if (executeForLong("PRAGMA journal_size_limit", null, null) != journalSizeLimit) {
            executeForLong(c.f("PRAGMA journal_size_limit=", journalSizeLimit), null, null);
        }
    }

    private void setLocaleFromConfiguration() {
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfiguration;
        if ((sQLiteDatabaseConfiguration.openFlags & 16) != 0) {
            return;
        }
        String string = sQLiteDatabaseConfiguration.locale.toString();
        nativeRegisterLocalizedCollators(this.mConnectionPtr, string);
        if (this.mIsReadOnlyConnection) {
            return;
        }
        try {
            execute("CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)", null, null);
            String strExecuteForString = executeForString("SELECT locale FROM android_metadata UNION SELECT NULL ORDER BY locale DESC LIMIT 1", null, null);
            if (strExecuteForString == null || !strExecuteForString.equals(string)) {
                execute("BEGIN", null, null);
                try {
                    execute("DELETE FROM android_metadata", null, null);
                    execute("INSERT INTO android_metadata (locale) VALUES(?)", new Object[]{string}, null);
                    execute("REINDEX LOCALIZED", null, null);
                    execute("COMMIT", null, null);
                } catch (Throwable th) {
                    execute("ROLLBACK", null, null);
                    throw th;
                }
            }
        } catch (RuntimeException e2) {
            throw new SQLiteException("Failed to change locale for db '" + this.mConfiguration.label + "' to '" + string + "'.", e2);
        }
    }

    private void setPageSize() {
        if (this.mConfiguration.isInMemoryDb() || this.mIsReadOnlyConnection) {
            return;
        }
        long defaultPageSize = SQLiteGlobal.getDefaultPageSize();
        if (executeForLong("PRAGMA page_size", null, null) != defaultPageSize) {
            execute(c.f("PRAGMA page_size=", defaultPageSize), null, null);
        }
    }

    private void setSyncMode(String str) {
        if (canonicalizeSyncMode(executeForString("PRAGMA synchronous", null, null)).equalsIgnoreCase(canonicalizeSyncMode(str))) {
            return;
        }
        execute("PRAGMA synchronous=" + str, null, null);
    }

    private void setWalModeFromConfiguration() {
        if (this.mConfiguration.isInMemoryDb() || this.mIsReadOnlyConnection) {
            return;
        }
        if ((this.mConfiguration.openFlags & 536870912) != 0) {
            setJournalMode("WAL");
            setSyncMode(SQLiteGlobal.getWALSyncMode());
        } else {
            setJournalMode(SQLiteGlobal.getDefaultJournalMode());
            setSyncMode(SQLiteGlobal.getDefaultSyncMode());
        }
    }

    private void throwIfStatementForbidden(PreparedStatement preparedStatement) {
        if (this.mOnlyAllowReadOnlyOperations && !preparedStatement.mReadOnly) {
            throw new SQLiteException("Cannot execute this statement because it might modify the database but the connection is read-only.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String trimSqlForDisplay(String str) {
        return str.replaceAll("[\\s]*\\n+[\\s]*", WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
    }

    public void close() {
        dispose(false);
    }

    public void collectDbStats(ArrayList<SQLiteDebug.DbStats> arrayList) {
        long jExecuteForLong;
        long jExecuteForLong2;
        long jExecuteForLong3;
        long j2;
        long jExecuteForLong4;
        int iNativeGetDbLookaside = nativeGetDbLookaside(this.mConnectionPtr);
        try {
            jExecuteForLong = executeForLong("PRAGMA page_count;", null, null);
            try {
                jExecuteForLong2 = executeForLong("PRAGMA page_size;", null, null);
            } catch (SQLiteException unused) {
                jExecuteForLong2 = 0;
            }
        } catch (SQLiteException unused2) {
            jExecuteForLong = 0;
        }
        arrayList.add(getMainDbStatsUnsafe(iNativeGetDbLookaside, jExecuteForLong, jExecuteForLong2));
        CursorWindow cursorWindow = new CursorWindow("collectDbStats");
        try {
            try {
                executeForCursorWindow("PRAGMA database_list;", null, cursorWindow, 0, 0, false, null);
                for (int i2 = 1; i2 < cursorWindow.getNumRows(); i2++) {
                    String string = cursorWindow.getString(i2, 1);
                    String string2 = cursorWindow.getString(i2, 2);
                    try {
                        jExecuteForLong3 = executeForLong("PRAGMA " + string + ".page_count;", null, null);
                        try {
                            j2 = jExecuteForLong3;
                            jExecuteForLong4 = executeForLong("PRAGMA " + string + ".page_size;", null, null);
                        } catch (SQLiteException unused3) {
                            j2 = jExecuteForLong3;
                            jExecuteForLong4 = 0;
                        }
                    } catch (SQLiteException unused4) {
                        jExecuteForLong3 = 0;
                    }
                    String str = "  (attached) " + string;
                    if (!string2.isEmpty()) {
                        str = str + ": " + string2;
                    }
                    arrayList.add(new SQLiteDebug.DbStats(str, j2, jExecuteForLong4, 0, 0, 0, 0));
                }
            } finally {
                cursorWindow.close();
            }
        } catch (SQLiteException unused5) {
        }
    }

    public void collectDbStatsUnsafe(ArrayList<SQLiteDebug.DbStats> arrayList) {
        arrayList.add(getMainDbStatsUnsafe(0, 0L, 0L));
    }

    public String describeCurrentOperationUnsafe() {
        return this.mRecentOperations.describeCurrentOperation();
    }

    public void dump(Printer printer, boolean z2) {
        dumpUnsafe(printer, z2);
    }

    public void dumpUnsafe(Printer printer, boolean z2) {
        printer.println("Connection #" + this.mConnectionId + SettingsStringUtil.DELIMITER);
        if (z2) {
            printer.println("  connectionPtr: 0x" + Long.toHexString(this.mConnectionPtr));
        }
        printer.println("  isPrimaryConnection: " + this.mIsPrimaryConnection);
        printer.println("  onlyAllowReadOnlyOperations: " + this.mOnlyAllowReadOnlyOperations);
        this.mRecentOperations.dump(printer, z2);
        if (z2) {
            this.mPreparedStatementCache.dump(printer);
        }
    }

    public void execute(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int iBeginOperation = this.mRecentOperations.beginOperation("execute", str, objArr);
        try {
            try {
                PreparedStatement preparedStatementAcquirePreparedStatement = acquirePreparedStatement(str);
                try {
                    throwIfStatementForbidden(preparedStatementAcquirePreparedStatement);
                    bindArguments(preparedStatementAcquirePreparedStatement, objArr);
                    applyBlockGuardPolicy(preparedStatementAcquirePreparedStatement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        nativeExecute(this.mConnectionPtr, preparedStatementAcquirePreparedStatement.mStatementPtr);
                        detachCancellationSignal(cancellationSignal);
                        releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                        this.mRecentOperations.endOperation(iBeginOperation);
                    } catch (Throwable th) {
                        detachCancellationSignal(cancellationSignal);
                        throw th;
                    }
                } catch (Throwable th2) {
                    releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                    throw th2;
                }
            } catch (Throwable th3) {
                this.mRecentOperations.endOperation(iBeginOperation);
                throw th3;
            }
        } catch (RuntimeException e2) {
            this.mRecentOperations.failOperation(iBeginOperation, e2);
            throw e2;
        }
    }

    public ParcelFileDescriptor executeForBlobFileDescriptor(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int iBeginOperation = this.mRecentOperations.beginOperation("executeForBlobFileDescriptor", str, objArr);
        try {
            try {
                PreparedStatement preparedStatementAcquirePreparedStatement = acquirePreparedStatement(str);
                try {
                    throwIfStatementForbidden(preparedStatementAcquirePreparedStatement);
                    bindArguments(preparedStatementAcquirePreparedStatement, objArr);
                    applyBlockGuardPolicy(preparedStatementAcquirePreparedStatement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        int iNativeExecuteForBlobFileDescriptor = nativeExecuteForBlobFileDescriptor(this.mConnectionPtr, preparedStatementAcquirePreparedStatement.mStatementPtr);
                        ParcelFileDescriptor parcelFileDescriptorAdoptFd = iNativeExecuteForBlobFileDescriptor >= 0 ? ParcelFileDescriptor.adoptFd(iNativeExecuteForBlobFileDescriptor) : null;
                        detachCancellationSignal(cancellationSignal);
                        releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                        this.mRecentOperations.endOperation(iBeginOperation);
                        return parcelFileDescriptorAdoptFd;
                    } catch (Throwable th) {
                        detachCancellationSignal(cancellationSignal);
                        throw th;
                    }
                } catch (Throwable th2) {
                    releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                    throw th2;
                }
            } catch (RuntimeException e2) {
                this.mRecentOperations.failOperation(iBeginOperation, e2);
                throw e2;
            }
        } catch (Throwable th3) {
            this.mRecentOperations.endOperation(iBeginOperation);
            throw th3;
        }
    }

    public int executeForChangedRowCount(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int iBeginOperation = this.mRecentOperations.beginOperation("executeForChangedRowCount", str, objArr);
        try {
            try {
                PreparedStatement preparedStatementAcquirePreparedStatement = acquirePreparedStatement(str);
                try {
                    throwIfStatementForbidden(preparedStatementAcquirePreparedStatement);
                    bindArguments(preparedStatementAcquirePreparedStatement, objArr);
                    applyBlockGuardPolicy(preparedStatementAcquirePreparedStatement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        int iNativeExecuteForChangedRowCount = nativeExecuteForChangedRowCount(this.mConnectionPtr, preparedStatementAcquirePreparedStatement.mStatementPtr);
                        detachCancellationSignal(cancellationSignal);
                        releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                        if (this.mRecentOperations.endOperationDeferLog(iBeginOperation)) {
                            this.mRecentOperations.logOperation(iBeginOperation, c.d("changedRows=", iNativeExecuteForChangedRowCount));
                        }
                        return iNativeExecuteForChangedRowCount;
                    } catch (Throwable th) {
                        detachCancellationSignal(cancellationSignal);
                        throw th;
                    }
                } catch (Throwable th2) {
                    releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                    throw th2;
                }
            } catch (Throwable th3) {
                if (this.mRecentOperations.endOperationDeferLog(iBeginOperation)) {
                    this.mRecentOperations.logOperation(iBeginOperation, c.d("changedRows=", 0));
                }
                throw th3;
            }
        } catch (RuntimeException e2) {
            this.mRecentOperations.failOperation(iBeginOperation, e2);
            throw e2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.database.sqlite.SQLiteConnection$OperationLog] */
    /* JADX WARN: Type inference failed for: r2v5, types: [android.database.sqlite.SQLiteConnection$OperationLog] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3, types: [int] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v3, types: [int] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.String] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public int executeForCursorWindow(String str, Object[] objArr, CursorWindow cursorWindow, int i2, int i3, boolean z2, CancellationSignal cancellationSignal) {
        String str2;
        ?? r8;
        ?? r15;
        ?? r9;
        ?? r4;
        ?? r5;
        int i4;
        int i5;
        int i6;
        String str3 = ", countedRows=";
        String str4 = ", filledRows=";
        String str5 = ", actualPos=";
        String str6 = "', startPos=";
        String str7 = "window='";
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        if (cursorWindow == null) {
            throw new IllegalArgumentException("window must not be null.");
        }
        cursorWindow.acquireReference();
        try {
            OperationLog operationLog = this.mRecentOperations;
            String str8 = "executeForCursorWindow";
            int iBeginOperation = operationLog.beginOperation("executeForCursorWindow", str, objArr);
            try {
                try {
                    PreparedStatement preparedStatementAcquirePreparedStatement = acquirePreparedStatement(str);
                    try {
                        throwIfStatementForbidden(preparedStatementAcquirePreparedStatement);
                        bindArguments(preparedStatementAcquirePreparedStatement, objArr);
                        applyBlockGuardPolicy(preparedStatementAcquirePreparedStatement);
                        attachCancellationSignal(cancellationSignal);
                        try {
                            try {
                                try {
                                    preparedStatementAcquirePreparedStatement = preparedStatementAcquirePreparedStatement;
                                    i5 = iBeginOperation;
                                    try {
                                        long jNativeExecuteForCursorWindow = nativeExecuteForCursorWindow(this.mConnectionPtr, preparedStatementAcquirePreparedStatement.mStatementPtr, cursorWindow.mWindowPtr, i2, i3, z2);
                                        i4 = (int) (jNativeExecuteForCursorWindow >> 32);
                                        int i7 = (int) jNativeExecuteForCursorWindow;
                                        try {
                                            int numRows = cursorWindow.getNumRows();
                                            try {
                                                cursorWindow.setStartPosition(i4);
                                                try {
                                                    detachCancellationSignal(cancellationSignal);
                                                    try {
                                                        releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                                                        if (this.mRecentOperations.endOperationDeferLog(i5)) {
                                                            this.mRecentOperations.logOperation(i5, "window='" + cursorWindow + "', startPos=" + i2 + ", actualPos=" + i4 + ", filledRows=" + numRows + ", countedRows=" + i7);
                                                        }
                                                        cursorWindow.releaseReference();
                                                        return i7;
                                                    } catch (RuntimeException e2) {
                                                        e = e2;
                                                        this.mRecentOperations.failOperation(i5, e);
                                                        throw e;
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        r8 = i2;
                                                        str4 = "window='";
                                                        str5 = ", countedRows=";
                                                        str2 = "', startPos=";
                                                        r9 = ", actualPos=";
                                                        str6 = ", filledRows=";
                                                        r4 = i7;
                                                        r5 = numRows;
                                                        r15 = i5;
                                                        if (this.mRecentOperations.endOperationDeferLog(r15)) {
                                                            this.mRecentOperations.logOperation(r15, str4 + cursorWindow + str2 + r8 + r9 + i4 + str6 + r5 + str5 + r4);
                                                        }
                                                        throw th;
                                                    }
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    try {
                                                        releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                                                        throw th;
                                                    } catch (RuntimeException e3) {
                                                        e = e3;
                                                        this.mRecentOperations.failOperation(i5, e);
                                                        throw e;
                                                    }
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                i5 = i5;
                                                try {
                                                    detachCancellationSignal(cancellationSignal);
                                                    throw th;
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                                                    throw th;
                                                }
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        i6 = i5;
                                        i5 = i6;
                                        detachCancellationSignal(cancellationSignal);
                                        throw th;
                                    }
                                } catch (Throwable th7) {
                                    th = th7;
                                    i6 = iBeginOperation;
                                    preparedStatementAcquirePreparedStatement = preparedStatementAcquirePreparedStatement;
                                }
                            } catch (Throwable th8) {
                                th = th8;
                                i6 = iBeginOperation;
                                i5 = i6;
                                detachCancellationSignal(cancellationSignal);
                                throw th;
                            }
                        } catch (Throwable th9) {
                            th = th9;
                        }
                    } catch (Throwable th10) {
                        th = th10;
                        preparedStatementAcquirePreparedStatement = preparedStatementAcquirePreparedStatement;
                        i5 = iBeginOperation;
                    }
                } catch (Throwable th11) {
                    th = th11;
                    i4 = -1;
                    r4 = operationLog;
                    r5 = str8;
                    r8 = str7;
                    r9 = iBeginOperation;
                    r15 = str3;
                }
            } catch (RuntimeException e4) {
                e = e4;
                i5 = iBeginOperation;
            } catch (Throwable th12) {
                th = th12;
                str2 = "', startPos=";
                str6 = ", filledRows=";
                str4 = "window='";
                r8 = i2;
                r15 = iBeginOperation;
                r9 = ", actualPos=";
                str5 = ", countedRows=";
                r4 = -1;
                r5 = -1;
                i4 = -1;
            }
        } catch (Throwable th13) {
            cursorWindow.releaseReference();
            throw th13;
        }
    }

    public long executeForLastInsertedRowId(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int iBeginOperation = this.mRecentOperations.beginOperation("executeForLastInsertedRowId", str, objArr);
        try {
            try {
                PreparedStatement preparedStatementAcquirePreparedStatement = acquirePreparedStatement(str);
                try {
                    throwIfStatementForbidden(preparedStatementAcquirePreparedStatement);
                    bindArguments(preparedStatementAcquirePreparedStatement, objArr);
                    applyBlockGuardPolicy(preparedStatementAcquirePreparedStatement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        long jNativeExecuteForLastInsertedRowId = nativeExecuteForLastInsertedRowId(this.mConnectionPtr, preparedStatementAcquirePreparedStatement.mStatementPtr);
                        detachCancellationSignal(cancellationSignal);
                        releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                        this.mRecentOperations.endOperation(iBeginOperation);
                        return jNativeExecuteForLastInsertedRowId;
                    } catch (Throwable th) {
                        detachCancellationSignal(cancellationSignal);
                        throw th;
                    }
                } catch (Throwable th2) {
                    releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                    throw th2;
                }
            } catch (RuntimeException e2) {
                this.mRecentOperations.failOperation(iBeginOperation, e2);
                throw e2;
            }
        } catch (Throwable th3) {
            this.mRecentOperations.endOperation(iBeginOperation);
            throw th3;
        }
    }

    public long executeForLong(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int iBeginOperation = this.mRecentOperations.beginOperation("executeForLong", str, objArr);
        try {
            try {
                PreparedStatement preparedStatementAcquirePreparedStatement = acquirePreparedStatement(str);
                try {
                    throwIfStatementForbidden(preparedStatementAcquirePreparedStatement);
                    bindArguments(preparedStatementAcquirePreparedStatement, objArr);
                    applyBlockGuardPolicy(preparedStatementAcquirePreparedStatement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        long jNativeExecuteForLong = nativeExecuteForLong(this.mConnectionPtr, preparedStatementAcquirePreparedStatement.mStatementPtr);
                        detachCancellationSignal(cancellationSignal);
                        releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                        this.mRecentOperations.endOperation(iBeginOperation);
                        return jNativeExecuteForLong;
                    } catch (Throwable th) {
                        detachCancellationSignal(cancellationSignal);
                        throw th;
                    }
                } catch (Throwable th2) {
                    releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                    throw th2;
                }
            } catch (RuntimeException e2) {
                this.mRecentOperations.failOperation(iBeginOperation, e2);
                throw e2;
            }
        } catch (Throwable th3) {
            this.mRecentOperations.endOperation(iBeginOperation);
            throw th3;
        }
    }

    public String executeForString(String str, Object[] objArr, CancellationSignal cancellationSignal) {
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int iBeginOperation = this.mRecentOperations.beginOperation("executeForString", str, objArr);
        try {
            try {
                PreparedStatement preparedStatementAcquirePreparedStatement = acquirePreparedStatement(str);
                try {
                    throwIfStatementForbidden(preparedStatementAcquirePreparedStatement);
                    bindArguments(preparedStatementAcquirePreparedStatement, objArr);
                    applyBlockGuardPolicy(preparedStatementAcquirePreparedStatement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        String strNativeExecuteForString = nativeExecuteForString(this.mConnectionPtr, preparedStatementAcquirePreparedStatement.mStatementPtr);
                        detachCancellationSignal(cancellationSignal);
                        releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                        this.mRecentOperations.endOperation(iBeginOperation);
                        return strNativeExecuteForString;
                    } catch (Throwable th) {
                        detachCancellationSignal(cancellationSignal);
                        throw th;
                    }
                } catch (Throwable th2) {
                    releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                    throw th2;
                }
            } catch (RuntimeException e2) {
                this.mRecentOperations.failOperation(iBeginOperation, e2);
                throw e2;
            }
        } catch (Throwable th3) {
            this.mRecentOperations.endOperation(iBeginOperation);
            throw th3;
        }
    }

    public void finalize() throws Throwable {
        try {
            SQLiteConnectionPool sQLiteConnectionPool = this.mPool;
            if (sQLiteConnectionPool != null && this.mConnectionPtr != 0) {
                sQLiteConnectionPool.onConnectionLeaked();
            }
            dispose(true);
        } finally {
            super.finalize();
        }
    }

    public int getConnectionId() {
        return this.mConnectionId;
    }

    public boolean isPreparedStatementInCache(String str) {
        return this.mPreparedStatementCache.get(str) != null;
    }

    public boolean isPrimaryConnection() {
        return this.mIsPrimaryConnection;
    }

    @Override // android.os.CancellationSignal.OnCancelListener
    public void onCancel() {
        nativeCancel(this.mConnectionPtr);
    }

    public void prepare(String str, SQLiteStatementInfo sQLiteStatementInfo) {
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        int iBeginOperation = this.mRecentOperations.beginOperation("prepare", str, null);
        try {
            try {
                PreparedStatement preparedStatementAcquirePreparedStatement = acquirePreparedStatement(str);
                if (sQLiteStatementInfo != null) {
                    try {
                        sQLiteStatementInfo.numParameters = preparedStatementAcquirePreparedStatement.mNumParameters;
                        sQLiteStatementInfo.readOnly = preparedStatementAcquirePreparedStatement.mReadOnly;
                        int iNativeGetColumnCount = nativeGetColumnCount(this.mConnectionPtr, preparedStatementAcquirePreparedStatement.mStatementPtr);
                        if (iNativeGetColumnCount == 0) {
                            sQLiteStatementInfo.columnNames = EMPTY_STRING_ARRAY;
                        } else {
                            sQLiteStatementInfo.columnNames = new String[iNativeGetColumnCount];
                            for (int i2 = 0; i2 < iNativeGetColumnCount; i2++) {
                                sQLiteStatementInfo.columnNames[i2] = nativeGetColumnName(this.mConnectionPtr, preparedStatementAcquirePreparedStatement.mStatementPtr, i2);
                            }
                        }
                    } catch (Throwable th) {
                        releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                        throw th;
                    }
                }
                releasePreparedStatement(preparedStatementAcquirePreparedStatement);
                this.mRecentOperations.endOperation(iBeginOperation);
            } catch (RuntimeException e2) {
                this.mRecentOperations.failOperation(iBeginOperation, e2);
                throw e2;
            }
        } catch (Throwable th2) {
            this.mRecentOperations.endOperation(iBeginOperation);
            throw th2;
        }
    }

    public void reconfigure(SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration) {
        this.mOnlyAllowReadOnlyOperations = false;
        int size = sQLiteDatabaseConfiguration.customFunctions.size();
        for (int i2 = 0; i2 < size; i2++) {
            SQLiteCustomFunction sQLiteCustomFunction = sQLiteDatabaseConfiguration.customFunctions.get(i2);
            if (!this.mConfiguration.customFunctions.contains(sQLiteCustomFunction)) {
                nativeRegisterCustomFunction(this.mConnectionPtr, sQLiteCustomFunction);
            }
        }
        boolean z2 = sQLiteDatabaseConfiguration.foreignKeyConstraintsEnabled;
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration2 = this.mConfiguration;
        boolean z3 = z2 != sQLiteDatabaseConfiguration2.foreignKeyConstraintsEnabled;
        boolean z4 = ((sQLiteDatabaseConfiguration.openFlags ^ sQLiteDatabaseConfiguration2.openFlags) & 536870912) != 0;
        boolean z5 = !sQLiteDatabaseConfiguration.locale.equals(sQLiteDatabaseConfiguration2.locale);
        this.mConfiguration.updateParametersFrom(sQLiteDatabaseConfiguration);
        this.mPreparedStatementCache.resize(sQLiteDatabaseConfiguration.maxSqlCacheSize);
        if (z3) {
            setForeignKeyModeFromConfiguration();
        }
        if (z4) {
            setWalModeFromConfiguration();
        }
        if (z5) {
            setLocaleFromConfiguration();
        }
    }

    public void setOnlyAllowReadOnlyOperations(boolean z2) {
        this.mOnlyAllowReadOnlyOperations = z2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SQLiteConnection: ");
        sb.append(this.mConfiguration.path);
        sb.append(" (");
        return c.m(sb, this.mConnectionId, ")");
    }

    private void open() {
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfiguration;
        this.mConnectionPtr = nativeOpen(sQLiteDatabaseConfiguration.path, sQLiteDatabaseConfiguration.openFlags, sQLiteDatabaseConfiguration.label, SQLiteDebug.DEBUG_SQL_STATEMENTS, SQLiteDebug.DEBUG_SQL_TIME, sQLiteDatabaseConfiguration.lookasideSlotSize, sQLiteDatabaseConfiguration.lookasideSlotCount);
        setPageSize();
        setForeignKeyModeFromConfiguration();
        setWalModeFromConfiguration();
        setJournalSizeLimit();
        setAutoCheckpointInterval();
        setLocaleFromConfiguration();
        int size = this.mConfiguration.customFunctions.size();
        for (int i2 = 0; i2 < size; i2++) {
            nativeRegisterCustomFunction(this.mConnectionPtr, this.mConfiguration.customFunctions.get(i2));
        }
    }
}
