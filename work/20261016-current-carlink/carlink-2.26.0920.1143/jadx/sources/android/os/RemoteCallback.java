package android.os;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteCallback implements Parcelable {
    public static final Parcelable.Creator<RemoteCallback> CREATOR = new Parcelable.Creator<RemoteCallback>() { // from class: android.os.RemoteCallback.3
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RemoteCallback createFromParcel(Parcel parcel) {
            return new RemoteCallback(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RemoteCallback[] newArray(int i2) {
            return new RemoteCallback[i2];
        }
    };
    private final IRemoteCallback mCallback;
    private final Handler mHandler;
    private final OnResultListener mListener;

    public interface OnResultListener {
        void onResult(Bundle bundle);
    }

    public RemoteCallback(OnResultListener onResultListener) {
        this(onResultListener, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void sendResult(final Bundle bundle) {
        OnResultListener onResultListener = this.mListener;
        if (onResultListener == null) {
            try {
                this.mCallback.sendResult(bundle);
                return;
            } catch (RemoteException unused) {
                return;
            }
        }
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: android.os.RemoteCallback.2
                @Override // java.lang.Runnable
                public void run() {
                    RemoteCallback.this.mListener.onResult(bundle);
                }
            });
        } else {
            onResultListener.onResult(bundle);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStrongBinder(this.mCallback.asBinder());
    }

    public RemoteCallback(OnResultListener onResultListener, Handler handler) {
        if (onResultListener == null) {
            throw new NullPointerException("listener cannot be null");
        }
        this.mListener = onResultListener;
        this.mHandler = handler;
        this.mCallback = new IRemoteCallback.Stub() { // from class: android.os.RemoteCallback.1
            @Override // android.os.IRemoteCallback
            public void sendResult(Bundle bundle) {
                RemoteCallback.this.sendResult(bundle);
            }
        };
    }

    public RemoteCallback(Parcel parcel) {
        this.mListener = null;
        this.mHandler = null;
        this.mCallback = IRemoteCallback.Stub.asInterface(parcel.readStrongBinder());
    }
}
