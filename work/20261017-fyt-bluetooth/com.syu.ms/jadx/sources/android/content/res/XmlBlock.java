package android.content.res;

import android.app.Instrumentation;
import android.net.ProxyProperties;
import android.util.TypedValue;
import java.io.InputStream;
import java.io.Reader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import u.n;

/* JADX INFO: loaded from: classes.dex */
final class XmlBlock {
    private static final boolean DEBUG = false;
    private final AssetManager mAssets;
    private final int mNative;
    private boolean mOpen;
    private int mOpenCount;
    public final StringBlock mStrings;

    public final class Parser implements XmlResourceParser {
        private final XmlBlock mBlock;
        public int mParseState;
        private boolean mStarted = false;
        private boolean mDecNextDepth = false;
        private int mDepth = 0;
        private int mEventType = 0;

        public Parser(int i2, XmlBlock xmlBlock) {
            this.mParseState = i2;
            this.mBlock = xmlBlock;
            XmlBlock.access$008(xmlBlock);
        }

        @Override // android.content.res.XmlResourceParser, java.lang.AutoCloseable
        public void close() {
            synchronized (this.mBlock) {
                int i2 = this.mParseState;
                if (i2 != 0) {
                    XmlBlock.nativeDestroyParseState(i2);
                    this.mParseState = 0;
                    this.mBlock.decOpenCountLocked();
                }
            }
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public void defineEntityReplacementText(String str, String str2) throws XmlPullParserException {
            throw new XmlPullParserException("defineEntityReplacementText() not supported");
        }

        public void finalize() {
            close();
        }

        @Override // android.util.AttributeSet
        public boolean getAttributeBooleanValue(String str, String str2, boolean z2) {
            int iNativeGetAttributeIndex = XmlBlock.nativeGetAttributeIndex(this.mParseState, str, str2);
            return iNativeGetAttributeIndex >= 0 ? getAttributeBooleanValue(iNativeGetAttributeIndex, z2) : z2;
        }

        @Override // org.xmlpull.v1.XmlPullParser, android.util.AttributeSet
        public int getAttributeCount() {
            if (this.mEventType == 2) {
                return XmlBlock.nativeGetAttributeCount(this.mParseState);
            }
            return -1;
        }

        @Override // android.util.AttributeSet
        public float getAttributeFloatValue(String str, String str2, float f2) {
            int iNativeGetAttributeIndex = XmlBlock.nativeGetAttributeIndex(this.mParseState, str, str2);
            return iNativeGetAttributeIndex >= 0 ? getAttributeFloatValue(iNativeGetAttributeIndex, f2) : f2;
        }

        @Override // android.util.AttributeSet
        public int getAttributeIntValue(String str, String str2, int i2) {
            int iNativeGetAttributeIndex = XmlBlock.nativeGetAttributeIndex(this.mParseState, str, str2);
            return iNativeGetAttributeIndex >= 0 ? getAttributeIntValue(iNativeGetAttributeIndex, i2) : i2;
        }

        @Override // android.util.AttributeSet
        public int getAttributeListValue(String str, String str2, String[] strArr, int i2) {
            int iNativeGetAttributeIndex = XmlBlock.nativeGetAttributeIndex(this.mParseState, str, str2);
            return iNativeGetAttributeIndex >= 0 ? getAttributeListValue(iNativeGetAttributeIndex, strArr, i2) : i2;
        }

        @Override // org.xmlpull.v1.XmlPullParser, android.util.AttributeSet
        public String getAttributeName(int i2) {
            int iNativeGetAttributeName = XmlBlock.nativeGetAttributeName(this.mParseState, i2);
            if (iNativeGetAttributeName >= 0) {
                return XmlBlock.this.mStrings.get(iNativeGetAttributeName).toString();
            }
            throw new IndexOutOfBoundsException(String.valueOf(i2));
        }

        @Override // android.util.AttributeSet
        public int getAttributeNameResource(int i2) {
            return XmlBlock.nativeGetAttributeResource(this.mParseState, i2);
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public String getAttributeNamespace(int i2) {
            int iNativeGetAttributeNamespace = XmlBlock.nativeGetAttributeNamespace(this.mParseState, i2);
            if (iNativeGetAttributeNamespace >= 0) {
                return XmlBlock.this.mStrings.get(iNativeGetAttributeNamespace).toString();
            }
            if (iNativeGetAttributeNamespace == -1) {
                return ProxyProperties.LOCAL_EXCL_LIST;
            }
            throw new IndexOutOfBoundsException(String.valueOf(i2));
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public String getAttributePrefix(int i2) {
            throw new RuntimeException("getAttributePrefix not supported");
        }

        @Override // android.util.AttributeSet
        public int getAttributeResourceValue(String str, String str2, int i2) {
            int iNativeGetAttributeIndex = XmlBlock.nativeGetAttributeIndex(this.mParseState, str, str2);
            return iNativeGetAttributeIndex >= 0 ? getAttributeResourceValue(iNativeGetAttributeIndex, i2) : i2;
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public String getAttributeType(int i2) {
            return "CDATA";
        }

        @Override // android.util.AttributeSet
        public int getAttributeUnsignedIntValue(String str, String str2, int i2) {
            int iNativeGetAttributeIndex = XmlBlock.nativeGetAttributeIndex(this.mParseState, str, str2);
            return iNativeGetAttributeIndex >= 0 ? getAttributeUnsignedIntValue(iNativeGetAttributeIndex, i2) : i2;
        }

        @Override // org.xmlpull.v1.XmlPullParser, android.util.AttributeSet
        public String getAttributeValue(int i2) {
            int iNativeGetAttributeStringValue = XmlBlock.nativeGetAttributeStringValue(this.mParseState, i2);
            if (iNativeGetAttributeStringValue >= 0) {
                return XmlBlock.this.mStrings.get(iNativeGetAttributeStringValue).toString();
            }
            int iNativeGetAttributeDataType = XmlBlock.nativeGetAttributeDataType(this.mParseState, i2);
            if (iNativeGetAttributeDataType != 0) {
                return TypedValue.coerceToString(iNativeGetAttributeDataType, XmlBlock.nativeGetAttributeData(this.mParseState, i2));
            }
            throw new IndexOutOfBoundsException(String.valueOf(i2));
        }

        @Override // android.util.AttributeSet
        public String getClassAttribute() {
            int iNativeGetClassAttribute = XmlBlock.nativeGetClassAttribute(this.mParseState);
            if (iNativeGetClassAttribute >= 0) {
                return XmlBlock.this.mStrings.get(iNativeGetClassAttribute).toString();
            }
            return null;
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public int getColumnNumber() {
            return -1;
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public int getDepth() {
            return this.mDepth;
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public int getEventType() {
            return this.mEventType;
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public boolean getFeature(String str) {
            return "http://xmlpull.org/v1/doc/features.html#process-namespaces".equals(str) || "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes".equals(str);
        }

        @Override // android.util.AttributeSet
        public String getIdAttribute() {
            int iNativeGetIdAttribute = XmlBlock.nativeGetIdAttribute(this.mParseState);
            if (iNativeGetIdAttribute >= 0) {
                return XmlBlock.this.mStrings.get(iNativeGetIdAttribute).toString();
            }
            return null;
        }

        @Override // android.util.AttributeSet
        public int getIdAttributeResourceValue(int i2) {
            return getAttributeResourceValue(null, Instrumentation.REPORT_KEY_IDENTIFIER, i2);
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public String getInputEncoding() {
            return null;
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public int getLineNumber() {
            return XmlBlock.nativeGetLineNumber(this.mParseState);
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public String getName() {
            int iNativeGetName = XmlBlock.nativeGetName(this.mParseState);
            if (iNativeGetName >= 0) {
                return XmlBlock.this.mStrings.get(iNativeGetName).toString();
            }
            return null;
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public String getNamespace(String str) {
            throw new RuntimeException("getNamespace() not supported");
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public int getNamespaceCount(int i2) throws XmlPullParserException {
            throw new XmlPullParserException("getNamespaceCount() not supported");
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public String getNamespacePrefix(int i2) throws XmlPullParserException {
            throw new XmlPullParserException("getNamespacePrefix() not supported");
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public String getNamespaceUri(int i2) throws XmlPullParserException {
            throw new XmlPullParserException("getNamespaceUri() not supported");
        }

        public final CharSequence getPooledString(int i2) {
            return XmlBlock.this.mStrings.get(i2);
        }

        @Override // org.xmlpull.v1.XmlPullParser, android.util.AttributeSet
        public String getPositionDescription() {
            return "Binary XML file line #" + getLineNumber();
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public String getPrefix() {
            throw new RuntimeException("getPrefix not supported");
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public Object getProperty(String str) {
            return null;
        }

        @Override // android.util.AttributeSet
        public int getStyleAttribute() {
            return XmlBlock.nativeGetStyleAttribute(this.mParseState);
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public String getText() {
            int iNativeGetText = XmlBlock.nativeGetText(this.mParseState);
            if (iNativeGetText >= 0) {
                return XmlBlock.this.mStrings.get(iNativeGetText).toString();
            }
            return null;
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public char[] getTextCharacters(int[] iArr) {
            String text = getText();
            if (text == null) {
                return null;
            }
            iArr[0] = 0;
            iArr[1] = text.length();
            char[] cArr = new char[text.length()];
            text.getChars(0, text.length(), cArr, 0);
            return cArr;
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public boolean isAttributeDefault(int i2) {
            return false;
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public boolean isEmptyElementTag() {
            return false;
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public boolean isWhitespace() {
            return false;
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public int next() {
            if (!this.mStarted) {
                this.mStarted = true;
                return 0;
            }
            int i2 = this.mParseState;
            if (i2 == 0) {
                return 1;
            }
            int iNativeNext = XmlBlock.nativeNext(i2);
            if (this.mDecNextDepth) {
                this.mDepth--;
                this.mDecNextDepth = false;
            }
            if (iNativeNext == 2) {
                this.mDepth++;
            } else if (iNativeNext == 3) {
                this.mDecNextDepth = true;
            }
            this.mEventType = iNativeNext;
            if (iNativeNext == 1) {
                close();
            }
            return iNativeNext;
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public int nextTag() throws XmlPullParserException {
            int next = next();
            if (next == 4 && isWhitespace()) {
                next = next();
            }
            if (next == 2 || next == 3) {
                return next;
            }
            throw new XmlPullParserException(getPositionDescription() + ": expected start or end tag", this, null);
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public String nextText() throws XmlPullParserException {
            if (getEventType() != 2) {
                throw new XmlPullParserException(getPositionDescription() + ": parser must be on START_TAG to read next text", this, null);
            }
            int next = next();
            if (next != 4) {
                if (next == 3) {
                    return ProxyProperties.LOCAL_EXCL_LIST;
                }
                throw new XmlPullParserException(getPositionDescription() + ": parser must be on START_TAG or TEXT to read text", this, null);
            }
            String text = getText();
            if (next() == 3) {
                return text;
            }
            throw new XmlPullParserException(getPositionDescription() + ": event TEXT it must be immediately followed by END_TAG", this, null);
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public int nextToken() {
            return next();
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public void require(int i2, String str, String str2) throws XmlPullParserException {
            if (i2 == getEventType() && ((str == null || str.equals(getNamespace())) && (str2 == null || str2.equals(getName())))) {
                return;
            }
            throw new XmlPullParserException("expected " + XmlPullParser.TYPES[i2] + getPositionDescription());
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public void setFeature(String str, boolean z2) throws XmlPullParserException {
            if ("http://xmlpull.org/v1/doc/features.html#process-namespaces".equals(str) && z2) {
                return;
            }
            if ("http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes".equals(str) && z2) {
                return;
            }
            throw new XmlPullParserException("Unsupported feature: " + str);
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public void setInput(Reader reader) throws XmlPullParserException {
            throw new XmlPullParserException("setInput() not supported");
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public void setProperty(String str, Object obj) throws XmlPullParserException {
            throw new XmlPullParserException("setProperty() not supported");
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public String getNamespace() {
            int iNativeGetNamespace = XmlBlock.nativeGetNamespace(this.mParseState);
            return iNativeGetNamespace >= 0 ? XmlBlock.this.mStrings.get(iNativeGetNamespace).toString() : ProxyProperties.LOCAL_EXCL_LIST;
        }

        @Override // org.xmlpull.v1.XmlPullParser
        public void setInput(InputStream inputStream, String str) throws XmlPullParserException {
            throw new XmlPullParserException("setInput() not supported");
        }

        @Override // android.util.AttributeSet
        public boolean getAttributeBooleanValue(int i2, boolean z2) {
            int iNativeGetAttributeDataType = XmlBlock.nativeGetAttributeDataType(this.mParseState, i2);
            if (iNativeGetAttributeDataType < 16 || iNativeGetAttributeDataType > 31) {
                return z2;
            }
            return XmlBlock.nativeGetAttributeData(this.mParseState, i2) != 0;
        }

        @Override // android.util.AttributeSet
        public float getAttributeFloatValue(int i2, float f2) {
            if (XmlBlock.nativeGetAttributeDataType(this.mParseState, i2) == 4) {
                return Float.intBitsToFloat(XmlBlock.nativeGetAttributeData(this.mParseState, i2));
            }
            throw new RuntimeException("not a float!");
        }

        @Override // android.util.AttributeSet
        public int getAttributeIntValue(int i2, int i3) {
            int iNativeGetAttributeDataType = XmlBlock.nativeGetAttributeDataType(this.mParseState, i2);
            return (iNativeGetAttributeDataType < 16 || iNativeGetAttributeDataType > 31) ? i3 : XmlBlock.nativeGetAttributeData(this.mParseState, i2);
        }

        @Override // android.util.AttributeSet
        public int getAttributeListValue(int i2, String[] strArr, int i3) {
            int iNativeGetAttributeDataType = XmlBlock.nativeGetAttributeDataType(this.mParseState, i2);
            int iNativeGetAttributeData = XmlBlock.nativeGetAttributeData(this.mParseState, i2);
            return iNativeGetAttributeDataType == 3 ? n.d(XmlBlock.this.mStrings.get(iNativeGetAttributeData), strArr, i3) : iNativeGetAttributeData;
        }

        @Override // android.util.AttributeSet
        public int getAttributeResourceValue(int i2, int i3) {
            return XmlBlock.nativeGetAttributeDataType(this.mParseState, i2) == 1 ? XmlBlock.nativeGetAttributeData(this.mParseState, i2) : i3;
        }

        @Override // android.util.AttributeSet
        public int getAttributeUnsignedIntValue(int i2, int i3) {
            int iNativeGetAttributeDataType = XmlBlock.nativeGetAttributeDataType(this.mParseState, i2);
            return (iNativeGetAttributeDataType < 16 || iNativeGetAttributeDataType > 31) ? i3 : XmlBlock.nativeGetAttributeData(this.mParseState, i2);
        }

        @Override // org.xmlpull.v1.XmlPullParser, android.util.AttributeSet
        public String getAttributeValue(String str, String str2) {
            int iNativeGetAttributeIndex = XmlBlock.nativeGetAttributeIndex(this.mParseState, str, str2);
            if (iNativeGetAttributeIndex >= 0) {
                return getAttributeValue(iNativeGetAttributeIndex);
            }
            return null;
        }
    }

    public XmlBlock(byte[] bArr) {
        this.mOpen = true;
        this.mOpenCount = 1;
        this.mAssets = null;
        int iNativeCreate = nativeCreate(bArr, 0, bArr.length);
        this.mNative = iNativeCreate;
        this.mStrings = new StringBlock(nativeGetStringBlock(iNativeCreate), false);
    }

    public static /* synthetic */ int access$008(XmlBlock xmlBlock) {
        int i2 = xmlBlock.mOpenCount;
        xmlBlock.mOpenCount = i2 + 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void decOpenCountLocked() {
        int i2 = this.mOpenCount - 1;
        this.mOpenCount = i2;
        if (i2 == 0) {
            nativeDestroy(this.mNative);
            AssetManager assetManager = this.mAssets;
            if (assetManager != null) {
                assetManager.xmlBlockGone(hashCode());
            }
        }
    }

    private static final native int nativeCreate(byte[] bArr, int i2, int i3);

    private static final native int nativeCreateParseState(int i2);

    private static final native void nativeDestroy(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void nativeDestroyParseState(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native int nativeGetAttributeCount(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native int nativeGetAttributeData(int i2, int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native int nativeGetAttributeDataType(int i2, int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native int nativeGetAttributeIndex(int i2, String str, String str2);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native int nativeGetAttributeName(int i2, int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native int nativeGetAttributeNamespace(int i2, int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native int nativeGetAttributeResource(int i2, int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native int nativeGetAttributeStringValue(int i2, int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native int nativeGetClassAttribute(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native int nativeGetIdAttribute(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native int nativeGetLineNumber(int i2);

    public static final native int nativeGetName(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native int nativeGetNamespace(int i2);

    private static final native int nativeGetStringBlock(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native int nativeGetStyleAttribute(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native int nativeGetText(int i2);

    public static final native int nativeNext(int i2);

    public void close() {
        synchronized (this) {
            if (this.mOpen) {
                this.mOpen = false;
                decOpenCountLocked();
            }
        }
    }

    public void finalize() {
        close();
    }

    public XmlResourceParser newParser() {
        synchronized (this) {
            int i2 = this.mNative;
            if (i2 == 0) {
                return null;
            }
            return new Parser(nativeCreateParseState(i2), this);
        }
    }

    public XmlBlock(byte[] bArr, int i2, int i3) {
        this.mOpen = true;
        this.mOpenCount = 1;
        this.mAssets = null;
        int iNativeCreate = nativeCreate(bArr, i2, i3);
        this.mNative = iNativeCreate;
        this.mStrings = new StringBlock(nativeGetStringBlock(iNativeCreate), false);
    }

    public XmlBlock(AssetManager assetManager, int i2) {
        this.mOpen = true;
        this.mOpenCount = 1;
        this.mAssets = assetManager;
        this.mNative = i2;
        this.mStrings = new StringBlock(nativeGetStringBlock(i2), false);
    }
}
