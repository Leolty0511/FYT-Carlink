package b;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static b f252c = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap<String, Boolean> f254b = new HashMap<>();

    public interface a {
        boolean a();
    }

    public b() {
        e();
    }

    public static b f() {
        return f252c;
    }

    public void a(String str, boolean z2) {
        this.f254b.put("audio_" + str, Boolean.valueOf(z2));
    }

    public void b(String str, boolean z2) {
        this.f254b.put("bluetooth_" + str, Boolean.valueOf(z2));
    }

    public boolean c(String str) {
        String str2 = "audio_" + str;
        if (!g() && this.f254b.containsKey(str2)) {
            return this.f254b.get(str2).booleanValue();
        }
        return true;
    }

    public boolean d(String str) {
        String str2 = "bluetooth_" + str;
        if (!g() && this.f254b.containsKey(str2)) {
            return this.f254b.get(str2).booleanValue();
        }
        return true;
    }

    public void e() {
        a("2313", true);
        a("3702", true);
        a("7602", true);
        a("32107", true);
        a("8288", true);
        b("0", true);
        b("1", true);
        b("3", true);
        b("4", true);
        b("5", true);
        b("6", true);
    }

    public final boolean g() {
        a aVar = this.f253a;
        if (aVar != null) {
            return aVar.a();
        }
        return true;
    }

    public void h(a aVar) {
        this.f253a = aVar;
    }
}
