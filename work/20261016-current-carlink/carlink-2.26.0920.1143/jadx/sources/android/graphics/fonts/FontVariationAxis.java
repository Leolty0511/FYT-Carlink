package android.graphics.fonts;

import android.accessibilityservice.c;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class FontVariationAxis {
    private final float mStyleValue;
    private final int mTag;
    private final String mTagString;
    private static final Pattern TAG_PATTERN = Pattern.compile("[ -~]{4}");
    private static final Pattern STYLE_VALUE_PATTERN = Pattern.compile("-?(([0-9]+(\\.[0-9]+)?)|(\\.[0-9]+))");

    public FontVariationAxis(String str, float f2) {
        if (!isValidTag(str)) {
            throw new IllegalArgumentException(c.j("Illegal tag pattern: ", str));
        }
        this.mTag = makeTag(str);
        this.mTagString = str;
        this.mStyleValue = f2;
    }

    public static FontVariationAxis[] fromFontVariationSettings(String str) {
        int i2;
        if (str == null || str.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i3 = 0;
        while (i3 < length) {
            char cCharAt = str.charAt(i3);
            if (!Character.isWhitespace(cCharAt)) {
                if ((cCharAt == '\'' || cCharAt == '\"') && length >= (i2 = i3 + 6)) {
                    int i4 = i3 + 5;
                    if (str.charAt(i4) == cCharAt) {
                        String strSubstring = str.substring(i3 + 1, i4);
                        int iIndexOf = str.indexOf(44, i2);
                        if (iIndexOf == -1) {
                            iIndexOf = length;
                        }
                        try {
                            arrayList.add(new FontVariationAxis(strSubstring, Float.parseFloat(str.substring(i2, iIndexOf))));
                            i3 = iIndexOf;
                        } catch (NumberFormatException e2) {
                            throw new IllegalArgumentException("Failed to parse float string: " + e2.getMessage());
                        }
                    }
                }
                throw new IllegalArgumentException("Tag should be wrapped with double or single quote: ".concat(str));
            }
            i3++;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (FontVariationAxis[]) arrayList.toArray(new FontVariationAxis[0]);
    }

    private static boolean isValidTag(String str) {
        return str != null && TAG_PATTERN.matcher(str).matches();
    }

    private static boolean isValidValueFormat(String str) {
        return str != null && STYLE_VALUE_PATTERN.matcher(str).matches();
    }

    public static int makeTag(String str) {
        return str.charAt(3) | (str.charAt(0) << 24) | (str.charAt(1) << 16) | (str.charAt(2) << '\b');
    }

    public static String toFontVariationSettings(FontVariationAxis[] fontVariationAxisArr) {
        return (fontVariationAxisArr == null || fontVariationAxisArr.length == 0) ? "" : TextUtils.join(",", fontVariationAxisArr);
    }

    public int getOpenTypeTagValue() {
        return this.mTag;
    }

    public float getStyleValue() {
        return this.mStyleValue;
    }

    public String getTag() {
        return this.mTagString;
    }

    public String toString() {
        return "'" + this.mTagString + "' " + Float.toString(this.mStyleValue);
    }
}
