package z0;

import android.net.LinkCapabilities;
import android.util.Log;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static HashMap<String, Class<? extends a>> f18288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static HashMap<Class<? extends a>, Integer> f18289c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static d f18290d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f18291a = null;

    static {
        HashMap<String, Class<? extends a>> map = new HashMap<>();
        f18288b = map;
        map.put(LinkCapabilities.Role.DEFAULT, b.class);
        f18290d = new d();
    }

    public static void f(String str, Class<? extends a> cls) {
        f18288b.put(str, cls);
    }

    public a a(String str) {
        Class<? extends a> orDefault = f18288b.getOrDefault(str, b.class);
        Log.e("Amp", ">>>>>>>>>> class " + orDefault);
        int iIntValue = f18289c.getOrDefault(orDefault, 108).intValue();
        if (orDefault != null) {
            this.f18291a = (a) new j1.a(orDefault).d(z.a.f18171v, Integer.valueOf(iIntValue)).b();
        }
        Log.e("Amp", ">>>>>>>>>> class " + orDefault + " ===>>> amp obj: " + this.f18291a + String.format(" Salve : %02X", Integer.valueOf(iIntValue)));
        return this.f18291a;
    }

    public boolean b(int i2, y.b bVar) {
        a aVar = this.f18291a;
        return aVar != null && aVar.a(i2, bVar);
    }

    public void c() {
        a aVar = this.f18291a;
        if (aVar != null) {
            aVar.b();
        }
    }

    public void d(boolean z2) {
        a aVar = this.f18291a;
        if (aVar != null) {
            aVar.c(z2);
        }
    }

    public void e() {
        a aVar = this.f18291a;
        if (aVar != null) {
            aVar.d();
        }
    }
}
