package base;

import a.f;
import android.media.AudioManager;
import android.net.ProxyProperties;
import android.util.Log;
import m1.c;
import u0.i;

/* JADX INFO: loaded from: classes.dex */
public interface a {

    /* JADX INFO: renamed from: base.a$a, reason: collision with other inner class name */
    public static class C0011a implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f323a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f324b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f325c = -1;

        public C0011a(int i2) {
            this.f323a = 3;
            this.f324b = -1;
            this.f323a = i2;
            int i3 = i();
            this.f324b = c.c(i2 + 1005, Math.max(0, Math.min(Configure.Property.AUDIO_STREAM_MAX_LIMIT.f(ProxyProperties.LOCAL_EXCL_LIST + this.f323a, i3), i3)));
        }

        @Override // base.a
        public void a(boolean z2) {
        }

        @Override // base.a
        public int b() {
            return this.f323a;
        }

        @Override // base.a
        public int c() {
            return f.f().getStreamVolume(this.f323a);
        }

        @Override // base.a
        public boolean d() {
            return ((Boolean) new j1.c("isStreamMute").g(f.f()).e(AudioManager.class).d(Integer.valueOf(this.f323a)).a()).booleanValue();
        }

        @Override // base.a
        public int e() {
            if (this.f324b < 0) {
                this.f324b = i();
            }
            return this.f324b;
        }

        @Override // base.a
        public int f(int i2) {
            if (this.f325c >= 0) {
                i2 = e();
            }
            Log.e("sound", " audioType = " + this.f323a + "  current: " + c() + " to :" + i2 + " max: " + e() + " sys max: " + i());
            f.b.f1841d.f1844c.i(this.f323a, i2);
            return 0;
        }

        @Override // base.a
        public void g(int i2) {
            if (i2 < 0) {
                return;
            }
            int iMin = Math.min(i2, i());
            boolean z2 = iMin != this.f324b;
            this.f324b = iMin;
            if (z2) {
                c.e(this.f323a + 1005, iMin);
                m1.a.f13517f.f16860a.edit().apply();
            }
            int iH = h();
            if (!f.b.f1841d.f1844c.h() || c() == iH) {
                f.f().setStreamVolume(this.f323a, e(), 0);
                return;
            }
            if (this.f325c >= 0) {
                iH = e();
            }
            f.f().setStreamVolume(this.f323a, iH, 0);
        }

        public int h() {
            boolean z2 = h0.c.G == 1 || h0.c.f2448m0 || (i.l3().r3() && u0.b.D == 15);
            boolean z3 = y0.f.T0 != 0;
            boolean z4 = y0.f.Q0 != 0;
            int i2 = ((this.f324b * y0.f.L) + 10) / 20;
            if (z2) {
                return c();
            }
            if (z3 && this.f323a != a.c.f43e.b()) {
                return c();
            }
            if (!z4 || this.f323a != a.c.f40b.b()) {
                return this.f324b;
            }
            if (y0.f.J == 1) {
                return i2;
            }
            return 0;
        }

        public int i() {
            return f.f().getStreamMaxVolume(this.f323a);
        }
    }

    void a(boolean z2);

    int b();

    int c();

    boolean d();

    int e();

    int f(int i2);

    void g(int i2);
}
