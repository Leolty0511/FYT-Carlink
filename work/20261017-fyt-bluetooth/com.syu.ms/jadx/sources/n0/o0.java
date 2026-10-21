package n0;

import android.annotation.SuppressLint;
import android.media.AudioManager;
import android.text.TextUtils;
import android.util.Log;
import chip.Chip;
import java.io.File;
import k0.nt;
import module.sound.AudioDevice;
import module.sound.C3702;

/* JADX INFO: loaded from: classes2.dex */
public class o0 extends c4 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int[] f16514z = null;
    public boolean A = false;
    public final Runnable B = new a();
    public final o1.s C = new b();
    public final o1.s D = new c();
    public final base.a E = new d();
    public final base.a F = new e();

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16515a = 0;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.f16515a;
            int i3 = u0.b.f17306a0;
            if (i2 != i3) {
                this.f16515a = i3;
                if (i3 == 1) {
                    a.i.Q(26);
                }
            }
        }
    }

    public class b implements o1.s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Integer f16517a = null;

        public b() {
        }

        @Override // o1.s
        public void R(boolean z2) {
            Log.e("Qin", "=======================>>>>>  isTop   : " + z2 + "  mLast : " + this.f16517a + "  DataMain.sAppId: " + u0.b.D);
            o0.this.A = z2;
            if (z2) {
                this.f16517a = Integer.valueOf(u0.b.D);
                if (u0.b.D != 10) {
                    u0.b.f17311c.c(10);
                    return;
                }
                return;
            }
            Integer num = this.f16517a;
            if (num == null || u0.b.D != 10) {
                return;
            }
            u0.b.f17311c.c(num.intValue());
            this.f16517a = null;
        }
    }

    public class c implements o1.s {
        public c() {
        }

        @Override // o1.s
        public void R(boolean z2) {
            u0.d.I3(198, z2 ? 1 : 0);
        }
    }

    public class d implements base.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16520a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f16521b = -1;

        public d() {
        }

        @Override // base.a
        public void a(boolean z2) {
        }

        @Override // base.a
        public int b() {
            return this.f16520a;
        }

        @Override // base.a
        public int c() {
            return a.f.f().getStreamVolume(this.f16520a);
        }

        @Override // base.a
        public boolean d() {
            return ((Boolean) new j1.c("isStreamMute").g(a.f.f()).e(AudioManager.class).d(Integer.valueOf(this.f16520a)).a()).booleanValue();
        }

        @Override // base.a
        public int e() {
            if (this.f16521b < 0) {
                this.f16521b = h();
            }
            return this.f16521b;
        }

        @Override // base.a
        public int f(int i2) {
            if (o0.this.A) {
                i2 = 0;
            }
            Log.e("sound", " audioType = " + this.f16520a + "  current: " + c() + " to :" + i2 + " mute : " + o0.this.A);
            a.f.f().setStreamVolume(this.f16520a, i2, 0);
            return 0;
        }

        @Override // base.a
        public void g(int i2) {
            if (i2 < 0) {
                return;
            }
            this.f16521b = Math.min(i2, h());
            int iC = c();
            int i3 = this.f16521b;
            if (iC > i3) {
                f(i3);
            }
        }

        public int h() {
            return a.f.f().getStreamMaxVolume(this.f16520a);
        }
    }

    public class e implements base.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16523a = 3;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f16524b = -1;

        public e() {
        }

        @Override // base.a
        public void a(boolean z2) {
        }

        @Override // base.a
        public int b() {
            return this.f16523a;
        }

        @Override // base.a
        public int c() {
            return a.f.f().getStreamVolume(this.f16523a);
        }

        @Override // base.a
        public boolean d() {
            return ((Boolean) new j1.c("isStreamMute").g(a.f.f()).e(AudioManager.class).d(Integer.valueOf(this.f16523a)).a()).booleanValue();
        }

        @Override // base.a
        public int e() {
            if (this.f16524b < 0) {
                this.f16524b = h();
            }
            return this.f16524b;
        }

        @Override // base.a
        public int f(int i2) {
            if (o0.this.A) {
                i2 = e();
            }
            Log.e("sound", " audioType = " + this.f16523a + "  current: " + c() + " to :" + i2 + " mute : " + o0.this.A);
            a.f.f().setStreamVolume(this.f16523a, i2, 0);
            return 0;
        }

        @Override // base.a
        public void g(int i2) {
            if (i2 < 0) {
                return;
            }
            this.f16524b = Math.min(i2, h());
            int iC = c();
            int i3 = this.f16524b;
            if (iC > i3) {
                f(i3);
            }
        }

        public int h() {
            return a.f.f().getStreamMaxVolume(this.f16523a);
        }
    }

    public class f implements Chip.d0 {
        public f() {
        }

        @Override // chip.Chip.d0
        public void a() {
            h0.f fVar = h0.c.f2425b;
            if (fVar != null) {
                fVar.reset();
            }
        }
    }

    public o0() {
        o1.i.f16878o = true;
    }

    @Override // n0.c4
    public void C3() {
        u0.c.f17386m.d(this.B);
        super.C3();
    }

    @Override // n0.c4
    public void H3(AudioDevice audioDevice) {
        super.H3(audioDevice);
        if (audioDevice instanceof C3702) {
            audioDevice.L0(1, C3702.CHANNEL.C.f15432a);
            audioDevice.L0(5, C3702.CHANNEL.E1.f15432a);
            C3702.CHANNEL channel = C3702.CHANNEL.A;
            audioDevice.L0(3, channel.f15432a);
            audioDevice.L0(2, channel.f15432a);
            int[] iArr = this.f16514z;
            if (iArr != null) {
                AudioDevice.Q0(iArr);
            }
        }
    }

    @Override // n0.c4
    public void M2() throws Throwable {
        super.M2();
        y0.j.a3().l3("com.iflytek.cutefly.speechclient");
        y0.j.a3().l3("com.baidu.carlifevehicle");
    }

    @Override // n0.c4
    public void P2() {
        if (g.e.e() == 6) {
            u0.b.t4[3] = 6;
            y0.d.r();
            y0.d.x();
            z.k.g("/dev/ttyS0");
        } else {
            y0.b.r();
            z.a.f18172w.a("/dev/snd/sound_spectrogram");
            z.k.c();
            int[] iArr = u0.b.t4;
            iArr[7] = 22;
            iArr[5] = 20;
            o1.v vVar = e.c.D;
            vVar.b();
            vVar.a(e.a.h(), -500);
            vVar.a(e.a.f(), 2000);
        }
        S3();
    }

    @Override // n0.c4
    public void S2() throws Throwable {
        u0.b.b4 = -1;
        m1.a.f13516e = true;
        a.c.f41c = this.E;
        a.c.f40b = this.F;
        u0.b.I3 = 1;
        u0.b.V3 = true;
        super.S2();
        S3();
        a.b.f13d.h("com.iflytek.cutefly.speechclient", this.C);
        g.g gVar = g.e.f2254a;
        if (gVar == null || !(gVar instanceof Chip)) {
            return;
        }
        ((Chip) gVar).T(new f());
    }

    @SuppressLint({"SdCardPath"})
    public void S3() {
        File[] fileArrListFiles = new File("/mnt/sdcard/Target/Map").listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (file.isFile() && file.getName().endsWith("key") && file.length() < 100) {
                file.delete();
                return;
            }
        }
    }

    public final void T3(int i2) {
        Log.d("LG", "setVolTable3702 id =" + i2);
        AudioDevice audioDeviceW = AudioDevice.W();
        if (audioDeviceW == null || !(audioDeviceW instanceof C3702)) {
            return;
        }
        if (i2 == 0) {
            Log.d("LG", "DataSound.sVolSrcMax000 =" + y0.f.f18049g);
            int[] iArrB = o1.s0.b(new int[]{255, 194, 190, 186, 182, 178, 174, 170, 166, 162, 160, 158, 156, 155, 153, 151, 149, 148, 147, 146, 145, 144, 143, 142, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128}, 0);
            this.f16514z = iArrB;
            AudioDevice.Q0(iArrB);
            return;
        }
        if (i2 == 1) {
            Log.d("LG", "DataSound.sVolSrcMax =" + y0.f.f18049g);
            y0.f.f18049g = 31;
            int[] iArrB2 = o1.s0.b(new int[]{255, 194, 188, 182, 176, 170, 164, 161, 158, 155, 152, 150, 148, 147, 146, 145, 144, 143, 142, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 128, 128, 128, 128, 128}, 0);
            this.f16514z = iArrB2;
            AudioDevice.Q0(iArrB2);
            return;
        }
        if (i2 != 2) {
            return;
        }
        Log.d("LG", "DataSound.sVolSrcMax =" + y0.f.f18049g);
        y0.f.f18049g = 40;
        y0.f.C = 40;
        System.arraycopy(y0.b.f17954d, 1, this.f16336a, 0, 40);
        int[] iArr = {255, 194, 190, 186, 182, 178, 174, 170, 166, 162, 160, 158, 156, 155, 153, 151, 149, 148, 147, 146, 145, 144, 143, 142, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123};
        this.f16514z = iArr;
        AudioDevice.Q0(iArr);
    }

    @Override // n0.c4
    public void b3() {
        g.f.l();
        if (g.e.g() == 1) {
            u0.b.t4[7] = 22;
        } else if (g.e.g() == 2) {
            u0.b.t4[3] = 6;
        }
    }

    @Override // n0.c4
    public void j3() {
        j4.f16465c = "HOJ";
        m1.a.f13515d = 65;
        u0.b.h2 = true;
        u0.b.C3 = true;
        h0.c.f2446l0 = true;
        super.j3();
        p0.b.f17025g = 6;
        o1.v vVar = e.c.D;
        vVar.b();
        vVar.a(e.a.f(), 2000);
        if (a.i.k("ro.fyt.uivol", 0) == 1) {
            if (a.i.k("ro.fyt.canbus_id", 0) != 61446) {
                a.f.D(new ui.e());
            }
            u0.b.Q2 = 240;
            u0.b.S2 = 240;
            u0.b.T2 = 95;
            if (a.i.k("ro.fyt.uiid", 0) == 4) {
                int[] iArr = u0.b.h3;
                iArr[1] = -1;
                iArr[10] = 1;
            }
            int[] iArr2 = u0.b.h3;
            iArr2[3] = -1;
            iArr2[4] = -1;
            iArr2[8] = -1;
            iArr2[5] = -1;
            iArr2[6] = -1;
            iArr2[12] = -1;
            iArr2[13] = -1;
        }
        y0.f.T = 20;
        y0.f.f18087y = 1;
        y0.f.f18085x = 1;
        u0.c.f17386m.a(this.B, 1);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0019  */
    /* JADX WARN: Code duplicated, block: B:13:0x001e  */
    /* JADX WARN: Code duplicated, block: B:21:0x005c  */
    @Override // n0.c4
    public boolean z3(int i2) {
        boolean z2 = false;
        if (i2 != 61440 && i2 != 192517) {
            switch (i2) {
                case 61442:
                    u0.b.t4[5] = 6;
                    if (nt.f8639d instanceof o1.q) {
                        String strD = k4.d();
                        if (TextUtils.isEmpty(strD)) {
                            return true;
                        }
                        this.f16337b = z.d.a(strD);
                        z.k.e(strD, 115200, (o1.q) nt.f8639d);
                        this.f16338c = new z.b(z.a.f18166q, z.a.f18158i, (o1.q) nt.f8639d, 115200);
                    }
                    T3(0);
                    z2 = true;
                    break;
                case 61443:
                case 61444:
                    if (y0.f.f18031a == 1) {
                        T3(1);
                    }
                    z2 = true;
                    break;
                case 61445:
                    T3(0);
                    z2 = true;
                    break;
                case 61446:
                    u0.b.P3 = 1;
                    T3(1);
                    z2 = true;
                    break;
                default:
                    switch (i2) {
                        case 126980:
                            if (y0.f.f18031a == 1) {
                                T3(1);
                            }
                            break;
                        case 126981:
                            T3(0);
                            break;
                    }
                    z2 = true;
                    break;
            }
        } else {
            T3(0);
            z2 = true;
        }
        return z2 ? z2 : super.z3(i2);
    }
}
