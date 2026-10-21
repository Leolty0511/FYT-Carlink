package g0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f908a = 0;

    static {
        String property;
        int i2 = k0.h.f991a;
        try {
            property = System.getProperty("kotlinx.coroutines.main.delay");
        } catch (SecurityException unused) {
            property = null;
        }
        if (!(property == null ? false : Boolean.parseBoolean(property))) {
            kotlinx.coroutines.d dVar = kotlinx.coroutines.d.f1014d;
            return;
        }
        kotlinx.coroutines.scheduling.d dVar2 = d.f909a;
        u.d dVar3 = k0.f.f990a;
        h0.a aVar = ((h0.a) dVar3).f956f;
        if (dVar3 instanceof c) {
        } else {
            kotlinx.coroutines.d dVar4 = kotlinx.coroutines.d.f1014d;
        }
    }
}
