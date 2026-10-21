package android.net;

import android.net.http.CharArrayBuffers;
import android.text.format.DateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class UrlQuerySanitizer {
    private boolean mAllowUnregisteredParamaters;
    private boolean mPreferFirstRepeatedParameter;
    private static final ValueSanitizer sAllIllegal = new IllegalCharacterValueSanitizer(0);
    private static final ValueSanitizer sAllButNulLegal = new IllegalCharacterValueSanitizer(IllegalCharacterValueSanitizer.ALL_BUT_NUL_LEGAL);
    private static final ValueSanitizer sAllButWhitespaceLegal = new IllegalCharacterValueSanitizer(IllegalCharacterValueSanitizer.ALL_BUT_WHITESPACE_LEGAL);
    private static final ValueSanitizer sURLLegal = new IllegalCharacterValueSanitizer(IllegalCharacterValueSanitizer.URL_LEGAL);
    private static final ValueSanitizer sUrlAndSpaceLegal = new IllegalCharacterValueSanitizer(IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL);
    private static final ValueSanitizer sAmpLegal = new IllegalCharacterValueSanitizer(128);
    private static final ValueSanitizer sAmpAndSpaceLegal = new IllegalCharacterValueSanitizer(129);
    private static final ValueSanitizer sSpaceLegal = new IllegalCharacterValueSanitizer(1);
    private static final ValueSanitizer sAllButNulAndAngleBracketsLegal = new IllegalCharacterValueSanitizer(IllegalCharacterValueSanitizer.ALL_BUT_NUL_AND_ANGLE_BRACKETS_LEGAL);
    private final HashMap<String, ValueSanitizer> mSanitizers = new HashMap<>();
    private final HashMap<String, String> mEntries = new HashMap<>();
    private final ArrayList<ParameterValuePair> mEntriesList = new ArrayList<>();
    private ValueSanitizer mUnregisteredParameterValueSanitizer = getAllIllegal();

    public static class IllegalCharacterValueSanitizer implements ValueSanitizer {
        public static final int ALL_BUT_NUL_AND_ANGLE_BRACKETS_LEGAL = 1439;
        public static final int ALL_BUT_NUL_LEGAL = 1535;
        public static final int ALL_BUT_WHITESPACE_LEGAL = 1532;
        public static final int ALL_ILLEGAL = 0;
        public static final int ALL_OK = 2047;
        public static final int ALL_WHITESPACE_OK = 3;
        public static final int AMP_AND_SPACE_LEGAL = 129;
        public static final int AMP_LEGAL = 128;
        public static final int AMP_OK = 128;
        public static final int DQUOTE_OK = 8;
        public static final int GT_OK = 64;
        private static final String JAVASCRIPT_PREFIX = "javascript:";
        public static final int LT_OK = 32;
        private static final int MIN_SCRIPT_PREFIX_LENGTH = Math.min(11, 9);
        public static final int NON_7_BIT_ASCII_OK = 4;
        public static final int NUL_OK = 512;
        public static final int OTHER_WHITESPACE_OK = 2;
        public static final int PCT_OK = 256;
        public static final int SCRIPT_URL_OK = 1024;
        public static final int SPACE_LEGAL = 1;
        public static final int SPACE_OK = 1;
        public static final int SQUOTE_OK = 16;
        public static final int URL_AND_SPACE_LEGAL = 405;
        public static final int URL_LEGAL = 404;
        private static final String VBSCRIPT_PREFIX = "vbscript:";
        private int mFlags;

        public IllegalCharacterValueSanitizer(int i2) {
            this.mFlags = i2;
        }

        private boolean characterIsLegal(char c2) {
            if (c2 == 0) {
                return (this.mFlags & 512) != 0;
            }
            if (c2 == ' ') {
                return (this.mFlags & 1) != 0;
            }
            if (c2 == '\"') {
                return (this.mFlags & 8) != 0;
            }
            if (c2 == '<') {
                return (this.mFlags & 32) != 0;
            }
            if (c2 == '>') {
                return (this.mFlags & 64) != 0;
            }
            switch (c2) {
                case '\t':
                case '\n':
                case 11:
                case '\f':
                case '\r':
                    return (this.mFlags & 2) != 0;
                default:
                    switch (c2) {
                        case '%':
                            return (this.mFlags & 256) != 0;
                        case '&':
                            return (this.mFlags & 128) != 0;
                        case '\'':
                            return (this.mFlags & 16) != 0;
                        default:
                            return (c2 >= ' ' && c2 < 127) || (c2 >= 128 && (this.mFlags & 4) != 0);
                    }
            }
        }

        private boolean isWhitespace(char c2) {
            if (c2 == ' ') {
                return true;
            }
            switch (c2) {
                case '\t':
                case '\n':
                case 11:
                case '\f':
                case '\r':
                    return true;
                default:
                    return false;
            }
        }

        private String trimWhitespace(String str) {
            int length = str.length() - 1;
            int i2 = 0;
            while (i2 <= length && isWhitespace(str.charAt(i2))) {
                i2++;
            }
            int i3 = length;
            while (i3 >= i2 && isWhitespace(str.charAt(i3))) {
                i3--;
            }
            return (i2 == 0 && i3 == length) ? str : str.substring(i2, i3 + 1);
        }

        @Override // android.net.UrlQuerySanitizer.ValueSanitizer
        public String sanitize(String str) {
            if (str == null) {
                return null;
            }
            int length = str.length();
            if ((this.mFlags & 1024) != 0 && length >= MIN_SCRIPT_PREFIX_LENGTH) {
                String lowerCase = str.toLowerCase(Locale.ROOT);
                if (lowerCase.startsWith(JAVASCRIPT_PREFIX) || lowerCase.startsWith(VBSCRIPT_PREFIX)) {
                    return ProxyProperties.LOCAL_EXCL_LIST;
                }
            }
            if ((this.mFlags & 3) == 0) {
                str = trimWhitespace(str);
                length = str.length();
            }
            StringBuilder sb = new StringBuilder(length);
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i2);
                if (!characterIsLegal(cCharAt)) {
                    cCharAt = (this.mFlags & 1) != 0 ? CharArrayBuffers.uppercaseAddon : '_';
                }
                sb.append(cCharAt);
            }
            return sb.toString();
        }
    }

    public class ParameterValuePair {
        public String mParameter;
        public String mValue;

        public ParameterValuePair(String str, String str2) {
            this.mParameter = str;
            this.mValue = str2;
        }
    }

    public interface ValueSanitizer {
        String sanitize(String str);
    }

    public UrlQuerySanitizer() {
    }

    public static final ValueSanitizer getAllButNulAndAngleBracketsLegal() {
        return sAllButNulAndAngleBracketsLegal;
    }

    public static final ValueSanitizer getAllButNulLegal() {
        return sAllButNulLegal;
    }

    public static final ValueSanitizer getAllButWhitespaceLegal() {
        return sAllButWhitespaceLegal;
    }

    public static final ValueSanitizer getAllIllegal() {
        return sAllIllegal;
    }

    public static final ValueSanitizer getAmpAndSpaceLegal() {
        return sAmpAndSpaceLegal;
    }

    public static final ValueSanitizer getAmpLegal() {
        return sAmpLegal;
    }

    public static final ValueSanitizer getSpaceLegal() {
        return sSpaceLegal;
    }

    public static final ValueSanitizer getUrlAndSpaceLegal() {
        return sUrlAndSpaceLegal;
    }

    public static final ValueSanitizer getUrlLegal() {
        return sURLLegal;
    }

    public void addSanitizedEntry(String str, String str2) {
        this.mEntriesList.add(new ParameterValuePair(str, str2));
        if (this.mPreferFirstRepeatedParameter && this.mEntries.containsKey(str)) {
            return;
        }
        this.mEntries.put(str, str2);
    }

    public void clear() {
        this.mEntries.clear();
        this.mEntriesList.clear();
    }

    public int decodeHexDigit(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = DateFormat.CAPITAL_AM_PM;
        if (c2 < 'A' || c2 > 'F') {
            c3 = DateFormat.AM_PM;
            if (c2 < 'a' || c2 > 'f') {
                return -1;
            }
        }
        return (c2 - c3) + 10;
    }

    public boolean getAllowUnregisteredParamaters() {
        return this.mAllowUnregisteredParamaters;
    }

    public ValueSanitizer getEffectiveValueSanitizer(String str) {
        ValueSanitizer valueSanitizer = getValueSanitizer(str);
        return (valueSanitizer == null && this.mAllowUnregisteredParamaters) ? getUnregisteredParameterValueSanitizer() : valueSanitizer;
    }

    public List<ParameterValuePair> getParameterList() {
        return this.mEntriesList;
    }

    public Set<String> getParameterSet() {
        return this.mEntries.keySet();
    }

    public boolean getPreferFirstRepeatedParameter() {
        return this.mPreferFirstRepeatedParameter;
    }

    public ValueSanitizer getUnregisteredParameterValueSanitizer() {
        return this.mUnregisteredParameterValueSanitizer;
    }

    public String getValue(String str) {
        return this.mEntries.get(str);
    }

    public ValueSanitizer getValueSanitizer(String str) {
        return this.mSanitizers.get(str);
    }

    public boolean hasParameter(String str) {
        return this.mEntries.containsKey(str);
    }

    public boolean isHexDigit(char c2) {
        return decodeHexDigit(c2) >= 0;
    }

    public void parseEntry(String str, String str2) {
        String strUnescape = unescape(str);
        ValueSanitizer effectiveValueSanitizer = getEffectiveValueSanitizer(strUnescape);
        if (effectiveValueSanitizer == null) {
            return;
        }
        addSanitizedEntry(strUnescape, effectiveValueSanitizer.sanitize(unescape(str2)));
    }

    public void parseQuery(String str) {
        clear();
        StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
        while (stringTokenizer.hasMoreElements()) {
            String strNextToken = stringTokenizer.nextToken();
            if (strNextToken.length() > 0) {
                int iIndexOf = strNextToken.indexOf(61);
                if (iIndexOf < 0) {
                    parseEntry(strNextToken, ProxyProperties.LOCAL_EXCL_LIST);
                } else {
                    parseEntry(strNextToken.substring(0, iIndexOf), strNextToken.substring(iIndexOf + 1));
                }
            }
        }
    }

    public void parseUrl(String str) {
        int iIndexOf = str.indexOf(63);
        parseQuery(iIndexOf >= 0 ? str.substring(iIndexOf + 1) : ProxyProperties.LOCAL_EXCL_LIST);
    }

    public void registerParameter(String str, ValueSanitizer valueSanitizer) {
        if (valueSanitizer == null) {
            this.mSanitizers.remove(str);
        }
        this.mSanitizers.put(str, valueSanitizer);
    }

    public void registerParameters(String[] strArr, ValueSanitizer valueSanitizer) {
        for (String str : strArr) {
            this.mSanitizers.put(str, valueSanitizer);
        }
    }

    public void setAllowUnregisteredParamaters(boolean z2) {
        this.mAllowUnregisteredParamaters = z2;
    }

    public void setPreferFirstRepeatedParameter(boolean z2) {
        this.mPreferFirstRepeatedParameter = z2;
    }

    public void setUnregisteredParameterValueSanitizer(ValueSanitizer valueSanitizer) {
        this.mUnregisteredParameterValueSanitizer = valueSanitizer;
    }

    public String unescape(String str) {
        int i2;
        int iIndexOf = str.indexOf(37);
        if (iIndexOf < 0 && (iIndexOf = str.indexOf(43)) < 0) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        sb.append(str.substring(0, iIndexOf));
        while (iIndexOf < length) {
            char cCharAt = str.charAt(iIndexOf);
            if (cCharAt == '+') {
                cCharAt = CharArrayBuffers.uppercaseAddon;
            } else if (cCharAt == '%' && (i2 = iIndexOf + 2) < length) {
                char cCharAt2 = str.charAt(iIndexOf + 1);
                char cCharAt3 = str.charAt(i2);
                if (isHexDigit(cCharAt2) && isHexDigit(cCharAt3)) {
                    cCharAt = (char) ((decodeHexDigit(cCharAt2) * 16) + decodeHexDigit(cCharAt3));
                    iIndexOf = i2;
                }
            }
            sb.append(cCharAt);
            iIndexOf++;
        }
        return sb.toString();
    }

    public UrlQuerySanitizer(String str) {
        setAllowUnregisteredParamaters(true);
        parseUrl(str);
    }
}
