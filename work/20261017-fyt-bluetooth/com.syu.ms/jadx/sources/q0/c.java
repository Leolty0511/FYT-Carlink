package q0;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static synchronized void a(int i2) {
        if (b.f17125a == i2) {
            return;
        }
        b.f17125a = i2;
        b.f17126b.b();
        if (i2 != 1) {
            b.f17126b = new d.a();
        } else {
            b.f17126b = new a();
        }
        b.f17126b.a();
    }
}
