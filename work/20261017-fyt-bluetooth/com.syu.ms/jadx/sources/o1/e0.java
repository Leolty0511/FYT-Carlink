package o1;

import android.net.ProxyProperties;
import com.syu.jni.JniSerial;

/* JADX INFO: loaded from: classes2.dex */
public class e0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e<String> f16844d = new e<>(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f16845a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f16846b = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16847c = false;

    public int a() {
        return this.f16845a;
    }

    public boolean b() {
        return this.f16847c;
    }

    public int c(String str) {
        e<String> eVar = f16844d;
        int iD = eVar.d(str, -1);
        if (!s0.t(str)) {
            this.f16846b = str;
        }
        if (iD > 0) {
            this.f16845a = iD;
        } else {
            int iOpen = JniSerial.open(str);
            this.f16845a = iOpen;
            if (iOpen > 0) {
                eVar.f(str, iOpen);
            }
        }
        return this.f16845a;
    }

    public byte[] d() {
        int i2 = this.f16845a;
        if (i2 > 0) {
            return JniSerial.read(i2, 512, 5);
        }
        h();
        return null;
    }

    public void e(boolean z2) {
        this.f16847c = z2;
    }

    public void f(int i2) {
        this.f16845a = i2;
    }

    public void g(int i2) {
        int i3 = this.f16845a;
        if (i3 > 0) {
            JniSerial.setup(i3, i2, 8, 78, 1);
        }
    }

    public final void h() {
        try {
            Thread.sleep(100L);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
    }

    public synchronized void i(byte[] bArr) {
        int i2 = this.f16845a;
        if (i2 > 0) {
            JniSerial.write(i2, bArr, 0, bArr.length);
        }
    }
}
