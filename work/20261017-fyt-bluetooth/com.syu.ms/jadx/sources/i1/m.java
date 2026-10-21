package i1;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class m extends i1.a<a> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f2668k = {147, 152, 228, 70, 235, 186, 4, 76, 250, 64, 184, 150, 14, 178, 183, 192, 12, 50, 155, 128, 255, 48, 127, 157, 179, 129, 88, 231, i.a.Theme_actionModeShareDrawable, 25, 126, 182, 205, i.a.Theme_preferenceHeaderPanelStyle, 180, 203, 188, 92, 214, 9, 32, 10, 224, 55, 81, 103, 36, 149, 225, 98, 248, 94, 56, 21, 84, 119, 99, 87, 109, 233, 137, 118, 190, 65, 93, 249, 177, 77, 108, 83, 156, 162, 35, 196, 142, 200, 5, 66, 97, 113, 197, 0, 24, 111, 95, 251, 123, 17, 101, 45, 140, 237, 20, 171, 136, 213, 217, 194, 54, 52, 124, 91, 60, i.a.Theme_preferencePanelStyle, 72, 11, 238, 2, 131, 121, 23, 230, 168, 120, i.a.Theme_preferenceFragmentStyle, 211, 78, 80, 82, 145, 216, 198, 34, 236, 59, 229, 63, 134, 6, 207, 43, 47, 61, 89, 28, 135, 239, 79, 16, 210, 125, 218, 114, 160, 159, 222, 107, 117, 86, 189, 199, 193, 112, 29, 37, 146, 165, 49, 226, 215, 208, 154, 175, 169, 201, 151, 8, 51, 90, 153, 195, 22, 132, 130, 138, i.a.Theme_actionModeWebSearchDrawable, 74, 206, 219, 41, 15, 174, 110, 227, 139, 7, 58, 116, 71, 176, 187, 181, 122, 169, 44, 212, 3, 62, 26, 167, 39, 100, 6, 191, 86, 115, 30, 254, 73, 1, 57, 40, i.a.Theme_actionModePopupWindowStyle, 38, 223, 221, 68, 13, 33, i.a.Theme_actionModeFindDrawable, 133, 185, 234, 75, 220, 106, 202, 172, 18, 252, 46, 42, 163, 240, 102, 232, 96, 69, 161, 141, 104, 53, i.a.Theme_dialogTitleDecorLayout, 143, 158, 31, 19, 209, 173, 105, 204, 164, 148, 144, 27, 67};

    public class a extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f2669h = {85, 85};

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Integer f2670i = null;

        public a() {
        }

        @Override // i1.e
        public boolean a(int i2) {
            if (this.f2670i == null) {
                this.f2670i = Integer.valueOf(k());
            }
            return this.f2670i.intValue() == (i2 & 255);
        }

        @Override // i1.e
        public void b() {
            super.b();
            this.f2670i = null;
        }

        @Override // i1.e
        public boolean c(int i2) {
            return this.f2619d != null;
        }

        @Override // i1.e
        public boolean e() {
            return true;
        }

        @Override // i1.e
        public int[] f() {
            return this.f2669h;
        }

        @Override // i1.e
        public boolean j() {
            if (this.f2619d == null) {
                this.f2619d = 8;
            }
            return super.j();
        }

        public final int k() {
            int i2 = 0;
            for (int i3 = 0; i3 < this.f2619d.intValue(); i3++) {
                i2 = m.f2668k[(i2 ^ this.f2618c[i3]) & 255];
            }
            return i2;
        }
    }

    public m(int i2, int i3) {
        super(i2, i3);
        a aVar = new a();
        this.f2721a = aVar;
        aVar.h();
    }

    @Override // i1.s
    public void l(int[] iArr) {
        Log.e("Device", "onHandle : " + o1.b0.e(iArr, 0, iArr.length));
    }
}
