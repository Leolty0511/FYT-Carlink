package com.android.internal.os;

import java.io.OutputStream;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.Formatter;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
abstract class LoggingPrintStream extends PrintStream {
    private final StringBuilder builder;
    private CharBuffer decodedChars;
    private CharsetDecoder decoder;
    private ByteBuffer encodedBytes;
    private final Formatter formatter;

    public LoggingPrintStream() {
        super(new OutputStream() { // from class: com.android.internal.os.LoggingPrintStream.1
            @Override // java.io.OutputStream
            public void write(int i2) {
                throw new AssertionError();
            }
        });
        StringBuilder sb = new StringBuilder();
        this.builder = sb;
        this.formatter = new Formatter(sb, (Locale) null);
    }

    @Override // java.io.PrintStream
    public boolean checkError() {
        return false;
    }

    @Override // java.io.PrintStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.PrintStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public synchronized void flush() {
        flush(true);
    }

    @Override // java.io.PrintStream
    public PrintStream format(String str, Object... objArr) {
        return format(Locale.getDefault(), str, objArr);
    }

    public abstract void log(String str);

    @Override // java.io.PrintStream
    public synchronized void print(char[] cArr) {
        this.builder.append(cArr);
        flush(false);
    }

    @Override // java.io.PrintStream
    public PrintStream printf(String str, Object... objArr) {
        return format(str, objArr);
    }

    @Override // java.io.PrintStream
    public synchronized void println() {
        flush(true);
    }

    @Override // java.io.PrintStream
    public void setError() {
    }

    @Override // java.io.PrintStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i2) {
        write(new byte[]{(byte) i2}, 0, 1);
    }

    @Override // java.io.PrintStream
    public synchronized PrintStream format(Locale locale, String str, Object... objArr) {
        try {
            if (str == null) {
                throw new NullPointerException("format");
            }
            this.formatter.format(locale, str, objArr);
            flush(false);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    @Override // java.io.PrintStream
    public PrintStream printf(Locale locale, String str, Object... objArr) {
        return format(locale, str, objArr);
    }

    @Override // java.io.PrintStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    private void flush(boolean z2) {
        int length = this.builder.length();
        int i2 = 0;
        while (i2 < length) {
            int iIndexOf = this.builder.indexOf("\n", i2);
            if (iIndexOf == -1) {
                break;
            }
            log(this.builder.substring(i2, iIndexOf));
            i2 = iIndexOf + 1;
        }
        if (z2) {
            if (i2 < length) {
                log(this.builder.substring(i2));
            }
            this.builder.setLength(0);
            return;
        }
        this.builder.delete(0, i2);
    }

    @Override // java.io.PrintStream
    public synchronized void println(char[] cArr) {
        this.builder.append(cArr);
        flush(true);
    }

    @Override // java.io.PrintStream, java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i2, int i3) {
        CoderResult coderResultDecode;
        if (this.decoder == null) {
            this.encodedBytes = ByteBuffer.allocate(80);
            this.decodedChars = CharBuffer.allocate(80);
            this.decoder = Charset.defaultCharset().newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
        }
        int i4 = i3 + i2;
        while (i2 < i4) {
            int iMin = Math.min(this.encodedBytes.remaining(), i4 - i2);
            this.encodedBytes.put(bArr, i2, iMin);
            i2 += iMin;
            this.encodedBytes.flip();
            do {
                coderResultDecode = this.decoder.decode(this.encodedBytes, this.decodedChars, false);
                this.decodedChars.flip();
                this.builder.append((CharSequence) this.decodedChars);
                this.decodedChars.clear();
            } while (coderResultDecode.isOverflow());
            this.encodedBytes.compact();
        }
        flush(false);
    }

    @Override // java.io.PrintStream, java.lang.Appendable
    public synchronized PrintStream append(char c) {
        print(c);
        return this;
    }

    @Override // java.io.PrintStream
    public synchronized void print(char c) {
        this.builder.append(c);
        if (c == '\n') {
            flush(false);
        }
    }

    @Override // java.io.PrintStream, java.lang.Appendable
    public synchronized PrintStream append(CharSequence charSequence) {
        this.builder.append(charSequence);
        flush(false);
        return this;
    }

    @Override // java.io.PrintStream
    public synchronized void println(char c) {
        this.builder.append(c);
        flush(true);
    }

    @Override // java.io.PrintStream
    public synchronized void print(double d2) {
        this.builder.append(d2);
    }

    @Override // java.io.PrintStream, java.lang.Appendable
    public synchronized PrintStream append(CharSequence charSequence, int i2, int i3) {
        this.builder.append(charSequence, i2, i3);
        flush(false);
        return this;
    }

    @Override // java.io.PrintStream
    public synchronized void print(float f2) {
        this.builder.append(f2);
    }

    @Override // java.io.PrintStream
    public synchronized void println(double d2) {
        this.builder.append(d2);
        flush(true);
    }

    @Override // java.io.PrintStream
    public synchronized void print(int i2) {
        this.builder.append(i2);
    }

    @Override // java.io.PrintStream
    public synchronized void println(float f2) {
        this.builder.append(f2);
        flush(true);
    }

    @Override // java.io.PrintStream
    public synchronized void print(long j2) {
        this.builder.append(j2);
    }

    @Override // java.io.PrintStream
    public synchronized void print(Object obj) {
        this.builder.append(obj);
        flush(false);
    }

    @Override // java.io.PrintStream
    public synchronized void println(int i2) {
        this.builder.append(i2);
        flush(true);
    }

    @Override // java.io.PrintStream
    public synchronized void print(String str) {
        this.builder.append(str);
        flush(false);
    }

    @Override // java.io.PrintStream
    public synchronized void println(long j2) {
        this.builder.append(j2);
        flush(true);
    }

    @Override // java.io.PrintStream
    public synchronized void print(boolean z2) {
        this.builder.append(z2);
    }

    @Override // java.io.PrintStream
    public synchronized void println(Object obj) {
        this.builder.append(obj);
        flush(true);
    }

    @Override // java.io.PrintStream
    public synchronized void println(String str) {
        if (this.builder.length() == 0 && str != null) {
            int length = str.length();
            int i2 = 0;
            while (i2 < length) {
                int iIndexOf = str.indexOf(10, i2);
                if (iIndexOf == -1) {
                    break;
                }
                log(str.substring(i2, iIndexOf));
                i2 = iIndexOf + 1;
            }
            if (i2 < length) {
                log(str.substring(i2));
            }
        } else {
            this.builder.append(str);
            flush(true);
        }
    }

    @Override // java.io.PrintStream
    public synchronized void println(boolean z2) {
        this.builder.append(z2);
        flush(true);
    }
}
