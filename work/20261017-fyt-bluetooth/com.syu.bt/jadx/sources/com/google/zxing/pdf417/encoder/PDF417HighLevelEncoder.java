package com.google.zxing.pdf417.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.ECIInput;
import com.google.zxing.common.MinimalECIInput;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class PDF417HighLevelEncoder {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final int BYTE_COMPACTION = 1;
    private static final Charset DEFAULT_ENCODING;
    private static final int ECI_CHARSET = 927;
    private static final int ECI_GENERAL_PURPOSE = 926;
    private static final int ECI_USER_DEFINED = 925;
    private static final int LATCH_TO_BYTE = 924;
    private static final int LATCH_TO_BYTE_PADDED = 901;
    private static final int LATCH_TO_NUMERIC = 902;
    private static final int LATCH_TO_TEXT = 900;
    private static final byte[] MIXED;
    private static final int NUMERIC_COMPACTION = 2;
    private static final byte[] PUNCTUATION;
    private static final int SHIFT_TO_BYTE = 913;
    private static final int SUBMODE_ALPHA = 0;
    private static final int SUBMODE_LOWER = 1;
    private static final int SUBMODE_MIXED = 2;
    private static final int SUBMODE_PUNCTUATION = 3;
    private static final int TEXT_COMPACTION = 0;
    private static final byte[] TEXT_MIXED_RAW;
    private static final byte[] TEXT_PUNCTUATION_RAW;

    static {
        $assertionsDisabled = !PDF417HighLevelEncoder.class.desiredAssertionStatus();
        TEXT_MIXED_RAW = new byte[]{48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};
        TEXT_PUNCTUATION_RAW = new byte[]{59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0};
        MIXED = new byte[128];
        PUNCTUATION = new byte[128];
        DEFAULT_ENCODING = StandardCharsets.ISO_8859_1;
        Arrays.fill(MIXED, (byte) -1);
        for (int i = 0; i < TEXT_MIXED_RAW.length; i++) {
            byte b = TEXT_MIXED_RAW[i];
            if (b > 0) {
                MIXED[b] = (byte) i;
            }
        }
        Arrays.fill(PUNCTUATION, (byte) -1);
        for (int i2 = 0; i2 < TEXT_PUNCTUATION_RAW.length; i2++) {
            byte b2 = TEXT_PUNCTUATION_RAW[i2];
            if (b2 > 0) {
                PUNCTUATION[b2] = (byte) i2;
            }
        }
    }

    private PDF417HighLevelEncoder() {
    }

    static String encodeHighLevel(String msg, Compaction compaction, Charset encoding, boolean autoECI) throws WriterException {
        ECIInput input;
        CharacterSetECI eci;
        if (msg.isEmpty()) {
            throw new WriterException("Empty message not allowed");
        }
        if (encoding == null && !autoECI) {
            for (int i = 0; i < msg.length(); i++) {
                if (msg.charAt(i) > 255) {
                    throw new WriterException("Non-encodable character detected: " + msg.charAt(i) + " (Unicode: " + ((int) msg.charAt(i)) + "). Consider specifying EncodeHintType.PDF417_AUTO_ECI and/or EncodeTypeHint.CHARACTER_SET.");
                }
            }
        }
        StringBuilder sb = new StringBuilder(msg.length());
        if (autoECI) {
            input = new MinimalECIInput(msg, encoding, -1);
        } else {
            input = new NoECIInput(msg);
            if (encoding == null) {
                encoding = DEFAULT_ENCODING;
            } else if (!DEFAULT_ENCODING.equals(encoding) && (eci = CharacterSetECI.getCharacterSetECI(encoding)) != null) {
                encodingECI(eci.getValue(), sb);
            }
        }
        int len = input.length();
        int p = 0;
        int textSubMode = 0;
        switch (compaction) {
            case TEXT:
                encodeText(input, 0, len, sb, 0);
                break;
            case BYTE:
                if (autoECI) {
                    encodeMultiECIBinary(input, 0, input.length(), 0, sb);
                } else {
                    byte[] msgBytes = input.toString().getBytes(encoding);
                    encodeBinary(msgBytes, 0, msgBytes.length, 1, sb);
                }
                break;
            case NUMERIC:
                sb.append((char) 902);
                encodeNumeric(input, 0, len, sb);
                break;
            default:
                int encodingMode = 0;
                while (p < len) {
                    while (p < len && input.isECI(p)) {
                        encodingECI(input.getECIValue(p), sb);
                        p++;
                    }
                    if (p >= len) {
                        break;
                    } else {
                        int n = determineConsecutiveDigitCount(input, p);
                        if (n >= 13) {
                            sb.append((char) 902);
                            encodingMode = 2;
                            textSubMode = 0;
                            encodeNumeric(input, p, n, sb);
                            p += n;
                        } else {
                            int t = determineConsecutiveTextCount(input, p);
                            if (t >= 5 || n == len) {
                                if (encodingMode != 0) {
                                    sb.append((char) 900);
                                    encodingMode = 0;
                                    textSubMode = 0;
                                }
                                textSubMode = encodeText(input, p, t, sb, textSubMode);
                                p += t;
                            } else {
                                int b = determineConsecutiveBinaryCount(input, p, autoECI ? null : encoding);
                                if (b == 0) {
                                    b = 1;
                                }
                                byte[] bytes = autoECI ? null : input.subSequence(p, p + b).toString().getBytes(encoding);
                                if (((bytes == null && b == 1) || (bytes != null && bytes.length == 1)) && encodingMode == 0) {
                                    if (autoECI) {
                                        encodeMultiECIBinary(input, p, 1, 0, sb);
                                    } else {
                                        encodeBinary(bytes, 0, 1, 0, sb);
                                    }
                                } else {
                                    if (autoECI) {
                                        encodeMultiECIBinary(input, p, p + b, encodingMode, sb);
                                    } else {
                                        encodeBinary(bytes, 0, bytes.length, encodingMode, sb);
                                    }
                                    encodingMode = 1;
                                    textSubMode = 0;
                                }
                                p += b;
                            }
                        }
                    }
                }
                break;
        }
        return sb.toString();
    }

    private static int encodeText(ECIInput input, int startpos, int count, StringBuilder sb, int initialSubmode) throws WriterException {
        StringBuilder tmp = new StringBuilder(count);
        int submode = initialSubmode;
        int idx = 0;
        while (true) {
            if (input.isECI(startpos + idx)) {
                encodingECI(input.getECIValue(startpos + idx), sb);
                idx++;
            } else {
                char ch = input.charAt(startpos + idx);
                switch (submode) {
                    case 0:
                        if (isAlphaUpper(ch)) {
                            if (ch == ' ') {
                                tmp.append((char) 26);
                            } else {
                                tmp.append((char) (ch - 'A'));
                            }
                        } else if (isAlphaLower(ch)) {
                            submode = 1;
                            tmp.append((char) 27);
                        } else if (isMixed(ch)) {
                            submode = 2;
                            tmp.append((char) 28);
                        } else {
                            tmp.append((char) 29);
                            tmp.append((char) PUNCTUATION[ch]);
                        }
                        break;
                    case 1:
                        if (isAlphaLower(ch)) {
                            if (ch == ' ') {
                                tmp.append((char) 26);
                            } else {
                                tmp.append((char) (ch - 'a'));
                            }
                        } else if (isAlphaUpper(ch)) {
                            tmp.append((char) 27);
                            tmp.append((char) (ch - 'A'));
                        } else if (isMixed(ch)) {
                            submode = 2;
                            tmp.append((char) 28);
                        } else {
                            tmp.append((char) 29);
                            tmp.append((char) PUNCTUATION[ch]);
                        }
                        break;
                    case 2:
                        if (isMixed(ch)) {
                            tmp.append((char) MIXED[ch]);
                        } else if (isAlphaUpper(ch)) {
                            submode = 0;
                            tmp.append((char) 28);
                        } else if (isAlphaLower(ch)) {
                            submode = 1;
                            tmp.append((char) 27);
                        } else if (startpos + idx + 1 < count && !input.isECI(startpos + idx + 1) && isPunctuation(input.charAt(startpos + idx + 1))) {
                            submode = 3;
                            tmp.append((char) 25);
                        } else {
                            tmp.append((char) 29);
                            tmp.append((char) PUNCTUATION[ch]);
                        }
                        break;
                    default:
                        if (isPunctuation(ch)) {
                            tmp.append((char) PUNCTUATION[ch]);
                        } else {
                            submode = 0;
                            tmp.append((char) 29);
                        }
                        break;
                }
                idx++;
                if (idx >= count) {
                    char h = 0;
                    int len = tmp.length();
                    for (int i = 0; i < len; i++) {
                        boolean odd = i % 2 != 0;
                        if (odd) {
                            h = (char) ((h * 30) + tmp.charAt(i));
                            sb.append(h);
                        } else {
                            h = tmp.charAt(i);
                        }
                    }
                    if (len % 2 != 0) {
                        sb.append((char) ((h * 30) + 29));
                    }
                    return submode;
                }
            }
        }
    }

    private static void encodeMultiECIBinary(ECIInput input, int startpos, int count, int startmode, StringBuilder sb) throws WriterException {
        int end = Math.min(startpos + count, input.length());
        int localStart = startpos;
        while (true) {
            if (localStart < end && input.isECI(localStart)) {
                encodingECI(input.getECIValue(localStart), sb);
                localStart++;
            } else {
                int localEnd = localStart;
                while (localEnd < end && !input.isECI(localEnd)) {
                    localEnd++;
                }
                int localCount = localEnd - localStart;
                if (localCount > 0) {
                    encodeBinary(subBytes(input, localStart, localEnd), 0, localCount, localStart == startpos ? startmode : 1, sb);
                    localStart = localEnd;
                } else {
                    return;
                }
            }
        }
    }

    static byte[] subBytes(ECIInput input, int start, int end) {
        int count = end - start;
        byte[] result = new byte[count];
        for (int i = start; i < end; i++) {
            result[i - start] = (byte) (input.charAt(i) & 255);
        }
        return result;
    }

    private static void encodeBinary(byte[] bytes, int startpos, int count, int startmode, StringBuilder sb) {
        if (count == 1 && startmode == 0) {
            sb.append((char) 913);
        } else if (count % 6 == 0) {
            sb.append((char) 924);
        } else {
            sb.append((char) 901);
        }
        int idx = startpos;
        if (count >= 6) {
            char[] chars = new char[5];
            while ((startpos + count) - idx >= 6) {
                long t = 0;
                for (int i = 0; i < 6; i++) {
                    t = (t << 8) + ((long) (bytes[idx + i] & 255));
                }
                for (int i2 = 0; i2 < 5; i2++) {
                    chars[i2] = (char) (t % 900);
                    t /= 900;
                }
                for (int i3 = chars.length - 1; i3 >= 0; i3--) {
                    sb.append(chars[i3]);
                }
                idx += 6;
            }
        }
        for (int i4 = idx; i4 < startpos + count; i4++) {
            int ch = bytes[i4] & 255;
            sb.append((char) ch);
        }
    }

    private static void encodeNumeric(ECIInput input, int startpos, int count, StringBuilder sb) {
        int idx = 0;
        StringBuilder tmp = new StringBuilder((count / 3) + 1);
        BigInteger num900 = BigInteger.valueOf(900L);
        BigInteger num0 = BigInteger.valueOf(0L);
        while (idx < count) {
            tmp.setLength(0);
            int len = Math.min(44, count - idx);
            String part = "1" + ((Object) input.subSequence(startpos + idx, startpos + idx + len));
            BigInteger bigint = new BigInteger(part);
            do {
                tmp.append((char) bigint.mod(num900).intValue());
                bigint = bigint.divide(num900);
            } while (!bigint.equals(num0));
            for (int i = tmp.length() - 1; i >= 0; i--) {
                sb.append(tmp.charAt(i));
            }
            idx += len;
        }
    }

    private static boolean isDigit(char ch) {
        return ch >= '0' && ch <= '9';
    }

    private static boolean isAlphaUpper(char ch) {
        return ch == ' ' || (ch >= 'A' && ch <= 'Z');
    }

    private static boolean isAlphaLower(char ch) {
        return ch == ' ' || (ch >= 'a' && ch <= 'z');
    }

    private static boolean isMixed(char ch) {
        return MIXED[ch] != -1;
    }

    private static boolean isPunctuation(char ch) {
        return PUNCTUATION[ch] != -1;
    }

    private static boolean isText(char ch) {
        return ch == '\t' || ch == '\n' || ch == '\r' || (ch >= ' ' && ch <= '~');
    }

    private static int determineConsecutiveDigitCount(ECIInput input, int startpos) {
        int count = 0;
        int len = input.length();
        int idx = startpos;
        if (idx < len) {
            while (idx < len && !input.isECI(idx) && isDigit(input.charAt(idx))) {
                count++;
                idx++;
            }
        }
        return count;
    }

    private static int determineConsecutiveTextCount(ECIInput input, int startpos) {
        int len = input.length();
        int idx = startpos;
        while (idx < len) {
            int numericCount = 0;
            while (numericCount < 13 && idx < len && !input.isECI(idx) && isDigit(input.charAt(idx))) {
                numericCount++;
                idx++;
            }
            if (numericCount >= 13) {
                return (idx - startpos) - numericCount;
            }
            if (numericCount <= 0) {
                if (input.isECI(idx) || !isText(input.charAt(idx))) {
                    break;
                }
                idx++;
            }
        }
        return idx - startpos;
    }

    private static int determineConsecutiveBinaryCount(ECIInput input, int startpos, Charset encoding) throws WriterException {
        CharsetEncoder encoder = encoding == null ? null : encoding.newEncoder();
        int len = input.length();
        int idx = startpos;
        while (idx < len) {
            int numericCount = 0;
            int i = idx;
            while (numericCount < 13 && !input.isECI(i) && isDigit(input.charAt(i))) {
                numericCount++;
                i = idx + numericCount;
                if (i >= len) {
                    break;
                }
            }
            if (numericCount >= 13) {
                return idx - startpos;
            }
            if (encoder != null && !encoder.canEncode(input.charAt(idx))) {
                if (!$assertionsDisabled && !(input instanceof NoECIInput)) {
                    throw new AssertionError();
                }
                char ch = input.charAt(idx);
                throw new WriterException("Non-encodable character detected: " + ch + " (Unicode: " + ((int) ch) + ')');
            }
            idx++;
        }
        return idx - startpos;
    }

    private static void encodingECI(int eci, StringBuilder sb) throws WriterException {
        if (eci >= 0 && eci < LATCH_TO_TEXT) {
            sb.append((char) 927);
            sb.append((char) eci);
        } else if (eci < 810900) {
            sb.append((char) 926);
            sb.append((char) ((eci / LATCH_TO_TEXT) - 1));
            sb.append((char) (eci % LATCH_TO_TEXT));
        } else {
            if (eci < 811800) {
                sb.append((char) 925);
                sb.append((char) (810900 - eci));
                return;
            }
            throw new WriterException("ECI number not in valid range from 0..811799, but was " + eci);
        }
    }

    private static final class NoECIInput implements ECIInput {
        String input;

        private NoECIInput(String input) {
            this.input = input;
        }

        @Override // com.google.zxing.common.ECIInput
        public int length() {
            return this.input.length();
        }

        @Override // com.google.zxing.common.ECIInput
        public char charAt(int index) {
            return this.input.charAt(index);
        }

        @Override // com.google.zxing.common.ECIInput
        public boolean isECI(int index) {
            return false;
        }

        @Override // com.google.zxing.common.ECIInput
        public int getECIValue(int index) {
            return -1;
        }

        @Override // com.google.zxing.common.ECIInput
        public boolean haveNCharacters(int index, int n) {
            return index + n <= this.input.length();
        }

        @Override // com.google.zxing.common.ECIInput
        public CharSequence subSequence(int start, int end) {
            return this.input.subSequence(start, end);
        }

        public String toString() {
            return this.input;
        }
    }
}
