package android.util;

import android.app.Instrumentation;
import android.media.TtmlUtils;
import com.android.internal.util.XmlUtils;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes2.dex */
class XmlPullAttributes implements AttributeSet {
    XmlPullParser mParser;

    public XmlPullAttributes(XmlPullParser xmlPullParser) {
        this.mParser = xmlPullParser;
    }

    @Override // android.util.AttributeSet
    public boolean getAttributeBooleanValue(String str, String str2, boolean z2) {
        return XmlUtils.convertValueToBoolean(getAttributeValue(str, str2), z2);
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
        return XmlUtils.convertValueToInt(getAttributeValue(str, str2), i2);
    }

    @Override // android.util.AttributeSet
    public int getAttributeListValue(String str, String str2, String[] strArr, int i2) {
        return XmlUtils.convertValueToList(getAttributeValue(str, str2), strArr, i2);
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
        return XmlUtils.convertValueToInt(getAttributeValue(str, str2), i2);
    }

    @Override // android.util.AttributeSet
    public int getAttributeUnsignedIntValue(String str, String str2, int i2) {
        return XmlUtils.convertValueToUnsignedInt(getAttributeValue(str, str2), i2);
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
        return getAttributeResourceValue(null, TtmlUtils.TAG_STYLE, 0);
    }

    @Override // android.util.AttributeSet
    public String getAttributeValue(String str, String str2) {
        return this.mParser.getAttributeValue(str, str2);
    }

    @Override // android.util.AttributeSet
    public boolean getAttributeBooleanValue(int i2, boolean z2) {
        return XmlUtils.convertValueToBoolean(getAttributeValue(i2), z2);
    }

    @Override // android.util.AttributeSet
    public float getAttributeFloatValue(int i2, float f2) {
        String attributeValue = getAttributeValue(i2);
        return attributeValue != null ? Float.parseFloat(attributeValue) : f2;
    }

    @Override // android.util.AttributeSet
    public int getAttributeIntValue(int i2, int i3) {
        return XmlUtils.convertValueToInt(getAttributeValue(i2), i3);
    }

    @Override // android.util.AttributeSet
    public int getAttributeListValue(int i2, String[] strArr, int i3) {
        return XmlUtils.convertValueToList(getAttributeValue(i2), strArr, i3);
    }

    @Override // android.util.AttributeSet
    public int getAttributeResourceValue(int i2, int i3) {
        return XmlUtils.convertValueToInt(getAttributeValue(i2), i3);
    }

    @Override // android.util.AttributeSet
    public int getAttributeUnsignedIntValue(int i2, int i3) {
        return XmlUtils.convertValueToUnsignedInt(getAttributeValue(i2), i3);
    }
}
