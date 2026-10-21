package f1;

import android.net.ProxyProperties;
import android.os.Handler;
import android.util.Log;
import app.App;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import o1.l0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class j extends q {
    public final q1.b P;
    public final q1.b Q;
    public l0 R;

    public j(int i2, p1.a aVar, int i3, Handler handler) {
        super(19, i2, aVar, i3, handler);
        this.P = new q1.b(-1, 4);
        this.Q = new q1.b(-1, 3);
        this.R = new l0();
    }

    @Override // f1.q
    public void D() {
        if (n()) {
            return;
        }
        super.D();
        Log.e("Chip7128", "============>> 7128 RESET  Waiting onUEvent START 1 chipid : " + this.f2144h);
        ToolsJni.cmd_33_reset_videoIc(this.f2144h);
        Log.e("Chip7128", "============>> 7128 RESET Waiting onUEvent END 1 chipid : " + this.f2144h);
    }

    @Override // f1.q
    public boolean M() {
        if (n()) {
            return true;
        }
        if (!this.f2154r) {
            D();
        }
        return this.f2154r;
    }

    public int X(int i2) {
        return this.f2142f.get(i2, 0);
    }

    public boolean Y() {
        if (n()) {
            return true;
        }
        V(232, 0);
        int iA = A(38);
        if (this.R.c(200)) {
            Log.e("Chip7128", "  CHECK SIGNAL : imagType :  " + this.f2145i + String.format("  signal flag: %02X", Integer.valueOf(iA)) + " chipid : " + this.f2144h);
        }
        return (iA & 6) == 6;
    }

    public int Z() {
        if (n()) {
            return this.f2147k;
        }
        int i2 = 0;
        V(232, 0);
        switch (A(37) & 7) {
            case 1:
                break;
            case 2:
                i2 = 1;
                break;
            case 3:
                i2 = 2;
                break;
            case 4:
                i2 = 3;
                break;
            case 5:
                i2 = 6;
                break;
            case 6:
                i2 = 7;
                break;
            default:
                i2 = -1;
                break;
        }
        return this.Q.g(i2);
    }

    public final void a0(int i2) {
        q.c cVar;
        if (g.f.f(13) && (cVar = this.f2138b.get(i2)) != null && cVar.a()) {
            String strZ = z();
            s0.F(strZ + "a.w", cVar.f2164a + ProxyProperties.LOCAL_EXCL_LIST);
            s0.F(strZ + "a.h", cVar.f2165b + ProxyProperties.LOCAL_EXCL_LIST);
        }
    }

    @Override // f1.q, e1.l
    public synchronized void c(int i2) {
        if (n()) {
            return;
        }
        if (this.f2158v) {
            return;
        }
        if (n() && !m()) {
            T(i2, 1);
            return;
        }
        int i3 = 2;
        if (this.f2145i != i2 && !m()) {
            super.c(i2);
            int iX = X(i2);
            if (iX == 1) {
                i3 = 0;
            } else if (iX == 2) {
                i3 = 17;
            } else if (iX != 3) {
                i3 = iX != 4 ? -1 : 3;
            }
            if (i3 != -1) {
                if (this.f2145i != i2) {
                    this.f2145i = i2;
                    this.P.h(0);
                    this.Q.h(-1);
                    P(this.P.d());
                    O(this.Q.d());
                }
                Log.e("Chip7128", "  ==========>> openVideo   chipId : " + this.f2144h + " videoId: " + this.f2146j + "  vChannel: " + i3);
                V(232, 0);
                V(33, 197);
                V(34, 4);
                V(96, 4);
                V(232, 16);
                V(15, 80);
                V(11, i3);
                V(15, 96);
                V(232, 0);
                V(96, 3);
            }
            return;
        }
        u0.d.I3(70, this.f2148l, this.f2146j);
        u0.d.I3(69, this.f2149m, this.f2146j);
        Log.e("Signal", "   ==========>> signalNtscPal   chipId : " + this.f2144h + " videoId: " + this.f2146j + " ntscPal: " + this.f2148l);
        Log.e("Signal", "   ==========>> signalOn   chipId : " + this.f2144h + " videoId: " + this.f2146j + " sSignalOn: " + this.f2149m);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // f1.q
    public int k() {
        int iZ;
        if (n()) {
            return 1;
        }
        int i2 = this.P.g(Y() ? 1 : 0) != 1 ? 0 : 1;
        if (i2 != 0 && (iZ = Z()) != -1 && this.f2147k != iZ) {
            this.f2147k = iZ;
            a0(iZ);
        }
        if (this.R.c(200)) {
            this.R.a();
            Log.e("Chip7128", "  CHECK SIGNAL : imagType :  " + this.f2145i + "  formatMark : " + this.Q + " mSignalMarker: " + this.P + " chipid : " + this.f2144h);
        }
        return i2;
    }

    @Override // f1.q
    public void o() {
        G(0, 0);
        G(1, 1);
        G(2, 2);
        G(3, 4);
        G(4, 3);
        G(5, 2);
        G(6, 2);
        G(7, 3);
        G(8, 2);
        G(9, 1);
    }

    @Override // f1.q
    public void p() {
        if (n()) {
            H(true);
        } else {
            H(q(s0.A(App.c(), R.raw.ark7128_init_table, 16)));
        }
    }

    @Override // f1.q
    public boolean q(int[] iArr) {
        boolean z2;
        if (iArr == null || iArr.length < 2) {
            throw new RuntimeException("flushParams  data is NULL  or  data  size < 2 !!!! ");
        }
        if (this.f2158v) {
            return false;
        }
        synchronized (this.f2157u) {
            int length = iArr.length / 2;
            int i2 = 0;
            z2 = true;
            while (i2 < length) {
                int i3 = i2 * 2;
                int i4 = iArr[i3];
                int i5 = iArr[i3 + 1];
                int iV = V(i4, i5);
                boolean z3 = iV >= 0;
                Log.e("Chip7128", String.format("[ %02X,  %02X]", Integer.valueOf(i4), Integer.valueOf(i5)) + " ret : " + iV);
                if (!z3) {
                    z2 = z3;
                    break;
                }
                i2++;
                z2 = z3;
            }
            Log.e("Chip7128", "flushParams  END  data  length = " + iArr.length + " result:" + z2);
        }
        return z2;
    }
}
