package o1;

import com.syu.jni.JniSpectrum;

/* JADX INFO: loaded from: classes2.dex */
public class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f16903a;

    public int a(String str) {
        int iOpen = JniSpectrum.open(str);
        this.f16903a = iOpen;
        return iOpen;
    }

    public int b() {
        int i2 = this.f16903a;
        if (i2 > 0) {
            return JniSpectrum.read(i2);
        }
        return 0;
    }
}
