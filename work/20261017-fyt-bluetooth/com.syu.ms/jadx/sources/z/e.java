package z;

import android.net.ProxyProperties;
import android.util.Log;
import android.util.SparseArray;
import com.syu.jni.ControlNative;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Date;
import o1.q;
import o1.s0;
import o1.u;
import plugins.ZLink;

/* JADX INFO: loaded from: classes.dex */
public class e implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f18186a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18187b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18188c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18189d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f18190e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f18191f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f18192g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f18193h = false;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.b.f17311c.c(-1);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.b.f17311c.c(-1);
        }
    }

    public final void a() {
        h0.e.L(1);
        h0.e.l(0);
        h0.e.O(ProxyProperties.LOCAL_EXCL_LIST);
        h0.e.P(ProxyProperties.LOCAL_EXCL_LIST);
        h0.e.M(ProxyProperties.LOCAL_EXCL_LIST);
        h0.e.N(null);
        h0.e.k(null);
        h0.e.i(null);
        h0.e.j(null);
        h0.e.o(0);
        h0.e.m(0);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        if (bArr == null || bArr.length == 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f18187b + bArr.length > 1024) {
            this.f18187b = 0;
            this.f18189d = 1;
            this.f18188c = 0;
            this.f18190e = false;
        }
        System.arraycopy(bArr, 0, this.f18186a, this.f18187b, bArr.length);
        int length = this.f18187b + bArr.length;
        this.f18187b = length;
        int i3 = this.f18189d;
        if (length <= i3) {
            return;
        }
        while (true) {
            i2 = this.f18187b;
            if (i3 >= i2) {
                break;
            }
            byte[] bArr2 = this.f18186a;
            int i4 = i3 - 1;
            if (bArr2[i4] == 13 && bArr2[i3] == 10) {
                if (this.f18190e) {
                    int i5 = this.f18188c;
                    if (i3 - i5 < 5) {
                        this.f18188c = i4;
                    } else {
                        this.f18190e = false;
                        d(bArr2, i5 + 2, (i3 - i5) - 3);
                        this.f18188c = i3 + 1;
                    }
                } else {
                    this.f18190e = true;
                    this.f18188c = i4;
                }
                i3++;
            }
            i3++;
        }
        int i6 = this.f18188c;
        if (i6 != 0) {
            if (i6 == i2) {
                this.f18187b = 0;
            } else {
                int i7 = i2 - i6;
                this.f18187b = i7;
                byte[] bArr3 = this.f18186a;
                System.arraycopy(bArr3, i6, bArr3, 0, i7);
            }
            this.f18188c = 0;
        }
        int i8 = this.f18187b;
        if (i8 > 1) {
            this.f18189d = i8;
        } else {
            this.f18189d = 1;
        }
    }

    public boolean c() {
        return this.f18193h;
    }

    public final void d(byte[] bArr, int i2, int i3) {
        String[] strArrSplit;
        int i4;
        int i5;
        String str = new String(bArr, i2, i3, StandardCharsets.UTF_8);
        if (str.startsWith("XX")) {
            j0.b bVarZ2 = h0.g.Y2().Z2(this);
            String strSubstring = str.substring(2);
            Log.e("BT", "XX Message : " + strSubstring);
            bVarZ2.E(strSubstring);
            return;
        }
        Log.e("BT", "Message : " + str);
        h0.b.d dVar = null;
        int i6 = 0;
        try {
            switch (bArr[i2]) {
                case 67:
                    if (bArr[i2 + 1] == 83) {
                        if (i3 <= 2) {
                            h0.e.P(ProxyProperties.LOCAL_EXCL_LIST);
                            Log.e("BT", "========>> phoneOperator : ");
                            return;
                        }
                        try {
                            String strTrim = new String(bArr, i2 + 2, i3 - 2, "UTF-8").trim();
                            h0.e.P(strTrim);
                            Log.e("BT", "========>> phoneOperator : " + strTrim);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    break;
                case 68:
                    break;
                case 69:
                case 71:
                case 75:
                case 78:
                case 81:
                case 87:
                case 88:
                default:
                    return;
                case 70:
                    byte b2 = bArr[i2 + 1];
                    if (b2 == 70) {
                        if (h0.c.U == 1) {
                            h0.c.U = 0;
                            boolean z2 = (ZLink.Y().d0() || h1.a.d().j()) ? false : true;
                            if (this.f18193h) {
                                Runnable runnable = u0.b.x3;
                                if (runnable != null) {
                                    runnable.run();
                                }
                                u0.b.x3 = null;
                                this.f18193h = false;
                            }
                            if (z2) {
                                h0.e.W(43, h0.c.U);
                            } else {
                                h0.e.W(43, 0);
                            }
                            h0.d.f2471j.c();
                            return;
                        }
                        return;
                    }
                    if (b2 == 80) {
                        if (h1.a.d().e() == 2 || u0.b.D == 3) {
                            return;
                        }
                        u.q();
                        return;
                    }
                    if (b2 != 83) {
                        if (b2 == 86) {
                            String str2 = new String(bArr, i2 + 2, i3 - 2);
                            h0.c.f2460y = str2;
                            h0.e.Y(51, str2);
                            return;
                        } else {
                            if (b2 != 87) {
                                return;
                            }
                            h0.c.f2460y = ProxyProperties.LOCAL_EXCL_LIST;
                            h0.e.Y(51, ProxyProperties.LOCAL_EXCL_LIST);
                            return;
                        }
                    }
                    if (h0.c.U == 0) {
                        h0.c.U = 1;
                        boolean z3 = (ZLink.Y().d0() || h1.a.d().j()) ? false : true;
                        if (z3) {
                            u.C0("com.syu.bt.phone.voice", "com.syu.bt");
                        }
                        if (u0.b.D != 2) {
                            u0.b.f17311c.c(2);
                            u0.b.x3 = new b();
                            this.f18193h = true;
                        }
                        if (z3) {
                            h0.e.W(43, h0.c.U);
                        } else {
                            h0.e.W(43, 0);
                        }
                        h0.d.f2471j.c();
                        return;
                    }
                    return;
                case 72:
                    if (h0.c.f2435g) {
                        byte b3 = bArr[i2 + 1];
                        if (b3 == 65) {
                            h0.e.J(1, true);
                            return;
                        } else {
                            if (b3 != 66) {
                                return;
                            }
                            h0.e.J(1, false);
                            return;
                        }
                    }
                    return;
                case 73:
                    switch (bArr[i2 + 1]) {
                        case 65:
                        case 74:
                            h0.e.s(0);
                            a();
                            return;
                        case 66:
                            if (h0.c.G == 0) {
                                h0.e.s(2);
                                return;
                            }
                            return;
                        case 67:
                            this.f18191f = false;
                            h0.e.s(3);
                            if (i3 > 4) {
                                String str3 = new String(bArr, i2 + 4, i3 - 4);
                                h0.e.q(str3);
                                h0.e.Y(60, str3);
                                return;
                            }
                            return;
                        case 68:
                            this.f18191f = false;
                            h0.e.s(4);
                            if (i3 > 4) {
                                String str4 = new String(bArr, i2 + 4, i3 - 4);
                                h0.e.q(str4);
                                h0.e.Y(60, str4);
                                return;
                            }
                            return;
                        case 69:
                            this.f18191f = false;
                            h0.e.s(5);
                            String str5 = new String(bArr, i2 + 4, i3 - 4);
                            String[] strArrSplit2 = str5.split(",");
                            if (strArrSplit2.length > 1) {
                                h0.e.r(strArrSplit2);
                                h0.e.Y(60, strArrSplit2);
                                return;
                            } else {
                                if (i3 > 4) {
                                    h0.e.q(str5);
                                    h0.e.Y(60, str5);
                                    return;
                                }
                                return;
                            }
                        case 70:
                            if (h0.c.E >= 2) {
                                h0.e.s(2);
                            }
                            if (h0.c.M != 0) {
                                h0.e.q(null);
                            }
                            this.f18191f = false;
                            h0.c.f2448m0 = false;
                            if (this.f18192g) {
                                this.f18192g = false;
                                u0.b.f17311c.c(u0.b.F);
                                y0.h.M();
                            }
                            if (h0.c.U == 1) {
                                h0.c.U = 0;
                                boolean z4 = (ZLink.Y().d0() || h1.a.d().j()) ? false : true;
                                if (this.f18193h) {
                                    Runnable runnable2 = u0.b.x3;
                                    if (runnable2 != null) {
                                        runnable2.run();
                                    }
                                    u0.b.x3 = null;
                                    this.f18193h = false;
                                }
                                if (z4) {
                                    h0.e.W(43, h0.c.U);
                                    return;
                                } else {
                                    h0.e.W(43, 0);
                                    return;
                                }
                            }
                            return;
                        case 71:
                            this.f18191f = !g.f.f(9) && i3 == 4;
                            String str6 = new String(bArr, i2 + 2, i3 - 2);
                            if (this.f18191f) {
                                h0.c.f2448m0 = true;
                                h0.e.s(5);
                                h0.e.q(str6);
                                this.f18192g = true;
                                y0.h.M();
                            } else if (!"040000".equals(str6)) {
                                h0.e.s(5);
                                if (i3 > 4) {
                                    h0.e.q(new String(bArr, i2 + 4, i3 - 4));
                                } else {
                                    h0.e.q("UNKNOWN");
                                }
                            } else if (h0.c.U == 0) {
                                h0.c.U = 1;
                                boolean z5 = (ZLink.Y().d0() || h1.a.d().j()) ? false : true;
                                if (z5) {
                                    u.C0("com.syu.bt.phone.voice", "com.syu.bt");
                                }
                                if (u0.b.D != 2) {
                                    u0.b.f17311c.c(2);
                                    u0.b.x3 = new a();
                                    this.f18193h = true;
                                }
                                if (z5) {
                                    h0.e.W(43, h0.c.U);
                                } else {
                                    h0.e.W(43, 0);
                                }
                            }
                            String[] strArr = new String[1];
                            if (s0.t(str6)) {
                                str6 = "000000";
                            }
                            strArr[0] = str6;
                            h0.e.Y(60, strArr);
                            return;
                        case 72:
                        case 76:
                        case 78:
                        case 80:
                        case 81:
                        case 82:
                        default:
                            return;
                        case 73:
                            h0.e.s(6);
                            return;
                        case 75:
                            h0.e.s(5);
                            String[] strArrSplit3 = new String(bArr, i2 + 4, i3 - 4).split(",");
                            if (strArrSplit3.length > 1) {
                                h0.e.r(strArrSplit3);
                                return;
                            }
                            return;
                        case 77:
                            h0.e.s(7);
                            return;
                        case 79:
                            int i7 = i2 + 2;
                            if (bArr[i7] == 48) {
                                h0.g.Y2().c3(1);
                                return;
                            } else {
                                if (bArr[i7] == 49) {
                                    h0.g.Y2().c3(0);
                                    return;
                                }
                                return;
                            }
                        case 83:
                            h0.e.X(19, null, null, null);
                            h0.e.s(0);
                            h0.e.X(24, null, null, null);
                            h0.c.f2425b.g(ProxyProperties.LOCAL_EXCL_LIST);
                            h0.c.f2425b.U(ProxyProperties.LOCAL_EXCL_LIST);
                            k.p(67, 89);
                            k.p(77, 89);
                            k.p(86, 69);
                            h0.e.t(1);
                            h0.f fVar = h0.c.f2425b;
                            if (fVar instanceof h0.b) {
                                ((h0.b) fVar).Y();
                                return;
                            }
                            return;
                    }
                case 74:
                    if (bArr[i2 + 1] != 72) {
                        return;
                    }
                    h0.e.N(new String(bArr, i2 + 2, i3 - 2));
                    return;
                case 76:
                    byte b4 = bArr[i2 + 1];
                    if (b4 == 67) {
                        h0.e.h(1);
                        return;
                    }
                    if (b4 == 68) {
                        h0.e.h(0);
                        return;
                    }
                    if (b4 != 82) {
                        return;
                    }
                    String str7 = new String(bArr, i2 + 2, i3 - 2);
                    Log.e("BT", "LR Key : " + str7);
                    if (h0.e.y(str7)) {
                        return;
                    }
                    switch (str7) {
                        case "A101":
                        case "A301":
                            c.e.d().c(24);
                            return;
                        case "A102":
                        case "A302":
                            c.e.d().c(25);
                            return;
                        case "A104":
                        case "A304":
                            c.e.d().c(87);
                            return;
                        case "A108":
                        case "A308":
                            c.e.d().c(88);
                            return;
                        case "A110":
                            c.e.d().c((h0.c.G == 1 || u0.i.l3().r3()) ? 5 : 91);
                            return;
                        case "A310":
                            c.e.d().c((h0.c.G == 1 || u0.i.l3().r3()) ? 6 : 556);
                            return;
                        default:
                            return;
                    }
                case 77:
                    byte b5 = bArr[i2 + 1];
                    if (b5 == 65) {
                        h0.e.l(0);
                        return;
                    }
                    if (b5 == 66) {
                        h0.e.l(1);
                        return;
                    }
                    if (b5 == 70) {
                        h0.e.g(bArr[i2 + 2] == 49 ? 1 : 0);
                        return;
                    }
                    if (b5 == 73) {
                        StringBuilder sb = new StringBuilder();
                        int i8 = 2;
                        for (int i9 = 2; i9 < i3; i9++) {
                            if (bArr[i2 + i9] == -1) {
                                if (i6 == 0) {
                                    try {
                                        h0.e.k(new String(bArr, i2 + i8, i9 - i8, "UTF-8"));
                                    } catch (Exception e3) {
                                        e3.printStackTrace();
                                    }
                                } else if (i6 == 1) {
                                    try {
                                        h0.e.j(new String(bArr, i2 + i8, i9 - i8, "UTF-8"));
                                    } catch (Exception e4) {
                                        e4.printStackTrace();
                                    }
                                } else if (i6 == 2) {
                                    try {
                                        h0.e.o(Integer.parseInt(new String(bArr, i2 + i8, i9 - i8, "UTF-8")));
                                    } catch (Exception e5) {
                                        e5.printStackTrace();
                                    }
                                } else if (i6 == 3) {
                                    try {
                                        h0.e.n(Integer.parseInt(new String(bArr, i2 + i8, i9 - i8, "UTF-8")));
                                    } catch (Exception e6) {
                                        e6.printStackTrace();
                                    }
                                }
                                i6++;
                                i8 = i9 + 1;
                                break;
                            }
                        }
                        try {
                            h0.e.p(Integer.parseInt(new String(bArr, i2 + i8, i3 - i8, "UTF-8")));
                            break;
                        } catch (Exception e7) {
                            e7.printStackTrace();
                        }
                        Log.d("BT", sb.toString());
                        return;
                    }
                    if (b5 == 80) {
                        if (i3 <= 2 || (strArrSplit = new String(bArr, i2 + 2, i3 - 2).split(new String(new byte[]{-1}))) == null || strArrSplit.length < 3) {
                            return;
                        }
                        h0.e.o(Integer.valueOf(strArrSplit[0]).intValue());
                        h0.e.m(Integer.valueOf(strArrSplit[1]).intValue());
                        h0.e.l(Integer.valueOf(strArrSplit[2]).intValue() == 1 ? 1 : 0);
                        return;
                    }
                    if (b5 == 77) {
                        if (i3 > 2) {
                            String str8 = ProxyProperties.LOCAL_EXCL_LIST;
                            try {
                                str8 = new String(bArr, i2 + 2, i3 - 2, "UTF-8");
                            } catch (UnsupportedEncodingException e8) {
                                e8.printStackTrace();
                            }
                            h0.e.F(str8);
                            return;
                        }
                        return;
                    }
                    if (b5 == 78) {
                        if (i3 > 2) {
                            h0.e.S(new String(bArr, i2 + 2, i3 - 2));
                            return;
                        }
                        return;
                    }
                    if (b5 == 87) {
                        if (i3 > 2) {
                            h0.e.v(new String(bArr, i2 + 2, i3 - 2));
                            return;
                        }
                        return;
                    }
                    if (b5 == 88 && i3 > 12 && (i4 = bArr[i2 + 2] & 255) >= 48 && i4 <= 57) {
                        int i10 = i4 - 48;
                        String str9 = new String(bArr, i2 + 3, 12);
                        boolean zEquals = str9.equals("000000000000");
                        String str10 = ProxyProperties.LOCAL_EXCL_LIST;
                        if (!zEquals) {
                            str10 = new String(bArr, i2 + 15, i3 - 15);
                        }
                        if (i10 == 0) {
                            if (zEquals) {
                                str9 = ProxyProperties.LOCAL_EXCL_LIST;
                            }
                            h0.e.N(str9);
                            h0.e.O(str10);
                            return;
                        }
                        int i11 = i10 - 1;
                        SparseArray<Object> sparseArray = h0.c.f2430d0;
                        synchronized (sparseArray) {
                            Object obj = sparseArray.get(i11, null);
                            if (obj == null) {
                                dVar = new h0.b.d();
                            } else if (obj instanceof h0.b.d) {
                                dVar = (h0.b.d) obj;
                            }
                            if (dVar != null) {
                                dVar.f2421a = str9;
                                dVar.f2422b = str10;
                                sparseArray.put(i11, dVar);
                                h0.e.Z(5, i11, str9, str10);
                            }
                            break;
                        }
                        return;
                    }
                    return;
                case 79:
                    if (bArr[i2 + 1] != 82) {
                        return;
                    }
                    String str11 = new String(bArr, i2 + 2, i3 - 2);
                    String strSubstring2 = str11.substring(0, 6);
                    String strSubstring3 = ProxyProperties.LOCAL_EXCL_LIST;
                    String strSubstring4 = ProxyProperties.LOCAL_EXCL_LIST;
                    if (str11.length() > 18) {
                        strSubstring3 = str11.substring(6, 18);
                        strSubstring4 = str11.substring(18);
                    }
                    Log.e("BT", "PIN_CODE_PAIR_REQUEST PIN: " + strSubstring2 + " MAC: " + strSubstring3 + " NAME: " + strSubstring4);
                    h0.e.Y(69, strSubstring2, strSubstring3, strSubstring4);
                    return;
                case 80:
                    byte b6 = bArr[i2 + 1];
                    if (b6 == 48) {
                        h0.e.W(25, 0);
                        return;
                    }
                    if (b6 == 49) {
                        h0.e.W(25, 1);
                        return;
                    }
                    if (b6 == 74) {
                        k.p(80, 69, 48, 44, 48, 44, 102, 102);
                        return;
                    }
                    if (b6 == 77) {
                        if (i3 > 2) {
                            h0.e.R(new String(bArr, i2 + 2, i3 - 2));
                            return;
                        }
                        return;
                    }
                    if (b6 == 83) {
                        if (i3 > 2) {
                            try {
                                String strTrim2 = new String(bArr, i2 + 2, 2, "UTF-8").trim();
                                h0.e.Q(Integer.valueOf(strTrim2).intValue());
                                Log.e("BT", "========>> phoneSignalLevel : " + strTrim2);
                            } catch (Exception e9) {
                                e9.printStackTrace();
                            }
                            break;
                        }
                        if (i3 > 4) {
                            try {
                                String strTrim3 = new String(bArr, i2 + 4, 2, "UTF-8").trim();
                                h0.e.M(strTrim3);
                                Log.e("BT", "========>> phoneBattery : " + strTrim3);
                                return;
                            } catch (Exception e10) {
                                e10.printStackTrace();
                                return;
                            }
                        }
                        return;
                    }
                    if (b6 == 90) {
                        if (i3 > 2) {
                            h0.e.W(67, bArr[i2 + 2]);
                            return;
                        }
                        return;
                    }
                    switch (b6) {
                        case 66:
                            h0.e.L(2);
                            int i12 = Integer.parseInt(new String(bArr, i2 + 2, 2));
                            int i13 = Integer.parseInt(new String(bArr, i2 + 4, 2));
                            int i14 = i2 + 6;
                            h0.e.X(22, null, null, new String[]{i12 > 0 ? new String(bArr, i14, i12, "UTF-8") : ProxyProperties.LOCAL_EXCL_LIST, i13 > 0 ? new String(bArr, i14 + i12, i13, "UTF-8") : ProxyProperties.LOCAL_EXCL_LIST});
                            return;
                        case 67:
                            h0.e.L(1);
                            return;
                        case 68:
                            h0.e.L(4);
                            try {
                                int i15 = Integer.parseInt(new String(bArr, i2 + 2, 1));
                                int i16 = Integer.parseInt(new String(bArr, i2 + 3, 2));
                                int i17 = Integer.parseInt(new String(bArr, i2 + 5, 2));
                                int i18 = Integer.parseInt(new String(bArr, i2 + 7, 2));
                                int i19 = i2 + 9;
                                String str12 = i16 > 0 ? new String(bArr, i19, i16, "UTF-8") : ProxyProperties.LOCAL_EXCL_LIST;
                                String str13 = i17 > 0 ? new String(bArr, i19 + i16, i17, "UTF-8") : ProxyProperties.LOCAL_EXCL_LIST;
                                String str14 = i18 > 0 ? new String(bArr, i19 + i16 + i17, i18, "UTF-8") : ProxyProperties.LOCAL_EXCL_LIST;
                                if (!str14.isEmpty()) {
                                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat();
                                    simpleDateFormat.applyPattern("yyyyMMddHHmmss");
                                    Date date = simpleDateFormat.parse(str14.replace("T", ProxyProperties.LOCAL_EXCL_LIST));
                                    simpleDateFormat.applyPattern("yyyy/MM/dd HH:mm:ss");
                                    str14 = simpleDateFormat.format(date);
                                }
                                h0.e.X(35, new int[]{i15}, null, new String[]{str12, str13, str14});
                                return;
                            } catch (Exception e11) {
                                e11.printStackTrace();
                                return;
                            }
                        case 69:
                            h0.e.L(3);
                            return;
                        default:
                            return;
                    }
                case 82:
                    byte b7 = bArr[i2 + 1];
                    if (b7 != 83) {
                        if (b7 != 84) {
                            return;
                        }
                        ControlNative.getInstance().fytResetBluetooth();
                        return;
                    } else {
                        if (u0.b.f17320f != 0) {
                            k.p(67, 90, 49);
                            return;
                        }
                        return;
                    }
                case 83:
                    byte b8 = bArr[i2 + 1];
                    if (b8 == 65) {
                        h0.e.O(new String(bArr, i2 + 2, i3 - 2));
                        return;
                    }
                    if (b8 == 70) {
                        if (i3 > 15 && (i5 = bArr[i2 + 2] & 255) >= 48 && i5 <= 57) {
                            h0.e.X(24, new int[]{i5 - 48}, null, new String[]{new String(bArr, i2 + 3, 12), new String(bArr, i2 + 15, i3 - 15)});
                            return;
                        }
                        return;
                    }
                    if (b8 == 72) {
                        h0.e.X(24, null, null, null);
                        return;
                    }
                    if (b8 == 84) {
                        h0.e.t(0);
                        return;
                    }
                    switch (b8) {
                        case 49:
                            h0.e.s(0);
                            a();
                            return;
                        case 50:
                            h0.e.s(1);
                            return;
                        case 51:
                            h0.e.s(2);
                            return;
                        case 52:
                            this.f18191f = false;
                            h0.e.s(3);
                            return;
                        case 53:
                            this.f18191f = false;
                            h0.e.s(4);
                            return;
                        case 54:
                            if (!this.f18191f) {
                                if (h0.c.U == 1) {
                                    return;
                                }
                                h0.e.s(5);
                                return;
                            } else {
                                h0.c.f2448m0 = true;
                                y0.f.f18034b.a(2);
                                this.f18192g = true;
                                y0.h.M();
                                return;
                            }
                        default:
                            return;
                    }
                case 84:
                    byte b9 = bArr[i2 + 1];
                    if (b9 == 48) {
                        h0.e.B(1);
                        return;
                    } else if (b9 == 49) {
                        h0.e.B(0);
                        return;
                    } else {
                        if (b9 != 88) {
                            return;
                        }
                        h0.e.Y(59, new String(bArr, i2, i3));
                        return;
                    }
                case 85:
                    if (bArr[i2 + 1] == 80 && i3 > 2) {
                        String str15 = new String(bArr, i2 + 2, i3 - 2);
                        if (str15.isEmpty()) {
                            return;
                        }
                        h0.e.X(36, new int[]{Integer.valueOf(str15).intValue()}, null, null);
                        return;
                    }
                    return;
                case 86:
                    byte b10 = bArr[i2 + 1];
                    if (b10 == 80) {
                        h0.e.W(47, Integer.valueOf(new String(bArr, i2 + 2, i3 - 2)).intValue());
                        return;
                    }
                    if (b10 != 83) {
                        return;
                    }
                    try {
                        String str16 = new String(bArr, i2 + 2, i3 - 2, "utf-8");
                        if ("0".equals(str16)) {
                            return;
                        }
                        h0.e.E(String.format("Activation failed (error code: %s)", str16));
                        return;
                    } catch (UnsupportedEncodingException e12) {
                        e12.printStackTrace();
                        return;
                    }
                case 89:
                    byte b11 = bArr[i2 + 1];
                    if (b11 != 76) {
                        if (b11 == 84 && i3 > 2) {
                            String str17 = new String(bArr, i2 + 2, i3 - 2);
                            h0.e.Y(49, str17);
                            u.D0("com.syu.bt.phone.sms", a.b.f23k, "handle", str17);
                            return;
                        }
                        return;
                    }
                    try {
                        int iIntValue = Integer.valueOf(new String(bArr, i2 + 2, 2)).intValue();
                        int iIntValue2 = Integer.valueOf(new String(bArr, i2 + 4, 2)).intValue();
                        int iIntValue3 = Integer.valueOf(new String(bArr, i2 + 6, 3)).intValue();
                        int i20 = i2 + 9;
                        h0.e.Y(50, iIntValue > 0 ? new String(bArr, i20, iIntValue, "UTF-8") : ProxyProperties.LOCAL_EXCL_LIST, iIntValue2 > 0 ? new String(bArr, i20 + iIntValue, iIntValue2, "UTF-8") : ProxyProperties.LOCAL_EXCL_LIST, iIntValue3 > 0 ? new String(bArr, i20 + iIntValue + iIntValue2, iIntValue3, "UTF-8") : ProxyProperties.LOCAL_EXCL_LIST);
                        return;
                    } catch (Exception e13) {
                        e13.printStackTrace();
                        return;
                    }
            }
            if (bArr[i2 + 1] == 66 && i3 > 2) {
                h0.e.E(new String(bArr, i2 + 2, i3 - 2));
            }
        } catch (Exception unused) {
        }
    }

    public void e(boolean z2) {
        this.f18193h = z2;
    }
}
