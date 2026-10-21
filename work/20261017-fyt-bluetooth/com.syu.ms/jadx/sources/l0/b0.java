package l0;

import android.bluetooth.BluetoothClass;
import android.media.TextTrackRegion;
import android.media.videoeditor.MediaProperties;
import android.net.UrlQuerySanitizer;
import android.net.wifi.WifiStateMachine;
import android.os.Environment;
import android.provider.Downloads;
import android.widget.SpellChecker;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import k0.nt;
import k0.qt;
import module.sound.AudioDevice;
import o1.j0;
import o1.o0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f13001a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f13002b;

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (o0.e.f16784k != 0) {
                u0.b.f17311c.c(4);
            }
        }
    }

    public static void A(int i2) {
        if (i2 == 0) {
            u0.d.S0();
        }
    }

    public static void B(int i2) {
        if (i2 == 0) {
            u0.d.T0();
        }
    }

    public static void C(int i2) {
        if (i2 == 0) {
            u0.d.U0();
        }
    }

    public static void D(int i2) {
        if (i2 == 0) {
            u0.d.V0();
        }
    }

    public static void E(int i2) {
        if (i2 == 0) {
            u0.d.W0();
        }
    }

    public static void F(int i2) {
        if (i2 == 0) {
            u0.d.X0();
        }
    }

    public static void G(int i2) {
        if (i2 == 0) {
            u0.d.Y0();
        }
    }

    public static void H(int i2) {
        if (i2 == 0) {
            u0.d.Z0();
        }
    }

    public static void I(int i2) {
        if (i2 == 0) {
            u0.d.b1();
        }
    }

    public static void J(int i2) {
        if (i2 == 0) {
            int i3 = u0.b.D;
            if (i3 == 11 || i3 == 13) {
                a.i.J(i3);
            } else {
                c.e.d().c(87);
            }
        }
    }

    public static void K(int i2) {
        if (i2 == 0) {
            u0.d.F1();
        }
    }

    public static void L(int i2) {
        if (i2 == 0) {
            u0.d.w1();
        }
    }

    public static void M(int i2) {
        if (i2 == 0) {
            u0.d.G1();
        }
    }

    public static void N(int i2) {
        if (i2 == 0) {
            u0.d.H1();
        }
    }

    public static void O(int i2) {
        if (i2 == 0) {
            int i3 = u0.b.D;
            if (i3 == 11 || i3 == 13) {
                a.i.N(i3);
            } else {
                c.e.d().c(88);
            }
        }
    }

    public static void P(int i2) {
        if (i2 == 0 && u0.b.D == 4) {
            o0.e.f16766b.s(2);
        }
    }

    public static void Q(int i2) {
        if (i2 == 0 && u0.b.D == 4) {
            o0.e.f16766b.t();
        }
    }

    public static void R(int i2) {
        if (i2 == 0) {
            if (nt.f8655p == 0) {
                u0.d.I1();
            } else if (o1.u.Y0().startsWith("com.syu") || o1.u.Y0().startsWith("com.android.launcher")) {
                q0(nt.f8655p == 2 ? 3 : 4);
            } else {
                a.i.Q(22);
            }
        }
    }

    public static void S(int i2) {
        int i3 = u0.b.D;
        if (i2 == 0) {
            if (nt.f8655p == 0) {
                u0.d.J1();
                return;
            }
            if (o1.u.Y0().startsWith("com.syu") || o1.u.Y0().startsWith("com.android.launcher")) {
                q0(nt.f8655p == 2 ? 6 : 5);
                return;
            }
            if (o1.u.S("com.autonavi.amapauto")) {
                a.i.b(1);
            } else if (a.i.v(o1.u.Y0())) {
                a.i.N(i3);
            } else {
                a.i.Q(21);
            }
        }
    }

    public static void T(int i2) {
        int i3 = u0.b.D;
        if (i2 == 0) {
            if (o1.u.S("com.autonavi.amapauto")) {
                a.i.b(1);
                return;
            }
            if (o1.u.Y0().equals("com.zjinnova.zlink")) {
                a.i.Q(21);
                return;
            } else if (a.i.v(o1.u.Y0())) {
                a.i.N(i3);
                return;
            } else {
                q0(5);
                return;
            }
        }
        if (o1.u.S("com.autonavi.amapauto")) {
            a.i.b(0);
            return;
        }
        if (o1.u.Y0().equals("com.zjinnova.zlink")) {
            a.i.Q(22);
        } else if (a.i.v(o1.u.Y0())) {
            a.i.J(i3);
        } else {
            q0(6);
        }
    }

    public static void U(int i2) {
        int i3 = u0.b.D;
        if (i2 == 0) {
            a.f.p().t(LogType.CANBUS, " DataCanbus.sExistKeyDirect " + nt.f8655p + "  action = " + i2);
            if (nt.f8655p == 0) {
                u0.d.K1();
                return;
            }
            if (o1.u.Y0().startsWith("com.syu") || o1.u.Y0().startsWith("com.android.launcher")) {
                q0(nt.f8655p == 2 ? 5 : 6);
                return;
            }
            if (o1.u.S("com.autonavi.amapauto")) {
                a.i.b(0);
            } else if (a.i.v(o1.u.Y0())) {
                a.i.J(i3);
            } else {
                a.i.Q(22);
            }
        }
    }

    public static void V(int i2) {
        if (i2 == 0 && u0.b.D == 1) {
            w0.d.f17790b.k();
        }
    }

    public static void W(int i2) {
        if (i2 == 0 && u0.b.D == 1) {
            w0.d.f17790b.v(2);
        }
    }

    public static void X(int i2) {
        if (i2 == 0 && u0.b.D == 1) {
            w0.d.f17790b.B();
        }
    }

    public static void Y(int i2) {
        if (i2 == 0 && u0.b.D == 1) {
            w0.d.f17790b.h();
        }
    }

    public static void Z(int i2) {
        if (i2 == 0) {
            o1.u.O();
        }
    }

    public static void a(Runnable runnable) {
        j0.f16912g.c(runnable);
    }

    public static void a0(int i2) {
        if (i2 == 0 && u0.b.D == 1) {
            w0.d.f17790b.w(2);
        }
    }

    public static void b(Runnable runnable) {
        j0.f16915j.c(runnable);
    }

    public static void b0(int i2) {
        if (i2 == 0) {
            o1.u.W0();
        }
    }

    public static void c(int i2) {
        if (i2 == 0) {
            c.e.d().c(544);
        }
    }

    public static void c0(int i2) {
        if (i2 == 0) {
            o1.u.Z0();
        }
    }

    public static void d(int i2) {
        if (i2 == 0) {
            qt.A0(1008, null, null, null);
        }
    }

    public static void d0(int i2) {
        if (i2 == 0) {
            if (nt.f8655p == 0) {
                u0.d.L1();
            } else if (o1.u.Y0().startsWith("com.syu") || o1.u.Y0().startsWith("com.android.launcher")) {
                q0(1);
            } else {
                a.i.Q(19);
            }
        }
    }

    public static void e(int i2) {
        if (i2 == 0) {
            u0.d.t1();
        }
    }

    public static void e0(int i2) {
        if (i2 == 0) {
            u0.d.Q(-2);
        }
    }

    public static void f(int i2) {
        if (i2 == 0) {
            o1.u.j();
        }
    }

    public static void f0(int i2) {
        if (i2 == 0) {
            u0.d.Q(-1);
        }
    }

    public static void g(int i2) {
        if (i2 == 0 && u0.b.D == 2) {
            h0.c.f2425b.C(0);
        }
    }

    public static void g0(int i2) {
        if (i2 == 0) {
            if (u0.b.f17320f == 0) {
                u0.d.U1(1);
            } else {
                u0.d.U1(0);
            }
        }
    }

    public static void h(int i2) {
        if (i2 == 0) {
            o1.u.q();
        }
    }

    public static void h0(int i2) {
        if (i2 == 0) {
            u0.d.t3(1);
            return;
        }
        u0.d.t3(0);
        int i3 = u0.b.F;
        if (i3 == -1) {
            u0.b.f17311c.c(0);
        } else if (i3 != 4) {
            u0.b.f17311c.c(u0.b.F);
        } else {
            u0.b.f17311c.c(0);
            o1.k.a().postDelayed(new a(), 1000L);
        }
    }

    public static void i(int i2) {
        if (i2 == 0) {
            o1.u.u();
        }
    }

    public static String i0(String str) {
        String[] strArrSplit = str.replaceAll("[^0-9\\-]", " ").trim().split("\\s+");
        for (int length = strArrSplit.length - 1; length >= 0; length--) {
            if (!strArrSplit[length].isEmpty() && !strArrSplit[length].equals("-")) {
                try {
                    Integer.parseInt(strArrSplit[length]);
                    return strArrSplit[length];
                } catch (NumberFormatException unused) {
                    continue;
                }
            }
        }
        return null;
    }

    public static void j(int i2) {
        if (i2 == 0) {
            o1.u.v();
        }
    }

    public static int j0() {
        int i2 = nt.f8633a;
        int i3 = i2 & 65535;
        int i4 = (i2 >> 16) & 65535;
        if (i3 == 4 || i3 == 5) {
            return 9600;
        }
        if (i3 == 6) {
            return 19200;
        }
        if (i3 == 82 || i3 == 83) {
            return 9600;
        }
        if (i3 == 105 || i3 == 106 || i3 == 111) {
            return 19200;
        }
        if (i3 == 112) {
            return (i4 == 49 || i4 == 50 || i4 == 51 || i4 == 56 || i4 == 57 || i4 == 58 || i4 == 75 || i4 == 111 || i4 == 122 || i4 == 133 || i4 == 137 || i4 == 138 || i4 == 139 || i4 == 140 || i4 == 141 || i4 == 142) ? 57600 : 38400;
        }
        if (i3 == 186 || i3 == 187) {
            return 19200;
        }
        if (i3 == 198 || i3 == 199) {
            return 9600;
        }
        if (i3 != 234 && i3 != 235 && i3 != 238 && i3 != 239) {
            switch (i3) {
                case 15:
                case 18:
                    break;
                case 28:
                    return 9600;
                case 62:
                case 67:
                case 76:
                case 79:
                case 95:
                case 96:
                case 97:
                case 98:
                case 99:
                case 102:
                case 119:
                case 123:
                    return 19200;
                case 127:
                    return 9600;
                case 137:
                case WifiStateMachine.CMD_POLL_BATCHED_SCAN /* 131209 */:
                    return 19200;
                case 140:
                case 147:
                    return 9600;
                case 153:
                case 156:
                case 131225:
                    return 19200;
                case 160:
                    return i4 == 54 ? 57600 : 38400;
                case 163:
                    return 19200;
                case 180:
                    return 9600;
                case 204:
                    return 19200;
                case 213:
                    return 9600;
                case 215:
                case 217:
                case 221:
                    return 19200;
                case 226:
                case 229:
                    return 9600;
                case 232:
                    return i4 == 1 ? 19200 : 38400;
                case 249:
                    return 19200;
                case 274:
                case BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA /* 276 */:
                case 295:
                case 65810:
                    return 9600;
                case 298:
                    return (i4 == 46 || i4 == 47 || i4 == 60 || i4 == 61 || i4 == 64 || i4 == 73 || i4 == 74 || i4 == 85) ? 57600 : 38400;
                case 328:
                case 339:
                case 362:
                case 65864:
                case 65875:
                    return 19200;
                case 375:
                    return 115200;
                case 393:
                case 65929:
                case 131465:
                case 262537:
                    return 19200;
                case 398:
                    if (i4 == 4 || i4 == 5) {
                        return 38400;
                    }
                    return (i4 == 0 || i4 == 1) ? 1200 : 19200;
                case 439:
                    if (i4 != 138 && i4 != 246) {
                        return 38400;
                    }
                case 423:
                    return 19200;
                case 452:
                    return (i4 == 37 || i4 == 134) ? 19200 : 38400;
                case 455:
                    return (i4 == 45 || i4 == 87 || i4 == 181) ? 57600 : 38400;
                case 456:
                    return (i4 == 91 || i4 == 186 || i4 == 190) ? 57600 : 38400;
                case 462:
                case 463:
                    return 115200;
                default:
                    switch (i3) {
                        case 447:
                            return 19200;
                        case 448:
                            return 57600;
                        case 449:
                            return 19200;
                        default:
                            return 38400;
                    }
            }
        }
        return 19200;
    }

    public static void k(int i2) {
        if (i2 == 0) {
            o1.u.x();
        }
    }

    public static l0.a k0(int i2) {
        int i3 = nt.f8633a & 65535;
        int i4 = (i2 >> 16) & 65535;
        if (i3 == 55) {
            return new t();
        }
        if (i3 == 56) {
            return new u();
        }
        switch (i3) {
            case 0:
                return new o();
            case 1:
                return new t();
            case 2:
                return new v();
            case 3:
                return new u();
            case 4:
                return new c();
            case 5:
                return new g();
            case 6:
                return new p();
            default:
                switch (i3) {
                    case 8:
                        return new t();
                    case 9:
                        return new t();
                    case 10:
                        return new t();
                    case 11:
                        return new u();
                    case 12:
                        return new u();
                    case 13:
                        return new u();
                    case 14:
                        return new u();
                    case 15:
                        return new r();
                    case 16:
                        return new w();
                    case 17:
                        return new u();
                    case 18:
                        return new p();
                    case 19:
                        return new v();
                    case 20:
                        return new v();
                    case 21:
                        return new u();
                    case 22:
                        return new v();
                    case 23:
                        return new u();
                    case 24:
                        return new v();
                    case 25:
                        return new v();
                    default:
                        switch (i3) {
                            case 27:
                                return new v();
                            case 28:
                                return new g();
                            case 29:
                                return new t();
                            case 30:
                                return new u();
                            case 31:
                                return new v();
                            case 32:
                                return new t();
                            case 33:
                                return new u();
                            case 34:
                                return new t();
                            case 35:
                                return new v();
                            case 36:
                                return new u();
                            case 37:
                                return new u();
                            case 38:
                                return new t();
                            case 39:
                                return new v();
                            case 40:
                                return new v();
                            case 41:
                                return new v();
                            case 42:
                                return new u();
                            case 43:
                                return new t();
                            case 44:
                                return new v();
                            case 45:
                                return new u();
                            case 46:
                                return new u();
                            case 47:
                                return new v();
                            case 48:
                                return new v();
                            case 49:
                                return new u();
                            case 51:
                                return new v();
                            case 58:
                                return new v();
                            case 92:
                                return new u();
                            case 108:
                                return new u();
                            case 109:
                                return new u();
                            case 110:
                                return new u();
                            case 111:
                                return new g();
                            case 112:
                                return new v();
                            case 113:
                                return new v();
                            case 114:
                                return new v();
                            case 115:
                                return new u();
                            case 116:
                                return new v();
                            case 117:
                                return new v();
                            case 118:
                                return new v();
                            case 119:
                                return new r();
                            case 120:
                                return new v();
                            case 121:
                                return new u();
                            case 122:
                                return new u();
                            case 123:
                                return new s();
                            case 124:
                                return new v();
                            case 125:
                                return new t();
                            case 126:
                                return new t();
                            case 127:
                                return new g();
                            case 128:
                                return new u();
                            case 129:
                                return new u();
                            case 130:
                                return new t();
                            case 131:
                                return new v();
                            case 132:
                                return new u();
                            case 133:
                                return new g();
                            case 134:
                                return new v();
                            case 135:
                                return new v();
                            case 136:
                                return new t();
                            case 137:
                                return new r();
                            case 139:
                                return new v();
                            case 140:
                                return new g();
                            case 141:
                                return new v();
                            case 142:
                                return new v();
                            case 143:
                                return new v();
                            case 144:
                                return new t();
                            case 145:
                                return new t();
                            case 147:
                                return new g();
                            case 148:
                                return new g();
                            case 149:
                                return new w();
                            case 150:
                                return new t();
                            case 151:
                                return new v();
                            case 152:
                                return new v();
                            case 153:
                                return new r();
                            case 154:
                                return new v();
                            case 155:
                                return new t();
                            case 156:
                                return new g();
                            case 157:
                                return new v();
                            case 158:
                                return new v();
                            case 159:
                                return new v();
                            case 160:
                                return new v();
                            case 161:
                                return new v();
                            case 162:
                                return new u();
                            case 163:
                                return new s();
                            case 164:
                                return new t();
                            case 165:
                                return new v();
                            case 166:
                                return new u();
                            case 167:
                                return new v();
                            case 168:
                                return new v();
                            case 169:
                                return new v();
                            case 170:
                                return new v();
                            case 171:
                                return new v();
                            case 172:
                                return new v();
                            case 173:
                                return new u();
                            case 174:
                                return new v();
                            case 175:
                                return new v();
                            case 176:
                                return new v();
                            case 177:
                                return new v();
                            case 178:
                                return new v();
                            case 179:
                                return new t();
                            case 180:
                                return new g();
                            case 182:
                                return new g();
                            case 183:
                                return new t();
                            case 184:
                                return new v();
                            case 185:
                                return new v();
                            case 186:
                                return new s();
                            case 187:
                                return new s();
                            case 188:
                                return new v();
                            case 190:
                                return new v();
                            case 191:
                                return new g();
                            case 192:
                                return new u();
                            case 194:
                                return new v();
                            case 195:
                                return new v();
                            case 197:
                                return new v();
                            case 198:
                                return new g();
                            case 199:
                                return new g();
                            case 201:
                                return new g();
                            case 202:
                                return new v();
                            case 203:
                                return new v();
                            case 204:
                                return new s();
                            case 205:
                                return new g();
                            case 206:
                                return new t();
                            case 207:
                                return new t();
                            case 209:
                                return new g();
                            case 210:
                                return new v();
                            case 211:
                                return new v();
                            case 212:
                                return new v();
                            case 213:
                                return new g();
                            case 214:
                                return new v();
                            case 215:
                                return new s();
                            case 216:
                                return new v();
                            case 217:
                                return new s();
                            case 218:
                                return new v();
                            case 221:
                                return new s();
                            case 222:
                                return new u();
                            case 223:
                                return new t();
                            case 224:
                                return new t();
                            case 225:
                                return new v();
                            case 226:
                                return new g();
                            case 227:
                                return new v();
                            case 228:
                                return new t();
                            case 229:
                                return new g();
                            case 230:
                                return new t();
                            case 231:
                                return new v();
                            case 232:
                                return new w();
                            case 233:
                                return new v();
                            case 234:
                                return new s();
                            case 235:
                                return new s();
                            case 236:
                                return new u();
                            case 237:
                                return new v();
                            case 238:
                                return new s();
                            case 239:
                                return new g();
                            case 240:
                                return new v();
                            case i.a.Theme_actionModeShareDrawable /* 241 */:
                                return new t();
                            case i.a.Theme_actionModeFindDrawable /* 242 */:
                                return new v();
                            case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                                return new t();
                            case i.a.Theme_actionModePopupWindowStyle /* 244 */:
                                return new v();
                            case i.a.Theme_preferencePanelStyle /* 246 */:
                                return new u();
                            case i.a.Theme_preferenceHeaderPanelStyle /* 247 */:
                                return new u();
                            case 248:
                                return new q();
                            case 249:
                                return new r();
                            case 250:
                                return new v();
                            case 251:
                                return new v();
                            case 252:
                                return new u();
                            case i.a.Theme_dialogTitleDecorLayout /* 253 */:
                                return new v();
                            case 254:
                                return new u();
                            case 255:
                                return new v();
                            case 256:
                                return new t();
                            case 258:
                                return new i();
                            case 259:
                                return new v();
                            case 260:
                                return new u();
                            case 262:
                                return new v();
                            case 263:
                                return new v();
                            case 265:
                                return new v();
                            case 266:
                                return new v();
                            case 267:
                                return new x();
                            case 268:
                                return new t();
                            case i.a.Theme_findOnPageNextDrawable /* 269 */:
                                return new t();
                            case i.a.Theme_findOnPagePreviousDrawable /* 270 */:
                                return new u();
                            case BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA /* 272 */:
                                return new v();
                            case 273:
                                return new v();
                            case 274:
                                return new v();
                            case 275:
                                return new v();
                            case BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA /* 276 */:
                                return new v();
                            case 277:
                                return new v();
                            case 278:
                                return new v();
                            case 279:
                                return new v();
                            case BluetoothClass.Device.COMPUTER_WEARABLE /* 280 */:
                                return new v();
                            case 281:
                                return new v();
                            case 282:
                                return new u();
                            case 286:
                                return new v();
                            case 287:
                                return new v();
                            case MediaProperties.HEIGHT_288 /* 288 */:
                                return new g();
                            case 289:
                                return new u();
                            case 290:
                                return new v();
                            case 291:
                                return new q();
                            case 292:
                                return new v();
                            case 293:
                                return new u();
                            case 294:
                                return new u();
                            case 295:
                                return new e();
                            case 296:
                                return new g();
                            case 297:
                                return new u();
                            case 298:
                                return new v();
                            case 300:
                                return new v();
                            case TextTrackRegion.SCROLL_VALUE_SCROLL_UP /* 301 */:
                                return new v();
                            case 302:
                                return new u();
                            case 303:
                                return new u();
                            case 304:
                                return new u();
                            case 305:
                                return new v();
                            case 306:
                                return new v();
                            case 307:
                                return new v();
                            case 308:
                                return new u();
                            case 309:
                                return new v();
                            case 310:
                                return new v();
                            case 311:
                                return new v();
                            case 312:
                                return new v();
                            case 313:
                                return new t();
                            case 314:
                                return new v();
                            case 315:
                                return new v();
                            case 317:
                                return new u();
                            case 318:
                                return new v();
                            case 319:
                                return new u();
                            case 320:
                                return new u();
                            case 321:
                                return new u();
                            case 322:
                                return new t();
                            case 323:
                                return new v();
                            case 324:
                                return new v();
                            case 325:
                                return new t();
                            case 326:
                                return new v();
                            case 327:
                                return new v();
                            case 328:
                                return new q();
                            case 329:
                                return new v();
                            case 330:
                                return new v();
                            case 331:
                                return new v();
                            case 332:
                                return new v();
                            case 333:
                                return new v();
                            case 334:
                                return new v();
                            case 335:
                                return new g();
                            case 336:
                                return new u();
                            case 337:
                                return new u();
                            case 338:
                                return new v();
                            case 339:
                                return new s();
                            case 340:
                                return new v();
                            case 341:
                                return new u();
                            case 342:
                                return new v();
                            case 344:
                                return new v();
                            case 345:
                                return new u();
                            case 346:
                                return new t();
                            case 348:
                                return new v();
                            case 349:
                                return new v();
                            case SpellChecker.WORD_ITERATOR_INTERVAL /* 350 */:
                                return new v();
                            case 351:
                                return new u();
                            case 352:
                                return new u();
                            case 353:
                                return new v();
                            case 354:
                                return new v();
                            case 355:
                                return new v();
                            case 357:
                                return new u();
                            case 358:
                                return new v();
                            case 359:
                                return new v();
                            case 362:
                                return new r();
                            case 366:
                                return new u();
                            case 367:
                                return new v();
                            case 368:
                                return new t();
                            case 369:
                                return new v();
                            case 370:
                                return new v();
                            case 371:
                                return new v();
                            case 372:
                                return new u();
                            case 373:
                                return new v();
                            case 374:
                                return new v();
                            case 375:
                                return new t();
                            case 376:
                                return new t();
                            case 377:
                                return new v();
                            case 378:
                                return new v();
                            case 379:
                                return new v();
                            case 380:
                                return new v();
                            case 382:
                                return new v();
                            case 383:
                                return new v();
                            case 385:
                                return new v();
                            case 386:
                                return new v();
                            case 388:
                                return new v();
                            case 389:
                                return new v();
                            case 390:
                                return new v();
                            case 392:
                                return new v();
                            case 393:
                                return new r();
                            case 394:
                                return new u();
                            case 395:
                                return new u();
                            case 396:
                                return new v();
                            case 397:
                                return new v();
                            case 398:
                                if (i4 == 5) {
                                    return new v();
                                }
                                return (i4 == 0 || i4 == 1) ? new f() : new g();
                            case 399:
                                return new t();
                            case 401:
                                return new v();
                            case 402:
                                return new v();
                            case 403:
                                return new v();
                            case UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL /* 404 */:
                                return new v();
                            case UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL /* 405 */:
                                return new v();
                            case Downloads.Impl.STATUS_NOT_ACCEPTABLE /* 406 */:
                                return new v();
                            case 407:
                                return new v();
                            case 409:
                                return new v();
                            case 410:
                                return new v();
                            case Downloads.Impl.STATUS_LENGTH_REQUIRED /* 411 */:
                                return new u();
                            case Downloads.Impl.STATUS_PRECONDITION_FAILED /* 412 */:
                                return new v();
                            case 413:
                                return new v();
                            case 414:
                                return new v();
                            case 415:
                                return new u();
                            case 416:
                                return new u();
                            case 417:
                                return new v();
                            case 418:
                                return new v();
                            case 419:
                                return new u();
                            case 420:
                                return new u();
                            case 421:
                                return new u();
                            case 422:
                                return new v();
                            case 423:
                                return new d();
                            case 424:
                                return i4 == 0 ? new q() : new v();
                            case 425:
                                return new v();
                            case 426:
                                return new o();
                            case 427:
                                return new v();
                            case 428:
                                return new v();
                            case 429:
                                return new v();
                            case 430:
                                return new u();
                            case 431:
                                return new v();
                            case 432:
                                return new v();
                            case 433:
                                return new v();
                            case 434:
                                return new v();
                            case 437:
                                return new v();
                            case 438:
                                return new v();
                            case 439:
                                return new v();
                            case 442:
                                return new t();
                            case 443:
                                return new u();
                            case 444:
                                return (i4 == 94 || i4 == 95 || i4 == 96) ? new t() : new u();
                            case 445:
                                return new p();
                            case 446:
                                return new u();
                            case 447:
                                return new r();
                            case 448:
                                return new n();
                            case 449:
                                return new h();
                            case 450:
                                return new y();
                            case 452:
                                return new v();
                            case 453:
                                return new v();
                            case 454:
                                return new v();
                            case 455:
                                return new v();
                            case 456:
                                return new v();
                            case 460:
                                return new k();
                            case 461:
                                return new l();
                            case 462:
                                return new j();
                            case 463:
                                return new m();
                            case 1638698:
                                return new v();
                            case 3276820:
                                return new v();
                            case 6422589:
                                return new v();
                            default:
                                switch (i3) {
                                    case 60:
                                        return new v();
                                    case 61:
                                        return new v();
                                    case 62:
                                        return new s();
                                    default:
                                        switch (i3) {
                                            case 64:
                                                return new u();
                                            case 65:
                                                return new u();
                                            case 66:
                                                return new t();
                                            case 67:
                                                return new t();
                                            case 68:
                                                return new v();
                                            case 69:
                                                return new v();
                                            case 70:
                                                return new v();
                                            case 71:
                                                return new v();
                                            case 72:
                                                return new g();
                                            default:
                                                switch (i3) {
                                                    case 74:
                                                        return new g();
                                                    case 75:
                                                        return new u();
                                                    case 76:
                                                        return new t();
                                                    case 77:
                                                        return new v();
                                                    default:
                                                        switch (i3) {
                                                            case 79:
                                                                return new q();
                                                            case 80:
                                                                return new v();
                                                            case 81:
                                                                return new v();
                                                            case 82:
                                                                return new g();
                                                            case 83:
                                                                return new g();
                                                            case 84:
                                                                return new g();
                                                            case 85:
                                                                return new v();
                                                            case 86:
                                                                return new u();
                                                            case 87:
                                                                return new t();
                                                            case 88:
                                                                return new v();
                                                            case 89:
                                                                return new q();
                                                            case 90:
                                                                return new u();
                                                            default:
                                                                switch (i3) {
                                                                    case 94:
                                                                        return new t();
                                                                    case 95:
                                                                        return new p();
                                                                    case 96:
                                                                        return new p();
                                                                    case 97:
                                                                        return new p();
                                                                    case 98:
                                                                        return new p();
                                                                    case 99:
                                                                        return new p();
                                                                    case 100:
                                                                        return new v();
                                                                    case 101:
                                                                        return new t();
                                                                    case 102:
                                                                        return new r();
                                                                    default:
                                                                        switch (i3) {
                                                                            case 104:
                                                                                return new t();
                                                                            case 105:
                                                                                return new b();
                                                                            case 106:
                                                                                return new s();
                                                                            default:
                                                                                return new o();
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public static void l(int i2) {
        if (i2 == 0) {
            o1.u.y();
        }
    }

    public static void l0(int i2, int i3) {
        y0.e eVar;
        if (m0.b.f13172e == 1 || i2 == -1) {
            return;
        }
        if (u0.b.w1 == 1) {
            a.f.p().t(LogType.CANBUS, " FinalCanbus.U_KEYCODE_STUDY  ==  " + i2);
            o1.x.C(nt.f8643f, 1053, new int[]{i2}, null, null);
        }
        if (u0.b.f17347o == 1 && i2 != 23 && i3 == 0) {
            return;
        }
        if (w0.d.J && w0.f.i() == 1 && i3 == 0) {
            return;
        }
        if (g.e.a() != 0 && g.e.a() != 1 && i3 == 0 && (eVar = y0.f.f18034b) != null && (eVar instanceof AudioDevice)) {
            ((AudioDevice) eVar).z(false);
        }
        if (i3 == 0 && i2 != 252) {
            if (u0.b.f17320f != 1 && u0.b.f17332j == 1) {
                u0.d.N(0);
            }
            if (u0.b.f17334j1 == 1) {
                u0.d.j3(0);
            }
        }
        o1.o oVar = e.c.f1595a;
        if (oVar == null || !oVar.a(0, new int[]{i2, i3}, null, null, null) || i3 == 1) {
            int i4 = u0.b.D;
            File file = new File(Environment.getExternalStorageDirectory(), "keys/keys.txt");
            if (!file.exists()) {
                int i5 = 0;
                while (true) {
                    int[] iArr = a0.f12996a;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    iArr[i5] = i5;
                    i5++;
                }
            } else {
                n0(file);
                int i6 = 0;
                while (true) {
                    int[] iArr2 = a0.f12996a;
                    if (i6 >= iArr2.length) {
                        break;
                    }
                    if (iArr2[i6] == -1) {
                        iArr2[i6] = i6;
                    }
                    i6++;
                }
            }
            n1.b bVarP = a.f.p();
            LogType logType = LogType.CANBUS;
            StringBuilder sb = new StringBuilder();
            sb.append(" FinalAnalysisCanbus.CanbusKeyDATA[keyCode] ");
            int[] iArr3 = a0.f12996a;
            sb.append(iArr3[i2]);
            sb.append("  action = ");
            sb.append(i3);
            bVarP.t(logType, sb.toString());
            int i7 = iArr3[i2];
            if (i7 != 7) {
                if (i7 != 8) {
                    int i8 = u0.b.t1;
                    if (i8 == 1) {
                        e.g.D(1);
                    } else if (i8 == 2) {
                        e.g.C(1);
                    }
                } else if (i3 == 0) {
                    if (u0.b.t1 == 1) {
                        e.g.D(1);
                    }
                    u0.b.t1 = 2;
                } else {
                    u0.b.t1 = 0;
                }
            } else if (i3 == 0) {
                if (u0.b.t1 == 2) {
                    e.g.C(1);
                }
                u0.b.t1 = 1;
            } else {
                u0.b.t1 = 0;
            }
            switch (iArr3[i2]) {
                case 0:
                    e.g.r(i3);
                    break;
                case 1:
                    e.g.m(i3);
                    break;
                case 2:
                    e.g.k(i3);
                    break;
                case 3:
                    if (a.i.k("persist.fyt.canbus_key_next", 0) != 1) {
                        O(i3);
                    } else {
                        J(i3);
                    }
                    break;
                case 4:
                    if (a.i.k("persist.fyt.canbus_key_next", 0) != 1) {
                        J(i3);
                    } else {
                        O(i3);
                    }
                    break;
                case 5:
                    e.g.i(i3);
                    break;
                case 6:
                    e.g.b(i3);
                    break;
                case 7:
                    if (i3 == 0) {
                        f13001a = 1;
                    } else if (i3 == 1) {
                        f13001a = 0;
                    }
                    if (f13002b == 1) {
                        if (a.i.k("persist.fyt.canbus_key_volume", 0) == 1) {
                            e.g.D(1);
                        } else {
                            e.g.C(1);
                        }
                        f13002b = 0;
                    }
                    if (a.i.k("persist.fyt.canbus_key_volume", 0) != 1) {
                        e.g.D(i3);
                    } else {
                        e.g.C(i3);
                    }
                    break;
                case 8:
                    if (i3 == 0) {
                        f13002b = 1;
                    } else if (i3 == 1) {
                        f13002b = 0;
                    }
                    if (f13001a == 1) {
                        if (a.i.k("persist.fyt.canbus_key_volume", 0) == 1) {
                            e.g.C(1);
                        } else {
                            e.g.D(1);
                        }
                        f13001a = 0;
                    }
                    if (a.i.k("persist.fyt.canbus_key_volume", 0) != 1) {
                        e.g.C(i3);
                    } else {
                        e.g.D(i3);
                    }
                    break;
                case 9:
                    e.g.i(i3);
                    break;
                case 10:
                    e.g.a(i3);
                    break;
                case 11:
                    e.g.h(i3);
                    break;
                case 12:
                    e.g.l(i3);
                    break;
                case 13:
                    e.g.B(i3);
                    break;
                case 14:
                    e.g.f(i3);
                    break;
                case 15:
                    e.g.u(i3);
                    break;
                case 16:
                    e.g.q(i3);
                    break;
                case 17:
                    if (i3 == 0) {
                        c.e.d().c(590);
                    }
                    break;
                case 18:
                    L(i3);
                    break;
                case 19:
                    e.g.z(i3);
                    break;
                case 20:
                    e.g.y(i3);
                    break;
                case 21:
                    e.g.c(i3);
                    break;
                case 22:
                    e.g.g(i3);
                    break;
                case 23:
                    e.g.o(i3);
                    break;
                case 24:
                    e.g.t(i3);
                    break;
                case 25:
                    e.g.d(i3);
                    break;
                case 26:
                    v(i3);
                    break;
                case 27:
                    t(i3);
                    break;
                case 28:
                    s(i3);
                    break;
                case 29:
                    r(i3);
                    break;
                case 30:
                    S(i3);
                    break;
                case 31:
                    U(i3);
                    break;
                case 32:
                    w(i3);
                    break;
                case 33:
                    R(i3);
                    break;
                case 34:
                    if (a.i.k("persist.fyt.canbus_key_next", 0) != 1) {
                        d0(i3);
                    } else {
                        o(i3);
                    }
                    break;
                case 35:
                    if (a.i.k("persist.fyt.canbus_key_next", 0) != 1) {
                        o(i3);
                    } else {
                        d0(i3);
                    }
                    break;
                case 36:
                    M(i3);
                    break;
                case 37:
                    K(i3);
                    break;
                case 38:
                    q(i3);
                    break;
                case 39:
                    W(i3);
                    break;
                case 40:
                    y(i3);
                    break;
                case 41:
                    z(i3);
                    break;
                case 42:
                    A(i3);
                    break;
                case 43:
                    B(i3);
                    break;
                case 44:
                    C(i3);
                    break;
                case 45:
                    D(i3);
                    break;
                case 46:
                    E(i3);
                    break;
                case 47:
                    F(i3);
                    break;
                case 48:
                    G(i3);
                    break;
                case 49:
                    x(i3);
                    break;
                case 50:
                    I(i3);
                    break;
                case 51:
                    H(i3);
                    break;
                case 52:
                    c0(i3);
                    break;
                case 53:
                    f(i3);
                    break;
                case 54:
                    N(i3);
                    break;
                case 55:
                    l(i3);
                    break;
                case 56:
                    b0(i3);
                    break;
                case 57:
                    i(i3);
                    break;
                case 58:
                    Z(i3);
                    break;
                case 59:
                    p(i3);
                    break;
                case 60:
                    m(i3);
                    break;
                case 61:
                    k(i3);
                    break;
                case 62:
                    d(i3);
                    break;
                case 63:
                    j(i3);
                    break;
                case 64:
                    V(i3);
                    break;
                case 65:
                    Q(i3);
                    break;
                case 66:
                    P(i3);
                    break;
                case 67:
                    Y(i3);
                    break;
                case 68:
                    X(i3);
                    break;
                case 69:
                    h0(i3);
                    break;
                case 70:
                    n(i3);
                    break;
                case 71:
                    e0(i3);
                    break;
                case 72:
                    f0(i3);
                    break;
                case 73:
                    e(i3);
                    break;
                case 74:
                    u(i3);
                    break;
                case 75:
                    c(i3);
                    break;
                case 76:
                    h(i3);
                    break;
                case 77:
                    g(i3);
                    break;
                case 78:
                    a0(i3);
                    break;
                case 79:
                    o1.u.G0();
                    break;
                case 80:
                    if (i3 == 0) {
                        if (nt.f8655p != 2) {
                            T(0);
                        } else {
                            T(1);
                        }
                    }
                    break;
                case 81:
                    if (i3 == 0) {
                        if (nt.f8655p != 2) {
                            T(1);
                        } else {
                            T(0);
                        }
                    }
                    break;
                case 82:
                    if (i3 == 0) {
                        if (o1.u.Y0().equals("com.zjinnova.zlink")) {
                            a.i.Q(66);
                        } else if (!a.i.v(o1.u.Y0())) {
                            q0(0);
                        } else {
                            a.i.M(i4);
                        }
                    }
                    break;
                case 83:
                    g0(i3);
                    break;
                case 84:
                    if (i3 == 0) {
                        c.e.d().c(591);
                    }
                    break;
                case 85:
                    if (i3 == 0) {
                        c.e.d().c(595);
                    }
                    break;
                case 86:
                    if (i3 == 0) {
                        c.e.d().c(596);
                    }
                    break;
                case 87:
                    if (i3 == 0) {
                        c.e.d().c(592);
                    }
                    break;
                case 88:
                    if (i3 == 0) {
                        c.e.d().c(628);
                    }
                    break;
                case 89:
                    if (i3 == 0) {
                        c.e.d().c(629);
                    }
                    break;
                case 90:
                    if (i3 == 0) {
                        c.e.d().c(630);
                    }
                    break;
                case 91:
                    if (i3 == 0) {
                        c.e.d().c(631);
                    }
                    break;
                case 92:
                    if (i3 == 0) {
                        c.e.d().c(632);
                    }
                    break;
                case 93:
                    if (i3 == 0) {
                        c.e.d().c(576);
                    }
                    break;
            }
        }
    }

    public static void m(int i2) {
        if (i2 == 0) {
            o1.u.A();
        }
    }

    public static void m0() {
        int i2 = z.f13138b;
        int iJ0 = j0();
        if (iJ0 != i2) {
            z.k.s(103, (iJ0 >> 16) & 255, (iJ0 >> 8) & 255, (iJ0 >> 0) & 255);
        }
    }

    public static void n(int i2) {
    }

    public static void n0(File file) {
        int i2;
        ArrayList arrayList = new ArrayList();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                String[] strArrSplit = line.split(":");
                if (strArrSplit.length >= 2) {
                    try {
                        arrayList.add(Integer.valueOf(Integer.parseInt(strArrSplit[0].trim())));
                    } catch (NumberFormatException unused) {
                        String strI0 = i0(line);
                        if (strI0 != null) {
                            arrayList.add(Integer.valueOf(Integer.parseInt(strI0)));
                        }
                    }
                } else {
                    String strI1 = i0(line);
                    if (strI1 != null) {
                        arrayList.add(Integer.valueOf(Integer.parseInt(strI1)));
                    }
                }
            }
            for (i2 = 0; i2 < arrayList.size(); i2++) {
                a0.f12996a[i2] = ((Integer) arrayList.get(i2)).intValue();
            }
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static void o(int i2) {
        if (i2 == 0) {
            if (nt.f8655p == 0) {
                u0.d.x1();
            } else if (o1.u.Y0().startsWith("com.syu") || o1.u.Y0().startsWith("com.android.launcher")) {
                q0(2);
            } else {
                a.i.Q(20);
            }
        }
    }

    public static void o0(Runnable runnable) {
        j0.f16912g.d(runnable);
    }

    public static void p(int i2) {
        if (i2 == 0) {
            o1.u.H();
        }
    }

    public static void p0(Runnable runnable) {
        j0.f16915j.d(runnable);
    }

    public static void q(int i2) {
        if (i2 == 0) {
            u0.d.t1();
        }
    }

    public static void q0(int i2) {
        u0.d.I3(60, i2);
    }

    public static void r(int i2) {
        int i3 = u0.b.D;
        if (i2 == 0) {
            if (nt.f8655p == 0) {
                u0.d.y1();
                return;
            }
            if (o1.u.Y0().startsWith("com.syu") || o1.u.Y0().startsWith("com.android.launcher")) {
                q0(0);
            } else if (a.i.v(o1.u.Y0())) {
                a.i.M(i3);
            } else {
                a.i.Q(66);
            }
        }
    }

    public static void r0(int i2) {
        int i3 = y0.f.f18037c - i2;
        y0.h.i0();
        y0.h.u0(o0.a(i3, 0, y0.f.f18049g));
    }

    public static void s(int i2) {
        if (i2 == 0) {
            u0.d.x1();
        }
    }

    public static void s0(int i2) {
        int i3 = y0.f.f18037c + i2;
        y0.h.i0();
        y0.h.u0(o0.a(i3, 0, y0.f.f18049g));
    }

    public static void t(int i2) {
        if (i2 == 0) {
            u0.d.L1();
        }
    }

    public static void u(int i2) {
        if (i2 == 0) {
            c.e.d().c(543);
        }
    }

    public static void v(int i2) {
        o1.o oVar = z.f13141e;
        if ((oVar == null || !oVar.a(i2, null, null, null, null) || i2 == 1) && i2 == 0) {
            c.e.d().c(6);
        }
    }

    public static void w(int i2) {
        if (i2 == 0) {
            if (nt.f8655p == 0) {
                u0.d.B1();
                return;
            }
            a.f.p().t(LogType.CANBUS, "JumpPage.topApp() = " + o1.u.Y0());
            if (o1.u.Y0().startsWith("com.syu") || o1.u.Y0().startsWith("com.android.launcher")) {
                q0(nt.f8655p == 2 ? 4 : 3);
            } else {
                a.i.Q(21);
            }
        }
    }

    public static void x(int i2) {
        if (i2 == 0) {
            u0.d.P0();
        }
    }

    public static void y(int i2) {
        if (i2 == 0) {
            u0.d.Q0();
        }
    }

    public static void z(int i2) {
        if (i2 == 0) {
            u0.d.R0();
        }
    }
}
