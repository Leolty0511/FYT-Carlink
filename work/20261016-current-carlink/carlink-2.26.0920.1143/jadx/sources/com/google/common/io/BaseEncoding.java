package com.google.common.io;

import android.app.m;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
public abstract class BaseEncoding {
    private static final BaseEncoding BASE64 = new Base64Encoding("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');
    private static final BaseEncoding BASE64_URL = new Base64Encoding("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');
    private static final BaseEncoding BASE32 = new StandardBaseEncoding("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');
    private static final BaseEncoding BASE32_HEX = new StandardBaseEncoding("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
    private static final BaseEncoding BASE16 = new Base16Encoding("base16()", "0123456789ABCDEF");

    public static final class Alphabet {
        final int bitsPerChar;
        final int bytesPerChunk;
        private final char[] chars;
        final int charsPerChunk;
        private final byte[] decodabet;
        private final boolean ignoreCase;
        final int mask;
        private final String name;
        private final boolean[] validPadding;

        public Alphabet(String str, char[] cArr) {
            this(str, cArr, decodabetFor(cArr), false);
        }

        private static byte[] decodabetFor(char[] cArr) {
            byte[] bArr = new byte[128];
            Arrays.fill(bArr, (byte) -1);
            for (int i2 = 0; i2 < cArr.length; i2++) {
                char c = cArr[i2];
                boolean z2 = true;
                Preconditions.checkArgument(c < 128, "Non-ASCII character: %s", c);
                if (bArr[c] != -1) {
                    z2 = false;
                }
                Preconditions.checkArgument(z2, "Duplicate character: %s", c);
                bArr[c] = (byte) i2;
            }
            return bArr;
        }

        private boolean hasLowerCase() {
            for (char c : this.chars) {
                if (Ascii.isLowerCase(c)) {
                    return true;
                }
            }
            return false;
        }

        private boolean hasUpperCase() {
            for (char c : this.chars) {
                if (Ascii.isUpperCase(c)) {
                    return true;
                }
            }
            return false;
        }

        public boolean canDecode(char c) {
            return c <= 127 && this.decodabet[c] != -1;
        }

        public int decode(char c) throws DecodingException {
            if (c > 127) {
                throw new DecodingException(m.d(c, new StringBuilder("Unrecognized character: 0x")));
            }
            byte b2 = this.decodabet[c];
            if (b2 != -1) {
                return b2;
            }
            if (c <= ' ' || c == 127) {
                throw new DecodingException(m.d(c, new StringBuilder("Unrecognized character: 0x")));
            }
            throw new DecodingException("Unrecognized character: " + c);
        }

        public char encode(int i2) {
            return this.chars[i2];
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Alphabet)) {
                return false;
            }
            Alphabet alphabet = (Alphabet) obj;
            return this.ignoreCase == alphabet.ignoreCase && Arrays.equals(this.chars, alphabet.chars);
        }

        public int hashCode() {
            return Arrays.hashCode(this.chars) + (this.ignoreCase ? 1231 : 1237);
        }

        public Alphabet ignoreCase() {
            if (this.ignoreCase) {
                return this;
            }
            byte[] bArr = this.decodabet;
            byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
            int i2 = 65;
            while (true) {
                if (i2 > 90) {
                    return new Alphabet(android.accessibilityservice.c.n(new StringBuilder(), this.name, ".ignoreCase()"), this.chars, bArrCopyOf, true);
                }
                int i3 = i2 | 32;
                byte[] bArr2 = this.decodabet;
                byte b2 = bArr2[i2];
                byte b3 = bArr2[i3];
                if (b2 == -1) {
                    bArrCopyOf[i2] = b3;
                } else {
                    Preconditions.checkState(b3 == -1, "Can't ignoreCase() since '%s' and '%s' encode different values", (char) i2, (char) i3);
                    bArrCopyOf[i3] = b2;
                }
                i2++;
            }
        }

        public boolean isValidPaddingStartPosition(int i2) {
            return this.validPadding[i2 % this.charsPerChunk];
        }

        public Alphabet lowerCase() {
            if (!hasUpperCase()) {
                return this;
            }
            Preconditions.checkState(!hasLowerCase(), "Cannot call lowerCase() on a mixed-case alphabet");
            char[] cArr = new char[this.chars.length];
            int i2 = 0;
            while (true) {
                char[] cArr2 = this.chars;
                if (i2 >= cArr2.length) {
                    break;
                }
                cArr[i2] = Ascii.toLowerCase(cArr2[i2]);
                i2++;
            }
            Alphabet alphabet = new Alphabet(android.accessibilityservice.c.n(new StringBuilder(), this.name, ".lowerCase()"), cArr);
            return this.ignoreCase ? alphabet.ignoreCase() : alphabet;
        }

        public boolean matches(char c) {
            byte[] bArr = this.decodabet;
            return c < bArr.length && bArr[c] != -1;
        }

        public String toString() {
            return this.name;
        }

        public Alphabet upperCase() {
            if (!hasLowerCase()) {
                return this;
            }
            Preconditions.checkState(!hasUpperCase(), "Cannot call upperCase() on a mixed-case alphabet");
            char[] cArr = new char[this.chars.length];
            int i2 = 0;
            while (true) {
                char[] cArr2 = this.chars;
                if (i2 >= cArr2.length) {
                    break;
                }
                cArr[i2] = Ascii.toUpperCase(cArr2[i2]);
                i2++;
            }
            Alphabet alphabet = new Alphabet(android.accessibilityservice.c.n(new StringBuilder(), this.name, ".upperCase()"), cArr);
            return this.ignoreCase ? alphabet.ignoreCase() : alphabet;
        }

        private Alphabet(String str, char[] cArr, byte[] bArr, boolean z2) {
            this.name = (String) Preconditions.checkNotNull(str);
            this.chars = (char[]) Preconditions.checkNotNull(cArr);
            try {
                int iLog2 = IntMath.log2(cArr.length, RoundingMode.UNNECESSARY);
                this.bitsPerChar = iLog2;
                int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iLog2);
                int i2 = 1 << (3 - iNumberOfTrailingZeros);
                this.charsPerChunk = i2;
                this.bytesPerChunk = iLog2 >> iNumberOfTrailingZeros;
                this.mask = cArr.length - 1;
                this.decodabet = bArr;
                boolean[] zArr = new boolean[i2];
                for (int i3 = 0; i3 < this.bytesPerChunk; i3++) {
                    zArr[IntMath.divide(i3 * 8, this.bitsPerChar, RoundingMode.CEILING)] = true;
                }
                this.validPadding = zArr;
                this.ignoreCase = z2;
            } catch (ArithmeticException e2) {
                throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e2);
            }
        }
    }

    public static final class Base16Encoding extends StandardBaseEncoding {
        final char[] encoding;

        public Base16Encoding(String str, String str2) {
            this(new Alphabet(str, str2.toCharArray()));
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public int decodeTo(byte[] bArr, CharSequence charSequence) throws DecodingException {
            Preconditions.checkNotNull(bArr);
            if (charSequence.length() % 2 == 1) {
                throw new DecodingException("Invalid input length " + charSequence.length());
            }
            int i2 = 0;
            int i3 = 0;
            while (i2 < charSequence.length()) {
                bArr[i3] = (byte) ((this.alphabet.decode(charSequence.charAt(i2)) << 4) | this.alphabet.decode(charSequence.charAt(i2 + 1)));
                i2 += 2;
                i3++;
            }
            return i3;
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public void encodeTo(Appendable appendable, byte[] bArr, int i2, int i3) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i2, i2 + i3, bArr.length);
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = bArr[i2 + i4] & 255;
                appendable.append(this.encoding[i5]);
                appendable.append(this.encoding[i5 | 256]);
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding
        public BaseEncoding newInstance(Alphabet alphabet, Character ch) {
            return new Base16Encoding(alphabet);
        }

        private Base16Encoding(Alphabet alphabet) {
            super(alphabet, null);
            this.encoding = new char[512];
            Preconditions.checkArgument(alphabet.chars.length == 16);
            for (int i2 = 0; i2 < 256; i2++) {
                this.encoding[i2] = alphabet.encode(i2 >>> 4);
                this.encoding[i2 | 256] = alphabet.encode(i2 & 15);
            }
        }
    }

    public static final class Base64Encoding extends StandardBaseEncoding {
        public Base64Encoding(String str, String str2, Character ch) {
            this(new Alphabet(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public int decodeTo(byte[] bArr, CharSequence charSequence) throws DecodingException {
            Preconditions.checkNotNull(bArr);
            CharSequence charSequenceTrimTrailingPadding = trimTrailingPadding(charSequence);
            if (!this.alphabet.isValidPaddingStartPosition(charSequenceTrimTrailingPadding.length())) {
                throw new DecodingException("Invalid input length " + charSequenceTrimTrailingPadding.length());
            }
            int i2 = 0;
            int i3 = 0;
            while (i2 < charSequenceTrimTrailingPadding.length()) {
                int i4 = i2 + 1;
                int i5 = i4 + 1;
                int iDecode = (this.alphabet.decode(charSequenceTrimTrailingPadding.charAt(i2)) << 18) | (this.alphabet.decode(charSequenceTrimTrailingPadding.charAt(i4)) << 12);
                int i6 = i3 + 1;
                bArr[i3] = (byte) (iDecode >>> 16);
                if (i5 < charSequenceTrimTrailingPadding.length()) {
                    int i7 = i5 + 1;
                    int iDecode2 = iDecode | (this.alphabet.decode(charSequenceTrimTrailingPadding.charAt(i5)) << 6);
                    i3 = i6 + 1;
                    bArr[i6] = (byte) ((iDecode2 >>> 8) & 255);
                    if (i7 < charSequenceTrimTrailingPadding.length()) {
                        i5 = i7 + 1;
                        i6 = i3 + 1;
                        bArr[i3] = (byte) ((iDecode2 | this.alphabet.decode(charSequenceTrimTrailingPadding.charAt(i7))) & 255);
                    } else {
                        i2 = i7;
                    }
                }
                i3 = i6;
                i2 = i5;
            }
            return i3;
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public void encodeTo(Appendable appendable, byte[] bArr, int i2, int i3) throws IOException {
            Preconditions.checkNotNull(appendable);
            int i4 = i2 + i3;
            Preconditions.checkPositionIndexes(i2, i4, bArr.length);
            while (i3 >= 3) {
                int i5 = i2 + 1;
                int i6 = i5 + 1;
                int i7 = ((bArr[i2] & 255) << 16) | ((bArr[i5] & 255) << 8) | (bArr[i6] & 255);
                appendable.append(this.alphabet.encode(i7 >>> 18));
                appendable.append(this.alphabet.encode((i7 >>> 12) & 63));
                appendable.append(this.alphabet.encode((i7 >>> 6) & 63));
                appendable.append(this.alphabet.encode(i7 & 63));
                i3 -= 3;
                i2 = i6 + 1;
            }
            if (i2 < i4) {
                encodeChunkTo(appendable, bArr, i2, i4 - i2);
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding
        public BaseEncoding newInstance(Alphabet alphabet, Character ch) {
            return new Base64Encoding(alphabet, ch);
        }

        private Base64Encoding(Alphabet alphabet, Character ch) {
            super(alphabet, ch);
            Preconditions.checkArgument(alphabet.chars.length == 64);
        }
    }

    public static final class DecodingException extends IOException {
        public DecodingException(String str) {
            super(str);
        }

        public DecodingException(Throwable th) {
            super(th);
        }
    }

    public static final class SeparatedBaseEncoding extends BaseEncoding {
        private final int afterEveryChars;
        private final BaseEncoding delegate;
        private final String separator;

        public SeparatedBaseEncoding(BaseEncoding baseEncoding, String str, int i2) {
            this.delegate = (BaseEncoding) Preconditions.checkNotNull(baseEncoding);
            this.separator = (String) Preconditions.checkNotNull(str);
            this.afterEveryChars = i2;
            Preconditions.checkArgument(i2 > 0, "Cannot add a separator after every %s chars", i2);
        }

        @Override // com.google.common.io.BaseEncoding
        public boolean canDecode(CharSequence charSequence) {
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < charSequence.length(); i2++) {
                char cCharAt = charSequence.charAt(i2);
                if (this.separator.indexOf(cCharAt) < 0) {
                    sb.append(cCharAt);
                }
            }
            return this.delegate.canDecode(sb);
        }

        @Override // com.google.common.io.BaseEncoding
        public int decodeTo(byte[] bArr, CharSequence charSequence) {
            StringBuilder sb = new StringBuilder(charSequence.length());
            for (int i2 = 0; i2 < charSequence.length(); i2++) {
                char cCharAt = charSequence.charAt(i2);
                if (this.separator.indexOf(cCharAt) < 0) {
                    sb.append(cCharAt);
                }
            }
            return this.delegate.decodeTo(bArr, sb);
        }

        @Override // com.google.common.io.BaseEncoding
        @J2ktIncompatible
        @GwtIncompatible
        public InputStream decodingStream(Reader reader) {
            return this.delegate.decodingStream(BaseEncoding.ignoringReader(reader, this.separator));
        }

        @Override // com.google.common.io.BaseEncoding
        public void encodeTo(Appendable appendable, byte[] bArr, int i2, int i3) {
            this.delegate.encodeTo(BaseEncoding.separatingAppendable(appendable, this.separator, this.afterEveryChars), bArr, i2, i3);
        }

        @Override // com.google.common.io.BaseEncoding
        @J2ktIncompatible
        @GwtIncompatible
        public OutputStream encodingStream(Writer writer) {
            return this.delegate.encodingStream(BaseEncoding.separatingWriter(writer, this.separator, this.afterEveryChars));
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding ignoreCase() {
            return this.delegate.ignoreCase().withSeparator(this.separator, this.afterEveryChars);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding lowerCase() {
            return this.delegate.lowerCase().withSeparator(this.separator, this.afterEveryChars);
        }

        @Override // com.google.common.io.BaseEncoding
        public int maxDecodedSize(int i2) {
            return this.delegate.maxDecodedSize(i2);
        }

        @Override // com.google.common.io.BaseEncoding
        public int maxEncodedSize(int i2) {
            int iMaxEncodedSize = this.delegate.maxEncodedSize(i2);
            return (IntMath.divide(Math.max(0, iMaxEncodedSize - 1), this.afterEveryChars, RoundingMode.FLOOR) * this.separator.length()) + iMaxEncodedSize;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding omitPadding() {
            return this.delegate.omitPadding().withSeparator(this.separator, this.afterEveryChars);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.delegate);
            sb.append(".withSeparator(\"");
            sb.append(this.separator);
            sb.append("\", ");
            return android.accessibilityservice.c.m(sb, this.afterEveryChars, ")");
        }

        @Override // com.google.common.io.BaseEncoding
        public CharSequence trimTrailingPadding(CharSequence charSequence) {
            return this.delegate.trimTrailingPadding(charSequence);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding upperCase() {
            return this.delegate.upperCase().withSeparator(this.separator, this.afterEveryChars);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withPadChar(char c) {
            return this.delegate.withPadChar(c).withSeparator(this.separator, this.afterEveryChars);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withSeparator(String str, int i2) {
            throw new UnsupportedOperationException("Already have a separator");
        }
    }

    public static class StandardBaseEncoding extends BaseEncoding {
        final Alphabet alphabet;

        @LazyInit
        private volatile BaseEncoding ignoreCase;

        @LazyInit
        private volatile BaseEncoding lowerCase;
        final Character paddingChar;

        @LazyInit
        private volatile BaseEncoding upperCase;

        public StandardBaseEncoding(String str, String str2, Character ch) {
            this(new Alphabet(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.io.BaseEncoding
        public boolean canDecode(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            CharSequence charSequenceTrimTrailingPadding = trimTrailingPadding(charSequence);
            if (!this.alphabet.isValidPaddingStartPosition(charSequenceTrimTrailingPadding.length())) {
                return false;
            }
            for (int i2 = 0; i2 < charSequenceTrimTrailingPadding.length(); i2++) {
                if (!this.alphabet.canDecode(charSequenceTrimTrailingPadding.charAt(i2))) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.BaseEncoding
        public int decodeTo(byte[] bArr, CharSequence charSequence) throws DecodingException {
            Alphabet alphabet;
            Preconditions.checkNotNull(bArr);
            CharSequence charSequenceTrimTrailingPadding = trimTrailingPadding(charSequence);
            if (!this.alphabet.isValidPaddingStartPosition(charSequenceTrimTrailingPadding.length())) {
                throw new DecodingException("Invalid input length " + charSequenceTrimTrailingPadding.length());
            }
            int i2 = 0;
            int i3 = 0;
            while (i2 < charSequenceTrimTrailingPadding.length()) {
                long jDecode = 0;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    alphabet = this.alphabet;
                    if (i4 >= alphabet.charsPerChunk) {
                        break;
                    }
                    jDecode <<= alphabet.bitsPerChar;
                    if (i2 + i4 < charSequenceTrimTrailingPadding.length()) {
                        jDecode |= (long) this.alphabet.decode(charSequenceTrimTrailingPadding.charAt(i5 + i2));
                        i5++;
                    }
                    i4++;
                }
                int i6 = alphabet.bytesPerChunk;
                int i7 = (i6 * 8) - (i5 * alphabet.bitsPerChar);
                int i8 = (i6 - 1) * 8;
                while (i8 >= i7) {
                    bArr[i3] = (byte) ((jDecode >>> i8) & 255);
                    i8 -= 8;
                    i3++;
                }
                i2 += this.alphabet.charsPerChunk;
            }
            return i3;
        }

        @Override // com.google.common.io.BaseEncoding
        @J2ktIncompatible
        @GwtIncompatible
        public InputStream decodingStream(final Reader reader) {
            Preconditions.checkNotNull(reader);
            return new InputStream() { // from class: com.google.common.io.BaseEncoding.StandardBaseEncoding.2
                int bitBuffer = 0;
                int bitBufferLength = 0;
                int readChars = 0;
                boolean hitPadding = false;

                @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    reader.close();
                }

                @Override // java.io.InputStream
                public int read() throws IOException {
                    int i2;
                    while (true) {
                        int i3 = reader.read();
                        if (i3 == -1) {
                            if (this.hitPadding || StandardBaseEncoding.this.alphabet.isValidPaddingStartPosition(this.readChars)) {
                                return -1;
                            }
                            throw new DecodingException("Invalid input length " + this.readChars);
                        }
                        this.readChars++;
                        char c = (char) i3;
                        Character ch = StandardBaseEncoding.this.paddingChar;
                        if (ch == null || ch.charValue() != c) {
                            if (this.hitPadding) {
                                throw new DecodingException("Expected padding character but found '" + c + "' at index " + this.readChars);
                            }
                            int i4 = this.bitBuffer;
                            Alphabet alphabet = StandardBaseEncoding.this.alphabet;
                            int i5 = i4 << alphabet.bitsPerChar;
                            this.bitBuffer = i5;
                            int iDecode = alphabet.decode(c) | i5;
                            this.bitBuffer = iDecode;
                            int i6 = this.bitBufferLength + StandardBaseEncoding.this.alphabet.bitsPerChar;
                            this.bitBufferLength = i6;
                            if (i6 >= 8) {
                                int i7 = i6 - 8;
                                this.bitBufferLength = i7;
                                return (iDecode >> i7) & 255;
                            }
                        } else {
                            if (!this.hitPadding && ((i2 = this.readChars) == 1 || !StandardBaseEncoding.this.alphabet.isValidPaddingStartPosition(i2 - 1))) {
                                throw new DecodingException("Padding cannot start at index " + this.readChars);
                            }
                            this.hitPadding = true;
                        }
                    }
                }

                @Override // java.io.InputStream
                public int read(byte[] bArr, int i2, int i3) throws IOException {
                    int i4 = i3 + i2;
                    Preconditions.checkPositionIndexes(i2, i4, bArr.length);
                    int i5 = i2;
                    while (i5 < i4) {
                        int i6 = read();
                        if (i6 == -1) {
                            int i7 = i5 - i2;
                            if (i7 == 0) {
                                return -1;
                            }
                            return i7;
                        }
                        bArr[i5] = (byte) i6;
                        i5++;
                    }
                    return i5 - i2;
                }
            };
        }

        public void encodeChunkTo(Appendable appendable, byte[] bArr, int i2, int i3) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i2, i2 + i3, bArr.length);
            int i4 = 0;
            Preconditions.checkArgument(i3 <= this.alphabet.bytesPerChunk);
            long j2 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                j2 = (j2 | ((long) (bArr[i2 + i5] & 255))) << 8;
            }
            int i6 = ((i3 + 1) * 8) - this.alphabet.bitsPerChar;
            while (i4 < i3 * 8) {
                Alphabet alphabet = this.alphabet;
                appendable.append(alphabet.encode(((int) (j2 >>> (i6 - i4))) & alphabet.mask));
                i4 += this.alphabet.bitsPerChar;
            }
            if (this.paddingChar != null) {
                while (i4 < this.alphabet.bytesPerChunk * 8) {
                    appendable.append(this.paddingChar.charValue());
                    i4 += this.alphabet.bitsPerChar;
                }
            }
        }

        @Override // com.google.common.io.BaseEncoding
        public void encodeTo(Appendable appendable, byte[] bArr, int i2, int i3) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i2, i2 + i3, bArr.length);
            int i4 = 0;
            while (i4 < i3) {
                encodeChunkTo(appendable, bArr, i2 + i4, Math.min(this.alphabet.bytesPerChunk, i3 - i4));
                i4 += this.alphabet.bytesPerChunk;
            }
        }

        @Override // com.google.common.io.BaseEncoding
        @J2ktIncompatible
        @GwtIncompatible
        public OutputStream encodingStream(final Writer writer) {
            Preconditions.checkNotNull(writer);
            return new OutputStream() { // from class: com.google.common.io.BaseEncoding.StandardBaseEncoding.1
                int bitBuffer = 0;
                int bitBufferLength = 0;
                int writtenChars = 0;

                @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    int i2 = this.bitBufferLength;
                    if (i2 > 0) {
                        int i3 = this.bitBuffer;
                        Alphabet alphabet = StandardBaseEncoding.this.alphabet;
                        writer.write(alphabet.encode((i3 << (alphabet.bitsPerChar - i2)) & alphabet.mask));
                        this.writtenChars++;
                        if (StandardBaseEncoding.this.paddingChar != null) {
                            while (true) {
                                int i4 = this.writtenChars;
                                StandardBaseEncoding standardBaseEncoding = StandardBaseEncoding.this;
                                if (i4 % standardBaseEncoding.alphabet.charsPerChunk == 0) {
                                    break;
                                }
                                writer.write(standardBaseEncoding.paddingChar.charValue());
                                this.writtenChars++;
                            }
                        }
                    }
                    writer.close();
                }

                @Override // java.io.OutputStream, java.io.Flushable
                public void flush() throws IOException {
                    writer.flush();
                }

                @Override // java.io.OutputStream
                public void write(int i2) throws IOException {
                    this.bitBuffer = (i2 & 255) | (this.bitBuffer << 8);
                    this.bitBufferLength += 8;
                    while (true) {
                        int i3 = this.bitBufferLength;
                        Alphabet alphabet = StandardBaseEncoding.this.alphabet;
                        int i4 = alphabet.bitsPerChar;
                        if (i3 < i4) {
                            return;
                        }
                        writer.write(alphabet.encode((this.bitBuffer >> (i3 - i4)) & alphabet.mask));
                        this.writtenChars++;
                        this.bitBufferLength -= StandardBaseEncoding.this.alphabet.bitsPerChar;
                    }
                }
            };
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof StandardBaseEncoding)) {
                return false;
            }
            StandardBaseEncoding standardBaseEncoding = (StandardBaseEncoding) obj;
            return this.alphabet.equals(standardBaseEncoding.alphabet) && Objects.equals(this.paddingChar, standardBaseEncoding.paddingChar);
        }

        public int hashCode() {
            return this.alphabet.hashCode() ^ Objects.hashCode(this.paddingChar);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding ignoreCase() {
            BaseEncoding baseEncodingNewInstance = this.ignoreCase;
            if (baseEncodingNewInstance == null) {
                Alphabet alphabetIgnoreCase = this.alphabet.ignoreCase();
                baseEncodingNewInstance = alphabetIgnoreCase == this.alphabet ? this : newInstance(alphabetIgnoreCase, this.paddingChar);
                this.ignoreCase = baseEncodingNewInstance;
            }
            return baseEncodingNewInstance;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding lowerCase() {
            BaseEncoding baseEncodingNewInstance = this.lowerCase;
            if (baseEncodingNewInstance == null) {
                Alphabet alphabetLowerCase = this.alphabet.lowerCase();
                baseEncodingNewInstance = alphabetLowerCase == this.alphabet ? this : newInstance(alphabetLowerCase, this.paddingChar);
                this.lowerCase = baseEncodingNewInstance;
            }
            return baseEncodingNewInstance;
        }

        @Override // com.google.common.io.BaseEncoding
        public int maxDecodedSize(int i2) {
            return (int) (((((long) this.alphabet.bitsPerChar) * ((long) i2)) + 7) / 8);
        }

        @Override // com.google.common.io.BaseEncoding
        public int maxEncodedSize(int i2) {
            Alphabet alphabet = this.alphabet;
            return IntMath.divide(i2, alphabet.bytesPerChunk, RoundingMode.CEILING) * alphabet.charsPerChunk;
        }

        public BaseEncoding newInstance(Alphabet alphabet, Character ch) {
            return new StandardBaseEncoding(alphabet, ch);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding omitPadding() {
            return this.paddingChar == null ? this : newInstance(this.alphabet, null);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            sb.append(this.alphabet);
            if (8 % this.alphabet.bitsPerChar != 0) {
                if (this.paddingChar == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(this.paddingChar);
                    sb.append("')");
                }
            }
            return sb.toString();
        }

        @Override // com.google.common.io.BaseEncoding
        public CharSequence trimTrailingPadding(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            Character ch = this.paddingChar;
            if (ch == null) {
                return charSequence;
            }
            char cCharValue = ch.charValue();
            int length = charSequence.length() - 1;
            while (length >= 0 && charSequence.charAt(length) == cCharValue) {
                length--;
            }
            return charSequence.subSequence(0, length + 1);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding upperCase() {
            BaseEncoding baseEncodingNewInstance = this.upperCase;
            if (baseEncodingNewInstance == null) {
                Alphabet alphabetUpperCase = this.alphabet.upperCase();
                baseEncodingNewInstance = alphabetUpperCase == this.alphabet ? this : newInstance(alphabetUpperCase, this.paddingChar);
                this.upperCase = baseEncodingNewInstance;
            }
            return baseEncodingNewInstance;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withPadChar(char c) {
            Character ch;
            return (8 % this.alphabet.bitsPerChar == 0 || ((ch = this.paddingChar) != null && ch.charValue() == c)) ? this : newInstance(this.alphabet, Character.valueOf(c));
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withSeparator(String str, int i2) {
            for (int i3 = 0; i3 < str.length(); i3++) {
                Preconditions.checkArgument(!this.alphabet.matches(str.charAt(i3)), "Separator (%s) cannot contain alphabet characters", str);
            }
            Character ch = this.paddingChar;
            if (ch != null) {
                Preconditions.checkArgument(str.indexOf(ch.charValue()) < 0, "Separator (%s) cannot contain padding character", str);
            }
            return new SeparatedBaseEncoding(this, str, i2);
        }

        public StandardBaseEncoding(Alphabet alphabet, Character ch) {
            this.alphabet = (Alphabet) Preconditions.checkNotNull(alphabet);
            Preconditions.checkArgument(ch == null || !alphabet.matches(ch.charValue()), "Padding character %s was already in alphabet", ch);
            this.paddingChar = ch;
        }
    }

    public static BaseEncoding base16() {
        return BASE16;
    }

    public static BaseEncoding base32() {
        return BASE32;
    }

    public static BaseEncoding base32Hex() {
        return BASE32_HEX;
    }

    public static BaseEncoding base64() {
        return BASE64;
    }

    public static BaseEncoding base64Url() {
        return BASE64_URL;
    }

    private static byte[] extract(byte[] bArr, int i2) {
        if (i2 == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        return bArr2;
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static Reader ignoringReader(final Reader reader, final String str) {
        Preconditions.checkNotNull(reader);
        Preconditions.checkNotNull(str);
        return new Reader() { // from class: com.google.common.io.BaseEncoding.3
            @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                reader.close();
            }

            @Override // java.io.Reader
            public int read() throws IOException {
                int i2;
                do {
                    i2 = reader.read();
                    if (i2 == -1) {
                        break;
                    }
                } while (str.indexOf((char) i2) >= 0);
                return i2;
            }

            @Override // java.io.Reader
            public int read(char[] cArr, int i2, int i3) {
                throw new UnsupportedOperationException();
            }
        };
    }

    public static Appendable separatingAppendable(Appendable appendable, String str, int i2) {
        Preconditions.checkNotNull(appendable);
        Preconditions.checkNotNull(str);
        Preconditions.checkArgument(i2 > 0);
        return new Appendable(i2, appendable, str) { // from class: com.google.common.io.BaseEncoding.4
            int charsUntilSeparator;
            final /* synthetic */ int val$afterEveryChars;
            final /* synthetic */ Appendable val$delegate;
            final /* synthetic */ String val$separator;

            {
                this.val$afterEveryChars = i2;
                this.val$delegate = appendable;
                this.val$separator = str;
                this.charsUntilSeparator = i2;
            }

            @Override // java.lang.Appendable
            public Appendable append(char c) throws IOException {
                if (this.charsUntilSeparator == 0) {
                    this.val$delegate.append(this.val$separator);
                    this.charsUntilSeparator = this.val$afterEveryChars;
                }
                this.val$delegate.append(c);
                this.charsUntilSeparator--;
                return this;
            }

            @Override // java.lang.Appendable
            public Appendable append(CharSequence charSequence, int i3, int i4) {
                throw new UnsupportedOperationException();
            }

            @Override // java.lang.Appendable
            public Appendable append(CharSequence charSequence) {
                throw new UnsupportedOperationException();
            }
        };
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static Writer separatingWriter(final Writer writer, String str, int i2) {
        final Appendable appendableSeparatingAppendable = separatingAppendable(writer, str, i2);
        return new Writer() { // from class: com.google.common.io.BaseEncoding.5
            @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                writer.close();
            }

            @Override // java.io.Writer, java.io.Flushable
            public void flush() throws IOException {
                writer.flush();
            }

            @Override // java.io.Writer
            public void write(int i3) throws IOException {
                appendableSeparatingAppendable.append((char) i3);
            }

            @Override // java.io.Writer
            public void write(char[] cArr, int i3, int i4) {
                throw new UnsupportedOperationException();
            }
        };
    }

    public abstract boolean canDecode(CharSequence charSequence);

    public final byte[] decode(CharSequence charSequence) {
        try {
            return decodeChecked(charSequence);
        } catch (DecodingException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public final byte[] decodeChecked(CharSequence charSequence) {
        CharSequence charSequenceTrimTrailingPadding = trimTrailingPadding(charSequence);
        byte[] bArr = new byte[maxDecodedSize(charSequenceTrimTrailingPadding.length())];
        return extract(bArr, decodeTo(bArr, charSequenceTrimTrailingPadding));
    }

    public abstract int decodeTo(byte[] bArr, CharSequence charSequence);

    @J2ktIncompatible
    @GwtIncompatible
    public final ByteSource decodingSource(final CharSource charSource) {
        Preconditions.checkNotNull(charSource);
        return new ByteSource() { // from class: com.google.common.io.BaseEncoding.2
            @Override // com.google.common.io.ByteSource
            public InputStream openStream() {
                return BaseEncoding.this.decodingStream(charSource.openStream());
            }
        };
    }

    @J2ktIncompatible
    @GwtIncompatible
    public abstract InputStream decodingStream(Reader reader);

    public String encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length);
    }

    public abstract void encodeTo(Appendable appendable, byte[] bArr, int i2, int i3);

    @J2ktIncompatible
    @GwtIncompatible
    public final ByteSink encodingSink(final CharSink charSink) {
        Preconditions.checkNotNull(charSink);
        return new ByteSink() { // from class: com.google.common.io.BaseEncoding.1
            @Override // com.google.common.io.ByteSink
            public OutputStream openStream() {
                return BaseEncoding.this.encodingStream(charSink.openStream());
            }
        };
    }

    @J2ktIncompatible
    @GwtIncompatible
    public abstract OutputStream encodingStream(Writer writer);

    public abstract BaseEncoding ignoreCase();

    public abstract BaseEncoding lowerCase();

    public abstract int maxDecodedSize(int i2);

    public abstract int maxEncodedSize(int i2);

    public abstract BaseEncoding omitPadding();

    public CharSequence trimTrailingPadding(CharSequence charSequence) {
        return (CharSequence) Preconditions.checkNotNull(charSequence);
    }

    public abstract BaseEncoding upperCase();

    public abstract BaseEncoding withPadChar(char c);

    public abstract BaseEncoding withSeparator(String str, int i2);

    public final String encode(byte[] bArr, int i2, int i3) {
        Preconditions.checkPositionIndexes(i2, i2 + i3, bArr.length);
        StringBuilder sb = new StringBuilder(maxEncodedSize(i3));
        try {
            encodeTo(sb, bArr, i2, i3);
            return sb.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }
}
