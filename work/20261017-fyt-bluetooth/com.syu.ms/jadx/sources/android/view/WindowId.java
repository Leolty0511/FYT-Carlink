package android.view;

import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class WindowId implements Parcelable {
    public static final Parcelable.Creator<WindowId> CREATOR = new Parcelable.Creator<WindowId>() { // from class: android.view.WindowId.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WindowId createFromParcel(Parcel parcel) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                return new WindowId(strongBinder);
            }
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WindowId[] newArray(int i2) {
            return new WindowId[i2];
        }
    };
    private final IWindowId mToken;

    public static abstract class FocusObserver {
        public final IWindowFocusObserver.Stub mIObserver = new IWindowFocusObserver.Stub() { // from class: android.view.WindowId.FocusObserver.1
            @Override // android.view.IWindowFocusObserver
            public void focusGained(IBinder iBinder) {
                WindowId windowId;
                synchronized (FocusObserver.this.mRegistrations) {
                    windowId = FocusObserver.this.mRegistrations.get(iBinder);
                }
                FocusObserver focusObserver = FocusObserver.this;
                Handler handler = focusObserver.mHandler;
                if (handler != null) {
                    handler.sendMessage(handler.obtainMessage(1, windowId));
                } else {
                    focusObserver.onFocusGained(windowId);
                }
            }

            @Override // android.view.IWindowFocusObserver
            public void focusLost(IBinder iBinder) {
                WindowId windowId;
                synchronized (FocusObserver.this.mRegistrations) {
                    windowId = FocusObserver.this.mRegistrations.get(iBinder);
                }
                FocusObserver focusObserver = FocusObserver.this;
                Handler handler = focusObserver.mHandler;
                if (handler != null) {
                    handler.sendMessage(handler.obtainMessage(2, windowId));
                } else {
                    focusObserver.onFocusLost(windowId);
                }
            }
        };
        public final HashMap<IBinder, WindowId> mRegistrations = new HashMap<>();
        public final Handler mHandler = new H();

        public class H extends Handler {
            public H() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 1) {
                    FocusObserver.this.onFocusGained((WindowId) message.obj);
                } else if (i2 != 2) {
                    super.handleMessage(message);
                } else {
                    FocusObserver.this.onFocusLost((WindowId) message.obj);
                }
            }
        }

        public abstract void onFocusGained(WindowId windowId);

        public abstract void onFocusLost(WindowId windowId);
    }

    public WindowId(IWindowId iWindowId) {
        this.mToken = iWindowId;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof WindowId) {
            return this.mToken.asBinder().equals(((WindowId) obj).mToken.asBinder());
        }
        return false;
    }

    public IWindowId getTarget() {
        return this.mToken;
    }

    public int hashCode() {
        return this.mToken.asBinder().hashCode();
    }

    public boolean isFocused() {
        try {
            return this.mToken.isFocused();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void registerFocusObserver(FocusObserver focusObserver) {
        synchronized (focusObserver.mRegistrations) {
            if (focusObserver.mRegistrations.containsKey(this.mToken.asBinder())) {
                throw new IllegalStateException("Focus observer already registered with input token");
            }
            focusObserver.mRegistrations.put(this.mToken.asBinder(), this);
            try {
                this.mToken.registerFocusObserver(focusObserver.mIObserver);
            } catch (RemoteException unused) {
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("IntentSender{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(": ");
        IWindowId iWindowId = this.mToken;
        sb.append(iWindowId != null ? iWindowId.asBinder() : null);
        sb.append('}');
        return sb.toString();
    }

    public void unregisterFocusObserver(FocusObserver focusObserver) {
        synchronized (focusObserver.mRegistrations) {
            if (focusObserver.mRegistrations.remove(this.mToken.asBinder()) == null) {
                throw new IllegalStateException("Focus observer not registered with input token");
            }
            try {
                this.mToken.unregisterFocusObserver(focusObserver.mIObserver);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStrongBinder(this.mToken.asBinder());
    }

    public WindowId(IBinder iBinder) {
        this.mToken = IWindowId.Stub.asInterface(iBinder);
    }
}
