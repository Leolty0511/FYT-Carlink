package android.util;

/* JADX INFO: loaded from: classes2.dex */
public interface AttributeSet {
    boolean getAttributeBooleanValue(int i2, boolean z2);

    boolean getAttributeBooleanValue(String str, String str2, boolean z2);

    int getAttributeCount();

    float getAttributeFloatValue(int i2, float f2);

    float getAttributeFloatValue(String str, String str2, float f2);

    int getAttributeIntValue(int i2, int i3);

    int getAttributeIntValue(String str, String str2, int i2);

    int getAttributeListValue(int i2, String[] strArr, int i3);

    int getAttributeListValue(String str, String str2, String[] strArr, int i2);

    String getAttributeName(int i2);

    int getAttributeNameResource(int i2);

    int getAttributeResourceValue(int i2, int i3);

    int getAttributeResourceValue(String str, String str2, int i2);

    int getAttributeUnsignedIntValue(int i2, int i3);

    int getAttributeUnsignedIntValue(String str, String str2, int i2);

    String getAttributeValue(int i2);

    String getAttributeValue(String str, String str2);

    String getClassAttribute();

    String getIdAttribute();

    int getIdAttributeResourceValue(int i2);

    String getPositionDescription();

    int getStyleAttribute();
}
