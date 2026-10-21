package n0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class u extends c4 {
    public c A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f16593z = new a();
    public Runnable B = new b();
    public final String C = "com.mxnavi.mxnavi.SEND_SOURCE_DATA_TO_MXNAVI";

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.f18031a != 1) {
                return;
            }
            int[] iArr = y0.f.f18086x0;
            iArr[0] = 10;
            iArr[5] = 8;
            iArr[8] = 10;
            iArr[3] = 8;
            iArr[4] = 8;
            iArr[6] = 7;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.this.U3();
        }
    }

    public class c extends BroadcastReceiver {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                u.this.U3();
            }
        }

        public c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("com.mxnavi.mxnavi.CMD_NAVI_STARTED".equals(action)) {
                u.this.U3();
            }
            if ("com.mxnavi.mxnavi.MXNAVI_SWTICH_TO_CTL".equals(action)) {
                int i2 = u0.b.D;
                if (i2 == 1) {
                    o1.u.x0();
                    return;
                } else if (i2 == 3) {
                    o1.u.q();
                    return;
                } else {
                    if (i2 != 8) {
                        return;
                    }
                    o1.u.i();
                    return;
                }
            }
            if ("com.mxnavi.mxnavi.MXNAVI_CHANGE_SRC_TYPE".equals(action)) {
                int intExtra = intent.getIntExtra("SrcType", 0);
                if (intExtra == 2) {
                    u0.b.f17311c.c(8);
                    a.i.L(u0.b.D);
                    return;
                } else if (intExtra == 3) {
                    u0.b.f17311c.c(1);
                    o1.l.a().postDelayed(new a(), 500L);
                    return;
                } else {
                    if (intExtra != 4) {
                        return;
                    }
                    u0.b.f17311c.c(3);
                    return;
                }
            }
            if ("com.mxnavi.mxnavi.MXNAVI_CHANGE_RADIO_FREQ".equals(action)) {
                int longExtra = (int) intent.getLongExtra("RadioFreq", 0L);
                if (u0.b.D == 1) {
                    int i3 = w0.d.f17796h;
                    if (i3 >= 65536 && i3 < 131072) {
                        longExtra /= 10;
                    }
                    w0.d.f17790b.l(1, longExtra);
                    return;
                }
                return;
            }
            if ("com.mxnavi.mxnavi.MXNAVI_PLAY_INFO".equals(action)) {
                int intExtra2 = intent.getIntExtra("PlayInfo", 0);
                int i4 = u0.b.D;
                if (intExtra2 == 0) {
                    if (i4 == 1) {
                        w0.d.f17790b.c();
                        return;
                    } else if (i4 == 3) {
                        h0.c.f2425b.V();
                        return;
                    } else {
                        if (i4 != 8) {
                            return;
                        }
                        a.i.J(i4);
                        return;
                    }
                }
                if (intExtra2 == 1) {
                    if (i4 == 1) {
                        w0.d.f17790b.g();
                        return;
                    } else if (i4 == 3) {
                        h0.c.f2425b.i();
                        return;
                    } else {
                        if (i4 != 8) {
                            return;
                        }
                        a.i.N(i4);
                        return;
                    }
                }
                if (intExtra2 != 2) {
                    if (intExtra2 == 4 && i4 == 1) {
                        w0.d.f17790b.x(-1);
                        return;
                    }
                    return;
                }
                if (i4 == 3) {
                    h0.c.f2425b.p();
                } else {
                    if (i4 != 8) {
                        return;
                    }
                    a.i.M(i4);
                }
            }
        }

        public /* synthetic */ c(u uVar, a aVar) {
            this();
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
        y0.g.f18091a.d(this.f16593z);
        u0.c.f17374a.d(this.B);
        y0.g.f18095e.d(this.B);
        u0.c.f17388o.d(this.B);
        u0.c.f17389p.d(this.B);
        u0.c.f17390q.d(this.B);
        u0.c.f17396w.d(this.B);
        u0.c.f17394u.d(this.B);
        w0.e.f17815a.d(this.B);
        w0.e.f17818d.d(this.B);
        w0.e.f17819e.d(this.B);
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() == 6) {
            u0.b.t4[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
            return;
        }
        z.a.f18172w.a("/dev/snd/sound_spectrogram");
        z.k.c();
        o0.e.f16776g = 0;
        y0.b.f17952b[15] = 3;
        y0.f.f18090z0[15] = 1;
    }

    public final void T3() {
        this.A = new c(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.mxnavi.mxnavi.MXNAVI_SWTICH_TO_CTL");
        intentFilter.addAction("com.mxnavi.mxnavi.MXNAVI_CHANGE_SRC_TYPE");
        intentFilter.addAction("com.mxnavi.mxnavi.MXNAVI_CHANGE_RADIO_FREQ");
        intentFilter.addAction("com.mxnavi.mxnavi.MXNAVI_PLAY_INFO");
        intentFilter.addAction("com.mxnavi.mxnavi.CMD_NAVI_STARTED");
        App.c().registerReceiver(this.A, intentFilter);
    }

    public final void U3() {
        Intent intent = new Intent("com.mxnavi.mxnavi.SEND_SOURCE_DATA_TO_MXNAVI");
        int i2 = u0.b.D;
        int i3 = w0.d.f17797i;
        int i4 = w0.d.f17796h;
        int i5 = 0;
        if (i2 != 1) {
            if (i2 == 3) {
                intent.putExtra("SrcFlag", 4);
                intent.putExtra("SrcName", "BT MUSIC");
                App.c().sendBroadcast(intent);
                return;
            }
            if (i2 != 8) {
                intent.putExtra("SrcFlag", 15);
                App.c().sendBroadcast(intent);
                return;
            }
            intent.putExtra("SrcFlag", 2);
            intent.putExtra("SrcName", "MP3");
            intent.putExtra("MediaName", u0.b.i3);
            intent.putExtra("MediaAuthorName", u0.b.j3);
            intent.putExtra("TrackCount", u0.b.r3);
            intent.putExtra("TrackIndex", u0.b.s3);
            int i6 = u0.b.n3;
            if (i6 == 0) {
                intent.putExtra("PlayMode", 0);
            } else if (i6 == 1) {
                intent.putExtra("PlayMode", 1);
            } else if (i6 == 2) {
                intent.putExtra("PlayMode", 2);
            }
            App.c().sendBroadcast(intent);
            return;
        }
        intent.putExtra("SrcFlag", 3);
        intent.putExtra("SrcName", "RADIO");
        Bundle bundle = new Bundle();
        long[] jArr = new long[8];
        StringBuffer stringBuffer = new StringBuffer();
        if (i4 >= 0 && i4 < 65536) {
            int[] iArr = w0.d.f17792d;
            if (iArr != null && iArr.length >= 8) {
                while (i5 < 8) {
                    int[] iArr2 = w0.d.f17792d;
                    jArr[i5] = iArr2[i5];
                    stringBuffer.append(iArr2[i5]);
                    stringBuffer.append(", ");
                    i5++;
                }
                bundle.putLongArray("RadioList", jArr);
            }
            intent.putExtra("RadioFreq", i3);
        } else if (i4 >= 65536 && i4 <= 131072) {
            int[] iArr3 = w0.d.f17793e;
            if (iArr3 != null && iArr3.length >= 8) {
                while (i5 < 8) {
                    int[] iArr4 = w0.d.f17793e;
                    jArr[i5] = iArr4[i5] * 10;
                    stringBuffer.append(iArr4[i5]);
                    stringBuffer.append(", ");
                    i5++;
                }
                bundle.putLongArray("RadioList", jArr);
            }
            intent.putExtra("RadioFreq", i3 * 10);
        }
        intent.putExtras(bundle);
        App.c().sendBroadcast(intent);
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() == 1) {
            y0.b.f17952b[15] = 3;
            y0.f.f18090z0[15] = 1;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "JYT";
        u0.b.V3 = true;
        m1.a.f13515d = 33;
        p0.b.f17025g = 3;
        super.j3();
        y0.g.f18091a.a(this.f16593z, 0);
        T3();
        u0.c.f17374a.a(this.B, 0);
        y0.g.f18095e.a(this.B, 0);
        u0.c.f17388o.a(this.B, 0);
        u0.c.f17389p.a(this.B, 0);
        u0.c.f17390q.a(this.B, 0);
        u0.c.f17396w.a(this.B, 0);
        u0.c.f17394u.a(this.B, 0);
        w0.e.f17815a.a(this.B, 0);
        w0.e.f17818d.a(this.B, 0);
        w0.e.f17819e.a(this.B, 0);
        o1.v vVar = e.c.D;
        vVar.b();
        vVar.a(e.a.f(), -500);
    }
}
