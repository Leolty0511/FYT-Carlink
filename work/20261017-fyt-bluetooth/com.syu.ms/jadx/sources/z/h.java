package z;

import android.net.ProxyProperties;
import android.os.SystemClock;
import android.util.Log;
import com.syu.jni.ControlNative;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import o1.b0;
import o1.q;
import util.log.LogType;

/* JADX INFO: loaded from: classes.dex */
public class h implements q {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static boolean f18213j = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f18214a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f18215b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18216c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18217d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18218e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f18219f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f18220g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f18221h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f18222i;

    public h() {
        this.f18222i = true;
        this.f18222i = d();
    }

    public final void a() {
        h0.e.k(null);
        h0.e.i(null);
        h0.e.j(null);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        if (bArr == null || bArr.length == 0) {
            a.i.a0(100L);
            if (g.e.a() == 3 && f18213j) {
                int i3 = this.f18221h + 1;
                this.f18221h = i3;
                f18213j = false;
                if (i3 == 3) {
                    b0.i("收到空数据 复位蓝牙！！！");
                    ControlNative.getInstance().fytResetBluetooth();
                    this.f18221h = 0;
                    return;
                }
                return;
            }
            return;
        }
        if (this.f18216c + bArr.length > 1024) {
            this.f18216c = 0;
            this.f18218e = 1;
            this.f18217d = 0;
            this.f18219f = false;
        }
        System.arraycopy(bArr, 0, this.f18215b, this.f18216c, bArr.length);
        int length = this.f18216c + bArr.length;
        this.f18216c = length;
        int i4 = this.f18218e;
        if (length <= i4) {
            return;
        }
        while (true) {
            i2 = this.f18216c;
            if (i4 >= i2) {
                break;
            }
            byte[] bArr2 = this.f18215b;
            int i5 = i4 - 1;
            if (bArr2[i5] == 13 && bArr2[i4] == 10) {
                if (this.f18219f) {
                    int i6 = this.f18217d;
                    if (i4 - i6 < 5) {
                        this.f18217d = i5;
                    } else {
                        this.f18219f = false;
                        e(bArr2, i6 + 2, (i4 - i6) - 3);
                        this.f18217d = i4 + 1;
                    }
                } else {
                    int i7 = this.f18217d;
                    e(bArr2, i7, i4 - i7);
                    this.f18219f = true;
                    this.f18217d = i5;
                }
                i4++;
            }
            i4++;
        }
        int i8 = this.f18217d;
        if (i8 != 0) {
            if (i8 == i2) {
                this.f18216c = 0;
            } else {
                int i9 = i2 - i8;
                this.f18216c = i9;
                byte[] bArr3 = this.f18215b;
                System.arraycopy(bArr3, i8, bArr3, 0, i9);
            }
            this.f18217d = 0;
        }
        int i10 = this.f18216c;
        if (i10 > 1) {
            this.f18218e = i10;
        } else {
            this.f18218e = 1;
        }
    }

    public String c(String str, String str2, String str3) {
        String language = Locale.getDefault().getLanguage();
        if ("he".equalsIgnoreCase(language) || "iw".equalsIgnoreCase(language)) {
            if (!str2.isEmpty()) {
                str = str + " " + str2;
            }
            if (str3.isEmpty()) {
                return str;
            }
            return str + " " + str3;
        }
        if (this.f18222i) {
            if (!str2.isEmpty()) {
                str = str + str2;
            }
            return str3 + str;
        }
        if (!str2.isEmpty()) {
            str = str + " " + str2;
        }
        if (!str.isEmpty()) {
            str = str + " ";
        }
        return str + str3;
    }

    public boolean d() {
        char c2;
        String language = Locale.getDefault().getLanguage();
        if (Locale.JAPANESE.getLanguage().equals(language)) {
            c2 = 4;
        } else if (Locale.KOREAN.getLanguage().equals(language)) {
            c2 = 5;
        } else {
            c2 = Locale.CHINA.getLanguage().equals(language) ? (char) 3 : (char) 1;
        }
        return c2 != 1;
    }

    public final void e(byte[] bArr, int i2, int i3) {
        String str;
        String strSubstring;
        char c2;
        Log.e("BT", "IVT DATA : " + b0.b(bArr, i2, i3));
        a.f.p().t(LogType.BT, b0.b(bArr, i2, i3));
        this.f18221h = 0;
        byte b2 = bArr[i2];
        if (b2 == 71) {
            byte b3 = bArr[i2 + 1];
            if (b3 == 69) {
                h0.e.X(24, null, null, null);
                this.f18220g = 0;
                return;
            }
            if (b3 == 70) {
                if (i3 <= 22) {
                    return;
                }
                String str2 = new String(bArr, i2 + 2, 12);
                String str3 = new String(bArr, i2 + 14, 1);
                String str4 = new String(bArr, i2 + 23, i3 - 23);
                this.f18220g++;
                if (str3.equals("0")) {
                    h0.e.W(25, 0);
                } else if (str3.equals("1")) {
                    h0.e.W(25, 1);
                }
                h0.e.X(24, new int[]{2}, null, new String[]{str2, str4});
                return;
            }
            if (b3 != 80) {
                if (b3 == 85 && i3 > 14) {
                    h0.e.O(new String(bArr, i2 + 15, i3 - 15));
                    return;
                }
                return;
            }
            if (bArr[i2 + 2] != 66) {
                return;
            }
            byte b4 = bArr[i2 + 15];
            if (b4 == 48) {
                h0.e.W(25, 0);
                return;
            } else {
                if (b4 != 49) {
                    return;
                }
                h0.e.W(25, 1);
                return;
            }
        }
        String str5 = ProxyProperties.LOCAL_EXCL_LIST;
        if (b2 == 73) {
            int i4 = i2 + 1;
            byte b5 = bArr[i4];
            if (b5 == 78) {
                h0.e.O(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b5 == 82) {
                h0.e.s(5);
                if (i3 > 2) {
                    h0.e.q(new String(bArr, i2 + 2, i3 - 2));
                    return;
                }
                return;
            }
            if (b5 == 83) {
                if (i3 > 2) {
                    h0.e.v(new String(bArr, i2 + 2, i3 - 2));
                }
                h0.e.X(19, null, null, null);
                h0.e.s(0);
                h0.c.f2425b.g(ProxyProperties.LOCAL_EXCL_LIST);
                h0.c.f2425b.U(ProxyProperties.LOCAL_EXCL_LIST);
                k.r(67, 89);
                k.r(77, 90);
                h0.e.t(1);
                return;
            }
            switch (b5) {
                case 65:
                    h0.e.s(0);
                    a();
                    break;
                case 66:
                    this.f18222i = d();
                    h0.e.N(new String(bArr, i2 + 2, 12));
                    h0.e.s(2);
                    break;
                case 67:
                    h0.e.s(3);
                    if (i3 > 2) {
                        h0.e.q(new String(bArr, i2 + 2, i3 - 2));
                    }
                    break;
                case 68:
                case 69:
                    h0.e.s(bArr[i4] != 69 ? 4 : 5);
                    String str6 = new String(bArr, i2 + 2, i3 - 2);
                    String[] strArrSplit = str6.contains(",") ? str6.split(",") : null;
                    if (strArrSplit != null && strArrSplit.length > 1) {
                        h0.e.r(strArrSplit);
                    } else if (i3 > 2) {
                        h0.e.q(str6);
                    }
                    break;
                case 70:
                    h0.e.s(2);
                    if (h0.c.M != 0) {
                        h0.e.q(null);
                    }
                    break;
                default:
                    switch (b5) {
                        case 87:
                            if (i3 > 2) {
                                try {
                                    h0.e.M(new String(bArr, i2 + 2, i3 - 2, "UTF-8").trim());
                                } catch (UnsupportedEncodingException e2) {
                                    e2.printStackTrace();
                                    return;
                                }
                            }
                            break;
                        case 88:
                            if (i3 >= 4) {
                                try {
                                    String strTrim = new String(bArr, i2 + 4, i3 - 4, "UTF-8").trim();
                                    Log.e("BT", "---------->> phoneOperator : " + strTrim);
                                    h0.e.P(strTrim);
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                    return;
                                }
                                break;
                            }
                            break;
                        case 89:
                            if (i3 >= 2) {
                                try {
                                    h0.e.Q(Integer.valueOf(new String(bArr, i2 + 2, i3 - 2, "UTF-8").trim()).intValue());
                                } catch (Exception e4) {
                                    e4.printStackTrace();
                                    return;
                                }
                                break;
                            }
                            break;
                    }
                    break;
            }
            return;
        }
        if (b2 == 77) {
            byte b6 = bArr[i2 + 1];
            if (b6 == 71) {
                switch (bArr[i2 + 2]) {
                    case 48:
                    case 49:
                        h0.e.s(0);
                        break;
                    case 50:
                        h0.e.s(1);
                        break;
                    case 51:
                        h0.e.s(2);
                        this.f18222i = d();
                        break;
                    case 52:
                        h0.e.s(3);
                        break;
                    case 53:
                        h0.e.s(4);
                        break;
                    case 54:
                        h0.e.s(5);
                        break;
                }
                return;
            }
            if (b6 == 85) {
                if (bArr[i2 + 2] == 52) {
                    h0.e.l(1);
                    return;
                } else {
                    h0.e.l(0);
                    return;
                }
            }
            if (b6 == 88) {
                if (i3 <= 15) {
                    return;
                }
                int i5 = bArr[i2 + 2] & 255;
                String str7 = new String(bArr, i2 + 3, 12);
                String str8 = new String(bArr, i2 + 15, i3 - 15);
                if (i5 == 1) {
                    h0.e.N(str7);
                    h0.e.O(str8);
                    return;
                }
                return;
            }
            if (b6 == 90) {
                if (i3 > 2) {
                    h0.e.E(new String(bArr, i2 + 2, i3 - 2));
                    return;
                }
                return;
            }
            if (b6 == 77) {
                if (i3 > 2) {
                    try {
                        str5 = new String(bArr, i2 + 2, i3 - 2, "UTF-8");
                    } catch (UnsupportedEncodingException e5) {
                        e5.printStackTrace();
                    }
                    h0.e.F(str5);
                    return;
                }
                return;
            }
            if (b6 == 78) {
                if (i3 > 2) {
                    h0.e.S(new String(bArr, i2 + 2, i3 - 2));
                    return;
                }
                return;
            }
            switch (b6) {
                case 65:
                    h0.e.l(0);
                    break;
                case 66:
                    h0.e.l(1);
                    break;
                case 67:
                    h0.e.B(1);
                    break;
                case 68:
                    h0.e.B(0);
                    break;
            }
            return;
        }
        if (b2 != 80) {
            if (b2 != 82) {
                return;
            }
            byte b7 = bArr[i2 + 1];
            if (b7 == 66) {
                this.f18214a = SystemClock.elapsedRealtime();
                return;
            }
            if (b7 != 78) {
                if (b7 != 80) {
                    return;
                }
                try {
                    String[] strArrSplit2 = new String(bArr, i2 + 2, i3 - 2, "UTF-8").split("\\|");
                    if (strArrSplit2.length == 2) {
                        h0.e.m(Integer.parseInt(strArrSplit2[0]));
                        h0.e.o(Integer.parseInt(strArrSplit2[1]));
                        return;
                    }
                    return;
                } catch (Exception e6) {
                    e6.printStackTrace();
                    return;
                }
            }
            try {
                String[] strArrSplit3 = new String(bArr, i2 + 2, i3 - 2, "UTF-8").split("\\|");
                if (strArrSplit3.length > 2) {
                    h0.e.k(strArrSplit3[0]);
                    h0.e.j(strArrSplit3[1]);
                }
                if (strArrSplit3.length > 4) {
                    h0.e.n(Integer.parseInt(strArrSplit3[3]));
                    h0.e.p(Integer.parseInt(strArrSplit3[4]));
                    return;
                }
                return;
            } catch (Exception e7) {
                e7.printStackTrace();
                return;
            }
        }
        byte b8 = bArr[i2 + 1];
        if (b8 != 66) {
            if (b8 != 67) {
                return;
            }
            h0.e.L(1);
            return;
        }
        h0.e.L(2);
        int i6 = bArr[i2 + 5] & 255;
        int i7 = bArr[i2 + 6] & 255;
        int i8 = bArr[i2 + 7] & 255;
        int i9 = bArr[i2 + 8] & 255;
        if (!(i6 == 48 && i7 == 48 && i8 == 48 && i9 == 48) && i6 >= 48 && i7 >= 48 && i8 >= 48 && i9 >= 48) {
            int i10 = ((i6 - 48) * 10) + (i7 - 48);
            int i11 = ((i8 - 48) * 10) + (i9 - 48);
            int i12 = i2 + 9;
            int i13 = i12 + i10;
            StringBuffer stringBuffer = new StringBuffer(i10);
            for (int i14 = 0; i12 < i13 && i14 < i10; i14++) {
                if ((bArr[i12] & 128) == 0) {
                    c2 = (char) bArr[i12];
                    i12++;
                } else if ((bArr[i12] & 224) == 192) {
                    c2 = (char) (((char) ((bArr[i12] & 63) << 6)) | (bArr[i12 + 1] & 63));
                    i12 += 2;
                } else if ((bArr[i12] & 240) == 224) {
                    c2 = (char) (((char) (((char) ((bArr[i12] & 31) << 12)) | ((bArr[i12 + 1] & 63) << 6))) | (bArr[i12 + 2] & 63));
                    i12 += 3;
                } else if ((bArr[i12] & 248) == 240) {
                    c2 = (char) (((char) (((char) ((bArr[i12 + 1] & 63) << 12)) | ((char) ((bArr[i12 + 2] & 63) << 6)))) | ((char) (bArr[i12 + 3] & 63)));
                    i12 += 4;
                } else {
                    c2 = (char) (((char) (((char) ((bArr[i12 + 2] & 63) << 12)) | ((char) ((bArr[i12 + 3] & 63) << 6)))) | ((char) (bArr[i12 + 4] & 63)));
                    i12 += 5;
                }
                stringBuffer.append(c2);
            }
            try {
                str = new String(bArr, i13, i11, "UTF-8");
            } catch (UnsupportedEncodingException e8) {
                e8.printStackTrace();
                str = ProxyProperties.LOCAL_EXCL_LIST;
            }
            String string = stringBuffer.toString();
            if (string.isEmpty() || !string.contains("|")) {
                strSubstring = ProxyProperties.LOCAL_EXCL_LIST;
            } else {
                int iIndexOf = string.indexOf("|");
                int iLastIndexOf = string.lastIndexOf("|");
                strSubstring = string.substring(iLastIndexOf + 1, string.length());
                int i15 = iIndexOf + 1;
                if (iLastIndexOf > i15) {
                    str5 = string.substring(i15, iLastIndexOf);
                }
                string = string.substring(0, iIndexOf);
            }
            h0.e.X(22, null, null, new String[]{c(string, str5, strSubstring), str});
        }
    }
}
