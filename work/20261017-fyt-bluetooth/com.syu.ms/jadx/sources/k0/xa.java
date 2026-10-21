package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.hardware.camera2.utils.CameraBinderDecorator;
import android.media.MediaPlayer;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import android.util.Log;
import android.widget.SpellChecker;
import app.App;
import java.io.UnsupportedEncodingException;
import plugins.ZLink;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class xa extends lt implements o1.q {
    public static int L;
    public static int[] M = {1, 1, 7, 3, 8, 2, 6, 4, 5, 1};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12047d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12048e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12049f;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public i f12062s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f12045b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12046c = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12050g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f12051h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 12}, new int[]{11, 2}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{34, 5}, new int[]{35, 74}, new int[]{36, 75}, new int[]{37, 54}, new int[]{38, 38}, new int[]{39, 6}, new int[]{197, 7}, new int[]{198, 8}, new int[]{215, 67}, new int[]{216, 68}, new int[]{219, 35}, new int[]{220, 34}, new int[]{221, 3}, new int[]{222, 4}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o1.g0 f12052i = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f12053j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final byte[] f12054k = new byte[1024];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12055l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f12056m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12057n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte f12058o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f12059p = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f12060q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f12061r = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f12063t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f12064u = new b();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f12065v = new c();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f12066w = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f12067x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f12068y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f12069z = 0;
    public int A = 0;
    public int B = 0;
    public int C = 0;
    public int D = 0;
    public int E = 0;
    public int F = 255;
    public final Runnable G = new d();
    public Runnable H = new e();
    public Runnable I = new f();
    public Runnable J = new g();
    public Runnable K = new h();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xa xaVar = xa.this;
            byte b2 = (byte) (xaVar.f12058o + 1);
            xaVar.f12058o = b2;
            if (b2 > 5) {
                l0.b0.o0(xaVar.f12059p);
                xa.this.f12058o = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(xa.this.f12065v);
            xa.this.f12063t = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xa xaVar = xa.this;
            int i2 = xaVar.f12063t - 1;
            xaVar.f12063t = i2;
            if (i2 <= 0) {
                l0.b0.p0(xaVar.f12065v);
                xa.this.f12063t = 5;
            }
            if (u0.b.f17306a0 == 1) {
                xaVar.t3(xaVar.f12052i.b(1, 0));
            }
            switch (nt.f8637c) {
                case 1:
                    z.k.s(227, 2, 36, 91, 2);
                    break;
                case 2:
                case 3:
                case 9:
                case 10:
                case 14:
                case 15:
                case 19:
                case 22:
                case 25:
                case 30:
                case 84:
                case 85:
                case 137:
                case 138:
                default:
                    z.k.s(227, 2, 36, 1, 2);
                    break;
                case 4:
                    z.k.s(227, 2, 36, 63, 2);
                    break;
                case 5:
                case 6:
                    z.k.s(227, 2, 36, 94, 2);
                    break;
                case 7:
                    z.k.s(227, 2, 36, 16, 2);
                    break;
                case 8:
                    z.k.s(227, 2, 36, 17, 2);
                    break;
                case 11:
                case 93:
                    z.k.s(227, 2, 36, 35, 2);
                    break;
                case 12:
                    z.k.s(227, 2, 36, 32, 2);
                    break;
                case 13:
                    z.k.s(227, 2, 36, 33, 2);
                    break;
                case 16:
                case 23:
                    z.k.s(227, 2, 36, 36, 2);
                    break;
                case 17:
                case 24:
                    z.k.s(227, 2, 36, 37, 2);
                    break;
                case 18:
                case 75:
                    z.k.s(227, 2, 36, 34, 2);
                    break;
                case 20:
                case 94:
                    z.k.s(227, 2, 36, 85, 2);
                    break;
                case 21:
                case 78:
                    z.k.s(227, 2, 36, 65, 2);
                    break;
                case 26:
                case 27:
                case 48:
                case 50:
                    z.k.s(227, 2, 36, 29, 2);
                    break;
                case 28:
                case 29:
                    z.k.s(227, 2, 36, 31, 2);
                    break;
                case 31:
                case 82:
                    z.k.s(227, 2, 36, 41, 2);
                    break;
                case 32:
                case 95:
                    z.k.s(227, 2, 36, 42, 2);
                    break;
                case 33:
                    z.k.s(227, 2, 36, 43, 2);
                    break;
                case 34:
                case 81:
                    z.k.s(227, 2, 36, 44, 2);
                    break;
                case 35:
                case 92:
                    z.k.s(227, 2, 36, 45, 2);
                    break;
                case 36:
                case 83:
                    z.k.s(227, 2, 36, 46, 2);
                    break;
                case 37:
                    z.k.s(227, 2, 36, 47, 2);
                    break;
                case 38:
                case 96:
                    z.k.s(227, 2, 36, 48, 2);
                    break;
                case 39:
                case 79:
                    z.k.s(227, 2, 36, 40, 2);
                    break;
                case 40:
                    z.k.s(227, 2, 36, 49, 2);
                    break;
                case 41:
                    z.k.s(227, 2, 36, 50, 2);
                    break;
                case 42:
                    z.k.s(227, 2, 36, 51, 2);
                    break;
                case 43:
                case 113:
                    z.k.s(227, 2, 36, 52, 2);
                    break;
                case 44:
                case 97:
                    z.k.s(227, 2, 36, 54, 2);
                    break;
                case 45:
                    z.k.s(227, 2, 36, 39, 2);
                    break;
                case 46:
                case 112:
                    z.k.s(227, 2, 36, 53, 2);
                    break;
                case 47:
                case 49:
                    z.k.s(227, 2, 36, 28, 2);
                    break;
                case 51:
                    z.k.s(227, 2, 36, 38, 2);
                    break;
                case 52:
                case 80:
                    z.k.s(227, 2, 36, 64, 2);
                    break;
                case 53:
                case 98:
                    z.k.s(227, 2, 36, 67, 2);
                    break;
                case 54:
                case 99:
                    z.k.s(227, 2, 36, 68, 2);
                    break;
                case 55:
                    z.k.s(227, 2, 36, 80, 2);
                    break;
                case 56:
                    z.k.s(227, 2, 36, 116, 2);
                    break;
                case 57:
                case 101:
                    z.k.s(227, 2, 36, 82, 2);
                    break;
                case 58:
                case 102:
                    z.k.s(227, 2, 36, 83, 2);
                    break;
                case 59:
                case 103:
                    z.k.s(227, 2, 36, 84, 2);
                    break;
                case 60:
                case 104:
                    z.k.s(227, 2, 36, 86, 2);
                    break;
                case 61:
                case 76:
                    z.k.s(227, 2, 36, 87, 2);
                    break;
                case 62:
                    z.k.s(227, 2, 36, 88, 2);
                    break;
                case 63:
                case 105:
                    z.k.s(227, 2, 36, 89, 2);
                    break;
                case 64:
                case 106:
                    z.k.s(227, 2, 36, 90, 2);
                    break;
                case 65:
                case 107:
                    z.k.s(227, 2, 36, 92, 2);
                    break;
                case 66:
                    z.k.s(227, 2, 36, 93, 2);
                    break;
                case 67:
                case 108:
                    z.k.s(227, 2, 36, 55, 2);
                    break;
                case 68:
                case 109:
                    z.k.s(227, 2, 36, 56, 2);
                    break;
                case 69:
                case 110:
                    z.k.s(227, 2, 36, 57, 2);
                    break;
                case 70:
                case 111:
                    z.k.s(227, 2, 36, 58, 2);
                    break;
                case 71:
                    z.k.s(227, 2, 36, 26, 2);
                    break;
                case 72:
                    z.k.s(227, 2, 36, 26, 2);
                    break;
                case 73:
                    z.k.s(227, 2, 36, 27, 2);
                    break;
                case 74:
                    z.k.s(227, 2, 36, 30, 2);
                    break;
                case 77:
                    z.k.s(227, 2, 36, 109, 2);
                    break;
                case 86:
                    z.k.s(227, 2, 36, 1, 2);
                    z.k.s(227, 2, 42, 1, 0);
                    break;
                case 87:
                    z.k.s(227, 2, 36, 1, 2);
                    z.k.s(227, 2, 42, 3, 0);
                    break;
                case 88:
                    z.k.s(227, 2, 36, 1, 2);
                    z.k.s(227, 2, 42, 2, 0);
                    break;
                case 89:
                    z.k.s(227, 2, 36, 1, 2);
                    z.k.s(227, 2, 42, 4, 0);
                    break;
                case 90:
                    z.k.s(227, 2, 36, 1, 2);
                    z.k.s(227, 2, 42, 5, 0);
                    break;
                case 91:
                    z.k.s(227, 2, 36, 1, 2);
                    z.k.s(227, 2, 42, 6, 0);
                    break;
                case 100:
                    z.k.s(227, 2, 36, 81, 2);
                    break;
                case 114:
                case 115:
                    z.k.s(227, 2, 36, 107, 2);
                    break;
                case 116:
                    z.k.s(227, 2, 36, 25, 2);
                    break;
                case 117:
                    z.k.s(227, 2, 36, 25, 2);
                    break;
                case 118:
                    z.k.s(227, 2, 36, 96, 2);
                    break;
                case 119:
                    z.k.s(227, 2, 36, 97, 2);
                    break;
                case 120:
                    z.k.s(227, 2, 36, 98, 2);
                    break;
                case 121:
                    z.k.s(227, 2, 36, 99, 2);
                    break;
                case 122:
                    z.k.s(227, 2, 36, 100, 2);
                    break;
                case 123:
                    z.k.s(227, 2, 36, 101, 2);
                    break;
                case 124:
                    z.k.s(227, 2, 36, 102, 2);
                    break;
                case 125:
                    z.k.s(227, 2, 36, 103, 2);
                    break;
                case 126:
                    z.k.s(227, 2, 36, 66, 2);
                    break;
                case 127:
                case 128:
                    z.k.s(227, 2, 36, 95, 2);
                    break;
                case 129:
                    z.k.s(227, 2, 36, 106, 2);
                    break;
                case 130:
                    z.k.s(227, 2, 36, 108, 2);
                    break;
                case 131:
                    z.k.s(227, 2, 36, 112, 2);
                    break;
                case 132:
                case 140:
                    z.k.s(227, 2, 36, 110, 2);
                    break;
                case 133:
                case 139:
                    z.k.s(227, 2, 36, 111, 2);
                    break;
                case 134:
                    z.k.s(227, 2, 36, 113, 2);
                    break;
                case 135:
                    z.k.s(227, 2, 36, 114, 2);
                    break;
                case 136:
                    z.k.s(227, 2, 36, 115, 2);
                    break;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xa xaVar = xa.this;
            xaVar.E = 0;
            xaVar.D = 0;
            xaVar.e3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        /* JADX WARN: Code duplicated, block: B:34:0x0038 A[EXC_TOP_SPLITTER, FALL_THROUGH, SYNTHETIC] */
        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            try {
                if (i2 != 116 && i2 != 117) {
                    try {
                        if (i2 != 127 && i2 != 128 && i2 != 139 && i2 != 140) {
                            switch (i2) {
                                default:
                                    switch (i2) {
                                        default:
                                            switch (i2) {
                                                default:
                                                    switch (i2) {
                                                        case 47:
                                                        case 48:
                                                        case 49:
                                                        case 50:
                                                            break;
                                                        default:
                                                            switch (i2) {
                                                                case 132:
                                                                case 133:
                                                                case 134:
                                                                case 135:
                                                                case 136:
                                                                    break;
                                                                default:
                                                                    try {
                                                                        xa.this.o3((byte) -28, u0.b.i3);
                                                                    } catch (UnsupportedEncodingException e2) {
                                                                        e2.printStackTrace();
                                                                        return;
                                                                    }
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                case 33:
                                                case 34:
                                                case 35:
                                                case 36:
                                                case 37:
                                                    xa.this.p3((byte) -28, u0.b.i3);
                                                    break;
                                            }
                                        case 26:
                                        case 27:
                                        case 28:
                                        case 29:
                                            xa.this.q3((byte) -28, u0.b.i3);
                                            break;
                                    }
                                case 20:
                                case 44:
                                case 56:
                                case 77:
                                case 81:
                                case 83:
                                case 92:
                                case 94:
                                case 97:
                                case 100:
                                case 130:
                                    xa.this.p3((byte) -28, u0.b.i3);
                                    break;
                            }
                        }
                        xa.this.p3((byte) -28, u0.b.i3);
                        return;
                    } catch (UnsupportedEncodingException e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
                xa.this.q3((byte) -28, u0.b.i3);
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        /* JADX WARN: Code duplicated, block: B:34:0x0038 A[EXC_TOP_SPLITTER, FALL_THROUGH, SYNTHETIC] */
        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            try {
                if (i2 != 116 && i2 != 117) {
                    try {
                        if (i2 != 127 && i2 != 128 && i2 != 139 && i2 != 140) {
                            switch (i2) {
                                default:
                                    switch (i2) {
                                        default:
                                            switch (i2) {
                                                default:
                                                    switch (i2) {
                                                        case 47:
                                                        case 48:
                                                        case 49:
                                                        case 50:
                                                            break;
                                                        default:
                                                            switch (i2) {
                                                                case 132:
                                                                case 133:
                                                                case 134:
                                                                case 135:
                                                                case 136:
                                                                    break;
                                                                default:
                                                                    try {
                                                                        xa.this.o3((byte) -30, u0.b.j3);
                                                                    } catch (UnsupportedEncodingException e2) {
                                                                        e2.printStackTrace();
                                                                        return;
                                                                    }
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                case 33:
                                                case 34:
                                                case 35:
                                                case 36:
                                                case 37:
                                                    xa.this.p3((byte) -30, u0.b.j3);
                                                    break;
                                            }
                                        case 26:
                                        case 27:
                                        case 28:
                                        case 29:
                                            xa.this.q3((byte) -30, u0.b.j3);
                                            break;
                                    }
                                case 20:
                                case 44:
                                case 56:
                                case 77:
                                case 81:
                                case 83:
                                case 92:
                                case 94:
                                case 97:
                                case 100:
                                case 130:
                                    xa.this.p3((byte) -30, u0.b.j3);
                                    break;
                            }
                        }
                        xa.this.p3((byte) -30, u0.b.j3);
                        return;
                    } catch (UnsupportedEncodingException e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
                xa.this.q3((byte) -30, u0.b.j3);
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        /* JADX WARN: Code duplicated, block: B:34:0x0038 A[EXC_TOP_SPLITTER, FALL_THROUGH, SYNTHETIC] */
        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            try {
                if (i2 != 116 && i2 != 117) {
                    try {
                        if (i2 != 127 && i2 != 128 && i2 != 139 && i2 != 140) {
                            switch (i2) {
                                default:
                                    switch (i2) {
                                        default:
                                            switch (i2) {
                                                default:
                                                    switch (i2) {
                                                        case 47:
                                                        case 48:
                                                        case 49:
                                                        case 50:
                                                            break;
                                                        default:
                                                            switch (i2) {
                                                                case 132:
                                                                case 133:
                                                                case 134:
                                                                case 135:
                                                                case 136:
                                                                    break;
                                                                default:
                                                                    try {
                                                                        xa.this.o3((byte) -29, u0.b.k3);
                                                                    } catch (UnsupportedEncodingException e2) {
                                                                        e2.printStackTrace();
                                                                        return;
                                                                    }
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                case 33:
                                                case 34:
                                                case 35:
                                                case 36:
                                                case 37:
                                                    xa.this.p3((byte) -29, u0.b.k3);
                                                    break;
                                            }
                                        case 26:
                                        case 27:
                                        case 28:
                                        case 29:
                                            xa.this.q3((byte) -29, u0.b.k3);
                                            break;
                                    }
                                case 20:
                                case 44:
                                case 56:
                                case 77:
                                case 81:
                                case 83:
                                case 92:
                                case 94:
                                case 97:
                                case 100:
                                case 130:
                                    xa.this.p3((byte) -29, u0.b.k3);
                                    break;
                            }
                        }
                        xa.this.p3((byte) -29, u0.b.k3);
                        return;
                    } catch (UnsupportedEncodingException e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
                xa.this.q3((byte) -29, u0.b.k3);
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            byte b2 = (byte) time.hour;
            byte b3 = (byte) time.minute;
            byte b4 = (byte) time.second;
            int i2 = nt.f8637c;
            if (i2 != 66 && i2 != 116 && i2 != 117) {
                switch (i2) {
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                        break;
                    default:
                        switch (i2) {
                            case 47:
                            case 48:
                            case 49:
                            case 50:
                                break;
                            default:
                                z.k.s(227, 3, -75, b2, b3, b4);
                                break;
                        }
                }
            }
            z.k.s(227, 10, -53, 0, b2, b3, b4 & 127, time.weekDay, zIs24HourFormat ? 1 : 0, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay, 0);
        }
    }

    public class i extends BroadcastReceiver {
        public i() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z2;
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (!"AUTONAVI_STANDARD_BROADCAST_SEND".equals(action) || extras == null) {
                return;
            }
            try {
                if (!xa.this.f12066w.equals(extras.getString("CUR_ROAD_NAME")) && extras.getString("CUR_ROAD_NAME") != null) {
                    Log.d("LG", "CUR_ROAD_NAME = " + xa.this.f12066w);
                    xa.this.f12066w = extras.getString("CUR_ROAD_NAME");
                    xa xaVar = xa.this;
                    xaVar.d3(149, xaVar.f12066w);
                }
                if (xa.this.f12068y != extras.getInt("SEG_REMAIN_DIS")) {
                    xa.this.f12068y = extras.getInt("SEG_REMAIN_DIS");
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (xa.this.f12067x != extras.getInt("ROUTE_REMAIN_DIS")) {
                    xa.this.f12067x = extras.getInt("ROUTE_REMAIN_DIS");
                    xa xaVar2 = xa.this;
                    if (xaVar2.f12067x == 0) {
                        xaVar2.E = 0;
                        xaVar2.D = 0;
                    } else {
                        xaVar2.E = 1;
                        xaVar2.D = 1;
                    }
                    xaVar2.B = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                    z2 = true;
                }
                if (xa.this.f12069z != extras.getInt("CAR_DIRECTION")) {
                    xa.this.f12069z = extras.getInt("CAR_DIRECTION");
                    z2 = true;
                }
                if (xa.this.A != extras.getInt("ROUTE_ALL_TIME")) {
                    xa.this.A = extras.getInt("ROUTE_ALL_TIME");
                    z2 = true;
                }
                if (xa.this.C != extras.getInt("ICON")) {
                    xa.this.C = extras.getInt("ICON");
                    z2 = true;
                }
                if (z2) {
                    xa.this.e3();
                    o1.j.e(o1.l.a(), xa.this.G);
                    o1.j.b(o1.l.a(), xa.this.G, 20000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ i(xa xaVar, a aVar) {
            this();
        }
    }

    public static void a3(int i2) {
        int i3;
        switch (i2) {
            case 32:
            case 33:
                if (u0.b.D != 1) {
                    o1.u.x0();
                }
                if (i2 != 32) {
                    if (i2 == 33 && (i3 = w0.d.f17796h) >= 65536 && i3 < 131072) {
                        w0.f.f(65536);
                        break;
                    }
                } else {
                    int i4 = w0.d.f17796h;
                    if (i4 >= 0 && i4 < 65536) {
                        w0.f.f(0);
                        break;
                    }
                }
                break;
            case 34:
                u0.d.H1();
                break;
            case 35:
                o1.u.q();
                break;
            case 36:
                o1.u.j();
                break;
        }
    }

    public static void u3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = bArr[0];
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 & 255);
        z.k.q(bArr);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        b3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    b3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        b3(2);
                    }
                } else if (nt.f8645g[11] == 0) {
                    b3(2);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        b3(4);
                    }
                } else if (nt.f8645g[13] == 0) {
                    b3(4);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        b3(5);
                    }
                } else if (nt.f8645g[65] == 0) {
                    b3(5);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        b3(6);
                    }
                } else if (nt.f8645g[16] == 0) {
                    b3(6);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        b3(7);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    b3(7);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    b3(12);
                } else {
                    b3(11);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    b3(14);
                } else {
                    b3(13);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    b3(16);
                } else {
                    b3(15);
                }
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:26:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:67:0x0140  */
    @Override // k0.lt
    public void S2() {
        this.f12052i.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8313h = 0;
        mtVar.f8320o = 1;
        u0.c.f17386m.a(this.f12064u, 1);
        qt.z(this.K);
        this.f12062s = new i(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
        App.c().registerReceiver(this.f12062s, intentFilter);
        e3();
        int i2 = nt.f8637c;
        if (i2 == 4 || i2 == 7 || i2 == 8 || i2 == 9 || i2 == 12 || i2 == 13) {
            w0.e.f17815a.a(l0.h0.f13061g, 1);
            w0.e.f17819e.a(l0.h0.f13061g, 1);
            u0.c.f17374a.a(l0.h0.f13061g, 1);
            u0.c.f17392s.a(l0.h0.f13061g, 1);
            u0.c.f17393t.a(l0.h0.f13061g, 1);
        } else {
            w0.e.f17815a.a(l0.h0.f13060f, 1);
            w0.e.f17819e.a(l0.h0.f13060f, 1);
            u0.c.f17374a.a(l0.h0.f13060f, 1);
            u0.c.f17392s.a(l0.h0.f13060f, 1);
            u0.c.f17393t.a(l0.h0.f13060f, 1);
        }
        int i3 = nt.f8637c;
        if (i3 != 12 && i3 != 13) {
            if (i3 != 20 && i3 != 54 && i3 != 67 && i3 != 113) {
                switch (i3) {
                    case 75:
                    case 76:
                    case 77:
                    case 78:
                    case 79:
                    case 80:
                    case 81:
                    case 82:
                    case 83:
                        this.f7886a.f8313h = 2;
                        break;
                    default:
                        this.f7886a.f8322q = 0;
                        break;
                }
            } else {
                this.f7886a.f8313h = 2;
            }
        } else {
            this.f7886a.f8322q = 1;
        }
        u0.c.f17388o.a(this.H, 1);
        u0.c.f17389p.a(this.I, 1);
        u0.c.f17390q.a(this.J, 1);
        int i4 = nt.f8637c;
        if (i4 != 23 && i4 != 24 && i4 != 31 && i4 != 39 && i4 != 52 && i4 != 56 && i4 != 75 && i4 != 92 && i4 != 94 && i4 != 100 && i4 != 42 && i4 != 43 && i4 != 46 && i4 != 47 && i4 != 139 && i4 != 140) {
            switch (i4) {
                case 4:
                case 7:
                case 8:
                case 9:
                    this.f7886a.f8314i = 1;
                    break;
                case 5:
                case 6:
                    mt mtVar2 = this.f7886a;
                    mtVar2.f8307b = 0;
                    mtVar2.f8308c = 0;
                    mtVar2.f8309d = 0;
                    break;
                default:
                    switch (i4) {
                        default:
                            switch (i4) {
                                default:
                                    switch (i4) {
                                        default:
                                            switch (i4) {
                                                case 112:
                                                case 113:
                                                case 114:
                                                case 115:
                                                case 116:
                                                case 117:
                                                case 118:
                                                case 119:
                                                case 120:
                                                case 121:
                                                case 122:
                                                case 123:
                                                case 124:
                                                case 125:
                                                case 126:
                                                case 127:
                                                case 128:
                                                case 129:
                                                case 130:
                                                case 131:
                                                case 132:
                                                case 133:
                                                case 134:
                                                case 135:
                                                    break;
                                                default:
                                                    this.f7886a.f8314i = 0;
                                                    break;
                                            }
                                        case 78:
                                        case 79:
                                        case 80:
                                        case 81:
                                        case 82:
                                        case 83:
                                            this.f7886a.f8314i = 1;
                                            break;
                                    }
                                case 34:
                                case 35:
                                case 36:
                                    this.f7886a.f8314i = 1;
                                    break;
                            }
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                            this.f7886a.f8314i = 1;
                            break;
                    }
                    break;
            }
        } else {
            this.f7886a.f8314i = 1;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:70:0x056a  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == 22) {
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
            qt.y0(100, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
            qt.y0(101, ((bArr[i2 + 7] & 255) << 8) | (bArr[i2 + 8] & 255));
            qt.y0(102, ((bArr[i2 + 9] & 255) << 16) | ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
            qt.y0(103, ((bArr[i2 + 12] & 255) << 8) | (bArr[i2 + 13] & 255));
            byte b3 = bArr[i2 + 14];
            qt.y0(104, b3 & 3 & 255);
            qt.y0(105, (b3 >> 2) & 3 & 255);
            qt.y0(106, (b3 >> 4) & 3 & 255);
            qt.y0(107, (b3 >> 6) & 1 & 255);
            qt.y0(108, (b3 >> 7) & 1 & 255);
            int i12 = bArr[i2 + 15] & 255;
            qt.y0(109, this.f12045b[i12 < 0 ? 0 : i12 > 10 ? 10 : i12]);
            qt.y0(164, bArr[i2 + 17] & 255);
            qt.y0(165, bArr[i2 + 18] & 255);
        }
        if (b2 == 23) {
            qt.y0(110, ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
            qt.y0(111, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
            qt.y0(112, ((bArr[i2 + 7] & 255) << 16) | ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
            qt.y0(113, ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
            qt.y0(114, ((bArr[i2 + 12] & 255) << 16) | ((bArr[i2 + 13] & 255) << 8) | (bArr[i2 + 14] & 255));
            qt.y0(115, (bArr[i2 + 16] & 255) | ((bArr[i2 + 15] & 255) << 8));
            return;
        }
        if (b2 == 49) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            byte b6 = bArr[i2 + 4];
            byte b7 = bArr[i2 + 5];
            qt.y0(37, (b4 >> 7) & 1);
            qt.y0(10, (b4 >> 6) & 1);
            qt.y0(53, (b4 >> 5) & 1);
            qt.y0(13, (b4 >> 3) & 1);
            qt.y0(62, (b4 >> 2) & 1);
            qt.y0(11, (b4 >> 0) & 1);
            qt.y0(75, (b5 >> 6) & 1);
            qt.y0(80, (b5 >> 5) & 1);
            int[] iArr3 = new int[1];
            iArr3[0] = ((b5 >> 4) & 1) == 0 ? 0 : 1;
            qt.y0(12, iArr3);
            qt.y0(32, (b5 >> 2) & 3);
            qt.y0(31, b5 & 3);
            qt.y0(43, (b6 >> 7) & 1);
            qt.y0(67, (b6 >> 6) & 1);
            qt.y0(16, (b6 >> 5) & 1);
            qt.y0(65, (b6 >> 4) & 1);
            qt.y0(30, (b6 >> 2) & 3);
            qt.y0(29, b6 & 3);
            int i13 = i2 + 6;
            byte b8 = (byte) (bArr[i13] & DhcpPacket.DHCP_DOMAIN_NAME);
            if (b8 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (b8 != 4) {
                if (b8 == 5) {
                    i4 = 0;
                    i5 = 1;
                } else if (b8 == 6) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (b8 != 7) {
                    i4 = b8 != 10 ? 0 : 1;
                    i5 = i4;
                } else {
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                }
                i6 = i5;
            } else {
                i5 = 0;
                i4 = 1;
                i6 = 1;
            }
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            qt.y0(77, b8);
            byte b9 = (byte) ((bArr[i13] >> 4) & 15);
            if (b9 == 3) {
                i7 = 0;
                i8 = 0;
                i9 = 1;
            } else if (b9 != 4) {
                if (b9 == 5) {
                    i7 = 0;
                    i8 = 1;
                } else if (b9 == 6) {
                    i7 = 0;
                    i9 = 0;
                    i8 = 1;
                } else if (b9 != 7) {
                    i7 = b9 != 10 ? 0 : 1;
                    i8 = i7;
                } else {
                    i9 = 0;
                    i7 = 1;
                    i8 = 1;
                }
                i9 = i8;
            } else {
                i8 = 0;
                i7 = 1;
                i9 = 1;
            }
            qt.y0(22, i7);
            qt.y0(23, i8);
            qt.y0(24, i9);
            qt.y0(87, b9);
            int i14 = bArr[i2 + 7] & 255;
            qt.y0(21, i14 > 7 ? 7 : i14);
            int i15 = this.f12060q;
            if (i15 != b7) {
                if (i15 == 0 && b7 == 1) {
                    int i16 = nt.f8637c;
                    if (i16 == 46 || i16 == 112) {
                        if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        } else {
                            s3();
                        }
                    } else if (qt.i0().equals("com.syu.carinfo.honda.ActivityAirControl")) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                    } else {
                        r3();
                    }
                }
                this.f12060q = b7;
            }
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i17 = i2 + 9;
                byte b10 = bArr[i17];
                if (b10 == -2) {
                    qt.y0(27, -2);
                } else if (b10 != -1) {
                    qt.y0(27, (bArr[i17] & 255) * 5);
                } else {
                    qt.y0(27, -3);
                }
                int i18 = i2 + 8;
                byte b11 = bArr[i18];
                if (b11 == -2) {
                    qt.y0(28, -2);
                } else if (b11 != -1) {
                    qt.y0(28, (bArr[i18] & 255) * 5);
                } else {
                    qt.y0(28, -3);
                }
            } else {
                int i19 = i2 + 8;
                byte b12 = bArr[i19];
                if (b12 == -2) {
                    qt.y0(27, -2);
                } else if (b12 != -1) {
                    qt.y0(27, (bArr[i19] & 255) * 5);
                } else {
                    qt.y0(27, -3);
                }
                int i20 = i2 + 9;
                byte b13 = bArr[i20];
                if (b13 == -2) {
                    qt.y0(28, -2);
                } else if (b13 != -1) {
                    qt.y0(28, (bArr[i20] & 255) * 5);
                } else {
                    qt.y0(28, -3);
                }
            }
            qt.y0(44, bArr[i2 + 10] & 255);
            byte b14 = bArr[i2 + 11];
            if (b14 == 1) {
                i10 = 0;
                i11 = 1;
            } else if (b14 != 2) {
                i10 = b14 != 3 ? 0 : 1;
                i11 = i10;
            } else {
                i11 = 0;
                i10 = 1;
            }
            qt.y0(48, i10);
            qt.y0(46, i10);
            qt.y0(47, i11);
            int i21 = i2 + 12;
            byte b15 = bArr[i21];
            if (b15 == -2) {
                qt.y0(40, -2);
                return;
            } else if (b15 != -1) {
                qt.y0(40, (bArr[i21] & 255) * 5);
                return;
            } else {
                qt.y0(40, -3);
                return;
            }
        }
        if (b2 == 50) {
            int i22 = i2 + 4;
            int i23 = i2 + 5;
            qt.y0(145, ((bArr[i22] << 8) & 65280) | (bArr[i23] & 255));
            qt.y0(1032, ((bArr[i22] << 8) & 65280) | (bArr[i23] & 255));
            qt.y0(144, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
            return;
        }
        switch (b2) {
            case -92:
                qt.y0(175, bArr[i2 + 2] & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(179, (bArr[i2 + 3] >> 6) & 1);
                qt.y0(177, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(178, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(176, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                qt.y0(180, bArr[i2 + 11] & 255);
                qt.y0(181, bArr[i2 + 12] & 255);
                break;
            case -90:
                qt.y0(200, bArr[i2 + 2] & 255);
                qt.y0(201, bArr[i2 + 3] & 255);
                qt.y0(202, bArr[i2 + 4] & 255);
                qt.y0(203, bArr[i2 + 5] & 255);
                qt.y0(204, bArr[i2 + 6] & 255);
                qt.y0(205, bArr[i2 + 7] & 255);
                int i24 = i2 + 8;
                qt.y0(206, (bArr[i24] >> 4) & 15);
                qt.y0(152, (bArr[i24] >> 1) & 3);
                qt.y0(153, bArr[i24] & 1);
                break;
            case CameraBinderDecorator.DEAD_OBJECT /* -32 */:
                a3(bArr[i2 + 2] & 255);
                break;
            case PackageManager.INSTALL_FAILED_UID_CHANGED /* -24 */:
                int i25 = i2 + 2;
                qt.y0(119, (bArr[i25] >> 5) & 1);
                qt.y0(209, (bArr[i25] >> 4) & 1);
                qt.y0(210, (bArr[i25] >> 2) & 3);
                qt.y0(211, (bArr[i25] >> 0) & 3);
                int i26 = i2 + 5;
                qt.y0(154, bArr[i26] & 1);
                qt.y0(155, (bArr[i26] >> 2) & 3);
                qt.y0(156, bArr[i2 + 7] & 255);
                int i27 = i2 + 8;
                qt.y0(173, (bArr[i27] >> 5) & 1);
                qt.y0(174, (bArr[i27] >> 4) & 1);
                qt.y0(166, (bArr[i27] >> 3) & 1);
                qt.y0(167, (bArr[i27] >> 2) & 1);
                qt.y0(168, (bArr[i27] >> 1) & 1);
                qt.y0(169, (bArr[i27] >> 0) & 1);
                qt.y0(Process.MEDIA_UID, (bArr[i2 + 3] & 255) - 1);
                int i28 = i2 + 6;
                if (this.f12061r != bArr[i28]) {
                    byte b16 = bArr[i28];
                    this.f12061r = b16;
                    if (b16 == 1) {
                        qt.a(1);
                    } else {
                        qt.a(0);
                    }
                }
                int i29 = bArr[i2 + 4] & 1;
                int i30 = h0.c.E;
                if (i30 != 4 && i30 != 5 && u0.b.f17347o == 0) {
                    if (i29 == 0) {
                        if (o1.u.T(a.b.O)) {
                            qt.f();
                        }
                    } else if (!o1.u.T(a.b.O)) {
                        qt.t();
                    }
                    break;
                }
                break;
            case -16:
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                break;
            case 26:
                int i31 = i2 + 4;
                l0.c0.N1((bArr[i31] >> 0) & 1, (bArr[i31] >> 1) & 1, (bArr[i31] >> 2) & 1);
                byte b17 = bArr[i31];
                byte b18 = bArr[i31];
                o1.x.C(nt.f8643f, 1049, new int[]{11, (bArr[i31] >> 2) & 1}, null, null);
                break;
            case 31:
                qt.y0(207, bArr[i2 + 2] & 127);
                qt.y0(208, bArr[i2 + 3] & 255);
                break;
            case 33:
                if (nt.a()) {
                    this.f12049f = (bArr[i2 + 2] & 255) | 128;
                    byte b19 = bArr[i2 + 3];
                    int i32 = 0;
                    while (true) {
                        iArr = this.f12051h;
                        if (i32 < iArr.length) {
                            int i33 = this.f12049f;
                            if (i33 != iArr[i32][0]) {
                                i32++;
                            } else if (i33 != 0) {
                                this.f12050g = i32;
                            }
                        }
                    }
                    if ((b19 & 255) == 0) {
                        int i34 = this.f12050g;
                        if (i34 < iArr.length && i34 != 255) {
                            l0.b0.l0(iArr[i34][1], 1);
                        }
                        this.f12050g = 255;
                    } else if (i32 < iArr.length) {
                        l0.b0.l0(iArr[i32][1], 0);
                    }
                }
                break;
            case 65:
                if (nt.a()) {
                    u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                    int i35 = i2 + 6;
                    int i36 = bArr[i35] & 255;
                    int i37 = i2 + 7;
                    int i38 = bArr[i37] & 255;
                    int i39 = i2 + 8;
                    int i40 = bArr[i39] & 255;
                    int i41 = i2 + 9;
                    int i42 = bArr[i41] & 255;
                    if (i36 == 0 && i38 == 0 && i40 == 0 && i42 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i36 || l0.c0.f13014h != i38 || l0.c0.f13015i != i40 || l0.c0.f13016j != i42) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i36;
                    l0.c0.f13014h = i38;
                    l0.c0.f13015i = i40;
                    l0.c0.f13016j = i42;
                    u0.d.D2(l0.c0.E0(bArr[i35] & 255));
                    u0.d.E2(l0.c0.E0(bArr[i37] & 255));
                    u0.d.F2(l0.c0.E0(bArr[i39] & 255));
                    u0.d.G2(l0.c0.E0(bArr[i41] & 255));
                }
                break;
            case 73:
                int i43 = i2 + 2;
                qt.y0(354, (bArr[i43] >> 4) & 15);
                qt.y0(355, (bArr[i43] >> 0) & 15);
                int i44 = i2 + 3;
                qt.y0(356, (bArr[i44] >> 6) & 3);
                qt.y0(357, (bArr[i44] >> 4) & 3);
                qt.y0(400, bArr[i2 + 4] & 255);
                int i45 = i2 + 5;
                qt.y0(401, (bArr[i45] >> 6) & 3);
                qt.y0(402, (bArr[i45] >> 5) & 1);
                break;
            case 80:
                int i46 = i2 + 2;
                qt.y0(346, (bArr[i46] >> 2) & 1);
                qt.y0(340, (bArr[i46] >> 0) & 1);
                int i47 = i2 + 3;
                qt.y0(341, (bArr[i47] >> 3) & 31);
                qt.y0(342, (bArr[i47] >> 0) & 7);
                int i48 = i2 + 4;
                qt.y0(343, (bArr[i48] >> 3) & 31);
                qt.y0(344, (bArr[i48] >> 0) & 7);
                qt.y0(345, bArr[i2 + 5] & 255);
                int i49 = i2 + 6;
                qt.y0(353, (bArr[i49] >> 2) & 1);
                qt.y0(347, (bArr[i49] >> 0) & 1);
                int i50 = i2 + 7;
                qt.y0(348, (bArr[i50] >> 3) & 31);
                qt.y0(349, (bArr[i50] >> 0) & 7);
                int i51 = i2 + 8;
                qt.y0(SpellChecker.WORD_ITERATOR_INTERVAL, (bArr[i51] >> 3) & 31);
                qt.y0(351, (bArr[i51] >> 0) & 7);
                qt.y0(352, bArr[i2 + 9] & 255);
                qt.y0(358, (bArr[i2 + 10] >> 0) & 1);
                int i52 = i2 + 11;
                qt.y0(359, (bArr[i52] >> 3) & 31);
                qt.y0(MediaProperties.HEIGHT_360, (bArr[i52] >> 0) & 7);
                int i53 = i2 + 12;
                qt.y0(361, (bArr[i53] >> 3) & 31);
                qt.y0(362, (bArr[i53] >> 0) & 7);
                qt.y0(363, bArr[i2 + 13] & 255);
                qt.y0(364, (bArr[i2 + 14] >> 0) & 1);
                int i54 = i2 + 15;
                qt.y0(365, (bArr[i54] >> 3) & 31);
                qt.y0(366, (bArr[i54] >> 0) & 7);
                int i55 = i2 + 16;
                qt.y0(367, (bArr[i55] >> 3) & 31);
                qt.y0(368, (bArr[i55] >> 0) & 7);
                qt.y0(369, bArr[i2 + 17] & 255);
                qt.y0(370, (bArr[i2 + 18] >> 0) & 1);
                int i56 = i2 + 19;
                qt.y0(371, (bArr[i56] >> 3) & 31);
                qt.y0(372, (bArr[i56] >> 0) & 7);
                int i57 = i2 + 20;
                qt.y0(373, (bArr[i57] >> 3) & 31);
                qt.y0(374, (bArr[i57] >> 0) & 7);
                qt.y0(375, bArr[i2 + 21] & 255);
                qt.y0(376, (bArr[i2 + 22] >> 0) & 1);
                int i58 = i2 + 23;
                qt.y0(377, (bArr[i58] >> 3) & 31);
                qt.y0(378, (bArr[i58] >> 0) & 7);
                int i59 = i2 + 24;
                qt.y0(379, (bArr[i59] >> 3) & 31);
                qt.y0(380, (bArr[i59] >> 0) & 7);
                qt.y0(381, bArr[i2 + 25] & 255);
                qt.y0(382, (bArr[i2 + 26] >> 0) & 1);
                int i60 = i2 + 27;
                qt.y0(383, (bArr[i60] >> 3) & 31);
                qt.y0(384, (bArr[i60] >> 0) & 7);
                int i61 = i2 + 28;
                qt.y0(385, (bArr[i61] >> 3) & 31);
                qt.y0(386, (bArr[i61] >> 0) & 7);
                qt.y0(387, bArr[i2 + 29] & 255);
                qt.y0(388, (bArr[i2 + 30] >> 0) & 1);
                int i62 = i2 + 31;
                qt.y0(389, (bArr[i62] >> 3) & 31);
                qt.y0(390, (bArr[i62] >> 0) & 7);
                int i63 = i2 + 32;
                qt.y0(391, (bArr[i63] >> 3) & 31);
                qt.y0(392, (bArr[i63] >> 0) & 7);
                qt.y0(393, bArr[i2 + 33] & 255);
                qt.y0(394, (bArr[i2 + 34] >> 0) & 1);
                int i64 = i2 + 35;
                qt.y0(395, (bArr[i64] >> 3) & 31);
                qt.y0(396, (bArr[i64] >> 0) & 7);
                int i65 = i2 + 36;
                qt.y0(397, (bArr[i65] >> 3) & 31);
                qt.y0(398, (bArr[i65] >> 0) & 7);
                qt.y0(399, bArr[i2 + 37] & 255);
                break;
            case 94:
                qt.y0(i.a.Theme_preferenceHeaderPanelStyle, bArr[i2 + 2] & 255);
                qt.y0(248, bArr[i2 + 3] & 255);
                qt.y0(249, bArr[i2 + 4] & 255);
                qt.y0(250, bArr[i2 + 5] & 255);
                qt.y0(251, bArr[i2 + 6] & 255);
                break;
            case 97:
                int i66 = i2 + 2;
                qt.y0(231, (bArr[i66] >> 4) & 15);
                qt.y0(232, (bArr[i66] >> 0) & 15);
                int i67 = i2 + 3;
                qt.y0(233, (bArr[i67] >> 4) & 15);
                qt.y0(234, (bArr[i67] >> 2) & 1);
                qt.y0(235, (bArr[i67] >> 1) & 1);
                qt.y0(236, (bArr[i67] >> 0) & 1);
                int i68 = i2 + 4;
                qt.y0(237, (bArr[i68] >> 7) & 1);
                qt.y0(238, (bArr[i68] >> 6) & 1);
                qt.y0(239, (bArr[i68] >> 5) & 1);
                qt.y0(240, (bArr[i68] >> 4) & 1);
                qt.y0(i.a.Theme_actionModeShareDrawable, (bArr[i68] >> 3) & 1);
                qt.y0(i.a.Theme_actionModeFindDrawable, (bArr[i68] >> 2) & 1);
                qt.y0(i.a.Theme_actionModeWebSearchDrawable, (bArr[i68] >> 1) & 1);
                qt.y0(i.a.Theme_actionModePopupWindowStyle, (bArr[i68] >> 0) & 1);
                qt.y0(i.a.Theme_preferenceFragmentStyle, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(i.a.Theme_preferencePanelStyle, (bArr[i2 + 7] >> 6) & 3);
                break;
            case 117:
                int i69 = i2 + 3;
                qt.y0(150, (bArr[i69] >> 0) & 1);
                qt.y0(151, (bArr[i69] >> 1) & 1);
                qt.y0(198, (bArr[i69] >> 3) & 1);
                qt.y0(199, (bArr[i69] >> 2) & 1);
                break;
            default:
                switch (b2) {
                    case 17:
                        int i70 = i2 + 4;
                        byte b20 = bArr[i70];
                        int i71 = i2 + 5;
                        byte b21 = bArr[i71];
                        if (b20 == 12) {
                            if (b21 == 1) {
                                byte b22 = this.f12058o;
                                if (b22 == 0) {
                                    this.f12058o = (byte) (b22 + 1);
                                    l0.b0.l0(15, 0);
                                    l0.b0.l0(15, 1);
                                    l0.b0.a(this.f12059p);
                                }
                            } else if (b21 == 0) {
                                l0.b0.o0(this.f12059p);
                                this.f12058o = (byte) 0;
                            }
                        }
                        if (nt.a()) {
                            byte b23 = bArr[i70];
                            byte b24 = bArr[i71];
                            this.f12048e = b23 & 255;
                            int i72 = 0;
                            while (true) {
                                iArr2 = this.f12051h;
                                if (i72 < iArr2.length) {
                                    int i73 = this.f12048e;
                                    if (i73 != iArr2[i72][0]) {
                                        i72++;
                                    } else if (i73 != 0) {
                                        this.f12047d = i72;
                                    }
                                }
                            }
                            int i74 = this.f12048e;
                            if (i74 != 6) {
                                if (i74 != 10) {
                                    if ((b24 & 255) == 0) {
                                        int i75 = this.f12047d;
                                        if (i75 < iArr2.length && i75 != 255) {
                                            l0.b0.l0(iArr2[i75][1], 1);
                                        }
                                        this.f12047d = 255;
                                    } else if (i72 < iArr2.length) {
                                        l0.b0.l0(iArr2[i72][1], 0);
                                    }
                                } else if ((b24 & 255) == 1) {
                                    int i76 = nt.f8637c;
                                    if (i76 == 39) {
                                        l0.b0.l0(12, 0);
                                        l0.b0.l0(12, 1);
                                    } else if (i76 == 61) {
                                        l0.b0.l0(63, 0);
                                        l0.b0.l0(63, 1);
                                    } else if (i76 == 76 || i76 == 79) {
                                        l0.b0.l0(12, 0);
                                        l0.b0.l0(12, 1);
                                    } else {
                                        l0.b0.l0(5, 0);
                                        l0.b0.l0(5, 1);
                                    }
                                }
                            } else if ((b24 & 255) == 1) {
                                if (ZLink.Y().d0() || o1.s0.m("sys.carlink.type", 0) > 0) {
                                    c.e.d().c(6);
                                } else {
                                    int i77 = h0.c.E;
                                    if (i77 == 3 || i77 == 4 || i77 == 5) {
                                        l0.b0.l0(26, 0);
                                        l0.b0.l0(26, 1);
                                    } else {
                                        l0.b0.l0(6, 0);
                                        l0.b0.l0(6, 1);
                                    }
                                }
                            }
                            qt.l(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 5200);
                        }
                        break;
                    case 18:
                        byte b25 = bArr[i2 + 4];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b25 >> 6) & 1);
                            qt.y0(2, (b25 >> 7) & 1);
                        } else {
                            qt.y0(1, (b25 >> 7) & 1);
                            qt.y0(2, (b25 >> 6) & 1);
                        }
                        qt.y0(3, (b25 >> 5) & 1);
                        qt.y0(4, (b25 >> 4) & 1);
                        qt.y0(5, (b25 >> 3) & 1);
                        qt.y0(0, (b25 >> 2) & 1);
                        break;
                    case 19:
                        qt.y0(214, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                        qt.y0(215, (bArr[i2 + 11] & 255) | ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 10] << 8) & 65280));
                        break;
                    case 20:
                        qt.y0(216, ((bArr[i2 + 2] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                        qt.y0(217, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                        qt.y0(218, ((bArr[i2 + 7] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                        qt.y0(219, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                        qt.y0(220, ((bArr[i2 + 12] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
                        qt.y0(221, (bArr[i2 + 16] & 255) | ((bArr[i2 + 15] << 8) & 65280));
                        break;
                    default:
                        switch (b2) {
                            case 100:
                                int i78 = i2 + 2;
                                qt.y0(188, (bArr[i78] >> 6) & 1);
                                qt.y0(170, (bArr[i78] >> 5) & 1);
                                qt.y0(171, (bArr[i78] >> 4) & 1);
                                qt.y0(172, (bArr[i78] >> 0) & 15);
                                int i79 = i2 + 3;
                                qt.y0(189, (bArr[i79] >> 2) & 1);
                                qt.y0(190, (bArr[i79] >> 1) & 1);
                                qt.y0(191, (bArr[i79] >> 0) & 1);
                                int i80 = i2 + 4;
                                qt.y0(159, (bArr[i80] >> 1) & 1);
                                qt.y0(160, (bArr[i80] >> 0) & 1);
                                int i81 = i2 + 5;
                                qt.y0(192, (bArr[i81] >> 7) & 1);
                                qt.y0(193, (bArr[i81] >> 6) & 1);
                                qt.y0(194, (bArr[i81] >> 4) & 3);
                                qt.y0(195, (bArr[i81] >> 2) & 3);
                                int i82 = i2 + 6;
                                qt.y0(196, (bArr[i82] >> 4) & 15);
                                qt.y0(197, (bArr[i82] >> 3) & 1);
                                qt.y0(213, (bArr[i82] >> 1) & 3);
                                int i83 = i2 + 7;
                                qt.y0(222, (bArr[i83] >> 7) & 1);
                                qt.y0(223, (bArr[i83] >> 6) & 1);
                                qt.y0(224, (bArr[i83] >> 3) & 3);
                                qt.y0(225, (bArr[i83] >> 2) & 1);
                                qt.y0(226, (bArr[i83] >> 1) & 1);
                                qt.y0(227, (bArr[i83] >> 0) & 1);
                                break;
                            case 101:
                                int i84 = i2 + 2;
                                qt.y0(228, (bArr[i84] >> 4) & 1);
                                qt.y0(229, (bArr[i84] >> 3) & 1);
                                qt.y0(230, (bArr[i84] >> 2) & 1);
                                qt.y0(184, (bArr[i84] >> 1) & 1);
                                qt.y0(185, (bArr[i84] >> 0) & 1);
                                int i85 = i2 + 3;
                                qt.y0(147, (bArr[i85] >> 6) & 3);
                                qt.y0(148, (bArr[i85] >> 4) & 3);
                                qt.y0(129, (bArr[i85] >> 3) & 1);
                                qt.y0(130, (bArr[i85] >> 1) & 3);
                                qt.y0(131, (bArr[i85] >> 0) & 1);
                                break;
                            case 102:
                                int i86 = i2 + 3;
                                qt.y0(183, (bArr[i86] >> 4) & 1);
                                qt.y0(125, (bArr[i86] >> 3) & 1);
                                qt.y0(126, (bArr[i86] >> 2) & 1);
                                qt.y0(127, (bArr[i86] >> 1) & 1);
                                qt.y0(128, (bArr[i86] >> 0) & 1);
                                break;
                            case 103:
                                int i87 = i2 + 2;
                                qt.y0(120, (bArr[i87] >> 3) & 1);
                                qt.y0(121, bArr[i87] & 7);
                                int i88 = i2 + 3;
                                qt.y0(182, (bArr[i88] >> 7) & 1);
                                qt.y0(122, (bArr[i88] >> 4) & 7);
                                qt.y0(123, (bArr[i88] >> 2) & 3);
                                qt.y0(124, bArr[i88] & 3);
                                break;
                            case 104:
                                int i89 = i2 + 3;
                                qt.y0(158, (bArr[i89] >> 6) & 3);
                                qt.y0(132, (bArr[i89] >> 4) & 3);
                                qt.y0(133, (bArr[i89] >> 3) & 1);
                                qt.y0(134, (bArr[i89] >> 2) & 1);
                                qt.y0(135, (bArr[i89] >> 0) & 3);
                                int i90 = i2 + 2;
                                qt.y0(186, (bArr[i90] >> 5) & 1);
                                qt.y0(187, (bArr[i90] >> 4) & 1);
                                qt.y0(162, (bArr[i90] >> 1) & 7);
                                qt.y0(157, (bArr[i90] >> 0) & 1);
                                break;
                            case 105:
                                int i91 = i2 + 2;
                                qt.y0(161, (bArr[i91] >> 7) & 1);
                                qt.y0(149, (bArr[i91] >> 6) & 1);
                                qt.y0(136, (bArr[i91] >> 5) & 1);
                                qt.y0(137, (bArr[i91] >> 4) & 1);
                                qt.y0(138, (bArr[i91] >> 3) & 1);
                                qt.y0(139, (bArr[i91] >> 2) & 1);
                                qt.y0(140, (bArr[i91] >> 0) & 3);
                                int i92 = i2 + 3;
                                qt.y0(163, (bArr[i92] >> 7) & 1);
                                qt.y0(141, (bArr[i92] >> 5) & 3);
                                qt.y0(142, (bArr[i92] >> 3) & 3);
                                qt.y0(143, (bArr[i92] >> 0) & 7);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f12052i.j();
        qt.q0(this.K);
        u0.c.f17388o.d(this.H);
        y0.g.f18094d.d(l0.h0.f13063i);
        y0.g.f18095e.d(l0.h0.f13063i);
        o1.y yVar = w0.e.f17815a;
        yVar.d(l0.h0.f13060f);
        o1.y yVar2 = w0.e.f17819e;
        yVar2.d(l0.h0.f13060f);
        o1.y yVar3 = u0.c.f17374a;
        yVar3.d(l0.h0.f13060f);
        yVar3.d(l0.h0.f13061g);
        u0.c.f17392s.d(l0.h0.f13061g);
        u0.c.f17393t.d(l0.h0.f13061g);
        yVar.d(l0.h0.f13061g);
        yVar2.d(l0.h0.f13061g);
        u0.c.f17386m.d(this.f12064u);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 403) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, 2, 122, (byte) iArr[0], iArr[1]);
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, 2, -83, (byte) iArr[0], iArr[1]);
            return;
        }
        if (i2 == 30) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            qt.y0(212, iArr[0]);
            return;
        }
        if (i2 == 99) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 2, -14, 12, (byte) iArr[0]);
            z.k.s(227, 2, -14, 7, 1);
            return;
        }
        if (i2 == 255) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            u3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, (byte) iArr[0], (byte) iArr[1], 0});
            z.k.s(227, 2, 61, (byte) iArr[0], (byte) iArr[1]);
            return;
        }
        if (i2 == 1003) {
            z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, 15, 1);
            return;
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] <= 2) {
                iArr[0] = iArr[0] + 1;
            }
            if (iArr[0] < 1) {
                iArr[0] = 1;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            t3(iArr[0]);
            return;
        }
        if (i2 == 1029) {
            int i3 = SystemProperties.getInt("sys.lsec.status_bar_height", 0);
            App.c().getResources().getConfiguration();
            int iW = (iArr[1] * 1560) / a.f.w();
            int i4 = (iArr[2] * 1900) / a.f.i();
            boolean zL = o1.s0.l("persist.fyt.ui.txz", false);
            Log.e("TXZ", "========>>> isTxz: " + zL);
            if (zL && a.f.i() == 1084) {
                i4 = (iArr[2] * 1900) / 1200;
            }
            n1.b bVarP = a.f.p();
            LogType logType = LogType.CANBUS;
            bVarP.t(logType, "C_CMD_360_TOUCH X = " + iArr[1] + "    y = " + iArr[2] + "..." + iArr[0]);
            a.f.p().t(logType, "C_CMD_360_TOUCH ObjApp.getWidth() = " + a.f.w() + "   ObjApp.getHeight() = " + a.f.i() + "   statusbarheigt = " + i3);
            if (T2(iArr, 2) && iArr[0] == 0) {
                z.k.s(227, 6, 44, 1, iW >> 8, iW & 255, i4 >> 8, 255 & i4, 0);
                return;
            }
            return;
        }
        switch (i2) {
            case 101:
                if (iArr != null && iArr.length > 0 && iArr[0] == 3) {
                    z.k.s(227, 2, -14, 6, -1);
                    break;
                }
                break;
            case 102:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 108, (byte) iArr[0], (byte) iArr[1]);
                    break;
                }
                break;
            case 103:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 107, (byte) iArr[0], (byte) iArr[1]);
                    break;
                }
                break;
            case 104:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 109, (byte) iArr[0], (byte) iArr[1]);
                    break;
                }
                break;
            case 105:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 110, (byte) iArr[0], (byte) iArr[1]);
                    break;
                }
                break;
            case 106:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 111, (byte) iArr[0], (byte) iArr[1]);
                    break;
                }
                break;
            case 107:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, 61, (byte) iArr[0], (byte) iArr[1]);
                    break;
                }
                break;
            case 108:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 2, 75, 4, (byte) iArr[0]);
                    break;
                }
                break;
            case 109:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 6, 78, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                    break;
                }
                break;
            case 110:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, -14, (byte) iArr[0], iArr[1]);
                    break;
                }
                break;
            case 111:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, -84, (byte) iArr[0], iArr[1]);
                    break;
                }
                break;
            case 112:
                z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, (byte) iArr[0], iArr[1]);
                break;
            case 113:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 2, 77, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 114:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 4, 95, iArr[0], iArr[1], iArr[2], iArr[3]);
                    break;
                }
                break;
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f12055l + bArr.length > 1024) {
            this.f12055l = 0;
            this.f12056m = 0;
            this.f12057n = 0;
        }
        System.arraycopy(bArr, 0, this.f12054k, this.f12055l, bArr.length);
        int length = this.f12055l + bArr.length;
        this.f12055l = length;
        int i5 = this.f12057n;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f12054k[2];
            int i6 = 3;
            while (true) {
                i4 = this.f12057n;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f12054k[i6]);
                i6++;
            }
            byte b3 = (byte) ((b2 - 1) & 255);
            byte[] bArr2 = this.f12054k;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 2, bArr2[2]);
                this.f12056m = this.f12057n + 1;
            } else {
                this.f12056m = 2;
            }
            this.f12057n = 0;
        }
        int i7 = this.f12055l - 3;
        while (true) {
            i2 = this.f12056m;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f12054k;
            if (bArr3[i2] == 90 && bArr3[i2 + 1] == -91) {
                if (this.f12057n > 512) {
                    this.f12057n = 0;
                } else {
                    int i8 = bArr3[i2 + 2] + i2 + 4;
                    this.f12057n = i8;
                    if (i8 >= this.f12055l) {
                        this.f12057n = i8 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 2];
                    int i9 = i2 + 3;
                    while (true) {
                        i3 = this.f12057n;
                        if (i9 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f12054k[i9]);
                        i9++;
                    }
                    byte b5 = (byte) ((b4 - 1) & 255);
                    byte[] bArr4 = this.f12054k;
                    if (b5 == bArr4[i3]) {
                        int i10 = this.f12056m;
                        U2(bArr4, i10 + 2, bArr4[i10 + 2]);
                        this.f12056m = this.f12057n;
                    } else {
                        this.f12056m++;
                    }
                    this.f12057n = 0;
                }
            }
            this.f12056m++;
        }
        if (i2 != 0) {
            int i11 = this.f12055l - i2;
            this.f12055l = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f12054k;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f12056m = 0;
        }
    }

    public final void b3(int i2) {
        byte b2 = (byte) i2;
        u3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, b2, 1, 0});
        u3(new byte[]{90, -91, 2, DhcpPacket.DHCP_CLIENT_IDENTIFIER, b2, 0, 0});
        z.k.s(227, 2, 61, i2, 1);
        z.k.s(227, 2, 61, i2, 0);
    }

    public final int c3(int i2) {
        if (i2 > 360) {
            i2 %= MediaProperties.HEIGHT_360;
        }
        if (i2 < 0) {
            i2 = 360 - Math.abs(i2 % MediaProperties.HEIGHT_360);
        }
        double d2 = i2;
        if ((d2 <= 22.5d && i2 >= 0) || (d2 >= 337.5d && i2 <= 360)) {
            return 7;
        }
        if (d2 > 22.5d && d2 < 67.5d) {
            return 8;
        }
        if (d2 >= 67.5d && d2 <= 112.5d) {
            return 1;
        }
        if (d2 > 112.5d && d2 < 157.5d) {
            return 2;
        }
        if (d2 >= 157.5d && d2 <= 202.5d) {
            return 3;
        }
        if (d2 > 202.5d && d2 < 247.5d) {
            return 4;
        }
        if (d2 < 247.5d || d2 > 292.5d) {
            return (d2 <= 292.5d || d2 >= 337.5d) ? 15 : 6;
        }
        return 5;
    }

    public final void d3(int i2, String str) throws UnsupportedEncodingException {
        if (str == null) {
            return;
        }
        byte[] bytes = str.getBytes("GBK");
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = i2;
        int length = bytes.length <= 30 ? bytes.length : 30;
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3 + 3] = bytes[i3];
        }
        iArr[length + 3] = 0;
        z.k.s(iArr);
    }

    public final void e3() {
        int[] iArr = M;
        int i2 = this.C;
        int i3 = iArr[i2];
        if (i2 < 0 || i2 >= iArr.length) {
            i3 = 9;
        }
        int i4 = this.f12068y * 10;
        int i5 = this.f12067x * 10;
        int i6 = this.A;
        z.k.s(227, 19, 148, this.E, this.D, (i4 >> 24) & 255, (i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255, this.B, (i5 >> 24) & 255, (i5 >> 16) & 255, (i5 >> 8) & 255, i5 & 255, c3(this.f12069z), 0, 0, i6 / BatchedScanSettings.MAX_INTERVAL_SEC, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i3, 0, 0);
    }

    public final void o3(byte b2, String str) throws UnsupportedEncodingException {
        if (str == null) {
            return;
        }
        byte[] bytes = str.getBytes("UTF-8");
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = bytes.length <= 30 ? bytes.length : 30;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 3] = bytes[i2];
        }
        iArr[length + 3] = 0;
        z.k.s(iArr);
    }

    public final void p3(byte b2, String str) throws UnsupportedEncodingException {
        if (str == null) {
            return;
        }
        byte[] bytes = str.getBytes("GBK");
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = bytes.length <= 30 ? bytes.length : 30;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 3] = bytes[i2];
        }
        iArr[length + 3] = 0;
        z.k.s(iArr);
    }

    public final void q3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        byte[] bytes = str.getBytes();
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = bytes.length <= 32 ? bytes.length : 32;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void r3() {
        try {
            if (SystemProperties.getBoolean("persist.fyt.showduduair", false) || qt.i0().equals("com.syu.carinfo.honda.ActivityAirControl")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.honda.ActivityAirControl");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void s3() {
        try {
            if (SystemProperties.getBoolean("persist.fyt.showduduair", false) || qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void t3(int i2) {
        L = i2;
        z.k.s(227, 2, -14, (byte) i2, -1);
        int iB = this.f12052i.b(1, 0);
        int i3 = L;
        if (iB != i3) {
            this.f12052i.g(1, i3);
        }
    }
}
