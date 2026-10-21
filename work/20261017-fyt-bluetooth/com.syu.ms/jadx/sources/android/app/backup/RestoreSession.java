package android.app.backup;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class RestoreSession {
    public static final String TAG = "RestoreSession";
    public IRestoreSession mBinder;
    public final Context mContext;
    public RestoreObserverWrapper mObserver = null;

    public class RestoreObserverWrapper extends IRestoreObserver.Stub {
        public static final int MSG_RESTORE_FINISHED = 3;
        public static final int MSG_RESTORE_SETS_AVAILABLE = 4;
        public static final int MSG_RESTORE_STARTING = 1;
        public static final int MSG_UPDATE = 2;
        public final RestoreObserver mAppObserver;
        public final Handler mHandler;

        public RestoreObserverWrapper(Context context, RestoreObserver restoreObserver) {
            this.mHandler = new Handler(context.getMainLooper()) { // from class: android.app.backup.RestoreSession.RestoreObserverWrapper.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    int i2 = message.what;
                    if (i2 == 1) {
                        RestoreObserverWrapper.this.mAppObserver.restoreStarting(message.arg1);
                        return;
                    }
                    if (i2 == 2) {
                        RestoreObserverWrapper.this.mAppObserver.onUpdate(message.arg1, (String) message.obj);
                    } else if (i2 == 3) {
                        RestoreObserverWrapper.this.mAppObserver.restoreFinished(message.arg1);
                    } else {
                        if (i2 != 4) {
                            return;
                        }
                        RestoreObserverWrapper.this.mAppObserver.restoreSetsAvailable((RestoreSet[]) message.obj);
                    }
                }
            };
            this.mAppObserver = restoreObserver;
        }

        @Override // android.app.backup.IRestoreObserver
        public void onUpdate(int i2, String str) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(2, i2, 0, str));
        }

        @Override // android.app.backup.IRestoreObserver
        public void restoreFinished(int i2) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(3, i2, 0));
        }

        @Override // android.app.backup.IRestoreObserver
        public void restoreSetsAvailable(RestoreSet[] restoreSetArr) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(4, restoreSetArr));
        }

        @Override // android.app.backup.IRestoreObserver
        public void restoreStarting(int i2) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(1, i2, 0));
        }
    }

    public RestoreSession(Context context, IRestoreSession iRestoreSession) {
        this.mContext = context;
        this.mBinder = iRestoreSession;
    }

    public void endRestoreSession() {
        try {
            try {
                this.mBinder.endRestoreSession();
            } catch (RemoteException unused) {
                Log.d(TAG, "Can't contact server to get available sets");
            }
        } finally {
            this.mBinder = null;
        }
    }

    public int getAvailableRestoreSets(RestoreObserver restoreObserver) {
        try {
            return this.mBinder.getAvailableRestoreSets(new RestoreObserverWrapper(this.mContext, restoreObserver));
        } catch (RemoteException unused) {
            Log.d(TAG, "Can't contact server to get available sets");
            return -1;
        }
    }

    public int restoreAll(long j2, RestoreObserver restoreObserver) {
        if (this.mObserver != null) {
            Log.d(TAG, "restoreAll() called during active restore");
            return -1;
        }
        RestoreObserverWrapper restoreObserverWrapper = new RestoreObserverWrapper(this.mContext, restoreObserver);
        this.mObserver = restoreObserverWrapper;
        try {
            return this.mBinder.restoreAll(j2, restoreObserverWrapper);
        } catch (RemoteException unused) {
            Log.d(TAG, "Can't contact server to restore");
            return -1;
        }
    }

    public int restorePackage(String str, RestoreObserver restoreObserver) {
        if (this.mObserver != null) {
            Log.d(TAG, "restorePackage() called during active restore");
            return -1;
        }
        RestoreObserverWrapper restoreObserverWrapper = new RestoreObserverWrapper(this.mContext, restoreObserver);
        this.mObserver = restoreObserverWrapper;
        try {
            return this.mBinder.restorePackage(str, restoreObserverWrapper);
        } catch (RemoteException unused) {
            Log.d(TAG, "Can't contact server to restore package");
            return -1;
        }
    }

    public int restoreSome(long j2, RestoreObserver restoreObserver, String[] strArr) {
        if (this.mObserver != null) {
            Log.d(TAG, "restoreAll() called during active restore");
            return -1;
        }
        RestoreObserverWrapper restoreObserverWrapper = new RestoreObserverWrapper(this.mContext, restoreObserver);
        this.mObserver = restoreObserverWrapper;
        try {
            return this.mBinder.restoreSome(j2, restoreObserverWrapper, strArr);
        } catch (RemoteException unused) {
            Log.d(TAG, "Can't contact server to restore packages");
            return -1;
        }
    }
}
