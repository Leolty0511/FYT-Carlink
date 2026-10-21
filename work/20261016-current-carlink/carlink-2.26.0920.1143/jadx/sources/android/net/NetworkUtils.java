package android.net;

import android.accessibilityservice.c;
import android.app.m;
import android.os.Parcel;
import android.util.Log;
import android.util.Pair;
import java.io.FileDescriptor;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class NetworkUtils {
    private static final String TAG = "NetworkUtils";

    public static boolean addressTypeMatches(InetAddress inetAddress, InetAddress inetAddress2) {
        return ((inetAddress instanceof Inet4Address) && (inetAddress2 instanceof Inet4Address)) || ((inetAddress instanceof Inet6Address) && (inetAddress2 instanceof Inet6Address));
    }

    public static native void attachControlPacketFilter(FileDescriptor fileDescriptor, int i2);

    public static native void attachDhcpFilter(FileDescriptor fileDescriptor);

    public static native void attachRaFilter(FileDescriptor fileDescriptor, int i2);

    public static native boolean bindProcessToNetwork(int i2);

    @Deprecated
    public static native boolean bindProcessToNetworkForHostResolution(int i2);

    public static native int bindSocketToNetwork(int i2, int i3);

    public static native int getBoundNetworkForProcess();

    public static int getImplicitNetmask(Inet4Address inet4Address) {
        int i2 = inet4Address.getAddress()[0] & 255;
        if (i2 < 128) {
            return 8;
        }
        if (i2 < 192) {
            return 16;
        }
        return i2 < 224 ? 24 : 32;
    }

    public static InetAddress getNetworkPart(InetAddress inetAddress, int i2) {
        byte[] address = inetAddress.getAddress();
        maskRawAddress(address, i2);
        try {
            return InetAddress.getByAddress(address);
        } catch (UnknownHostException e2) {
            throw new RuntimeException("getNetworkPart error - " + e2.toString());
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

    public static int inetAddressToInt(Inet4Address inet4Address) {
        byte[] address = inet4Address.getAddress();
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

    public static void maskRawAddress(byte[] bArr, int i2) {
        if (i2 < 0 || i2 > bArr.length * 8) {
            throw new RuntimeException("IP address with " + bArr.length + " bytes has invalid prefix length " + i2);
        }
        int i3 = i2 / 8;
        byte b2 = (byte) (255 << (8 - (i2 % 8)));
        if (i3 < bArr.length) {
            bArr[i3] = (byte) (b2 & bArr[i3]);
        }
        while (true) {
            i3++;
            if (i3 >= bArr.length) {
                return;
            } else {
                bArr[i3] = 0;
            }
        }
    }

    public static int netmaskIntToPrefixLength(int i2) {
        return Integer.bitCount(i2);
    }

    public static int netmaskToPrefixLength(Inet4Address inet4Address) {
        int iReverseBytes = Integer.reverseBytes(inetAddressToInt(inet4Address));
        int iBitCount = Integer.bitCount(iReverseBytes);
        if (Integer.numberOfTrailingZeros(iReverseBytes) == 32 - iBitCount) {
            return iBitCount;
        }
        throw new IllegalArgumentException(m.d(iReverseBytes, new StringBuilder("Non-contiguous netmask: ")));
    }

    public static InetAddress numericToInetAddress(String str) {
        return InetAddress.parseNumericAddress(str);
    }

    public static void parcelInetAddress(Parcel parcel, InetAddress inetAddress, int i2) {
        parcel.writeByteArray(inetAddress != null ? inetAddress.getAddress() : null);
    }

    public static Pair<InetAddress, Integer> parseIpAndMask(String str) {
        int i2;
        InetAddress numericAddress = null;
        try {
            String[] strArrSplit = str.split("/", 2);
            i2 = Integer.parseInt(strArrSplit[1]);
            try {
                numericAddress = InetAddress.parseNumericAddress(strArrSplit[0]);
            } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException | NullPointerException | NumberFormatException unused) {
            }
        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException | NullPointerException | NumberFormatException unused2) {
            i2 = -1;
        }
        if (numericAddress == null || i2 == -1) {
            throw new IllegalArgumentException(c.j("Invalid IP address and mask ", str));
        }
        return new Pair<>(numericAddress, Integer.valueOf(i2));
    }

    public static int prefixLengthToNetmaskInt(int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Invalid prefix length (0 <= prefix <= 32)");
        }
        return Integer.reverseBytes((-1) << (32 - i2));
    }

    public static native boolean protectFromVpn(int i2);

    public static boolean protectFromVpn(FileDescriptor fileDescriptor) {
        return protectFromVpn(fileDescriptor.getInt$());
    }

    public static native boolean queryUserAccess(int i2, int i3);

    public static native void setupRaSocket(FileDescriptor fileDescriptor, int i2);

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

    public static InetAddress unparcelInetAddress(Parcel parcel) {
        byte[] bArrCreateByteArray = parcel.createByteArray();
        if (bArrCreateByteArray == null) {
            return null;
        }
        try {
            return InetAddress.getByAddress(bArrCreateByteArray);
        } catch (UnknownHostException unused) {
            return null;
        }
    }
}
