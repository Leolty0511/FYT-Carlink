package o1;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static a f16810h = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f16811a = Float.MIN_VALUE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f16812b = Float.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16813c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f16814d = Float.MIN_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f16815e = Float.MIN_VALUE;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList<Float> f16816f = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f16817g = 10;

    public void a(float f2) {
        Log.e("Gps", " calcBaseValue value: " + f2);
        float f3 = this.f16812b;
        if (f3 == Float.MIN_VALUE) {
            this.f16812b = f2;
        } else if (Math.abs(f3 - f2) > 0.5f) {
            this.f16812b = f2;
            this.f16816f.clear();
        }
        this.f16816f.add(Float.valueOf(f2));
        if (this.f16816f.size() == 10) {
            float fFloatValue = 0.0f;
            Iterator<Float> it = this.f16816f.iterator();
            while (it.hasNext()) {
                fFloatValue += it.next().floatValue();
            }
            float f4 = fFloatValue / 10.0f;
            this.f16812b = f4;
            this.f16811a = f4;
            this.f16814d = f4;
            this.f16816f.clear();
            Log.e("Gps", " calcBaseValue Location mBase: " + this.f16811a + " mAltitude: " + this.f16814d);
        }
    }

    public void b(float f2) {
        Log.e("Gps", " fixAltitude from mcu altitude:" + f2);
        if (this.f16813c) {
            float f3 = this.f16814d;
            if (f3 == Float.MIN_VALUE) {
                return;
            }
            float f4 = this.f16815e;
            if (f4 != Float.MIN_VALUE) {
                this.f16814d = f3 + (f2 - f4);
            }
            this.f16815e = f2;
            e(this.f16814d);
            Log.e("Gps", " fixAltitude Location mBase: " + this.f16811a + " mAltitude: " + this.f16814d + " from mcu altitude:" + f2);
        }
    }

    public float c() {
        Log.e("Gps", " getAltitude Location mBase: " + this.f16811a + " mAltitude: " + this.f16814d);
        return this.f16814d;
    }

    public boolean d() {
        return this.f16813c && this.f16811a != Float.MIN_VALUE;
    }

    public void e(float f2) {
        if (this.f16814d != f2) {
            this.f16814d = f2;
            u0.d.L3(183, f2);
        }
    }
}
