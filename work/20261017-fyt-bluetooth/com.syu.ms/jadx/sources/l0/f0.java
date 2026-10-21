package l0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class f0 {
    public static void a(byte b2) {
        int i2 = b2 & 255;
        u0.d.A3((i2 & 128) != 0 ? 1000 - ((i2 & 127) * 10) : (i2 * 10) + 1000);
    }

    public static void b(byte b2, byte b3, byte b4) {
        if ((b3 & 128) != 0) {
            u0.d.A3((b2 & 255) >= 100 ? ((b2 - 100) * 10) + 1000 + ((b4 & DhcpPacket.DHCP_DOMAIN_NAME) % 10) : (1000 - ((100 - b2) * 10)) - ((b4 & DhcpPacket.DHCP_DOMAIN_NAME) % 10));
        }
    }

    public static void c(byte b2) {
        int i2 = b2 & 128;
        int i3 = b2 & 255;
        if (i2 == 0) {
            if (i3 <= 80) {
                u0.d.A3((i3 * 10) + 1000);
            }
        } else {
            int i4 = i3 - 128;
            if (i4 <= 40) {
                u0.d.A3(1000 - (i4 * 10));
            }
        }
    }

    public static void d(byte b2) {
        int i2 = b2 & 255;
        u0.d.A3(i2 < 128 ? 1000 - ((128 - i2) * 10) : ((i2 - 128) * 10) + 1000);
    }

    public static void e(byte b2, byte b3) {
        int i2;
        boolean z2 = (b2 & 64) != 0;
        int i3 = b3 & 255;
        if ((i3 != 128 ? b3 & 128 : 0) != 0) {
            int i4 = ((~i3) + 1) & 255;
            if (z2) {
                i2 = (i4 >= 18 ? 1000 - ((((i4 * 9) / 5) - 32) * 10) : ((32 - ((i4 * 9) / 5)) * 10) + 1000) | 32768;
            } else {
                i2 = 1000 - (i4 * 10);
            }
        } else {
            i2 = z2 ? (((((i3 * 9) / 5) + 32) * 10) + 1000) | 32768 : (i3 * 10) + 1000;
        }
        u0.d.A3(i2);
    }

    public static void f(byte b2) {
        u0.d.A3((b2 & 128) != 0 ? 1000 - ((((~(b2 & 255)) + 1) & 255) * 10) : ((b2 & 255) * 10) + 1000);
    }

    public static void g(byte b2) {
        if ((b2 & 255) != 127) {
            u0.d.A3((b2 & 128) != 0 ? 1000 - ((b2 & 127) * 10) : ((b2 & 127) * 10) + 1000);
        }
    }

    public static void h(byte b2) {
        int i2 = SystemProperties.getInt("persist.fyt.temperature", 0);
        boolean z2 = (b2 & 128) != 0;
        int i3 = z2 ? (255 - (b2 & 255)) + 1 : b2 & 255;
        if (z2) {
            if (i3 <= 40) {
                i3 = 1000 - (i3 * 10);
            }
        } else if (i3 <= 85) {
            i3 = (i3 * 10) + 1000;
        }
        if (i2 > 0) {
            i3 |= 32768;
        }
        u0.d.A3(i3);
    }

    public static void i(byte b2) {
        int i2 = b2 & 255;
        u0.d.A3((i2 & 128) != 0 ? 1000 - ((i2 & 127) * 10) : ((i2 & 127) * 10) + 1000);
    }

    public static void j(byte b2) {
        int i2 = b2 & 255;
        if (i2 != 255) {
            u0.d.A3((i2 & 128) != 0 ? 1000 - ((i2 - 128) * 10) : (i2 * 10) + 1000);
        }
    }

    public static void k(byte b2) {
        int i2 = b2 & 127;
        if ((b2 & 128) != 0) {
            if (i2 > 40) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3(1000 - (i2 * 10));
                return;
            }
        }
        if (i2 > 86) {
            u0.d.A3(0);
        } else {
            u0.d.A3((i2 * 10) + 1000);
        }
    }
}
