package android.os;

import android.util.Log;
import java.io.FileDescriptor;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class BinderProxy implements IBinder {
    private int mObject;
    private int mOrgue;
    private final WeakReference mSelf = new WeakReference(this);

    private final native void destroy();

    private static final void sendDeathNotice(IBinder.DeathRecipient deathRecipient) {
        try {
            deathRecipient.binderDied();
        } catch (RuntimeException e2) {
            Log.w("BinderNative", "Uncaught exception from death notification", e2);
        }
    }

    @Override // android.os.IBinder
    public void dump(FileDescriptor fileDescriptor, String[] strArr) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeFileDescriptor(fileDescriptor);
        parcelObtain.writeStringArray(strArr);
        try {
            transact(IBinder.DUMP_TRANSACTION, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    @Override // android.os.IBinder
    public void dumpAsync(FileDescriptor fileDescriptor, String[] strArr) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeFileDescriptor(fileDescriptor);
        parcelObtain.writeStringArray(strArr);
        try {
            transact(IBinder.DUMP_TRANSACTION, parcelObtain, parcelObtain2, 1);
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    public void finalize() throws Throwable {
        try {
            destroy();
        } finally {
            super.finalize();
        }
    }

    @Override // android.os.IBinder
    public native String getInterfaceDescriptor();

    @Override // android.os.IBinder
    public native boolean isBinderAlive();

    @Override // android.os.IBinder
    public native void linkToDeath(IBinder.DeathRecipient deathRecipient, int i2);

    @Override // android.os.IBinder
    public native boolean pingBinder();

    @Override // android.os.IBinder
    public IInterface queryLocalInterface(String str) {
        return null;
    }

    @Override // android.os.IBinder
    public native boolean transact(int i2, Parcel parcel, Parcel parcel2, int i3);

    @Override // android.os.IBinder
    public native boolean unlinkToDeath(IBinder.DeathRecipient deathRecipient, int i2);
}
