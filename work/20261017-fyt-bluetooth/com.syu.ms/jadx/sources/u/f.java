package u;

import android.net.http.CharArrayBuffers;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class f implements XmlSerializer {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String[] f17240k = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "&quot;", null, null, null, "&amp;", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "&lt;", null, "&gt;", null};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static String f17241l = "                                                              ";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Writer f17244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public OutputStream f17245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharsetEncoder f17246e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f17249h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final char[] f17242a = new char[8192];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ByteBuffer f17247f = ByteBuffer.allocate(8192);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f17248g = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17250i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f17251j = true;

    public final void a(char c2) throws IOException {
        int i2 = this.f17243b;
        if (i2 >= 8191) {
            flush();
            i2 = this.f17243b;
        }
        this.f17242a[i2] = c2;
        this.f17243b = i2 + 1;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer attribute(String str, String str2, String str3) throws IOException {
        a(CharArrayBuffers.uppercaseAddon);
        if (str != null) {
            b(str);
            a(':');
        }
        b(str2);
        b("=\"");
        f(str3);
        a('\"');
        this.f17251j = false;
        return this;
    }

    public final void b(String str) throws IOException {
        c(str, 0, str.length());
    }

    public final void c(String str, int i2, int i3) throws IOException {
        if (i3 > 8192) {
            int i4 = i3 + i2;
            while (i2 < i4) {
                int i5 = i2 + 8192;
                c(str, i2, i5 < i4 ? 8192 : i4 - i2);
                i2 = i5;
            }
            return;
        }
        int i6 = this.f17243b;
        if (i6 + i3 > 8192) {
            flush();
            i6 = this.f17243b;
        }
        str.getChars(i2, i2 + i3, this.f17242a, i6);
        this.f17243b = i6 + i3;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void cdsect(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void comment(String str) {
        throw new UnsupportedOperationException();
    }

    public final void d(char[] cArr, int i2, int i3) throws IOException {
        if (i3 > 8192) {
            int i4 = i3 + i2;
            while (i2 < i4) {
                int i5 = i2 + 8192;
                d(cArr, i2, i5 < i4 ? 8192 : i4 - i2);
                i2 = i5;
            }
            return;
        }
        int i6 = this.f17243b;
        if (i6 + i3 > 8192) {
            flush();
            i6 = this.f17243b;
        }
        System.arraycopy(cArr, i2, this.f17242a, i6, i3);
        this.f17243b = i6 + i3;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void docdecl(String str) {
        throw new UnsupportedOperationException();
    }

    public final void e(int i2) throws IOException {
        int length = i2 * 4;
        if (length > f17241l.length()) {
            length = f17241l.length();
        }
        c(f17241l, 0, length);
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void endDocument() throws IOException {
        flush();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer endTag(String str, String str2) throws IOException {
        int i2 = this.f17250i - 1;
        this.f17250i = i2;
        if (this.f17249h) {
            b(" />\n");
        } else {
            if (this.f17248g && this.f17251j) {
                e(i2);
            }
            b("</");
            if (str != null) {
                b(str);
                a(':');
            }
            b(str2);
            b(">\n");
        }
        this.f17251j = true;
        this.f17249h = false;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void entityRef(String str) {
        throw new UnsupportedOperationException();
    }

    public final void f(String str) throws IOException {
        String str2;
        int length = str.length();
        String[] strArr = f17240k;
        char length2 = (char) strArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < length2 && (str2 = strArr[cCharAt]) != null) {
                if (i3 < i2) {
                    c(str, i3, i2 - i3);
                }
                i3 = i2 + 1;
                b(str2);
            }
            i2++;
        }
        if (i3 < i2) {
            c(str, i3, i2 - i3);
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void flush() throws IOException {
        int i2 = this.f17243b;
        if (i2 > 0) {
            if (this.f17245d != null) {
                CharBuffer charBufferWrap = CharBuffer.wrap(this.f17242a, 0, i2);
                CoderResult coderResultEncode = this.f17246e.encode(charBufferWrap, this.f17247f, true);
                while (!coderResultEncode.isError()) {
                    if (coderResultEncode.isOverflow()) {
                        h();
                        coderResultEncode = this.f17246e.encode(charBufferWrap, this.f17247f, true);
                    } else {
                        h();
                        this.f17245d.flush();
                    }
                }
                throw new IOException(coderResultEncode.toString());
            }
            this.f17244c.write(this.f17242a, 0, i2);
            this.f17244c.flush();
            this.f17243b = 0;
        }
    }

    public final void g(char[] cArr, int i2, int i3) throws IOException {
        String str;
        String[] strArr = f17240k;
        char length = (char) strArr.length;
        int i4 = i3 + i2;
        int i5 = i2;
        while (i2 < i4) {
            char c2 = cArr[i2];
            if (c2 < length && (str = strArr[c2]) != null) {
                if (i5 < i2) {
                    d(cArr, i5, i2 - i5);
                }
                i5 = i2 + 1;
                b(str);
            }
            i2++;
        }
        if (i5 < i2) {
            d(cArr, i5, i2 - i5);
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public int getDepth() {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public boolean getFeature(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public String getName() {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public String getNamespace() {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public String getPrefix(String str, boolean z2) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public Object getProperty(String str) {
        throw new UnsupportedOperationException();
    }

    public final void h() throws IOException {
        int iPosition = this.f17247f.position();
        if (iPosition > 0) {
            this.f17247f.flip();
            this.f17245d.write(this.f17247f.array(), 0, iPosition);
            this.f17247f.clear();
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void ignorableWhitespace(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void processingInstruction(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setFeature(String str, boolean z2) {
        if (!str.equals("http://xmlpull.org/v1/doc/features.html#indent-output")) {
            throw new UnsupportedOperationException();
        }
        this.f17248g = true;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setOutput(OutputStream outputStream, String str) throws UnsupportedEncodingException {
        if (outputStream == null) {
            throw new IllegalArgumentException();
        }
        try {
            this.f17246e = Charset.forName(str).newEncoder();
            this.f17245d = outputStream;
        } catch (IllegalCharsetNameException e2) {
            throw ((UnsupportedEncodingException) new UnsupportedEncodingException(str).initCause(e2));
        } catch (UnsupportedCharsetException e3) {
            throw ((UnsupportedEncodingException) new UnsupportedEncodingException(str).initCause(e3));
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setPrefix(String str, String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setProperty(String str, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void startDocument(String str, Boolean bool) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append("<?xml version='1.0' encoding='utf-8' standalone='");
        sb.append(bool.booleanValue() ? "yes" : "no");
        sb.append("' ?>\n");
        b(sb.toString());
        this.f17251j = true;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer startTag(String str, String str2) throws IOException {
        if (this.f17249h) {
            b(">\n");
        }
        if (this.f17248g) {
            e(this.f17250i);
        }
        this.f17250i++;
        a('<');
        if (str != null) {
            b(str);
            a(':');
        }
        b(str2);
        this.f17249h = true;
        this.f17251j = false;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer text(char[] cArr, int i2, int i3) throws IOException {
        if (this.f17249h) {
            b(">");
            this.f17249h = false;
        }
        g(cArr, i2, i3);
        if (this.f17248g) {
            this.f17251j = cArr[(i2 + i3) - 1] == '\n';
        }
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setOutput(Writer writer) {
        this.f17244c = writer;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer text(String str) throws IOException {
        boolean z2 = false;
        if (this.f17249h) {
            b(">");
            this.f17249h = false;
        }
        f(str);
        if (this.f17248g) {
            if (str.length() > 0 && str.charAt(str.length() - 1) == '\n') {
                z2 = true;
            }
            this.f17251j = z2;
        }
        return this;
    }
}
