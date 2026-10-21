package android.util;

/* JADX INFO: loaded from: classes2.dex */
public final class ByteStringUtils {
    private static final char[] HEX_ARRAY = "0123456789ABCDEF".toCharArray();

    private ByteStringUtils() {
    }

    public static byte[] fromHexToByteArray(String str) {
        if (str == null || str.length() == 0 || str.length() % 2 != 0) {
            return null;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            bArr[i2] = (byte) ((getIndex(charArray[i3 + 1]) & 15) | ((getIndex(charArray[i3]) << 4) & 240));
        }
        return bArr;
    }

    private static int getIndex(char c) {
        int i2 = 0;
        while (true) {
            char[] cArr = HEX_ARRAY;
            if (i2 >= cArr.length) {
                return -1;
            }
            if (cArr[i2] == c) {
                return i2;
            }
            i2++;
        }
    }

    public static String toHexString(byte[] bArr) {
        if (bArr == null || bArr.length == 0 || bArr.length % 2 != 0) {
            return null;
        }
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = bArr[i2] & 255;
            int i4 = i2 * 2;
            char[] cArr2 = HEX_ARRAY;
            cArr[i4] = cArr2[i3 >>> 4];
            cArr[i4 + 1] = cArr2[i3 & 15];
        }
        return new String(cArr);
    }
}
