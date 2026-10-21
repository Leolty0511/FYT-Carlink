package m0;

import android.bluetooth.BluetoothClass;
import android.mtp.MtpConstants;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.opengl.GLES11;
import android.opengl.GLES11Ext;
import android.opengl.GLES20;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class k extends m0.a implements o1.q {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int[] f13262n = {0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935, 4657, BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY, 12915, 8786, 21173, 17044, 29431, 25302, 37689, 33560, 45947, 41818, 54205, 50076, 62463, 58334, 9314, 13379, BluetoothClass.Device.AUDIO_VIDEO_CAR_AUDIO, 5121, 25830, 29895, 17572, 21637, 42346, 46411, 34088, 38153, 58862, 62927, 50604, 54669, 13907, 9842, 5649, 1584, 30423, 26358, 22165, 18100, 46939, 42874, 38681, 34616, 63455, 59390, 55197, 51132, 18628, 22757, 26758, 30887, 2112, 6241, 10242, 14371, 51660, 55789, 59790, 63919, 35144, 39273, 43274, 47403, 23285, 19156, 31415, 27286, 6769, 2640, 14899, 10770, 56317, 52188, 64447, 60318, 39801, GLES20.GL_BOOL_VEC3, 47931, 43802, 27814, 31879, 19684, 23749, 11298, 15363, 3168, 7233, 60846, 64911, 52716, 56781, 44330, 48395, GLES11Ext.GL_REQUIRED_TEXTURE_IMAGE_UNITS_OES, 40265, 32407, 28342, 24277, 20212, 15891, 11826, 7761, 3696, 65439, 61374, 57309, 53244, 48923, 44858, 40793, 36728, 37256, 33193, 45514, 41451, 53516, 49453, 61774, 57711, 4224, 161, 12482, 8419, MtpConstants.DEVICE_PROPERTY_COMPRESSION_SETTING, 16421, 28742, 24679, 33721, 37784, 41979, 46042, 49981, 54044, 58239, 62302, 689, 4752, 8947, 13010, 16949, 21012, 25207, 29270, 46570, 42443, 38312, GLES11.GL_SRC1_ALPHA, 62830, 58703, 54572, 50445, 13538, 9411, 5280, 1153, 29798, 25671, 21540, 17413, 42971, 47098, 34713, 38840, 59231, 63358, 50973, 55100, 9939, 14066, 1681, 5808, 26199, 30326, 17941, 22068, 55628, 51565, 63758, 59695, 39368, 35305, 47498, 43435, 22596, 18533, 30726, 26663, 6336, 2273, 14466, 10403, 52093, 56156, 60223, 64286, 35833, 39896, 43963, 48026, 19061, 23124, 27191, 31254, 2801, 6864, 10931, 14994, 64814, 60687, 56684, 52557, 48554, 44427, 40424, 36297, 31782, 27655, 23652, 19525, 15522, 11395, 7392, 3265, 61215, 65342, 53085, 57212, 44955, 49082, 36825, 40952, 28183, 32310, 20053, 24180, 11923, 16050, 3793, 7920};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13267e;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f13272j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13273k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f13263a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f13264b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13265c = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13268f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13269g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13270h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f13271i = new byte[1024];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f13274l = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f13275m = new a();

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f13276a = {46, 112, 16, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, DhcpPacket.DHCP_HOST_NAME, 13, 14, DhcpPacket.DHCP_DOMAIN_NAME, 7};

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (k.this.f13269g != 0) {
                d.i(this);
                return;
            }
            k.Q2(k.this);
            if (k.this.f13270h == 4) {
                k.this.f13270h = 0;
                k.this.U2();
                return;
            }
            d.m(this.f13276a);
            StringBuilder sb = new StringBuilder();
            sb.append("SEND TO CANBUS = ");
            byte[] bArr = this.f13276a;
            sb.append(o1.b0.d(bArr, 0, bArr.length));
            Log.d("CAN", sb.toString());
        }
    }

    public static /* synthetic */ int Q2(k kVar) {
        int i2 = kVar.f13270h;
        kVar.f13270h = i2 + 1;
        return i2;
    }

    public static int S2(byte[] bArr) {
        int i2 = 0;
        for (byte b2 : bArr) {
            i2 = (f13262n[(i2 >> 8) ^ (b2 & 255)] ^ (i2 << 8)) & 65535;
        }
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13269g == 0) {
            d.i(this.f13275m);
        }
        this.f13269g = -1;
        this.f13272j = null;
        b.f13172e = 0;
    }

    public final String T2(String str) {
        String[] strArrSplit = str.split("/");
        return strArrSplit.length > 0 ? strArrSplit[strArrSplit.length - 1] : ProxyProperties.LOCAL_EXCL_LIST;
    }

    public final void U2() {
        a.f.p().s("UI请求进入can升级模式");
        d.f();
    }

    public final void V2() {
        byte[] bArr = new byte[133];
        bArr[0] = 1;
        bArr[1] = 0;
        bArr[2] = -1;
        d.m(bArr);
    }

    public final void W2(String str, String str2) {
        byte[] bArr = new byte[133];
        byte[] bArr2 = new byte[128];
        bArr[0] = 1;
        bArr[1] = 0;
        bArr[2] = -1;
        System.arraycopy(str.getBytes(), 0, bArr, 3, str.getBytes().length);
        System.arraycopy(str2.getBytes(), 0, bArr, str.getBytes().length + 3 + 1, str2.getBytes().length);
        System.arraycopy(bArr, 3, bArr2, 0, 128);
        int iS2 = S2(bArr2);
        bArr[131] = (byte) ((iS2 >> 8) & 255);
        bArr[132] = (byte) (iS2 & 255);
        d.m(bArr);
        Log.d("CAN", "SEND TO CANBUS = " + o1.b0.d(bArr, 0, 133));
    }

    public final void X2(int i2, byte[] bArr) {
        byte[] bArr2 = new byte[1029];
        bArr2[0] = 2;
        bArr2[1] = (byte) i2;
        bArr2[2] = (byte) (~i2);
        System.arraycopy(bArr, 0, bArr2, 3, bArr.length);
        int iS2 = S2(bArr);
        bArr2[1027] = (byte) ((iS2 >> 8) & 255);
        bArr2[1028] = (byte) (iS2 & 255);
        byte[] bArr3 = new byte[256];
        byte[] bArr4 = new byte[5];
        for (int i3 = 0; i3 < 5; i3++) {
            Log.d("LG", "i =" + i3);
            if (i3 < 4) {
                System.arraycopy(bArr2, i3 * 256, bArr3, 0, 256);
                d.m(bArr3);
                a.i.a0(50L);
            } else {
                System.arraycopy(bArr2, i3 * 256, bArr4, 0, 5);
                d.m(bArr4);
            }
        }
        Log.d("CAN", "SEND TO Data = " + o1.b0.d(bArr2, 0, 1029));
    }

    /* JADX WARN: Code duplicated, block: B:47:0x009f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) throws Throwable {
        FileInputStream fileInputStream;
        Exception e2;
        if (i2 != 0) {
            return;
        }
        d.m(new byte[]{46, 112, 16, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, DhcpPacket.DHCP_HOST_NAME, 13, 14, DhcpPacket.DHCP_DOMAIN_NAME, 7});
        d.j(0, 0);
        a.f.p().s("位置 = " + strArr[0]);
        if (strArr.length <= 0) {
            return;
        }
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(strArr[0]);
            try {
                try {
                    int iAvailable = fileInputStream.available();
                    this.f13274l = T2(strArr[0]);
                    this.f13273k = iAvailable;
                    byte[] bArr = new byte[iAvailable];
                    this.f13272j = bArr;
                    int i3 = iAvailable % 1024;
                    this.f13267e = i3;
                    if (i3 == 0) {
                        this.f13266d = iAvailable / 1024;
                    } else {
                        this.f13266d = (iAvailable / 1024) + 1;
                    }
                    fileInputStream.read(bArr);
                    try {
                        fileInputStream.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    b.f13172e = 1;
                    a.i.a0(1000L);
                    U2();
                    this.f13270h = 0;
                    this.f13269g = 0;
                    d.b(this.f13275m);
                } catch (Exception e4) {
                    e2 = e4;
                    e2.printStackTrace();
                    d.j(2, 4);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e7) {
            fileInputStream = null;
            e2 = e7;
        } catch (Throwable th2) {
            th = th2;
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            throw th;
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13265c + bArr.length > 1024) {
            this.f13265c = 0;
        }
        System.arraycopy(bArr, 0, this.f13263a, 0, bArr.length);
        int length = bArr.length;
        this.f13265c = length;
        byte[] bArr2 = this.f13263a;
        byte b2 = bArr2[length - 1];
        if (b2 == 6) {
            int i3 = this.f13269g;
            if (i3 == 0) {
                this.f13269g = 1;
                return;
            }
            if (i3 > 0) {
                this.f13269g = i3 + 1;
                a.i.a0(50L);
                int i4 = this.f13269g;
                int i5 = i4 - 1;
                int i6 = this.f13266d;
                if (i4 <= i6) {
                    if (i4 < i6) {
                        System.arraycopy(this.f13272j, i5 * 1024, this.f13271i, 0, 1024);
                    } else if (i4 == i6) {
                        if (this.f13267e == 0) {
                            System.arraycopy(this.f13272j, i5 * 1024, this.f13271i, 0, 1024);
                        } else {
                            this.f13271i = new byte[1024];
                            for (int i7 = 0; i7 < 1024; i7++) {
                                this.f13271i[i7] = 26;
                            }
                            System.arraycopy(this.f13272j, i5 * 1024, this.f13271i, 0, this.f13267e);
                        }
                    }
                    X2(this.f13269g, this.f13271i);
                    d.j(2, 2);
                    d.j(1, 100);
                    d.j(0, ((i5 + 1) * 100) / this.f13266d);
                }
                if (this.f13269g == this.f13266d + 1) {
                    d.m(new byte[]{4});
                    return;
                }
                return;
            }
            return;
        }
        if (b2 == 67 && (i2 = this.f13269g) != 10000) {
            if (i2 == 1 || (length > 1 && bArr2[0] == 6 && i2 == 0)) {
                this.f13269g = 1;
                d.j(2, 1);
                int i8 = this.f13269g - 1;
                a.i.a0(500L);
                int i9 = i8 + 1;
                if (i9 * 1024 <= this.f13273k) {
                    System.arraycopy(this.f13272j, i8 * 1024, this.f13271i, 0, 1024);
                    X2(this.f13269g, this.f13271i);
                    d.j(2, 2);
                    d.j(1, 100);
                    d.j(0, (i9 * 100) / this.f13266d);
                    return;
                }
                return;
            }
            if (i2 != 0) {
                if (i2 > this.f13266d) {
                    V2();
                    d.j(2, 3);
                    b.f13172e = 0;
                    d.i(this.f13275m);
                    this.f13269g = 10000;
                    return;
                }
                return;
            }
            d.j(2, 1);
            int i10 = this.f13268f + 1;
            this.f13268f = i10;
            if (i10 % 3 == 0 && !TextUtils.isEmpty(this.f13274l)) {
                W2(this.f13274l, this.f13273k + ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }
}
