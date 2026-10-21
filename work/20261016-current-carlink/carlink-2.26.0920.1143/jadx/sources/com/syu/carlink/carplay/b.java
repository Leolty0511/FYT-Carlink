package com.syu.carlink.carplay;

import android.net.LocalSocket;
import android.provider.Downloads;
import android.util.SparseArray;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import h.i;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class b extends Thread {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LocalSocket f688b;
    public final int c = 1048576;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f689d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FileOutputStream f690e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FileOutputStream f691f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final s.a f692g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ i f693h;

    public b(i iVar, LocalSocket localSocket) {
        this.f693h = iVar;
        this.f688b = localSocket;
        iVar.a();
        File file = new File("/sdcard/cprecord");
        FileOutputStream fileOutputStream = null;
        this.f691f = (file.exists() && file.isDirectory()) ? new FileOutputStream("/sdcard/cprecord/receiver.h264") : null;
        if (file.exists() && file.isDirectory()) {
            fileOutputStream = new FileOutputStream("/sdcard/cprecord/handled.h264");
        }
        this.f690e = fileOutputStream;
        this.f692g = kotlin.a.c(new z.a() { // from class: com.syu.carlink.carplay.Receiver$Tableware$videoFrame$2
            @Override // z.a
            public final c invoke() {
                return new c();
            }
        });
    }

    public final void a() {
        LocalSocket localSocket = this.f688b;
        n.b.a("HDL", "Tableware joinStop  ------- 0");
        this.f689d = false;
        try {
            localSocket.getInputStream().close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            localSocket.close();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        try {
            interrupt();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        n.b.a("HDL", "Tableware joinStop  ------- 6");
    }

    /* JADX WARN: Code duplicated, block: B:114:0x01d9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x020b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:0x020b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:127:0x020b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x0197  */
    /* JADX WARN: Code duplicated, block: B:76:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:79:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:83:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:85:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:87:0x0209  */
    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws IOException {
        BufferedInputStream bufferedInputStream;
        int i2;
        h.c cVar;
        c cVar2;
        byte[] bArrCopyOf;
        i iVar;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        try {
            bufferedInputStream = new BufferedInputStream(this.f688b.getInputStream());
        } catch (Exception unused) {
            n.b.a("HDL", "Tableware: " + getName() + "  ------- run() ios ERROR!!");
            bufferedInputStream = null;
        }
        if (bufferedInputStream == null) {
            return;
        }
        n.b.a("HDL", "Tableware: " + getName() + "  ------- run() isRunning: " + this.f689d + "  isInterrupted: " + isInterrupted());
        while (this.f689d && !isInterrupted()) {
            byte[] bArr = new byte[this.c];
            try {
                i2 = bufferedInputStream.read(bArr);
            } catch (Exception unused2) {
                i2 = -1;
            }
            n.b.a("Data", "Tableware: " + getName() + "  ------- read data len: " + i2);
            if (i2 >= 0) {
                byte[] bArrJ = t.c.J(bArr, i2);
                if (!isInterrupted() && this.f689d) {
                    FileOutputStream fileOutputStream3 = this.f691f;
                    if (fileOutputStream3 != null) {
                        fileOutputStream3.write(bArrJ);
                    }
                    FileOutputStream fileOutputStream4 = this.f691f;
                    if (fileOutputStream4 != null) {
                        fileOutputStream4.flush();
                    }
                    for (byte b2 : bArrJ) {
                        c cVar3 = (c) this.f692g.getValue();
                        boolean z2 = true;
                        if (cVar3.f698f) {
                            byte[] bArr2 = (byte[]) cVar3.f695b.getValue();
                            int i3 = cVar3.f696d;
                            int i4 = i3 + 1;
                            cVar3.f696d = i4;
                            bArr2[i3] = b2;
                            int i5 = cVar3.c;
                            if (i5 <= 0 || i4 != i5) {
                            }
                            if (z2) {
                                c cVar4 = (c) this.f692g.getValue();
                                bArrCopyOf = Arrays.copyOf((byte[]) cVar4.f695b.getValue(), cVar4.c);
                                t.b.g(bArrCopyOf, "copyOf(this, newSize)");
                                c cVar5 = (c) this.f692g.getValue();
                                cVar5.f698f = false;
                                ((SparseArray) cVar5.f697e.getValue()).clear();
                                cVar5.f702j = 0;
                                cVar5.f696d = 0;
                                cVar5.f700h = 0;
                                cVar5.f701i = 0;
                                cVar5.c = 0;
                                iVar = this.f693h;
                                iVar.getClass();
                                synchronized (iVar.f953h) {
                                    iVar.f952g.put(bArrCopyOf);
                                }
                                fileOutputStream = this.f690e;
                                if (fileOutputStream != null) {
                                    fileOutputStream.write(bArrCopyOf);
                                }
                                fileOutputStream2 = this.f690e;
                                if (fileOutputStream2 != null) {
                                    fileOutputStream2.flush();
                                }
                            } else if (((c) this.f692g.getValue()).f702j == -1) {
                                cVar2 = (c) this.f692g.getValue();
                                if (cVar2.f702j == -1) {
                                    cVar2.f702j = 0;
                                }
                            }
                        } else {
                            byte[] bArrA = cVar3.a();
                            int i6 = cVar3.f700h;
                            int i7 = i6 + 1;
                            cVar3.f700h = i7;
                            bArrA[i6] = b2;
                            if (i7 >= 8) {
                                byte[] bArrA2 = cVar3.a();
                                int i8 = cVar3.f701i;
                                cVar3.f701i = i8 + 1;
                                int length = bArrA2.length - 3;
                                while (true) {
                                    if (i8 >= length) {
                                        i8 = -1;
                                        break;
                                    } else {
                                        if (bArrA2[i8 + 0] == 0 && bArrA2[i8 + 1] == 0 && bArrA2[i8 + 2] == 0 && bArrA2[i8 + 3] == 1) {
                                            cVar3.f702j = 4;
                                            break;
                                        }
                                        i8++;
                                    }
                                }
                                if (i8 > 0) {
                                    int i9 = cVar3.f702j;
                                    if (i9 != 4 || i8 - i9 >= 0) {
                                        cVar3.f698f = true;
                                        cVar3.c = ((cVar3.a()[i8 - 3] & 255) << 8) | ((cVar3.a()[i8 - 1] & 255) << 24) | ((cVar3.a()[i8 - 2] & 255) << 16) | (cVar3.a()[i8 - 4] & 255);
                                        byte[] bArr3 = (byte[]) cVar3.f695b.getValue();
                                        byte[] bArr4 = cVar3.f694a;
                                        int length2 = bArr4.length - cVar3.f702j;
                                        int length3 = bArr4.length;
                                        t.b.h(bArr3, Downloads.Impl.COLUMN_DESTINATION);
                                        System.arraycopy(bArr4, length2, bArr3, 0, length3 - length2);
                                        cVar3.f696d = cVar3.f702j;
                                    } else {
                                        cVar3.f702j = i9 - 1;
                                        CarLink carLink = CarLink.f562i;
                                        if (carLink == null) {
                                            t.b.B("me");
                                            throw null;
                                        }
                                        CarLinkService carLinkServiceF = carLink.f();
                                        if (carLinkServiceF != null && (cVar = carLinkServiceF.A) != null) {
                                            cVar.n(210, null, new int[]{4});
                                        }
                                    }
                                }
                            }
                        }
                        z2 = false;
                        if (z2) {
                            c cVar6 = (c) this.f692g.getValue();
                            bArrCopyOf = Arrays.copyOf((byte[]) cVar6.f695b.getValue(), cVar6.c);
                            t.b.g(bArrCopyOf, "copyOf(this, newSize)");
                            c cVar7 = (c) this.f692g.getValue();
                            cVar7.f698f = false;
                            ((SparseArray) cVar7.f697e.getValue()).clear();
                            cVar7.f702j = 0;
                            cVar7.f696d = 0;
                            cVar7.f700h = 0;
                            cVar7.f701i = 0;
                            cVar7.c = 0;
                            iVar = this.f693h;
                            iVar.getClass();
                            synchronized (iVar.f953h) {
                                iVar.f952g.put(bArrCopyOf);
                                fileOutputStream = this.f690e;
                                if (fileOutputStream != null) {
                                    fileOutputStream.write(bArrCopyOf);
                                }
                                fileOutputStream2 = this.f690e;
                                if (fileOutputStream2 != null) {
                                    fileOutputStream2.flush();
                                }
                            }
                        } else if (((c) this.f692g.getValue()).f702j == -1) {
                            cVar2 = (c) this.f692g.getValue();
                            if (cVar2.f702j == -1) {
                                cVar2.f702j = 0;
                            }
                        }
                    }
                }
            } else if (this.f689d && !isInterrupted()) {
                try {
                    Thread.sleep(200L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            if (!this.f689d || isInterrupted()) {
                try {
                    bufferedInputStream.close();
                    this.f688b.close();
                } catch (Exception unused3) {
                }
            }
        }
    }
}
