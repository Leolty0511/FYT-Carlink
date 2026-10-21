package android.os;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import u.e;

/* JADX INFO: loaded from: classes.dex */
public class Binder implements IBinder {
    private static final boolean FIND_POTENTIAL_LEAKS = false;
    private static final String TAG = "Binder";
    private static String sDumpDisabled;
    private String mDescriptor;
    private int mObject;
    private IInterface mOwner;

    public Binder() {
        init();
    }

    public static final native long clearCallingIdentity();

    /* JADX INFO: Access modifiers changed from: private */
    protected final native void destroy();

    private boolean execTransact(int i2, int i3, int i4, int i5) {
        Parcel parcelObtain = Parcel.obtain(i3);
        Parcel parcelObtain2 = Parcel.obtain(i4);
        boolean zOnTransact = true;
        try {
            zOnTransact = onTransact(i2, parcelObtain, parcelObtain2, i5);
        } catch (RemoteException e2) {
            if ((i5 & 1) != 0) {
                Log.w(TAG, "Binder call failed.", e2);
            }
            parcelObtain2.setDataPosition(0);
            parcelObtain2.writeException(e2);
        } catch (OutOfMemoryError e3) {
            Log.e(TAG, "Caught an OutOfMemoryError from the binder stub implementation.", e3);
            RuntimeException runtimeException = new RuntimeException("Out of memory", e3);
            parcelObtain2.setDataPosition(0);
            parcelObtain2.writeException(runtimeException);
        } catch (RuntimeException e4) {
            if ((i5 & 1) != 0) {
                Log.w(TAG, "Caught a RuntimeException from the binder stub implementation.", e4);
            }
            parcelObtain2.setDataPosition(0);
            parcelObtain2.writeException(e4);
        }
        parcelObtain2.recycle();
        parcelObtain.recycle();
        return zOnTransact;
    }

    public static final native void flushPendingCommands();

    public static final native int getCallingPid();

    public static final native int getCallingUid();

    public static final UserHandle getCallingUserHandle() {
        return new UserHandle(UserHandle.getUserId(getCallingUid()));
    }

    public static final native int getThreadStrictModePolicy();

    private final native void init();

    public static final boolean isProxy(IInterface iInterface) {
        return iInterface.asBinder() != iInterface;
    }

    public static final native void joinThreadPool();

    public static final native void restoreCallingIdentity(long j2);

    public static void setDumpDisabled(String str) {
        synchronized (Binder.class) {
            sDumpDisabled = str;
        }
    }

    public static final native void setThreadStrictModePolicy(int i2);

    public void attachInterface(IInterface iInterface, String str) {
        this.mOwner = iInterface;
        this.mDescriptor = str;
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // android.os.IBinder
    public void dump(FileDescriptor fileDescriptor, String[] strArr) {
        String str;
        e eVar = new e(new FileOutputStream(fileDescriptor));
        try {
            synchronized (Binder.class) {
                str = sDumpDisabled;
            }
            if (str == null) {
                try {
                    dump(fileDescriptor, eVar, strArr);
                } catch (SecurityException e2) {
                    eVar.println("Security exception: " + e2.getMessage());
                    throw e2;
                } catch (Throwable th) {
                    eVar.println();
                    eVar.println("Exception occurred while dumping:");
                    th.printStackTrace(eVar);
                }
            } else {
                eVar.println(str);
            }
            eVar.flush();
        } catch (Throwable th2) {
            eVar.flush();
            throw th2;
        }
    }

    @Override // android.os.IBinder
    public void dumpAsync(final FileDescriptor fileDescriptor, final String[] strArr) {
        final e eVar = new e(new FileOutputStream(fileDescriptor));
        new Thread("Binder.dumpAsync") { // from class: android.os.Binder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    Binder.this.dump(fileDescriptor, eVar, strArr);
                } finally {
                    eVar.flush();
                }
            }
        }.start();
    }

    public void finalize() throws Throwable {
        try {
            destroy();
        } finally {
            super.finalize();
        }
    }

    @Override // android.os.IBinder
    public String getInterfaceDescriptor() {
        return this.mDescriptor;
    }

    @Override // android.os.IBinder
    public boolean isBinderAlive() {
        return true;
    }

    @Override // android.os.IBinder
    public void linkToDeath(IBinder.DeathRecipient deathRecipient, int i2) {
    }

    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1598968902) {
            parcel2.writeString(getInterfaceDescriptor());
            return true;
        }
        if (i2 != 1598311760) {
            return false;
        }
        ParcelFileDescriptor fileDescriptor = parcel.readFileDescriptor();
        String[] stringArray = parcel.readStringArray();
        if (fileDescriptor != null) {
            try {
                dump(fileDescriptor.getFileDescriptor(), stringArray);
                try {
                    fileDescriptor.close();
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                try {
                    fileDescriptor.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
        }
        if (parcel2 != null) {
            parcel2.writeNoException();
        } else {
            StrictMode.clearGatheredViolations();
        }
        return true;
    }

    @Override // android.os.IBinder
    public boolean pingBinder() {
        return true;
    }

    @Override // android.os.IBinder
    public IInterface queryLocalInterface(String str) {
        if (this.mDescriptor.equals(str)) {
            return this.mOwner;
        }
        return null;
    }

    @Override // android.os.IBinder
    public final boolean transact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (parcel != null) {
            parcel.setDataPosition(0);
        }
        boolean zOnTransact = onTransact(i2, parcel, parcel2, i3);
        if (parcel2 != null) {
            parcel2.setDataPosition(0);
        }
        return zOnTransact;
    }

    @Override // android.os.IBinder
    public boolean unlinkToDeath(IBinder.DeathRecipient deathRecipient, int i2) {
        return true;
    }
}
