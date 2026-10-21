package com.google.common.net;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.text.format.DateFormat;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.escape.UnicodeEscaper;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible
@ElementTypesAreNonnullByDefault
public final class PercentEscaper extends UnicodeEscaper {
    private static final char[] PLUS_SIGN = {'+'};
    private static final char[] UPPER_HEX_DIGITS = "0123456789ABCDEF".toCharArray();
    private final boolean plusForSpace;
    private final boolean[] safeOctets;

    public PercentEscaper(String str, boolean z2) {
        Preconditions.checkNotNull(str);
        if (str.matches(".*[0-9A-Za-z].*")) {
            throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
        }
        String strConcat = str.concat("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
        if (z2 && strConcat.contains(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER)) {
            throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
        }
        this.plusForSpace = z2;
        this.safeOctets = createSafeOctets(strConcat);
    }

    private static boolean[] createSafeOctets(String str) {
        char[] charArray = str.toCharArray();
        int iMax = -1;
        for (char c : charArray) {
            iMax = Math.max((int) c, iMax);
        }
        boolean[] zArr = new boolean[iMax + 1];
        for (char c2 : charArray) {
            zArr[c2] = true;
        }
        return zArr;
    }

    @Override // com.google.common.escape.UnicodeEscaper, com.google.common.escape.Escaper
    public String escape(String str) {
        Preconditions.checkNotNull(str);
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            boolean[] zArr = this.safeOctets;
            if (cCharAt >= zArr.length || !zArr[cCharAt]) {
                return escapeSlow(str, i2);
            }
        }
        return str;
    }

    @Override // com.google.common.escape.UnicodeEscaper
    public int nextEscapeIndex(CharSequence charSequence, int i2, int i3) {
        Preconditions.checkNotNull(charSequence);
        while (i2 < i3) {
            char cCharAt = charSequence.charAt(i2);
            boolean[] zArr = this.safeOctets;
            if (cCharAt >= zArr.length || !zArr[cCharAt]) {
                break;
            }
            i2++;
        }
        return i2;
    }

    @Override // com.google.common.escape.UnicodeEscaper
    public char[] escape(int i2) {
        boolean[] zArr = this.safeOctets;
        if (i2 < zArr.length && zArr[i2]) {
            return null;
        }
        if (i2 == 32 && this.plusForSpace) {
            return PLUS_SIGN;
        }
        if (i2 <= 127) {
            char[] cArr = UPPER_HEX_DIGITS;
            return new char[]{'%', cArr[i2 >>> 4], cArr[i2 & 15]};
        }
        if (i2 <= 2047) {
            char[] cArr2 = UPPER_HEX_DIGITS;
            char[] cArr3 = {'%', cArr2[(i >>> 4) | 12], cArr2[i & 15], '%', cArr2[(i & 3) | 8], cArr2[i2 & 15]};
            int i3 = i2 >>> 4;
            int i4 = i3 >>> 2;
            return cArr3;
        }
        if (i2 <= 65535) {
            char[] cArr4 = UPPER_HEX_DIGITS;
            char[] cArr5 = {'%', DateFormat.DAY, cArr4[i >>> 2], '%', cArr4[(i & 3) | 8], cArr4[i & 15], '%', cArr4[(i & 3) | 8], cArr4[i2 & 15]};
            int i5 = i2 >>> 4;
            int i6 = i5 >>> 2;
            int i7 = i6 >>> 4;
            return cArr5;
        }
        if (i2 <= 1114111) {
            char[] cArr6 = UPPER_HEX_DIGITS;
            char[] cArr7 = {'%', 'F', cArr6[(i >>> 2) & 7], '%', cArr6[(i & 3) | 8], cArr6[i & 15], '%', cArr6[(i & 3) | 8], cArr6[i & 15], '%', cArr6[(i & 3) | 8], cArr6[i2 & 15]};
            int i8 = i2 >>> 4;
            int i9 = i8 >>> 2;
            int i10 = i9 >>> 4;
            int i11 = i10 >>> 2;
            int i12 = i11 >>> 4;
            return cArr7;
        }
        throw new IllegalArgumentException(c.d("Invalid unicode character value ", i2));
    }
}
