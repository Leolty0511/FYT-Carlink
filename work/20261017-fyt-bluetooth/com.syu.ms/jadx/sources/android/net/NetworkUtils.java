package android.net;

import android.util.Log;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class NetworkUtils {
    public static final int RESET_ALL_ADDRESSES = 3;
    public static final int RESET_IPV4_ADDRESSES = 1;
    public static final int RESET_IPV6_ADDRESSES = 2;
    private static final String TAG = "NetworkUtils";

    public static boolean addressTypeMatches(InetAddress inetAddress, InetAddress inetAddress2) {
        return ((inetAddress instanceof Inet4Address) && (inetAddress2 instanceof Inet4Address)) || ((inetAddress instanceof Inet6Address) && (inetAddress2 instanceof Inet6Address));
    }

    public static native int disableInterface(String str);

    public static native int enableInterface(String str);

    public static native String getDhcpError();

    public static InetAddress getNetworkPart(InetAddress inetAddress, int i2) {
        if (inetAddress == null) {
            throw new RuntimeException("getNetworkPart doesn't accept null address");
        }
        byte[] address = inetAddress.getAddress();
        if (i2 < 0 || i2 > address.length * 8) {
            throw new RuntimeException("getNetworkPart - bad prefixLength");
        }
        int i3 = i2 / 8;
        byte b2 = (byte) (255 << (8 - (i2 % 8)));
        if (i3 < address.length) {
            address[i3] = (byte) (b2 & address[i3]);
        }
        while (true) {
            i3++;
            if (i3 >= address.length) {
                try {
                    return InetAddress.getByAddress(address);
                } catch (UnknownHostException e2) {
                    throw new RuntimeException("getNetworkPart error - " + e2.toString());
                }
            }
            address[i3] = 0;
        }
    }

    public static InetAddress hexToInet6Address(String str) {
        try {
            return numericToInetAddress(String.format(Locale.US, "%s:%s:%s:%s:%s:%s:%s:%s", str.substring(0, 4), str.substring(4, 8), str.substring(8, 12), str.substring(12, 16), str.substring(16, 20), str.substring(20, 24), str.substring(24, 28), str.substring(28, 32)));
        } catch (Exception e2) {
            Log.e(TAG, "error in hexToInet6Address(" + str + "): " + e2);
            throw new IllegalArgumentException(e2);
        }
    }

    public static int inetAddressToInt(InetAddress inetAddress) {
        byte[] address = inetAddress.getAddress();
        return (address[0] & 255) | ((address[3] & 255) << 24) | ((address[2] & 255) << 16) | ((address[1] & 255) << 8);
    }

    public static InetAddress intToInetAddress(int i2) {
        try {
            return InetAddress.getByAddress(new byte[]{(byte) (i2 & 255), (byte) ((i2 >> 8) & 255), (byte) ((i2 >> 16) & 255), (byte) ((i2 >> 24) & 255)});
        } catch (UnknownHostException unused) {
            throw new AssertionError();
        }
    }

    public static String[] makeStrings(Collection<InetAddress> collection) {
        String[] strArr = new String[collection.size()];
        Iterator<InetAddress> it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            strArr[i2] = it.next().getHostAddress();
            i2++;
        }
        return strArr;
    }

    public static native void markSocket(int i2, int i3);

    public static int netmaskIntToPrefixLength(int i2) {
        return Integer.bitCount(i2);
    }

    public static InetAddress numericToInetAddress(String str) {
        return InetAddress.parseNumericAddress(str);
    }

    public static int prefixLengthToNetmaskInt(int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Invalid prefix length (0 <= prefix <= 32)");
        }
        return Integer.reverseBytes((-1) << (32 - i2));
    }

    public static native boolean releaseDhcpLease(String str);

    public static native int resetConnections(String str, int i2);

    public static native boolean runDhcp(String str, DhcpInfoInternal dhcpInfoInternal);

    public static native boolean runDhcp(String str, DhcpResults dhcpResults);

    public static native boolean runDhcpRenew(String str, DhcpInfoInternal dhcpInfoInternal);

    public static native boolean runDhcpRenew(String str, DhcpResults dhcpResults);

    public static native boolean stopDhcp(String str);

    public static String trimV4AddrZeros(String str) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length != 4) {
            return str;
        }
        StringBuilder sb = new StringBuilder(16);
        for (int i2 = 0; i2 < 4; i2++) {
            try {
                if (strArrSplit[i2].length() > 3) {
                    return str;
                }
                sb.append(Integer.parseInt(strArrSplit[i2]));
                if (i2 < 3) {
                    sb.append('.');
                }
            } catch (NumberFormatException unused) {
                return str;
            }
        }
        return sb.toString();
    }
}
