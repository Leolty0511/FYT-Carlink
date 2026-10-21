package u;

import android.net.ProxyProperties;
import android.util.Printer;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class e extends PrintWriter {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static Writer f17228l = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final char[] f17230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17231c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final OutputStream f17232d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f17233e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f17234f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Writer f17235g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Printer f17236h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharsetEncoder f17237i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ByteBuffer f17238j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f17239k;

    public static class a extends Writer {
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

    public e(OutputStream outputStream) {
        this(outputStream, false, 8192);
    }

    public final void a(char c2) throws IOException {
        int i2 = this.f17231c;
        if (i2 >= this.f17229a - 1) {
            e();
            i2 = this.f17231c;
        }
        this.f17230b[i2] = c2;
        this.f17231c = i2 + 1;
    }

    public final void b(String str, int i2, int i3) throws IOException {
        int i4 = this.f17229a;
        if (i3 > i4) {
            int i5 = i3 + i2;
            while (i2 < i5) {
                int i6 = i2 + i4;
                b(str, i2, i6 < i5 ? i4 : i5 - i2);
                i2 = i6;
            }
            return;
        }
        int i7 = this.f17231c;
        if (i7 + i3 > i4) {
            e();
            i7 = this.f17231c;
        }
        str.getChars(i2, i2 + i3, this.f17230b, i7);
        this.f17231c = i7 + i3;
    }

    public final void c(char[] cArr, int i2, int i3) throws IOException {
        int i4 = this.f17229a;
        if (i3 > i4) {
            int i5 = i3 + i2;
            while (i2 < i5) {
                int i6 = i2 + i4;
                c(cArr, i2, i6 < i5 ? i4 : i5 - i2);
                i2 = i6;
            }
            return;
        }
        int i7 = this.f17231c;
        if (i7 + i3 > i4) {
            e();
            i7 = this.f17231c;
        }
        System.arraycopy(cArr, i2, this.f17230b, i7, i3);
        this.f17231c = i7 + i3;
    }

    @Override // java.io.PrintWriter
    public boolean checkError() {
        boolean z2;
        flush();
        synchronized (((PrintWriter) this).lock) {
            z2 = this.f17239k;
        }
        return z2;
    }

    @Override // java.io.PrintWriter
    public void clearError() {
        synchronized (((PrintWriter) this).lock) {
            this.f17239k = false;
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (((PrintWriter) this).lock) {
            try {
                e();
                OutputStream outputStream = this.f17232d;
                if (outputStream != null) {
                    outputStream.close();
                } else {
                    Writer writer = this.f17235g;
                    if (writer != null) {
                        writer.close();
                    }
                }
            } catch (IOException unused) {
                setError();
            }
        }
    }

    public final void d() throws IOException {
        int iPosition = this.f17238j.position();
        if (iPosition > 0) {
            this.f17238j.flip();
            this.f17232d.write(this.f17238j.array(), 0, iPosition);
            this.f17238j.clear();
        }
    }

    public final void e() throws IOException {
        int i2 = this.f17231c;
        if (i2 > 0) {
            if (this.f17232d != null) {
                CharBuffer charBufferWrap = CharBuffer.wrap(this.f17230b, 0, i2);
                CoderResult coderResultEncode = this.f17237i.encode(charBufferWrap, this.f17238j, true);
                while (!coderResultEncode.isError()) {
                    if (coderResultEncode.isOverflow()) {
                        d();
                        coderResultEncode = this.f17237i.encode(charBufferWrap, this.f17238j, true);
                    } else {
                        d();
                        this.f17232d.flush();
                    }
                }
                throw new IOException(coderResultEncode.toString());
            }
            Writer writer = this.f17235g;
            if (writer != null) {
                writer.write(this.f17230b, 0, i2);
                this.f17235g.flush();
            } else {
                int length = this.f17234f.length();
                int i3 = this.f17231c;
                if (length >= i3) {
                    length = i3;
                }
                int i4 = 0;
                while (i4 < length) {
                    char c2 = this.f17230b[(this.f17231c - 1) - i4];
                    String str = this.f17234f;
                    if (c2 != str.charAt((str.length() - 1) - i4)) {
                        break;
                    } else {
                        i4++;
                    }
                }
                int i5 = this.f17231c;
                if (i4 >= i5) {
                    this.f17236h.println(ProxyProperties.LOCAL_EXCL_LIST);
                } else {
                    this.f17236h.println(new String(this.f17230b, 0, i5 - i4));
                }
            }
            this.f17231c = 0;
        }
    }

    public final void f() {
        CharsetEncoder charsetEncoderNewEncoder = Charset.defaultCharset().newEncoder();
        this.f17237i = charsetEncoderNewEncoder;
        charsetEncoderNewEncoder.onMalformedInput(CodingErrorAction.REPLACE);
        this.f17237i.onUnmappableCharacter(CodingErrorAction.REPLACE);
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.io.Flushable
    public void flush() {
        synchronized (((PrintWriter) this).lock) {
            try {
                e();
                OutputStream outputStream = this.f17232d;
                if (outputStream != null) {
                    outputStream.flush();
                } else {
                    Writer writer = this.f17235g;
                    if (writer != null) {
                        writer.flush();
                    }
                }
            } catch (IOException unused) {
                setError();
            }
        }
    }

    @Override // java.io.PrintWriter
    public void print(char[] cArr) {
        synchronized (((PrintWriter) this).lock) {
            try {
                c(cArr, 0, cArr.length);
            } catch (IOException unused) {
            }
        }
    }

    @Override // java.io.PrintWriter
    public void println() {
        synchronized (((PrintWriter) this).lock) {
            try {
                String str = this.f17234f;
                b(str, 0, str.length());
                if (this.f17233e) {
                    e();
                }
            } catch (IOException unused) {
                setError();
            }
        }
    }

    @Override // java.io.PrintWriter
    public void setError() {
        synchronized (((PrintWriter) this).lock) {
            this.f17239k = true;
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(char[] cArr, int i2, int i3) {
        synchronized (((PrintWriter) this).lock) {
            try {
                c(cArr, i2, i3);
            } catch (IOException unused) {
            }
        }
    }

    public e(OutputStream outputStream, boolean z2, int i2) {
        super(f17228l, z2);
        Objects.requireNonNull(outputStream, "out is null");
        this.f17229a = i2;
        this.f17230b = new char[i2];
        this.f17238j = ByteBuffer.allocate(i2);
        this.f17232d = outputStream;
        this.f17235g = null;
        this.f17236h = null;
        this.f17233e = z2;
        this.f17234f = System.lineSeparator();
        f();
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
    public void print(char c2) {
        synchronized (((PrintWriter) this).lock) {
            try {
                a(c2);
            } catch (IOException unused) {
            }
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(int i2) {
        synchronized (((PrintWriter) this).lock) {
            try {
                a((char) i2);
            } catch (IOException unused) {
            }
        }
    }

    @Override // java.io.PrintWriter
    public void print(String str) {
        if (str == null) {
            str = "null";
        }
        synchronized (((PrintWriter) this).lock) {
            try {
                b(str, 0, str.length());
            } catch (IOException unused) {
                setError();
            }
        }
    }

    @Override // java.io.PrintWriter
    public void println(int i2) {
        if (i2 == 0) {
            println("0");
        } else {
            super.println(i2);
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(String str) {
        synchronized (((PrintWriter) this).lock) {
            try {
                b(str, 0, str.length());
            } catch (IOException unused) {
            }
        }
    }

    @Override // java.io.PrintWriter
    public void println(long j2) {
        if (j2 == 0) {
            println("0");
        } else {
            super.println(j2);
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(String str, int i2, int i3) {
        synchronized (((PrintWriter) this).lock) {
            try {
                b(str, i2, i3);
            } catch (IOException unused) {
            }
        }
    }

    @Override // java.io.PrintWriter
    public void print(int i2) {
        if (i2 == 0) {
            print("0");
        } else {
            super.print(i2);
        }
    }

    @Override // java.io.PrintWriter
    public void println(char[] cArr) {
        print(cArr);
        println();
    }

    public e(Writer writer) {
        this(writer, false, 8192);
    }

    @Override // java.io.PrintWriter
    public void print(long j2) {
        if (j2 == 0) {
            print("0");
        } else {
            super.print(j2);
        }
    }

    @Override // java.io.PrintWriter
    public void println(char c2) {
        print(c2);
        println();
    }

    public e(Writer writer, boolean z2, int i2) {
        super(f17228l, z2);
        Objects.requireNonNull(writer, "wr is null");
        this.f17229a = i2;
        this.f17230b = new char[i2];
        this.f17238j = null;
        this.f17232d = null;
        this.f17235g = writer;
        this.f17236h = null;
        this.f17233e = z2;
        this.f17234f = System.lineSeparator();
        f();
    }
}
