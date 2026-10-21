package com.android.internal.util;

import android.accessibilityservice.c;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes3.dex */
public class FastXmlSerializer implements XmlSerializer {
    private static final int DEFAULT_BUFFER_LEN = 32768;
    private static final String[] ESCAPE_TABLE = {"&#0;", "&#1;", "&#2;", "&#3;", "&#4;", "&#5;", "&#6;", "&#7;", "&#8;", "&#9;", "&#10;", "&#11;", "&#12;", "&#13;", "&#14;", "&#15;", "&#16;", "&#17;", "&#18;", "&#19;", "&#20;", "&#21;", "&#22;", "&#23;", "&#24;", "&#25;", "&#26;", "&#27;", "&#28;", "&#29;", "&#30;", "&#31;", null, null, "&quot;", null, null, null, "&amp;", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "&lt;", null, "&gt;", null};
    private static String sSpace = "                                                              ";
    private final int mBufferLen;
    private ByteBuffer mBytes;
    private CharsetEncoder mCharset;
    private boolean mInTag;
    private boolean mIndent;
    private boolean mLineStart;
    private int mNesting;
    private OutputStream mOutputStream;
    private int mPos;
    private final char[] mText;
    private Writer mWriter;

    public FastXmlSerializer() {
        this(32768);
    }

    private void append(char c) throws IOException {
        int i2 = this.mPos;
        if (i2 >= this.mBufferLen - 1) {
            flush();
            i2 = this.mPos;
        }
        this.mText[i2] = c;
        this.mPos = i2 + 1;
    }

    private void appendIndent(int i2) throws IOException {
        int length = i2 * 4;
        if (length > sSpace.length()) {
            length = sSpace.length();
        }
        append(sSpace, 0, length);
    }

    private void escapeAndAppendString(String str) throws IOException {
        String str2;
        int length = str.length();
        String[] strArr = ESCAPE_TABLE;
        char length2 = (char) strArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < length2 && (str2 = strArr[cCharAt]) != null) {
                if (i3 < i2) {
                    append(str, i3, i2 - i3);
                }
                i3 = i2 + 1;
                append(str2);
            }
            i2++;
        }
        if (i3 < i2) {
            append(str, i3, i2 - i3);
        }
    }

    private void flushBytes() throws IOException {
        int iPosition = this.mBytes.position();
        if (iPosition > 0) {
            this.mBytes.flip();
            this.mOutputStream.write(this.mBytes.array(), 0, iPosition);
            this.mBytes.clear();
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer attribute(String str, String str2, String str3) throws IOException {
        append(' ');
        if (str != null) {
            append(str);
            append(':');
        }
        append(str2);
        append("=\"");
        escapeAndAppendString(str3);
        append('\"');
        this.mLineStart = false;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void cdsect(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void comment(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void docdecl(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void endDocument() throws IOException {
        flush();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer endTag(String str, String str2) throws IOException {
        int i2 = this.mNesting - 1;
        this.mNesting = i2;
        if (this.mInTag) {
            append(" />\n");
        } else {
            if (this.mIndent && this.mLineStart) {
                appendIndent(i2);
            }
            append("</");
            if (str != null) {
                append(str);
                append(':');
            }
            append(str2);
            append(">\n");
        }
        this.mLineStart = true;
        this.mInTag = false;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void entityRef(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void flush() throws IOException {
        int i2 = this.mPos;
        if (i2 > 0) {
            if (this.mOutputStream != null) {
                CharBuffer charBufferWrap = CharBuffer.wrap(this.mText, 0, i2);
                CoderResult coderResultEncode = this.mCharset.encode(charBufferWrap, this.mBytes, true);
                while (!coderResultEncode.isError()) {
                    if (coderResultEncode.isOverflow()) {
                        flushBytes();
                        coderResultEncode = this.mCharset.encode(charBufferWrap, this.mBytes, true);
                    } else {
                        flushBytes();
                        this.mOutputStream.flush();
                    }
                }
                throw new IOException(coderResultEncode.toString());
            }
            this.mWriter.write(this.mText, 0, i2);
            this.mWriter.flush();
            this.mPos = 0;
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
        this.mIndent = true;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setOutput(OutputStream outputStream, String str) throws UnsupportedEncodingException {
        if (outputStream == null) {
            throw new IllegalArgumentException();
        }
        try {
            this.mCharset = Charset.forName(str).newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
            this.mOutputStream = outputStream;
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
        append(c.n(new StringBuilder("<?xml version='1.0' encoding='utf-8' standalone='"), bool.booleanValue() ? "yes" : "no", "' ?>\n"));
        this.mLineStart = true;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer startTag(String str, String str2) throws IOException {
        if (this.mInTag) {
            append(">\n");
        }
        if (this.mIndent) {
            appendIndent(this.mNesting);
        }
        this.mNesting++;
        append('<');
        if (str != null) {
            append(str);
            append(':');
        }
        append(str2);
        this.mInTag = true;
        this.mLineStart = false;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer text(char[] cArr, int i2, int i3) throws IOException {
        if (this.mInTag) {
            append(">");
            this.mInTag = false;
        }
        escapeAndAppendString(cArr, i2, i3);
        if (this.mIndent) {
            this.mLineStart = cArr[(i2 + i3) - 1] == '\n';
        }
        return this;
    }

    public FastXmlSerializer(int i2) {
        this.mIndent = false;
        this.mNesting = 0;
        this.mLineStart = true;
        i2 = i2 <= 0 ? 32768 : i2;
        this.mBufferLen = i2;
        this.mText = new char[i2];
        this.mBytes = ByteBuffer.allocate(i2);
    }

    private void append(String str, int i2, int i3) throws IOException {
        int i4 = this.mBufferLen;
        if (i3 <= i4) {
            int i5 = this.mPos;
            if (i5 + i3 > i4) {
                flush();
                i5 = this.mPos;
            }
            str.getChars(i2, i2 + i3, this.mText, i5);
            this.mPos = i5 + i3;
            return;
        }
        int i6 = i3 + i2;
        while (i2 < i6) {
            int i7 = this.mBufferLen;
            int i8 = i2 + i7;
            if (i8 >= i6) {
                i7 = i6 - i2;
            }
            append(str, i2, i7);
            i2 = i8;
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer text(String str) throws IOException {
        boolean z2 = false;
        if (this.mInTag) {
            append(">");
            this.mInTag = false;
        }
        escapeAndAppendString(str);
        if (this.mIndent) {
            if (str.length() > 0 && str.charAt(str.length() - 1) == '\n') {
                z2 = true;
            }
            this.mLineStart = z2;
        }
        return this;
    }

    private void escapeAndAppendString(char[] cArr, int i2, int i3) throws IOException {
        String str;
        String[] strArr = ESCAPE_TABLE;
        char length = (char) strArr.length;
        int i4 = i3 + i2;
        int i5 = i2;
        while (i2 < i4) {
            char c = cArr[i2];
            if (c < length && (str = strArr[c]) != null) {
                if (i5 < i2) {
                    append(cArr, i5, i2 - i5);
                }
                i5 = i2 + 1;
                append(str);
            }
            i2++;
        }
        if (i5 < i2) {
            append(cArr, i5, i2 - i5);
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setOutput(Writer writer) {
        this.mWriter = writer;
    }

    private void append(char[] cArr, int i2, int i3) throws IOException {
        int i4 = this.mBufferLen;
        if (i3 <= i4) {
            int i5 = this.mPos;
            if (i5 + i3 > i4) {
                flush();
                i5 = this.mPos;
            }
            System.arraycopy(cArr, i2, this.mText, i5, i3);
            this.mPos = i5 + i3;
            return;
        }
        int i6 = i3 + i2;
        while (i2 < i6) {
            int i7 = this.mBufferLen;
            int i8 = i2 + i7;
            if (i8 >= i6) {
                i7 = i6 - i2;
            }
            append(cArr, i2, i7);
            i2 = i8;
        }
    }

    private void append(String str) throws IOException {
        append(str, 0, str.length());
    }
}
