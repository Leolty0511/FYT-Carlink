package kotlin.jvm.internal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f1006a;

    static {
        h hVar = null;
        try {
            hVar = (h) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (hVar == null) {
            hVar = new h();
        }
        f1006a = hVar;
    }
}
