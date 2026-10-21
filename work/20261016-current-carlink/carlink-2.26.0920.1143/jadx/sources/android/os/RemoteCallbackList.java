package android.os;

import android.os.IInterface;
import android.util.ArrayMap;
import android.util.Slog;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class RemoteCallbackList<E extends IInterface> {
    private static final String TAG = "RemoteCallbackList";
    private Object[] mActiveBroadcast;
    private StringBuilder mRecentCallers;
    ArrayMap<IBinder, RemoteCallbackList<E>.Callback> mCallbacks = new ArrayMap<>();
    private int mBroadcastCount = -1;
    private boolean mKilled = false;

    public final class Callback implements IBinder.DeathRecipient {
        final E mCallback;
        final Object mCookie;

        public Callback(E e2, Object obj) {
            this.mCallback = e2;
            this.mCookie = obj;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (RemoteCallbackList.this.mCallbacks) {
                RemoteCallbackList.this.mCallbacks.remove(this.mCallback.asBinder());
            }
            RemoteCallbackList.this.onCallbackDied(this.mCallback, this.mCookie);
        }
    }

    private void logExcessiveCallbacks() {
        long size = this.mCallbacks.size();
        if (size >= 3000) {
            if (size == 3000 && this.mRecentCallers == null) {
                this.mRecentCallers = new StringBuilder();
            }
            StringBuilder sb = this.mRecentCallers;
            if (sb == null || sb.length() >= 1000) {
                return;
            }
            this.mRecentCallers.append(Debug.getCallers(5));
            this.mRecentCallers.append('\n');
            if (this.mRecentCallers.length() >= 1000) {
                Slog.wtf(TAG, "More than 3000 remote callbacks registered. Recent callers:\n" + this.mRecentCallers.toString());
                this.mRecentCallers = null;
            }
        }
    }

    public int beginBroadcast() {
        synchronized (this.mCallbacks) {
            if (this.mBroadcastCount > 0) {
                throw new IllegalStateException("beginBroadcast() called while already in a broadcast");
            }
            int size = this.mCallbacks.size();
            this.mBroadcastCount = size;
            if (size <= 0) {
                return 0;
            }
            Object[] objArr = this.mActiveBroadcast;
            if (objArr == null || objArr.length < size) {
                objArr = new Object[size];
                this.mActiveBroadcast = objArr;
            }
            for (int i2 = 0; i2 < size; i2++) {
                objArr[i2] = this.mCallbacks.valueAt(i2);
            }
            return size;
        }
    }

    public void broadcast(Consumer<E> consumer) {
        int iBeginBroadcast = beginBroadcast();
        for (int i2 = 0; i2 < iBeginBroadcast; i2++) {
            try {
                consumer.accept(getBroadcastItem(i2));
            } catch (Throwable th) {
                finishBroadcast();
                throw th;
            }
        }
        finishBroadcast();
    }

    public void finishBroadcast() {
        synchronized (this.mCallbacks) {
            int i2 = this.mBroadcastCount;
            if (i2 < 0) {
                throw new IllegalStateException("finishBroadcast() called outside of a broadcast");
            }
            Object[] objArr = this.mActiveBroadcast;
            if (objArr != null) {
                for (int i3 = 0; i3 < i2; i3++) {
                    objArr[i3] = null;
                }
            }
            this.mBroadcastCount = -1;
        }
    }

    public Object getBroadcastCookie(int i2) {
        return ((Callback) this.mActiveBroadcast[i2]).mCookie;
    }

    public E getBroadcastItem(int i2) {
        return ((Callback) this.mActiveBroadcast[i2]).mCallback;
    }

    public Object getRegisteredCallbackCookie(int i2) {
        synchronized (this.mCallbacks) {
            if (this.mKilled) {
                return null;
            }
            return this.mCallbacks.valueAt(i2).mCookie;
        }
    }

    public int getRegisteredCallbackCount() {
        synchronized (this.mCallbacks) {
            if (this.mKilled) {
                return 0;
            }
            return this.mCallbacks.size();
        }
    }

    public E getRegisteredCallbackItem(int i2) {
        synchronized (this.mCallbacks) {
            if (this.mKilled) {
                return null;
            }
            return this.mCallbacks.valueAt(i2).mCallback;
        }
    }

    public void kill() {
        synchronized (this.mCallbacks) {
            for (int size = this.mCallbacks.size() - 1; size >= 0; size--) {
                RemoteCallbackList<E>.Callback callbackValueAt = this.mCallbacks.valueAt(size);
                callbackValueAt.mCallback.asBinder().unlinkToDeath(callbackValueAt, 0);
            }
            this.mCallbacks.clear();
            this.mKilled = true;
        }
    }

    public void onCallbackDied(E e2) {
    }

    public boolean register(E e2) {
        return register(e2, null);
    }

    public boolean unregister(E e2) {
        synchronized (this.mCallbacks) {
            RemoteCallbackList<E>.Callback callbackRemove = this.mCallbacks.remove(e2.asBinder());
            if (callbackRemove == null) {
                return false;
            }
            callbackRemove.mCallback.asBinder().unlinkToDeath(callbackRemove, 0);
            return true;
        }
    }

    public synchronized void updateAll(int i2, int[] iArr, float[] fArr, String[] strArr) {
        ArrayMap<IBinder, RemoteCallbackList<E>.Callback> arrayMap = this.mCallbacks;
        if (arrayMap != null && arrayMap.size() > 0) {
            for (int i3 = 0; i3 < this.mCallbacks.size(); i3++) {
                E e2 = this.mCallbacks.valueAt(i3).mCallback;
                if (e2 != null) {
                    updateOne(e2, i2, iArr, fArr, strArr);
                }
            }
        }
    }

    public void updateOne(E e2, int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public void onCallbackDied(E e2, Object obj) {
        onCallbackDied(e2);
    }

    public boolean register(E e2, Object obj) {
        synchronized (this.mCallbacks) {
            if (this.mKilled) {
                return false;
            }
            logExcessiveCallbacks();
            IBinder iBinderAsBinder = e2.asBinder();
            try {
                RemoteCallbackList<E>.Callback callback = new Callback(e2, obj);
                iBinderAsBinder.linkToDeath(callback, 0);
                this.mCallbacks.put(iBinderAsBinder, callback);
                return true;
            } catch (RemoteException unused) {
                return false;
            }
        }
    }
}
