package l0;

import java.util.Arrays;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class a implements i1.b0.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static i1.b0 f12994b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o1.q f12995a;

    public static void d(int... iArr) {
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        i1.b0 b0Var = f12994b;
        if (b0Var != null) {
            b0Var.f(Arrays.copyOfRange(iArr, 1, iArr.length));
        } else {
            z.a.f18151b.i(z.k.b(iArr));
        }
    }

    @Override // i1.b0.a
    public void a(i1.b0 b0Var) {
        if (b0Var != null) {
            f12994b = b0Var;
        }
    }

    public void b(byte[] bArr) {
        if (g.f.f(12) || bArr == null) {
            return;
        }
        a.f.p().t(LogType.CANBUS, o1.b0.d(bArr, 0, bArr.length));
    }

    @Override // i1.b0.a
    public void c(byte[] bArr) {
        o1.q qVar = this.f12995a;
        if (qVar != null) {
            qVar.b(bArr);
        } else {
            b(bArr);
        }
    }

    public void e(o1.q qVar) {
        this.f12995a = qVar;
    }

    public void f(int... iArr) {
        d(iArr);
    }
}
