package l;

import android.app.m;
import android.net.ConnectivityManager;
import com.syu.carlink.utils.ScreenDensityCalculator$DeviceType;

/* JADX INFO: loaded from: classes4.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1057b;
    public final ScreenDensityCalculator$DeviceType c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f1058d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f1059e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f1060f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f1061g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f1062h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f1063i;

    public c(int i2, int i3, ScreenDensityCalculator$DeviceType screenDensityCalculator$DeviceType, float f2, double d2, float f3, float f4, float f5, float f6) {
        t.b.h(screenDensityCalculator$DeviceType, ConnectivityManager.EXTRA_DEVICE_TYPE);
        this.f1056a = i2;
        this.f1057b = i3;
        this.c = screenDensityCalculator$DeviceType;
        this.f1058d = f2;
        this.f1059e = d2;
        this.f1060f = f3;
        this.f1061g = f4;
        this.f1062h = f5;
        this.f1063i = f6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f1056a == cVar.f1056a && this.f1057b == cVar.f1057b && this.c == cVar.c && Float.compare(this.f1058d, cVar.f1058d) == 0 && Double.compare(this.f1059e, cVar.f1059e) == 0 && Float.compare(this.f1060f, cVar.f1060f) == 0 && Float.compare(this.f1061g, cVar.f1061g) == 0 && Float.compare(this.f1062h, cVar.f1062h) == 0 && Float.compare(this.f1063i, cVar.f1063i) == 0;
    }

    public final int hashCode() {
        int iFloatToIntBits = (Float.floatToIntBits(this.f1058d) + ((this.c.hashCode() + (((this.f1056a * 31) + this.f1057b) * 31)) * 31)) * 31;
        long jDoubleToLongBits = Double.doubleToLongBits(this.f1059e);
        return Float.floatToIntBits(this.f1063i) + ((Float.floatToIntBits(this.f1062h) + ((Float.floatToIntBits(this.f1061g) + ((Float.floatToIntBits(this.f1060f) + ((iFloatToIntBits + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)))) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Device: [\nwidthPx: ");
        sb.append(this.f1056a);
        sb.append(" \nheightPx: ");
        sb.append(this.f1057b);
        sb.append(" \ndeviceType: ");
        sb.append(this.c.getTitle());
        sb.append(" \nratio: ");
        sb.append(this.f1058d);
        sb.append(" \ndiagonalPx: ");
        sb.append(this.f1059e);
        sb.append(" \nestimateInch: ");
        sb.append(this.f1060f);
        sb.append(" \ndpi: ");
        sb.append(this.f1061g);
        sb.append(" \ndensity: ");
        sb.append(this.f1062h);
        sb.append(" \nscaledDensity: ");
        return m.i(sb, this.f1063i, " \n]");
    }
}
