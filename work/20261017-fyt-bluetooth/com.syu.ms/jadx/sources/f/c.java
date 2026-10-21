package f;

import android.util.SparseArray;
import app.App;
import java.util.LinkedList;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Pattern f1847c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1846b = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SparseArray<LinkedList<String>> f1845a = new SparseArray<>();

    public c() {
        this.f1847c = null;
        if (this.f1847c == null) {
            try {
                String strC = q1.a.c(App.c().getAssets().open("app_category/audio_from_playstatus.txt"));
                if (strC == null || strC.isEmpty()) {
                    return;
                }
                this.f1847c = Pattern.compile(strC);
            } catch (Exception unused) {
            }
        }
    }

    public abstract void a(String str, boolean z2, int i2, int i3);

    public abstract void b(String str, int i2);

    public abstract void c(String str, boolean z2);

    public boolean d(int i2) {
        LinkedList<String> linkedList = this.f1845a.get(i2, null);
        return (linkedList == null || linkedList.isEmpty()) ? false : true;
    }

    public abstract boolean e();

    public abstract boolean f();

    public abstract boolean g();

    public boolean h() {
        return false;
    }

    public abstract void i(int i2, int i3);
}
