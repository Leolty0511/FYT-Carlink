package base;

import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pools;
import android.util.SparseArray;
import java.util.Arrays;
import o1.h0;
import o1.p;
import o1.x;
import o1.z;
import y.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends c.a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public h0 f327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Looper f328c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Handler f329d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pools.SynchronizedPool<a> f326a = new Pools.SynchronizedPool<>(20);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SparseArray<z> f330e = new SparseArray<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final x f331f = new x();

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f332a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f333b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int[] f334c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float[] f335d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String[] f336e;

        public a() {
        }

        public String toString() {
            return "Entry{ action: " + this.f332a + " cmdid: " + this.f333b + " ints: " + Arrays.toString(this.f334c) + " flts: " + Arrays.toString(this.f335d) + " strs: " + Arrays.toString(this.f336e) + " }";
        }
    }

    /* JADX INFO: renamed from: base.b$b, reason: collision with other inner class name */
    public class HandlerC0012b extends Handler {
        public HandlerC0012b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            Object obj = message.obj;
            if (obj instanceof a) {
                a aVar = (a) obj;
                int i2 = aVar.f332a;
                if (i2 == 0) {
                    b.this.N2(aVar.f333b, aVar.f334c, aVar.f335d, aVar.f336e);
                } else if (i2 == 1) {
                    b.this.O2(aVar.f333b, aVar.f334c, aVar.f335d, aVar.f336e);
                }
                b.this.V2(aVar);
            }
        }
    }

    public b() {
        HandlerThread handlerThread = new HandlerThread("Thread-" + getClass().getSimpleName());
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        this.f328c = looper;
        this.f329d = new HandlerC0012b(looper);
    }

    public void H0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        x xVar = this.f331f;
        if (xVar.f17001d) {
            Log.e(xVar.g(), "     updateCode :  " + i2 + "  ints :" + Arrays.toString(iArr) + "  flts :" + Arrays.toString(fArr) + "  strs :" + Arrays.toString(strArr));
        }
        this.f331f.s(i2, iArr, fArr, strArr);
    }

    public synchronized void K2(int i2, p pVar) {
        if (this.f330e.indexOfKey(i2) < 0) {
            this.f330e.append(i2, new z());
        }
        this.f330e.get(i2).a(pVar);
    }

    public x L2() {
        return this.f331f;
    }

    public h0 M2() {
        return this.f327b;
    }

    public abstract void N2(int i2, int[] iArr, float[] fArr, String[] strArr);

    public abstract void O2(int i2, int[] iArr, float[] fArr, String[] strArr);

    public void P2(String str) {
        this.f327b = new h0(str);
        u0.c.f17376c.a(this, 1);
    }

    public abstract void Q2(h0 h0Var);

    public void R2(int i2, int i3, int[] iArr, float[] fArr, String[] strArr) {
        a aVarS2 = S2();
        aVarS2.f332a = i2;
        aVarS2.f333b = i3;
        aVarS2.f334c = iArr;
        aVarS2.f335d = fArr;
        aVarS2.f336e = strArr;
        Handler handler = this.f329d;
        if (handler != null) {
            Message messageObtainMessage = handler.obtainMessage();
            messageObtainMessage.obj = aVarS2;
            messageObtainMessage.sendToTarget();
        }
    }

    public a S2() {
        a aVarAcquire = this.f326a.acquire();
        return aVarAcquire == null ? new a() : aVarAcquire;
    }

    public void T2(int i2, Object obj) {
        if (this.f330e.indexOfKey(i2) < 0) {
            return;
        }
        this.f330e.get(i2).c(obj);
    }

    public void U2(int i2, int i3) {
        this.f327b.q(i2, i3);
    }

    public void V2(a aVar) {
        this.f326a.release(aVar);
    }

    public void W2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        R2(1, i2, iArr, fArr, strArr);
    }

    public void Y1(y.b bVar, int i2, int i3) {
        x xVar;
        if (Configure.Property.DEBUG_CALLING_PID.b(false) || ((xVar = this.f331f) != null && xVar.f17001d)) {
            String strTrim = q1.a.d("/proc/" + Binder.getCallingPid() + "/cmdline", "unknow").trim();
            Log.e(this.f331f.g(), " register =  " + bVar + " cmdId: " + i2 + " update: " + i3 + " from: " + Binder.getCallingPid() + ":" + strTrim);
            x xVar2 = this.f331f;
            if (xVar2.f17001d) {
                xVar2.i(strTrim, bVar.asBinder());
            }
        }
    }

    @Override // y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (Configure.Property.DEBUG_CALLING_PID.b(false) || this.f331f.f17001d) {
            String strTrim = q1.a.d("/proc/" + Binder.getCallingPid() + "/cmdline", "unknow").trim();
            Log.e(this.f331f.g(), "cmd cmdid =  " + i2 + " " + Arrays.toString(iArr) + " " + Arrays.toString(fArr) + " " + Arrays.toString(strArr) + " from: " + Binder.getCallingPid() + ":" + strTrim);
        }
        R2(0, i2, iArr, fArr, strArr);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (u0.b.f17320f != 0) {
            Q2(this.f327b);
            u0.c.f17376c.d(this);
        }
    }
}
