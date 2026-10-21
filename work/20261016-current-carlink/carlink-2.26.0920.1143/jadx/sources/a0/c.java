package a0;

import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public final class c extends a {
    public final b c = new b();

    @Override // a0.a
    public final Random a() {
        Object obj = this.c.get();
        t.b.g(obj, "implStorage.get()");
        return (Random) obj;
    }
}
