package i0;

import android.net.wifi.WifiEnterpriseConfig;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap<String, a> f2501c = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f2502d = new C0050a(WifiEnterpriseConfig.EMPTY_VALUE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LinkedList<String> f2503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2504b;

    /* JADX INFO: renamed from: i0.a$a, reason: collision with other inner class name */
    public class C0050a extends a {
        public C0050a(String... strArr) {
            super(strArr);
        }

        @Override // i0.a
        public void c(String str) {
        }
    }

    public a(String... strArr) {
        LinkedList<String> linkedList = new LinkedList<>();
        this.f2503a = linkedList;
        this.f2504b = WifiEnterpriseConfig.EMPTY_VALUE;
        linkedList.addAll(Arrays.asList(strArr));
        a(this);
    }

    public static void a(a aVar) {
        Iterator<String> it = aVar.f2503a.iterator();
        while (it.hasNext()) {
            f2501c.put(it.next(), aVar);
        }
    }

    public static a b(String str) {
        ConcurrentHashMap<String, a> concurrentHashMap = f2501c;
        return concurrentHashMap.containsKey(str) ? concurrentHashMap.get(str) : f2502d;
    }

    public abstract void c(String str);

    public int hashCode() {
        return super.hashCode() + (Arrays.toString(this.f2503a.toArray()).hashCode() * 29) + (this.f2504b.hashCode() * 29);
    }
}
