package f;

import a.e;
import a.i;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import app.App;
import e.f;
import java.util.LinkedList;
import o1.a0;
import o1.s0;
import util.log.LogType;
import y0.g;
import y0.h;
import y0.j;

/* JADX INFO: loaded from: classes.dex */
public class d extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SparseArray<LinkedList<String>> f1848d;

    public d() {
        this.f1848d = null;
        this.f1848d = new SparseArray<>();
    }

    @Override // f.c
    public void a(String str, boolean z2, int i2, int i3) {
        synchronized (this.f1846b) {
            if (this.f1845a.indexOfKey(i2) < 0) {
                this.f1845a.put(i2, new LinkedList<>());
            }
            if (i2 == -1 || i3 == -1) {
                int size = this.f1845a.size();
                for (int i4 = 0; i4 <= size; i4++) {
                    LinkedList<String> linkedListValueAt = this.f1845a.valueAt(i4);
                    if (linkedListValueAt != null) {
                        linkedListValueAt.remove(str);
                    }
                }
            }
            int i5 = 2;
            if (i2 == 2 || i2 == 3 || i2 == 4) {
                LinkedList<String> linkedList = this.f1845a.get(i2);
                if (s0.j(str, App.c().getPackageName()) || !z2) {
                    linkedList.remove(str);
                } else if (linkedList.isEmpty()) {
                    linkedList.add(str);
                } else {
                    linkedList.set(0, str);
                }
            }
            int iC = a.b.f11c.c(str);
            if (i.q(iC, str)) {
                i5 = 13;
            } else if (!f.n(str)) {
                i5 = i.y(iC) ? 5 : 1;
            }
            if (this.f1848d.indexOfKey(i2) < 0) {
                this.f1848d.put(i5, new LinkedList<>());
            }
            LinkedList<String> linkedList2 = this.f1848d.get(i5);
            if (j(str)) {
                Log.e("Sound", " ADD >>>>> pkg : " + str + " fixUsage : " + i5);
                if (linkedList2.isEmpty()) {
                    linkedList2.add(str);
                } else {
                    linkedList2.set(0, str);
                }
            } else {
                Log.e("Sound", " REMOVE >>>>> pkg : " + str + " fixUsage : " + i5);
                linkedList2.remove(str);
            }
            y0.f.T0 = g() ? 1 : 0;
            g.f18101k.c(Integer.valueOf(y0.f.T0));
            int i6 = e() ? 1 : 0;
            y0.f.Q0 = i6;
            u0.d.I3(111, i6);
            g.f18110t.c();
            y0.f.R0 = f() ? 1 : 0;
            h.M();
        }
    }

    @Override // f.c
    public void b(String str, int i2) {
        Log.e("focus", String.format("audio status  pkg : %s,  status: ", str) + i2);
        if (TextUtils.isEmpty(str) || str.contains("bin/blink")) {
            return;
        }
        if ("com.ilincar.advertising.videoplayer.chinamobile".equals(str) && u0.b.k4 != i2) {
            u0.b.k4 = i2;
            if (i2 == 1) {
                f.f1633c = 30;
            }
        }
        String str2 = str.split(":")[0];
        y0.f.O0.f(str2, i2);
        a0 a0VarE = a.b.f20h.e(str2);
        if (a0VarE != null) {
            if (i2 != 0) {
                a0VarE.f16818a.a();
            } else if (!a0VarE.f16818a.c(a0VarE.f16819b)) {
                if (i.q(a.b.f11c.c(str2), str2)) {
                    boolean zFind = this.f1847c.matcher(str2).find();
                    f.f1639i = zFind;
                    if (zFind) {
                        e.e(1);
                        i.Y(str2);
                        int i3 = f.f1631a;
                        int i4 = a0VarE.f16820c;
                        if (i3 < i4) {
                            f.f1631a = i4;
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
        }
        boolean z2 = h0.c.G == 1;
        if (h0.c.f2448m0) {
            z2 = true;
        }
        int iC = a.b.f11c.c(str2);
        if (i.q(iC, str2)) {
            boolean zFind2 = this.f1847c.matcher(str2).find();
            f.f1639i = zFind2;
            if (zFind2) {
                i.Y(str2);
                e.e(1);
                if (i2 == 0) {
                    f.f1631a = 1;
                    return;
                }
                y0.f.Q0 = 1;
                u0.d.I3(111, 1);
                g.f18110t.c();
                h.M();
                f.f1631a = 120;
                return;
            }
            return;
        }
        if (i.y(iC)) {
            if (this.f1847c.matcher(str2).find()) {
                if (i2 == 0) {
                    f.f1632b = 1;
                    return;
                }
                y0.f.R0 = 1;
                h.M();
                f.f1632b = 120;
                return;
            }
            return;
        }
        if (f.n(str2) || i2 == 0) {
            return;
        }
        if (!i.t(iC) && !str2.startsWith("com.syu") && !str2.startsWith("com.huawei.dmsdpdevice") && !i.w(iC) && !j.a3().f3(str2)) {
            if (!z2 && u0.b.D != 10) {
                u0.b.f17311c.c(10);
            }
            u0.h hVar = u0.b.f17311c;
            if (hVar instanceof u0.a) {
                ((u0.a) hVar).i(str2);
            }
        }
        h.M();
    }

    @Override // f.c
    public void c(String str, boolean z2) {
        Log.e("focus", String.format("audio focus  pkg : %s,  focus: ", str) + z2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (z2) {
            e.e.f1626d.c(str);
        }
        a0 a0VarE = a.b.f20h.e(str);
        if (a0VarE != null) {
            if (z2) {
                a0VarE.f16818a.a();
            } else if (!a0VarE.f16818a.c(a0VarE.f16819b)) {
                int iC = a.b.f11c.c(str);
                if (i.q(iC, str)) {
                    e.e(1);
                    i.Y(str);
                    int i2 = f.f1631a;
                    int i3 = a0VarE.f16820c;
                    if (i2 < i3) {
                        f.f1631a = i3;
                        return;
                    }
                    return;
                }
                if (i.y(iC)) {
                    int i4 = f.f1632b;
                    int i5 = a0VarE.f16820c;
                    if (i4 < i5) {
                        f.f1632b = i5;
                        return;
                    }
                    return;
                }
                return;
            }
        }
        int iC2 = a.b.f11c.c(str);
        if (i.q(iC2, str)) {
            i.Y(str);
            e.e(1);
            a.f.p().t(LogType.NAVI, "    >>>>>>   NAVI Audio status : " + (z2 ? 1 : 0));
            if (z2) {
                y0.f.Q0 = 1;
                u0.d.I3(111, 1);
                g.f18110t.c();
                h.M();
                f.f1631a = 120;
            } else {
                f.f1631a = 1;
            }
        } else if (i.y(iC2)) {
            if (z2) {
                y0.f.R0 = 1;
                h.M();
                f.f1632b = 120;
            } else {
                f.f1632b = 1;
            }
        }
        if (f.n(str)) {
            f.f1634d = z2 ? 120 : 1;
            if (z2) {
                y0.f.T0 = g() ? 1 : 0;
                g.f18101k.c(Integer.valueOf(y0.f.T0));
                h.M();
            }
        }
    }

    @Override // f.c
    public boolean d(int i2) {
        LinkedList<String> linkedList = this.f1848d.get(i2, null);
        return (linkedList == null || linkedList.isEmpty()) ? false : true;
    }

    @Override // f.c
    public boolean e() {
        return f.f1631a > 0 || f.f1636f > 0 || d(13);
    }

    @Override // f.c
    public boolean f() {
        return f.f1632b > 0 || f.f1637g > 0 || d(5);
    }

    @Override // f.c
    public boolean g() {
        return f.f1634d > 0 || f.f1635e > 0 || d(2);
    }

    @Override // f.c
    public boolean h() {
        return true;
    }

    @Override // f.c
    public void i(int i2, int i3) {
        a.f.f().setStreamVolume(i2, i3, 0);
    }

    public final boolean j(String str) {
        int size = this.f1845a.size();
        for (int i2 = 0; i2 <= size; i2++) {
            LinkedList<String> linkedListValueAt = this.f1845a.valueAt(i2);
            if (linkedListValueAt != null && linkedListValueAt.contains(str)) {
                return true;
            }
        }
        return false;
    }
}
