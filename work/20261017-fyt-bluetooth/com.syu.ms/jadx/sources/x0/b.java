package x0;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.os.Handler;
import app.App;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class b extends d implements SensorEventListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SensorManager f17877c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Handler f17878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LinkedList<Float> f17879e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f17880f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f17881g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f17882h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Runnable f17883i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Runnable f17884j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Runnable f17885k;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Boolean f17886a = null;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean zBooleanValue = this.f17886a.booleanValue();
            boolean z2 = b.this.f17882h;
            if (zBooleanValue != z2) {
                Boolean boolValueOf = Boolean.valueOf(z2);
                this.f17886a = boolValueOf;
                u0.d.d1(boolValueOf.booleanValue() ? 1 : 0);
            }
        }
    }

    /* JADX INFO: renamed from: x0.b$b, reason: collision with other inner class name */
    public class RunnableC0126b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f17888a = false;

        public RunnableC0126b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = u0.b.f17306a0 == 1 && u0.b.f17323g == 1;
            if (z2 == this.f17888a) {
                return;
            }
            this.f17888a = z2;
            if (z2) {
                b bVar = b.this;
                bVar.f17878d.postDelayed(bVar.f17885k, 2000L);
                return;
            }
            try {
                b bVar2 = b.this;
                bVar2.f17878d.removeCallbacks(bVar2.f17885k);
                b bVar3 = b.this;
                bVar3.f17877c.unregisterListener(bVar3);
            } catch (Exception unused) {
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.f17878d.removeCallbacks(this);
            b.this.l(5);
        }
    }

    public b(int i2) {
        super(i2);
        this.f17877c = null;
        this.f17878d = new Handler();
        this.f17879e = new LinkedList<>();
        this.f17880f = 10;
        this.f17881g = 1000;
        this.f17882h = false;
        this.f17883i = new a();
        this.f17884j = new RunnableC0126b();
        this.f17885k = new c();
        this.f17877c = (SensorManager) App.c().getSystemService(Context.SENSOR_SERVICE);
    }

    @Override // x0.d
    public void b() {
        this.f17879e.clear();
        u0.c.f17386m.d(this.f17884j);
        u0.c.f17378e.d(this.f17884j);
    }

    @Override // x0.d
    public void j() {
        u0.c.f17378e.a(this.f17884j, 0);
        u0.c.f17386m.a(this.f17884j, 1);
    }

    public void l(int... iArr) {
        if (u0.b.f17306a0 == 1 && u0.b.f17323g == 1 && iArr != null) {
            for (int i2 : iArr) {
                this.f17877c.registerListener(this, this.f17877c.getDefaultSensor(i2), 2);
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 5) {
            float f2 = sensorEvent.values[0];
            if (g.e.j(61)) {
                this.f17879e.add(Float.valueOf(f2));
                if (this.f17879e.size() == 10) {
                    float fFloatValue = 0.0f;
                    Iterator<Float> it = this.f17879e.iterator();
                    while (it.hasNext()) {
                        fFloatValue += it.next().floatValue();
                    }
                    this.f17882h = fFloatValue <= 10000.0f;
                    this.f17878d.removeCallbacks(this.f17883i);
                    this.f17878d.removeCallbacks(this.f17883i, Integer.valueOf(ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT));
                    this.f17879e.clear();
                }
            }
        }
    }
}
