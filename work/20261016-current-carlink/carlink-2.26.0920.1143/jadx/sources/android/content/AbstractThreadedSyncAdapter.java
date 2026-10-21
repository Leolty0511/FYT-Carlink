package android.content;

import android.accounts.Account;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Process;
import android.os.Trace;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractThreadedSyncAdapter {
    private static final boolean ENABLE_LOG;

    @Deprecated
    public static final int LOG_SYNC_DETAILS = 2743;
    private static final String TAG = "SyncAdapter";
    private boolean mAllowParallelSyncs;
    private final boolean mAutoInitialize;
    private final Context mContext;
    private final ISyncAdapterImpl mISyncAdapterImpl;
    private final AtomicInteger mNumSyncStarts;
    private final Object mSyncThreadLock;
    private final HashMap<Account, SyncThread> mSyncThreads;

    public class ISyncAdapterImpl extends ISyncAdapter.Stub {
        private ISyncAdapterImpl() {
        }

        @Override // android.content.ISyncAdapter
        public void cancelSync(ISyncContext iSyncContext) {
            SyncThread syncThread;
            try {
                try {
                    synchronized (AbstractThreadedSyncAdapter.this.mSyncThreadLock) {
                        Iterator it = AbstractThreadedSyncAdapter.this.mSyncThreads.values().iterator();
                        do {
                            if (!it.hasNext()) {
                                syncThread = null;
                                break;
                            }
                            syncThread = (SyncThread) it.next();
                        } while (syncThread.mSyncContext.getSyncContextBinder() != iSyncContext.asBinder());
                    }
                    if (syncThread != null) {
                        if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                            Log.d(AbstractThreadedSyncAdapter.TAG, "cancelSync() " + syncThread.mAuthority + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + syncThread.mAccount);
                        }
                        if (AbstractThreadedSyncAdapter.this.mAllowParallelSyncs) {
                            AbstractThreadedSyncAdapter.this.onSyncCanceled(syncThread);
                        } else {
                            AbstractThreadedSyncAdapter.this.onSyncCanceled();
                        }
                    } else if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                        Log.w(AbstractThreadedSyncAdapter.TAG, "cancelSync() unknown context");
                    }
                    if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                        Log.d(AbstractThreadedSyncAdapter.TAG, "cancelSync() finishing");
                    }
                } catch (Throwable th) {
                    if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                        Log.d(AbstractThreadedSyncAdapter.TAG, "cancelSync() finishing");
                    }
                    throw th;
                }
            } catch (Error | RuntimeException e2) {
                if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                    Log.d(AbstractThreadedSyncAdapter.TAG, "cancelSync() caught exception", e2);
                }
                throw e2;
            }
        }

        @Override // android.content.ISyncAdapter
        public void startSync(ISyncContext iSyncContext, String str, Account account, Bundle bundle) {
            if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                if (bundle != null) {
                    bundle.size();
                }
                Log.d(AbstractThreadedSyncAdapter.TAG, "startSync() start " + str + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + account + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + bundle);
            }
            try {
                try {
                    SyncContext syncContext = new SyncContext(iSyncContext);
                    Account syncKey = AbstractThreadedSyncAdapter.this.toSyncKey(account);
                    synchronized (AbstractThreadedSyncAdapter.this.mSyncThreadLock) {
                        boolean z2 = true;
                        if (AbstractThreadedSyncAdapter.this.mSyncThreads.containsKey(syncKey)) {
                            if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                                Log.d(AbstractThreadedSyncAdapter.TAG, "  alreadyInProgress");
                            }
                        } else {
                            if (AbstractThreadedSyncAdapter.this.mAutoInitialize && bundle != null && bundle.getBoolean(ContentResolver.SYNC_EXTRAS_INITIALIZE, false)) {
                                try {
                                    if (ContentResolver.getIsSyncable(account, str) < 0) {
                                        ContentResolver.setIsSyncable(account, str, 1);
                                    }
                                    syncContext.onFinished(new SyncResult());
                                    if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                                        Log.d(AbstractThreadedSyncAdapter.TAG, "startSync() finishing");
                                        return;
                                    }
                                    return;
                                } catch (Throwable th) {
                                    syncContext.onFinished(new SyncResult());
                                    throw th;
                                }
                            }
                            SyncThread syncThread = new SyncThread("SyncAdapterThread-" + AbstractThreadedSyncAdapter.this.mNumSyncStarts.incrementAndGet(), syncContext, str, account, bundle);
                            AbstractThreadedSyncAdapter.this.mSyncThreads.put(syncKey, syncThread);
                            syncThread.start();
                            z2 = false;
                        }
                        if (z2) {
                            syncContext.onFinished(SyncResult.ALREADY_IN_PROGRESS);
                        }
                        if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                            Log.d(AbstractThreadedSyncAdapter.TAG, "startSync() finishing");
                        }
                    }
                } catch (Throwable th2) {
                    if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                        Log.d(AbstractThreadedSyncAdapter.TAG, "startSync() finishing");
                    }
                    throw th2;
                }
            } catch (Error | RuntimeException e2) {
                if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                    Log.d(AbstractThreadedSyncAdapter.TAG, "startSync() caught exception", e2);
                }
                throw e2;
            }
        }
    }

    public class SyncThread extends Thread {
        private final Account mAccount;
        private final String mAuthority;
        private final Bundle mExtras;
        private final SyncContext mSyncContext;
        private final Account mThreadsKey;

        private boolean isCanceled() {
            return Thread.currentThread().isInterrupted();
        }

        /* JADX WARN: Code duplicated, block: B:66:0x00ea A[Catch: all -> 0x00df, TryCatch #11 {all -> 0x00df, blocks: (B:6:0x0020, B:8:0x0026, B:10:0x002c, B:25:0x0065, B:27:0x006b, B:28:0x0072, B:64:0x00e4, B:66:0x00ea, B:67:0x00f1, B:69:0x00f3, B:71:0x00f9, B:72:0x0100), top: B:115:0x0020 }] */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            Process.setThreadPriority(10);
            if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                Log.d(AbstractThreadedSyncAdapter.TAG, "Thread started");
            }
            Trace.traceBegin(128L, this.mAuthority);
            SyncResult syncResult = new SyncResult();
            ContentProviderClient contentProviderClient = null;
            try {
                try {
                    if (isCanceled()) {
                        if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                            Log.d(AbstractThreadedSyncAdapter.TAG, "Already canceled");
                        }
                        Trace.traceEnd(128L);
                        if (!isCanceled()) {
                            this.mSyncContext.onFinished(syncResult);
                        }
                        synchronized (AbstractThreadedSyncAdapter.this.mSyncThreadLock) {
                            AbstractThreadedSyncAdapter.this.mSyncThreads.remove(this.mThreadsKey);
                        }
                        if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                            Log.d(AbstractThreadedSyncAdapter.TAG, "Thread finished");
                            return;
                        }
                        return;
                    }
                    if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                        Log.d(AbstractThreadedSyncAdapter.TAG, "Calling onPerformSync...");
                    }
                    ContentProviderClient contentProviderClientAcquireContentProviderClient = AbstractThreadedSyncAdapter.this.mContext.getContentResolver().acquireContentProviderClient(this.mAuthority);
                    try {
                        if (contentProviderClientAcquireContentProviderClient != null) {
                            AbstractThreadedSyncAdapter.this.onPerformSync(this.mAccount, this.mExtras, this.mAuthority, contentProviderClientAcquireContentProviderClient, syncResult);
                        } else {
                            syncResult.databaseError = true;
                        }
                        if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                            Log.d(AbstractThreadedSyncAdapter.TAG, "onPerformSync done");
                        }
                        Trace.traceEnd(128L);
                        if (contentProviderClientAcquireContentProviderClient != null) {
                            contentProviderClientAcquireContentProviderClient.release();
                        }
                        if (!isCanceled()) {
                            this.mSyncContext.onFinished(syncResult);
                        }
                        synchronized (AbstractThreadedSyncAdapter.this.mSyncThreadLock) {
                            AbstractThreadedSyncAdapter.this.mSyncThreads.remove(this.mThreadsKey);
                        }
                        if (!AbstractThreadedSyncAdapter.ENABLE_LOG) {
                            return;
                        }
                    } catch (Error e2) {
                        e = e2;
                        if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                            Log.d(AbstractThreadedSyncAdapter.TAG, "caught exception", e);
                        }
                        throw e;
                    } catch (SecurityException e3) {
                        e = e3;
                        contentProviderClient = contentProviderClientAcquireContentProviderClient;
                        if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                            Log.d(AbstractThreadedSyncAdapter.TAG, "SecurityException", e);
                        }
                        AbstractThreadedSyncAdapter.this.onSecurityException(this.mAccount, this.mExtras, this.mAuthority, syncResult);
                        syncResult.databaseError = true;
                        Trace.traceEnd(128L);
                        if (contentProviderClient != null) {
                            contentProviderClient.release();
                        }
                        if (!isCanceled()) {
                            this.mSyncContext.onFinished(syncResult);
                        }
                        synchronized (AbstractThreadedSyncAdapter.this.mSyncThreadLock) {
                            AbstractThreadedSyncAdapter.this.mSyncThreads.remove(this.mThreadsKey);
                        }
                        if (!AbstractThreadedSyncAdapter.ENABLE_LOG) {
                            return;
                        }
                    } catch (RuntimeException e4) {
                        e = e4;
                        if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                            Log.d(AbstractThreadedSyncAdapter.TAG, "caught exception", e);
                        }
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        contentProviderClient = contentProviderClientAcquireContentProviderClient;
                        Trace.traceEnd(128L);
                        if (contentProviderClient != null) {
                            contentProviderClient.release();
                        }
                        if (!isCanceled()) {
                            this.mSyncContext.onFinished(syncResult);
                        }
                        synchronized (AbstractThreadedSyncAdapter.this.mSyncThreadLock) {
                            AbstractThreadedSyncAdapter.this.mSyncThreads.remove(this.mThreadsKey);
                        }
                        if (AbstractThreadedSyncAdapter.ENABLE_LOG) {
                            Log.d(AbstractThreadedSyncAdapter.TAG, "Thread finished");
                        }
                        throw th;
                    }
                    Log.d(AbstractThreadedSyncAdapter.TAG, "Thread finished");
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Error e5) {
                e = e5;
            } catch (SecurityException e6) {
                e = e6;
            } catch (RuntimeException e7) {
                e = e7;
            }
        }

        private SyncThread(String str, SyncContext syncContext, String str2, Account account, Bundle bundle) {
            super(str);
            this.mSyncContext = syncContext;
            this.mAuthority = str2;
            this.mAccount = account;
            this.mExtras = bundle;
            this.mThreadsKey = AbstractThreadedSyncAdapter.this.toSyncKey(account);
        }
    }

    static {
        ENABLE_LOG = Build.IS_DEBUGGABLE && Log.isLoggable(TAG, 3);
    }

    public AbstractThreadedSyncAdapter(Context context, boolean z2) {
        this(context, z2, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Account toSyncKey(Account account) {
        if (this.mAllowParallelSyncs) {
            return account;
        }
        return null;
    }

    public Context getContext() {
        return this.mContext;
    }

    public final IBinder getSyncAdapterBinder() {
        return this.mISyncAdapterImpl.asBinder();
    }

    public abstract void onPerformSync(Account account, Bundle bundle, String str, ContentProviderClient contentProviderClient, SyncResult syncResult);

    public void onSecurityException(Account account, Bundle bundle, String str, SyncResult syncResult) {
    }

    public void onSyncCanceled() {
        SyncThread syncThread;
        synchronized (this.mSyncThreadLock) {
            syncThread = this.mSyncThreads.get(null);
        }
        if (syncThread != null) {
            syncThread.interrupt();
        }
    }

    public AbstractThreadedSyncAdapter(Context context, boolean z2, boolean z3) {
        this.mSyncThreads = new HashMap<>();
        this.mSyncThreadLock = new Object();
        this.mContext = context;
        this.mISyncAdapterImpl = new ISyncAdapterImpl();
        this.mNumSyncStarts = new AtomicInteger(0);
        this.mAutoInitialize = z2;
        this.mAllowParallelSyncs = z3;
    }

    public void onSyncCanceled(Thread thread) {
        thread.interrupt();
    }
}
