package o1;

import android.net.ProxyProperties;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.util.Log;
import java.util.Arrays;
import java.util.BitSet;
import java.util.LinkedHashMap;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class x extends RemoteCallbackList<y.b> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f16997j;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public b f17005h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f16998a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CopyOnWriteArrayList<a> f16999b = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Queue<a> f17000c = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f17001d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashMap<IBinder, String> f17002e = new LinkedHashMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f17003f = "IPC-TRAN";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f17004g = "IPC-TRAN".replace("-TRAN", ProxyProperties.LOCAL_EXCL_LIST);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f17006i = new Object();

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f17007a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public y.b f17008b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int[] f17009c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float[] f17010d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String[] f17011e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public StringBuffer f17012f = new StringBuffer();

        public a() {
        }

        public void a() {
            x.this.f17000c.offer(this);
            synchronized (x.this.f17006i) {
                x.this.f17006i.notify();
            }
            b(" >>>>> " + x.this.f17004g + " Offer Task ", 1);
        }

        public final void b(String str, int i2) {
            if (x.this.f17001d) {
                this.f17012f.setLength(0);
                this.f17012f.append("  \n");
                this.f17012f.append("************************\n");
                this.f17012f.append(str);
                StringBuffer stringBuffer = this.f17012f;
                stringBuffer.append(" for :");
                stringBuffer.append(x.this.f(this.f17008b.asBinder()));
                this.f17012f.append("\ndata :[ ");
                StringBuffer stringBuffer2 = this.f17012f;
                stringBuffer2.append("updateCode  : ");
                stringBuffer2.append(this.f17007a);
                stringBuffer2.append(", ");
                if (this.f17009c != null) {
                    StringBuffer stringBuffer3 = this.f17012f;
                    stringBuffer3.append(" ints: ");
                    stringBuffer3.append(Arrays.toString(this.f17009c));
                }
                if (this.f17010d != null) {
                    if (this.f17009c != null) {
                        this.f17012f.append(", ");
                    }
                    StringBuffer stringBuffer4 = this.f17012f;
                    stringBuffer4.append(" flts: ");
                    stringBuffer4.append(Arrays.toString(this.f17010d));
                }
                if (this.f17011e != null) {
                    if (this.f17009c != null || this.f17010d != null) {
                        this.f17012f.append(", ");
                    }
                    StringBuffer stringBuffer5 = this.f17012f;
                    stringBuffer5.append(" strs: ");
                    stringBuffer5.append(Arrays.toString(this.f17011e));
                }
                this.f17012f.append(" ]\n");
                if (i2 == 1) {
                    StringBuffer stringBuffer6 = this.f17012f;
                    stringBuffer6.append("usingHandlers size:");
                    stringBuffer6.append(x.this.f17000c.size());
                    stringBuffer6.append(" \n");
                }
                this.f17012f.append("************************");
                Log.e(x.this.f17003f, this.f17012f.toString());
            }
        }

        public void c(y.b bVar, int i2, int[] iArr, float[] fArr, String[] strArr) {
            this.f17008b = bVar;
            this.f17007a = i2;
            this.f17009c = iArr;
            this.f17010d = fArr;
            this.f17011e = strArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
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
            String str;
            StringBuilder sb;
            String string = " finish!!";
            String strF = " for : ";
            String str2 = "update data updateCode : ";
            try {
                try {
                    b("start update", 0);
                    this.f17008b.H0(this.f17007a, this.f17009c, this.f17010d, this.f17011e);
                    x.this.j(this);
                    x xVar = x.this;
                    str2 = str2;
                    if (xVar.f17001d) {
                        str = xVar.f17003f;
                        sb = new StringBuilder();
                        sb.append("update data updateCode : ");
                        sb.append(this.f17007a);
                        sb.append(" for : ");
                        x xVar2 = x.this;
                        IBinder iBinderAsBinder = this.f17008b.asBinder();
                        strF = xVar2.f(iBinderAsBinder);
                        sb.append(strF);
                        sb.append(" finish!!");
                        string = sb.toString();
                        Log.e(str, string);
                        str2 = iBinderAsBinder;
                    }
                } catch (DeadObjectException e2) {
                    b("update data-- DeadObjectException!! [" + e2.getMessage() + "]", 0);
                    x.this.unregister(this.f17008b);
                    x.this.j(this);
                    x xVar3 = x.this;
                    str2 = str2;
                    if (xVar3.f17001d) {
                        str = xVar3.f17003f;
                        sb = new StringBuilder();
                    }
                } catch (Exception e3) {
                    b("update data-- ERROR!! [" + e3.getMessage() + "]", 0);
                    e3.printStackTrace();
                    x.this.j(this);
                    x xVar4 = x.this;
                    str2 = str2;
                    if (xVar4.f17001d) {
                        str = xVar4.f17003f;
                        sb = new StringBuilder();
                    }
                }
            } catch (Throwable th) {
                x.this.j(this);
                x xVar5 = x.this;
                if (xVar5.f17001d) {
                    Log.e(xVar5.f17003f, str2 + this.f17007a + strF + x.this.f(this.f17008b.asBinder()) + string);
                }
                throw th;
            }
        }
    }

    public class b extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f17014a;

        public b() {
            StringBuilder sb = new StringBuilder();
            sb.append("ModuleCallbackList-");
            int i2 = x.f16997j;
            x.f16997j = i2 + 1;
            sb.append(i2);
            super(sb.toString());
            this.f17014a = true;
            start();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (this.f17014a) {
                x xVar = x.this;
                if (xVar.f17001d) {
                    Log.e(xVar.f17003f, "Updater check usingHandlers size:" + x.this.f17000c.size());
                }
                if (x.this.f17000c.isEmpty()) {
                    synchronized (x.this.f17006i) {
                        try {
                            x.this.f17006i.wait();
                        } catch (Exception unused) {
                        }
                    }
                }
                a aVarPoll = x.this.f17000c.poll();
                x xVar2 = x.this;
                if (xVar2.f17001d) {
                    Log.e(xVar2.f17003f, "Updater Take UpdateHandler: " + aVarPoll + " usingHandlers size:" + x.this.f17000c.size());
                }
                if (aVarPoll != null) {
                    aVarPoll.run();
                }
            }
        }
    }

    public x() {
        this.f17005h = null;
        this.f17005h = new b();
    }

    public static void A(x[] xVarArr, int i2, String str) {
        if (xVarArr == null || i2 < 0 || i2 >= xVarArr.length || xVarArr[i2] == null) {
            return;
        }
        xVarArr[i2].s(i2, null, null, str == null ? null : new String[]{str});
    }

    public static void B(x[] xVarArr, int i2, int[] iArr) {
        if (xVarArr == null || i2 < 0 || i2 >= xVarArr.length || xVarArr[i2] == null) {
            return;
        }
        xVarArr[i2].s(i2, iArr, null, null);
    }

    public static void C(x[] xVarArr, int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (xVarArr == null || i2 < 0 || i2 >= xVarArr.length || xVarArr[i2] == null) {
            return;
        }
        xVarArr[i2].s(i2, iArr, fArr, strArr);
    }

    public static void D(x[] xVarArr, int[] iArr, int i2, int i3) {
        if (iArr == null || i2 < 0 || i2 >= iArr.length || iArr[i2] == i3) {
            return;
        }
        iArr[i2] = i3;
        if (xVarArr == null || i2 >= xVarArr.length || xVarArr[i2] == null) {
            return;
        }
        xVarArr[i2].s(i2, new int[]{i3}, null, null);
    }

    public static void k(x xVar, y.b bVar, int i2) {
        xVar.m(bVar, i2);
    }

    public static void o(x xVar, y.b bVar, int i2) {
        xVar.p(bVar, i2);
    }

    public static void t(y.b bVar, int i2, int i3, String str) {
        w(bVar, i2, new int[]{i3}, null, new String[]{str});
    }

    public static void u(y.b bVar, int i2, String str) {
        w(bVar, i2, null, null, new String[]{str});
    }

    public static void v(y.b bVar, int i2, int... iArr) {
        w(bVar, i2, iArr, null, null);
    }

    public static synchronized void w(y.b bVar, int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (bVar != null) {
            try {
                bVar.H0(i2, iArr, fArr, strArr);
            } catch (Exception e2) {
                Log.e("TRAN", "ERROR : " + e2.getMessage());
                e2.printStackTrace();
            }
        }
    }

    public static void x(x[] xVarArr, int i2, int i3) {
        if (xVarArr == null || i2 < 0 || i2 >= xVarArr.length || xVarArr[i2] == null) {
            return;
        }
        xVarArr[i2].s(i2, new int[]{i3}, null, null);
    }

    public static void y(x[] xVarArr, int i2, int i3, int i4) {
        if (xVarArr == null || i2 < 0 || i2 >= xVarArr.length || xVarArr[i2] == null) {
            return;
        }
        xVarArr[i2].s(i2, new int[]{i3, i4}, null, null);
    }

    public static void z(x[] xVarArr, int i2, int i3, String str) {
        if (xVarArr == null || i2 < 0 || i2 >= xVarArr.length || xVarArr[i2] == null) {
            return;
        }
        xVarArr[i2].s(i2, new int[]{i3}, null, new String[]{str});
    }

    public void E(y.b bVar, int i2, int i3, String str) {
        H(bVar, i2, new int[]{i3}, null, new String[]{str});
    }

    public void F(y.b bVar, int i2, String str) {
        H(bVar, i2, null, null, new String[]{str});
    }

    public void G(y.b bVar, int i2, int... iArr) {
        H(bVar, i2, iArr, null, null);
    }

    public void H(y.b bVar, int i2, int[] iArr, float[] fArr, String[] strArr) {
        synchronized (this.f16998a) {
            a aVarC = c();
            aVarC.c(bVar, i2, iArr, fArr, strArr);
            aVarC.a();
        }
    }

    public a c() {
        return !this.f16999b.isEmpty() ? this.f16999b.remove(0) : new a();
    }

    public final void d() {
        int iBeginBroadcast = beginBroadcast();
        if (this.f17001d) {
            Log.e(this.f17003f, " start checkCallbacks ===>> ");
        }
        if (iBeginBroadcast > 0) {
            for (int i2 = 0; i2 < iBeginBroadcast; i2++) {
                IBinder iBinderAsBinder = getBroadcastItem(i2).asBinder();
                BitSet bitSet = (BitSet) getBroadcastCookie(i2);
                if (this.f17001d) {
                    Log.e(this.f17003f, " List: " + this + " binder: " + f(iBinderAsBinder) + " bitSet:" + bitSet);
                }
            }
        }
        if (this.f17001d) {
            Log.e(this.f17003f, "end checkCallbacks <<=== ");
        }
        finishBroadcast();
    }

    public void e(IBinder iBinder) {
        synchronized (this.f17002e) {
            this.f17002e.remove(iBinder);
        }
    }

    public String f(IBinder iBinder) {
        String str;
        synchronized (this.f17002e) {
            str = this.f17002e.get(iBinder);
            if (s0.t(str)) {
                str = "UNKNOWN";
            }
        }
        return str;
    }

    public String g() {
        return this.f17004g;
    }

    @Override // android.os.RemoteCallbackList
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void onCallbackDied(y.b bVar) {
        super.onCallbackDied(bVar);
        unregister(bVar);
        if (this.f17001d) {
            Log.e(this.f17003f, " List: " + this + " ======>>>>  onCallbackDied:" + f(bVar.asBinder()));
            e(bVar.asBinder());
        }
    }

    public void i(String str, IBinder iBinder) {
        synchronized (this.f17002e) {
            this.f17002e.put(iBinder, str);
        }
    }

    public void j(a aVar) {
        if (this.f17000c.contains(aVar)) {
            this.f16999b.add(aVar);
        }
    }

    @Override // android.os.RemoteCallbackList
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public synchronized boolean register(y.b bVar) {
        return super.register(bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean m(y.b bVar, int i2) {
        boolean z2;
        int i3;
        Exception e2;
        synchronized (this.f16998a) {
            int i4 = 0;
            z2 = 1;
            try {
                try {
                    IBinder iBinderAsBinder = bVar.asBinder();
                    int iBeginBroadcast = beginBroadcast();
                    if (iBeginBroadcast > 0) {
                        i3 = 0;
                        while (i4 < iBeginBroadcast) {
                            try {
                                IBinder iBinderAsBinder2 = ((y.b) getBroadcastItem(i4)).asBinder();
                                if (iBinderAsBinder2 != null && iBinderAsBinder2.equals(iBinderAsBinder)) {
                                    ((BitSet) getBroadcastCookie(i4)).set(i2);
                                    i3 = 1;
                                }
                                if (i3 != 0) {
                                    break;
                                }
                                i4++;
                            } catch (Exception e3) {
                                e2 = e3;
                                if (this.f17001d) {
                                    Log.e(this.f17003f, "register -- ERROR!! [" + e2.getMessage() + "]");
                                }
                                e2.printStackTrace();
                                finishBroadcast();
                                i4 = i3;
                            }
                        }
                        i4 = i3;
                    }
                    finishBroadcast();
                } catch (Exception e4) {
                    i3 = 0;
                    e2 = e4;
                }
                if (i4 == 0) {
                    BitSet bitSet = new BitSet();
                    bitSet.set(i2);
                    register(bVar, bitSet);
                } else {
                    z2 = i4;
                }
                if (this.f17001d) {
                    Log.e(this.f17003f, "List: " + this + " register binder : " + f(bVar.asBinder()) + " uid: " + i2);
                    d();
                }
            } catch (Throwable th) {
                finishBroadcast();
                throw th;
            }
        }
        return z2;
    }

    public void n(String str) {
        this.f17003f = str;
        this.f17004g = str.replace("-TRAN", ProxyProperties.LOCAL_EXCL_LIST);
    }

    public void p(y.b bVar, int i2) {
        BitSet bitSet;
        synchronized (this.f16998a) {
            try {
                int iBeginBroadcast = beginBroadcast();
                IBinder iBinderAsBinder = bVar.asBinder();
                for (int i3 = 0; i3 < iBeginBroadcast; i3++) {
                    if (iBinderAsBinder.equals(getBroadcastItem(i3).asBinder()) && (bitSet = (BitSet) getBroadcastCookie(i3)) != null && bitSet.get(i2)) {
                        bitSet.clear(i2);
                    }
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                finishBroadcast();
                throw th;
            }
            finishBroadcast();
            if (this.f17001d) {
                Log.e(this.f17003f, "List: " + this + " unregister binder : " + f(bVar.asBinder()) + " uid: " + i2);
                d();
            }
        }
    }

    @Override // android.os.RemoteCallbackList
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public synchronized boolean unregister(y.b bVar) {
        return super.unregister(bVar);
    }

    public void r(int i2, int i3) {
        s(i2, new int[]{i3}, null, null);
    }

    public void s(int i2, int[] iArr, float[] fArr, String[] strArr) {
        y.b broadcastItem;
        synchronized (this.f16998a) {
            int iBeginBroadcast = beginBroadcast();
            for (int i3 = 0; i3 < iBeginBroadcast; i3++) {
                try {
                    try {
                        if (((BitSet) getBroadcastCookie(i3)).get(i2) && (broadcastItem = getBroadcastItem(i3)) != null) {
                            a aVarC = c();
                            aVarC.c(broadcastItem, i2, iArr, fArr, strArr);
                            aVarC.a();
                        }
                    } catch (Exception e2) {
                        if (this.f17001d) {
                            Log.e(this.f17003f, "update -- ERROR!! [" + e2 + "]");
                        }
                        e2.printStackTrace();
                        finishBroadcast();
                    }
                } catch (Throwable th) {
                    finishBroadcast();
                    throw th;
                }
            }
            finishBroadcast();
        }
    }
}
