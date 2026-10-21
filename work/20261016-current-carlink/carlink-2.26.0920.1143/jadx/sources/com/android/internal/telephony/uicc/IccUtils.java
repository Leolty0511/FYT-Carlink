package com.android.internal.telephony.uicc;

import android.app.backup.FullBackup;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.telephony.Rlog;
import android.text.format.DateFormat;
import com.android.internal.R;
import com.android.internal.telephony.GsmAlphabet;
import com.google.common.base.Ascii;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes3.dex */
public class IccUtils {
    static final String LOG_TAG = "IccUtils";

    public static String adnStringFieldToString(byte[] bArr, int i2, int i3) {
        int i4;
        char c;
        String str;
        String string = "";
        if (i3 == 0) {
            return "";
        }
        boolean z2 = true;
        if (i3 >= 1 && bArr[i2] == -128) {
            try {
                str = new String(bArr, i2 + 1, ((i3 - 1) / 2) * 2, "utf-16be");
            } catch (UnsupportedEncodingException e2) {
                Rlog.e(LOG_TAG, "implausible UnsupportedEncodingException", e2);
                str = null;
            }
            if (str != null) {
                int length = str.length();
                while (length > 0 && str.charAt(length - 1) == 65535) {
                    length--;
                }
                return str.substring(0, length);
            }
        }
        if (i3 >= 3 && bArr[i2] == -127) {
            i4 = bArr[i2 + 1] & 255;
            int i5 = i3 - 3;
            if (i4 > i5) {
                i4 = i5;
            }
            c = (char) ((bArr[i2 + 2] & 255) << 7);
            i2 += 3;
        } else if (i3 < 4 || bArr[i2] != -126) {
            z2 = false;
            i4 = 0;
            c = 0;
        } else {
            i4 = bArr[i2 + 1] & 255;
            int i6 = i3 - 4;
            if (i4 > i6) {
                i4 = i6;
            }
            c = (char) (((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
            i2 += 4;
        }
        if (!z2) {
            try {
                string = Resources.getSystem().getString(R.string.gsm_alphabet_default_charset);
            } catch (Resources.NotFoundException unused) {
            }
            return GsmAlphabet.gsm8BitUnpackedToString(bArr, i2, i3, string.trim());
        }
        StringBuilder sb = new StringBuilder();
        while (i4 > 0) {
            byte b2 = bArr[i2];
            if (b2 < 0) {
                sb.append((char) ((b2 & Ascii.DEL) + c));
                i2++;
                i4--;
            }
            int i7 = 0;
            while (i7 < i4 && bArr[i2 + i7] >= 0) {
                i7++;
            }
            sb.append(GsmAlphabet.gsm8BitUnpackedToString(bArr, i2, i7));
            i2 += i7;
            i4 -= i7;
        }
        return sb.toString();
    }

    public static String bcdPlmnToString(byte[] bArr, int i2) {
        if (i2 + 3 > bArr.length) {
            return null;
        }
        byte b2 = bArr[i2 + 0];
        int i3 = b2 << 4;
        int i4 = i2 + 1;
        int i5 = i2 + 2;
        String strBytesToHexString = bytesToHexString(new byte[]{(byte) (((b2 >> 4) & 15) | i3), (byte) ((bArr[i4] << 4) | (bArr[i5] & 15)), (byte) (((bArr[i4] >> 4) & 15) | (bArr[i5] & 240))});
        return strBytesToHexString.endsWith(FullBackup.FILES_TREE_TOKEN) ? strBytesToHexString.substring(0, strBytesToHexString.length() - 1) : strBytesToHexString;
    }

    public static String bcdToString(byte[] bArr, int i2, int i3) {
        int i4;
        StringBuilder sb = new StringBuilder(i3 * 2);
        for (int i5 = i2; i5 < i2 + i3 && (i4 = bArr[i5] & 15) <= 9; i5++) {
            sb.append((char) (i4 + 48));
            int i6 = (bArr[i5] >> 4) & 15;
            if (i6 != 15) {
                if (i6 > 9) {
                    break;
                }
                sb.append((char) (i6 + 48));
            }
        }
        return sb.toString();
    }

    public static String bchToString(byte[] bArr, int i2, int i3) {
        StringBuilder sb = new StringBuilder(i3 * 2);
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            sb.append("0123456789abcdef".charAt(bArr[i4] & 15));
            sb.append("0123456789abcdef".charAt((bArr[i4] >> 4) & 15));
        }
        return sb.toString();
    }

    private static int bitToRGB(int i2) {
        return i2 == 1 ? -1 : -16777216;
    }

    public static String bytesToHexString(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            sb.append("0123456789abcdef".charAt((bArr[i2] >> 4) & 15));
            sb.append("0123456789abcdef".charAt(bArr[i2] & 15));
        }
        return sb.toString();
    }

    public static int cdmaBcdByteToInt(byte b2) {
        int i2 = (b2 & 240) <= 144 ? ((b2 >> 4) & 15) * 10 : 0;
        int i3 = b2 & 15;
        return i3 <= 9 ? i2 + i3 : i2;
    }

    public static String cdmaBcdToString(byte[] bArr, int i2, int i3) {
        StringBuilder sb = new StringBuilder(i3);
        int i4 = 0;
        while (i4 < i3) {
            int i5 = bArr[i2] & 15;
            if (i5 > 9) {
                i5 = 0;
            }
            sb.append((char) (i5 + 48));
            int i6 = i4 + 1;
            if (i6 == i3) {
                break;
            }
            int i7 = (bArr[i2] >> 4) & 15;
            if (i7 > 9) {
                i7 = 0;
            }
            sb.append((char) (i7 + 48));
            i4 = i6 + 1;
            i2++;
        }
        return sb.toString();
    }

    private static int[] getCLUT(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            return null;
        }
        int[] iArr = new int[i3];
        int i4 = (i3 * 3) + i2;
        int i5 = 0;
        while (true) {
            int i6 = i5 + 1;
            int i7 = i2 + 1;
            int i8 = i7 + 1;
            int i9 = ((bArr[i2] & 255) << 16) | (-16777216) | ((bArr[i7] & 255) << 8);
            int i10 = i8 + 1;
            iArr[i5] = i9 | (bArr[i8] & 255);
            if (i10 >= i4) {
                return iArr;
            }
            i5 = i6;
            i2 = i10;
        }
    }

    public static int gsmBcdByteToInt(byte b2) {
        int i2 = (b2 & 240) <= 144 ? (b2 >> 4) & 15 : 0;
        int i3 = b2 & 15;
        return i3 <= 9 ? i2 + (i3 * 10) : i2;
    }

    public static int hexCharToInt(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = DateFormat.CAPITAL_AM_PM;
        if (c < 'A' || c > 'F') {
            c2 = DateFormat.AM_PM;
            if (c < 'a' || c > 'f') {
                throw new RuntimeException("invalid hex char '" + c + "'");
            }
        }
        return (c - c2) + 10;
    }

    public static byte[] hexStringToBytes(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i2 = 0; i2 < length; i2 += 2) {
            bArr[i2 / 2] = (byte) ((hexCharToInt(str.charAt(i2)) << 4) | hexCharToInt(str.charAt(i2 + 1)));
        }
        return bArr;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001d  */
    private static int[] mapTo2OrderBitColor(byte[] bArr, int i2, int i3, int[] iArr, int i4) {
        int i5;
        if (8 % i4 != 0) {
            Rlog.e(LOG_TAG, "not event number of color");
            return mapToNon2OrderBitColor(bArr, i2, i3, iArr, i4);
        }
        if (i4 == 1) {
            i5 = 1;
        } else if (i4 == 2) {
            i5 = 3;
        } else if (i4 == 4) {
            i5 = 15;
        } else if (i4 != 8) {
            i5 = 1;
        } else {
            i5 = 255;
        }
        int[] iArr2 = new int[i3];
        int i6 = 8 / i4;
        int i7 = 0;
        while (i7 < i3) {
            int i8 = i2 + 1;
            int i9 = bArr[i2];
            int i10 = 0;
            while (i10 < i6) {
                iArr2[i7] = iArr[(i9 >> (((i6 - i10) - 1) * i4)) & i5];
                i10++;
                i7++;
            }
            i2 = i8;
        }
        return iArr2;
    }

    private static int[] mapToNon2OrderBitColor(byte[] bArr, int i2, int i3, int[] iArr, int i4) {
        if (8 % i4 != 0) {
            return new int[i3];
        }
        Rlog.e(LOG_TAG, "not odd number of color");
        return mapTo2OrderBitColor(bArr, i2, i3, iArr, i4);
    }

    public static String networkNameToString(byte[] bArr, int i2, int i3) {
        int i4 = bArr[i2];
        String strGsm7BitPackedToString = "";
        if ((i4 & 128) == 128 && i3 >= 1) {
            int i5 = (i4 >>> 4) & 7;
            if (i5 == 0) {
                strGsm7BitPackedToString = GsmAlphabet.gsm7BitPackedToString(bArr, i2 + 1, (((i3 - 1) * 8) - (i4 & 7)) / 7);
            } else if (i5 == 1) {
                try {
                    strGsm7BitPackedToString = new String(bArr, i2 + 1, i3 - 1, "utf-16");
                } catch (UnsupportedEncodingException e2) {
                    Rlog.e(LOG_TAG, "implausible UnsupportedEncodingException", e2);
                }
            }
            byte b2 = bArr[i2];
        }
        return strGsm7BitPackedToString;
    }

    public static Bitmap parseToBnW(byte[] bArr, int i2) {
        int i3 = 0;
        int i4 = bArr[0] & 255;
        int i5 = bArr[1] & 255;
        int i6 = i4 * i5;
        int[] iArr = new int[i6];
        int i7 = 2;
        int i8 = 7;
        byte b2 = 0;
        while (i3 < i6) {
            if (i3 % 8 == 0) {
                int i9 = i7 + 1;
                byte b3 = bArr[i7];
                i8 = 7;
                i7 = i9;
                b2 = b3;
            }
            iArr[i3] = bitToRGB((b2 >> i8) & 1);
            i3++;
            i8--;
        }
        if (i3 != i6) {
            Rlog.e(LOG_TAG, "parse end and size error");
        }
        return Bitmap.createBitmap(iArr, i4, i5, Bitmap.Config.ARGB_8888);
    }

    public static Bitmap parseToRGB(byte[] bArr, int i2, boolean z2) {
        int i3 = bArr[0] & 255;
        int i4 = bArr[1] & 255;
        int i5 = bArr[2] & 255;
        int i6 = bArr[3] & 255;
        int[] clut = getCLUT(bArr, ((bArr[4] & 255) << 8) | (bArr[5] & 255), i6);
        if (true == z2) {
            clut[i6 - 1] = 0;
        }
        return Bitmap.createBitmap(8 % i5 == 0 ? mapTo2OrderBitColor(bArr, 6, i3 * i4, clut, i5) : mapToNon2OrderBitColor(bArr, 6, i3 * i4, clut, i5), i3, i4, Bitmap.Config.RGB_565);
    }

    public static String spdiPlmnBcdToString(byte[] bArr, int i2, int i3) {
        StringBuilder sb = new StringBuilder(i3 * 2);
        int i4 = bArr[i2] & 15;
        if (i4 > 9) {
            return sb.toString();
        }
        sb.append((char) (i4 + 48));
        int i5 = (bArr[i2] >> 4) & 15;
        if (i5 > 9) {
            return sb.toString();
        }
        sb.append((char) (i5 + 48));
        int i6 = i2 + 1;
        int i7 = bArr[i6] & 15;
        if (i7 > 9) {
            return sb.toString();
        }
        sb.append((char) (i7 + 48));
        int i8 = i2 + 2;
        int i9 = bArr[i8] & 15;
        if (i9 > 9) {
            return sb.toString();
        }
        sb.append((char) (i9 + 48));
        int i10 = (bArr[i8] >> 4) & 15;
        if (i10 > 9) {
            return sb.toString();
        }
        sb.append((char) (i10 + 48));
        int i11 = (bArr[i6] >> 4) & 15;
        if (i11 > 9) {
            return sb.toString();
        }
        sb.append((char) (i11 + 48));
        return sb.toString();
    }
}
