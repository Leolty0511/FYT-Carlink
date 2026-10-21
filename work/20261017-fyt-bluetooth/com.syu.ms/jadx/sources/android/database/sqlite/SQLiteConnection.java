package android.database.sqlite;

import android.database.CursorWindow;
import android.database.DatabaseUtils;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.util.LruCache;
import android.util.Printer;
import dalvik.system.BlockGuard;
import dalvik.system.CloseGuard;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class SQLiteConnection implements CancellationSignal.OnCancelListener {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final boolean DEBUG = false;
    private static final String TAG = "SQLiteConnection";
    private int mCancellationSignalAttachCount;
    private final CloseGuard mCloseGuard;
    private final SQLiteDatabaseConfiguration mConfiguration;
    private final int mConnectionId;
    private int mConnectionPtr;
    private final boolean mIsPrimaryConnection;
    private final boolean mIsReadOnlyConnection;
    private boolean mOnlyAllowReadOnlyOperations;
    private final SQLiteConnectionPool mPool;
    private final PreparedStatementCache mPreparedStatementCache;
    private PreparedStatement mPreparedStatementPool;
    private final OperationLog mRecentOperations;
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    private static final Pattern TRIM_SQL_PATTERN = Pattern.compile("[\\s]*\\n+[\\s]*");

    public static final class Operation {
        private static final SimpleDateFormat sDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        public ArrayList<Object> mBindArgs;
        public int mCookie;
        public long mEndTime;
        public Exception mException;
        public boolean mFinished;
        public String mKind;
        public String mSql;
        public long mStartTime;

        private Operation() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getFormattedStartTime() {
            return sDateFormat.format(new Date(this.mStartTime));
        }

        private String getStatus() {
            if (this.mFinished) {
                return this.mException != null ? "failed" : "succeeded";
            }
            return "running";
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
                sb.append(System.currentTimeMillis() - this.mStartTime);
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
            long jCurrentTimeMillis = System.currentTimeMillis();
            operationLocked.mEndTime = jCurrentTimeMillis;
            operationLocked.mFinished = true;
            return SQLiteDebug.DEBUG_LOG_SLOW_QUERIES && SQLiteDebug.shouldLogSlowQuery(jCurrentTimeMillis - operationLocked.mStartTime);
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
            int iNewOperationCookieLocked;
            synchronized (this.mOperations) {
                int i2 = (this.mIndex + 1) % 20;
                Operation operation = this.mOperations[i2];
                if (operation == null) {
                    operation = new Operation();
                    this.mOperations[i2] = operation;
                } else {
                    operation.mFinished = false;
                    operation.mException = null;
                    ArrayList<Object> arrayList = operation.mBindArgs;
                    if (arrayList != null) {
                        arrayList.clear();
                    }
                }
                operation.mStartTime = System.currentTimeMillis();
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
                iNewOperationCookieLocked = newOperationCookieLocked(i2);
                operation.mCookie = iNewOperationCookieLocked;
                this.mIndex = i2;
            }
            return iNewOperationCookieLocked;
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
        public int mStatementPtr;
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
                    printer.println("    " + i2 + ": statementPtr=0x" + Integer.toHexString(value.mStatementPtr) + ", numParameters=" + value.mNumParameters + ", type=" + value.mType + ", readOnly=" + value.mReadOnly + ", sql=\"" + SQLiteConnection.trimSqlForDisplay(entry.getKey()) + "\"");
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
        int iNativePrepareStatement = nativePrepareStatement(this.mConnectionPtr, str);
        try {
            int iNativeGetParameterCount = nativeGetParameterCount(this.mConnectionPtr, iNativePrepareStatement);
            int sqlStatementType = DatabaseUtils.getSqlStatementType(str);
            preparedStatementObtainPreparedStatement = obtainPreparedStatement(str, iNativePrepareStatement, iNativeGetParameterCount, sqlStatementType, nativeIsReadOnly(this.mConnectionPtr, iNativePrepareStatement));
            if (!z2 && isCacheable(sqlStatementType)) {
                this.mPreparedStatementCache.put(str, preparedStatementObtainPreparedStatement);
                preparedStatementObtainPreparedStatement.mInCache = true;
            }
            preparedStatementObtainPreparedStatement.mInUse = true;
            return preparedStatementObtainPreparedStatement;
        } catch (RuntimeException e2) {
            if (preparedStatementObtainPreparedStatement == null || !preparedStatementObtainPreparedStatement.mInCache) {
                nativeFinalizeStatement(this.mConnectionPtr, iNativePrepareStatement);
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
        int i2 = preparedStatement.mStatementPtr;
        for (int i3 = 0; i3 < length; i3++) {
            Object obj = objArr[i3];
            int typeOfObject = DatabaseUtils.getTypeOfObject(obj);
            if (typeOfObject == 0) {
                nativeBindNull(this.mConnectionPtr, i2, i3 + 1);
            } else if (typeOfObject == 1) {
                nativeBindLong(this.mConnectionPtr, i2, i3 + 1, ((Number) obj).longValue());
            } else if (typeOfObject == 2) {
                nativeBindDouble(this.mConnectionPtr, i2, i3 + 1, ((Number) obj).doubleValue());
            } else if (typeOfObject == 4) {
                nativeBindBlob(this.mConnectionPtr, i2, i3 + 1, (byte[]) obj);
            } else if (obj instanceof Boolean) {
                nativeBindLong(this.mConnectionPtr, i2, i3 + 1, ((Boolean) obj).booleanValue() ? 1L : 0L);
            } else {
                nativeBindString(this.mConnectionPtr, i2, i3 + 1, obj.toString());
            }
        }
    }

    private static String canonicalizeSyncMode(String str) {
        if (str.equals("0")) {
            return "OFF";
        }
        if (str.equals("1")) {
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
                this.mConnectionPtr = 0;
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
        String str = this.mConfiguration.path;
        if (!this.mIsPrimaryConnection) {
            str = str + " (" + this.mConnectionId + ")";
        }
        return new SQLiteDebug.DbStats(str, j2, j3, i2, this.mPreparedStatementCache.hitCount(), this.mPreparedStatementCache.missCount(), this.mPreparedStatementCache.size());
    }

    private static boolean isCacheable(int i2) {
        return i2 == 2 || i2 == 1;
    }

    private static native void nativeBindBlob(int i2, int i3, int i4, byte[] bArr);

    private static native void nativeBindDouble(int i2, int i3, int i4, double d2);

    private static native void nativeBindLong(int i2, int i3, int i4, long j2);

    private static native void nativeBindNull(int i2, int i3, int i4);

    private static native void nativeBindString(int i2, int i3, int i4, String str);

    private static native void nativeCancel(int i2);

    private static native void nativeClose(int i2);

    private static native void nativeExecute(int i2, int i3);

    private static native int nativeExecuteForBlobFileDescriptor(int i2, int i3);

    private static native int nativeExecuteForChangedRowCount(int i2, int i3);

    private static native long nativeExecuteForCursorWindow(int i2, int i3, int i4, int i5, int i6, boolean z2);

    private static native long nativeExecuteForLastInsertedRowId(int i2, int i3);

    private static native long nativeExecuteForLong(int i2, int i3);

    private static native String nativeExecuteForString(int i2, int i3);

    private static native void nativeFinalizeStatement(int i2, int i3);

    private static native int nativeGetColumnCount(int i2, int i3);

    private static native String nativeGetColumnName(int i2, int i3, int i4);

    private static native int nativeGetDbLookaside(int i2);

    private static native int nativeGetParameterCount(int i2, int i3);

    private static native boolean nativeIsReadOnly(int i2, int i3);

    private static native int nativeOpen(String str, int i2, String str2, boolean z2, boolean z3);

    private static native int nativePrepareStatement(int i2, String str);

    private static native void nativeRegisterCustomFunction(int i2, SQLiteCustomFunction sQLiteCustomFunction);

    private static native void nativeRegisterLocalizedCollators(int i2, String str);

    private static native void nativeResetCancel(int i2, boolean z2);

    private static native void nativeResetStatementAndClearBindings(int i2, int i3);

    private PreparedStatement obtainPreparedStatement(String str, int i2, int i3, int i4, boolean z2) {
        PreparedStatement preparedStatement = this.mPreparedStatementPool;
        if (preparedStatement != null) {
            this.mPreparedStatementPool = preparedStatement.mPoolNext;
            preparedStatement.mPoolNext = null;
            preparedStatement.mInCache = false;
        } else {
            preparedStatement = new PreparedStatement();
        }
        preparedStatement.mSql = str;
        preparedStatement.mStatementPtr = i2;
        preparedStatement.mNumParameters = i3;
        preparedStatement.mType = i4;
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
            executeForLong("PRAGMA wal_autocheckpoint=" + wALAutoCheckpoint, null, null);
        }
    }

    private void setForeignKeyModeFromConfiguration() {
        if (this.mIsReadOnlyConnection) {
            return;
        }
        long j2 = this.mConfiguration.foreignKeyConstraintsEnabled ? 1L : 0L;
        if (executeForLong("PRAGMA foreign_keys", null, null) != j2) {
            execute("PRAGMA foreign_keys=" + j2, null, null);
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
            executeForLong("PRAGMA journal_size_limit=" + journalSizeLimit, null, null);
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
            execute("PRAGMA page_size=" + defaultPageSize, null, null);
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
        return TRIM_SQL_PATTERN.matcher(str).replaceAll(" ");
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
        printer.println("Connection #" + this.mConnectionId + ":");
        if (z2) {
            printer.println("  connectionPtr: 0x" + Integer.toHexString(this.mConnectionPtr));
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
                            this.mRecentOperations.logOperation(iBeginOperation, "changedRows=" + iNativeExecuteForChangedRowCount);
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
            } catch (RuntimeException e2) {
                this.mRecentOperations.failOperation(iBeginOperation, e2);
                throw e2;
            }
        } catch (Throwable th3) {
            if (this.mRecentOperations.endOperationDeferLog(iBeginOperation)) {
                this.mRecentOperations.logOperation(iBeginOperation, "changedRows=0");
            }
            throw th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:59:0x0119 A[Catch: all -> 0x0146, TryCatch #1 {all -> 0x0146, blocks: (B:6:0x001e, B:18:0x0062, B:20:0x006a, B:57:0x0111, B:59:0x0119, B:60:0x0145), top: B:70:0x001e }] */
    /* JADX WARN: Instruction removed from duplicated block: B:59:0x0119, please report this as an issue */
    public int executeForCursorWindow(String str, Object[] objArr, CursorWindow cursorWindow, int i2, int i3, boolean z2, CancellationSignal cancellationSignal) {
        String str2;
        String str3;
        int i4;
        String str4;
        int i5;
        int numRows;
        int i6;
        PreparedStatement preparedStatement;
        if (str == null) {
            throw new IllegalArgumentException("sql must not be null.");
        }
        if (cursorWindow == null) {
            throw new IllegalArgumentException("window must not be null.");
        }
        cursorWindow.acquireReference();
        try {
            int iBeginOperation = this.mRecentOperations.beginOperation("executeForCursorWindow", str, objArr);
            int i7 = -1;
            try {
                PreparedStatement preparedStatementAcquirePreparedStatement = acquirePreparedStatement(str);
                try {
                    throwIfStatementForbidden(preparedStatementAcquirePreparedStatement);
                    bindArguments(preparedStatementAcquirePreparedStatement, objArr);
                    applyBlockGuardPolicy(preparedStatementAcquirePreparedStatement);
                    attachCancellationSignal(cancellationSignal);
                    try {
                        preparedStatement = preparedStatementAcquirePreparedStatement;
                        str4 = ", countedRows=";
                        i4 = iBeginOperation;
                        str2 = ", filledRows=";
                        str3 = "window='";
                        try {
                            long jNativeExecuteForCursorWindow = nativeExecuteForCursorWindow(this.mConnectionPtr, preparedStatementAcquirePreparedStatement.mStatementPtr, cursorWindow.mWindowPtr, i2, i3, z2);
                            i6 = (int) (jNativeExecuteForCursorWindow >> 32);
                            i5 = (int) jNativeExecuteForCursorWindow;
                            try {
                                numRows = cursorWindow.getNumRows();
                                try {
                                    cursorWindow.setStartPosition(i6);
                                    try {
                                        detachCancellationSignal(cancellationSignal);
                                        try {
                                            releasePreparedStatement(preparedStatement);
                                            if (this.mRecentOperations.endOperationDeferLog(i4)) {
                                                this.mRecentOperations.logOperation(i4, str3 + cursorWindow + "', startPos=" + i2 + ", actualPos=" + i6 + str2 + numRows + str4 + i5);
                                            }
                                            cursorWindow.releaseReference();
                                            return i5;
                                        } catch (RuntimeException e2) {
                                            e = e2;
                                            str4 = str4;
                                            str2 = str2;
                                            i7 = i6;
                                            this.mRecentOperations.failOperation(i4, e);
                                            throw e;
                                        } catch (Throwable th) {
                                            th = th;
                                            str4 = str4;
                                            str2 = str2;
                                            if (this.mRecentOperations.endOperationDeferLog(i4)) {
                                                this.mRecentOperations.logOperation(i4, str3 + cursorWindow + "', startPos=" + i2 + ", actualPos=" + i6 + str2 + numRows + str4 + i5);
                                            }
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        str4 = str4;
                                        str2 = str2;
                                        i7 = i6;
                                        try {
                                            try {
                                                releasePreparedStatement(preparedStatement);
                                                throw th;
                                            } catch (RuntimeException e3) {
                                                e = e3;
                                                this.mRecentOperations.failOperation(i4, e);
                                                throw e;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            i6 = i7;
                                            if (this.mRecentOperations.endOperationDeferLog(i4)) {
                                                this.mRecentOperations.logOperation(i4, str3 + cursorWindow + "', startPos=" + i2 + ", actualPos=" + i6 + str2 + numRows + str4 + i5);
                                            }
                                            throw th;
                                        }
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    i7 = i6;
                                    try {
                                        detachCancellationSignal(cancellationSignal);
                                        throw th;
                                    } catch (Throwable th5) {
                                        th = th5;
                                        releasePreparedStatement(preparedStatement);
                                        throw th;
                                    }
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                numRows = -1;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            str4 = str4;
                            str2 = str2;
                            i5 = -1;
                            numRows = -1;
                            detachCancellationSignal(cancellationSignal);
                            throw th;
                        }
                    } catch (Throwable th8) {
                        th = th8;
                        preparedStatement = preparedStatementAcquirePreparedStatement;
                        str2 = ", filledRows=";
                        str3 = "window='";
                        i4 = iBeginOperation;
                        str4 = ", countedRows=";
                    }
                } catch (Throwable th9) {
                    th = th9;
                    preparedStatement = preparedStatementAcquirePreparedStatement;
                    str2 = ", filledRows=";
                    str3 = "window='";
                    i4 = iBeginOperation;
                    str4 = ", countedRows=";
                    i5 = -1;
                    numRows = -1;
                }
            } catch (RuntimeException e4) {
                e = e4;
                str2 = ", filledRows=";
                str3 = "window='";
                i4 = iBeginOperation;
                str4 = ", countedRows=";
                i5 = -1;
                numRows = -1;
            } catch (Throwable th10) {
                th = th10;
                str2 = ", filledRows=";
                str3 = "window='";
                i4 = iBeginOperation;
                str4 = ", countedRows=";
                i5 = -1;
                numRows = -1;
                i6 = -1;
            }
        } catch (Throwable th11) {
            cursorWindow.releaseReference();
            throw th11;
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
        return "SQLiteConnection: " + this.mConfiguration.path + " (" + this.mConnectionId + ")";
    }

    private void open() {
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration = this.mConfiguration;
        this.mConnectionPtr = nativeOpen(sQLiteDatabaseConfiguration.path, sQLiteDatabaseConfiguration.openFlags, sQLiteDatabaseConfiguration.label, SQLiteDebug.DEBUG_SQL_STATEMENTS, SQLiteDebug.DEBUG_SQL_TIME);
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
