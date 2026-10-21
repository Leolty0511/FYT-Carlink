package i1;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import i1.e;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a<Pack extends e> extends s<Pack> implements b0.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public b0 f2544h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Handler f2545i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f2546j;

    /* JADX INFO: renamed from: i1.a$a, reason: collision with other inner class name */
    public class RunnableC0052a implements Runnable {
        public RunnableC0052a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.e("Device", "=======>>>  0x03, 0x02, 0x01, 0x00   serial:" + a.this.f2544h);
            if (a.this.f2544h != null) {
                Log.e("Device", "=======>>>  0x03, 0x02, 0x01, 0x00");
                a.this.f2544h.f(3, 2, 1, 0);
            }
            Handler handler = a.this.f2545i;
            if (handler != null) {
                handler.removeCallbacks(this);
                a.this.f2545i.postDelayed(this, 1000L);
            }
        }
    }

    public a(int i2, int i3) {
        super(i2, i3);
        this.f2545i = null;
        this.f2546j = new RunnableC0052a();
    }

    @Override // i1.b0.a
    public void a(b0 b0Var) {
        this.f2544h = b0Var;
    }

    @Override // i1.b0.a
    public void c(byte[] bArr) {
        b(bArr);
    }

    public void v() {
        if (this.f2545i == null) {
            HandlerThread handlerThread = new HandlerThread("plgin-Handler");
            handlerThread.start();
            this.f2545i = new Handler(handlerThread.getLooper());
        }
    }
}
