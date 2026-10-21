package o;

import android.app.m;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import com.syu.ipc.IRemoteModule;
import com.syu.ipc.IRemoteToolkit;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes4.dex */
public final class e implements ServiceConnection {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f1093i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f1094b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1095d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public IRemoteToolkit f1096e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SparseArray f1097f = new SparseArray();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1098g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Handler f1099h;

    public e(Context context, String str, String str2) {
        this.f1094b = context;
        this.c = str;
        this.f1095d = str2;
        EventBus.getDefault();
        HandlerThread handlerThread = new HandlerThread("keep_conection:".concat(str2));
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        t.b.e(looper);
        this.f1099h = new Handler(looper);
        a();
    }

    public static void b(e eVar, int i2, int i3, int[] iArr, String[] strArr, int i4) {
        if ((i4 & 16) != 0) {
            strArr = null;
        }
        eVar.c(i2, i3, iArr, null, strArr);
    }

    public final void a() {
        f1093i = true;
        Intent intent = new Intent(this.c);
        intent.setPackage(this.f1095d);
        this.f1094b.bindService(intent, this, 1);
        Handler handler = this.f1099h;
        if (handler != null) {
            handler.postDelayed(new android.net.b(this, 15), new Random().nextInt(1500) + 500);
        }
    }

    public final void c(int i2, int i3, int[] iArr, float[] fArr, String[] strArr) {
        c cVar = (c) this.f1097f.get(i2);
        if (cVar != null) {
            try {
                cVar.f1090a.cmd(i3, iArr, fArr, strArr);
            } catch (Exception unused) {
            }
        }
    }

    public final void d(int i2, int... iArr) {
        Integer num;
        t.b.h(iArr, "codes");
        c cVar = (c) this.f1097f.get(i2);
        if (cVar != null) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            t.b.h(iArrCopyOf, "codes");
            Log.e("ipc", "----------  observe " + Arrays.toString(iArrCopyOf));
            for (int i3 : iArrCopyOf) {
                f fVar = cVar.f1091b;
                LinkedHashMap linkedHashMap = fVar.c;
                Boolean bool = (Boolean) linkedHashMap.get(Integer.valueOf(i3));
                if (bool != null) {
                    bool.booleanValue();
                    if (!bool.booleanValue()) {
                        linkedHashMap.put(Integer.valueOf(i3), Boolean.TRUE);
                    }
                    num = 1;
                } else {
                    num = null;
                }
                if (num == null || num.intValue() != 1) {
                    linkedHashMap.put(Integer.valueOf(i3), Boolean.TRUE);
                }
                m.p("----------  observe ", i3, "ipc");
                try {
                    cVar.f1090a.register(fVar, i3, 1);
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final /* synthetic */ void onBindingDied(ComponentName componentName) {
        android.content.a.a(this, componentName);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Log.e("remote", " onServiceConnected <<===>> " + iBinder);
        if (iBinder != null) {
            this.f1096e = IRemoteToolkit.Stub.asInterface(iBinder);
            Log.e("remote", " onServiceConnected <<===>>");
            for (int i2 = 0; i2 < 21; i2++) {
                IRemoteToolkit iRemoteToolkit = this.f1096e;
                IRemoteModule remoteModule = iRemoteToolkit != null ? iRemoteToolkit.getRemoteModule(i2) : null;
                if (remoteModule != null) {
                    f fVar = new f(i2);
                    c cVar = new c(remoteModule, fVar);
                    this.f1097f.put(i2, cVar);
                    for (Map.Entry entry : fVar.c.entrySet()) {
                        try {
                            cVar.f1090a.register(fVar, ((Number) entry.getKey()).intValue(), ((Boolean) entry.getValue()).booleanValue() ? 1 : 0);
                        } catch (Exception unused) {
                        }
                    }
                }
            }
            this.f1098g = true;
            EventBus.getDefault().post(new a(true));
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Log.e("remote", " onServiceDisconnected  " + componentName + "   keep: " + f1093i);
        this.f1096e = null;
        this.f1097f.clear();
        if (f1093i) {
            a();
        } else {
            this.f1098g = false;
            EventBus.getDefault().post(new a(false));
        }
    }
}
