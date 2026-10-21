package android.os;

import android.content.Context;
import android.provider.SettingsStringUtil;
import android.util.ExceptionUtils;
import android.util.Log;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.FunctionalUtils;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class Binder implements IBinder {
    public static final boolean CHECK_PARCEL_SIZE = false;
    private static final boolean FIND_POTENTIAL_LEAKS = false;
    public static boolean LOG_RUNTIME_EXCEPTION = false;
    static final String TAG = "Binder";
    private static IBinder gSecurityService = null;
    private static volatile String sDumpDisabled = null;
    private static volatile boolean sTracingEnabled = false;
    private static volatile TransactionTracker sTransactionTracker = null;
    static volatile boolean sWarnOnBlocking = false;
    private String mDescriptor;
    private long mObject;
    private IInterface mOwner;

    public Binder() {
        init();
    }

    public static IBinder allowBlocking(IBinder iBinder) {
        try {
            if (iBinder instanceof BinderProxy) {
                ((BinderProxy) iBinder).mWarnOnBlocking = false;
            } else if (iBinder != null && iBinder.queryLocalInterface(iBinder.getInterfaceDescriptor()) == null) {
                Log.w(TAG, "Unable to allow blocking on interface " + iBinder);
            }
        } catch (RemoteException unused) {
        }
        return iBinder;
    }

    public static final native void blockUntilThreadAvailable();

    public static void checkParcel(IBinder iBinder, int i2, Parcel parcel, String str) {
    }

    public static final native long clearCallingIdentity();

    public static void copyAllowBlocking(IBinder iBinder, IBinder iBinder2) {
        if ((iBinder instanceof BinderProxy) && (iBinder2 instanceof BinderProxy)) {
            ((BinderProxy) iBinder2).mWarnOnBlocking = ((BinderProxy) iBinder).mWarnOnBlocking;
        }
    }

    private final native void destroyBinder();

    public static void disableTracing() {
        sTracingEnabled = false;
    }

    public static int dojudge(int i2, String str, int i3, int i4, String str2) {
        if (gSecurityService == null) {
            gSecurityService = ServiceManager.getService(Context.SECURITY_SERVICE);
        }
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeInterfaceToken("android.os.ISecurityService");
        parcelObtain.writeInt(i2);
        parcelObtain.writeString(str);
        parcelObtain.writeInt(i3);
        parcelObtain.writeInt(i4);
        parcelObtain.writeString(str2);
        try {
            gSecurityService.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readExceptionCode();
        } catch (RemoteException unused) {
        }
        return parcelObtain2.readInt();
    }

    public static void enableTracing() {
        sTracingEnabled = true;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0035  */
    private boolean execTransact(int i2, long j2, long j3, int i3) {
        boolean zOnTransact;
        Parcel parcelObtain = Parcel.obtain(j2);
        Parcel parcelObtain2 = Parcel.obtain(j3);
        boolean zIsTracingEnabled = isTracingEnabled();
        try {
            if (zIsTracingEnabled) {
                try {
                    Trace.traceBegin(1L, getClass().getName() + SettingsStringUtil.DELIMITER + i2);
                    zOnTransact = onTransact(i2, parcelObtain, parcelObtain2, i3);
                    if (zIsTracingEnabled) {
                        Trace.traceEnd(1L);
                    }
                } catch (RemoteException | RuntimeException e2) {
                    if (LOG_RUNTIME_EXCEPTION) {
                        Log.w(TAG, "Caught a RuntimeException from the binder stub implementation.", e2);
                    }
                    if ((i3 & 1) == 0) {
                        parcelObtain2.setDataPosition(0);
                        parcelObtain2.writeException(e2);
                    } else if (e2 instanceof RemoteException) {
                        Log.w(TAG, "Binder call failed.", e2);
                    } else {
                        Log.w(TAG, "Caught a RuntimeException from the binder stub implementation.", e2);
                    }
                    if (zIsTracingEnabled) {
                        Trace.traceEnd(1L);
                    }
                    zOnTransact = true;
                }
            } else {
                zOnTransact = onTransact(i2, parcelObtain, parcelObtain2, i3);
                if (zIsTracingEnabled) {
                    Trace.traceEnd(1L);
                }
            }
            checkParcel(this, i2, parcelObtain2, "Unreasonably large binder reply buffer");
            parcelObtain2.recycle();
            parcelObtain.recycle();
            StrictMode.clearGatheredViolations();
            return zOnTransact;
        } catch (Throwable th) {
            if (zIsTracingEnabled) {
                Trace.traceEnd(1L);
            }
            throw th;
        }
    }

    public static final native void flushPendingCommands();

    public static final native int getCallingPid();

    public static final native int getCallingUid();

    public static final UserHandle getCallingUserHandle() {
        return UserHandle.of(UserHandle.getUserId(getCallingUid()));
    }

    public static final native int getThreadStrictModePolicy();

    public static synchronized TransactionTracker getTransactionTracker() {
        if (sTransactionTracker == null) {
            sTransactionTracker = new TransactionTracker();
        }
        return sTransactionTracker;
    }

    private final native void init();

    public static final boolean isProxy(IInterface iInterface) {
        return iInterface.asBinder() != iInterface;
    }

    public static boolean isTracingEnabled() {
        return sTracingEnabled;
    }

    public static final native void joinThreadPool();

    public static final native void restoreCallingIdentity(long j2);

    public static void setDumpDisabled(String str) {
        sDumpDisabled = str;
    }

    public static final native void setThreadStrictModePolicy(int i2);

    public static void setWarnOnBlocking(boolean z2) {
        sWarnOnBlocking = z2;
    }

    public static final void withCleanCallingIdentity(FunctionalUtils.ThrowingRunnable throwingRunnable) {
        long jClearCallingIdentity = clearCallingIdentity();
        try {
            throwingRunnable.run();
            restoreCallingIdentity(jClearCallingIdentity);
        } catch (Throwable th) {
            restoreCallingIdentity(jClearCallingIdentity);
            throw ExceptionUtils.propagate(th);
        }
    }

    public void attachInterface(IInterface iInterface, String str) {
        this.mOwner = iInterface;
        this.mDescriptor = str;
    }

    public void doDump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (sDumpDisabled != null) {
            printWriter.println(sDumpDisabled);
            return;
        }
        try {
            dump(fileDescriptor, printWriter, strArr);
        } catch (SecurityException e2) {
            printWriter.println("Security exception: " + e2.getMessage());
            throw e2;
        } catch (Throwable th) {
            printWriter.println();
            printWriter.println("Exception occurred while dumping:");
            th.printStackTrace(printWriter);
        }
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // android.os.IBinder
    public void dumpAsync(final FileDescriptor fileDescriptor, final String[] strArr) {
        final FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(fileDescriptor));
        new Thread("Binder.dumpAsync") { // from class: android.os.Binder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    Binder.this.dump(fileDescriptor, fastPrintWriter, strArr);
                } finally {
                    fastPrintWriter.flush();
                }
            }
        }.start();
    }

    public void finalize() throws Throwable {
        try {
            destroyBinder();
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

    public void onShellCommand(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ShellCallback shellCallback, ResultReceiver resultReceiver) {
        if (fileDescriptor3 != null) {
            fileDescriptor2 = fileDescriptor3;
        }
        FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(fileDescriptor2));
        fastPrintWriter.println("No shell command implementation.");
        fastPrintWriter.flush();
        resultReceiver.send(0, null);
    }

    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        FileDescriptor fileDescriptor;
        if (i2 == 1598968902) {
            parcel2.writeString(getInterfaceDescriptor());
            return true;
        }
        if (i2 == 1598311760) {
            ParcelFileDescriptor fileDescriptor2 = parcel.readFileDescriptor();
            String[] stringArray = parcel.readStringArray();
            if (fileDescriptor2 != null) {
                try {
                    dump(fileDescriptor2.getFileDescriptor(), stringArray);
                    IoUtils.closeQuietly(fileDescriptor2);
                } catch (Throwable th) {
                    IoUtils.closeQuietly(fileDescriptor2);
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
        if (i2 != 1598246212) {
            return false;
        }
        ParcelFileDescriptor fileDescriptor3 = parcel.readFileDescriptor();
        ParcelFileDescriptor fileDescriptor4 = parcel.readFileDescriptor();
        ParcelFileDescriptor fileDescriptor5 = parcel.readFileDescriptor();
        String[] stringArray2 = parcel.readStringArray();
        ShellCallback shellCallbackCreateFromParcel = ShellCallback.CREATOR.createFromParcel(parcel);
        ResultReceiver resultReceiverCreateFromParcel = ResultReceiver.CREATOR.createFromParcel(parcel);
        if (fileDescriptor4 != null) {
            if (fileDescriptor3 != null) {
                try {
                    fileDescriptor = fileDescriptor3.getFileDescriptor();
                } finally {
                    IoUtils.closeQuietly(fileDescriptor3);
                    IoUtils.closeQuietly(fileDescriptor4);
                    IoUtils.closeQuietly(fileDescriptor5);
                    if (parcel2 != null) {
                        parcel2.writeNoException();
                    } else {
                        StrictMode.clearGatheredViolations();
                    }
                }
            } else {
                fileDescriptor = null;
            }
            shellCommand(fileDescriptor, fileDescriptor4.getFileDescriptor(), fileDescriptor5 != null ? fileDescriptor5.getFileDescriptor() : fileDescriptor4.getFileDescriptor(), stringArray2, shellCallbackCreateFromParcel, resultReceiverCreateFromParcel);
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
    public void shellCommand(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ShellCallback shellCallback, ResultReceiver resultReceiver) {
        onShellCommand(fileDescriptor, fileDescriptor2, fileDescriptor3, strArr, shellCallback, resultReceiver);
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

    @Override // android.os.IBinder
    public void dump(FileDescriptor fileDescriptor, String[] strArr) {
        FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(fileDescriptor));
        try {
            doDump(fileDescriptor, fastPrintWriter, strArr);
        } finally {
            fastPrintWriter.flush();
        }
    }

    public static final <T> T withCleanCallingIdentity(FunctionalUtils.ThrowingSupplier<T> throwingSupplier) {
        long jClearCallingIdentity = clearCallingIdentity();
        try {
            T t2 = throwingSupplier.get();
            restoreCallingIdentity(jClearCallingIdentity);
            return t2;
        } catch (Throwable th) {
            restoreCallingIdentity(jClearCallingIdentity);
            throw ExceptionUtils.propagate(th);
        }
    }
}
