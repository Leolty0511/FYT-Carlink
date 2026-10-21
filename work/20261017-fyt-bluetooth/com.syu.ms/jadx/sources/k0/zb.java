package k0;

import android.content.Intent;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class zb extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12753b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12756e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12754c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12755d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 13}, new int[]{8, 4}, new int[]{9, 3}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 18}, new int[]{17, 2}, new int[]{18, 12}, new int[]{19, 18}, new int[]{20, 26}, new int[]{21, 39}, new int[]{24, 13}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12757f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f12758g = {new int[]{1, 25}, new int[]{4, 5}, new int[]{6, 6}, new int[]{9, 12}, new int[]{18, 58}, new int[]{22, 29}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{32, 1}, new int[]{33, 1}, new int[]{37, 65}, new int[]{43, 5}, new int[]{49, 71}, new int[]{55, 55}, new int[]{57, 72}, new int[]{69, 7}, new int[]{70, 8}, new int[]{84, 1}, new int[]{91, 63}, new int[]{92, 2}, new int[]{98, 15}, new int[]{99, 9}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12759h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12760i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12761j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f12762k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12763l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f12764m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f12765n = new c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f12766o = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f12767p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f12768q = new d();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f12769r = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 1);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zb zbVar = zb.this;
            zbVar.f12760i = 0;
            zbVar.f12761j = 0;
            l0.b0.b(zbVar.f12765n);
            zb.this.f12763l = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        /* JADX WARN: Code duplicated, block: B:35:0x00f1  */
        /* JADX WARN: Code duplicated, block: B:36:0x00fb  */
        /* JADX WARN: Code duplicated, block: B:40:0x0121  */
        /* JADX WARN: Code duplicated, block: B:41:0x012a  */
        /* JADX WARN: Code duplicated, block: B:42:0x0133  */
        /* JADX WARN: Code duplicated, block: B:44:0x0145  */
        @Override // java.lang.Runnable
        public void run() {
            zb zbVar = zb.this;
            int i2 = zbVar.f12763l - 1;
            zbVar.f12763l = i2;
            if (i2 <= 0) {
                l0.b0.p0(zbVar.f12765n);
                zb.this.f12763l = 5;
                return;
            }
            int i3 = nt.f8637c;
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 7) {
                        if (i3 != 15) {
                            switch (i3) {
                                case 17:
                                    z.k.s(227, 2, 36, 20, 49);
                                    break;
                                case 18:
                                    z.k.s(227, 2, 36, 29, 49);
                                    break;
                                case 19:
                                case 35:
                                    break;
                                case 20:
                                    z.k.s(227, 2, 36, 21, 49);
                                    break;
                                case 21:
                                    z.k.s(227, 2, 36, 22, 49);
                                    break;
                                case 22:
                                case 31:
                                    z.k.s(227, 2, 36, 19, 49);
                                    break;
                                case 23:
                                case 32:
                                    z.k.s(227, 2, 36, 26, 49);
                                    break;
                                case 24:
                                case 33:
                                    z.k.s(227, 2, 36, 27, 49);
                                    break;
                                case 25:
                                case 34:
                                    z.k.s(227, 2, 36, 28, 49);
                                    break;
                                case 26:
                                    break;
                                case 27:
                                    z.k.s(227, 2, 36, 15, 49);
                                    break;
                                case 28:
                                    z.k.s(227, 2, 36, 16, 49);
                                    break;
                                case 29:
                                    break;
                                case 30:
                                    break;
                                default:
                                    switch (i3) {
                                        case 39:
                                        case 49:
                                        case 50:
                                        case 52:
                                        case 56:
                                        case 57:
                                        case 64:
                                        case 68:
                                        case 69:
                                        case 70:
                                        case 71:
                                        case 72:
                                        case 73:
                                        case 74:
                                        case 78:
                                        case 79:
                                        case 80:
                                        case 84:
                                        case 85:
                                        case 86:
                                        case 87:
                                        case 88:
                                        case 89:
                                            break;
                                        case 40:
                                            z.k.s(227, 2, 36, 23, 49);
                                            break;
                                        case 41:
                                            z.k.s(227, 2, 36, 24, 49);
                                            break;
                                        case 42:
                                            z.k.s(227, 2, 36, 25, 49);
                                            break;
                                        case 43:
                                            z.k.s(227, 2, 36, 30, 49);
                                            break;
                                        case 44:
                                            z.k.s(227, 2, 36, 34, 49);
                                            break;
                                        case 45:
                                        case 93:
                                            z.k.s(227, 2, 36, 11, 49);
                                            break;
                                        case 46:
                                        case 94:
                                            z.k.s(227, 2, 36, 12, 49);
                                            break;
                                        case 47:
                                        case 95:
                                            z.k.s(227, 2, 36, 13, 49);
                                            break;
                                        case 48:
                                            z.k.s(227, 2, 36, 31, 49);
                                            break;
                                        case 51:
                                            z.k.s(227, 2, 36, 1, 49);
                                            break;
                                        case 53:
                                            z.k.s(227, 2, 36, 5, 49);
                                            break;
                                        case 54:
                                            z.k.s(227, 2, 36, 6, 49);
                                            break;
                                        case 55:
                                            z.k.s(227, 2, 36, 7, 49);
                                            break;
                                        case 58:
                                        case 65:
                                        case 75:
                                        case 81:
                                            z.k.s(227, 2, 36, 20, 49);
                                            break;
                                        case 59:
                                        case 66:
                                        case 76:
                                        case 82:
                                            z.k.s(227, 2, 36, 21, 49);
                                            break;
                                        case 60:
                                        case 67:
                                        case 77:
                                        case 83:
                                            z.k.s(227, 2, 36, 22, 49);
                                            break;
                                        case 61:
                                            break;
                                        case 62:
                                            break;
                                        case 63:
                                            z.k.s(227, 2, 36, 19, 49);
                                            break;
                                        case 90:
                                        case 96:
                                            z.k.s(227, 2, 36, 8, 49);
                                            break;
                                        case 91:
                                        case 97:
                                            z.k.s(227, 2, 36, 9, 49);
                                            break;
                                        case 92:
                                        case 98:
                                            z.k.s(227, 2, 36, 10, 49);
                                            break;
                                        case 99:
                                            z.k.s(227, 2, 36, 32, 49);
                                            break;
                                        case 100:
                                            z.k.s(227, 2, 36, 33, 49);
                                            break;
                                        case 101:
                                            z.k.s(227, 2, 36, 15, 49);
                                            break;
                                        case 102:
                                            z.k.s(227, 2, 36, 16, 49);
                                            break;
                                        case 103:
                                        case 104:
                                            z.k.s(227, 2, 36, 2, 49);
                                            break;
                                        case 105:
                                            z.k.s(227, 2, 36, 35, 49);
                                            break;
                                        default:
                                            z.k.s(227, 2, 36, 0, 49);
                                            break;
                                    }
                                    break;
                            }
                            return;
                        }
                        z.k.s(227, 2, 36, 18, 49);
                        return;
                    }
                    z.k.s(227, 2, 36, 17, 49);
                    return;
                }
                z.k.s(227, 2, 36, 14, 49);
                return;
            }
            z.k.s(227, 2, 36, 0, 49);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            boolean z3 = true;
            if (zb.this.f12766o.equals(h0.c.f2437h)) {
                z2 = false;
            } else {
                zb.this.f12766o = h0.c.f2437h;
                if (zb.this.f12766o == null) {
                    zb.this.f12766o = ProxyProperties.LOCAL_EXCL_LIST;
                    z2 = false;
                } else {
                    z2 = true;
                }
            }
            if (h0.c.E != zb.this.f12767p) {
                zb.this.f12767p = h0.c.E;
            } else {
                z3 = z2;
            }
            if (z3) {
                zb zbVar = zb.this;
                zbVar.l3(zbVar.f12766o);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 8 || i2 == 9 || i2 == 10) {
                if (nt.f8637c == 18) {
                    zb.this.i3((byte) -28, u0.b.i3);
                } else {
                    zb.this.h3((byte) -28, u0.b.i3);
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f12764m, 1);
        mt mtVar = this.f7886a;
        mtVar.f8314i = 0;
        mtVar.f8322q = 1;
        mtVar.f8323r = 1;
        switch (nt.f8637c) {
            case 4:
            case 32:
            case 33:
            case 34:
            case 36:
            case 37:
            case 38:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8310e = 1;
                mtVar.f8311f = 1;
                mtVar.f8312g = 1;
                break;
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 35:
            case 39:
            case 43:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 56:
            case 57:
            case 64:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 78:
            case 79:
            case 80:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 99:
            case 100:
            case 101:
            case 102:
            default:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8310e = 1;
                mtVar.f8311f = 1;
                mtVar.f8312g = 1;
                break;
            case 7:
            case 15:
            case 16:
            case 17:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 40:
            case 41:
            case 42:
            case 45:
            case 46:
            case 47:
            case 53:
            case 54:
            case 55:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 65:
            case 66:
            case 67:
            case 75:
            case 76:
            case 77:
            case 81:
            case 82:
            case 83:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 103:
            case 104:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8310e = 1;
                mtVar.f8311f = 1;
                mtVar.f8312g = 1;
                w0.e.f17815a.a(l0.h0.f13061g, 1);
                w0.e.f17819e.a(l0.h0.f13061g, 1);
                u0.c.f17374a.a(l0.h0.f13061g, 1);
                u0.c.f17392s.a(l0.h0.f13061g, 1);
                u0.c.f17393t.a(l0.h0.f13061g, 1);
                u0.c.f17388o.a(this.f12769r, 1);
                h0.d.f2462a.a(this.f12768q, 1);
                h0.d.f2464c.a(this.f12768q, 1);
                break;
            case 18:
            case 19:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8310e = 1;
                mtVar.f8311f = 1;
                mtVar.f8314i = 1;
                mtVar.f8312g = 1;
                qt.z(this.f12762k);
                w0.e.f17815a.a(l0.h0.f13061g, 1);
                w0.e.f17819e.a(l0.h0.f13061g, 1);
                u0.c.f17374a.a(l0.h0.f13061g, 1);
                u0.c.f17392s.a(l0.h0.f13061g, 1);
                u0.c.f17393t.a(l0.h0.f13061g, 1);
                u0.c.f17388o.a(this.f12769r, 1);
                h0.d.f2462a.a(this.f12768q, 1);
                h0.d.f2464c.a(this.f12768q, 1);
                break;
            case 44:
                mtVar.f8306a = null;
                mtVar.f8310e = 0;
                mtVar.f8311f = 0;
                mtVar.f8314i = 0;
                mtVar.f8312g = 0;
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:151:0x0307  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int[][] iArr;
        int[][] iArr2;
        int i8;
        byte b2 = bArr[i2 + 1];
        if (b2 == -90) {
            qt.y0(193, bArr[i2 + 2]);
            qt.y0(194, bArr[i2 + 3]);
            qt.y0(195, bArr[i2 + 4]);
            qt.y0(196, bArr[i2 + 5]);
            qt.y0(197, bArr[i2 + 6]);
            qt.y0(198, bArr[i2 + 7]);
            qt.y0(199, (bArr[i2 + 8] >> 0) & 7);
        }
        if (b2 == -24) {
            if (bArr[i2 + 5] == 1) {
                qt.a(1);
            } else {
                qt.a(0);
            }
            byte b3 = bArr[i2 + 3];
            if (b3 == 5) {
                qt.y0(Process.MEDIA_UID, 3);
                return;
            }
            if (b3 == 6) {
                qt.y0(Process.MEDIA_UID, 2);
                return;
            } else if (b3 != 8) {
                qt.y0(Process.MEDIA_UID, 0);
                return;
            } else {
                qt.y0(Process.MEDIA_UID, 1);
                return;
            }
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 26) {
            byte b4 = bArr[i2 + 7];
            if (b4 == 1) {
                o1.x.C(nt.f8643f, 1049, new int[]{4, 4}, null, null);
            } else if (b4 == 2) {
                o1.x.C(nt.f8643f, 1049, new int[]{4, 2}, null, null);
            } else if (b4 == 3) {
                o1.x.C(nt.f8643f, 1049, new int[]{4, 3}, null, null);
            } else if (b4 != 4) {
                switch (b4) {
                    case 17:
                        o1.x.C(nt.f8643f, 1049, new int[]{4, 5}, null, null);
                        break;
                    case 18:
                        o1.x.C(nt.f8643f, 1049, new int[]{4, 6}, null, null);
                        break;
                    case 19:
                        o1.x.C(nt.f8643f, 1049, new int[]{4, 7}, null, null);
                        break;
                    case 20:
                        o1.x.C(nt.f8643f, 1049, new int[]{4, 8}, null, null);
                        break;
                    case 21:
                        o1.x.C(nt.f8643f, 1049, new int[]{4, 9}, null, null);
                        break;
                    case 22:
                        o1.x.C(nt.f8643f, 1049, new int[]{4, 10}, null, null);
                        break;
                }
            } else {
                o1.x.C(nt.f8643f, 1049, new int[]{4, 1}, null, null);
            }
            int i9 = i2 + 4;
            l0.c0.a((bArr[i9] >> 0) & 1, (bArr[i9] >> 1) & 1, (bArr[i9] >> 2) & 1);
            qt.y0(1032, (bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280));
            return;
        }
        if (b2 == 49) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            byte b7 = bArr[i2 + 4];
            byte b8 = bArr[i2 + 6];
            byte b9 = bArr[i2 + 7];
            qt.y0(10, (b5 >> 6) & 1);
            qt.y0(42, (b5 >> 4) & 1);
            qt.y0(13, (b5 >> 3) & 1);
            qt.y0(62, (b5 >> 2) & 1);
            qt.y0(11, (b5 >> 0) & 3);
            qt.y0(12, (b6 >> 4) & 1);
            qt.y0(36, (b6 >> 3) & 1);
            qt.y0(16, (b7 >> 5) & 1);
            qt.y0(65, (b7 >> 4) & 1);
            qt.y0(29, (b7 >> 0) & 3);
            qt.y0(30, (b7 >> 2) & 3);
            int i10 = i2 + 5;
            qt.y0(31, (bArr[i10] >> 4) & 3);
            qt.y0(32, (bArr[i10] >> 6) & 3);
            qt.y0(1008, (bArr[i10] >> 2) & 1);
            qt.y0(70, (bArr[i10] >> 1) & 1);
            qt.y0(71, (bArr[i10] >> 0) & 1);
            qt.y0(52, (bArr[i10] >> 3) & 1);
            if (b8 == 1) {
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 1;
            } else if (b8 != 3) {
                if (b8 == 5) {
                    i4 = 0;
                    i7 = 0;
                    i5 = 1;
                } else if (b8 != 6) {
                    switch (b8) {
                        case 11:
                            i5 = 0;
                            i6 = 0;
                            i7 = 0;
                            i4 = 1;
                            break;
                        case 12:
                            i6 = 0;
                            i7 = 0;
                            i4 = 1;
                            i5 = 1;
                            break;
                        case 13:
                            i5 = 0;
                            i7 = 0;
                            i4 = 1;
                            i6 = 1;
                            break;
                        case 14:
                            i7 = 0;
                            i4 = 1;
                            i5 = 1;
                            break;
                        default:
                            i4 = 0;
                            i5 = 0;
                            i6 = 0;
                            i7 = 0;
                            break;
                    }
                } else {
                    i4 = 0;
                    i5 = 0;
                    i7 = 0;
                    i6 = 1;
                }
                i6 = i5;
            } else {
                i4 = 0;
                i6 = 0;
                i7 = 0;
                i5 = 1;
            }
            qt.y0(18, i4);
            qt.y0(20, i5);
            qt.y0(19, i6);
            qt.y0(49, i7);
            qt.y0(21, b9);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i11 = bArr[i2 + 9] & 255;
                if (i11 == 254) {
                    qt.y0(27, -2);
                } else if (i11 != 255) {
                    qt.y0(27, i11 * 5);
                } else {
                    qt.y0(27, -3);
                }
                int i12 = bArr[i2 + 8] & 255;
                if (i12 == 254) {
                    qt.y0(28, -2);
                } else if (i12 != 255) {
                    qt.y0(28, i12 * 5);
                } else {
                    qt.y0(28, -3);
                }
            } else {
                int i13 = bArr[i2 + 8] & 255;
                if (i13 == 254) {
                    qt.y0(27, -2);
                } else if (i13 != 255) {
                    qt.y0(27, i13 * 5);
                } else {
                    qt.y0(27, -3);
                }
                int i14 = bArr[i2 + 9] & 255;
                if (i14 == 254) {
                    qt.y0(28, -2);
                } else if (i14 != 255) {
                    qt.y0(28, i14 * 5);
                } else {
                    qt.y0(28, -3);
                }
            }
            int i15 = bArr[i2 + 13] & 255;
            if (i15 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3((i15 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 72) {
            qt.y0(185, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(186, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(187, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(188, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280));
            return;
        }
        if (b2 == 65) {
            u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
            u0.d.D2(l0.c0.K0(bArr[i2 + 6] & 255));
            u0.d.E2(l0.c0.K0(bArr[i2 + 7] & 255));
            u0.d.F2(l0.c0.K0(bArr[i2 + 8] & 255));
            u0.d.G2(l0.c0.K0(bArr[i2 + 9] & 255));
            if (bArr[i2 + 10] == 1) {
                u0.d.C2(1);
                return;
            } else {
                u0.d.C2(0);
                return;
            }
        }
        if (b2 == 66) {
            u0.d.O2(l0.c0.K0(bArr[i2 + 2] & 255));
            u0.d.Q2(l0.c0.K0(bArr[i2 + 3] & 255));
            u0.d.P2(l0.c0.K0(bArr[i2 + 4] & 255));
            u0.d.N2(l0.c0.K0(bArr[i2 + 5] & 255));
            u0.d.I2(l0.c0.K0(bArr[i2 + 6] & 255));
            u0.d.K2(l0.c0.K0(bArr[i2 + 7] & 255));
            u0.d.J2(l0.c0.K0(bArr[i2 + 8] & 255));
            u0.d.H2(l0.c0.K0(bArr[i2 + 9] & 255));
            return;
        }
        if (b2 == 97) {
            int i16 = i2 + 2;
            qt.y0(109, (bArr[i16] >> 5) & 7);
            qt.y0(110, (bArr[i16] >> 0) & 31);
            int i17 = i2 + 3;
            qt.y0(111, (bArr[i17] >> 7) & 1);
            qt.y0(112, (bArr[i17] >> 6) & 1);
            qt.y0(113, (bArr[i17] >> 5) & 1);
            qt.y0(114, (bArr[i17] >> 4) & 1);
            qt.y0(212, (bArr[i17] >> 3) & 1);
            qt.y0(166, (bArr[i17] >> 0) & 7);
            int i18 = i2 + 4;
            qt.y0(115, (bArr[i18] >> 5) & 7);
            qt.y0(116, (bArr[i18] >> 3) & 3);
            qt.y0(117, (bArr[i18] >> 0) & 7);
            int i19 = i2 + 5;
            qt.y0(118, (bArr[i19] >> 5) & 7);
            qt.y0(119, (bArr[i19] >> 2) & 7);
            qt.y0(167, (bArr[i19] >> 0) & 3);
            int i20 = i2 + 6;
            qt.y0(120, (bArr[i20] >> 6) & 3);
            qt.y0(121, (bArr[i20] >> 3) & 7);
            qt.y0(122, (bArr[i20] >> 0) & 7);
            int i21 = i2 + 7;
            qt.y0(123, (bArr[i21] >> 7) & 1);
            qt.y0(208, (bArr[i21] >> 6) & 1);
            qt.y0(209, (bArr[i21] >> 3) & 7);
            qt.y0(210, (bArr[i21] >> 0) & 7);
            int i22 = i2 + 8;
            qt.y0(124, (bArr[i22] >> 7) & 1);
            qt.y0(125, (bArr[i22] >> 6) & 1);
            qt.y0(126, (bArr[i22] >> 5) & 1);
            qt.y0(127, (bArr[i22] >> 4) & 1);
            qt.y0(128, (bArr[i22] >> 2) & 3);
            qt.y0(129, (bArr[i22] >> 1) & 1);
            qt.y0(130, (bArr[i22] >> 0) & 1);
            int i23 = i2 + 9;
            qt.y0(131, (bArr[i23] >> 7) & 1);
            qt.y0(211, (bArr[i23] >> 5) & 3);
            qt.y0(132, (bArr[i23] >> 0) & 31);
            int i24 = i2 + 10;
            qt.y0(133, (bArr[i24] >> 7) & 1);
            qt.y0(134, (bArr[i24] >> 5) & 3);
            qt.y0(135, (bArr[i24] >> 0) & 31);
            int i25 = i2 + 11;
            qt.y0(136, (bArr[i25] >> 7) & 1);
            qt.y0(137, (bArr[i25] >> 6) & 1);
            qt.y0(138, (bArr[i25] >> 4) & 3);
            qt.y0(139, (bArr[i25] >> 2) & 3);
            qt.y0(140, (bArr[i25] >> 1) & 1);
            qt.y0(141, (bArr[i25] >> 0) & 1);
            int i26 = i2 + 12;
            qt.y0(142, (bArr[i26] >> 6) & 3);
            qt.y0(143, (bArr[i26] >> 5) & 1);
            qt.y0(144, (bArr[i26] >> 4) & 1);
            qt.y0(145, (bArr[i26] >> 3) & 1);
            qt.y0(146, (bArr[i26] >> 2) & 1);
            qt.y0(147, (bArr[i26] >> 1) & 1);
            qt.y0(148, (bArr[i26] >> 0) & 1);
            int i27 = i2 + 13;
            qt.y0(149, (bArr[i27] >> 7) & 1);
            qt.y0(150, (bArr[i27] >> 6) & 1);
            qt.y0(151, (bArr[i27] >> 5) & 1);
            qt.y0(152, (bArr[i27] >> 4) & 1);
            qt.y0(189, (bArr[i27] >> 3) & 1);
            qt.y0(190, (bArr[i27] >> 2) & 1);
            qt.y0(191, (bArr[i27] >> 0) & 3);
            return;
        }
        if (b2 == 98) {
            int i28 = i2 + 2;
            qt.y0(153, (bArr[i28] >> 7) & 1);
            qt.y0(154, (bArr[i28] >> 6) & 1);
            qt.y0(155, (bArr[i28] >> 5) & 1);
            qt.y0(156, (bArr[i28] >> 4) & 1);
            qt.y0(157, (bArr[i28] >> 3) & 1);
            qt.y0(158, (bArr[i28] >> 2) & 1);
            qt.y0(159, (bArr[i28] >> 1) & 1);
            qt.y0(160, (bArr[i28] >> 0) & 1);
            qt.y0(161, (bArr[i2 + 3] >> 0) & 255);
            qt.y0(162, (bArr[i2 + 4] >> 0) & 255);
            qt.y0(163, (bArr[i2 + 5] >> 0) & 255);
            int i29 = i2 + 6;
            qt.y0(164, (bArr[i29] >> 7) & 1);
            qt.y0(165, (bArr[i29] >> 4) & 7);
            int i30 = i2 + 7;
            qt.y0(168, (bArr[i30] >> 7) & 1);
            qt.y0(169, (bArr[i30] >> 6) & 1);
            qt.y0(170, (bArr[i30] >> 0) & 31);
            qt.y0(171, (bArr[i2 + 8] >> 0) & 31);
            qt.y0(172, (bArr[i2 + 9] >> 0) & 255);
            int i31 = i2 + 10;
            qt.y0(173, (bArr[i31] >> 6) & 3);
            qt.y0(174, (bArr[i31] >> 5) & 1);
            qt.y0(175, (bArr[i31] >> 3) & 3);
            qt.y0(176, (bArr[i31] >> 0) & 7);
            int i32 = i2 + 11;
            qt.y0(177, (bArr[i32] >> 7) & 1);
            qt.y0(178, (bArr[i32] >> 6) & 1);
            qt.y0(179, (bArr[i32] >> 5) & 1);
            qt.y0(180, (bArr[i32] >> 4) & 1);
            qt.y0(181, (bArr[i32] >> 3) & 1);
            qt.y0(182, (bArr[i32] >> 2) & 1);
            qt.y0(183, (bArr[i32] >> 0) & 3);
            int i33 = i2 + 12;
            qt.y0(184, (bArr[i33] >> 6) & 3);
            qt.y0(200, (bArr[i33] >> 3) & 1);
            qt.y0(201, (bArr[i33] >> 2) & 1);
            qt.y0(202, (bArr[i33] >> 1) & 1);
            qt.y0(203, (bArr[i33] >> 0) & 1);
            int i34 = i2 + 13;
            qt.y0(204, (bArr[i34] >> 6) & 3);
            qt.y0(205, (bArr[i34] >> 5) & 1);
            qt.y0(206, (bArr[i34] >> 4) & 1);
            qt.y0(207, (bArr[i34] >> 3) & 1);
            return;
        }
        switch (b2) {
            case 17:
                int i35 = (bArr[i2 + 2] >> 7) & 1;
                int i36 = nt.f8637c;
                if ((i36 == 43 || i36 == 44 || i36 == 48 || i36 == 99 || i36 == 100) && this.f12759h != i35) {
                    if (i35 == 1) {
                        if (!qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                            k3();
                            if (y0.f.f18055i != 1) {
                                l0.b0.l0(12, 0);
                                l0.b0.l0(12, 1);
                            }
                        }
                    } else if (i35 == 0 && qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        if (y0.f.f18055i == 1) {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                    this.f12759h = i35;
                }
                if (nt.a()) {
                    byte b10 = bArr[i2 + 4];
                    byte b11 = bArr[i2 + 5];
                    this.f12754c = b10 & 255;
                    int i37 = 0;
                    while (true) {
                        iArr = this.f12755d;
                        if (i37 < iArr.length) {
                            int i38 = this.f12754c;
                            if (i38 != iArr[i37][0]) {
                                i37++;
                            } else if (i38 != 0) {
                                this.f12753b = i37;
                            }
                        }
                    }
                    int i39 = this.f12754c;
                    if (i39 != 3) {
                        if (i39 != 16) {
                            if ((b11 & 255) == 0) {
                                int i40 = this.f12753b;
                                if (i40 < iArr.length && i40 != 255) {
                                    l0.b0.l0(iArr[i40][1], 1);
                                }
                                this.f12753b = 255;
                            } else if (i37 < iArr.length) {
                                l0.b0.l0(iArr[i37][1], 0);
                            }
                        } else if ((b11 & 255) == 1) {
                            int i41 = h0.c.E;
                            if (i41 == 3 || (i41 != 4 && i41 == 5)) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            }
                        }
                    } else if ((b11 & 255) == 1) {
                        int i42 = h0.c.E;
                        if (i42 == 3) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else if (i42 == 4) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else if (i42 != 5) {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        } else {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        }
                    }
                    qt.l(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, false, 5400);
                }
                break;
            case 18:
                byte b12 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b12 >> 6) & 1);
                    qt.y0(2, (b12 >> 7) & 1);
                } else {
                    qt.y0(1, (b12 >> 7) & 1);
                    qt.y0(2, (b12 >> 6) & 1);
                }
                qt.y0(3, (b12 >> 5) & 1);
                qt.y0(4, (b12 >> 4) & 1);
                qt.y0(5, (b12 >> 3) & 1);
                qt.y0(0, (b12 >> 2) & 1);
                break;
            case 19:
                qt.y0(99, bArr[i2 + 10] & 255);
                qt.y0(100, bArr[i2 + 11] & 255);
                break;
            case 20:
                qt.y0(101, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(102, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(103, ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(104, bArr[i2 + 9] & 255);
                qt.y0(105, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                qt.y0(106, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
                qt.y0(107, (bArr[i2 + 15] & 255) | ((bArr[i2 + 14] << 8) & 65280));
                break;
            default:
                switch (b2) {
                    case 33:
                        byte b13 = bArr[i2 + 2];
                        byte b14 = bArr[i2 + 3];
                        this.f12757f = b13 & 255;
                        int i43 = 0;
                        while (true) {
                            iArr2 = this.f12758g;
                            if (i43 < iArr2.length) {
                                int i44 = this.f12757f;
                                if (i44 != iArr2[i43][0]) {
                                    i43++;
                                } else if (i44 != 0) {
                                    this.f12756e = i43;
                                }
                            }
                        }
                        if ((b14 & 255) == 0) {
                            int i45 = this.f12756e;
                            if (i45 < iArr2.length && i45 != 255) {
                                l0.b0.l0(iArr2[i45][1], 1);
                            }
                            this.f12756e = 255;
                        } else if (i43 < iArr2.length) {
                            l0.b0.l0(iArr2[i43][1], 0);
                        }
                        break;
                    case 34:
                        byte b15 = bArr[i2 + 2];
                        byte b16 = bArr[i2 + 3];
                        if (b15 == 1) {
                            int i46 = this.f12760i;
                            if (b16 != i46) {
                                if (b16 > i46) {
                                    for (int i47 = 0; i47 < b16 - this.f12760i; i47++) {
                                        l0.b0.l0(7, 0);
                                    }
                                    l0.b0.l0(7, 1);
                                } else if (b16 < i46) {
                                    for (int i48 = 0; i48 < this.f12760i - b16; i48++) {
                                        l0.b0.l0(8, 0);
                                    }
                                    l0.b0.l0(8, 1);
                                }
                                this.f12760i = b16;
                            }
                        } else if (b15 == 2 && b16 != (i8 = this.f12761j)) {
                            if (b16 > i8) {
                                for (int i49 = 0; i49 < b16 - this.f12761j; i49++) {
                                    l0.b0.l0(31, 0);
                                }
                                l0.b0.l0(31, 1);
                            } else if (b16 < i8) {
                                for (int i50 = 0; i50 < this.f12761j - b16; i50++) {
                                    l0.b0.l0(30, 0);
                                }
                                l0.b0.l0(30, 1);
                            }
                            this.f12761j = b16;
                        }
                        break;
                    case 35:
                        qt.y0(192, bArr[i2 + 2] & 255);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17374a.d(l0.h0.f13061g);
        u0.c.f17392s.d(l0.h0.f13061g);
        u0.c.f17393t.d(l0.h0.f13061g);
        w0.e.f17815a.d(l0.h0.f13061g);
        w0.e.f17819e.d(l0.h0.f13061g);
        u0.c.f17388o.d(this.f12769r);
        h0.d.f2462a.d(this.f12768q);
        h0.d.f2464c.d(this.f12768q);
        u0.c.f17386m.d(this.f12764m);
        qt.q0(this.f12762k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 213) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 4, 27, 2, 2, 1, 255);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 2, 154, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4) {
            z.k.s(227, 2, 42, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 6) {
            z.k.s(227, 2, 173, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            int i3 = iArr[0];
            if (i3 == 1) {
                z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, 16, 8);
                return;
            }
            if (i3 == 2) {
                z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, 16, 6);
            } else if (i3 != 3) {
                z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, 16, 7);
            } else {
                z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, 16, 5);
            }
        }
    }

    public final void h3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void i3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        try {
            int[] iArr = new int[35];
            byte[] bytes = str.getBytes("GB2312");
            iArr[0] = 227;
            int length = 32;
            iArr[1] = 32;
            iArr[2] = b2;
            if (bytes.length <= 32) {
                length = bytes.length;
            }
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2 + 3] = bytes[i2];
            }
            z.k.s(iArr);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean j3(int i2) {
        return i2 == 3 || i2 == 4 || i2 == 5;
    }

    public final void k3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.xiandai.XiandaiSosPage");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003b  */
    public final void l3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() > 12 ? 12 : str.length();
        byte[] bArr = new byte[12];
        byte[] bytes = str.getBytes();
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = bytes[i2];
        }
        int i3 = h0.c.E;
        int i4 = 4;
        if (i3 == 0) {
            i4 = 6;
        } else if (i3 == 2) {
            i4 = 0;
        } else if (i3 == 3) {
            i4 = 2;
        } else if (i3 == 4) {
            i4 = 1;
        } else if (i3 != 5) {
            i4 = 6;
        }
        int i5 = (!j3(h0.c.F) || j3(h0.c.E)) ? i4 : 5;
        int[] iArr = new int[30];
        for (int i6 = 0; i6 < 30; i6++) {
            iArr[i6] = 0;
        }
        iArr[0] = -29;
        iArr[1] = 27;
        iArr[2] = -51;
        iArr[3] = i5;
        for (int i7 = 0; i7 < length; i7++) {
            int iCodePointAt = str.codePointAt(i7);
            int i8 = (i7 << 1) + 6;
            iArr[i8] = (iCodePointAt >> 8) & 255;
            iArr[i8 + 1] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }
}
