package com.android.internal.os;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Slog;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class TransferPipe implements Runnable, Closeable {
    static final boolean DEBUG = false;
    static final long DEFAULT_TIMEOUT = 5000;
    static final String TAG = "TransferPipe";
    String mBufferPrefix;
    boolean mComplete;
    long mEndTime;
    String mFailure;
    final ParcelFileDescriptor[] mFds;
    FileDescriptor mOutFd;
    final Thread mThread;

    public interface Caller {
        void go(IInterface iInterface, FileDescriptor fileDescriptor, String str, String[] strArr);
    }

    public TransferPipe() {
        this(null);
    }

    public static void dumpAsync(IBinder iBinder, FileDescriptor fileDescriptor, String[] strArr) {
        goDump(iBinder, fileDescriptor, strArr);
    }

    public static void go(Caller caller, IInterface iInterface, FileDescriptor fileDescriptor, String str, String[] strArr) {
        go(caller, iInterface, fileDescriptor, str, strArr, 5000L);
    }

    public static void goDump(IBinder iBinder, FileDescriptor fileDescriptor, String[] strArr) {
        goDump(iBinder, fileDescriptor, strArr, 5000L);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        kill();
    }

    public void closeFd(int i2) {
        ParcelFileDescriptor parcelFileDescriptor = this.mFds[i2];
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException unused) {
            }
            this.mFds[i2] = null;
        }
    }

    public ParcelFileDescriptor getReadFd() {
        return this.mFds[0];
    }

    public ParcelFileDescriptor getWriteFd() {
        return this.mFds[1];
    }

    public void kill() {
        synchronized (this) {
            closeFd(0);
            closeFd(1);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        byte[] bArr = new byte[1024];
        synchronized (this) {
            ParcelFileDescriptor readFd = getReadFd();
            if (readFd == null) {
                Slog.w(TAG, "Pipe has been closed...");
                return;
            }
            FileInputStream fileInputStream = new FileInputStream(readFd.getFileDescriptor());
            FileOutputStream fileOutputStream = new FileOutputStream(this.mOutFd);
            String str = this.mBufferPrefix;
            byte[] bytes = str != null ? str.getBytes() : null;
            boolean z2 = true;
            while (true) {
                try {
                    int i2 = fileInputStream.read(bArr);
                    if (i2 <= 0) {
                        this.mThread.isInterrupted();
                        synchronized (this) {
                            this.mComplete = true;
                            notifyAll();
                        }
                        return;
                    }
                    if (bytes == null) {
                        fileOutputStream.write(bArr, 0, i2);
                    } else {
                        int i3 = 0;
                        int i4 = 0;
                        while (i3 < i2) {
                            if (bArr[i3] != 10) {
                                if (i3 > i4) {
                                    fileOutputStream.write(bArr, i4, i3 - i4);
                                }
                                if (z2) {
                                    fileOutputStream.write(bytes);
                                    z2 = false;
                                }
                                int i5 = i3;
                                do {
                                    i5++;
                                    if (i5 >= i2) {
                                        break;
                                    }
                                } while (bArr[i5] != 10);
                                if (i5 < i2) {
                                    z2 = true;
                                }
                                i4 = i3;
                                i3 = i5;
                            }
                            i3++;
                        }
                        if (i2 > i4) {
                            fileOutputStream.write(bArr, i4, i2 - i4);
                        }
                    }
                } catch (IOException e2) {
                    synchronized (this) {
                        this.mFailure = e2.toString();
                        notifyAll();
                        return;
                    }
                }
            }
        }
    }

    public void setBufferPrefix(String str) {
        this.mBufferPrefix = str;
    }

    public TransferPipe(String str) {
        this.mThread = new Thread(this, TAG);
        this.mFds = ParcelFileDescriptor.createPipe();
        this.mBufferPrefix = str;
    }

    public static void go(Caller caller, IInterface iInterface, FileDescriptor fileDescriptor, String str, String[] strArr, long j2) {
        if (iInterface.asBinder() instanceof Binder) {
            try {
                caller.go(iInterface, fileDescriptor, str, strArr);
                return;
            } catch (RemoteException unused) {
                return;
            }
        }
        TransferPipe transferPipe = new TransferPipe();
        try {
            caller.go(iInterface, transferPipe.getWriteFd().getFileDescriptor(), str, strArr);
            transferPipe.go(fileDescriptor, j2);
            transferPipe.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    transferPipe.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static void goDump(IBinder iBinder, FileDescriptor fileDescriptor, String[] strArr, long j2) {
        if (iBinder instanceof Binder) {
            try {
                iBinder.dump(fileDescriptor, strArr);
                return;
            } catch (RemoteException unused) {
                return;
            }
        }
        TransferPipe transferPipe = new TransferPipe();
        try {
            iBinder.dumpAsync(transferPipe.getWriteFd().getFileDescriptor(), strArr);
            transferPipe.go(fileDescriptor, j2);
            transferPipe.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    transferPipe.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public void go(FileDescriptor fileDescriptor) {
        go(fileDescriptor, 5000L);
    }

    public void go(FileDescriptor fileDescriptor, long j2) {
        String str;
        try {
            synchronized (this) {
                this.mOutFd = fileDescriptor;
                this.mEndTime = SystemClock.uptimeMillis() + j2;
                closeFd(1);
                this.mThread.start();
                while (true) {
                    str = this.mFailure;
                    if (str != null || this.mComplete) {
                        break;
                    }
                    long jUptimeMillis = this.mEndTime - SystemClock.uptimeMillis();
                    if (jUptimeMillis > 0) {
                        try {
                            wait(jUptimeMillis);
                        } catch (InterruptedException unused) {
                        }
                    } else {
                        this.mThread.interrupt();
                        throw new IOException("Timeout");
                    }
                }
                if (str != null) {
                    throw new IOException(this.mFailure);
                }
            }
            kill();
        } catch (Throwable th) {
            kill();
            throw th;
        }
    }
}
