package android.net.wifi;

import android.accessibilityservice.c;
import android.app.m;
import android.util.Log;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class WifiSsidConverter {
    private static int GB2312_FLAG = 1;
    private static String GB2312_FLAG_STRING = "\u0001";
    private static String INVALID_CHARSET_FLAG_STRING = "\u0002";
    private static int INVALID_CHARTSET_FLAG = 2;
    public static final String NONE = "<unknown ssid>";
    private static final String TAG = "WifiSsidConverter";

    private WifiSsidConverter() {
    }

    private static boolean containGb2312Byte(byte[] bArr) {
        int i2;
        int i3;
        int length = bArr.length;
        boolean z2 = false;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < bArr.length) {
            int i7 = bArr[i4] & 255;
            if ((i7 & 128) == 0) {
                i4++;
            } else {
                int i8 = i7 & 224;
                if (192 == i8 && (i3 = i4 + 1) < length && 128 == (bArr[i3] & 255 & 192)) {
                    i4 += 2;
                    i5++;
                    i6 = 0;
                } else {
                    int i9 = i7 & 240;
                    if (224 != i9 || (i2 = i4 + 2) >= length || 128 != (bArr[i4 + 1] & 255 & 192) || 128 != (bArr[i2] & 255 & 192)) {
                        if ((192 == i8 && i4 + 1 >= length) || (224 == i9 && i4 + 2 >= length)) {
                            break;
                            break;
                        }
                        z2 = true;
                        break;
                    }
                    i4 += 3;
                    i6++;
                    if (i6 > 1) {
                        break;
                    }
                }
            }
        }
        if (!z2 && i5 > 0 && i6 == 0) {
            return isGb2312(bArr);
        }
        if (z2) {
            Log.e(TAG, "Contain GB2312!!!!!");
        }
        return z2;
    }

    private static String encodeSsid(byte[] bArr) {
        String str = new String("");
        for (int i2 = 0; i2 < bArr.length; i2++) {
            byte b2 = bArr[i2];
            if (b2 == 9) {
                str = c.D(str, "\\t");
            } else if (b2 == 10) {
                str = c.D(str, "\\n");
            } else if (b2 == 13) {
                str = c.D(str, "\\r");
            } else if (b2 == 27) {
                str = c.D(str, "\\e");
            } else if (b2 == 34) {
                str = c.D(str, "\\\"");
            } else if (b2 == 92) {
                str = c.D(str, "\\\\");
            } else if (b2 < 32 || b2 > 127) {
                StringBuilder sbR = c.r(str);
                sbR.append(String.format(Locale.US, "\\x%02x", Byte.valueOf(bArr[i2])));
                str = sbR.toString();
            } else {
                StringBuilder sbR2 = c.r(str);
                sbR2.append(String.format(Locale.US, "%c", Byte.valueOf(bArr[i2])));
                str = sbR2.toString();
            }
        }
        return str;
    }

    private static boolean isGb2312(byte[] bArr) {
        int i2;
        int length = bArr.length;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        while (true) {
            if (i3 >= length) {
                z2 = true;
                break;
            }
            byte b2 = bArr[i3];
            if ((b2 & 255 & 128) == 0) {
                i3++;
            } else {
                if ((b2 & 255) >= 129 && (b2 & 255) <= 254 && (i2 = i3 + 1) < length) {
                    byte b3 = bArr[i2];
                    if ((b3 & 255) >= 64 && (b3 & 255) <= 254) {
                        i3 += 2;
                    }
                }
                if ((b2 & 255) < 129 || (b2 & 255) > 254 || (i3 = i3 + 1) < length) {
                    break;
                }
                z3 = true;
            }
        }
        if (z3) {
            Log.e(TAG, "is GB2312 Tuncated!!!!!");
        }
        if (z2) {
            Log.e(TAG, "is GB2312!!!!!");
        }
        return z2;
    }

    private static boolean isGb2312Truncated(byte[] bArr) {
        int i2;
        int length = bArr.length;
        boolean z2 = false;
        int i3 = 0;
        while (true) {
            if (i3 < length) {
                int i4 = bArr[i3] & 255;
                if ((i4 & 128) == 0) {
                    i3++;
                } else {
                    if (i4 >= 129 && i4 <= 254 && (i2 = i3 + 1) < length) {
                        byte b2 = bArr[i2];
                        if ((b2 & 255) >= 64 && (b2 & 255) <= 254) {
                            i3 += 2;
                        }
                    }
                    if (i4 >= 129 && i4 <= 254 && i3 + 1 >= length) {
                        z2 = true;
                    }
                }
            }
            if (z2) {
                Log.e(TAG, "is GB2312 Tuncated!!!!!");
            }
            return z2;
        }
    }

    private static boolean isSsidTruncated(byte[] bArr) {
        return containGb2312Byte(bArr) ? isGb2312Truncated(bArr) : isUTF8Truncated(bArr);
    }

    private static boolean isUTF8Truncated(byte[] bArr) {
        int i2;
        int i3;
        int length = bArr.length;
        boolean z2 = false;
        int i4 = 0;
        while (i4 < length) {
            byte b2 = bArr[i4];
            if ((b2 & 255 & 128) == 0) {
                i4++;
            } else if (192 == (b2 & 255 & 224) && (i3 = i4 + 1) < length && 128 == (bArr[i3] & 255 & 192)) {
                i4 += 2;
            } else {
                if (224 != (b2 & 255 & 240) || (i2 = i4 + 2) >= length || 128 != (bArr[i4 + 1] & 255 & 192) || 128 != (bArr[i2] & 255 & 192)) {
                    if ((192 != (b2 & 255 & 224) || i4 + 1 < length) && (224 != (b2 & 255 & 240) || i4 + 2 < length)) {
                        break;
                        break;
                    }
                    z2 = true;
                    break;
                }
                i4 += 3;
            }
        }
        if (z2) {
            Log.e(TAG, "is UTF-8 Tuncated!!!!!");
        }
        return z2;
    }

    public static String makeSupplicantSSID(String str) {
        String strRemoveDoubleQuotes = removeDoubleQuotes(str);
        int length = strRemoveDoubleQuotes.length() - 1;
        char cCharAt = strRemoveDoubleQuotes.charAt(length);
        if (cCharAt == GB2312_FLAG) {
            String strSubstring = strRemoveDoubleQuotes.substring(0, length);
            m.r("GB2312 String:", strSubstring, TAG);
            return String.format("%x", new BigInteger(1, strSubstring.getBytes(Charset.forName("GB2312"))));
        }
        if (cCharAt != INVALID_CHARTSET_FLAG) {
            return String.format("%x", new BigInteger(1, strRemoveDoubleQuotes.getBytes(Charset.forName("UTF-8"))));
        }
        String strSubstring2 = strRemoveDoubleQuotes.substring(0, length);
        Log.e(TAG, "encode String:" + strSubstring2);
        return "P\"" + strSubstring2 + "\"";
    }

    private static String removeDoubleQuotes(String str) {
        int length = str.length();
        if (length <= 1 || str.charAt(0) != '\"') {
            return str;
        }
        int i2 = length - 1;
        return str.charAt(i2) == '\"' ? str.substring(1, i2) : str;
    }

    public static String toString(byte[] bArr) {
        CharsetDecoder charsetDecoderOnUnmappableCharacter = Charset.forName("UTF-8").newDecoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT);
        CharBuffer charBufferAllocate = CharBuffer.allocate(32);
        boolean z2 = true;
        CoderResult coderResultDecode = charsetDecoderOnUnmappableCharacter.decode(ByteBuffer.wrap(bArr), charBufferAllocate, true);
        charBufferAllocate.flip();
        if (coderResultDecode.isError()) {
            Log.e(TAG, "Try GB2312");
            try {
                if (isSsidTruncated(bArr)) {
                    return encodeSsid(bArr) + INVALID_CHARSET_FLAG_STRING;
                }
                CharsetDecoder charsetDecoderOnUnmappableCharacter2 = Charset.forName("GB2312").newDecoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT);
                CharBuffer charBufferAllocate2 = CharBuffer.allocate(32);
                CoderResult coderResultDecode2 = charsetDecoderOnUnmappableCharacter2.decode(ByteBuffer.wrap(bArr, 0, bArr.length), charBufferAllocate2, true);
                charBufferAllocate2.flip();
                if (coderResultDecode2.isError()) {
                    Log.e(TAG, "ssid contain invalid charset ");
                    return encodeSsid(bArr) + INVALID_CHARSET_FLAG_STRING;
                }
                Log.e(TAG, "ssid = " + charBufferAllocate2.toString() + ", result: " + coderResultDecode2);
                return charBufferAllocate2.toString() + GB2312_FLAG_STRING;
            } catch (Exception e2) {
                Log.e(TAG, "exception = " + e2);
            }
        } else {
            z2 = false;
        }
        return z2 ? "<unknown ssid>" : charBufferAllocate.toString();
    }
}
