package com.android.internal.util;

import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;
import android.util.Printer;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

/* JADX INFO: loaded from: classes3.dex */
public class FastPrintWriter extends PrintWriter {
    private final boolean mAutoFlush;
    private final int mBufferLen;
    private final ByteBuffer mBytes;
    private CharsetEncoder mCharset;
    private boolean mIoError;
    private final OutputStream mOutputStream;
    private int mPos;
    private final Printer mPrinter;
    private final String mSeparator;
    private final char[] mText;
    private final Writer mWriter;

    public static class DummyWriter extends Writer {
        private DummyWriter() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new UnsupportedOperationException("Shouldn't be here");
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            close();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i2, int i3) {
            close();
        }
    }

    public FastPrintWriter(OutputStream outputStream) {
        this(outputStream, false, 8192);
    }

    private void appendLocked(char c) throws IOException {
        int i2 = this.mPos;
        if (i2 >= this.mBufferLen - 1) {
            flushLocked();
            i2 = this.mPos;
        }
        this.mText[i2] = c;
        this.mPos = i2 + 1;
    }

    private void flushBytesLocked() throws IOException {
        int iPosition;
        if (this.mIoError || (iPosition = this.mBytes.position()) <= 0) {
            return;
        }
        this.mBytes.flip();
        this.mOutputStream.write(this.mBytes.array(), 0, iPosition);
        this.mBytes.clear();
    }

    private void flushLocked() throws IOException {
        int i2 = this.mPos;
        if (i2 > 0) {
            if (this.mOutputStream != null) {
                CharBuffer charBufferWrap = CharBuffer.wrap(this.mText, 0, i2);
                CoderResult coderResultEncode = this.mCharset.encode(charBufferWrap, this.mBytes, true);
                while (!this.mIoError) {
                    if (!coderResultEncode.isError()) {
                        if (!coderResultEncode.isOverflow()) {
                            break;
                        }
                        flushBytesLocked();
                        coderResultEncode = this.mCharset.encode(charBufferWrap, this.mBytes, true);
                    } else {
                        throw new IOException(coderResultEncode.toString());
                    }
                }
                if (!this.mIoError) {
                    flushBytesLocked();
                    this.mOutputStream.flush();
                }
            } else {
                Writer writer = this.mWriter;
                if (writer == null) {
                    int length = this.mSeparator.length();
                    int i3 = this.mPos;
                    if (length >= i3) {
                        length = i3;
                    }
                    int i4 = 0;
                    while (i4 < length) {
                        char c = this.mText[(this.mPos - 1) - i4];
                        String str = this.mSeparator;
                        if (c != str.charAt((str.length() - 1) - i4)) {
                            break;
                        } else {
                            i4++;
                        }
                    }
                    int i5 = this.mPos;
                    if (i4 >= i5) {
                        this.mPrinter.println("");
                    } else {
                        this.mPrinter.println(new String(this.mText, 0, i5 - i4));
                    }
                } else if (!this.mIoError) {
                    writer.write(this.mText, 0, i2);
                    this.mWriter.flush();
                }
            }
            this.mPos = 0;
        }
    }

    private final void initDefaultEncoder() {
        CharsetEncoder charsetEncoderNewEncoder = Charset.defaultCharset().newEncoder();
        this.mCharset = charsetEncoderNewEncoder;
        charsetEncoderNewEncoder.onMalformedInput(CodingErrorAction.REPLACE);
        this.mCharset.onUnmappableCharacter(CodingErrorAction.REPLACE);
    }

    private final void initEncoder(String str) throws UnsupportedEncodingException {
        try {
            CharsetEncoder charsetEncoderNewEncoder = Charset.forName(str).newEncoder();
            this.mCharset = charsetEncoderNewEncoder;
            charsetEncoderNewEncoder.onMalformedInput(CodingErrorAction.REPLACE);
            this.mCharset.onUnmappableCharacter(CodingErrorAction.REPLACE);
        } catch (Exception unused) {
            throw new UnsupportedEncodingException(str);
        }
    }

    @Override // java.io.PrintWriter
    public boolean checkError() {
        boolean z2;
        flush();
        synchronized (((PrintWriter) this).lock) {
            z2 = this.mIoError;
        }
        return z2;
    }

    @Override // java.io.PrintWriter
    public void clearError() {
        synchronized (((PrintWriter) this).lock) {
            this.mIoError = false;
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (((PrintWriter) this).lock) {
            try {
                flushLocked();
                OutputStream outputStream = this.mOutputStream;
                if (outputStream != null) {
                    outputStream.close();
                } else {
                    Writer writer = this.mWriter;
                    if (writer != null) {
                        writer.close();
                    }
                }
            } catch (IOException e2) {
                Log.w("FastPrintWriter", "Write failure", e2);
                setError();
            }
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.io.Flushable
    public void flush() {
        synchronized (((PrintWriter) this).lock) {
            try {
                flushLocked();
                if (!this.mIoError) {
                    OutputStream outputStream = this.mOutputStream;
                    if (outputStream != null) {
                        outputStream.flush();
                    } else {
                        Writer writer = this.mWriter;
                        if (writer != null) {
                            writer.flush();
                        }
                    }
                }
            } catch (IOException e2) {
                Log.w("FastPrintWriter", "Write failure", e2);
                setError();
            }
        }
    }

    @Override // java.io.PrintWriter
    public void print(char[] cArr) {
        synchronized (((PrintWriter) this).lock) {
            try {
                appendLocked(cArr, 0, cArr.length);
            } catch (IOException e2) {
                Log.w("FastPrintWriter", "Write failure", e2);
                setError();
            }
        }
    }

    @Override // java.io.PrintWriter
    public void println() {
        synchronized (((PrintWriter) this).lock) {
            try {
                String str = this.mSeparator;
                appendLocked(str, 0, str.length());
                if (this.mAutoFlush) {
                    flushLocked();
                }
            } catch (IOException e2) {
                Log.w("FastPrintWriter", "Write failure", e2);
                setError();
            }
        }
    }

    @Override // java.io.PrintWriter
    public void setError() {
        synchronized (((PrintWriter) this).lock) {
            this.mIoError = true;
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(char[] cArr, int i2, int i3) {
        synchronized (((PrintWriter) this).lock) {
            try {
                appendLocked(cArr, i2, i3);
            } catch (IOException e2) {
                Log.w("FastPrintWriter", "Write failure", e2);
                setError();
            }
        }
    }

    public FastPrintWriter(OutputStream outputStream, boolean z2) {
        this(outputStream, z2, 8192);
    }

    public FastPrintWriter(OutputStream outputStream, boolean z2, int i2) {
        super(new DummyWriter(), z2);
        if (outputStream != null) {
            this.mBufferLen = i2;
            this.mText = new char[i2];
            this.mBytes = ByteBuffer.allocate(i2);
            this.mOutputStream = outputStream;
            this.mWriter = null;
            this.mPrinter = null;
            this.mAutoFlush = z2;
            this.mSeparator = System.lineSeparator();
            initDefaultEncoder();
            return;
        }
        throw new NullPointerException("out is null");
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.lang.Appendable
    public PrintWriter append(CharSequence charSequence, int i2, int i3) {
        if (charSequence == null) {
            charSequence = "null";
        }
        String string = charSequence.subSequence(i2, i3).toString();
        write(string, 0, string.length());
        return this;
    }

    @Override // java.io.PrintWriter
    public void print(char c) {
        synchronized (((PrintWriter) this).lock) {
            try {
                appendLocked(c);
            } catch (IOException e2) {
                Log.w("FastPrintWriter", "Write failure", e2);
                setError();
            }
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(int i2) {
        synchronized (((PrintWriter) this).lock) {
            try {
                appendLocked((char) i2);
            } catch (IOException e2) {
                Log.w("FastPrintWriter", "Write failure", e2);
                setError();
            }
        }
    }

    private void appendLocked(String str, int i2, int i3) throws IOException {
        int i4 = this.mBufferLen;
        if (i3 > i4) {
            int i5 = i3 + i2;
            while (i2 < i5) {
                int i6 = i2 + i4;
                appendLocked(str, i2, i6 < i5 ? i4 : i5 - i2);
                i2 = i6;
            }
            return;
        }
        int i7 = this.mPos;
        if (i7 + i3 > i4) {
            flushLocked();
            i7 = this.mPos;
        }
        str.getChars(i2, i2 + i3, this.mText, i7);
        this.mPos = i7 + i3;
    }

    @Override // java.io.PrintWriter
    public void println(int i2) {
        if (i2 == 0) {
            println(WifiEnterpriseConfig.ENGINE_DISABLE);
        } else {
            super.println(i2);
        }
    }

    @Override // java.io.PrintWriter
    public void println(long j2) {
        if (j2 == 0) {
            println(WifiEnterpriseConfig.ENGINE_DISABLE);
        } else {
            super.println(j2);
        }
    }

    @Override // java.io.PrintWriter
    public void print(String str) {
        if (str == null) {
            str = "null";
        }
        synchronized (((PrintWriter) this).lock) {
            try {
                appendLocked(str, 0, str.length());
            } catch (IOException e2) {
                Log.w("FastPrintWriter", "Write failure", e2);
                setError();
            }
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(String str) {
        synchronized (((PrintWriter) this).lock) {
            try {
                appendLocked(str, 0, str.length());
            } catch (IOException e2) {
                Log.w("FastPrintWriter", "Write failure", e2);
                setError();
            }
        }
    }

    @Override // java.io.PrintWriter
    public void println(char[] cArr) {
        print(cArr);
        println();
    }

    public FastPrintWriter(Writer writer) {
        this(writer, false, 8192);
    }

    private void appendLocked(char[] cArr, int i2, int i3) throws IOException {
        int i4 = this.mBufferLen;
        if (i3 > i4) {
            int i5 = i3 + i2;
            while (i2 < i5) {
                int i6 = i2 + i4;
                appendLocked(cArr, i2, i6 < i5 ? i4 : i5 - i2);
                i2 = i6;
            }
            return;
        }
        int i7 = this.mPos;
        if (i7 + i3 > i4) {
            flushLocked();
            i7 = this.mPos;
        }
        System.arraycopy(cArr, i2, this.mText, i7, i3);
        this.mPos = i7 + i3;
    }

    @Override // java.io.PrintWriter
    public void println(char c) {
        print(c);
        println();
    }

    public FastPrintWriter(Writer writer, boolean z2) {
        this(writer, z2, 8192);
    }

    public FastPrintWriter(Writer writer, boolean z2, int i2) {
        super(new DummyWriter(), z2);
        if (writer != null) {
            this.mBufferLen = i2;
            this.mText = new char[i2];
            this.mBytes = null;
            this.mOutputStream = null;
            this.mWriter = writer;
            this.mPrinter = null;
            this.mAutoFlush = z2;
            this.mSeparator = System.lineSeparator();
            initDefaultEncoder();
            return;
        }
        throw new NullPointerException("wr is null");
    }

    @Override // java.io.PrintWriter
    public void print(int i2) {
        if (i2 == 0) {
            print(WifiEnterpriseConfig.ENGINE_DISABLE);
        } else {
            super.print(i2);
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(String str, int i2, int i3) {
        synchronized (((PrintWriter) this).lock) {
            try {
                appendLocked(str, i2, i3);
            } catch (IOException e2) {
                Log.w("FastPrintWriter", "Write failure", e2);
                setError();
            }
        }
    }

    @Override // java.io.PrintWriter
    public void print(long j2) {
        if (j2 == 0) {
            print(WifiEnterpriseConfig.ENGINE_DISABLE);
        } else {
            super.print(j2);
        }
    }

    public FastPrintWriter(Printer printer) {
        this(printer, 512);
    }

    public FastPrintWriter(Printer printer, int i2) {
        super((Writer) new DummyWriter(), true);
        if (printer != null) {
            this.mBufferLen = i2;
            this.mText = new char[i2];
            this.mBytes = null;
            this.mOutputStream = null;
            this.mWriter = null;
            this.mPrinter = printer;
            this.mAutoFlush = true;
            this.mSeparator = System.lineSeparator();
            initDefaultEncoder();
            return;
        }
        throw new NullPointerException("pr is null");
    }
}
