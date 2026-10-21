package f1;

import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothHealth;
import android.media.videoeditor.MediaProperties;
import android.opengl.GLES11;
import android.opengl.GLES11Ext;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.os.BatteryStats;
import android.os.Handler;
import android.util.Log;
import android.view.Window;
import java.util.Arrays;
import o1.l0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class g extends q {
    public final boolean P;
    public q.c Q;
    public q.c R;
    public int S;
    public int T;
    public q1.b U;
    public l0 V;
    public boolean W;

    public g(int i2, p1.a aVar, int i3, Handler handler) {
        super(16, i2, aVar, i3, handler);
        this.P = true;
        this.Q = new q.c(-1, -1);
        this.R = new q.c(-1, -1);
        this.S = -1;
        this.T = -1;
        this.U = new q1.b(0, 3);
        this.V = new l0();
        this.W = false;
    }

    @Override // f1.q
    public boolean M() {
        if (n()) {
            return true;
        }
        J(true);
        return this.f2154r;
    }

    public final int X(int i2) {
        if (n()) {
            return 1;
        }
        synchronized (this.f2157u) {
            p1.a aVar = this.f2157u;
            if (aVar != null && !this.f2158v) {
                int[] iArrE = aVar.e(1, this.f2159w, false, (i2 >> 8) & 255, i2 & 255);
                if (iArrE != null && iArrE.length > 0) {
                    if (iArrE.length == 1) {
                        return iArrE[0] & 255;
                    }
                    return (iArrE[1] << 8) & 255 & iArrE[0] & 255 & 65535;
                }
                return -1;
            }
            return -1;
        }
    }

    public final int Y(int i2) {
        if (n()) {
            return 1;
        }
        synchronized (this.f2157u) {
            p1.a aVar = this.f2157u;
            int i3 = -1;
            if (aVar != null && !this.f2158v) {
                int[] iArrE = aVar.e(1, this.f2159w, false, (i2 >> 8) & 255, i2 & 255);
                if (iArrE != null && iArrE.length != 0) {
                    i3 = iArrE[0] & 255;
                }
                Log.e("Chip3587", String.format("READ [%02X  - %04X] -- value : %02X", Integer.valueOf(this.f2159w), Integer.valueOf(i2), Integer.valueOf(i3 & 255)) + "   i2c: " + this.f2157u);
                return i3;
            }
            return -1;
        }
    }

    public final boolean Z(int i2, int i3) {
        if (n()) {
            return true;
        }
        int[] iArr = {(i2 >> 8) & 255, i2 & 255};
        int[] iArr2 = {i3 & 255, (i3 >> 8) & 255};
        p1.a aVar = this.f2157u;
        int iD = (aVar == null || this.f2158v) ? -1 : aVar.d(this.f2159w, iArr, iArr2);
        Log.e("Chip3587", String.format("WRITE [%02X  - ", Integer.valueOf(this.f2159w)) + Arrays.toString(s0.s(iArr)) + " - " + Arrays.toString(s0.s(iArr2)) + "]  result : " + iD + " chipid : " + this.f2144h);
        return iD > 0;
    }

    @Override // f1.q, e1.l
    public void a() {
        this.T = -1;
        this.S = -1;
        q.c cVar = this.Q;
        cVar.f2164a = -1;
        cVar.f2165b = -1;
        this.U.a();
        this.W = false;
        Log.e("Chip3587", "==============================>> 03 update " + this.Q + " chipid : " + this.f2144h);
        int i2 = this.Q.f2164a;
        u0.d.I3(173, y(i2, i2));
        super.a();
    }

    public final boolean a0(int i2, int i3) {
        if (n()) {
            return true;
        }
        int[] iArr = {(i2 >> 8) & 255, i2 & 255};
        int[] iArr2 = {i3 & 255, (i3 >> 8) & 255, (i3 >> 16) & 255, (i3 >> 24) & 255};
        p1.a aVar = this.f2157u;
        int iD = (aVar == null || this.f2158v) ? -1 : aVar.d(this.f2159w, iArr, iArr2);
        Log.e("Chip3587", String.format("WRITE [%02X  - ", Integer.valueOf(this.f2159w)) + Arrays.toString(s0.s(iArr)) + " - " + Arrays.toString(s0.s(iArr2)) + "]  result : " + iD + " chipid : " + this.f2144h);
        return iD > 0;
    }

    public final boolean b0(int i2, int i3) {
        if (n()) {
            return true;
        }
        int[] iArr = {(i2 >> 8) & 255, i2 & 255};
        p1.a aVar = this.f2157u;
        int iD = (aVar == null || this.f2158v) ? -1 : aVar.d(this.f2159w, iArr, i3);
        Log.e("Chip3587", String.format("WRITE [%02X  - ", Integer.valueOf(this.f2159w)) + Arrays.toString(s0.s(iArr)) + " - " + String.format("%02X", Integer.valueOf(i3)) + "]  result : " + iD + " chipid : " + this.f2144h);
        return iD > 0;
    }

    @Override // f1.q, e1.l
    public synchronized void c(int i2) {
        super.c(i2);
        if (this.f2145i != i2 && !m()) {
            if (n()) {
                this.S = s0.m("sys.c8918.w", 1280);
                this.T = s0.m("sys.c8918.h", MediaProperties.HEIGHT_720);
            }
            this.f2145i = i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [int] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // f1.q
    public int k() {
        ?? r6;
        int iY = n() ? 1 : (Y(34080) >> 4) & 1;
        if (iY != 1) {
            iY = 0;
        }
        boolean z2 = this.U.g(iY) == 1;
        int i2 = -1;
        if (n() || !this.U.e()) {
            r6 = z2;
        } else {
            if (z2) {
                int iX = s0.x(Y(34179), Y(GLES11.GL_SRC2_RGB));
                int iX2 = s0.x(Y(GLES11.GL_SRC1_ALPHA), Y(GLES11.GL_SRC0_ALPHA));
                r6 = (iX <= 100 || iX2 <= 100) ? 0 : 1;
                if (r6 != 0 && (this.T != iX2 || iX != this.S)) {
                    this.T = iX2;
                    this.S = iX;
                }
            } else {
                r6 = z2;
            }
            if (r6 == 0) {
                this.T = -1;
                this.S = -1;
            }
        }
        if (this.V.c(200)) {
            this.V.a();
            Log.e("Chip3587", "  CHECK SIGNAL : imagType :  " + this.f2145i + " last  imagFormat :  " + this.f2147k + "  hasSignal  : " + z2 + " mSignalMarker: " + this.U + " chipid : " + this.f2144h);
        }
        q.c cVar = this.Q;
        int i3 = cVar.f2164a;
        int i4 = this.S;
        if (i3 != i4 || cVar.f2165b != this.T) {
            cVar.f2164a = i4;
            int i5 = this.T;
            cVar.f2165b = i5;
            this.W = true;
            if (i5 != -1 && i4 != -1) {
                i2 = 14;
            }
            this.f2147k = i2;
        } else if (this.W) {
            this.W = false;
            Log.e("Chip3587", "==============================>> 00 SET " + this.Q + " videoWidth : " + this.S + " videoHeight : " + this.T + " chipid : " + this.f2144h);
            q.c cVar2 = this.Q;
            u0.d.I3(173, y(cVar2.f2164a, cVar2.f2165b));
        }
        return r6;
    }

    @Override // f1.q
    public void o() {
        G(0, 0);
        G(11, 1);
        G(12, 2);
        G(13, 3);
        G(14, 4);
    }

    @Override // f1.q
    public void p() {
        Z(2, BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK);
        Z(2, 0);
        Z(32, 12387);
        Z(34, 515);
        Z(34, 531);
        Z(22, 1855);
        b0(34050, 255);
        b0(34059, 31);
        Z(20, 1855);
        b0(GLES11Ext.GL_REFLECTION_MAP_OES, 254);
        b0(34075, 29);
        b0(34098, 128);
        b0(34102, 64);
        b0(34111, 10);
        b0(34103, 2);
        b0(34115, 50);
        b0(34116, 16);
        b0(34117, 49);
        b0(34118, 45);
        b0(34257, 1);
        b0(34144, 36);
        b0(34147, 17);
        b0(34148, 15);
        b0(34097, 1);
        b0(34098, 128);
        b0(34112, 140);
        b0(34113, 10);
        b0(34352, 176);
        b0(34353, 30);
        b0(34354, 4);
        b0(34416, 1);
        b0(34304, 0);
        b0(34306, i.a.Theme_actionModeWebSearchDrawable);
        b0(34307, 2);
        b0(34308, 12);
        b0(34310, 5);
        b0(34311, 0);
        b0(34336, 34);
        b0(34368, 1);
        b0(34369, 101);
        b0(34370, 7);
        b0(34386, 2);
        b0(34218, 80);
        b0(34223, 198);
        b0(34219, 0);
        b0(34405, 16);
        b0(34569, 255);
        b0(34571, 44);
        b0(34572, 83);
        b0(34573, 1);
        b0(34574, 48);
        b0(36871, 16);
        b0(34247, 1);
        b0(34250, 0);
        b0(34251, 1);
        b0(35840, 0);
        b0(35841, 255);
        b0(35842, 255);
        b0(35843, 255);
        b0(35844, 255);
        b0(35845, 255);
        b0(35846, 255);
        b0(35847, 0);
        b0(35848, 82);
        b0(35849, 98);
        b0(35850, 136);
        b0(35851, 136);
        b0(35852, 0);
        b0(35853, 136);
        b0(35854, 136);
        b0(35855, 136);
        b0(35856, 28);
        b0(35857, 21);
        b0(35858, 1);
        b0(35859, 3);
        b0(35860, 128);
        b0(35861, 0);
        b0(35862, 0);
        b0(GLES30.GL_UNSIGNED_NORMALIZED, 120);
        b0(35864, 10);
        b0(35865, 13);
        b0(GLES30.GL_TEXTURE_2D_ARRAY, 201);
        b0(35867, 160);
        b0(35868, 87);
        b0(GLES30.GL_TEXTURE_BINDING_2D_ARRAY, 71);
        b0(35870, 152);
        b0(35871, 39);
        b0(35872, 18);
        b0(35873, 72);
        b0(35874, 76);
        b0(35875, 0);
        b0(35876, 0);
        b0(35877, 0);
        b0(35878, 1);
        b0(35879, 1);
        b0(35880, 1);
        b0(35881, 1);
        b0(35882, 1);
        b0(35883, 1);
        b0(35884, 1);
        b0(35885, 1);
        b0(35886, 1);
        b0(GLES30.GL_ANY_SAMPLES_PASSED, 1);
        b0(35888, 1);
        b0(35889, 1);
        b0(35890, 1);
        b0(35891, 1);
        b0(35892, 1);
        b0(35893, 1);
        b0(35894, 2);
        b0(35895, 58);
        b0(35896, 128);
        b0(35897, 24);
        b0(GLES30.GL_R11F_G11F_B10F, 113);
        b0(GLES30.GL_UNSIGNED_INT_10F_11F_11F_REV, 56);
        b0(35900, 45);
        b0(GLES30.GL_RGB9_E5, 64);
        b0(GLES30.GL_UNSIGNED_INT_5_9_9_9_REV, 88);
        b0(35903, 44);
        b0(GLES30.GL_SRGB, 69);
        b0(GLES30.GL_SRGB8, 0);
        b0(35906, 192);
        b0(GLES30.GL_SRGB8_ALPHA8, 108);
        b0(35908, 0);
        b0(35909, 0);
        b0(35910, 0);
        b0(35911, 30);
        b0(35912, 1);
        b0(35913, 29);
        b0(35914, 0);
        b0(35915, 114);
        b0(35916, 81);
        b0(35917, 208);
        b0(35918, 30);
        b0(35919, 32);
        b0(35920, 110);
        b0(35921, 40);
        b0(35922, 85);
        b0(35923, 0);
        b0(35924, 192);
        b0(35925, 108);
        b0(35926, 0);
        b0(35927, 0);
        b0(35928, 0);
        b0(35929, 30);
        b0(35930, 0);
        b0(35931, 0);
        b0(35932, 0);
        b0(35933, 252);
        b0(35934, 0);
        b0(35935, 84);
        b0(35936, 111);
        b0(35937, 115);
        b0(35938, 104);
        b0(35939, 105);
        b0(35940, 98);
        b0(35941, 97);
        b0(35942, 45);
        b0(35943, 72);
        b0(35944, 50);
        b0(35945, 67);
        b0(35946, 10);
        b0(35947, 32);
        b0(35948, 0);
        b0(35949, 0);
        b0(35950, 0);
        b0(35951, i.a.Theme_dialogTitleDecorLayout);
        b0(35952, 0);
        b0(35953, 20);
        b0(35954, 120);
        b0(35955, 1);
        b0(35956, 255);
        b0(35957, 16);
        b0(GLES30.GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH, 0);
        b0(35959, 10);
        b0(35960, 32);
        b0(35961, 32);
        b0(35962, 32);
        b0(35963, 32);
        b0(35964, 32);
        b0(35965, 32);
        b0(35966, 1);
        b0(GLES30.GL_TRANSFORM_FEEDBACK_BUFFER_MODE, 139);
        b0(GLES30.GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS, 2);
        b0(35969, 3);
        b0(35970, 26);
        b0(GLES30.GL_TRANSFORM_FEEDBACK_VARYINGS, 118);
        b0(GLES30.GL_TRANSFORM_FEEDBACK_BUFFER_START, 71);
        b0(GLES30.GL_TRANSFORM_FEEDBACK_BUFFER_SIZE, 144);
        b0(35974, 132);
        b0(35975, 162);
        b0(GLES30.GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN, 130);
        b0(GLES30.GL_RASTERIZER_DISCARD, 147);
        b0(GLES30.GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS, 159);
        b0(GLES30.GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS, 32);
        b0(GLES30.GL_INTERLEAVED_ATTRIBS, 35);
        b0(GLES30.GL_SEPARATE_ATTRIBS, 9);
        b0(GLES30.GL_TRANSFORM_FEEDBACK_BUFFER, 7);
        b0(GLES30.GL_TRANSFORM_FEEDBACK_BUFFER_BINDING, 1);
        b0(35984, 131);
        b0(35985, 1);
        b0(GLES11Ext.GL_ATC_RGB_AMD, 0);
        b0(GLES11Ext.GL_ATC_RGBA_EXPLICIT_ALPHA_AMD, 0);
        b0(35988, 101);
        b0(35989, 3);
        b0(35990, 12);
        b0(35991, 0);
        b0(35992, 16);
        b0(35993, 0);
        b0(35994, 1);
        b0(35995, 29);
        b0(35996, 128);
        b0(35997, 24);
        b0(35998, 113);
        b0(35999, 56);
        b0(36000, 45);
        b0(36001, 64);
        b0(36002, 88);
        b0(GLES20.GL_STENCIL_BACK_REF, 44);
        b0(GLES20.GL_STENCIL_BACK_VALUE_MASK, 69);
        b0(GLES20.GL_STENCIL_BACK_WRITEMASK, 0);
        b0(36006, 192);
        b0(36007, 108);
        b0(GLES30.GL_READ_FRAMEBUFFER, 0);
        b0(GLES30.GL_DRAW_FRAMEBUFFER, 0);
        b0(GLES30.GL_READ_FRAMEBUFFER_BINDING, 0);
        b0(GLES30.GL_RENDERBUFFER_SAMPLES, 30);
        b0(GLES30.GL_DEPTH_COMPONENT32F, 140);
        b0(GLES30.GL_DEPTH32F_STENCIL8, 10);
        b0(36014, 208);
        b0(36015, 138);
        b0(36016, 32);
        b0(36017, 224);
        b0(36018, 45);
        b0(36019, 16);
        b0(36020, 16);
        b0(36021, 62);
        b0(36022, 150);
        b0(36023, 0);
        b0(36024, 192);
        b0(36025, 108);
        b0(36026, 0);
        b0(36027, 0);
        b0(36028, 0);
        b0(36029, 24);
        b0(36030, 1);
        b0(36031, 29);
        b0(36032, 0);
        b0(36033, 188);
        b0(36034, 82);
        b0(36035, 208);
        b0(36036, 30);
        b0(36037, 32);
        b0(36038, 184);
        b0(36039, 40);
        b0(36040, 85);
        b0(36041, 64);
        b0(36042, 192);
        b0(36043, 108);
        b0(36044, 0);
        b0(36045, 0);
        b0(36046, 0);
        b0(36047, 30);
        b0(36048, 2);
        b0(36049, 58);
        b0(36050, 128);
        b0(36051, 208);
        b0(GLES30.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER, 114);
        b0(36053, 56);
        b0(36054, 45);
        b0(36055, 64);
        b0(36056, 16);
        b0(36057, 44);
        b0(GLES11Ext.GL_FRAMEBUFFER_INCOMPLETE_FORMATS_OES, 69);
        b0(36059, 128);
        b0(36060, 192);
        b0(36061, 108);
        b0(36062, 0);
        b0(GLES30.GL_MAX_COLOR_ATTACHMENTS, 0);
        b0(36064, 0);
        b0(GLES30.GL_COLOR_ATTACHMENT1, 30);
        b0(GLES30.GL_COLOR_ATTACHMENT2, 0);
        b0(GLES30.GL_COLOR_ATTACHMENT3, 0);
        b0(GLES30.GL_COLOR_ATTACHMENT4, 0);
        b0(GLES30.GL_COLOR_ATTACHMENT5, 0);
        b0(GLES30.GL_COLOR_ATTACHMENT6, 0);
        b0(GLES30.GL_COLOR_ATTACHMENT7, 0);
        b0(GLES30.GL_COLOR_ATTACHMENT8, 0);
        b0(GLES30.GL_COLOR_ATTACHMENT9, 0);
        b0(GLES30.GL_COLOR_ATTACHMENT10, 0);
        b0(GLES30.GL_COLOR_ATTACHMENT11, 0);
        b0(GLES30.GL_COLOR_ATTACHMENT12, 0);
        b0(GLES30.GL_COLOR_ATTACHMENT13, 0);
        b0(GLES30.GL_COLOR_ATTACHMENT14, 0);
        b0(GLES30.GL_COLOR_ATTACHMENT15, 0);
        b0(36080, 0);
        b0(36081, 0);
        b0(36082, 0);
        b0(36083, 0);
        b0(36084, 0);
        b0(36085, 0);
        b0(36086, 0);
        b0(36087, 0);
        b0(36088, 0);
        b0(36089, 0);
        b0(36090, 0);
        b0(36091, 0);
        b0(36092, 0);
        b0(36093, 0);
        b0(36094, 0);
        b0(36095, 67);
        Y(34080);
        Y(34080);
        Y(34080);
        Z(22, 1343);
        Z(2, 1);
        Z(2, 0);
        X(20);
        Y(34050);
        Y(34059);
        Y(34080);
        Z(22, 1855);
        b0(34050, 255);
        b0(34059, 31);
        Z(20, 1855);
        Z(22, 1343);
        b0(34122, 1);
        Z(2, 0);
        X(20);
        Y(34050);
        Y(34059);
        Y(34080);
        Z(22, 1855);
        b0(34050, 255);
        b0(34059, 31);
        Z(20, 1855);
        Y(34094);
        Y(34095);
        Y(GLES11.GL_SRC2_ALPHA);
        Y(34187);
        Y(GLES11.GL_SRC2_RGB);
        Y(34179);
        Y(34188);
        Y(34189);
        Y(GLES11.GL_SRC0_ALPHA);
        Y(GLES11.GL_SRC1_ALPHA);
        Y(34088);
        Y(34082);
        Y(34085);
        Y(34086);
        Z(4, 3804);
        Z(2, 512);
        Z(2, 0);
        Z(2, 1);
        Z(32, 12387);
        Z(34, 515);
        Z(34, 531);
        Z(2, 0);
        b0(GLES11.GL_RGB_SCALE, 193);
        b0(GLES11.GL_ADD_SIGNED, 8);
        b0(GLES11.GL_CONSTANT, 160);
        Z(6, 120);
        a0(320, 0);
        a0(324, 0);
        a0(328, 0);
        a0(332, 0);
        a0(336, 0);
        a0(BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY, BluetoothHealth.HEALTH_OPERATION_SUCCESS);
        a0(BluetoothClass.Device.PHONE_ISDN, 4);
        a0(536, 7683);
        a0(540, 1);
        a0(544, 1029);
        a0(548, Window.PROGRESS_SECONDARY_START);
        a0(552, 10);
        a0(556, 3);
        a0(560, 5);
        a0(564, 31);
        a0(568, 0);
        a0(516, 1);
        a0(1304, 1);
        a0(1280, -1560248185);
        b0(34050, 255);
        b0(34051, 127);
        b0(34052, 255);
        b0(34053, 255);
        b0(34054, 255);
        b0(34059, 31);
        Z(20, 1855);
        Z(22, 1343);
        Z(4, 3807);
        Log.e("Chip3587", "==============================>> flushParams() result : true chipid : " + this.f2144h);
        H(true);
    }
}
