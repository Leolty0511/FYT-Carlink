package com.android.internal.telephony.cdma.sms;

import android.app.m;
import android.util.SparseBooleanArray;
import com.android.internal.telephony.SmsAddress;
import com.android.internal.util.HexDump;

/* JADX INFO: loaded from: classes3.dex */
public class CdmaSmsAddress extends SmsAddress {
    public static final int DIGIT_MODE_4BIT_DTMF = 0;
    public static final int DIGIT_MODE_8BIT_CHAR = 1;
    public static final int NUMBERING_PLAN_ISDN_TELEPHONY = 1;
    public static final int NUMBERING_PLAN_UNKNOWN = 0;
    public static final int NUMBER_MODE_DATA_NETWORK = 1;
    public static final int NUMBER_MODE_NOT_DATA_NETWORK = 0;
    public static final int SMS_ADDRESS_MAX = 36;
    public static final int SMS_SUBADDRESS_MAX = 36;
    public static final int TON_ABBREVIATED = 6;
    public static final int TON_ALPHANUMERIC = 5;
    public static final int TON_INTERNATIONAL_OR_IP = 1;
    public static final int TON_NATIONAL_OR_EMAIL = 2;
    public static final int TON_NETWORK = 3;
    public static final int TON_RESERVED = 7;
    public static final int TON_SUBSCRIBER = 4;
    public static final int TON_UNKNOWN = 0;
    private static final SparseBooleanArray numericCharDialableMap;
    private static final char[] numericCharsDialable;
    private static final char[] numericCharsSugar;
    public int digitMode;
    public int numberMode;
    public int numberOfDigits;
    public int numberPlan;

    static {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '*', '#'};
        numericCharsDialable = cArr;
        char[] cArr2 = {'(', ')', ' ', '-', '+', '.', '/', '\\'};
        numericCharsSugar = cArr2;
        numericCharDialableMap = new SparseBooleanArray(cArr.length + cArr2.length);
        int i2 = 0;
        while (true) {
            char[] cArr3 = numericCharsDialable;
            if (i2 >= cArr3.length) {
                break;
            }
            numericCharDialableMap.put(cArr3[i2], true);
            i2++;
        }
        int i3 = 0;
        while (true) {
            char[] cArr4 = numericCharsSugar;
            if (i3 >= cArr4.length) {
                return;
            }
            numericCharDialableMap.put(cArr4[i3], false);
            i3++;
        }
    }

    private static String filterNumericSugar(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            SparseBooleanArray sparseBooleanArray = numericCharDialableMap;
            int iIndexOfKey = sparseBooleanArray.indexOfKey(cCharAt);
            if (iIndexOfKey < 0) {
                return null;
            }
            if (sparseBooleanArray.valueAt(iIndexOfKey)) {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    private static String filterWhitespace(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != ' ' && cCharAt != '\r' && cCharAt != '\n' && cCharAt != '\t') {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static CdmaSmsAddress parse(String str) {
        CdmaSmsAddress cdmaSmsAddress = new CdmaSmsAddress();
        cdmaSmsAddress.address = str;
        cdmaSmsAddress.ton = 0;
        String strFilterNumericSugar = filterNumericSugar(str);
        byte[] toDtmf = strFilterNumericSugar != null ? parseToDtmf(strFilterNumericSugar) : null;
        if (toDtmf != null) {
            cdmaSmsAddress.digitMode = 0;
            cdmaSmsAddress.numberMode = 0;
            if (str.indexOf(43) != -1) {
                cdmaSmsAddress.ton = 1;
            }
        } else {
            toDtmf = UserData.stringToAscii(filterWhitespace(str));
            if (toDtmf == null) {
                return null;
            }
            cdmaSmsAddress.digitMode = 1;
            cdmaSmsAddress.numberMode = 1;
            if (str.indexOf(64) != -1) {
                cdmaSmsAddress.ton = 2;
            }
        }
        cdmaSmsAddress.origBytes = toDtmf;
        cdmaSmsAddress.numberOfDigits = toDtmf.length;
        return cdmaSmsAddress;
    }

    private static byte[] parseToDtmf(String str) {
        int i2;
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt >= '1' && cCharAt <= '9') {
                i2 = cCharAt - '0';
            } else if (cCharAt == '0') {
                i2 = 10;
            } else if (cCharAt == '*') {
                i2 = 11;
            } else {
                if (cCharAt != '#') {
                    return null;
                }
                i2 = 12;
            }
            bArr[i3] = (byte) i2;
        }
        return bArr;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CdmaSmsAddress ");
        StringBuilder sbM = m.m(m.m(m.m(m.m(m.m(new StringBuilder("{ digitMode="), this.digitMode, sb, ", numberMode="), this.numberMode, sb, ", numberPlan="), this.numberPlan, sb, ", numberOfDigits="), this.numberOfDigits, sb, ", ton="), this.ton, sb, ", address=\"");
        sbM.append(this.address);
        sbM.append("\"");
        sb.append(sbM.toString());
        sb.append(", origBytes=" + HexDump.toHexString(this.origBytes));
        sb.append(" }");
        return sb.toString();
    }
}
