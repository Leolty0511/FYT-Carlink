package i0;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends a {
    public b(String... strArr) {
        super(strArr);
    }

    @Override // i0.a
    public final void c(String str) {
        if (str.length() >= 12) {
            d(str.substring(0, 12), str.substring(12));
        }
    }

    public abstract void d(String str, String str2);
}
