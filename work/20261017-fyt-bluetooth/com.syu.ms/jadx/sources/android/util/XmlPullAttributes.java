package android.util;

import android.app.Instrumentation;
import org.xmlpull.v1.XmlPullParser;
import u.n;

/* JADX INFO: loaded from: classes.dex */
class XmlPullAttributes implements AttributeSet {
    public XmlPullParser mParser;

    public XmlPullAttributes(XmlPullParser xmlPullParser) {
        this.mParser = xmlPullParser;
    }

    @Override // android.util.AttributeSet
    public boolean getAttributeBooleanValue(String str, String str2, boolean z2) {
        return n.b(getAttributeValue(str, str2), z2);
    }

    @Override // android.util.AttributeSet
    public int getAttributeCount() {
        return this.mParser.getAttributeCount();
    }

    @Override // android.util.AttributeSet
    public float getAttributeFloatValue(String str, String str2, float f2) {
        String attributeValue = getAttributeValue(str, str2);
        return attributeValue != null ? Float.parseFloat(attributeValue) : f2;
    }

    @Override // android.util.AttributeSet
    public int getAttributeIntValue(String str, String str2, int i2) {
        return n.c(getAttributeValue(str, str2), i2);
    }

    @Override // android.util.AttributeSet
    public int getAttributeListValue(String str, String str2, String[] strArr, int i2) {
        return n.d(getAttributeValue(str, str2), strArr, i2);
    }

    @Override // android.util.AttributeSet
    public String getAttributeName(int i2) {
        return this.mParser.getAttributeName(i2);
    }

    @Override // android.util.AttributeSet
    public int getAttributeNameResource(int i2) {
        return 0;
    }

    @Override // android.util.AttributeSet
    public int getAttributeResourceValue(String str, String str2, int i2) {
        return n.c(getAttributeValue(str, str2), i2);
    }

    @Override // android.util.AttributeSet
    public int getAttributeUnsignedIntValue(String str, String str2, int i2) {
        return n.e(getAttributeValue(str, str2), i2);
    }

    @Override // android.util.AttributeSet
    public String getAttributeValue(int i2) {
        return this.mParser.getAttributeValue(i2);
    }

    @Override // android.util.AttributeSet
    public String getClassAttribute() {
        return getAttributeValue(null, "class");
    }

    @Override // android.util.AttributeSet
    public String getIdAttribute() {
        return getAttributeValue(null, Instrumentation.REPORT_KEY_IDENTIFIER);
    }

    @Override // android.util.AttributeSet
    public int getIdAttributeResourceValue(int i2) {
        return getAttributeResourceValue(null, Instrumentation.REPORT_KEY_IDENTIFIER, i2);
    }

    @Override // android.util.AttributeSet
    public String getPositionDescription() {
        return this.mParser.getPositionDescription();
    }

    @Override // android.util.AttributeSet
    public int getStyleAttribute() {
        return getAttributeResourceValue(null, "style", 0);
    }

    @Override // android.util.AttributeSet
    public boolean getAttributeBooleanValue(int i2, boolean z2) {
        return n.b(getAttributeValue(i2), z2);
    }

    @Override // android.util.AttributeSet
    public int getAttributeIntValue(int i2, int i3) {
        return n.c(getAttributeValue(i2), i3);
    }

    @Override // android.util.AttributeSet
    public int getAttributeListValue(int i2, String[] strArr, int i3) {
        return n.d(getAttributeValue(i2), strArr, i3);
    }

    @Override // android.util.AttributeSet
    public int getAttributeResourceValue(int i2, int i3) {
        return n.c(getAttributeValue(i2), i3);
    }

    @Override // android.util.AttributeSet
    public int getAttributeUnsignedIntValue(int i2, int i3) {
        return n.e(getAttributeValue(i2), i3);
    }

    @Override // android.util.AttributeSet
    public String getAttributeValue(String str, String str2) {
        return this.mParser.getAttributeValue(str, str2);
    }

    @Override // android.util.AttributeSet
    public float getAttributeFloatValue(int i2, float f2) {
        String attributeValue = getAttributeValue(i2);
        return attributeValue != null ? Float.parseFloat(attributeValue) : f2;
    }
}
