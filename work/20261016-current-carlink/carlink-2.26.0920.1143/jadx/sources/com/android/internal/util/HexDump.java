package com.android.internal.util;

import android.net.wifi.WifiEnterpriseConfig;
import android.text.format.DateFormat;

/* JADX INFO: loaded from: classes3.dex */
public class HexDump {
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', DateFormat.CAPITAL_AM_PM, 'B', 'C', 'D', DateFormat.DAY, 'F'};
    private static final char[] HEX_LOWER_CASE_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', DateFormat.AM_PM, 'b', 'c', DateFormat.DATE, 'e', 'f'};

    public static StringBuilder appendByteAsHex(StringBuilder sb, byte b2, boolean z2) {
        char[] cArr = z2 ? HEX_DIGITS : HEX_LOWER_CASE_DIGITS;
        sb.append(cArr[(b2 >> 4) & 15]);
        sb.append(cArr[b2 & 15]);
        return sb;
    }

    public static String dumpHexString(byte[] bArr) {
        return dumpHexString(bArr, 0, bArr.length);
    }

    public static byte[] hexStringToByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i2 = 0; i2 < length; i2 += 2) {
            bArr[i2 / 2] = (byte) ((toByte(str.charAt(i2)) << 4) | toByte(str.charAt(i2 + 1)));
        }
        return bArr;
    }

    private static int toByte(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = DateFormat.CAPITAL_AM_PM;
        if (c < 'A' || c > 'F') {
            c2 = DateFormat.AM_PM;
            if (c < 'a' || c > 'f') {
                throw new RuntimeException("Invalid hex char '" + c + "'");
            }
        }
        return (c - c2) + 10;
    }

    public static byte[] toByteArray(byte b2) {
        return new byte[]{b2};
    }

    public static String toHexString(byte b2) {
        return toHexString(toByteArray(b2));
    }

    public static String dumpHexString(byte[] bArr, int i2, int i3) {
        StringBuilder sb = new StringBuilder("\n0x");
        byte[] bArr2 = new byte[16];
        sb.append(toHexString(i2));
        int i4 = i2;
        int i5 = 0;
        while (i4 < i2 + i3) {
            if (i5 == 16) {
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                for (int i6 = 0; i6 < 16; i6++) {
                    byte b2 = bArr2[i6];
                    if (b2 <= 32 || b2 >= 126) {
                        sb.append(".");
                    } else {
                        sb.append(new String(bArr2, i6, 1));
                    }
                }
                sb.append("\n0x");
                sb.append(toHexString(i4));
                i5 = 0;
            }
            byte b3 = bArr[i4];
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            char[] cArr = HEX_DIGITS;
            sb.append(cArr[(b3 >>> 4) & 15]);
            sb.append(cArr[b3 & 15]);
            bArr2[i5] = b3;
            i4++;
            i5++;
        }
        if (i5 != 16) {
            int i7 = ((16 - i5) * 3) + 1;
            for (int i8 = 0; i8 < i7; i8++) {
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            }
            for (int i9 = 0; i9 < i5; i9++) {
                byte b4 = bArr2[i9];
                if (b4 <= 32 || b4 >= 126) {
                    sb.append(".");
                } else {
                    sb.append(new String(bArr2, i9, 1));
                }
            }
        }
        return sb.toString();
    }

    public static byte[] toByteArray(int i2) {
        return new byte[]{(byte) ((i2 >> 24) & 255), (byte) ((i2 >> 16) & 255), (byte) ((i2 >> 8) & 255), (byte) (i2 & 255)};
    }

    public static String toHexString(byte[] bArr) {
        return toHexString(bArr, 0, bArr.length, true);
    }

    public static String toHexString(byte[] bArr, boolean z2) {
        return toHexString(bArr, 0, bArr.length, z2);
    }

    public static String toHexString(byte[] bArr, int i2, int i3) {
        return toHexString(bArr, i2, i3, true);
    }

    public static String toHexString(byte[] bArr, int i2, int i3, boolean z2) {
        char[] cArr = z2 ? HEX_DIGITS : HEX_LOWER_CASE_DIGITS;
        char[] cArr2 = new char[i3 * 2];
        int i4 = 0;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            byte b2 = bArr[i5];
            int i6 = i4 + 1;
            cArr2[i4] = cArr[(b2 >>> 4) & 15];
            i4 = i6 + 1;
            cArr2[i6] = cArr[b2 & 15];
        }
        return new String(cArr2);
    }

    public static String toHexString(int i2) {
        return toHexString(toByteArray(i2));
    }
}
