package android.os;

import android.util.Log;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class TokenWatcher {
    private Handler mHandler;
    private String mTag;
    private Runnable mNotificationTask = new Runnable() { // from class: android.os.TokenWatcher.1
        @Override // java.lang.Runnable
        public void run() {
            int i2;
            synchronized (TokenWatcher.this.mTokens) {
                i2 = TokenWatcher.this.mNotificationQueue;
                TokenWatcher.this.mNotificationQueue = -1;
            }
            if (i2 == 1) {
                TokenWatcher.this.acquired();
            } else if (i2 == 0) {
                TokenWatcher.this.released();
            }
        }
    };
    private WeakHashMap<IBinder, Death> mTokens = new WeakHashMap<>();
    private int mNotificationQueue = -1;
    private volatile boolean mAcquired = false;

    public class Death implements IBinder.DeathRecipient {
        public String tag;
        public IBinder token;

        public Death(IBinder iBinder, String str) {
            this.token = iBinder;
            this.tag = str;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            TokenWatcher.this.cleanup(this.token, false);
        }

        public void finalize() throws Throwable {
            try {
                if (this.token != null) {
                    Log.w(TokenWatcher.this.mTag, "cleaning up leaked reference: " + this.tag);
                    TokenWatcher.this.release(this.token);
                }
            } finally {
                super.finalize();
            }
        }
    }

    public TokenWatcher(Handler handler, String str) {
        this.mHandler = handler;
        this.mTag = str == null ? "TokenWatcher" : str;
    }

    private ArrayList<String> dumpInternal() {
        ArrayList<String> arrayList = new ArrayList<>();
        synchronized (this.mTokens) {
            Set<IBinder> setKeySet = this.mTokens.keySet();
            arrayList.add("Token count: " + this.mTokens.size());
            int i2 = 0;
            for (IBinder iBinder : setKeySet) {
                arrayList.add("[" + i2 + "] " + this.mTokens.get(iBinder).tag + " - " + iBinder);
                i2++;
            }
        }
        return arrayList;
    }

    private void sendNotificationLocked(boolean z2) {
        int i2 = this.mNotificationQueue;
        if (i2 == -1) {
            this.mNotificationQueue = z2 ? 1 : 0;
            this.mHandler.post(this.mNotificationTask);
        } else if (i2 != z2) {
            this.mNotificationQueue = -1;
            this.mHandler.removeCallbacks(this.mNotificationTask);
        }
    }

    public void acquire(IBinder iBinder, String str) {
        synchronized (this.mTokens) {
            int size = this.mTokens.size();
            Death death = new Death(iBinder, str);
            try {
                iBinder.linkToDeath(death, 0);
                this.mTokens.put(iBinder, death);
                if (size == 0 && !this.mAcquired) {
                    sendNotificationLocked(true);
                    this.mAcquired = true;
                }
            } catch (RemoteException unused) {
            }
        }
    }

    public abstract void acquired();

    public void cleanup(IBinder iBinder, boolean z2) {
        synchronized (this.mTokens) {
            Death deathRemove = this.mTokens.remove(iBinder);
            if (z2 && deathRemove != null) {
                deathRemove.token.unlinkToDeath(deathRemove, 0);
                deathRemove.token = null;
            }
            if (this.mTokens.size() == 0 && this.mAcquired) {
                sendNotificationLocked(false);
                this.mAcquired = false;
            }
        }
    }

    public void dump() {
        Iterator<String> it = dumpInternal().iterator();
        while (it.hasNext()) {
            Log.i(this.mTag, it.next());
        }
    }

    public boolean isAcquired() {
        boolean z2;
        synchronized (this.mTokens) {
            z2 = this.mAcquired;
        }
        return z2;
    }

    public void release(IBinder iBinder) {
        cleanup(iBinder, true);
    }

    public abstract void released();

    public void dump(PrintWriter printWriter) {
        Iterator<String> it = dumpInternal().iterator();
        while (it.hasNext()) {
            printWriter.println(it.next());
        }
    }
}
