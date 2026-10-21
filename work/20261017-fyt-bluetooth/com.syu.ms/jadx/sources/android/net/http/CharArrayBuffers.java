package android.net.http;

import org.apache.http.protocol.HTTP;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
class CharArrayBuffers {
    public static final char uppercaseAddon = ' ';

    public static boolean containsIgnoreCaseTrimmed(CharArrayBuffer charArrayBuffer, int i2, String str) {
        int length = charArrayBuffer.length();
        char[] cArrBuffer = charArrayBuffer.buffer();
        while (i2 < length && HTTP.isWhitespace(cArrBuffer[i2])) {
            i2++;
        }
        int length2 = str.length();
        boolean z2 = length >= i2 + length2;
        for (int i3 = 0; z2 && i3 < length2; i3++) {
            char c2 = cArrBuffer[i2 + i3];
            char cCharAt = str.charAt(i3);
            if (c2 != cCharAt) {
                z2 = toLower(c2) == toLower(cCharAt);
            }
        }
        return z2;
    }

    public static int setLowercaseIndexOf(CharArrayBuffer charArrayBuffer, int i2) {
        int length = charArrayBuffer.length();
        char[] cArrBuffer = charArrayBuffer.buffer();
        for (int i3 = 0; i3 < length; i3++) {
            char c2 = cArrBuffer[i3];
            if (c2 == i2) {
                return i3;
            }
            if (c2 >= 'A' && c2 <= 'Z') {
                cArrBuffer[i3] = (char) (c2 + uppercaseAddon);
            }
        }
        return -1;
    }

    private static char toLower(char c2) {
        return (c2 < 'A' || c2 > 'Z') ? c2 : (char) (c2 + uppercaseAddon);
    }
}
