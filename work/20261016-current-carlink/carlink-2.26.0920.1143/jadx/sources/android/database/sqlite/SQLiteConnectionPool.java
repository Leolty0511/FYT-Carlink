package android.database.sqlite;

import android.net.wifi.WifiEnterpriseConfig;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.OperationCanceledException;
import android.os.SystemClock;
import android.provider.SettingsStringUtil;
import android.util.Log;
import android.util.PrefixPrinter;
import android.util.Printer;
import android.util.TimeUtils;
import com.android.internal.annotations.GuardedBy;
import dalvik.system.CloseGuard;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes.dex */
public final class SQLiteConnectionPool implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int CONNECTION_FLAG_INTERACTIVE = 4;
    public static final int CONNECTION_FLAG_PRIMARY_CONNECTION_AFFINITY = 2;
    public static final int CONNECTION_FLAG_READ_ONLY = 1;
    private static final long CONNECTION_POOL_BUSY_MILLIS = 30000;
    private static final String TAG = "SQLiteConnectionPool";
    private SQLiteConnection mAvailablePrimaryConnection;
    private final SQLiteDatabaseConfiguration mConfiguration;
    private ConnectionWaiter mConnectionWaiterPool;
    private ConnectionWaiter mConnectionWaiterQueue;

    @GuardedBy("mLock")
    private IdleConnectionHandler mIdleConnectionHandler;
    private boolean mIsOpen;
    private int mMaxConnectionPoolSize;
    private int mNextConnectionId;
    private final CloseGuard mCloseGuard = CloseGuard.get();
    private final Object mLock = new Object();
    private final AtomicBoolean mConnectionLeaked = new AtomicBoolean();
    private final ArrayList<SQLiteConnection> mAvailableNonPrimaryConnections = new ArrayList<>();
    private final WeakHashMap<SQLiteConnection, AcquiredConnectionStatus> mAcquiredConnections = new WeakHashMap<>();

    public enum AcquiredConnectionStatus {
        NORMAL,
        RECONFIGURE,
        DISCARD
    }

    public static final class ConnectionWaiter {
        public SQLiteConnection mAssignedConnection;
        public int mConnectionFlags;
        public RuntimeException mException;
        public ConnectionWaiter mNext;
        public int mNonce;
        public int mPriority;
        public String mSql;
        public long mStartTime;
        public Thread mThread;
        public boolean mWantPrimaryConnection;

        private ConnectionWaiter() {
        }
    }

    public class IdleConnectionHandler extends Handler {
        private final long mTimeout;

        public IdleConnectionHandler(Looper looper, long j2) {
            super(looper);
            this.mTimeout = j2;
        }

        public void connectionAcquired(SQLiteConnection sQLiteConnection) {
            removeMessages(sQLiteConnection.getConnectionId());
        }

        public void connectionClosed(SQLiteConnection sQLiteConnection) {
            removeMessages(sQLiteConnection.getConnectionId());
        }

        public void connectionReleased(SQLiteConnection sQLiteConnection) {
            sendEmptyMessageDelayed(sQLiteConnection.getConnectionId(), this.mTimeout);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (SQLiteConnectionPool.this.mLock) {
                if (this != SQLiteConnectionPool.this.mIdleConnectionHandler) {
                    return;
                }
                if (SQLiteConnectionPool.this.closeAvailableConnectionLocked(message.what) && Log.isLoggable(SQLiteConnectionPool.TAG, 3)) {
                    Log.d(SQLiteConnectionPool.TAG, "Closed idle connection " + SQLiteConnectionPool.this.mConfiguration.label + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + message.what + " after " + this.mTimeout);
                }
            }
        }
    }

    private SQLiteConnectionPool(SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration) {
        SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration2 = new SQLiteDatabaseConfiguration(sQLiteDatabaseConfiguration);
        this.mConfiguration = sQLiteDatabaseConfiguration2;
        setMaxConnectionPoolSizeLocked();
        if (sQLiteDatabaseConfiguration2.idleConnectionTimeoutMs != Long.MAX_VALUE) {
            setupIdleConnectionHandler(Looper.getMainLooper(), sQLiteDatabaseConfiguration2.idleConnectionTimeoutMs);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelConnectionWaiterLocked(ConnectionWaiter connectionWaiter) {
        if (connectionWaiter.mAssignedConnection == null && connectionWaiter.mException == null) {
            ConnectionWaiter connectionWaiter2 = null;
            for (ConnectionWaiter connectionWaiter3 = this.mConnectionWaiterQueue; connectionWaiter3 != connectionWaiter; connectionWaiter3 = connectionWaiter3.mNext) {
                connectionWaiter2 = connectionWaiter3;
            }
            if (connectionWaiter2 != null) {
                connectionWaiter2.mNext = connectionWaiter.mNext;
            } else {
                this.mConnectionWaiterQueue = connectionWaiter.mNext;
            }
            connectionWaiter.mException = new OperationCanceledException();
            LockSupport.unpark(connectionWaiter.mThread);
            wakeConnectionWaitersLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean closeAvailableConnectionLocked(int i2) {
        for (int size = this.mAvailableNonPrimaryConnections.size() - 1; size >= 0; size--) {
            SQLiteConnection sQLiteConnection = this.mAvailableNonPrimaryConnections.get(size);
            if (sQLiteConnection.getConnectionId() == i2) {
                closeConnectionAndLogExceptionsLocked(sQLiteConnection);
                this.mAvailableNonPrimaryConnections.remove(size);
                return true;
            }
        }
        SQLiteConnection sQLiteConnection2 = this.mAvailablePrimaryConnection;
        if (sQLiteConnection2 == null || sQLiteConnection2.getConnectionId() != i2) {
            return false;
        }
        closeConnectionAndLogExceptionsLocked(this.mAvailablePrimaryConnection);
        this.mAvailablePrimaryConnection = null;
        return true;
    }

    private void closeAvailableConnectionsAndLogExceptionsLocked() {
        closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked();
        SQLiteConnection sQLiteConnection = this.mAvailablePrimaryConnection;
        if (sQLiteConnection != null) {
            closeConnectionAndLogExceptionsLocked(sQLiteConnection);
            this.mAvailablePrimaryConnection = null;
        }
    }

    private void closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked() {
        int size = this.mAvailableNonPrimaryConnections.size();
        for (int i2 = 0; i2 < size; i2++) {
            closeConnectionAndLogExceptionsLocked(this.mAvailableNonPrimaryConnections.get(i2));
        }
        this.mAvailableNonPrimaryConnections.clear();
    }

    private void closeConnectionAndLogExceptionsLocked(SQLiteConnection sQLiteConnection) {
        try {
            sQLiteConnection.close();
            IdleConnectionHandler idleConnectionHandler = this.mIdleConnectionHandler;
            if (idleConnectionHandler != null) {
                idleConnectionHandler.connectionClosed(sQLiteConnection);
            }
        } catch (RuntimeException e2) {
            Log.e(TAG, "Failed to close connection, its fate is now in the hands of the merciful GC: " + sQLiteConnection, e2);
        }
    }

    private void closeExcessConnectionsAndLogExceptionsLocked() {
        int size = this.mAvailableNonPrimaryConnections.size();
        while (true) {
            int i2 = size - 1;
            if (size <= this.mMaxConnectionPoolSize - 1) {
                return;
            }
            closeConnectionAndLogExceptionsLocked(this.mAvailableNonPrimaryConnections.remove(i2));
            size = i2;
        }
    }

    private void discardAcquiredConnectionsLocked() {
        markAcquiredConnectionsLocked(AcquiredConnectionStatus.DISCARD);
    }

    private void dispose(boolean z2) {
        CloseGuard closeGuard = this.mCloseGuard;
        if (closeGuard != null) {
            if (z2) {
                closeGuard.warnIfOpen();
            }
            this.mCloseGuard.close();
        }
        if (z2) {
            return;
        }
        synchronized (this.mLock) {
            throwIfClosedLocked();
            this.mIsOpen = false;
            closeAvailableConnectionsAndLogExceptionsLocked();
            int size = this.mAcquiredConnections.size();
            if (size != 0) {
                Log.i(TAG, "The connection pool for " + this.mConfiguration.label + " has been closed but there are still " + size + " connections in use.  They will be closed as they are released back to the pool.");
            }
            wakeConnectionWaitersLocked();
        }
    }

    private void finishAcquireConnectionLocked(SQLiteConnection sQLiteConnection, int i2) {
        try {
            sQLiteConnection.setOnlyAllowReadOnlyOperations((i2 & 1) != 0);
            this.mAcquiredConnections.put(sQLiteConnection, AcquiredConnectionStatus.NORMAL);
        } catch (RuntimeException e2) {
            Log.e(TAG, "Failed to prepare acquired connection for session, closing it: " + sQLiteConnection + ", connectionFlags=" + i2);
            closeConnectionAndLogExceptionsLocked(sQLiteConnection);
            throw e2;
        }
    }

    private static int getPriority(int i2) {
        return (i2 & 4) != 0 ? 1 : 0;
    }

    private boolean isSessionBlockingImportantConnectionWaitersLocked(boolean z2, int i2) {
        ConnectionWaiter connectionWaiter = this.mConnectionWaiterQueue;
        if (connectionWaiter == null) {
            return false;
        }
        int priority = getPriority(i2);
        while (priority <= connectionWaiter.mPriority) {
            if (z2 || !connectionWaiter.mWantPrimaryConnection) {
                return true;
            }
            connectionWaiter = connectionWaiter.mNext;
            if (connectionWaiter == null) {
                return false;
            }
        }
        return false;
    }

    private void logConnectionPoolBusyLocked(long j2, int i2) {
        int i3;
        Thread threadCurrentThread = Thread.currentThread();
        StringBuilder sb = new StringBuilder("The connection pool for database '");
        sb.append(this.mConfiguration.label);
        sb.append("' has been unable to grant a connection to thread ");
        sb.append(threadCurrentThread.getId());
        sb.append(" (");
        sb.append(threadCurrentThread.getName());
        sb.append(") with flags 0x");
        sb.append(Integer.toHexString(i2));
        sb.append(" for ");
        sb.append(j2 * 0.001f);
        sb.append(" seconds.\n");
        ArrayList<String> arrayList = new ArrayList();
        int i4 = 0;
        if (this.mAcquiredConnections.isEmpty()) {
            i3 = 0;
        } else {
            Iterator<SQLiteConnection> it = this.mAcquiredConnections.keySet().iterator();
            i3 = 0;
            while (it.hasNext()) {
                String strDescribeCurrentOperationUnsafe = it.next().describeCurrentOperationUnsafe();
                if (strDescribeCurrentOperationUnsafe != null) {
                    arrayList.add(strDescribeCurrentOperationUnsafe);
                    i4++;
                } else {
                    i3++;
                }
            }
        }
        int size = this.mAvailableNonPrimaryConnections.size();
        if (this.mAvailablePrimaryConnection != null) {
            size++;
        }
        sb.append("Connections: ");
        sb.append(i4);
        sb.append(" active, ");
        sb.append(i3);
        sb.append(" idle, ");
        sb.append(size);
        sb.append(" available.\n");
        if (!arrayList.isEmpty()) {
            sb.append("\nRequests in progress:\n");
            for (String str : arrayList) {
                sb.append("  ");
                sb.append(str);
                sb.append("\n");
            }
        }
        Log.w(TAG, sb.toString());
    }

    private void markAcquiredConnectionsLocked(AcquiredConnectionStatus acquiredConnectionStatus) {
        if (this.mAcquiredConnections.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.mAcquiredConnections.size());
        for (Map.Entry<SQLiteConnection, AcquiredConnectionStatus> entry : this.mAcquiredConnections.entrySet()) {
            AcquiredConnectionStatus value = entry.getValue();
            if (acquiredConnectionStatus != value && value != AcquiredConnectionStatus.DISCARD) {
                arrayList.add(entry.getKey());
            }
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mAcquiredConnections.put((SQLiteConnection) arrayList.get(i2), acquiredConnectionStatus);
        }
    }

    private ConnectionWaiter obtainConnectionWaiterLocked(Thread thread, long j2, int i2, boolean z2, String str, int i3) {
        ConnectionWaiter connectionWaiter = this.mConnectionWaiterPool;
        if (connectionWaiter != null) {
            this.mConnectionWaiterPool = connectionWaiter.mNext;
            connectionWaiter.mNext = null;
        } else {
            connectionWaiter = new ConnectionWaiter();
        }
        connectionWaiter.mThread = thread;
        connectionWaiter.mStartTime = j2;
        connectionWaiter.mPriority = i2;
        connectionWaiter.mWantPrimaryConnection = z2;
        connectionWaiter.mSql = str;
        connectionWaiter.mConnectionFlags = i3;
        return connectionWaiter;
    }

    public static SQLiteConnectionPool open(SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration) {
        if (sQLiteDatabaseConfiguration == null) {
            throw new IllegalArgumentException("configuration must not be null.");
        }
        SQLiteConnectionPool sQLiteConnectionPool = new SQLiteConnectionPool(sQLiteDatabaseConfiguration);
        sQLiteConnectionPool.open();
        return sQLiteConnectionPool;
    }

    private SQLiteConnection openConnectionLocked(SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration, boolean z2) {
        int i2 = this.mNextConnectionId;
        this.mNextConnectionId = i2 + 1;
        return SQLiteConnection.open(this, sQLiteDatabaseConfiguration, i2, z2);
    }

    private void reconfigureAllConnectionsLocked() {
        SQLiteConnection sQLiteConnection = this.mAvailablePrimaryConnection;
        if (sQLiteConnection != null) {
            try {
                sQLiteConnection.reconfigure(this.mConfiguration);
            } catch (RuntimeException e2) {
                Log.e(TAG, "Failed to reconfigure available primary connection, closing it: " + this.mAvailablePrimaryConnection, e2);
                closeConnectionAndLogExceptionsLocked(this.mAvailablePrimaryConnection);
                this.mAvailablePrimaryConnection = null;
            }
        }
        int size = this.mAvailableNonPrimaryConnections.size();
        int i2 = 0;
        while (i2 < size) {
            SQLiteConnection sQLiteConnection2 = this.mAvailableNonPrimaryConnections.get(i2);
            try {
                sQLiteConnection2.reconfigure(this.mConfiguration);
            } catch (RuntimeException e3) {
                Log.e(TAG, "Failed to reconfigure available non-primary connection, closing it: " + sQLiteConnection2, e3);
                closeConnectionAndLogExceptionsLocked(sQLiteConnection2);
                this.mAvailableNonPrimaryConnections.remove(i2);
                size--;
                i2--;
            }
            i2++;
        }
        markAcquiredConnectionsLocked(AcquiredConnectionStatus.RECONFIGURE);
    }

    private boolean recycleConnectionLocked(SQLiteConnection sQLiteConnection, AcquiredConnectionStatus acquiredConnectionStatus) {
        if (acquiredConnectionStatus == AcquiredConnectionStatus.RECONFIGURE) {
            try {
                sQLiteConnection.reconfigure(this.mConfiguration);
            } catch (RuntimeException e2) {
                Log.e(TAG, "Failed to reconfigure released connection, closing it: " + sQLiteConnection, e2);
                acquiredConnectionStatus = AcquiredConnectionStatus.DISCARD;
            }
        }
        if (acquiredConnectionStatus != AcquiredConnectionStatus.DISCARD) {
            return true;
        }
        closeConnectionAndLogExceptionsLocked(sQLiteConnection);
        return false;
    }

    private void recycleConnectionWaiterLocked(ConnectionWaiter connectionWaiter) {
        connectionWaiter.mNext = this.mConnectionWaiterPool;
        connectionWaiter.mThread = null;
        connectionWaiter.mSql = null;
        connectionWaiter.mAssignedConnection = null;
        connectionWaiter.mException = null;
        connectionWaiter.mNonce++;
        this.mConnectionWaiterPool = connectionWaiter;
    }

    private void setMaxConnectionPoolSizeLocked() {
        if (this.mConfiguration.isInMemoryDb() || (this.mConfiguration.openFlags & 536870912) == 0) {
            this.mMaxConnectionPoolSize = 1;
        } else {
            this.mMaxConnectionPoolSize = SQLiteGlobal.getWALConnectionPoolSize();
        }
    }

    private void throwIfClosedLocked() {
        if (!this.mIsOpen) {
            throw new IllegalStateException("Cannot perform this operation because the connection pool has been closed.");
        }
    }

    private SQLiteConnection tryAcquireNonPrimaryConnectionLocked(String str, int i2) {
        int size = this.mAvailableNonPrimaryConnections.size();
        if (size > 1 && str != null) {
            for (int i3 = 0; i3 < size; i3++) {
                SQLiteConnection sQLiteConnection = this.mAvailableNonPrimaryConnections.get(i3);
                if (sQLiteConnection.isPreparedStatementInCache(str)) {
                    this.mAvailableNonPrimaryConnections.remove(i3);
                    finishAcquireConnectionLocked(sQLiteConnection, i2);
                    return sQLiteConnection;
                }
            }
        }
        if (size > 0) {
            SQLiteConnection sQLiteConnectionRemove = this.mAvailableNonPrimaryConnections.remove(size - 1);
            finishAcquireConnectionLocked(sQLiteConnectionRemove, i2);
            return sQLiteConnectionRemove;
        }
        int size2 = this.mAcquiredConnections.size();
        if (this.mAvailablePrimaryConnection != null) {
            size2++;
        }
        if (size2 >= this.mMaxConnectionPoolSize) {
            return null;
        }
        SQLiteConnection sQLiteConnectionOpenConnectionLocked = openConnectionLocked(this.mConfiguration, false);
        finishAcquireConnectionLocked(sQLiteConnectionOpenConnectionLocked, i2);
        return sQLiteConnectionOpenConnectionLocked;
    }

    private SQLiteConnection tryAcquirePrimaryConnectionLocked(int i2) {
        SQLiteConnection sQLiteConnection = this.mAvailablePrimaryConnection;
        if (sQLiteConnection != null) {
            this.mAvailablePrimaryConnection = null;
            finishAcquireConnectionLocked(sQLiteConnection, i2);
            return sQLiteConnection;
        }
        Iterator<SQLiteConnection> it = this.mAcquiredConnections.keySet().iterator();
        while (it.hasNext()) {
            if (it.next().isPrimaryConnection()) {
                return null;
            }
        }
        SQLiteConnection sQLiteConnectionOpenConnectionLocked = openConnectionLocked(this.mConfiguration, true);
        finishAcquireConnectionLocked(sQLiteConnectionOpenConnectionLocked, i2);
        return sQLiteConnectionOpenConnectionLocked;
    }

    /* JADX WARN: Code duplicated, block: B:60:0x00bd  */
    private SQLiteConnection waitForConnection(String str, int i2, CancellationSignal cancellationSignal) {
        SQLiteConnection sQLiteConnection;
        RuntimeException runtimeException;
        long j2;
        boolean z2 = (i2 & 2) != 0;
        synchronized (this.mLock) {
            throwIfClosedLocked();
            if (cancellationSignal != null) {
                cancellationSignal.throwIfCanceled();
            }
            SQLiteConnection sQLiteConnectionTryAcquireNonPrimaryConnectionLocked = !z2 ? tryAcquireNonPrimaryConnectionLocked(str, i2) : null;
            if (sQLiteConnectionTryAcquireNonPrimaryConnectionLocked == null) {
                sQLiteConnectionTryAcquireNonPrimaryConnectionLocked = tryAcquirePrimaryConnectionLocked(i2);
            }
            if (sQLiteConnectionTryAcquireNonPrimaryConnectionLocked != null) {
                return sQLiteConnectionTryAcquireNonPrimaryConnectionLocked;
            }
            int priority = getPriority(i2);
            final ConnectionWaiter connectionWaiterObtainConnectionWaiterLocked = obtainConnectionWaiterLocked(Thread.currentThread(), SystemClock.uptimeMillis(), priority, z2, str, i2);
            ConnectionWaiter connectionWaiter = null;
            for (ConnectionWaiter connectionWaiter2 = this.mConnectionWaiterQueue; connectionWaiter2 != null; connectionWaiter2 = connectionWaiter2.mNext) {
                if (priority > connectionWaiter2.mPriority) {
                    connectionWaiterObtainConnectionWaiterLocked.mNext = connectionWaiter2;
                    break;
                }
                connectionWaiter = connectionWaiter2;
            }
            if (connectionWaiter != null) {
                connectionWaiter.mNext = connectionWaiterObtainConnectionWaiterLocked;
            } else {
                this.mConnectionWaiterQueue = connectionWaiterObtainConnectionWaiterLocked;
            }
            final int i3 = connectionWaiterObtainConnectionWaiterLocked.mNonce;
            if (cancellationSignal != null) {
                cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: android.database.sqlite.SQLiteConnectionPool.1
                    @Override // android.os.CancellationSignal.OnCancelListener
                    public void onCancel() {
                        synchronized (SQLiteConnectionPool.this.mLock) {
                            ConnectionWaiter connectionWaiter3 = connectionWaiterObtainConnectionWaiterLocked;
                            if (connectionWaiter3.mNonce == i3) {
                                SQLiteConnectionPool.this.cancelConnectionWaiterLocked(connectionWaiter3);
                            }
                        }
                    }
                });
            }
            try {
                long j3 = connectionWaiterObtainConnectionWaiterLocked.mStartTime + 30000;
                long j4 = 30000;
                while (true) {
                    if (this.mConnectionLeaked.compareAndSet(true, false)) {
                        synchronized (this.mLock) {
                            wakeConnectionWaitersLocked();
                        }
                    }
                    LockSupport.parkNanos(this, j4 * TimeUtils.NANOS_PER_MS);
                    Thread.interrupted();
                    synchronized (this.mLock) {
                        throwIfClosedLocked();
                        sQLiteConnection = connectionWaiterObtainConnectionWaiterLocked.mAssignedConnection;
                        runtimeException = connectionWaiterObtainConnectionWaiterLocked.mException;
                        if (sQLiteConnection != null || runtimeException != null) {
                            break;
                            break;
                        }
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        if (jUptimeMillis < j3) {
                            j2 = jUptimeMillis - j3;
                        } else {
                            logConnectionPoolBusyLocked(jUptimeMillis - connectionWaiterObtainConnectionWaiterLocked.mStartTime, i2);
                            j3 = jUptimeMillis + 30000;
                            j2 = 30000;
                        }
                    }
                    if (cancellationSignal != null) {
                        cancellationSignal.setOnCancelListener(null);
                    }
                    return sQLiteConnection;
                    j4 = j2;
                }
                recycleConnectionWaiterLocked(connectionWaiterObtainConnectionWaiterLocked);
                if (sQLiteConnection == null) {
                    throw runtimeException;
                }
                if (cancellationSignal != null) {
                    cancellationSignal.setOnCancelListener(null);
                }
                return sQLiteConnection;
            } catch (Throwable th) {
                if (cancellationSignal != null) {
                    cancellationSignal.setOnCancelListener(null);
                }
                throw th;
            }
        }
    }

    private void wakeConnectionWaitersLocked() {
        SQLiteConnection sQLiteConnectionTryAcquirePrimaryConnectionLocked;
        ConnectionWaiter connectionWaiter = this.mConnectionWaiterQueue;
        ConnectionWaiter connectionWaiter2 = null;
        boolean z2 = false;
        boolean z3 = false;
        while (connectionWaiter != null) {
            boolean z4 = true;
            if (this.mIsOpen) {
                try {
                    if (connectionWaiter.mWantPrimaryConnection || z2) {
                        sQLiteConnectionTryAcquirePrimaryConnectionLocked = null;
                    } else {
                        sQLiteConnectionTryAcquirePrimaryConnectionLocked = tryAcquireNonPrimaryConnectionLocked(connectionWaiter.mSql, connectionWaiter.mConnectionFlags);
                        if (sQLiteConnectionTryAcquirePrimaryConnectionLocked == null) {
                            z2 = true;
                        }
                    }
                    if (sQLiteConnectionTryAcquirePrimaryConnectionLocked == null && !z3 && (sQLiteConnectionTryAcquirePrimaryConnectionLocked = tryAcquirePrimaryConnectionLocked(connectionWaiter.mConnectionFlags)) == null) {
                        z3 = true;
                    }
                    if (sQLiteConnectionTryAcquirePrimaryConnectionLocked != null) {
                        connectionWaiter.mAssignedConnection = sQLiteConnectionTryAcquirePrimaryConnectionLocked;
                    } else if (z2 && z3) {
                        return;
                    } else {
                        z4 = false;
                    }
                } catch (RuntimeException e2) {
                    connectionWaiter.mException = e2;
                }
            }
            ConnectionWaiter connectionWaiter3 = connectionWaiter.mNext;
            if (z4) {
                if (connectionWaiter2 != null) {
                    connectionWaiter2.mNext = connectionWaiter3;
                } else {
                    this.mConnectionWaiterQueue = connectionWaiter3;
                }
                connectionWaiter.mNext = null;
                LockSupport.unpark(connectionWaiter.mThread);
            } else {
                connectionWaiter2 = connectionWaiter;
            }
            connectionWaiter = connectionWaiter3;
        }
    }

    public SQLiteConnection acquireConnection(String str, int i2, CancellationSignal cancellationSignal) {
        SQLiteConnection sQLiteConnectionWaitForConnection = waitForConnection(str, i2, cancellationSignal);
        synchronized (this.mLock) {
            IdleConnectionHandler idleConnectionHandler = this.mIdleConnectionHandler;
            if (idleConnectionHandler != null) {
                idleConnectionHandler.connectionAcquired(sQLiteConnectionWaitForConnection);
            }
        }
        return sQLiteConnectionWaitForConnection;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        dispose(false);
    }

    public void collectDbStats(ArrayList<SQLiteDebug.DbStats> arrayList) {
        synchronized (this.mLock) {
            SQLiteConnection sQLiteConnection = this.mAvailablePrimaryConnection;
            if (sQLiteConnection != null) {
                sQLiteConnection.collectDbStats(arrayList);
            }
            Iterator<SQLiteConnection> it = this.mAvailableNonPrimaryConnections.iterator();
            while (it.hasNext()) {
                it.next().collectDbStats(arrayList);
            }
            Iterator<SQLiteConnection> it2 = this.mAcquiredConnections.keySet().iterator();
            while (it2.hasNext()) {
                it2.next().collectDbStatsUnsafe(arrayList);
            }
        }
    }

    public void disableIdleConnectionHandler() {
        synchronized (this.mLock) {
            this.mIdleConnectionHandler = null;
        }
    }

    public void dump(Printer printer, boolean z2) {
        Printer printerCreate = PrefixPrinter.create(printer, "    ");
        synchronized (this.mLock) {
            printer.println("Connection pool for " + this.mConfiguration.path + SettingsStringUtil.DELIMITER);
            StringBuilder sb = new StringBuilder("  Open: ");
            sb.append(this.mIsOpen);
            printer.println(sb.toString());
            printer.println("  Max connections: " + this.mMaxConnectionPoolSize);
            if (this.mConfiguration.isLookasideConfigSet()) {
                printer.println("  Lookaside config: sz=" + this.mConfiguration.lookasideSlotSize + " cnt=" + this.mConfiguration.lookasideSlotCount);
            }
            if (this.mConfiguration.idleConnectionTimeoutMs != Long.MAX_VALUE) {
                printer.println("  Idle connection timeout: " + this.mConfiguration.idleConnectionTimeoutMs);
            }
            printer.println("  Available primary connection:");
            SQLiteConnection sQLiteConnection = this.mAvailablePrimaryConnection;
            if (sQLiteConnection != null) {
                sQLiteConnection.dump(printerCreate, z2);
            } else {
                printerCreate.println("<none>");
            }
            printer.println("  Available non-primary connections:");
            int i2 = 0;
            if (this.mAvailableNonPrimaryConnections.isEmpty()) {
                printerCreate.println("<none>");
            } else {
                int size = this.mAvailableNonPrimaryConnections.size();
                for (int i3 = 0; i3 < size; i3++) {
                    this.mAvailableNonPrimaryConnections.get(i3).dump(printerCreate, z2);
                }
            }
            printer.println("  Acquired connections:");
            if (this.mAcquiredConnections.isEmpty()) {
                printerCreate.println("<none>");
            } else {
                for (Map.Entry<SQLiteConnection, AcquiredConnectionStatus> entry : this.mAcquiredConnections.entrySet()) {
                    entry.getKey().dumpUnsafe(printerCreate, z2);
                    printerCreate.println("  Status: " + entry.getValue());
                }
            }
            printer.println("  Connection waiters:");
            if (this.mConnectionWaiterQueue != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                ConnectionWaiter connectionWaiter = this.mConnectionWaiterQueue;
                while (connectionWaiter != null) {
                    printerCreate.println(i2 + ": waited for " + ((jUptimeMillis - connectionWaiter.mStartTime) * 0.001f) + " ms - thread=" + connectionWaiter.mThread + ", priority=" + connectionWaiter.mPriority + ", sql='" + connectionWaiter.mSql + "'");
                    connectionWaiter = connectionWaiter.mNext;
                    i2++;
                }
            } else {
                printerCreate.println("<none>");
            }
        }
    }

    public void finalize() throws Throwable {
        try {
            dispose(true);
        } finally {
            super.finalize();
        }
    }

    public void onConnectionLeaked() {
        Log.w(TAG, "A SQLiteConnection object for database '" + this.mConfiguration.label + "' was leaked!  Please fix your application to end transactions in progress properly and to close the database when it is no longer needed.");
        this.mConnectionLeaked.set(true);
    }

    public void reconfigure(SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration) {
        if (sQLiteDatabaseConfiguration == null) {
            throw new IllegalArgumentException("configuration must not be null.");
        }
        synchronized (this.mLock) {
            throwIfClosedLocked();
            boolean z2 = ((sQLiteDatabaseConfiguration.openFlags ^ this.mConfiguration.openFlags) & 536870912) != 0;
            if (z2) {
                if (!this.mAcquiredConnections.isEmpty()) {
                    throw new IllegalStateException("Write Ahead Logging (WAL) mode cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first.");
                }
                closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked();
            }
            if ((sQLiteDatabaseConfiguration.foreignKeyConstraintsEnabled != this.mConfiguration.foreignKeyConstraintsEnabled) && !this.mAcquiredConnections.isEmpty()) {
                throw new IllegalStateException("Foreign Key Constraints cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first.");
            }
            SQLiteDatabaseConfiguration sQLiteDatabaseConfiguration2 = this.mConfiguration;
            if (sQLiteDatabaseConfiguration2.openFlags != sQLiteDatabaseConfiguration.openFlags) {
                if (z2) {
                    closeAvailableConnectionsAndLogExceptionsLocked();
                }
                SQLiteConnection sQLiteConnectionOpenConnectionLocked = openConnectionLocked(sQLiteDatabaseConfiguration, true);
                closeAvailableConnectionsAndLogExceptionsLocked();
                discardAcquiredConnectionsLocked();
                this.mAvailablePrimaryConnection = sQLiteConnectionOpenConnectionLocked;
                this.mConfiguration.updateParametersFrom(sQLiteDatabaseConfiguration);
                setMaxConnectionPoolSizeLocked();
            } else {
                sQLiteDatabaseConfiguration2.updateParametersFrom(sQLiteDatabaseConfiguration);
                setMaxConnectionPoolSizeLocked();
                closeExcessConnectionsAndLogExceptionsLocked();
                reconfigureAllConnectionsLocked();
            }
            wakeConnectionWaitersLocked();
        }
    }

    public void releaseConnection(SQLiteConnection sQLiteConnection) {
        synchronized (this.mLock) {
            IdleConnectionHandler idleConnectionHandler = this.mIdleConnectionHandler;
            if (idleConnectionHandler != null) {
                idleConnectionHandler.connectionReleased(sQLiteConnection);
            }
            AcquiredConnectionStatus acquiredConnectionStatusRemove = this.mAcquiredConnections.remove(sQLiteConnection);
            if (acquiredConnectionStatusRemove == null) {
                throw new IllegalStateException("Cannot perform this operation because the specified connection was not acquired from this pool or has already been released.");
            }
            if (!this.mIsOpen) {
                closeConnectionAndLogExceptionsLocked(sQLiteConnection);
            } else if (sQLiteConnection.isPrimaryConnection()) {
                if (recycleConnectionLocked(sQLiteConnection, acquiredConnectionStatusRemove)) {
                    this.mAvailablePrimaryConnection = sQLiteConnection;
                }
                wakeConnectionWaitersLocked();
            } else if (this.mAvailableNonPrimaryConnections.size() >= this.mMaxConnectionPoolSize - 1) {
                closeConnectionAndLogExceptionsLocked(sQLiteConnection);
            } else {
                if (recycleConnectionLocked(sQLiteConnection, acquiredConnectionStatusRemove)) {
                    this.mAvailableNonPrimaryConnections.add(sQLiteConnection);
                }
                wakeConnectionWaitersLocked();
            }
        }
    }

    public void setupIdleConnectionHandler(Looper looper, long j2) {
        synchronized (this.mLock) {
            this.mIdleConnectionHandler = new IdleConnectionHandler(looper, j2);
        }
    }

    public boolean shouldYieldConnection(SQLiteConnection sQLiteConnection, int i2) {
        synchronized (this.mLock) {
            if (!this.mAcquiredConnections.containsKey(sQLiteConnection)) {
                throw new IllegalStateException("Cannot perform this operation because the specified connection was not acquired from this pool or has already been released.");
            }
            if (!this.mIsOpen) {
                return false;
            }
            return isSessionBlockingImportantConnectionWaitersLocked(sQLiteConnection.isPrimaryConnection(), i2);
        }
    }

    public String toString() {
        return "SQLiteConnectionPool: " + this.mConfiguration.path;
    }

    private void open() {
        this.mAvailablePrimaryConnection = openConnectionLocked(this.mConfiguration, true);
        synchronized (this.mLock) {
            IdleConnectionHandler idleConnectionHandler = this.mIdleConnectionHandler;
            if (idleConnectionHandler != null) {
                idleConnectionHandler.connectionReleased(this.mAvailablePrimaryConnection);
            }
        }
        this.mIsOpen = true;
        this.mCloseGuard.open("close");
    }
}
