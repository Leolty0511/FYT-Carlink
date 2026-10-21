package android.os;

import android.os.IInterface;
import android.util.ArrayMap;

/* JADX INFO: loaded from: classes.dex */
public class RemoteCallbackList<E extends IInterface> {
    private Object[] mActiveBroadcast;
    public ArrayMap<IBinder, RemoteCallbackList<E>.Callback> mCallbacks = new ArrayMap<>();
    private int mBroadcastCount = -1;
    private boolean mKilled = false;

    public final class Callback implements IBinder.DeathRecipient {
        public final E mCallback;
        public final Object mCookie;

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

    public void finishBroadcast() {
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

    public Object getBroadcastCookie(int i2) {
        return ((Callback) this.mActiveBroadcast[i2]).mCookie;
    }

    public E getBroadcastItem(int i2) {
        return ((Callback) this.mActiveBroadcast[i2]).mCallback;
    }

    public int getRegisteredCallbackCount() {
        synchronized (this.mCallbacks) {
            if (this.mKilled) {
                return 0;
            }
            return this.mCallbacks.size();
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

    public void onCallbackDied(E e2, Object obj) {
        onCallbackDied(e2);
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

    public boolean register(E e2, Object obj) {
        synchronized (this.mCallbacks) {
            if (this.mKilled) {
                return false;
            }
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
