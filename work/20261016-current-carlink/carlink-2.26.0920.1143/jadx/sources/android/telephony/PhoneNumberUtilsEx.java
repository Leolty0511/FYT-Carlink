package android.telephony;

import android.accessibilityservice.c;
import android.os.SystemProperties;
import android.text.TextUtils;
import com.android.i18n.phonenumbers.ShortNumberInfo;

/* JADX INFO: loaded from: classes2.dex */
public class PhoneNumberUtilsEx {
    static final String LOG_TAG = "PhoneNumberUtilsEx";
    static final int MIN_MATCH = 7;
    public static final char PAUSE = ',';
    public static final char WAIT = ';';
    public static final char WILD = 'N';

    public static final String CommaAndSemicolonTopAndw(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == ',') {
                sb.append('P');
            } else if (cCharAt != ';') {
                sb.append(str.charAt(i2));
            } else {
                sb.append('W');
            }
        }
        return sb.toString();
    }

    public static boolean compare(String str, String str2) {
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
            boolean z3 = str.charAt(0) == '+';
            boolean z4 = str2.charAt(0) == '+';
            if (iIndexOfLastNetworkChar < 4 && iIndexOfLastNetworkChar2 < 4 && ((z3 || z4) && (!z3 || !z4))) {
                return true;
            }
        }
        return false;
    }

    private static int indexOfLastNetworkChar(String str) {
        int length = str.length();
        int iMinPositive = minPositive(str.indexOf(44), str.indexOf(59));
        return iMinPositive < 0 ? length - 1 : iMinPositive - 1;
    }

    public static final boolean isDialable(char c) {
        return (c >= '0' && c <= '9') || c == '*' || c == '#' || c == '+' || c == 'N';
    }

    public static boolean isEmergecyNumber(int i2, String str) {
        return isEmergecyNumberInternal(i2, str, null, true);
    }

    private static boolean isEmergecyNumberInternal(int i2, String str, String str2, boolean z2) {
        if (str == null || PhoneNumberUtils.isUriNumber(str)) {
            return false;
        }
        String strExtractNetworkPortionAlt = PhoneNumberUtils.extractNetworkPortionAlt(str);
        String str3 = SystemProperties.get(i2 > 0 ? c.d("ril.ecclist", i2) : "ril.ecclist", "");
        Rlog.d(LOG_TAG, "slotId:" + i2 + " country:" + str2 + " emergencyNumbers: " + str3);
        if (TextUtils.isEmpty(str3)) {
            str3 = SystemProperties.get("ro.ril.ecclist");
        }
        if (!TextUtils.isEmpty(str3)) {
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
        Rlog.d(LOG_TAG, "System property doesn't provide any emergency numbers. Use embedded logic for determining ones.");
        for (String str5 : (i2 < 0 ? "112,911,000,08,110,118,119,999" : "112,911").split(",")) {
            if (z2) {
                if (strExtractNetworkPortionAlt.equals(str5)) {
                    return true;
                }
            } else if (strExtractNetworkPortionAlt.startsWith(str5)) {
                return true;
            }
        }
        if (str2 == null) {
            return false;
        }
        ShortNumberInfo shortNumberInfo = ShortNumberInfo.getInstance();
        return z2 ? shortNumberInfo.isEmergencyNumber(strExtractNetworkPortionAlt, str2) : shortNumberInfo.connectsToEmergencyNumber(strExtractNetworkPortionAlt, str2);
    }

    public static boolean isEmergencyNumber(String str) {
        boolean zIsEmergecyNumber = false;
        for (int i2 = 0; i2 < TelephonyManager.getDefault().getPhoneCount(); i2++) {
            zIsEmergecyNumber |= isEmergecyNumber(i2, str);
        }
        return zIsEmergecyNumber;
    }

    public static boolean isISODigit(char c) {
        return c >= '0' && c <= '9';
    }

    public static final boolean isNonSeparator(char c) {
        return (c >= '0' && c <= '9') || c == '*' || c == '#' || c == '+' || c == 'N' || c == ';' || c == ',';
    }

    private static boolean matchIntlPrefix(String str, int i2) {
        char c = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            char cCharAt = str.charAt(i3);
            if (c != 0) {
                if (c != 2) {
                    if (c != 4) {
                        if (isNonSeparator(cCharAt)) {
                            return false;
                        }
                    } else if (cCharAt == '1') {
                        c = 5;
                    } else if (isNonSeparator(cCharAt)) {
                        return false;
                    }
                } else if (cCharAt == '0') {
                    c = 3;
                } else if (cCharAt == '1') {
                    c = 4;
                } else if (isNonSeparator(cCharAt)) {
                    return false;
                }
            } else if (cCharAt == '+') {
                c = 1;
            } else if (cCharAt == '0') {
                c = 2;
            } else if (isNonSeparator(cCharAt)) {
                return false;
            }
        }
        return c == 1 || c == 3 || c == 5;
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

    /* JADX WARN: Code duplicated, block: B:14:0x002a  */
    /* JADX WARN: Code duplicated, block: B:15:0x0030  */
    public static final String pAndwToCommaAndSemicolon(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == 'P') {
                sb.append(',');
            } else if (cCharAt == 'W') {
                sb.append(';');
            } else if (cCharAt == 'p') {
                sb.append(',');
            } else if (cCharAt != 'w') {
                sb.append(str.charAt(i2));
            } else {
                sb.append(';');
            }
        }
        return sb.toString();
    }

    public static String stripSeparatorsExceptPW(String str) {
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
            } else if (PhoneNumberUtils.isNonSeparator(cCharAt)) {
                sb.append(cCharAt);
            } else if (cCharAt == 'P' || cCharAt == 'p' || cCharAt == 'W' || cCharAt == 'w') {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }
}
