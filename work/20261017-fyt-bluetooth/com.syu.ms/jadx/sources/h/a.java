package h;

import android.net.ProxyProperties;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2404c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2405d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2406e;

    public a(int i2, int i3) {
        this.f2402a = -1;
        this.f2403b = 65536;
        this.f2405d = 0;
        this.f2406e = ProxyProperties.LOCAL_EXCL_LIST;
        this.f2404c = i2;
        this.f2405d = i3;
    }

    public int a() {
        return this.f2404c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return super.equals(obj);
        }
        a aVar = (a) obj;
        return this.f2403b == aVar.f2403b && this.f2404c == aVar.a();
    }

    public int hashCode() {
        return ("Station_id:" + this.f2403b).hashCode();
    }

    public String toString() {
        return "Station: { index : " + this.f2402a + " id : " + this.f2403b + " freq: " + this.f2404c + "  strength: " + this.f2405d + "}";
    }

    public a(a aVar) {
        this.f2402a = -1;
        this.f2403b = 65536;
        this.f2405d = 0;
        this.f2406e = ProxyProperties.LOCAL_EXCL_LIST;
        this.f2403b = aVar.f2403b;
        this.f2402a = aVar.f2402a;
        this.f2404c = aVar.f2404c;
        this.f2405d = aVar.f2405d;
        this.f2406e = aVar.f2406e;
    }
}
