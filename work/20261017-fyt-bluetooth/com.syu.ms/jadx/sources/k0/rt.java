package k0;

import android.bluetooth.BluetoothClass;
import android.media.AudioFormat;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.view.InputDevice;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class rt extends base.b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static rt f10075k;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f10076g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f10077h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f10078i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public lt f10079j;

    public rt() {
        this.f331f.n("Canbus-TRAN");
        nt.f8655p = SystemProperties.getInt("sys.persist.keydirect", 0);
    }

    public static synchronized rt a3() {
        if (f10075k == null) {
            f10075k = new rt();
        }
        return f10075k;
    }

    @Override // y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 < 1000) {
            lt ltVar = this.f10079j;
            if (ltVar != null) {
                return ltVar.M1(i2, iArr, fArr, strArr);
            }
            return null;
        }
        if (i2 == 1000 && d3(iArr, 1) && iArr[0] >= 0 && iArr[0] < 1000) {
            return new y.f(nt.f8638c0[iArr[0]]);
        }
        return null;
    }

    @Override // base.b
    public void N2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        l0.a aVar;
        if (i2 < 1000) {
            Y2(i2, iArr, fArr, strArr);
            return;
        }
        int i3 = 1;
        if (i2 == 1017) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            if (iArr[1] <= 1) {
                l0.b0.l0(iArr[0], iArr[1]);
                return;
            }
            for (int i4 = 0; i4 < iArr[1]; i4++) {
                l0.b0.l0(iArr[0], 1);
            }
            l0.b0.l0(iArr[0], 0);
            return;
        }
        if (i2 == 1018) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            int i5 = iArr[0];
            if (i5 == 0) {
                if (u0.b.f17347o == 0) {
                    if (iArr[1] != 0) {
                        if (o1.u.T(a.b.O)) {
                            return;
                        }
                        qt.t();
                        return;
                    } else {
                        if (o1.u.T(a.b.O)) {
                            qt.f();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (i5 == 1) {
                if (u0.b.f17347o == 0) {
                    if (iArr[1] != 0) {
                        if (o1.u.T(a.b.V)) {
                            return;
                        }
                        o1.u.f(a.b.W);
                        return;
                    } else {
                        if (o1.u.T(a.b.V)) {
                            o1.u.k();
                            u0.d.T3(6, 0);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (i5 != 2) {
                if (i5 != 3) {
                    return;
                }
                if (iArr[1] != 0) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            if (u0.b.f17347o == 0) {
                if (iArr[1] != 0) {
                    if (o1.u.T(a.b.X)) {
                        return;
                    }
                    o1.u.f(a.b.Y);
                    return;
                } else {
                    if (o1.u.T(a.b.X)) {
                        o1.u.k();
                        u0.d.T3(6, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 1000:
                if (d3(iArr, 1)) {
                    qt.K(iArr[0]);
                    return;
                }
                return;
            case 1001:
                if (d3(iArr, 1)) {
                    qt.P(iArr[0]);
                    return;
                }
                return;
            case 1002:
                qt.A0(1008, null, null, null);
                return;
            case 1003:
                Y2(i2, iArr, fArr, strArr);
                return;
            case 1004:
                qt.A0(1011, null, null, null);
                return;
            case 1005:
                break;
            default:
                switch (i2) {
                    case 1008:
                        boolean z2 = u0.b.T3;
                        switch (nt.f8633a) {
                            case 0:
                                if (iArr != null && iArr.length > 0) {
                                    int length = iArr.length + 1;
                                    int[] iArr2 = new int[length];
                                    iArr2[0] = 233;
                                    while (i3 < length) {
                                        iArr2[i3] = iArr[i3 - 1];
                                        i3++;
                                    }
                                    z.a.f18151b.i(z.k.b(iArr2));
                                    a.f.p().t(LogType.CANBUS, "WR duduOK canbus 0 ---->: " + o1.b0.e(iArr2, 0, length));
                                    break;
                                }
                                break;
                            case 3014954:
                            case 3080490:
                            case 3932458:
                            case 3997994:
                            case 4194602:
                            case 4784426:
                            case 4849962:
                            case 10027306:
                            case 10092842:
                            case 10158378:
                            case 10223914:
                                byte[] bArr = new byte[iArr.length];
                                int length2 = iArr.length - 1;
                                for (int i6 = 0; i6 < length2; i6++) {
                                    bArr[i6] = (byte) iArr[i6];
                                }
                                z.k.q(bArr);
                                break;
                            default:
                                if (iArr != null && iArr.length > 0) {
                                    int length3 = iArr.length + 1;
                                    int[] iArr3 = new int[length3];
                                    iArr3[0] = 227;
                                    while (i3 < length3) {
                                        iArr3[i3] = iArr[i3 - 1];
                                        i3++;
                                    }
                                    z.k.s(iArr3);
                                    a.f.p().t(LogType.CANBUS, "WR duduOK ---->:canbusid " + nt.f8633a + o1.b0.e(iArr3, 0, length3));
                                    break;
                                }
                                break;
                        }
                        return;
                    case 1009:
                        if (d3(iArr, 1)) {
                            qt.B(iArr[0]);
                            return;
                        }
                        return;
                    case 1010:
                        if (d3(iArr, 1)) {
                            qt.M(iArr[0]);
                            return;
                        }
                        return;
                    case 1011:
                        if (d3(iArr, 1)) {
                            qt.t0(iArr[0]);
                            return;
                        }
                        return;
                    case 1012:
                        if (iArr == null || iArr.length <= 0) {
                            return;
                        }
                        int length4 = iArr.length + 1;
                        int[] iArr4 = new int[length4];
                        iArr4[0] = 145;
                        while (i3 < length4) {
                            iArr4[i3] = iArr[i3 - 1];
                            i3++;
                        }
                        z.k.s(iArr4);
                        return;
                    case Process.MEDIA_UID /* 1013 */:
                        if (iArr == null || iArr.length <= 0) {
                            return;
                        }
                        int length5 = iArr.length + 1;
                        int[] iArr5 = new int[length5];
                        iArr5[0] = 16;
                        while (i3 < length5) {
                            iArr5[i3] = iArr[i3 - 1];
                            i3++;
                        }
                        z.k.s(iArr5);
                        return;
                    case 1014:
                        if (iArr == null || iArr.length <= 1) {
                            return;
                        }
                        l0.b0.l0(iArr[0], iArr[1]);
                        return;
                    case 1015:
                        b3(iArr, strArr);
                        return;
                    default:
                        switch (i2) {
                            case 1030:
                                if (iArr != null && iArr.length > 1 && (aVar = l0.z.f13137a) != null) {
                                    aVar.f(iArr);
                                    break;
                                }
                                break;
                            case 1035:
                                u0.d.I3(151, 0, (iArr[0] >> 0) & 1);
                                u0.d.I3(151, 1, (iArr[0] >> 1) & 1);
                                u0.d.I3(151, 2, (iArr[0] >> 2) & 1);
                                u0.d.I3(151, 3, (iArr[0] >> 3) & 1);
                                u0.d.I3(151, 4, (iArr[0] >> 4) & 1);
                                u0.d.I3(151, 5, (iArr[0] >> 5) & 1);
                                qt.A0(1049, new int[]{6, ((((iArr[0] >> 0) & 1) << 2) & 4) | ((((iArr[0] >> 5) & 1) << 5) & 32) | ((((iArr[0] >> 2) & 1) << 6) & 64) | ((((iArr[0] >> 3) & 1) << 7) & 128) | (16 & (((iArr[0] >> 4) & 1) << 4)) | ((((iArr[0] >> 1) & 1) << 3) & 8)}, null, null);
                                break;
                            case 1036:
                                u0.b.u1 = iArr[0];
                                break;
                            case 1037:
                                u0.b.v1 = iArr[0];
                                break;
                            case BluetoothClass.Device.AUDIO_VIDEO_MICROPHONE /* 1040 */:
                                if (n0.j4.f16464b != 143) {
                                    Y2(i2, iArr, fArr, strArr);
                                    break;
                                } else if (iArr[0] != 0) {
                                    Y2(i2, iArr, fArr, strArr);
                                    break;
                                } else {
                                    int i7 = iArr[1];
                                    if (i7 == 1) {
                                        if (iArr[2] == 1) {
                                            X2(11);
                                        } else if (iArr[2] == 2) {
                                            X2(12);
                                        }
                                        break;
                                    } else if (i7 == 2) {
                                        if (iArr[2] == 1) {
                                            X2(13);
                                        } else if (iArr[2] == 2) {
                                            X2(14);
                                        }
                                        break;
                                    } else if (i7 == 3) {
                                        if (iArr[2] == 1) {
                                            X2(15);
                                        } else if (iArr[2] == 2) {
                                            X2(16);
                                        }
                                        break;
                                    } else if (i7 == 255) {
                                        o1.x.C(nt.f8643f, 1055, new int[]{0, 255, 1}, null, null);
                                        break;
                                    }
                                }
                                break;
                            case 1041:
                                u0.d.y2(iArr, fArr, strArr);
                                break;
                            case 1042:
                                if (n0.j4.f16464b != 143) {
                                    int length6 = iArr.length;
                                    byte[] bArr2 = new byte[length6];
                                    for (int i8 = 0; i8 < iArr.length; i8++) {
                                        bArr2[i8] = (byte) iArr[i8];
                                    }
                                    z.k.q(bArr2);
                                    a.f.p().t(LogType.CANBUS, "WR duduOK OBD---->: " + o1.b0.d(bArr2, 0, length6));
                                    break;
                                } else if (iArr != null && iArr.length > 0) {
                                    int length7 = iArr.length + 1;
                                    int[] iArr6 = new int[length7];
                                    iArr6[0] = 240;
                                    while (i3 < length7) {
                                        iArr6[i3] = iArr[i3 - 1];
                                        i3++;
                                    }
                                    z.a.f18151b.i(z.k.b(iArr6));
                                    a.f.p().t(LogType.CANBUS, "WR ds OK ---->: " + o1.b0.e(iArr6, 0, length7));
                                    break;
                                }
                                break;
                            case 1043:
                                u0.b.w1 = iArr[0];
                                break;
                            case BluetoothClass.Device.AUDIO_VIDEO_LOUDSPEAKER /* 1044 */:
                                c3(iArr, strArr);
                                break;
                            case 1045:
                                if (iArr[0] == 0) {
                                    qt.y0(1012, 0);
                                }
                                break;
                        }
                        return;
                }
        }
        Y2(i2, iArr, fArr, strArr);
    }

    @Override // base.b
    public void O2(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
        if (bVar == null) {
            return;
        }
        this.f331f.p(bVar, i2);
        if (i2 < 0 || i2 >= 1200 || nt.f8643f[i2] == null) {
            return;
        }
        o1.x.o(nt.f8647h, bVar, i2);
    }

    @Override // base.b
    public void Q2(o1.h0 h0Var) {
    }

    public final void X2(int i2) {
        o1.x[] xVarArr = nt.f8643f;
        o1.x.C(xVarArr, 1055, new int[]{0, i2, 1}, null, null);
        n1.b bVarP = a.f.p();
        LogType logType = LogType.CANBUS;
        bVarP.t(logType, "WR DS Air OK ---->:0 cmd = " + i2 + "  touch = 0x01");
        a.i.a0(200L);
        o1.x.C(xVarArr, 1055, new int[]{0, i2, 0}, null, null);
        a.f.p().t(logType, "WR DS Air OK ---->:0 cmd = " + i2 + "  touch = 0x00");
    }

    @Override // base.b, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (bVar == null) {
            return;
        }
        super.Y1(bVar, i2, i3);
        this.f331f.m(bVar, i2);
        if (i2 >= 0 && i2 < 1200) {
            o1.x[] xVarArr = nt.f8643f;
            if (xVarArr[i2] == null) {
                synchronized (this) {
                    if (xVarArr[i2] == null) {
                        xVarArr[i2] = nt.f8647h;
                    }
                }
            }
            o1.x.k(nt.f8647h, bVar, i2);
        }
        if (i3 == 0) {
            return;
        }
        if (i2 < 1000 || i2 == 1021) {
            lt ltVar = this.f10079j;
            if (ltVar != null) {
                ltVar.Y1(bVar, i2, i3);
                return;
            }
            return;
        }
        if (i2 == 1007) {
            this.f331f.G(bVar, i2, nt.B);
            return;
        }
        if (i2 == 1041) {
            this.f331f.G(bVar, i2, nt.G);
            return;
        }
        if (i2 == 1046) {
            this.f331f.G(bVar, i2, nt.H);
            return;
        }
        if (i2 == 1051) {
            this.f331f.G(bVar, i2, nt.J);
            return;
        }
        if (i2 == 1054) {
            this.f331f.G(bVar, i2, nt.M);
            return;
        }
        if (i2 == 1009) {
            this.f331f.G(bVar, i2, nt.D);
            return;
        }
        if (i2 == 1010) {
            this.f331f.G(bVar, i2, nt.Y);
            return;
        }
        if (i2 == 1012) {
            this.f331f.G(bVar, i2, nt.C);
            return;
        }
        if (i2 == 1013) {
            this.f331f.G(bVar, i2, nt.P);
            return;
        }
        switch (i2) {
            case 1000:
                this.f331f.G(bVar, 1037, qt.g(nt.f8633a));
                this.f331f.G(bVar, i2, nt.f8633a);
                return;
            case 1001:
                this.f331f.G(bVar, i2, nt.U);
                return;
            case 1002:
                this.f331f.G(bVar, i2, nt.S);
                return;
            case 1003:
                this.f331f.G(bVar, i2, nt.W);
                return;
            case 1004:
                this.f331f.G(bVar, i2, nt.A);
                return;
            case 1005:
                this.f331f.F(bVar, i2, nt.f8634a0);
                return;
            default:
                switch (i2) {
                    case 1015:
                        this.f331f.G(bVar, i2, 0);
                        return;
                    case Process.VPN_UID /* 1016 */:
                        this.f331f.G(bVar, i2, nt.K);
                        return;
                    case 1017:
                        this.f331f.G(bVar, i2, 0);
                        return;
                    case 1018:
                        this.f331f.G(bVar, i2, nt.E);
                        return;
                    case Process.DRM_UID /* 1019 */:
                        if (!this.f10077h) {
                            this.f10077h = true;
                        }
                        this.f331f.G(bVar, i2, 0);
                        return;
                    case AudioFormat.CHANNEL_OUT_7POINT1 /* 1020 */:
                        this.f331f.G(bVar, i2, 0);
                        return;
                    default:
                        switch (i2) {
                            case 1022:
                                this.f331f.G(bVar, i2, nt.R);
                                return;
                            case Process.MEDIA_RW_GID /* 1023 */:
                                if (TextUtils.isEmpty(nt.f8636b0)) {
                                    this.f331f.E(bVar, i2, 0, nt.f8636b0);
                                    return;
                                } else {
                                    this.f331f.E(bVar, i2, 1, nt.f8636b0);
                                    return;
                                }
                            case 1024:
                                if (this.f10078i) {
                                    return;
                                }
                                this.f10078i = true;
                                return;
                            case InputDevice.SOURCE_GAMEPAD /* 1025 */:
                                this.f331f.G(bVar, i2, nt.f8651l);
                                return;
                            case 1026:
                                this.f331f.G(bVar, i2, nt.f8650k);
                                return;
                            default:
                                switch (i2) {
                                    case 1034:
                                        this.f331f.G(bVar, i2, nt.N);
                                        return;
                                    case 1035:
                                        this.f331f.G(bVar, i2, nt.F);
                                        return;
                                    case 1036:
                                        this.f331f.G(bVar, i2, nt.O);
                                        return;
                                    default:
                                        return;
                                }
                        }
                }
        }
    }

    public void Y2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        lt ltVar = this.f10079j;
        if (ltVar != null) {
            try {
                ltVar.Z0(i2, iArr, fArr, strArr);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    public lt Z2() {
        return this.f10079j;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void b3(int[] iArr, String[] strArr) {
        if (d3(iArr, 1)) {
            switch (iArr[0]) {
                case 0:
                    if (d3(iArr, 2)) {
                        int i2 = SystemProperties.getInt("persist.fyt.track_angle_max", 40);
                        int i3 = i2 != 0 ? i2 : 40;
                        int i4 = i3 * 4;
                        int i5 = iArr[1];
                        if (u0.b.f17316d1 != 1) {
                            u0.d.I3(41, i5, i4, i3 * 2);
                        } else {
                            u0.d.I3(41, i4 - i5, i4, i3 * 2);
                        }
                    }
                    break;
                case 1:
                    if (d3(iArr, 3)) {
                        switch (iArr[1]) {
                            case 0:
                                int i6 = iArr[2] != 0 ? 1 : 0;
                                if (u0.b.G == 0 || o1.u.i0() || !SystemProperties.getBoolean("persist.fyt.radar_click", true) || SystemProperties.getBoolean("persist.fyt.showfloatradar", false)) {
                                    u0.d.I3(13, 0);
                                } else {
                                    u0.d.I3(13, i6);
                                }
                                u0.c.R.c(new int[]{13, i6});
                                break;
                            case 1:
                                u0.d.D2(iArr[2]);
                                break;
                            case 2:
                                u0.d.E2(iArr[2]);
                                break;
                            case 3:
                                u0.d.F2(iArr[2]);
                                break;
                            case 4:
                                u0.d.G2(iArr[2]);
                                break;
                            case 5:
                                u0.d.R2(iArr[2]);
                                break;
                            case 6:
                                u0.d.S2(iArr[2]);
                                break;
                            case 7:
                                u0.d.T2(iArr[2]);
                                break;
                            case 8:
                                u0.d.U2(iArr[2]);
                                break;
                            case 9:
                                u0.d.O2(iArr[2]);
                                break;
                            case 10:
                                u0.d.Q2(iArr[2]);
                                break;
                            case 11:
                                u0.d.P2(iArr[2]);
                                break;
                            case 12:
                                u0.d.N2(iArr[2]);
                                break;
                            case 13:
                                u0.d.I2(iArr[2]);
                                break;
                            case 14:
                                u0.d.K2(iArr[2]);
                                break;
                            case 15:
                                u0.d.J2(iArr[2]);
                                break;
                            case 16:
                                u0.d.H2(iArr[2]);
                                break;
                        }
                    }
                    break;
                case 2:
                    if (d3(iArr, 3)) {
                        a.f.p().t(LogType.CANBUS, "Rev TempOut =   " + o1.b0.e(iArr, 0, iArr.length));
                        int i7 = iArr[1];
                        if (i7 == 0) {
                            qt.f0(iArr[2] == 0 ? 0 : 1);
                            break;
                        } else if (i7 == 1) {
                            u0.d.B3(iArr[2]);
                            break;
                        }
                    }
                    break;
                case 3:
                    if (strArr != null && strArr.length > 0) {
                        qt.L(strArr[0]);
                        break;
                    }
                    break;
                case 4:
                    if (d3(iArr, 3)) {
                        int i8 = iArr[1];
                        if (i8 == 0) {
                            qt.X(iArr[2] == 0 ? 0 : 1);
                            break;
                        } else if (i8 == 1) {
                            qt.U(iArr[2] == 0 ? 0 : 1);
                            break;
                        } else if (i8 == 2) {
                            qt.T(iArr[2] == 0 ? 0 : 1);
                            break;
                        }
                    }
                    break;
                case 5:
                    qt.y0(Process.MEDIA_UID, iArr[1]);
                    break;
                case 6:
                    int i9 = iArr[1] & 255;
                    u0.d.I3(151, 0, (i9 >> 2) & 1);
                    u0.d.I3(151, 1, (i9 >> 3) & 1);
                    u0.d.I3(151, 2, (i9 >> 7) & 1);
                    u0.d.I3(151, 3, (i9 >> 6) & 1);
                    u0.d.I3(151, 4, (i9 >> 5) & 1);
                    u0.d.I3(151, 5, (i9 >> 4) & 1);
                    break;
                case 7:
                    int i10 = iArr[1] & 255;
                    boolean z2 = i10 == 2;
                    boolean z3 = i10 == 1;
                    u0.i.l3().g4(4096, z2);
                    u0.i.l3().g4(8192, z3);
                    int[] iArr2 = new int[1];
                    iArr2[0] = (iArr[1] & 4) != 4 ? 0 : 1;
                    u0.d.I3(139, iArr2);
                    break;
                case 8:
                    if (!u0.b.C1) {
                        u0.d.v0(iArr[1] / 10);
                    }
                    break;
            }
        }
    }

    public final void c3(int[] iArr, String[] strArr) {
        if (d3(iArr, 1)) {
            switch (iArr[0]) {
                case 0:
                    qt.y0(10, (iArr[1] >> 7) & 1);
                    qt.y0(37, (iArr[1] >> 6) & 1);
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        qt.y0(27, iArr[3]);
                        qt.y0(28, iArr[2]);
                    } else {
                        qt.y0(27, iArr[2]);
                        qt.y0(28, iArr[3]);
                    }
                    qt.y0(21, iArr[4]);
                    qt.y0(79, iArr[5]);
                    break;
                case 1:
                    o1.x.C(nt.f8643f, 1049, new int[]{29, iArr[1]}, null, null);
                    break;
                case 2:
                    qt.a(iArr[1]);
                    break;
                case 3:
                    qt.L(new String(iArr, 2, iArr[1]));
                    break;
                case 8:
                    o1.x.C(nt.f8643f, 1049, new int[]{11, iArr[1], iArr[2]}, null, null);
                    break;
                case 9:
                    o1.x.C(nt.f8643f, 1049, new int[]{4, iArr[1]}, null, null);
                    break;
                case 10:
                    o1.x.C(nt.f8643f, 1049, new int[]{30, iArr[1], iArr[2], iArr[3], iArr[4]}, null, null);
                    break;
                case 11:
                    o1.x.C(nt.f8643f, 1049, new int[]{31, iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8], iArr[9], iArr[10], iArr[11], iArr[12], iArr[13]}, null, null);
                    break;
                case 12:
                    o1.x.C(nt.f8643f, 1049, new int[]{32, iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6]}, null, null);
                    break;
                case 13:
                    o1.x.C(nt.f8643f, 1049, new int[]{33, iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8], iArr[9], iArr[10], iArr[11], iArr[12], iArr[13], iArr[14], iArr[15], iArr[16], iArr[17], iArr[18], iArr[19], iArr[20], iArr[21], iArr[22]}, null, null);
                    break;
                case 14:
                    o1.x.C(nt.f8643f, 1049, new int[]{34, iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8], iArr[9], iArr[10], iArr[11], iArr[12], iArr[13], iArr[14]}, null, null);
                    break;
                case 16:
                    o1.x.C(nt.f8643f, 1049, new int[]{35, iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8], iArr[9], iArr[10], iArr[11], iArr[12], iArr[13], iArr[14]}, null, null);
                    break;
                case 17:
                    z.k.s(104, iArr[1] & 255, iArr[2] & 255, iArr[3] & 255);
                    break;
                case 18:
                    o1.x.C(nt.f8643f, 1049, new int[]{37, iArr[1], iArr[2], iArr[3]}, null, null);
                    break;
            }
        }
    }

    public boolean d3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public boolean e3() {
        return this.f10078i;
    }

    public boolean f3() {
        return this.f10077h;
    }

    public boolean g3() {
        return this.f10076g;
    }

    public void h3(lt ltVar) {
        this.f10079j = ltVar;
    }

    public void i3(boolean z2) {
        if (this.f10076g != z2) {
            this.f10076g = z2;
            if (z2) {
                nt.f8648i = 1;
            }
        }
    }
}
