package o;

import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.util.TimedRemoteCaller;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Thread f16720a = new Thread(this, "TransferPipe");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParcelFileDescriptor[] f16721b = ParcelFileDescriptor.createPipe();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FileDescriptor f16722c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f16723d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f16724e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f16725f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f16726g;

    public void a(int i2) {
        ParcelFileDescriptor[] parcelFileDescriptorArr = this.f16721b;
        if (parcelFileDescriptorArr[i2] != null) {
            try {
                parcelFileDescriptorArr[i2].close();
            } catch (IOException unused) {
            }
            this.f16721b[i2] = null;
        }
    }

    public ParcelFileDescriptor b() {
        return this.f16721b[0];
    }

    public ParcelFileDescriptor c() {
        return this.f16721b[1];
    }

    public void d(FileDescriptor fileDescriptor) {
        e(fileDescriptor, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
    }

    public void e(FileDescriptor fileDescriptor, long j2) {
        String str;
        try {
            synchronized (this) {
                this.f16722c = fileDescriptor;
                this.f16723d = SystemClock.uptimeMillis() + j2;
                a(1);
                this.f16720a.start();
                while (true) {
                    str = this.f16724e;
                    if (str != null || this.f16725f) {
                        break;
                    }
                    long jUptimeMillis = this.f16723d - SystemClock.uptimeMillis();
                    if (jUptimeMillis <= 0) {
                        this.f16720a.interrupt();
                        throw new IOException("Timeout");
                    }
                    try {
                        wait(jUptimeMillis);
                    } catch (InterruptedException unused) {
                    }
                }
                if (str != null) {
                    throw new IOException(this.f16724e);
                }
            }
            f();
        } catch (Throwable th) {
            f();
            throw th;
        }
    }

    public void f() {
        a(0);
        a(1);
    }

    public void g(String str) {
        this.f16726g = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        byte[] bArr = new byte[1024];
        FileInputStream fileInputStream = new FileInputStream(b().getFileDescriptor());
        FileOutputStream fileOutputStream = new FileOutputStream(this.f16722c);
        String str = this.f16726g;
        byte[] bytes = str != null ? str.getBytes() : null;
        boolean z2 = true;
        while (true) {
            try {
                int i2 = fileInputStream.read(bArr);
                if (i2 <= 0) {
                    this.f16720a.isInterrupted();
                    synchronized (this) {
                        this.f16725f = true;
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
                    this.f16724e = e2.toString();
                    notifyAll();
                    return;
                }
            }
        }
    }
}
