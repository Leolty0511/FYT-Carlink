package n0;

import android.net.dhcp.DhcpPacket;

/* JADX INFO: loaded from: classes2.dex */
public class p extends c4 {
    @Override // n0.c4
    public void C3() {
        super.C3();
    }

    @Override // n0.c4
    public void I3(e1.c cVar) {
        super.I3(cVar);
        if ((cVar instanceof e1.e) && this.f16341f == 8) {
            cVar.v(5, 3);
        }
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() != 6) {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            u0.b.t4[7] = 22;
            z.k.k("/dev/ttyS0", 19200, 2);
            return;
        }
        int[] iArr = u0.b.t4;
        iArr[3] = 6;
        y0.d.r();
        y0.d.x();
        z.k.g("/dev/ttyS0");
        iArr[7] = 22;
        int[] iArr2 = y0.d.f18017c;
        iArr2[6] = 3;
        iArr[5] = 2;
        y0.d.f18015a[14] = 5;
        iArr2[14] = 2;
        c1.b.g(4);
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() != 1) {
            if (g.e.g() == 2) {
                u0.b.t4[3] = 6;
            }
        } else {
            u0.b.t4[7] = 22;
            z.k.k("/dev/ttyS1", 9600, 9);
            int[] iArr = y0.b.f17952b;
            iArr[6] = iArr[7];
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "CML";
        m1.a.f13515d = 22;
        y0.f.N = 20;
        y0.f.T = 20;
        p0.b.f17025g = 0;
        super.j3();
        o1.v vVar = e.c.E;
        vVar.b();
        vVar.a(e.a.e(), -500);
        vVar.a(e.a.i(), DhcpPacket.MAX_LENGTH);
    }
}
