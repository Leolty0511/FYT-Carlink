package y0;

import android.util.Log;
import com.syu.jni.ToolsJni;
import module.sound.AudioDevice;

/* JADX INFO: loaded from: classes2.dex */
public class k extends AudioDevice {
    public boolean I0;

    public k() {
        this(1, 1);
        if (this.I0 && u0.b.V3) {
            h.X(16, true);
        }
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= 36) {
            return;
        }
        if (z2 || i2 != this.f15054g) {
            Log.e("soundMute", "volune vol = " + i2 + " this.vol = " + this.f15054g);
            if (i2 != this.f15054g) {
                if (this.I0 && i2 > 0) {
                    if (u0.b.V3) {
                        h.X(16, false);
                    }
                    this.I0 = false;
                    Log.e("soundMute", "mute vol unmute = " + i2 + " this.vol = " + this.f15054g);
                }
                this.f15054g = i2;
            }
        }
    }

    public final int D1(int i2, int i3) {
        return (int) ((i2 * (i3 / f.f18049g)) + 0.5f);
    }

    @Override // module.sound.AudioDevice
    public void F() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // module.sound.AudioDevice
    public void R() {
        int i2;
        boolean z2;
        int iD1;
        int iD2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int iD3;
        boolean z3;
        boolean z4;
        int i10 = u0.b.D;
        int i11 = 0;
        Object[] objArr = h0.c.G == 1 || h0.c.f2448m0 || (u0.i.l3().r3() && i10 == 15);
        Object[] objArr2 = (u0.b.f17347o == 0 && u0.b.Z == 0) ? false : true;
        int iA0 = f.C0;
        int i12 = f.f18049g;
        Integer num = this.G;
        if (num != null && num.intValue() > 0) {
            iA0 = this.G.intValue();
        }
        int i13 = f.F0;
        if (i13 >= 0 && iA0 > i13) {
            iA0 = i13;
        }
        int iJ0 = j0(i10);
        int i14 = f.F0;
        if (i14 >= 0) {
            iA0 = Math.max(0, Math.min(iA0, i14));
        }
        int iD4 = D1(a.c.m(), iA0);
        int iD5 = D1(a.c.w(), iA0);
        int iD6 = D1(a.c.t(), iA0);
        if ((f.K0 & (-257) & (-17) & 65535) != 0 && objArr != true) {
            u0(true);
            return;
        }
        if (objArr == true) {
            int i15 = f.J0;
            if (iA0 < i15) {
                iA0 = i15;
            }
            if (h0.e.C() && i10 == 2) {
                iA0 = 0;
            }
            if (this.f15084v) {
                z2 = iA0 > 0;
                i5 = iA0;
            } else {
                z2 = false;
                i5 = 0;
            }
            i6 = 0;
            i9 = iA0;
            i7 = iD5;
            i8 = 0;
            iD3 = (int) (((D1(a.c.g(), iA0) * h0.c.f2424a0) / h0.c.f2426b0) + 0.5f);
            i4 = 0;
        } else {
            if (objArr2 != false) {
                iA0 = (int) (f.f18085x == 0 ? ((iA0 * f.R) / f.S) + 0.5f : 0.0f);
                iD4 = D1(a.c.m(), iA0);
                iD5 = D1(a.c.w(), iA0);
                iD6 = D1(a.c.t(), iA0);
            }
            if (iA0 == 0) {
                u0(true);
                return;
            }
            boolean z5 = f.R0 != 0;
            boolean z6 = f.T0 != 0;
            boolean z7 = f.Q0 != 0;
            boolean z8 = (z5 || z6 || z7) && iJ0 == 0;
            if (this.f15084v && i10 == 2) {
                i2 = iA0;
            } else if (z8) {
                int i16 = f.f18088y0[7];
                i2 = (int) (!z7 ? iA0 : 0.5f + iA0 + (((f.f18084w0[7] - (i16 / 2)) * iA0) / i16));
            } else {
                i2 = 0;
            }
            z2 = i2 > 0;
            Log.e("sound", "========================>>>>>   002   tipAudio = " + z5 + "  voiceAudio = " + z6 + "  naviAudio = " + z7 + "   DataMain.sArmMuteAndAmpMute = " + u0.b.V3);
            if (z6) {
                iD5 = D1(w1(), iA0);
                iD1 = 0;
                iD2 = 0;
                i3 = 0;
                iD4 = 0;
                iD6 = 0;
            } else {
                if (z5) {
                    iD1 = D1(u1(), iA0);
                    iD6 = D1(a.c.t(), iA0);
                } else {
                    if (z2 && z7) {
                        iA0 = a0(iA0);
                    } else {
                        if (i10 != 1) {
                            if (i10 == 2 || i10 == 3 || i10 == 15) {
                                int iD7 = D1(t1(), iA0);
                                if (z7) {
                                    iD7 = Math.min(iD7, a0(iD7));
                                }
                                if (u0.b.L3 > 0 || u0.b.M3) {
                                    iD7 = 0;
                                }
                                if (h0.e.C() && i10 != 15) {
                                    iD7 = 0;
                                    iA0 = 0;
                                }
                                if (u0.i.l3().r3()) {
                                    iD4 = 0;
                                }
                                i3 = iD7;
                                iD1 = 0;
                            } else if (i10 != 16) {
                                switch (i10) {
                                    case 8:
                                    case 9:
                                    case 10:
                                        iD1 = D1(u1(), iA0);
                                        if (z7) {
                                            iD1 = a0(iD1);
                                        }
                                        iD2 = 0;
                                        break;
                                    default:
                                        iD1 = D1(u1(), iA0);
                                        if (z7) {
                                            iD1 = a0(iD1);
                                        }
                                        break;
                                }
                            } else {
                                int iD8 = D1(t1(), iA0);
                                int iD9 = D1(u1(), iA0);
                                if (z7) {
                                    iD8 = Math.min(iD8, a0(iD8));
                                }
                                if (z7) {
                                    iD9 = Math.min(iD9, a0(iD9));
                                }
                                i3 = iD8;
                                iD1 = iD9;
                            }
                            iD2 = -1;
                        } else if (w0.d.f17789a == 3) {
                            iD1 = D1(u1(), iA0);
                            iD2 = D1(v1(), iA0);
                            if (z7) {
                                iD1 = Math.min(iD1, a0(iD1));
                            }
                            if (z7) {
                                iD2 = Math.min(iD2, a0(iD2));
                            }
                        }
                        i3 = 0;
                    }
                    iD1 = -1;
                }
                iD2 = -1;
                i3 = 0;
            }
            i11 = f.f18069p > 0 ? 0 : iD1;
            int i17 = i3;
            i4 = iD2;
            i5 = i2;
            i6 = iD6;
            i7 = iD5;
            i8 = iD4;
            i9 = iA0;
            iD3 = i17;
        }
        boolean z9 = f.f18055i == 1;
        if (w(i10)) {
            z3 = true;
            z9 = true;
            z4 = false;
        } else {
            Log.e("sound", "fix Stream =========  <<<<< *** >>>>>>  vol");
            Log.e("sound", "========================>>>>>   002  mixOn = " + z2 + "  mixVol = " + i5 + " vol = " + i9);
            boolean z10 = ((this.f15084v && i10 == 2) || iJ0 == 0) ? true : !z2;
            Log.e("sound", "========================>>>>>   hasMainVol = " + z10);
            z3 = z10;
            z4 = true;
        }
        if (!z4 && z9) {
            u0(z9);
        }
        if (iD3 != -1) {
            a.c.f(iD3);
        }
        if (i11 != -1) {
            a.c.p(i11);
        }
        if (i4 != -1) {
            a.c.i(i4);
        }
        a.c.l(i8);
        a.c.v(i7);
        if (!g.e.j(59)) {
            a.c.s(i6);
        }
        if (z4) {
            y1(z3 ? i9 : 0);
            r0(z2 ? i5 : 0);
            v0(z9);
        }
        Log.d("sound", "vol = " + i9 + "    " + a.c.c() + " mutePlayer " + a.c.b() + "   appid : " + i10);
    }

    @Override // module.sound.AudioDevice
    public int[] c1() {
        return null;
    }

    @Override // module.sound.AudioDevice
    public int j0(int i2) {
        return 1;
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        int i3 = i2 <= 0 ? 0 : 1;
        if (this.f15056h == i3) {
            return;
        }
        f.Y = i3;
        g.f18113w.c();
        ToolsJni.cmd_2_soundMix(i3);
    }

    @Override // module.sound.AudioDevice
    public void u0(boolean z2) {
        int i2 = f.f18049g;
        if (z2) {
            a.c.f(0);
            a.c.p(0);
            a.c.i(0);
            a.c.l(0);
            a.c.v(0);
            a.c.s(0);
            r0(0);
        } else {
            float f2 = i2;
            int iJ = (int) ((a.c.j() * (this.f15054g / f2)) + 0.5f);
            int iT1 = (int) ((t1() * (this.f15054g / f2)) + 0.5f);
            int iU1 = (int) ((u1() * (this.f15054g / f2)) + 0.5f);
            int iM = (int) ((a.c.m() * (this.f15054g / f2)) + 0.5f);
            int iW1 = (int) ((w1() * (this.f15054g / f2)) + 0.5f);
            a.c.f(iT1);
            a.c.p(iU1);
            a.c.i(iJ);
            a.c.l(iM);
            a.c.v(iW1);
            a.c.s(D1(a.c.d(), this.f15054g));
            int i3 = this.f15056h;
            if (i3 > 0) {
                r0(i3);
            }
        }
        v0(z2 || this.f15054g == 0);
    }

    @Override // module.sound.AudioDevice
    public void v0(boolean z2) {
        super.v0(z2);
        boolean z3 = this.I0;
        if (!z3 && z2) {
            if (u0.b.V3) {
                h.X(16, true);
            }
            this.I0 = true;
            Log.e("soundMute", "mute vol = " + this.f15054g + " this.vol = " + this.f15054g + " mute: " + z2);
            return;
        }
        if (!z3 || z2) {
            return;
        }
        if (u0.b.V3) {
            h.X(16, false);
        }
        this.I0 = false;
        Log.e("soundMute", "mute vol = " + this.f15054g + " this.vol = " + this.f15054g + " mute: " + z2);
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
    }

    public k(int i2, int i3) {
        super(i2, i3);
        this.I0 = true;
    }
}
