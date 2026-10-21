package android.os;

import android.util.Log;
import java.io.FileDescriptor;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class BinderProxy implements IBinder {
    private long mObject;
    private long mOrgue;
    volatile boolean mWarnOnBlocking = Binder.sWarnOnBlocking;
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
    public void shellCommand(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ShellCallback shellCallback, ResultReceiver resultReceiver) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeFileDescriptor(fileDescriptor);
        parcelObtain.writeFileDescriptor(fileDescriptor2);
        parcelObtain.writeFileDescriptor(fileDescriptor3);
        parcelObtain.writeStringArray(strArr);
        ShellCallback.writeToParcel(shellCallback, parcelObtain);
        resultReceiver.writeToParcel(parcelObtain, 0);
        try {
            transact(IBinder.SHELL_COMMAND_TRANSACTION, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    @Override // android.os.IBinder
    public boolean transact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        Binder.checkParcel(this, i2, parcel, "Unreasonably large binder buffer");
        if (this.mWarnOnBlocking && (i3 & 1) == 0) {
            this.mWarnOnBlocking = false;
            Log.w("Binder", "Outgoing transactions from this process must be FLAG_ONEWAY", new Throwable());
        }
        boolean zIsTracingEnabled = Binder.isTracingEnabled();
        if (zIsTracingEnabled) {
            Throwable th = new Throwable();
            Binder.getTransactionTracker().addTrace(th);
            StackTraceElement stackTraceElement = th.getStackTrace()[1];
            Trace.traceBegin(1L, stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName());
        }
        try {
            return transactNative(i2, parcel, parcel2, i3);
        } finally {
            if (zIsTracingEnabled) {
                Trace.traceEnd(1L);
            }
        }
    }

    public native boolean transactNative(int i2, Parcel parcel, Parcel parcel2, int i3);

    @Override // android.os.IBinder
    public native boolean unlinkToDeath(IBinder.DeathRecipient deathRecipient, int i2);
}
