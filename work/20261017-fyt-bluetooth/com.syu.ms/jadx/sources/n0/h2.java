package n0;

import android.media.SoundPool;
import android.media.videoeditor.MediaArtistNativeHelper;
import android.net.ConnectivityManager;
import android.net.UrlQuerySanitizer;
import android.os.SystemProperties;
import android.util.SparseIntArray;
import app.App;
import com.syu.ms.R;
import module.sound.AudioDevice;
import module.sound.C32107;

/* JADX INFO: loaded from: classes2.dex */
public class h2 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f16445z = 0;
    public SoundPool A = null;
    public int B = -1;
    public o1.p C = new a();

    public class a implements o1.p {
        public a() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                int iIntValue = ((Integer) obj).intValue();
                if (iIntValue == 405 || iIntValue == 404 || iIntValue == 91) {
                    a.f.u().b(0);
                    if (!a.f.u().isShowing()) {
                        a.f.u().show();
                    }
                    a.f.u().c();
                }
            } catch (Exception unused) {
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SystemProperties.getBoolean("persist.fyt.rotatevoice", false)) {
                y0.f.U0 = 3;
                y0.h.p0(1);
                h2 h2Var = h2.this;
                h2Var.A.play(h2Var.B, 1.0f, 1.0f, 0, 0, 1.0f);
            }
        }
    }

    @Override // n0.c4
    public void C3() {
        super.C3();
    }

    @Override // n0.c4
    public void M2() throws Throwable {
        super.M2();
        o1.u.C0("com.fvision.camera.service.ForegroundService", "com.fvision.camera");
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() == 6) {
            u0.b.t4[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
        } else {
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            if (g.e.e() == 7) {
                y0.b.r();
            }
        }
        if (o1.q0.v()) {
            h0.c.f2446l0 = true;
        }
    }

    @Override // n0.c4
    public void S2() throws Throwable {
        super.S2();
    }

    public void S3() {
        r0.a aVarX2 = r0.a.X2();
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(23, UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL);
        sparseIntArray.put(24, UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL);
        sparseIntArray.put(30, 91);
        aVarX2.d3(sparseIntArray, false);
        aVarX2.e3(this.C);
    }

    @Override // n0.c4
    public void X2() throws Throwable {
        u0.b.f17337k1 = 1;
        SoundPool soundPool = new SoundPool(5, 1, 5);
        this.A = soundPool;
        this.B = soundPool.load(App.c(), R.raw.cnwav, 1);
        u0.i.l3().f17472p = new b();
        S3();
        SystemProperties.set("persist.gesture.switch", "1");
        String str = SystemProperties.get("persist.sys.syu.audio", "32107");
        if ("32107".equals(str)) {
            C32107.z1 = 23;
            C32107.A1 = 5;
            AudioDevice.Q0(new int[]{0, 180, 168, 158, 150, 143, 137, 131, 126, 122, 118, 114, 112, 110, 108, 106, 104, 102, 100, 98, 96, 94, 92, 90, 88, 86, 84, 82, 80, 78, 76, 74, 72, 70, 68, 66, 64});
        }
        super.X2();
        if ("32107".equals(str)) {
            int[] iArr = {30, 12, 14, 50, 13, 14, 80, 14, 14, 125, 15, 14, 200, 14, 14, 320, 13, 14, 500, 14, 14, 800, 15, 14, 1000, 16, 14, 1250, 15, 14, 2000, 14, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 15, 14, 5000, 14, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 13, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 13, 14, 16000, 12, 14};
            int[] iArr2 = {30, 7, 14, 50, 6, 14, 80, 6, 14, 125, 6, 14, 200, 9, 14, 320, 11, 14, 500, 15, 14, 800, 16, 14, 1000, 16, 14, 1250, 16, 14, 2000, 17, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 15, 14, 5000, 14, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 9, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 9, 14, 16000, 9, 14};
            int[] iArr3 = {30, 20, 14, 50, 19, 14, 80, 18, 14, 125, 17, 14, 200, 15, 14, 320, 13, 14, 500, 12, 14, 800, 12, 14, 1000, 12, 14, 1250, 12, 14, 2000, 12, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 12, 14, 5000, 12, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 12, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 12, 14, 16000, 12, 14};
            AudioDevice.W().Z0(8, iArr);
            AudioDevice.W().I(9);
            AudioDevice.W().Z0(9, iArr2);
            AudioDevice.W().I(10);
            AudioDevice.W().Z0(10, iArr3);
        } else if ("7602".equals(str)) {
            int[] iArr4 = {50, 11, 14, 80, 13, 14, 125, 15, 14, 200, 16, 14, 500, 15, 14, 800, 15, 14, 1000, 15, 14, 2000, 14, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 14, 14, 5000, 13, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 13, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 12, 14, 16000, 12, 14};
            int[] iArr5 = {50, 21, 14, 80, 19, 14, 125, 17, 14, 200, 14, 14, 500, 13, 14, 800, 12, 14, 1000, 12, 14, 2000, 12, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 12, 14, 5000, 12, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 12, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 12, 14, 16000, 12, 14};
            AudioDevice.W().Z0(9, new int[]{50, 6, 14, 80, 6, 14, 125, 6, 14, 200, 9, 14, 500, 14, 14, 800, 15, 14, 1000, 15, 14, 2000, 16, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 15, 14, 5000, 14, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 11, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 11, 14, 16000, 11, 14});
            AudioDevice.W().Z0(10, iArr5);
            AudioDevice.W().Z0(8, iArr4);
        }
        u0.b.h2 = true;
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        u0.b.f17337k1 = 1;
        SystemProperties.set("persist.gesture.switch", "1");
        if (g.e.g() != 1 && g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        this.f16349n = 0;
        this.f16350o = 1;
        j4.f16465c = "HBS";
        m1.a.f13515d = 134;
        super.j3();
        if (o1.q0.v()) {
            u0.b.P2 = 50;
            u0.b.R2 = 50;
        }
    }
}
