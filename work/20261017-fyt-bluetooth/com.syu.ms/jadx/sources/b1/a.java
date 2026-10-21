package b1;

import o1.p0;
import y.b;
import y.c;
import y.f;

/* JADX INFO: loaded from: classes2.dex */
public class a extends c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static a f282a;

    public static synchronized a K2() {
        if (f282a == null) {
            f282a = new a();
        }
        return f282a;
    }

    @Override // y.c
    public f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // y.c
    public void P0(b bVar, int i2) {
    }

    @Override // y.c
    public void Y1(b bVar, int i2, int i3) {
    }

    @Override // y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && p0.h(strArr, 1) && strArr[0] != null) {
            a.f.p();
        }
    }
}
