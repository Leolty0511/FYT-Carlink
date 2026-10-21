package i1;

import android.util.Log;
import k0.qt;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class p extends i1.a<a> {

    public class a extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f2708h = {90, 165};

        public a() {
        }

        @Override // i1.e
        public boolean a(int i2) {
            int iIntValue = (((a) p.this.f2721a).f2618c[0] & 255) + ((this.f2619d.intValue() - 1) & 255);
            int i3 = 0;
            while (i3 < this.f2619d.intValue() - 1) {
                i3++;
                iIntValue += this.f2618c[i3] & 255;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("bite & 0xFF = ");
            int i4 = i2 & 255;
            sb.append(i4);
            sb.append("===>(checksum -1) = ");
            int i5 = (iIntValue - 1) & 255;
            sb.append(i5);
            Log.e("Device", sb.toString());
            return i4 == i5;
        }

        @Override // i1.e
        public boolean c(int i2) {
            this.f2619d = Integer.valueOf(i2 + 1);
            Log.e("Device", "len  = " + this.f2619d);
            return this.f2619d != null;
        }

        @Override // i1.e
        public int[] f() {
            return this.f2708h;
        }

        @Override // i1.e
        public boolean j() {
            return false;
        }
    }

    public p(int i2, int i3) {
        super(i2, i3);
        a aVar = new a();
        this.f2721a = aVar;
        aVar.h();
    }

    @Override // i1.s
    public void l(int[] iArr) {
        a.f.p().t(LogType.CANBUS, "OBD recv222--> " + o1.b0.e(iArr, 0, iArr.length));
        int i2 = iArr[0];
        if (i2 != 17) {
            if (i2 != 26) {
                return;
            }
            qt.r(iArr[7], iArr[6], true, 540);
            return;
        }
        int i3 = (iArr[1] >> 7) & 1;
        if (u0.b.f17347o == 0) {
            if (i3 != 0) {
                if (o1.u.T(a.b.O)) {
                    return;
                }
                qt.t();
            } else if (o1.u.T(a.b.O)) {
                qt.f();
            }
        }
    }
}
