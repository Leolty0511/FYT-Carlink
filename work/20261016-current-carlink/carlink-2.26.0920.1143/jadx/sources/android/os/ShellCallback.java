package android.os;

import android.util.Log;
import com.android.internal.os.IShellCallback;

/* JADX INFO: loaded from: classes.dex */
public class ShellCallback implements Parcelable {
    public static final Parcelable.Creator<ShellCallback> CREATOR = new Parcelable.Creator<ShellCallback>() { // from class: android.os.ShellCallback.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShellCallback createFromParcel(Parcel parcel) {
            return new ShellCallback(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShellCallback[] newArray(int i2) {
            return new ShellCallback[i2];
        }
    };
    static final boolean DEBUG = false;
    static final String TAG = "ShellCallback";
    final boolean mLocal = true;
    IShellCallback mShellCallback;

    public class MyShellCallback extends IShellCallback.Stub {
        public MyShellCallback() {
        }

        @Override // com.android.internal.os.IShellCallback
        public ParcelFileDescriptor openOutputFile(String str, String str2) {
            return ShellCallback.this.onOpenOutputFile(str, str2);
        }
    }

    public ShellCallback() {
    }

    public static void writeToParcel(ShellCallback shellCallback, Parcel parcel) {
        if (shellCallback == null) {
            parcel.writeStrongBinder(null);
        } else {
            shellCallback.writeToParcel(parcel, 0);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ParcelFileDescriptor onOpenOutputFile(String str, String str2) {
        return null;
    }

    public ParcelFileDescriptor openOutputFile(String str, String str2) {
        if (this.mLocal) {
            return onOpenOutputFile(str, str2);
        }
        IShellCallback iShellCallback = this.mShellCallback;
        if (iShellCallback == null) {
            return null;
        }
        try {
            return iShellCallback.openOutputFile(str, str2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failure opening " + str, e2);
            return null;
        }
    }

    public ShellCallback(Parcel parcel) {
        this.mShellCallback = IShellCallback.Stub.asInterface(parcel.readStrongBinder());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        synchronized (this) {
            if (this.mShellCallback == null) {
                this.mShellCallback = new MyShellCallback();
            }
            parcel.writeStrongBinder(this.mShellCallback.asBinder());
        }
    }
}
