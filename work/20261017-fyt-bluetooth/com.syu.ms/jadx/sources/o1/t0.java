package o1;

import android.util.Log;
import java.io.DataInputStream;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16973a = "Xmodem";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f16974b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f16975c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f16976d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f16977e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile byte f16978f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f16979g = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public c f16980h = null;

    public interface a {
        int a(byte... bArr);
    }

    public interface b {
        void a(int i2, boolean z2);
    }

    public class c extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f16981a;

        public c(String str) {
            this.f16981a = null;
            this.f16981a = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v15 */
        /* JADX WARN: Type inference failed for: r2v16 */
        /* JADX WARN: Type inference failed for: r2v17 */
        /* JADX WARN: Type inference failed for: r2v18 */
        /* JADX WARN: Type inference failed for: r2v2 */
        /* JADX WARN: Type inference failed for: r2v4 */
        /* JADX WARN: Type inference failed for: r2v5, types: [java.io.DataInputStream] */
        /* JADX WARN: Type inference failed for: r2v7 */
        /* JADX WARN: Type inference failed for: r2v9 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0107 -> B:85:0x011e). Please report as a decompilation issue!!! */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            Log.e("Xmodem", "sendFileSync   =====>> file: " + this.f16981a);
            ?? r2 = 0;
            DataInputStream dataInputStream = null;
            try {
                try {
                    try {
                        DataInputStream dataInputStream2 = new DataInputStream(new FileInputStream(this.f16981a));
                        try {
                            int iAvailable = dataInputStream2.available();
                            int iB = t0.this.b();
                            if (iB <= 0) {
                                try {
                                    dataInputStream2.close();
                                    return;
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                    return;
                                }
                            }
                            byte[] bArr = new byte[iB];
                            boolean z2 = true;
                            byte b2 = 1;
                            int i2 = 0;
                            while (true) {
                                int i3 = dataInputStream2.read(bArr);
                                if (i3 <= 0) {
                                    break;
                                }
                                int i4 = i3 + i2;
                                int i5 = (int) ((i4 * 100.0f) / iAvailable);
                                b bVar = t0.this.f16976d;
                                if (bVar != null) {
                                    bVar.a(i5, false);
                                }
                                int i6 = 0;
                                while (i6 < 10) {
                                    t0.this.h(t0.this.d(bArr, b2));
                                    t0.this.f16977e = z2;
                                    synchronized (t0.this.f16979g) {
                                        try {
                                            t0.this.f16979g.wait();
                                        } catch (Exception e3) {
                                            Log.e("Xmodem", "0101 ----" + e3.getMessage());
                                        }
                                    }
                                    if (t0.this.f16978f == 6) {
                                        t0.this.f16978f = (byte) 0;
                                        break;
                                    } else {
                                        i6++;
                                        z2 = true;
                                    }
                                }
                                if (i6 >= 10) {
                                    b bVar2 = t0.this.f16976d;
                                    if (bVar2 == null) {
                                        break;
                                    }
                                    bVar2.a(i5, true);
                                    break;
                                }
                                b2 = (byte) (b2 + 1);
                                i2 = i4;
                                z2 = true;
                            }
                            while (t0.this.f16978f != 6) {
                                t0.this.h(4);
                                t0.this.f16977e = true;
                                synchronized (t0.this.f16979g) {
                                    try {
                                        t0.this.f16979g.wait();
                                    } catch (Exception unused) {
                                    }
                                }
                                if (t0.this.f16978f == 6) {
                                    break;
                                }
                            }
                            t0.this.f16978f = (byte) 0;
                            b bVar3 = t0.this.f16976d;
                            if (bVar3 != null) {
                                bVar3.a(100, false);
                            }
                            String str = "sendFileSync Flished!!";
                            Log.e("Xmodem", "sendFileSync Flished!!");
                            dataInputStream2.close();
                            r2 = str;
                        } catch (Exception e4) {
                            e = e4;
                            dataInputStream = dataInputStream2;
                            e.printStackTrace();
                            r2 = dataInputStream;
                            if (dataInputStream != null) {
                                dataInputStream.close();
                                r2 = dataInputStream;
                            }
                        } catch (Throwable th) {
                            th = th;
                            r2 = dataInputStream2;
                            Throwable th2 = th;
                            if (r2 == 0) {
                                throw th2;
                            }
                            try {
                                r2.close();
                                throw th2;
                            } catch (Exception e5) {
                                e5.printStackTrace();
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Exception e6) {
                    e = e6;
                }
            } catch (Exception e7) {
                Exception exc = e7;
                exc.printStackTrace();
                r2 = exc;
            }
        }
    }

    public byte a(byte[] bArr) {
        byte b2 = 0;
        for (byte b3 : bArr) {
            b2 = (byte) (b2 + b3);
        }
        Log.e("Xmodem", "checksum ------------->>  " + String.format("%02X", Byte.valueOf(b2)));
        return b2;
    }

    public int b() {
        int i2 = this.f16974b;
        if (i2 == 0 || i2 == 1) {
            return 128;
        }
        return (i2 == 2 || i2 == 3) ? 1024 : -1;
    }

    public void c(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        for (byte b2 : bArr) {
            this.f16978f = b2;
            if (this.f16977e && (this.f16978f == 21 || this.f16978f == 6 || this.f16978f == 24)) {
                this.f16977e = false;
                synchronized (this.f16979g) {
                    try {
                        this.f16979g.notify();
                    } catch (Exception e2) {
                        Log.e("Xmodem", " e: " + e2.getMessage());
                    }
                }
            }
        }
    }

    public byte[] d(byte[] bArr, byte b2) {
        int iB = b() + 4;
        byte[] bArr2 = new byte[iB];
        bArr2[0] = 1;
        bArr2[1] = b2;
        bArr2[2] = (byte) ((~b2) & 255);
        System.arraycopy(bArr, 0, bArr2, 3, bArr.length);
        bArr2[iB - 1] = a(bArr);
        return bArr2;
    }

    public void e(String str) {
        c cVar = new c(str);
        this.f16980h = cVar;
        cVar.start();
    }

    public void f(b bVar) {
        this.f16976d = bVar;
    }

    public void g(a aVar) {
        this.f16975c = aVar;
    }

    public int h(byte... bArr) {
        a aVar = this.f16975c;
        if (aVar != null) {
            return aVar.a(bArr);
        }
        return -1;
    }
}
