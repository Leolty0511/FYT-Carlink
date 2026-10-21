package com.android.internal.util;

import android.accessibilityservice.c;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Base64;
import android.util.Xml;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.ims.ImsConfig;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ProtocolException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes3.dex */
public class XmlUtils {
    private static final String STRING_ARRAY_SEPARATOR = ":";

    public interface ReadMapCallback {
        Object readThisUnknownObjectXml(XmlPullParser xmlPullParser, String str);
    }

    public interface WriteMapCallback {
        void writeUnknownObject(Object obj, String str, XmlSerializer xmlSerializer);
    }

    public static final void beginDocument(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        if (xmlPullParser.getName().equals(str)) {
            return;
        }
        throw new XmlPullParserException("Unexpected start tag: found " + xmlPullParser.getName() + ", expected " + str);
    }

    public static final boolean convertValueToBoolean(CharSequence charSequence, boolean z2) {
        if (charSequence == null) {
            return z2;
        }
        return charSequence.equals(WifiEnterpriseConfig.ENGINE_ENABLE) || charSequence.equals("true") || charSequence.equals("TRUE");
    }

    public static final int convertValueToInt(CharSequence charSequence, int i2) {
        int i3;
        int i4;
        if (charSequence == null) {
            return i2;
        }
        String string = charSequence.toString();
        int length = string.length();
        if ('-' == string.charAt(0)) {
            i4 = -1;
            i3 = 1;
        } else {
            i3 = 0;
            i4 = 1;
        }
        int i5 = 16;
        if ('0' == string.charAt(i3)) {
            if (i3 == length - 1) {
                return 0;
            }
            int i6 = i3 + 1;
            char cCharAt = string.charAt(i6);
            if ('x' == cCharAt || 'X' == cCharAt) {
                i3 += 2;
            } else {
                i3 = i6;
                i5 = 8;
            }
        } else if ('#' == string.charAt(i3)) {
            i3++;
        } else {
            i5 = 10;
        }
        return Integer.parseInt(string.substring(i3), i5) * i4;
    }

    public static final int convertValueToList(CharSequence charSequence, String[] strArr, int i2) {
        if (charSequence != null) {
            for (int i3 = 0; i3 < strArr.length; i3++) {
                if (charSequence.equals(strArr[i3])) {
                    return i3;
                }
            }
        }
        return i2;
    }

    public static int convertValueToUnsignedInt(String str, int i2) {
        return str == null ? i2 : parseUnsignedIntAttribute(str);
    }

    public static final void nextElement(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                return;
            }
        } while (next != 1);
    }

    public static boolean nextElementWithin(XmlPullParser xmlPullParser, int i2) throws XmlPullParserException, IOException {
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return false;
            }
            if (next == 3 && xmlPullParser.getDepth() == i2) {
                return false;
            }
            if (next == 2 && xmlPullParser.getDepth() == i2 + 1) {
                return true;
            }
        }
    }

    public static int parseUnsignedIntAttribute(CharSequence charSequence) {
        String string = charSequence.toString();
        int length = string.length();
        int i2 = 0;
        int i3 = 16;
        if ('0' == string.charAt(0)) {
            if (length - 1 == 0) {
                return 0;
            }
            char cCharAt = string.charAt(1);
            if ('x' == cCharAt || 'X' == cCharAt) {
                i2 = 2;
            } else {
                i3 = 8;
                i2 = 1;
            }
        } else if ('#' == string.charAt(0)) {
            i2 = 1;
        } else {
            i3 = 10;
        }
        return (int) Long.parseLong(string.substring(i2), i3);
    }

    public static Bitmap readBitmapAttribute(XmlPullParser xmlPullParser, String str) {
        byte[] byteArrayAttribute = readByteArrayAttribute(xmlPullParser, str);
        if (byteArrayAttribute != null) {
            return BitmapFactory.decodeByteArray(byteArrayAttribute, 0, byteArrayAttribute.length);
        }
        return null;
    }

    public static boolean readBooleanAttribute(XmlPullParser xmlPullParser, String str) {
        return Boolean.parseBoolean(xmlPullParser.getAttributeValue(null, str));
    }

    public static byte[] readByteArrayAttribute(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return Base64.decode(attributeValue, 0);
        }
        return null;
    }

    public static float readFloatAttribute(XmlPullParser xmlPullParser, String str) throws ProtocolException {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        try {
            return Float.parseFloat(attributeValue);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("problem parsing " + str + "=" + attributeValue + " as long");
        }
    }

    public static int readIntAttribute(XmlPullParser xmlPullParser, String str, int i2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (TextUtils.isEmpty(attributeValue)) {
            return i2;
        }
        try {
            return Integer.parseInt(attributeValue);
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public static final ArrayList readListXml(InputStream inputStream) throws XmlPullParserException {
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setInput(inputStream, StandardCharsets.UTF_8.name());
        return (ArrayList) readValueXml(xmlPullParserNewPullParser, new String[1]);
    }

    public static long readLongAttribute(XmlPullParser xmlPullParser, String str, long j2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (TextUtils.isEmpty(attributeValue)) {
            return j2;
        }
        try {
            return Long.parseLong(attributeValue);
        } catch (NumberFormatException unused) {
            return j2;
        }
    }

    public static final HashMap<String, ?> readMapXml(InputStream inputStream) throws XmlPullParserException {
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setInput(inputStream, StandardCharsets.UTF_8.name());
        return (HashMap) readValueXml(xmlPullParserNewPullParser, new String[1]);
    }

    public static final HashSet readSetXml(InputStream inputStream) throws XmlPullParserException {
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setInput(inputStream, null);
        return (HashSet) readValueXml(xmlPullParserNewPullParser, new String[1]);
    }

    public static String readStringAttribute(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue(null, str);
    }

    public static final ArrayMap<String, ?> readThisArrayMapXml(XmlPullParser xmlPullParser, String str, String[] strArr, ReadMapCallback readMapCallback) throws XmlPullParserException, IOException {
        ArrayMap<String, ?> arrayMap = new ArrayMap<>();
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                arrayMap.put(strArr[0], readThisValueXml(xmlPullParser, strArr, readMapCallback, true));
            } else if (eventType == 3) {
                if (xmlPullParser.getName().equals(str)) {
                    return arrayMap;
                }
                throw new XmlPullParserException(c.p(xmlPullParser, c.v("Expected ", str, " end tag at: ")));
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        throw new XmlPullParserException(c.k("Document ended before ", str, " end tag"));
    }

    public static final boolean[] readThisBooleanArrayXml(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        try {
            int i2 = Integer.parseInt(xmlPullParser.getAttributeValue(null, "num"));
            xmlPullParser.next();
            boolean[] zArr = new boolean[i2];
            int eventType = xmlPullParser.getEventType();
            int i3 = 0;
            do {
                if (eventType == 2) {
                    if (!xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                        throw new XmlPullParserException(c.p(xmlPullParser, new StringBuilder("Expected item tag at: ")));
                    }
                    try {
                        zArr[i3] = Boolean.parseBoolean(xmlPullParser.getAttributeValue(null, "value"));
                    } catch (NullPointerException unused) {
                        throw new XmlPullParserException("Need value attribute in item");
                    } catch (NumberFormatException unused2) {
                        throw new XmlPullParserException("Not a number in value attribute in item");
                    }
                } else if (eventType == 3) {
                    if (xmlPullParser.getName().equals(str)) {
                        return zArr;
                    }
                    if (!xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                        throw new XmlPullParserException(c.p(xmlPullParser, c.v("Expected ", str, " end tag at: ")));
                    }
                    i3++;
                }
                eventType = xmlPullParser.next();
            } while (eventType != 1);
            throw new XmlPullParserException(c.k("Document ended before ", str, " end tag"));
        } catch (NullPointerException unused3) {
            throw new XmlPullParserException("Need num attribute in string-array");
        } catch (NumberFormatException unused4) {
            throw new XmlPullParserException("Not a number in num attribute in string-array");
        }
    }

    public static final byte[] readThisByteArrayXml(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        try {
            int i2 = Integer.parseInt(xmlPullParser.getAttributeValue(null, "num"));
            byte[] bArr = new byte[i2];
            int eventType = xmlPullParser.getEventType();
            do {
                if (eventType == 4) {
                    if (i2 > 0) {
                        String text = xmlPullParser.getText();
                        if (text == null || text.length() != i2 * 2) {
                            throw new XmlPullParserException(c.j("Invalid value found in byte-array: ", text));
                        }
                        for (int i3 = 0; i3 < i2; i3++) {
                            int i4 = i3 * 2;
                            char cCharAt = text.charAt(i4);
                            char cCharAt2 = text.charAt(i4 + 1);
                            bArr[i3] = (byte) (((cCharAt2 > 'a' ? (cCharAt2 - 'a') + 10 : cCharAt2 - '0') & 15) | (((cCharAt > 'a' ? (cCharAt - 'a') + 10 : cCharAt - '0') & 15) << 4));
                        }
                    }
                } else if (eventType == 3) {
                    if (xmlPullParser.getName().equals(str)) {
                        return bArr;
                    }
                    throw new XmlPullParserException(c.p(xmlPullParser, c.v("Expected ", str, " end tag at: ")));
                }
                eventType = xmlPullParser.next();
            } while (eventType != 1);
            throw new XmlPullParserException(c.k("Document ended before ", str, " end tag"));
        } catch (NullPointerException unused) {
            throw new XmlPullParserException("Need num attribute in byte-array");
        } catch (NumberFormatException unused2) {
            throw new XmlPullParserException("Not a number in num attribute in byte-array");
        }
    }

    public static final double[] readThisDoubleArrayXml(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        try {
            int i2 = Integer.parseInt(xmlPullParser.getAttributeValue(null, "num"));
            xmlPullParser.next();
            double[] dArr = new double[i2];
            int eventType = xmlPullParser.getEventType();
            int i3 = 0;
            do {
                if (eventType == 2) {
                    if (!xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                        throw new XmlPullParserException(c.p(xmlPullParser, new StringBuilder("Expected item tag at: ")));
                    }
                    try {
                        dArr[i3] = Double.parseDouble(xmlPullParser.getAttributeValue(null, "value"));
                    } catch (NullPointerException unused) {
                        throw new XmlPullParserException("Need value attribute in item");
                    } catch (NumberFormatException unused2) {
                        throw new XmlPullParserException("Not a number in value attribute in item");
                    }
                } else if (eventType == 3) {
                    if (xmlPullParser.getName().equals(str)) {
                        return dArr;
                    }
                    if (!xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                        throw new XmlPullParserException(c.p(xmlPullParser, c.v("Expected ", str, " end tag at: ")));
                    }
                    i3++;
                }
                eventType = xmlPullParser.next();
            } while (eventType != 1);
            throw new XmlPullParserException(c.k("Document ended before ", str, " end tag"));
        } catch (NullPointerException unused3) {
            throw new XmlPullParserException("Need num attribute in double-array");
        } catch (NumberFormatException unused4) {
            throw new XmlPullParserException("Not a number in num attribute in double-array");
        }
    }

    public static final int[] readThisIntArrayXml(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        try {
            int i2 = Integer.parseInt(xmlPullParser.getAttributeValue(null, "num"));
            xmlPullParser.next();
            int[] iArr = new int[i2];
            int eventType = xmlPullParser.getEventType();
            int i3 = 0;
            do {
                if (eventType == 2) {
                    if (!xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                        throw new XmlPullParserException(c.p(xmlPullParser, new StringBuilder("Expected item tag at: ")));
                    }
                    try {
                        iArr[i3] = Integer.parseInt(xmlPullParser.getAttributeValue(null, "value"));
                    } catch (NullPointerException unused) {
                        throw new XmlPullParserException("Need value attribute in item");
                    } catch (NumberFormatException unused2) {
                        throw new XmlPullParserException("Not a number in value attribute in item");
                    }
                } else if (eventType == 3) {
                    if (xmlPullParser.getName().equals(str)) {
                        return iArr;
                    }
                    if (!xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                        throw new XmlPullParserException(c.p(xmlPullParser, c.v("Expected ", str, " end tag at: ")));
                    }
                    i3++;
                }
                eventType = xmlPullParser.next();
            } while (eventType != 1);
            throw new XmlPullParserException(c.k("Document ended before ", str, " end tag"));
        } catch (NullPointerException unused3) {
            throw new XmlPullParserException("Need num attribute in int-array");
        } catch (NumberFormatException unused4) {
            throw new XmlPullParserException("Not a number in num attribute in int-array");
        }
    }

    public static final ArrayList readThisListXml(XmlPullParser xmlPullParser, String str, String[] strArr) {
        return readThisListXml(xmlPullParser, str, strArr, null, false);
    }

    public static final long[] readThisLongArrayXml(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        try {
            int i2 = Integer.parseInt(xmlPullParser.getAttributeValue(null, "num"));
            xmlPullParser.next();
            long[] jArr = new long[i2];
            int eventType = xmlPullParser.getEventType();
            int i3 = 0;
            do {
                if (eventType == 2) {
                    if (!xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                        throw new XmlPullParserException(c.p(xmlPullParser, new StringBuilder("Expected item tag at: ")));
                    }
                    try {
                        jArr[i3] = Long.parseLong(xmlPullParser.getAttributeValue(null, "value"));
                    } catch (NullPointerException unused) {
                        throw new XmlPullParserException("Need value attribute in item");
                    } catch (NumberFormatException unused2) {
                        throw new XmlPullParserException("Not a number in value attribute in item");
                    }
                } else if (eventType == 3) {
                    if (xmlPullParser.getName().equals(str)) {
                        return jArr;
                    }
                    if (!xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                        throw new XmlPullParserException(c.p(xmlPullParser, c.v("Expected ", str, " end tag at: ")));
                    }
                    i3++;
                }
                eventType = xmlPullParser.next();
            } while (eventType != 1);
            throw new XmlPullParserException(c.k("Document ended before ", str, " end tag"));
        } catch (NullPointerException unused3) {
            throw new XmlPullParserException("Need num attribute in long-array");
        } catch (NumberFormatException unused4) {
            throw new XmlPullParserException("Not a number in num attribute in long-array");
        }
    }

    public static final HashMap<String, ?> readThisMapXml(XmlPullParser xmlPullParser, String str, String[] strArr) {
        return readThisMapXml(xmlPullParser, str, strArr, null);
    }

    private static final Object readThisPrimitiveValueXml(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        try {
            if (str.equals("int")) {
                return Integer.valueOf(Integer.parseInt(xmlPullParser.getAttributeValue(null, "value")));
            }
            if (str.equals("long")) {
                return Long.valueOf(xmlPullParser.getAttributeValue(null, "value"));
            }
            if (str.equals(TypedValues.Custom.S_FLOAT)) {
                return new Float(xmlPullParser.getAttributeValue(null, "value"));
            }
            if (str.equals("double")) {
                return new Double(xmlPullParser.getAttributeValue(null, "value"));
            }
            if (str.equals(TypedValues.Custom.S_BOOLEAN)) {
                return Boolean.valueOf(xmlPullParser.getAttributeValue(null, "value"));
            }
            return null;
        } catch (NullPointerException unused) {
            throw new XmlPullParserException(c.k("Need value attribute in <", str, ">"));
        } catch (NumberFormatException unused2) {
            throw new XmlPullParserException(c.k("Not a number in value attribute in <", str, ">"));
        }
    }

    public static final HashSet readThisSetXml(XmlPullParser xmlPullParser, String str, String[] strArr) {
        return readThisSetXml(xmlPullParser, str, strArr, null, false);
    }

    public static final String[] readThisStringArrayXml(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        try {
            int i2 = Integer.parseInt(xmlPullParser.getAttributeValue(null, "num"));
            xmlPullParser.next();
            String[] strArr2 = new String[i2];
            int eventType = xmlPullParser.getEventType();
            int i3 = 0;
            do {
                if (eventType == 2) {
                    if (!xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                        throw new XmlPullParserException(c.p(xmlPullParser, new StringBuilder("Expected item tag at: ")));
                    }
                    try {
                        strArr2[i3] = xmlPullParser.getAttributeValue(null, "value");
                    } catch (NullPointerException unused) {
                        throw new XmlPullParserException("Need value attribute in item");
                    } catch (NumberFormatException unused2) {
                        throw new XmlPullParserException("Not a number in value attribute in item");
                    }
                } else if (eventType == 3) {
                    if (xmlPullParser.getName().equals(str)) {
                        return strArr2;
                    }
                    if (!xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                        throw new XmlPullParserException(c.p(xmlPullParser, c.v("Expected ", str, " end tag at: ")));
                    }
                    i3++;
                }
                eventType = xmlPullParser.next();
            } while (eventType != 1);
            throw new XmlPullParserException(c.k("Document ended before ", str, " end tag"));
        } catch (NullPointerException unused3) {
            throw new XmlPullParserException("Need num attribute in string-array");
        } catch (NumberFormatException unused4) {
            throw new XmlPullParserException("Not a number in num attribute in string-array");
        }
    }

    private static final Object readThisValueXml(XmlPullParser xmlPullParser, String[] strArr, ReadMapCallback readMapCallback, boolean z2) throws XmlPullParserException, IOException {
        int next;
        Object thisPrimitiveValueXml = null;
        String attributeValue = xmlPullParser.getAttributeValue(null, "name");
        String name = xmlPullParser.getName();
        if (!name.equals("null")) {
            if (name.equals(TypedValues.Custom.S_STRING)) {
                String string = "";
                while (true) {
                    int next2 = xmlPullParser.next();
                    if (next2 == 1) {
                        throw new XmlPullParserException("Unexpected end of document in <string>");
                    }
                    if (next2 == 3) {
                        if (!xmlPullParser.getName().equals(TypedValues.Custom.S_STRING)) {
                            throw new XmlPullParserException(c.p(xmlPullParser, new StringBuilder("Unexpected end tag in <string>: ")));
                        }
                        strArr[0] = attributeValue;
                        return string;
                    }
                    if (next2 == 4) {
                        StringBuilder sbR = c.r(string);
                        sbR.append(xmlPullParser.getText());
                        string = sbR.toString();
                    } else if (next2 == 2) {
                        throw new XmlPullParserException(c.p(xmlPullParser, new StringBuilder("Unexpected start tag in <string>: ")));
                    }
                }
            } else {
                thisPrimitiveValueXml = readThisPrimitiveValueXml(xmlPullParser, name);
                if (thisPrimitiveValueXml == null) {
                    if (name.equals("byte-array")) {
                        byte[] thisByteArrayXml = readThisByteArrayXml(xmlPullParser, "byte-array", strArr);
                        strArr[0] = attributeValue;
                        return thisByteArrayXml;
                    }
                    if (name.equals("int-array")) {
                        int[] thisIntArrayXml = readThisIntArrayXml(xmlPullParser, "int-array", strArr);
                        strArr[0] = attributeValue;
                        return thisIntArrayXml;
                    }
                    if (name.equals("long-array")) {
                        long[] thisLongArrayXml = readThisLongArrayXml(xmlPullParser, "long-array", strArr);
                        strArr[0] = attributeValue;
                        return thisLongArrayXml;
                    }
                    if (name.equals("double-array")) {
                        double[] thisDoubleArrayXml = readThisDoubleArrayXml(xmlPullParser, "double-array", strArr);
                        strArr[0] = attributeValue;
                        return thisDoubleArrayXml;
                    }
                    if (name.equals("string-array")) {
                        String[] thisStringArrayXml = readThisStringArrayXml(xmlPullParser, "string-array", strArr);
                        strArr[0] = attributeValue;
                        return thisStringArrayXml;
                    }
                    if (name.equals("boolean-array")) {
                        boolean[] thisBooleanArrayXml = readThisBooleanArrayXml(xmlPullParser, "boolean-array", strArr);
                        strArr[0] = attributeValue;
                        return thisBooleanArrayXml;
                    }
                    if (name.equals("map")) {
                        xmlPullParser.next();
                        Object thisArrayMapXml = z2 ? readThisArrayMapXml(xmlPullParser, "map", strArr, readMapCallback) : readThisMapXml(xmlPullParser, "map", strArr, readMapCallback);
                        strArr[0] = attributeValue;
                        return thisArrayMapXml;
                    }
                    if (name.equals("list")) {
                        xmlPullParser.next();
                        ArrayList thisListXml = readThisListXml(xmlPullParser, "list", strArr, readMapCallback, z2);
                        strArr[0] = attributeValue;
                        return thisListXml;
                    }
                    if (name.equals("set")) {
                        xmlPullParser.next();
                        HashSet thisSetXml = readThisSetXml(xmlPullParser, "set", strArr, readMapCallback, z2);
                        strArr[0] = attributeValue;
                        return thisSetXml;
                    }
                    if (readMapCallback == null) {
                        throw new XmlPullParserException("Unknown tag: ".concat(name));
                    }
                    Object thisUnknownObjectXml = readMapCallback.readThisUnknownObjectXml(xmlPullParser, name);
                    strArr[0] = attributeValue;
                    return thisUnknownObjectXml;
                }
            }
        }
        do {
            next = xmlPullParser.next();
            if (next == 1) {
                throw new XmlPullParserException(c.k("Unexpected end of document in <", name, ">"));
            }
            if (next == 3) {
                if (!xmlPullParser.getName().equals(name)) {
                    throw new XmlPullParserException(c.p(xmlPullParser, c.v("Unexpected end tag in <", name, ">: ")));
                }
                strArr[0] = attributeValue;
                return thisPrimitiveValueXml;
            }
            if (next == 4) {
                throw new XmlPullParserException(c.p(xmlPullParser, c.v("Unexpected text in <", name, ">: ")));
            }
        } while (next != 2);
        throw new XmlPullParserException(c.p(xmlPullParser, c.v("Unexpected start tag in <", name, ">: ")));
    }

    public static Uri readUriAttribute(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return Uri.parse(attributeValue);
        }
        return null;
    }

    public static final Object readValueXml(XmlPullParser xmlPullParser, String[] strArr) throws XmlPullParserException, IOException {
        int eventType = xmlPullParser.getEventType();
        while (eventType != 2) {
            if (eventType == 3) {
                throw new XmlPullParserException(c.p(xmlPullParser, new StringBuilder("Unexpected end tag at: ")));
            }
            if (eventType == 4) {
                throw new XmlPullParserException("Unexpected text: " + xmlPullParser.getText());
            }
            eventType = xmlPullParser.next();
            if (eventType == 1) {
                throw new XmlPullParserException("Unexpected end of document");
            }
        }
        return readThisValueXml(xmlPullParser, strArr, null, false);
    }

    public static void skipCurrentTag(XmlPullParser xmlPullParser) {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
        }
    }

    @Deprecated
    public static void writeBitmapAttribute(XmlSerializer xmlSerializer, String str, Bitmap bitmap) throws IOException {
        if (bitmap != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
            writeByteArrayAttribute(xmlSerializer, str, byteArrayOutputStream.toByteArray());
        }
    }

    public static final void writeBooleanArrayXml(boolean[] zArr, String str, XmlSerializer xmlSerializer) throws IOException {
        if (zArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "boolean-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "num", Integer.toString(zArr.length));
        for (boolean z2 : zArr) {
            xmlSerializer.startTag(null, ImsConfig.EXTRA_CHANGED_ITEM);
            xmlSerializer.attribute(null, "value", Boolean.toString(z2));
            xmlSerializer.endTag(null, ImsConfig.EXTRA_CHANGED_ITEM);
        }
        xmlSerializer.endTag(null, "boolean-array");
    }

    public static void writeBooleanAttribute(XmlSerializer xmlSerializer, String str, boolean z2) throws IOException {
        xmlSerializer.attribute(null, str, Boolean.toString(z2));
    }

    public static void writeByteArrayAttribute(XmlSerializer xmlSerializer, String str, byte[] bArr) throws IOException {
        if (bArr != null) {
            xmlSerializer.attribute(null, str, Base64.encodeToString(bArr, 0));
        }
    }

    public static final void writeByteArrayXml(byte[] bArr, String str, XmlSerializer xmlSerializer) throws IOException {
        if (bArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "byte-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "num", Integer.toString(bArr.length));
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b2 : bArr) {
            int i2 = (b2 >> 4) & 15;
            sb.append((char) (i2 >= 10 ? (i2 + 97) - 10 : i2 + 48));
            int i3 = b2 & 15;
            sb.append((char) (i3 >= 10 ? (i3 + 97) - 10 : i3 + 48));
        }
        xmlSerializer.text(sb.toString());
        xmlSerializer.endTag(null, "byte-array");
    }

    public static final void writeDoubleArrayXml(double[] dArr, String str, XmlSerializer xmlSerializer) throws IOException {
        if (dArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "double-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "num", Integer.toString(dArr.length));
        for (double d2 : dArr) {
            xmlSerializer.startTag(null, ImsConfig.EXTRA_CHANGED_ITEM);
            xmlSerializer.attribute(null, "value", Double.toString(d2));
            xmlSerializer.endTag(null, ImsConfig.EXTRA_CHANGED_ITEM);
        }
        xmlSerializer.endTag(null, "double-array");
    }

    public static void writeFloatAttribute(XmlSerializer xmlSerializer, String str, float f2) throws IOException {
        xmlSerializer.attribute(null, str, Float.toString(f2));
    }

    public static final void writeIntArrayXml(int[] iArr, String str, XmlSerializer xmlSerializer) throws IOException {
        if (iArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "int-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "num", Integer.toString(iArr.length));
        for (int i2 : iArr) {
            xmlSerializer.startTag(null, ImsConfig.EXTRA_CHANGED_ITEM);
            xmlSerializer.attribute(null, "value", Integer.toString(i2));
            xmlSerializer.endTag(null, ImsConfig.EXTRA_CHANGED_ITEM);
        }
        xmlSerializer.endTag(null, "int-array");
    }

    public static void writeIntAttribute(XmlSerializer xmlSerializer, String str, int i2) {
        xmlSerializer.attribute(null, str, Integer.toString(i2));
    }

    public static final void writeListXml(List list, OutputStream outputStream) throws IOException {
        XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
        xmlSerializerNewSerializer.setOutput(outputStream, StandardCharsets.UTF_8.name());
        xmlSerializerNewSerializer.startDocument(null, Boolean.TRUE);
        xmlSerializerNewSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        writeListXml(list, null, xmlSerializerNewSerializer);
        xmlSerializerNewSerializer.endDocument();
    }

    public static final void writeLongArrayXml(long[] jArr, String str, XmlSerializer xmlSerializer) throws IOException {
        if (jArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "long-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "num", Integer.toString(jArr.length));
        for (long j2 : jArr) {
            xmlSerializer.startTag(null, ImsConfig.EXTRA_CHANGED_ITEM);
            xmlSerializer.attribute(null, "value", Long.toString(j2));
            xmlSerializer.endTag(null, ImsConfig.EXTRA_CHANGED_ITEM);
        }
        xmlSerializer.endTag(null, "long-array");
    }

    public static void writeLongAttribute(XmlSerializer xmlSerializer, String str, long j2) throws IOException {
        xmlSerializer.attribute(null, str, Long.toString(j2));
    }

    public static final void writeMapXml(Map map, OutputStream outputStream) throws IOException {
        FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
        fastXmlSerializer.setOutput(outputStream, StandardCharsets.UTF_8.name());
        fastXmlSerializer.startDocument(null, Boolean.TRUE);
        fastXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        writeMapXml(map, (String) null, fastXmlSerializer);
        fastXmlSerializer.endDocument();
    }

    public static final void writeSetXml(Set set, String str, XmlSerializer xmlSerializer) throws IOException {
        if (set == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "set");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            writeValueXml(it.next(), null, xmlSerializer);
        }
        xmlSerializer.endTag(null, "set");
    }

    public static final void writeStringArrayXml(String[] strArr, String str, XmlSerializer xmlSerializer) throws IOException {
        if (strArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "string-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "num", Integer.toString(strArr.length));
        for (String str2 : strArr) {
            xmlSerializer.startTag(null, ImsConfig.EXTRA_CHANGED_ITEM);
            xmlSerializer.attribute(null, "value", str2);
            xmlSerializer.endTag(null, ImsConfig.EXTRA_CHANGED_ITEM);
        }
        xmlSerializer.endTag(null, "string-array");
    }

    public static void writeStringAttribute(XmlSerializer xmlSerializer, String str, CharSequence charSequence) {
        if (charSequence != null) {
            xmlSerializer.attribute(null, str, charSequence.toString());
        }
    }

    public static void writeUriAttribute(XmlSerializer xmlSerializer, String str, Uri uri) throws IOException {
        if (uri != null) {
            xmlSerializer.attribute(null, str, uri.toString());
        }
    }

    public static final void writeValueXml(Object obj, String str, XmlSerializer xmlSerializer) throws IOException {
        writeValueXml(obj, str, xmlSerializer, null);
    }

    private static final ArrayList readThisListXml(XmlPullParser xmlPullParser, String str, String[] strArr, ReadMapCallback readMapCallback, boolean z2) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                arrayList.add(readThisValueXml(xmlPullParser, strArr, readMapCallback, z2));
            } else if (eventType == 3) {
                if (xmlPullParser.getName().equals(str)) {
                    return arrayList;
                }
                throw new XmlPullParserException(c.p(xmlPullParser, c.v("Expected ", str, " end tag at: ")));
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        throw new XmlPullParserException(c.k("Document ended before ", str, " end tag"));
    }

    public static final HashMap<String, ?> readThisMapXml(XmlPullParser xmlPullParser, String str, String[] strArr, ReadMapCallback readMapCallback) throws XmlPullParserException, IOException {
        HashMap<String, ?> map = new HashMap<>();
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                map.put(strArr[0], readThisValueXml(xmlPullParser, strArr, readMapCallback, false));
            } else if (eventType == 3) {
                if (xmlPullParser.getName().equals(str)) {
                    return map;
                }
                throw new XmlPullParserException(c.p(xmlPullParser, c.v("Expected ", str, " end tag at: ")));
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        throw new XmlPullParserException(c.k("Document ended before ", str, " end tag"));
    }

    private static final HashSet readThisSetXml(XmlPullParser xmlPullParser, String str, String[] strArr, ReadMapCallback readMapCallback, boolean z2) throws XmlPullParserException, IOException {
        HashSet hashSet = new HashSet();
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                hashSet.add(readThisValueXml(xmlPullParser, strArr, readMapCallback, z2));
            } else if (eventType == 3) {
                if (xmlPullParser.getName().equals(str)) {
                    return hashSet;
                }
                throw new XmlPullParserException(c.p(xmlPullParser, c.v("Expected ", str, " end tag at: ")));
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        throw new XmlPullParserException(c.k("Document ended before ", str, " end tag"));
    }

    private static final void writeValueXml(Object obj, String str, XmlSerializer xmlSerializer, WriteMapCallback writeMapCallback) throws IOException {
        String str2;
        if (obj == null) {
            xmlSerializer.startTag(null, "null");
            if (str != null) {
                xmlSerializer.attribute(null, "name", str);
            }
            xmlSerializer.endTag(null, "null");
            return;
        }
        if (obj instanceof String) {
            xmlSerializer.startTag(null, TypedValues.Custom.S_STRING);
            if (str != null) {
                xmlSerializer.attribute(null, "name", str);
            }
            xmlSerializer.text(obj.toString());
            xmlSerializer.endTag(null, TypedValues.Custom.S_STRING);
            return;
        }
        if (obj instanceof Integer) {
            str2 = "int";
        } else if (obj instanceof Long) {
            str2 = "long";
        } else if (obj instanceof Float) {
            str2 = TypedValues.Custom.S_FLOAT;
        } else if (obj instanceof Double) {
            str2 = "double";
        } else {
            if (!(obj instanceof Boolean)) {
                if (obj instanceof byte[]) {
                    writeByteArrayXml((byte[]) obj, str, xmlSerializer);
                    return;
                }
                if (obj instanceof int[]) {
                    writeIntArrayXml((int[]) obj, str, xmlSerializer);
                    return;
                }
                if (obj instanceof long[]) {
                    writeLongArrayXml((long[]) obj, str, xmlSerializer);
                    return;
                }
                if (obj instanceof double[]) {
                    writeDoubleArrayXml((double[]) obj, str, xmlSerializer);
                    return;
                }
                if (obj instanceof String[]) {
                    writeStringArrayXml((String[]) obj, str, xmlSerializer);
                    return;
                }
                if (obj instanceof boolean[]) {
                    writeBooleanArrayXml((boolean[]) obj, str, xmlSerializer);
                    return;
                }
                if (obj instanceof Map) {
                    writeMapXml((Map) obj, str, xmlSerializer);
                    return;
                }
                if (obj instanceof List) {
                    writeListXml((List) obj, str, xmlSerializer);
                    return;
                }
                if (obj instanceof Set) {
                    writeSetXml((Set) obj, str, xmlSerializer);
                    return;
                }
                if (obj instanceof CharSequence) {
                    xmlSerializer.startTag(null, TypedValues.Custom.S_STRING);
                    if (str != null) {
                        xmlSerializer.attribute(null, "name", str);
                    }
                    xmlSerializer.text(obj.toString());
                    xmlSerializer.endTag(null, TypedValues.Custom.S_STRING);
                    return;
                }
                if (writeMapCallback != null) {
                    writeMapCallback.writeUnknownObject(obj, str, xmlSerializer);
                    return;
                } else {
                    throw new RuntimeException("writeValueXml: unable to write value " + obj);
                }
            }
            str2 = TypedValues.Custom.S_BOOLEAN;
        }
        xmlSerializer.startTag(null, str2);
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "value", obj.toString());
        xmlSerializer.endTag(null, str2);
    }

    public static boolean readBooleanAttribute(XmlPullParser xmlPullParser, String str, boolean z2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? z2 : Boolean.parseBoolean(attributeValue);
    }

    public static int readIntAttribute(XmlPullParser xmlPullParser, String str) throws ProtocolException {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        try {
            return Integer.parseInt(attributeValue);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("problem parsing " + str + "=" + attributeValue + " as int");
        }
    }

    public static long readLongAttribute(XmlPullParser xmlPullParser, String str) throws ProtocolException {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        try {
            return Long.parseLong(attributeValue);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("problem parsing " + str + "=" + attributeValue + " as long");
        }
    }

    public static final void writeListXml(List list, String str, XmlSerializer xmlSerializer) throws IOException {
        if (list == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "list");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            writeValueXml(list.get(i2), null, xmlSerializer);
        }
        xmlSerializer.endTag(null, "list");
    }

    public static final void writeMapXml(Map map, String str, XmlSerializer xmlSerializer) throws IOException {
        writeMapXml(map, str, xmlSerializer, null);
    }

    public static final void writeMapXml(Map map, String str, XmlSerializer xmlSerializer, WriteMapCallback writeMapCallback) throws IOException {
        if (map == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "map");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        writeMapXml(map, xmlSerializer, writeMapCallback);
        xmlSerializer.endTag(null, "map");
    }

    public static final void writeMapXml(Map map, XmlSerializer xmlSerializer, WriteMapCallback writeMapCallback) throws IOException {
        if (map == null) {
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            writeValueXml(entry.getValue(), (String) entry.getKey(), xmlSerializer, writeMapCallback);
        }
    }
}
