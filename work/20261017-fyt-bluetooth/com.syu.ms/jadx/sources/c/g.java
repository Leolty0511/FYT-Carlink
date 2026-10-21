package c;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.Log;
import android.util.SparseArray;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.util.Iterator;
import java.util.List;
import o1.m;
import o1.s0;
import o1.u;

/* JADX INFO: loaded from: classes.dex */
public class g implements Runnable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static g f386i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Toast f388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f389c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f390d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f391e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f392f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public SparseArray<b> f393g = new SparseArray<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f394h = new a();

    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.lang.Runnable
        public void run() {
            Toast toast = g.this.f388b;
            if (toast != null) {
                toast.cancel();
                g.this.f388b = null;
            }
            g gVar = g.this;
            if (gVar.f388b == null) {
                gVar.f388b = new Toast(gVar.f387a);
                FrameLayout frameLayout = new FrameLayout(g.this.f387a);
                frameLayout.setBackground(g.this.c(Color.parseColor("#88D6D6D6"), Color.parseColor("#88D6D6D6"), 1, 28.0f));
                frameLayout.setPadding(20, 10, 20, 10);
                g.this.f389c = new TextView(g.this.f387a);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                layoutParams.gravity = 17;
                g.this.f389c.setTextColor(-16777216);
                g.this.f389c.setTextSize(24.0f);
                g gVar2 = g.this;
                gVar2.f389c.setText(gVar2.f391e);
                frameLayout.addView(g.this.f389c, layoutParams);
                g.this.f388b.setView(frameLayout);
                g.this.f388b.setGravity(81, 0, 80);
            }
            try {
                g.this.f388b.show();
                m.a().removeCallbacks(g.f386i);
                m.a().postDelayed(g.f386i, 1500L);
            } catch (Exception unused) {
            }
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Integer f396a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f397b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f398c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f399d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f400e;

        public b(Integer num, Integer num2, String str, String str2) {
            this(num, num2, str, null, str2);
        }

        public boolean equals(Object obj) {
            String str;
            if (obj == null || !(obj instanceof b)) {
                return super.equals(obj);
            }
            b bVar = (b) obj;
            String str2 = this.f398c;
            return (str2 != null && str2.equals(bVar.f398c)) || ((str = this.f400e) != null && str.equals(bVar.f400e));
        }

        public String toString() {
            return "ID: " + this.f397b + " index: " + this.f396a + " pkg: " + this.f398c + " activityClazz: " + this.f399d;
        }

        public b(Integer num, Integer num2, String str, String str2, String str3) {
            this.f396a = num;
            this.f397b = num2;
            this.f398c = str;
            this.f399d = str2;
            this.f400e = str3;
        }
    }

    public g(Context context) {
        this.f387a = context;
        d();
    }

    public static g g(Context context) {
        if (f386i == null) {
            f386i = new g(context);
        }
        return f386i;
    }

    public void a(b bVar) {
        this.f393g.put(bVar.f396a.intValue(), bVar);
    }

    public void b() {
        this.f393g.clear();
    }

    public GradientDrawable c(int i2, int i3, int i4, float f2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i2);
        gradientDrawable.setStroke(i4, i3);
        gradientDrawable.setCornerRadius(f2);
        return gradientDrawable;
    }

    public void d() {
        String str = a.b.f22j;
        boolean zQ = u.Q();
        if (zQ) {
            a(new b(0, 1, str, a.b.f28p));
        } else {
            a(new b(0, 1, a.b.f27o, a.b.f28p));
        }
        a(new b(1, null, a.b.f23k, a.b.f24l));
        if (zQ) {
            a(new b(2, 3, str, "com.syu.btav"));
            a(new b(3, 8, str, a.b.f38z));
        } else {
            a(new b(2, 3, a.b.f23k, "com.syu.bt.act.ActBtAvStart", a.b.f24l));
            a(new b(3, 8, a.b.f37y, a.b.f38z));
        }
        a(new b(4, 9, a.b.A, a.b.B));
        a(new b(5, null, "Navi", "Navi"));
    }

    public final void e(b bVar) {
        Integer num = bVar.f397b;
        if (num != null) {
            u.b(num.intValue());
            return;
        }
        if ("Home".equals(bVar.f398c) && "Home".equals(bVar.f400e)) {
            e.d().c(3);
            return;
        }
        if ("Navi".equals(bVar.f398c) && "Navi".equals(bVar.f400e)) {
            u.J0(u0.b.J1);
            return;
        }
        String str = bVar.f400e;
        if (str != null && !str.isEmpty()) {
            u.f(bVar.f400e);
            return;
        }
        String str2 = bVar.f398c;
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        u.J0(bVar.f398c);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002c A[PHI: r5
  0x002c: PHI (r5v13 boolean) = (r5v9 boolean), (r5v19 boolean) binds: [B:27:0x005f, B:9:0x0028] A[DONT_GENERATE, DONT_INLINE]] */
    public final int f(String str, int i2) {
        boolean zJ;
        int i3;
        Integer num;
        int size = this.f393g.size();
        b bVar = null;
        for (int i4 = 0; i4 < size; i4++) {
            b bVarValueAt = this.f393g.valueAt(i4);
            boolean z2 = true;
            if (!s0.t(bVarValueAt.f399d) && !s0.t(bVarValueAt.f398c)) {
                zJ = j(bVarValueAt);
                if (zJ) {
                    i3 = 2;
                } else {
                    i3 = 0;
                }
            } else if (s0.t(bVarValueAt.f398c)) {
                zJ = false;
                i3 = 0;
            } else {
                String str2 = bVarValueAt.f398c;
                if (s0.j(str2, "Navi")) {
                    str2 = u0.b.J1;
                } else if (s0.j(bVarValueAt.f398c, "Home") && u.j0(str)) {
                    str2 = str;
                }
                zJ = str2 != null && str2.equals(str);
                if (zJ) {
                    i3 = 1;
                } else {
                    i3 = 0;
                }
            }
            if (!zJ || ((num = bVarValueAt.f397b) != null && num.intValue() != i2)) {
                z2 = false;
            }
            int i5 = !z2 ? i3 - 1 : i3 + 1;
            if (z2 && i5 >= 0) {
                bVar = bVarValueAt;
            }
        }
        if (bVar == null) {
            return -1;
        }
        return bVar.f396a.intValue();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0066 A[Catch: Exception -> 0x0099, TryCatch #1 {Exception -> 0x0099, blocks: (B:13:0x002e, B:15:0x0033, B:17:0x0039, B:19:0x0056, B:21:0x005c, B:22:0x0060, B:24:0x0066, B:26:0x0070, B:35:0x0087, B:37:0x008d), top: B:44:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x0070 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x007e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x0060 A[SYNTHETIC] */
    public final String h(b bVar) {
        String str;
        List<ResolveInfo> listQueryIntentActivities;
        Iterator<ResolveInfo> it;
        ActivityInfo activityInfo;
        String str2;
        PackageManager packageManagerQ = a.f.q();
        String str3 = bVar.f398c;
        String str4 = "Home";
        try {
            if (!"Navi".equals(str3) || !"Navi".equals(bVar.f400e)) {
                if (!"Home".equals(bVar.f398c) || !"Home".equals(bVar.f400e)) {
                }
                str = bVar.f399d;
                if (str != null && !str.isEmpty()) {
                    Intent intent = new Intent();
                    intent.setPackage(str3);
                    intent.setComponent(new ComponentName(str3, bVar.f399d));
                    intent.addCategory(Intent.CATEGORY_LAUNCHER);
                    listQueryIntentActivities = packageManagerQ.queryIntentActivities(intent, 0);
                    if (listQueryIntentActivities != null && listQueryIntentActivities.size() > 0) {
                        it = listQueryIntentActivities.iterator();
                        while (it.hasNext()) {
                            activityInfo = it.next().activityInfo;
                            if (activityInfo == null) {
                                str2 = (String) activityInfo.loadLabel(packageManagerQ);
                                if (str2 != null) {
                                    try {
                                        if (!str2.isEmpty()) {
                                            str4 = str2;
                                            break;
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        str4 = str2;
                                        e.printStackTrace();
                                        return str4;
                                    }
                                }
                                str4 = str2;
                            }
                        }
                    }
                }
                return (str4 != null || str4.isEmpty()) ? (String) packageManagerQ.getApplicationLabel(packageManagerQ.getApplicationInfo(str3, 0)) : str4;
            }
            str3 = u0.b.J1;
            str = bVar.f399d;
            if (str != null) {
                Intent intent2 = new Intent();
                intent2.setPackage(str3);
                intent2.setComponent(new ComponentName(str3, bVar.f399d));
                intent2.addCategory(Intent.CATEGORY_LAUNCHER);
                listQueryIntentActivities = packageManagerQ.queryIntentActivities(intent2, 0);
                if (listQueryIntentActivities != null) {
                    it = listQueryIntentActivities.iterator();
                    while (it.hasNext()) {
                        activityInfo = it.next().activityInfo;
                        if (activityInfo == null) {
                            str2 = (String) activityInfo.loadLabel(packageManagerQ);
                            if (str2 != null) {
                                if (!str2.isEmpty()) {
                                    str4 = str2;
                                    break;
                                }
                            }
                            str4 = str2;
                        }
                    }
                }
            }
            if (str4 != null) {
            }
        } catch (Exception e3) {
            e = e3;
        }
        str4 = null;
    }

    public boolean i() {
        int iIntValue;
        String str;
        if (f.b().c(9)) {
            return true;
        }
        Log.e("Home", "----------->> handleMode smodes.size() : " + this.f393g.size());
        boolean z2 = this.f393g.size() > 0;
        if (z2) {
            b bVar = this.f390d;
            if (bVar == null) {
                int i2 = u0.b.D;
                String strY0 = u.Y0();
                Log.e("Home", "----------->> topApp : " + strY0);
                iIntValue = f(strY0, i2);
            } else {
                iIntValue = bVar.f396a.intValue();
            }
            int i3 = iIntValue + 1;
            this.f391e = null;
            do {
                if (this.f393g.indexOfKey(i3) < 0) {
                    i3 = 0;
                }
                b bVar2 = this.f393g.get(i3);
                this.f390d = bVar2;
                this.f391e = h(bVar2);
                i3++;
                if (i3 >= this.f393g.size()) {
                    i3 = 0;
                }
                str = this.f391e;
            } while (str == null);
            if (str != null) {
                if (this.f392f) {
                    a.f.n().post(this.f394h);
                } else {
                    run();
                }
            }
        }
        return z2;
    }

    public boolean j(b bVar) {
        PackageManager packageManagerQ = a.f.q();
        String str = bVar.f398c;
        Intent intent = new Intent();
        intent.setPackage(str);
        intent.setComponent(new ComponentName(str, bVar.f399d));
        intent.addCategory(Intent.CATEGORY_LAUNCHER);
        List<ResolveInfo> listQueryIntentActivities = packageManagerQ.queryIntentActivities(intent, 0);
        if (listQueryIntentActivities != null) {
            try {
                if (listQueryIntentActivities.size() > 0) {
                    Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
                    while (it.hasNext()) {
                        ActivityInfo activityInfo = it.next().activityInfo;
                        if (activityInfo != null) {
                            String str2 = activityInfo.name;
                            this.f391e = str2;
                            return s0.j(str2, bVar.f399d);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public void k(boolean z2) {
        this.f392f = z2;
    }

    @Override // java.lang.Runnable
    public void run() {
        Toast toast = this.f388b;
        if (toast != null) {
            toast.cancel();
            this.f388b = null;
        }
        Log.e("Home", "==============>>> to mode: " + this.f390d);
        e(this.f390d);
        this.f390d = null;
    }
}
