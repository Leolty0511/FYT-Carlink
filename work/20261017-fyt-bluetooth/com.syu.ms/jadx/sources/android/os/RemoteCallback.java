package android.os;

/* JADX INFO: loaded from: classes.dex */
public abstract class RemoteCallback implements Parcelable {
    public static final Parcelable.Creator<RemoteCallback> CREATOR = new Parcelable.Creator<RemoteCallback>() { // from class: android.os.RemoteCallback.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RemoteCallback createFromParcel(Parcel parcel) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                return new RemoteCallbackProxy(IRemoteCallback.Stub.asInterface(strongBinder));
            }
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RemoteCallback[] newArray(int i2) {
            return new RemoteCallback[i2];
        }
    };
    public final Handler mHandler;
    public final IRemoteCallback mTarget;

    public class DeliverResult implements Runnable {
        public final Bundle mResult;

        public DeliverResult(Bundle bundle) {
            this.mResult = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            RemoteCallback.this.onResult(this.mResult);
        }
    }

    public class LocalCallback extends IRemoteCallback.Stub {
        public LocalCallback() {
        }

        @Override // android.os.IRemoteCallback
        public void sendResult(Bundle bundle) {
            RemoteCallback remoteCallback = RemoteCallback.this;
            remoteCallback.mHandler.post(remoteCallback.new DeliverResult(bundle));
        }
    }

    public static class RemoteCallbackProxy extends RemoteCallback {
        public RemoteCallbackProxy(IRemoteCallback iRemoteCallback) {
            super(iRemoteCallback);
        }

        @Override // android.os.RemoteCallback
        public void onResult(Bundle bundle) {
        }
    }

    public RemoteCallback(Handler handler) {
        this.mHandler = handler;
        this.mTarget = new LocalCallback();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return this.mTarget.asBinder().equals(((RemoteCallback) obj).mTarget.asBinder());
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int hashCode() {
        return this.mTarget.asBinder().hashCode();
    }

    public abstract void onResult(Bundle bundle);

    public void sendResult(Bundle bundle) {
        this.mTarget.sendResult(bundle);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStrongBinder(this.mTarget.asBinder());
    }

    public RemoteCallback(IRemoteCallback iRemoteCallback) {
        this.mHandler = null;
        this.mTarget = iRemoteCallback;
    }
}
