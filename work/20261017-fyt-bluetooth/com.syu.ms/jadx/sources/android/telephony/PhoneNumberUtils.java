package android.telephony;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.location.CountryDetector;
import android.net.ProxyProperties;
import android.net.Uri;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.Contacts;
import android.provider.ContactsContract;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.SparseIntArray;
import com.android.i18n.phonenumbers.NumberParseException;
import com.android.i18n.phonenumbers.PhoneNumberUtil;
import com.android.i18n.phonenumbers.Phonenumber;
import com.android.i18n.phonenumbers.ShortNumberUtil;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class PhoneNumberUtils {
    private static final int CCC_LENGTH;
    private static final String CLIR_OFF = "#31#";
    private static final String CLIR_ON = "*31#";
    private static final boolean[] COUNTRY_CALLING_CALL;
    private static final boolean DBG = false;
    public static final int FORMAT_JAPAN = 2;
    public static final int FORMAT_NANP = 1;
    public static final int FORMAT_UNKNOWN = 0;
    private static final SparseIntArray KEYPAD_MAP;
    public static final String LOG_TAG = "PhoneNumberUtils";
    public static final int MIN_MATCH = 7;
    private static final String NANP_IDP_STRING = "011";
    private static final int NANP_LENGTH = 10;
    private static final int NANP_STATE_DASH = 4;
    private static final int NANP_STATE_DIGIT = 1;
    private static final int NANP_STATE_ONE = 3;
    private static final int NANP_STATE_PLUS = 2;
    public static final char PAUSE = ',';
    private static final char PLUS_SIGN_CHAR = '+';
    private static final String PLUS_SIGN_STRING = "+";
    public static final int TOA_International = 145;
    public static final int TOA_Unknown = 129;
    public static final char WAIT = ';';
    public static final char WILD = 'N';
    private static final Pattern GLOBAL_PHONE_NUMBER_PATTERN = Pattern.compile("[\\+]?[0-9.-]+");
    private static final String[] NANP_COUNTRIES = {"US", "CA", "AS", "AI", "AG", "BS", "BB", "BM", "VG", "KY", "DM", "DO", "GD", "GU", "JM", "PR", "MS", "MP", "KN", "LC", "VC", "TT", "TC", "VI"};

    public static class CountryCallingCodeAndNewIndex {
        public final int countryCallingCode;
        public final int newIndex;

        public CountryCallingCodeAndNewIndex(int i2, int i3) {
            this.countryCallingCode = i2;
            this.newIndex = i3;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        KEYPAD_MAP = sparseIntArray;
        sparseIntArray.put(97, 50);
        sparseIntArray.put(98, 50);
        sparseIntArray.put(99, 50);
        sparseIntArray.put(65, 50);
        sparseIntArray.put(66, 50);
        sparseIntArray.put(67, 50);
        sparseIntArray.put(100, 51);
        sparseIntArray.put(101, 51);
        sparseIntArray.put(102, 51);
        sparseIntArray.put(68, 51);
        sparseIntArray.put(69, 51);
        sparseIntArray.put(70, 51);
        sparseIntArray.put(103, 52);
        sparseIntArray.put(104, 52);
        sparseIntArray.put(105, 52);
        sparseIntArray.put(71, 52);
        sparseIntArray.put(72, 52);
        sparseIntArray.put(73, 52);
        sparseIntArray.put(106, 53);
        sparseIntArray.put(107, 53);
        sparseIntArray.put(108, 53);
        sparseIntArray.put(74, 53);
        sparseIntArray.put(75, 53);
        sparseIntArray.put(76, 53);
        sparseIntArray.put(109, 54);
        sparseIntArray.put(110, 54);
        sparseIntArray.put(111, 54);
        sparseIntArray.put(77, 54);
        sparseIntArray.put(78, 54);
        sparseIntArray.put(79, 54);
        sparseIntArray.put(112, 55);
        sparseIntArray.put(113, 55);
        sparseIntArray.put(114, 55);
        sparseIntArray.put(115, 55);
        sparseIntArray.put(80, 55);
        sparseIntArray.put(81, 55);
        sparseIntArray.put(82, 55);
        sparseIntArray.put(83, 55);
        sparseIntArray.put(116, 56);
        sparseIntArray.put(117, 56);
        sparseIntArray.put(118, 56);
        sparseIntArray.put(84, 56);
        sparseIntArray.put(85, 56);
        sparseIntArray.put(86, 56);
        sparseIntArray.put(119, 57);
        sparseIntArray.put(120, 57);
        sparseIntArray.put(121, 57);
        sparseIntArray.put(122, 57);
        sparseIntArray.put(87, 57);
        sparseIntArray.put(88, 57);
        sparseIntArray.put(89, 57);
        sparseIntArray.put(90, 57);
        boolean[] zArr = {true, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, true, false, true, true, true, true, true, false, true, false, false, true, true, false, false, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, true, false, true, false, false, true, true, true, true, true, true, true, false, false, true, false};
        COUNTRY_CALLING_CALL = zArr;
        CCC_LENGTH = zArr.length;
    }

    private static String appendPwCharBackToOrigDialStr(int i2, String str, String str2) {
        if (i2 != 1) {
            return str.concat(str2.substring(0, i2));
        }
        return str + str2.charAt(0);
    }

    private static char bcdToChar(byte b2) {
        if (b2 < 10) {
            return (char) (b2 + 48);
        }
        switch (b2) {
            case 10:
                return '*';
            case 11:
                return '#';
            case 12:
                return PAUSE;
            case 13:
                return WILD;
            default:
                return (char) 0;
        }
    }

    public static String calledPartyBCDFragmentToString(byte[] bArr, int i2, int i3) {
        StringBuilder sb = new StringBuilder(i3 * 2);
        internalCalledPartyBCDFragmentToString(sb, bArr, i2, i3);
        return sb.toString();
    }

    public static String calledPartyBCDToString(byte[] bArr, int i2, int i3) {
        StringBuilder sb;
        StringBuilder sb2 = new StringBuilder((i3 * 2) + 1);
        if (i3 < 2) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
        boolean z2 = (bArr[i2] & 240) == 144;
        internalCalledPartyBCDFragmentToString(sb2, bArr, i2 + 1, i3 - 1);
        if (z2 && sb2.length() == 0) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
        if (z2) {
            String string = sb2.toString();
            Matcher matcher = Pattern.compile("(^[#*])(.*)([#*])(.*)(#)$").matcher(string);
            if (!matcher.matches()) {
                Matcher matcher2 = Pattern.compile("(^[#*])(.*)([#*])(.*)").matcher(string);
                if (matcher2.matches()) {
                    sb = new StringBuilder();
                    sb.append(matcher2.group(1));
                    sb.append(matcher2.group(2));
                    sb.append(matcher2.group(3));
                    sb.append(PLUS_SIGN_STRING);
                    sb.append(matcher2.group(4));
                } else {
                    sb2 = new StringBuilder();
                    sb2.append(PLUS_SIGN_CHAR);
                    sb2.append(string);
                }
            } else if (ProxyProperties.LOCAL_EXCL_LIST.equals(matcher.group(2))) {
                sb = new StringBuilder();
                sb.append(matcher.group(1));
                sb.append(matcher.group(3));
                sb.append(matcher.group(4));
                sb.append(matcher.group(5));
                sb.append(PLUS_SIGN_STRING);
            } else {
                sb = new StringBuilder();
                sb.append(matcher.group(1));
                sb.append(matcher.group(2));
                sb.append(matcher.group(3));
                sb.append(PLUS_SIGN_STRING);
                sb.append(matcher.group(4));
                sb.append(matcher.group(5));
            }
            sb2 = sb;
        }
        return sb2.toString();
    }

    public static String cdmaCheckAndProcessPlusCode(String str) {
        if (TextUtils.isEmpty(str) || !isReallyDialable(str.charAt(0)) || !isNonSeparator(str)) {
            return str;
        }
        String str2 = SystemProperties.get("gsm.operator.iso-country", ProxyProperties.LOCAL_EXCL_LIST);
        String str3 = SystemProperties.get("gsm.sim.operator.iso-country", ProxyProperties.LOCAL_EXCL_LIST);
        return (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) ? str : cdmaCheckAndProcessPlusCodeByNumberFormat(str, getFormatTypeFromCountryCode(str2), getFormatTypeFromCountryCode(str3));
    }

    public static String cdmaCheckAndProcessPlusCodeByNumberFormat(String str, int i2, int i3) {
        if (str == null || str.lastIndexOf(PLUS_SIGN_STRING) == -1) {
            return str;
        }
        if (i2 != i3 || i2 != 1) {
            Rlog.e("checkAndProcessPlusCode:non-NANP not supported", str);
            return str;
        }
        String str2 = null;
        String strSubstring = str;
        while (true) {
            String strProcessPlusCodeWithinNanp = processPlusCodeWithinNanp(extractNetworkPortion(strSubstring));
            if (TextUtils.isEmpty(strProcessPlusCodeWithinNanp)) {
                Rlog.e("checkAndProcessPlusCode: null newDialStr", strProcessPlusCodeWithinNanp);
                return str;
            }
            if (str2 != null) {
                strProcessPlusCodeWithinNanp = str2.concat(strProcessPlusCodeWithinNanp);
            }
            String strExtractPostDialPortion = extractPostDialPortion(strSubstring);
            if (!TextUtils.isEmpty(strExtractPostDialPortion)) {
                int iFindDialableIndexFromPostDialStr = findDialableIndexFromPostDialStr(strExtractPostDialPortion);
                if (iFindDialableIndexFromPostDialStr >= 1) {
                    strProcessPlusCodeWithinNanp = appendPwCharBackToOrigDialStr(iFindDialableIndexFromPostDialStr, strProcessPlusCodeWithinNanp, strExtractPostDialPortion);
                    strSubstring = strExtractPostDialPortion.substring(iFindDialableIndexFromPostDialStr);
                } else {
                    if (iFindDialableIndexFromPostDialStr < 0) {
                        strExtractPostDialPortion = ProxyProperties.LOCAL_EXCL_LIST;
                    }
                    Rlog.e("wrong postDialStr=", strExtractPostDialPortion);
                }
            }
            if (TextUtils.isEmpty(strExtractPostDialPortion) || TextUtils.isEmpty(strSubstring)) {
                return strProcessPlusCodeWithinNanp;
            }
            str2 = strProcessPlusCodeWithinNanp;
        }
    }

    public static String cdmaCheckAndProcessPlusCodeForSms(String str) {
        if (TextUtils.isEmpty(str) || !isReallyDialable(str.charAt(0)) || !isNonSeparator(str)) {
            return str;
        }
        String str2 = SystemProperties.get("gsm.sim.operator.iso-country", ProxyProperties.LOCAL_EXCL_LIST);
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        int formatTypeFromCountryCode = getFormatTypeFromCountryCode(str2);
        return cdmaCheckAndProcessPlusCodeByNumberFormat(str, formatTypeFromCountryCode, formatTypeFromCountryCode);
    }

    private static int charToBCD(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 == '*') {
            return 10;
        }
        if (c2 == '#') {
            return 11;
        }
        if (c2 == ',') {
            return 12;
        }
        if (c2 == 'N') {
            return 13;
        }
        throw new RuntimeException("invalid char for BCD " + c2);
    }

    private static boolean checkPrefixIsIgnorable(String str, int i2, int i3) {
        boolean z2 = false;
        while (i3 >= i2) {
            if (tryGetISODigit(str.charAt(i3)) >= 0) {
                if (z2) {
                    return false;
                }
                z2 = true;
            } else if (isDialable(str.charAt(i3))) {
                return false;
            }
            i3--;
        }
        return true;
    }

    public static boolean compare(String str, String str2) {
        return compare(str, str2, false);
    }

    public static boolean compareLoosely(String str, String str2) {
        boolean z2;
        if (str == null || str2 == null) {
            return str == str2;
        }
        if (str.length() != 0 && str2.length() != 0) {
            int iIndexOfLastNetworkChar = indexOfLastNetworkChar(str);
            int iIndexOfLastNetworkChar2 = indexOfLastNetworkChar(str2);
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (iIndexOfLastNetworkChar >= 0 && iIndexOfLastNetworkChar2 >= 0) {
                char cCharAt = str.charAt(iIndexOfLastNetworkChar);
                if (isDialable(cCharAt)) {
                    z2 = false;
                } else {
                    iIndexOfLastNetworkChar--;
                    i2++;
                    z2 = true;
                }
                char cCharAt2 = str2.charAt(iIndexOfLastNetworkChar2);
                if (!isDialable(cCharAt2)) {
                    iIndexOfLastNetworkChar2--;
                    i3++;
                    z2 = true;
                }
                if (!z2) {
                    if (cCharAt2 != cCharAt && cCharAt != 'N' && cCharAt2 != 'N') {
                        break;
                    }
                    iIndexOfLastNetworkChar--;
                    iIndexOfLastNetworkChar2--;
                    i4++;
                }
            }
            if (i4 < 7) {
                int length = str.length() - i2;
                return length == str2.length() - i3 && length == i4;
            }
            if (i4 >= 7 && (iIndexOfLastNetworkChar < 0 || iIndexOfLastNetworkChar2 < 0)) {
                return true;
            }
            int i5 = iIndexOfLastNetworkChar + 1;
            if (matchIntlPrefix(str, i5) && matchIntlPrefix(str2, iIndexOfLastNetworkChar2 + 1)) {
                return true;
            }
            if (matchTrunkPrefix(str, i5) && matchIntlPrefixAndCC(str2, iIndexOfLastNetworkChar2 + 1)) {
                return true;
            }
            if (matchTrunkPrefix(str2, iIndexOfLastNetworkChar2 + 1) && matchIntlPrefixAndCC(str, i5)) {
                return true;
            }
        }
        return false;
    }

    public static boolean compareStrictly(String str, String str2) {
        return compareStrictly(str, str2, true);
    }

    public static String convertAndStrip(String str) {
        return stripSeparators(convertKeypadLettersToDigits(str));
    }

    public static String convertKeypadLettersToDigits(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        for (int i2 = 0; i2 < length; i2++) {
            char c2 = charArray[i2];
            charArray[i2] = (char) KEYPAD_MAP.get(c2, c2);
        }
        return new String(charArray);
    }

    public static String convertPreDial(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (isPause(cCharAt)) {
                cCharAt = PAUSE;
            } else if (isToneWait(cCharAt)) {
                cCharAt = WAIT;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static String extractNetworkPortion(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            int iDigit = Character.digit(cCharAt, 10);
            if (iDigit == -1) {
                if (cCharAt != '+') {
                    if (!isDialable(cCharAt)) {
                        if (isStartsPostDial(cCharAt)) {
                            break;
                        }
                    } else {
                        sb.append(cCharAt);
                    }
                } else {
                    String string = sb.toString();
                    if (string.length() == 0 || string.equals(CLIR_ON) || string.equals(CLIR_OFF)) {
                        sb.append(cCharAt);
                    }
                }
            } else {
                sb.append(iDigit);
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0023  */
    /* JADX WARN: Code duplicated, block: B:15:0x0027  */
    /* JADX WARN: Code duplicated, block: B:21:0x0031 A[EDGE_INSN: B:21:0x0031->B:19:0x0031 BREAK  A[LOOP:0: B:6:0x000f->B:18:0x002e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x002e A[SYNTHETIC] */
    public static String extractNetworkPortionAlt(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        boolean z2 = false;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '+') {
                if (!z2) {
                    z2 = true;
                    if (isDialable(cCharAt)) {
                        if (isStartsPostDial(cCharAt)) {
                            break;
                            break;
                        }
                    } else {
                        sb.append(cCharAt);
                    }
                } else {
                    continue;
                }
            } else if (isDialable(cCharAt)) {
                if (isStartsPostDial(cCharAt)) {
                    break;
                }
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static String extractPostDialPortion(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int iIndexOfLastNetworkChar = indexOfLastNetworkChar(str) + 1; iIndexOfLastNetworkChar < length; iIndexOfLastNetworkChar++) {
            char cCharAt = str.charAt(iIndexOfLastNetworkChar);
            if (isNonSeparator(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    private static int findDialableIndexFromPostDialStr(String str) {
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (isReallyDialable(str.charAt(i2))) {
                return i2;
            }
        }
        return -1;
    }

    public static void formatJapaneseNumber(Editable editable) {
        JapanesePhoneNumberFormatter.format(editable);
    }

    public static void formatNanpNumber(Editable editable) {
        int i2;
        int length = editable.length();
        if (length <= 15 && length > 5) {
            CharSequence charSequenceSubSequence = editable.subSequence(0, length);
            removeDashes(editable);
            int length2 = editable.length();
            int[] iArr = new int[3];
            int i3 = 0;
            int i4 = 0;
            char c2 = 1;
            for (int i5 = 0; i5 < length2; i5++) {
                char cCharAt = editable.charAt(i5);
                if (cCharAt != '+') {
                    if (cCharAt != '-') {
                        switch (cCharAt) {
                            case '1':
                                if (i3 == 0 || c2 == 2) {
                                    c2 = 3;
                                    break;
                                }
                            case '0':
                            case '2':
                            case '3':
                            case '4':
                            case '5':
                            case '6':
                            case '7':
                            case '8':
                            case '9':
                                if (c2 == 2) {
                                    editable.replace(0, length2, charSequenceSubSequence);
                                } else {
                                    if (c2 != 3) {
                                        if (c2 != 4 && (i3 == 3 || i3 == 6)) {
                                            i2 = i4 + 1;
                                            iArr[i4] = i5;
                                        }
                                        i3++;
                                        c2 = 1;
                                    } else {
                                        i2 = i4 + 1;
                                        iArr[i4] = i5;
                                    }
                                    i4 = i2;
                                    i3++;
                                    c2 = 1;
                                }
                                break;
                            default:
                                editable.replace(0, length2, charSequenceSubSequence);
                                break;
                        }
                        return;
                    }
                    c2 = 4;
                } else {
                    if (i5 != 0) {
                        editable.replace(0, length2, charSequenceSubSequence);
                        return;
                    }
                    c2 = 2;
                }
            }
            if (i3 == 7) {
                i4--;
            }
            for (int i6 = 0; i6 < i4; i6++) {
                int i7 = iArr[i6] + i6;
                editable.replace(i7, i7, "-");
            }
            for (int length3 = editable.length(); length3 > 0; length3--) {
                int i8 = length3 - 1;
                if (editable.charAt(i8) != '-') {
                    return;
                }
                editable.delete(i8, length3);
            }
        }
    }

    public static String formatNumber(String str) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        formatNumber(spannableStringBuilder, getFormatTypeForLocale(Locale.getDefault()));
        return spannableStringBuilder.toString();
    }

    public static String formatNumberToE164(String str, String str2) {
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            Phonenumber.PhoneNumber phoneNumber = phoneNumberUtil.parse(str, str2);
            if (phoneNumberUtil.isValidNumber(phoneNumber)) {
                return phoneNumberUtil.format(phoneNumber, PhoneNumberUtil.PhoneNumberFormat.E164);
            }
            return null;
        } catch (NumberParseException unused) {
            return null;
        }
    }

    private static String getDefaultIdp() {
        SystemProperties.get("ro.cdma.idpstring", null);
        if (TextUtils.isEmpty(null)) {
            return NANP_IDP_STRING;
        }
        return null;
    }

    public static int getFormatTypeForLocale(Locale locale) {
        return getFormatTypeFromCountryCode(locale.getCountry());
    }

    private static int getFormatTypeFromCountryCode(String str) {
        int length = NANP_COUNTRIES.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (NANP_COUNTRIES[i2].compareToIgnoreCase(str) == 0) {
                return 1;
            }
        }
        return "jp".compareToIgnoreCase(str) == 0 ? 2 : 0;
    }

    public static String getNumberFromIntent(Intent intent, Context context) {
        String str;
        Uri data = intent.getData();
        String string = null;
        if (data == null) {
            return null;
        }
        String scheme = data.getScheme();
        if (scheme.equals("tel") || scheme.equals("sip")) {
            return data.getSchemeSpecificPart();
        }
        if (scheme.equals("voicemail")) {
            return TelephonyManager.getDefault().getCompleteVoiceMailNumber();
        }
        if (context == null) {
            return null;
        }
        intent.resolveType(context);
        String authority = data.getAuthority();
        if (Contacts.AUTHORITY.equals(authority)) {
            str = "number";
        } else {
            str = ContactsContract.AUTHORITY.equals(authority) ? "data1" : null;
        }
        Cursor cursorQuery = context.getContentResolver().query(data, new String[]{str}, null, null, null);
        if (cursorQuery != null) {
            try {
                string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndex(str)) : null;
            } finally {
                cursorQuery.close();
            }
        }
        return string;
    }

    public static String getStrippedReversed(String str) {
        String strExtractNetworkPortionAlt = extractNetworkPortionAlt(str);
        if (strExtractNetworkPortionAlt == null) {
            return null;
        }
        return internalGetStrippedReversed(strExtractNetworkPortionAlt, strExtractNetworkPortionAlt.length());
    }

    public static String getUsernameFromUriNumber(String str) {
        int iIndexOf = str.indexOf(64);
        if (iIndexOf < 0) {
            iIndexOf = str.indexOf("%40");
        }
        if (iIndexOf < 0) {
            Rlog.w(LOG_TAG, "getUsernameFromUriNumber: no delimiter found in SIP addr '" + str + "'");
            iIndexOf = str.length();
        }
        return str.substring(0, iIndexOf);
    }

    private static int indexOfLastNetworkChar(String str) {
        int length = str.length();
        int iMinPositive = minPositive(str.indexOf(44), str.indexOf(59));
        return iMinPositive < 0 ? length - 1 : iMinPositive - 1;
    }

    private static void internalCalledPartyBCDFragmentToString(StringBuilder sb, byte[] bArr, int i2, int i3) {
        char cBcdToChar;
        char cBcdToChar2;
        int i4 = i2;
        while (true) {
            int i5 = i3 + i2;
            if (i4 >= i5 || (cBcdToChar = bcdToChar((byte) (bArr[i4] & DhcpPacket.DHCP_DOMAIN_NAME))) == 0) {
                return;
            }
            sb.append(cBcdToChar);
            byte b2 = (byte) ((bArr[i4] >> 4) & 15);
            if ((b2 == 15 && i4 + 1 == i5) || (cBcdToChar2 = bcdToChar(b2)) == 0) {
                return;
            }
            sb.append(cBcdToChar2);
            i4++;
        }
    }

    private static String internalGetStrippedReversed(String str, int i2) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(i2);
        int length = str.length();
        for (int i3 = length - 1; i3 >= 0 && length - i3 <= i2; i3--) {
            sb.append(str.charAt(i3));
        }
        return sb.toString();
    }

    public static final boolean is12Key(char c2) {
        return (c2 >= '0' && c2 <= '9') || c2 == '*' || c2 == '#';
    }

    private static boolean isCountryCallingCode(int i2) {
        return i2 > 0 && i2 < CCC_LENGTH && COUNTRY_CALLING_CALL[i2];
    }

    public static final boolean isDialable(char c2) {
        return (c2 >= '0' && c2 <= '9') || c2 == '*' || c2 == '#' || c2 == '+' || c2 == 'N';
    }

    private static boolean isDialable(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!isDialable(str.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isEmergencyNumber(String str) {
        return isEmergencyNumberInternal(str, true);
    }

    private static boolean isEmergencyNumberInternal(String str, boolean z2) {
        return isEmergencyNumberInternal(str, null, z2);
    }

    public static boolean isGlobalPhoneNumber(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return GLOBAL_PHONE_NUMBER_PATTERN.matcher(str).matches();
    }

    public static boolean isISODigit(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    public static boolean isLocalEmergencyNumber(String str, Context context) {
        return isLocalEmergencyNumberInternal(str, context, true);
    }

    private static boolean isLocalEmergencyNumberInternal(String str, Context context, boolean z2) {
        String country;
        CountryDetector countryDetector = (CountryDetector) context.getSystemService(Context.COUNTRY_DETECTOR);
        if (countryDetector == null || countryDetector.detectCountry() == null) {
            country = context.getResources().getConfiguration().locale.getCountry();
            Rlog.w(LOG_TAG, "No CountryDetector; falling back to countryIso based on locale: " + country);
        } else {
            country = countryDetector.detectCountry().getCountryIso();
        }
        return isEmergencyNumberInternal(str, country, z2);
    }

    private static boolean isNanp(String str) {
        if (str == null) {
            Rlog.e("isNanp: null dialStr passed in", str);
            return false;
        }
        if (str.length() != 10 || !isTwoToNine(str.charAt(0)) || !isTwoToNine(str.charAt(3))) {
            return false;
        }
        for (int i2 = 1; i2 < 10; i2++) {
            if (!isISODigit(str.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static final boolean isNonSeparator(char c2) {
        return (c2 >= '0' && c2 <= '9') || c2 == '*' || c2 == '#' || c2 == '+' || c2 == 'N' || c2 == ';' || c2 == ',';
    }

    private static boolean isNonSeparator(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!isNonSeparator(str.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    private static boolean isOneNanp(String str) {
        if (str != null) {
            return str.charAt(0) == '1' && isNanp(str.substring(1));
        }
        Rlog.e("isOneNanp: null dialStr passed in", str);
        return false;
    }

    private static boolean isPause(char c2) {
        return c2 == 'p' || c2 == 'P';
    }

    public static boolean isPotentialEmergencyNumber(String str) {
        return isEmergencyNumberInternal(str, false);
    }

    public static boolean isPotentialLocalEmergencyNumber(String str, Context context) {
        return isLocalEmergencyNumberInternal(str, context, false);
    }

    public static final boolean isReallyDialable(char c2) {
        return (c2 >= '0' && c2 <= '9') || c2 == '*' || c2 == '#' || c2 == '+';
    }

    private static boolean isSeparator(char c2) {
        return !isDialable(c2) && ('a' > c2 || c2 > 'z') && ('A' > c2 || c2 > 'Z');
    }

    public static final boolean isStartsPostDial(char c2) {
        return c2 == ',' || c2 == ';';
    }

    private static boolean isToneWait(char c2) {
        return c2 == 'w' || c2 == 'W';
    }

    private static boolean isTwoToNine(char c2) {
        return c2 >= '2' && c2 <= '9';
    }

    public static boolean isUriNumber(String str) {
        return str != null && (str.contains("@") || str.contains("%40"));
    }

    public static boolean isVoiceMailNumber(String str) {
        try {
            String voiceMailNumber = TelephonyManager.getDefault().getVoiceMailNumber();
            String strExtractNetworkPortionAlt = extractNetworkPortionAlt(str);
            return !TextUtils.isEmpty(strExtractNetworkPortionAlt) && compare(strExtractNetworkPortionAlt, voiceMailNumber);
        } catch (SecurityException unused) {
            return false;
        }
    }

    public static boolean isWellFormedSmsAddress(String str) {
        String strExtractNetworkPortion = extractNetworkPortion(str);
        return (strExtractNetworkPortion.equals(PLUS_SIGN_STRING) || TextUtils.isEmpty(strExtractNetworkPortion) || !isDialable(strExtractNetworkPortion)) ? false : true;
    }

    private static void log(String str) {
        Rlog.d(LOG_TAG, str);
    }

    private static boolean matchIntlPrefix(String str, int i2) {
        char c2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            char cCharAt = str.charAt(i3);
            if (c2 != 0) {
                if (c2 != 2) {
                    if (c2 != 4) {
                        if (isNonSeparator(cCharAt)) {
                            return false;
                        }
                    } else if (cCharAt == '1') {
                        c2 = 5;
                    } else if (isNonSeparator(cCharAt)) {
                        return false;
                    }
                } else if (cCharAt == '0') {
                    c2 = 3;
                } else if (cCharAt == '1') {
                    c2 = 4;
                } else if (isNonSeparator(cCharAt)) {
                    return false;
                }
            } else if (cCharAt == '+') {
                c2 = 1;
            } else if (cCharAt == '0') {
                c2 = 2;
            } else if (isNonSeparator(cCharAt)) {
                return false;
            }
        }
        return c2 == 1 || c2 == 3 || c2 == 5;
    }

    private static boolean matchIntlPrefixAndCC(String str, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            char cCharAt = str.charAt(i4);
            switch (i3) {
                case 0:
                    if (cCharAt == '+') {
                        i3 = 1;
                    } else if (cCharAt == '0') {
                        i3 = 2;
                    } else {
                        if (isNonSeparator(cCharAt)) {
                            return false;
                        }
                    }
                    break;
                case 1:
                case 3:
                case 5:
                    if (isISODigit(cCharAt)) {
                        i3 = 6;
                    } else {
                        if (isNonSeparator(cCharAt)) {
                            return false;
                        }
                    }
                    break;
                case 2:
                    if (cCharAt == '0') {
                        i3 = 3;
                    } else if (cCharAt == '1') {
                        i3 = 4;
                    } else {
                        if (isNonSeparator(cCharAt)) {
                            return false;
                        }
                    }
                    break;
                case 4:
                    if (cCharAt == '1') {
                        i3 = 5;
                    } else {
                        if (isNonSeparator(cCharAt)) {
                            return false;
                        }
                    }
                    break;
                case 6:
                case 7:
                    if (isISODigit(cCharAt)) {
                        i3++;
                    } else {
                        if (isNonSeparator(cCharAt)) {
                            return false;
                        }
                    }
                    break;
                default:
                    if (isNonSeparator(cCharAt)) {
                        return false;
                    }
                    break;
                    break;
            }
        }
        return i3 == 6 || i3 == 7 || i3 == 8;
    }

    private static boolean matchTrunkPrefix(String str, int i2) {
        boolean z2 = false;
        for (int i3 = 0; i3 < i2; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt == '0' && !z2) {
                z2 = true;
            } else if (isNonSeparator(cCharAt)) {
                return false;
            }
        }
        return z2;
    }

    private static int minPositive(int i2, int i3) {
        if (i2 >= 0 && i3 >= 0) {
            return i2 < i3 ? i2 : i3;
        }
        if (i2 >= 0) {
            return i2;
        }
        if (i3 >= 0) {
            return i3;
        }
        return -1;
    }

    public static byte[] networkPortionToCalledPartyBCD(String str) {
        return numberToCalledPartyBCDHelper(extractNetworkPortion(str), false);
    }

    public static byte[] networkPortionToCalledPartyBCDWithLength(String str) {
        return numberToCalledPartyBCDHelper(extractNetworkPortion(str), true);
    }

    public static String normalizeNumber(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            int iDigit = Character.digit(cCharAt, 10);
            if (iDigit != -1) {
                sb.append(iDigit);
            } else if (i2 == 0 && cCharAt == '+') {
                sb.append(cCharAt);
            } else if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                return normalizeNumber(convertKeypadLettersToDigits(str));
            }
        }
        return sb.toString();
    }

    public static byte[] numberToCalledPartyBCD(String str) {
        return numberToCalledPartyBCDHelper(str, false);
    }

    private static byte[] numberToCalledPartyBCDHelper(String str, boolean z2) {
        int length = str.length();
        char c2 = 0;
        boolean z3 = str.indexOf(43) != -1;
        int i2 = z3 ? length - 1 : length;
        if (i2 == 0) {
            return null;
        }
        int i3 = (i2 + 1) / 2;
        int i4 = z2 ? 2 : 1;
        int i5 = i3 + i4;
        byte[] bArr = new byte[i5];
        int i6 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            char cCharAt = str.charAt(i7);
            if (cCharAt != '+') {
                int i8 = (i6 >> 1) + i4;
                bArr[i8] = (byte) (((byte) ((charToBCD(cCharAt) & 15) << ((i6 & 1) == 1 ? 4 : 0))) | bArr[i8]);
                i6++;
            }
        }
        if ((i6 & 1) == 1) {
            int i9 = i4 + (i6 >> 1);
            bArr[i9] = (byte) (bArr[i9] | 240);
        }
        if (z2) {
            bArr[0] = (byte) (i5 - 1);
            c2 = 1;
        }
        bArr[c2] = (byte) (z3 ? 145 : 129);
        return bArr;
    }

    private static String processPlusCodeWithinNanp(String str) {
        if (str == null || str.charAt(0) != '+' || str.length() <= 1) {
            return str;
        }
        String strSubstring = str.substring(1);
        return isOneNanp(strSubstring) ? strSubstring : str.replaceFirst("[+]", getDefaultIdp());
    }

    private static void removeDashes(Editable editable) {
        int i2 = 0;
        while (i2 < editable.length()) {
            if (editable.charAt(i2) == '-') {
                editable.delete(i2, i2 + 1);
            } else {
                i2++;
            }
        }
    }

    public static String replaceUnicodeDigits(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        for (char c2 : str.toCharArray()) {
            int iDigit = Character.digit(c2, 10);
            if (iDigit != -1) {
                sb.append(iDigit);
            } else {
                sb.append(c2);
            }
        }
        return sb.toString();
    }

    public static String stringFromStringAndTOA(String str, int i2) {
        if (str == null) {
            return null;
        }
        if (i2 != 145 || str.length() <= 0 || str.charAt(0) == '+') {
            return str;
        }
        return PLUS_SIGN_STRING + str;
    }

    public static String stripSeparators(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            int iDigit = Character.digit(cCharAt, 10);
            if (iDigit != -1) {
                sb.append(iDigit);
            } else if (isNonSeparator(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static String toCallerIDMinMatch(String str) {
        return internalGetStrippedReversed(extractNetworkPortionAlt(str), 7);
    }

    public static int toaFromString(String str) {
        return (str == null || str.length() <= 0 || str.charAt(0) != '+') ? 129 : 145;
    }

    private static CountryCallingCodeAndNewIndex tryGetCountryCallingCodeAndNewIndex(String str, boolean z2) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
            switch (i2) {
                case 0:
                    if (cCharAt == '+') {
                        i2 = 1;
                    } else if (cCharAt == '0') {
                        i2 = 2;
                    } else if (cCharAt == '1') {
                        if (!z2) {
                            return null;
                        }
                        i2 = 8;
                    } else {
                        if (isDialable(cCharAt)) {
                            return null;
                        }
                    }
                    break;
                case 1:
                case 3:
                case 5:
                case 6:
                case 7:
                    int iTryGetISODigit = tryGetISODigit(cCharAt);
                    if (iTryGetISODigit > 0) {
                        i3 = (i3 * 10) + iTryGetISODigit;
                        if (i3 >= 100 || isCountryCallingCode(i3)) {
                            return new CountryCallingCodeAndNewIndex(i3, i4 + 1);
                        }
                        i2 = (i2 != 1 && i2 != 3 && i2 != 5) ? i2 + 1 : 6;
                    } else {
                        if (isDialable(cCharAt)) {
                            return null;
                        }
                    }
                    break;
                case 2:
                    if (cCharAt == '0') {
                        i2 = 3;
                    } else if (cCharAt == '1') {
                        i2 = 4;
                    } else {
                        if (isDialable(cCharAt)) {
                            return null;
                        }
                    }
                    break;
                case 4:
                    if (cCharAt == '1') {
                        i2 = 5;
                    } else {
                        if (isDialable(cCharAt)) {
                            return null;
                        }
                    }
                    break;
                case 8:
                    if (cCharAt == '6') {
                        i2 = 9;
                    } else {
                        if (isDialable(cCharAt)) {
                            return null;
                        }
                    }
                    break;
                case 9:
                    if (cCharAt == '6') {
                        return new CountryCallingCodeAndNewIndex(66, i4 + 1);
                    }
                    return null;
                default:
                    return null;
            }
        }
        return null;
    }

    private static int tryGetISODigit(char c2) {
        if ('0' > c2 || c2 > '9') {
            return -1;
        }
        return c2 - '0';
    }

    private static int tryGetTrunkPrefixOmittedIndex(String str, int i2) {
        int length = str.length();
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            if (tryGetISODigit(cCharAt) >= 0) {
                return i2 + 1;
            }
            if (isDialable(cCharAt)) {
                return -1;
            }
            i2++;
        }
        return -1;
    }

    public static boolean compare(Context context, String str, String str2) {
        return compare(str, str2, context.getResources().getBoolean(17891365));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:36:0x006f
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public static boolean compareStrictly(java.lang.String r17, java.lang.String r18, boolean r19) {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.telephony.PhoneNumberUtils.compareStrictly(java.lang.String, java.lang.String, boolean):boolean");
    }

    public static boolean isEmergencyNumber(String str, String str2) {
        return isEmergencyNumberInternal(str, str2, true);
    }

    private static boolean isEmergencyNumberInternal(String str, String str2, boolean z2) {
        if (str == null || isUriNumber(str)) {
            return false;
        }
        String strExtractNetworkPortionAlt = extractNetworkPortionAlt(str);
        String str3 = SystemProperties.get("ril.ecclist");
        if (TextUtils.isEmpty(str3)) {
            str3 = SystemProperties.get("ro.ril.ecclist");
        }
        if (TextUtils.isEmpty(str3)) {
            Rlog.d(LOG_TAG, "System property doesn't provide any emergency numbers. Use embedded logic for determining ones.");
            if (str2 != null) {
                ShortNumberUtil shortNumberUtil = new ShortNumberUtil();
                return z2 ? shortNumberUtil.isEmergencyNumber(strExtractNetworkPortionAlt, str2) : shortNumberUtil.connectsToEmergencyNumber(strExtractNetworkPortionAlt, str2);
            }
            if (z2) {
                return strExtractNetworkPortionAlt.equals("112") || strExtractNetworkPortionAlt.equals("911");
            }
            return strExtractNetworkPortionAlt.startsWith("112") || strExtractNetworkPortionAlt.startsWith("911");
        }
        for (String str4 : str3.split(",")) {
            if (z2 || "BR".equalsIgnoreCase(str2)) {
                if (strExtractNetworkPortionAlt.equals(str4)) {
                    return true;
                }
            } else if (strExtractNetworkPortionAlt.startsWith(str4)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isPotentialEmergencyNumber(String str, String str2) {
        return isEmergencyNumberInternal(str, str2, false);
    }

    public static boolean compare(String str, String str2, boolean z2) {
        return z2 ? compareStrictly(str, str2) : compareLoosely(str, str2);
    }

    public static String formatNumber(String str, int i2) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        formatNumber(spannableStringBuilder, i2);
        return spannableStringBuilder.toString();
    }

    public static void formatNumber(Editable editable, int i2) {
        if (editable.length() > 2 && editable.charAt(0) == '+') {
            if (editable.charAt(1) == '1') {
                i2 = 1;
            } else {
                i2 = (editable.length() >= 3 && editable.charAt(1) == '8' && editable.charAt(2) == '1') ? 2 : 0;
            }
        }
        if (i2 == 0) {
            removeDashes(editable);
        } else if (i2 == 1) {
            formatNanpNumber(editable);
        } else {
            if (i2 != 2) {
                return;
            }
            formatJapaneseNumber(editable);
        }
    }

    public static String formatNumber(String str, String str2) {
        if (str.startsWith("#") || str.startsWith("*")) {
            return str;
        }
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            return phoneNumberUtil.formatInOriginalFormat(phoneNumberUtil.parseAndKeepRawInput(str, str2), str2);
        } catch (NumberParseException unused) {
            return null;
        }
    }

    public static String formatNumber(String str, String str2, String str3) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!isDialable(str.charAt(i2))) {
                return str;
            }
        }
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        if (str2 != null && str2.length() >= 2 && str2.charAt(0) == '+') {
            try {
                String regionCodeForNumber = phoneNumberUtil.getRegionCodeForNumber(phoneNumberUtil.parse(str2, "ZZ"));
                if (!TextUtils.isEmpty(regionCodeForNumber) && normalizeNumber(str).indexOf(str2.substring(1)) <= 0) {
                    str3 = regionCodeForNumber;
                }
            } catch (NumberParseException unused) {
            }
        }
        String number = formatNumber(str, str3);
        return number != null ? number : str;
    }
}
