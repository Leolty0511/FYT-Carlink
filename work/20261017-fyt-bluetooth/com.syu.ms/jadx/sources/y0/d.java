package y0;

/* JADX INFO: loaded from: classes2.dex */
public class d extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f18015a = new int[20];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f18016b = new int[20];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f18017c = new int[20];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f18018d = {A(16), A(16), A(16), A(16), A(16), A(16), A(16)};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f18019e = {A(21), A(18), A(12), A(16), A(20), A(24), A(16)};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f18020f = {A(14), A(16), A(14), A(15), A(16), A(15), A(13)};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f18021g = {A(18), A(17), A(16), A(16), A(17), A(18), A(19)};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[] f18022h = {A(22), A(20), A(18), A(16), A(18), A(20), A(22)};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f18023i = {A(26), A(25), A(22), A(25), A(22), A(19), A(16)};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f18024j = {A(24), A(22), A(19), A(12), A(21), A(12), A(26)};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f18025k = {A(16), A(19), A(22), A(25), A(28), A(25), A(26)};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f18026l = new int[37];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f18027m = new int[48];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f18028n = {6, 6, 0, 0, 3, 5, 2};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[] f18029o = {16};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f18030p;

    static {
        for (int i2 = 0; i2 < 20; i2++) {
            f18015a[i2] = 14;
            f18016b[i2] = 9;
            f18017c[i2] = 0;
        }
        u();
        v();
        w();
        f18030p = -1;
    }

    public static int A(int i2) {
        return ((i2 * f.f18047f0) + 16) / 32;
    }

    public static void q() {
        int[] iArr = new int[39];
        iArr[0] = 0;
        iArr[1] = 170;
        System.arraycopy(f18026l, 0, iArr, 2, 37);
        z.k.o(iArr);
    }

    public static void r() {
        int[] iArr = f18015a;
        iArr[2] = 7;
        int[] iArr2 = f18016b;
        iArr2[2] = 8;
        iArr2[3] = 0;
        iArr[5] = 5;
        f18017c[5] = 2;
        int[] iArr3 = f18027m;
        iArr3[2] = 8;
        iArr2[8] = 0;
        iArr2[9] = 0;
        iArr2[10] = 0;
        iArr2[15] = 0;
        iArr2[16] = 0;
        iArr3[6] = 0;
    }

    public static void s() {
        int[] iArr = f18015a;
        iArr[2] = 7;
        int[] iArr2 = f18016b;
        iArr2[2] = 8;
        iArr2[3] = 0;
        iArr[5] = 5;
        f18017c[5] = 2;
        int[] iArr3 = f18027m;
        iArr3[2] = 8;
        iArr2[8] = 7;
        iArr2[9] = 7;
        iArr2[10] = 7;
        iArr2[15] = 7;
        iArr2[16] = 7;
        iArr3[6] = 7;
    }

    public static void t() {
        int[] iArr = f18015a;
        iArr[2] = 7;
        int[] iArr2 = f18016b;
        iArr2[2] = 8;
        iArr2[3] = 0;
        iArr[5] = 5;
        f18017c[5] = 2;
        int[] iArr3 = f18027m;
        iArr3[2] = 8;
        iArr2[8] = 0;
        iArr2[9] = 0;
        iArr2[10] = 0;
        iArr2[15] = 0;
        iArr2[16] = 0;
        iArr3[6] = 0;
    }

    public static void u() {
        int[] iArr = f18015a;
        iArr[1] = 1;
        iArr[2] = 24;
        iArr[3] = 9;
        iArr[4] = 0;
        iArr[5] = 1;
        iArr[6] = 2;
        iArr[7] = 8;
        iArr[8] = 21;
        iArr[9] = 21;
        iArr[10] = 21;
        iArr[11] = 1;
        iArr[12] = 1;
        iArr[13] = 1;
        iArr[14] = 5;
        iArr[15] = 21;
        iArr[16] = 21;
        int[] iArr2 = f18016b;
        iArr2[1] = 4;
        iArr2[2] = 33;
        iArr2[3] = 32;
        iArr2[4] = 5;
        iArr2[5] = 1;
        iArr2[6] = 2;
        iArr2[7] = 3;
        iArr2[8] = 7;
        iArr2[9] = 7;
        iArr2[10] = 7;
        iArr2[11] = 4;
        iArr2[12] = 1;
        iArr2[13] = 1;
        iArr2[14] = 1;
        iArr2[15] = 7;
        iArr2[16] = 7;
        int[] iArr3 = f18017c;
        iArr3[1] = 0;
        iArr3[2] = 0;
        iArr3[3] = 0;
        iArr3[4] = 0;
        iArr3[5] = 0;
        iArr3[6] = 3;
        iArr3[7] = 0;
        iArr3[8] = 0;
        iArr3[9] = 0;
        iArr3[10] = 0;
        iArr3[11] = 0;
        iArr3[12] = 0;
        iArr3[13] = 0;
        iArr3[14] = 2;
        iArr3[15] = 0;
        iArr3[16] = 0;
    }

    public static void v() {
        int[] iArr = f18027m;
        iArr[0] = 4;
        iArr[2] = 6;
        iArr[3] = 0;
        iArr[1] = 5;
        iArr[5] = 1;
        iArr[8] = 2;
        iArr[4] = 3;
        iArr[6] = 7;
        iArr[7] = 6;
        iArr[11] = 1;
        iArr[9] = 1;
        iArr[10] = 1;
    }

    public static void w() {
        System.arraycopy(new int[]{0, 15, 25, 55, 75, 90, 100, 107, 114, 120, 125, 130, 134, 135, 139, 143, 147, 151, 155, 159, 163, 167, 171, 175, 179, 183, 186, 189, 192, 195, 198, 200, 202, 203, 204, 205, 207}, 0, f18026l, 0, 37);
    }

    public static void x() {
        System.arraycopy(new int[]{0, 15, 25, 55, 75, 90, 100, 107, 114, 120, 125, 130, 134, 135, 139, 143, 147, 151, 155, 159, 163, 167, 171, 175, 179, 183, 186, 189, 191, 193, 194, 195, 196, 197, 198, 199, 200}, 0, f18026l, 0, 37);
    }

    public static void y() {
        x();
    }

    public static void z() {
        System.arraycopy(new int[]{0, 10, 18, 30, 42, 55, 70, 83, 90, 94, 98, 104, 110, 114, 119, 124, 129, 133, 137, 141, 145, 149, 153, 157, 161, 165, 168, 171, 174, 176, 178, 179, 180, 181, 182, 183, 186}, 0, f18026l, 0, 37);
    }
}
