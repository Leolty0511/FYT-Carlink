package com.android.internal.telephony.cdma.sms;

import android.accessibilityservice.c;
import android.app.m;
import android.content.res.Resources;
import android.telephony.PreciseDisconnectCause;
import android.telephony.Rlog;
import android.telephony.SmsCbCmasInfo;
import android.telephony.cdma.CdmaSmsCbProgramData;
import android.telephony.cdma.CdmaSmsCbProgramResults;
import android.text.format.Time;
import com.android.internal.R;
import com.android.internal.telephony.EncodeException;
import com.android.internal.telephony.GsmAlphabet;
import com.android.internal.telephony.SmsHeader;
import com.android.internal.telephony.SmsMessageBase;
import com.android.internal.telephony.gsm.SmsMessage;
import com.android.internal.telephony.uicc.IccUtils;
import com.android.internal.util.BitwiseInputStream;
import com.android.internal.util.BitwiseOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes3.dex */
public final class BearerData {
    public static final int ALERT_DEFAULT = 0;
    public static final int ALERT_HIGH_PRIO = 3;
    public static final int ALERT_LOW_PRIO = 1;
    public static final int ALERT_MEDIUM_PRIO = 2;
    public static final int DISPLAY_MODE_DEFAULT = 1;
    public static final int DISPLAY_MODE_IMMEDIATE = 0;
    public static final int DISPLAY_MODE_USER = 2;
    public static final int ERROR_NONE = 0;
    public static final int ERROR_PERMANENT = 3;
    public static final int ERROR_TEMPORARY = 2;
    public static final int ERROR_UNDEFINED = 255;
    public static final int LANGUAGE_CHINESE = 6;
    public static final int LANGUAGE_ENGLISH = 1;
    public static final int LANGUAGE_FRENCH = 2;
    public static final int LANGUAGE_HEBREW = 7;
    public static final int LANGUAGE_JAPANESE = 4;
    public static final int LANGUAGE_KOREAN = 5;
    public static final int LANGUAGE_SPANISH = 3;
    public static final int LANGUAGE_UNKNOWN = 0;
    private static final String LOG_TAG = "BearerData";
    public static final int MESSAGE_TYPE_CANCELLATION = 3;
    public static final int MESSAGE_TYPE_DELIVER = 1;
    public static final int MESSAGE_TYPE_DELIVERY_ACK = 4;
    public static final int MESSAGE_TYPE_DELIVER_REPORT = 7;
    public static final int MESSAGE_TYPE_READ_ACK = 6;
    public static final int MESSAGE_TYPE_SUBMIT = 2;
    public static final int MESSAGE_TYPE_SUBMIT_REPORT = 8;
    public static final int MESSAGE_TYPE_USER_ACK = 5;
    public static final int PRIORITY_EMERGENCY = 3;
    public static final int PRIORITY_INTERACTIVE = 1;
    public static final int PRIORITY_NORMAL = 0;
    public static final int PRIORITY_URGENT = 2;
    public static final int PRIVACY_CONFIDENTIAL = 2;
    public static final int PRIVACY_NOT_RESTRICTED = 0;
    public static final int PRIVACY_RESTRICTED = 1;
    public static final int PRIVACY_SECRET = 3;
    public static final int RELATIVE_TIME_DAYS_LIMIT = 196;
    public static final int RELATIVE_TIME_HOURS_LIMIT = 167;
    public static final int RELATIVE_TIME_INDEFINITE = 245;
    public static final int RELATIVE_TIME_MINS_LIMIT = 143;
    public static final int RELATIVE_TIME_MOBILE_INACTIVE = 247;
    public static final int RELATIVE_TIME_NOW = 246;
    public static final int RELATIVE_TIME_RESERVED = 248;
    public static final int RELATIVE_TIME_WEEKS_LIMIT = 244;
    public static final int STATUS_ACCEPTED = 0;
    public static final int STATUS_BLOCKED_DESTINATION = 7;
    public static final int STATUS_CANCELLED = 3;
    public static final int STATUS_CANCEL_FAILED = 6;
    public static final int STATUS_DELIVERED = 2;
    public static final int STATUS_DEPOSITED_TO_INTERNET = 1;
    public static final int STATUS_DUPLICATE_MESSAGE = 9;
    public static final int STATUS_INVALID_DESTINATION = 10;
    public static final int STATUS_MESSAGE_EXPIRED = 13;
    public static final int STATUS_NETWORK_CONGESTION = 4;
    public static final int STATUS_NETWORK_ERROR = 5;
    public static final int STATUS_TEXT_TOO_LONG = 8;
    public static final int STATUS_UNDEFINED = 255;
    public static final int STATUS_UNKNOWN_ERROR = 31;
    private static final byte SUBPARAM_ALERT_ON_MESSAGE_DELIVERY = 12;
    private static final byte SUBPARAM_CALLBACK_NUMBER = 14;
    private static final byte SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE = 6;
    private static final byte SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE = 7;
    private static final byte SUBPARAM_ID_LAST_DEFINED = 23;
    private static final byte SUBPARAM_LANGUAGE_INDICATOR = 13;
    private static final byte SUBPARAM_MESSAGE_CENTER_TIME_STAMP = 3;
    private static final byte SUBPARAM_MESSAGE_DEPOSIT_INDEX = 17;
    private static final byte SUBPARAM_MESSAGE_DISPLAY_MODE = 15;
    private static final byte SUBPARAM_MESSAGE_IDENTIFIER = 0;
    private static final byte SUBPARAM_MESSAGE_STATUS = 20;
    private static final byte SUBPARAM_NUMBER_OF_MESSAGES = 11;
    private static final byte SUBPARAM_PRIORITY_INDICATOR = 8;
    private static final byte SUBPARAM_PRIVACY_INDICATOR = 9;
    private static final byte SUBPARAM_REPLY_OPTION = 10;
    private static final byte SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA = 18;
    private static final byte SUBPARAM_SERVICE_CATEGORY_PROGRAM_RESULTS = 19;
    private static final byte SUBPARAM_USER_DATA = 1;
    private static final byte SUBPARAM_USER_RESPONSE_CODE = 2;
    private static final byte SUBPARAM_VALIDITY_PERIOD_ABSOLUTE = 4;
    private static final byte SUBPARAM_VALIDITY_PERIOD_RELATIVE = 5;
    public CdmaSmsAddress callbackNumber;
    public SmsCbCmasInfo cmasWarningInfo;
    public TimeStamp deferredDeliveryTimeAbsolute;
    public int deferredDeliveryTimeRelative;
    public boolean deferredDeliveryTimeRelativeSet;
    public boolean deliveryAckReq;
    public int depositIndex;
    public boolean hasUserDataHeader;
    public int messageId;
    public int messageType;
    public TimeStamp msgCenterTimeStamp;
    public int numberOfMessages;
    public boolean readAckReq;
    public boolean reportReq;
    public ArrayList<CdmaSmsCbProgramData> serviceCategoryProgramData;
    public ArrayList<CdmaSmsCbProgramResults> serviceCategoryProgramResults;
    public boolean userAckReq;
    public UserData userData;
    public int userResponseCode;
    public TimeStamp validityPeriodAbsolute;
    public int validityPeriodRelative;
    public boolean validityPeriodRelativeSet;
    public boolean priorityIndicatorSet = false;
    public int priority = 0;
    public boolean privacyIndicatorSet = false;
    public int privacy = 0;
    public boolean alertIndicatorSet = false;
    public int alert = 0;
    public boolean displayModeSet = false;
    public int displayMode = 1;
    public boolean languageIndicatorSet = false;
    public int language = 0;
    public boolean messageStatusSet = false;
    public int errorClass = 255;
    public int messageStatus = 255;
    public boolean userResponseCodeSet = false;

    public static class CodingException extends Exception {
        public CodingException(String str) {
            super(str);
        }
    }

    public static class Gsm7bitCodingResult {
        byte[] data;
        int septets;

        private Gsm7bitCodingResult() {
        }
    }

    public static class TimeStamp extends Time {
        public TimeStamp() {
            super(TimeZone.getDefault().getID());
        }

        public static TimeStamp fromByteArray(byte[] bArr) {
            TimeStamp timeStamp = new TimeStamp();
            int iCdmaBcdByteToInt = IccUtils.cdmaBcdByteToInt(bArr[0]);
            if (iCdmaBcdByteToInt <= 99 && iCdmaBcdByteToInt >= 0) {
                timeStamp.year = iCdmaBcdByteToInt >= 96 ? iCdmaBcdByteToInt + PreciseDisconnectCause.ECBM_NOT_SUPPORTED : iCdmaBcdByteToInt + 2000;
                int iCdmaBcdByteToInt2 = IccUtils.cdmaBcdByteToInt(bArr[1]);
                if (iCdmaBcdByteToInt2 >= 1 && iCdmaBcdByteToInt2 <= 12) {
                    timeStamp.month = iCdmaBcdByteToInt2 - 1;
                    int iCdmaBcdByteToInt3 = IccUtils.cdmaBcdByteToInt(bArr[2]);
                    if (iCdmaBcdByteToInt3 >= 1 && iCdmaBcdByteToInt3 <= 31) {
                        timeStamp.monthDay = iCdmaBcdByteToInt3;
                        int iCdmaBcdByteToInt4 = IccUtils.cdmaBcdByteToInt(bArr[3]);
                        if (iCdmaBcdByteToInt4 >= 0 && iCdmaBcdByteToInt4 <= 23) {
                            timeStamp.hour = iCdmaBcdByteToInt4;
                            int iCdmaBcdByteToInt5 = IccUtils.cdmaBcdByteToInt(bArr[4]);
                            if (iCdmaBcdByteToInt5 >= 0 && iCdmaBcdByteToInt5 <= 59) {
                                timeStamp.minute = iCdmaBcdByteToInt5;
                                int iCdmaBcdByteToInt6 = IccUtils.cdmaBcdByteToInt(bArr[5]);
                                if (iCdmaBcdByteToInt6 >= 0 && iCdmaBcdByteToInt6 <= 59) {
                                    timeStamp.second = iCdmaBcdByteToInt6;
                                    return timeStamp;
                                }
                            }
                        }
                    }
                }
            }
            return null;
        }

        @Override // android.text.format.Time
        public String toString() {
            StringBuilder sb = new StringBuilder("TimeStamp ");
            StringBuilder sbM = m.m(m.m(m.m(m.m(m.m(new StringBuilder("{ year="), this.year, sb, ", month="), this.month, sb, ", day="), this.monthDay, sb, ", hour="), this.hour, sb, ", minute="), this.minute, sb, ", second=");
            sbM.append(this.second);
            sb.append(sbM.toString());
            sb.append(" }");
            return sb.toString();
        }
    }

    public static GsmAlphabet.TextEncodingDetails calcTextEncodingDetails(CharSequence charSequence, boolean z2, boolean z3) {
        int iCountAsciiSeptets = countAsciiSeptets(charSequence, z2);
        if (iCountAsciiSeptets == -1 || iCountAsciiSeptets > 160) {
            GsmAlphabet.TextEncodingDetails textEncodingDetailsCalculateLength = SmsMessage.calculateLength(charSequence, z2);
            return (textEncodingDetailsCalculateLength.msgCount == 1 && textEncodingDetailsCalculateLength.codeUnitSize == 1 && z3) ? SmsMessageBase.calcUnicodeEncodingDetails(charSequence) : textEncodingDetailsCalculateLength;
        }
        GsmAlphabet.TextEncodingDetails textEncodingDetails = new GsmAlphabet.TextEncodingDetails();
        textEncodingDetails.msgCount = 1;
        textEncodingDetails.codeUnitCount = iCountAsciiSeptets;
        textEncodingDetails.codeUnitsRemaining = 160 - iCountAsciiSeptets;
        textEncodingDetails.codeUnitSize = 1;
        return textEncodingDetails;
    }

    private static int countAsciiSeptets(CharSequence charSequence, boolean z2) {
        int length = charSequence.length();
        if (z2) {
            return length;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (UserData.charToAscii.get(charSequence.charAt(i2), -1) == -1) {
                return -1;
            }
        }
        return length;
    }

    public static BearerData decode(byte[] bArr) {
        return decode(bArr, 0);
    }

    private static String decode7bitAscii(byte[] bArr, int i2, int i3) throws CodingException {
        int i4 = i2 * 8;
        try {
            StringBuffer stringBuffer = new StringBuffer(i3);
            BitwiseInputStream bitwiseInputStream = new BitwiseInputStream(bArr);
            int i5 = (i3 * 7) + (i4 * 8);
            if (bitwiseInputStream.available() < i5) {
                throw new CodingException("insufficient data (wanted " + i5 + " bits, but only have " + bitwiseInputStream.available() + ")");
            }
            bitwiseInputStream.skip(i4);
            for (int i6 = 0; i6 < i3; i6++) {
                int i7 = bitwiseInputStream.read(7);
                if (i7 >= 32 && i7 <= UserData.ASCII_MAP_MAX_INDEX) {
                    stringBuffer.append(UserData.ASCII_MAP[i7 - 32]);
                } else if (i7 == 10) {
                    stringBuffer.append('\n');
                } else if (i7 == 13) {
                    stringBuffer.append('\r');
                } else {
                    stringBuffer.append(' ');
                }
            }
            return stringBuffer.toString();
        } catch (BitwiseInputStream.AccessException e2) {
            throw new CodingException("7bit ASCII decode failed: " + e2);
        }
    }

    private static String decode7bitGsm(byte[] bArr, int i2, int i3) throws CodingException {
        int i4 = i2 * 8;
        int i5 = (i4 + 6) / 7;
        String strGsm7BitPackedToString = GsmAlphabet.gsm7BitPackedToString(bArr, i2, i3 - i5, (i5 * 7) - i4, 0, 0);
        if (strGsm7BitPackedToString != null) {
            return strGsm7BitPackedToString;
        }
        throw new CodingException("7bit GSM decoding failed");
    }

    private static boolean decodeCallbackNumber(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException, CodingException {
        byte b2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 < 8) {
            bitwiseInputStream.skip(i2);
            return false;
        }
        CdmaSmsAddress cdmaSmsAddress = new CdmaSmsAddress();
        int i3 = bitwiseInputStream.read(1);
        cdmaSmsAddress.digitMode = i3;
        int i4 = 4;
        if (i3 == 1) {
            cdmaSmsAddress.ton = bitwiseInputStream.read(3);
            cdmaSmsAddress.numberPlan = bitwiseInputStream.read(4);
            b2 = (byte) 8;
            i4 = 8;
        } else {
            b2 = 1;
        }
        int i5 = bitwiseInputStream.read(8);
        cdmaSmsAddress.numberOfDigits = i5;
        int i6 = i2 - ((byte) (b2 + 8));
        int i7 = i5 * i4;
        int i8 = i6 - i7;
        if (i6 < i7) {
            throw new CodingException(c.m(c.t("CALLBACK_NUMBER subparam encoding size error (remainingBits + ", i6, ", dataBits + ", i7, ", paddingBits + "), i8, ")"));
        }
        cdmaSmsAddress.origBytes = bitwiseInputStream.readByteArray(i7);
        bitwiseInputStream.skip(i8);
        decodeSmsAddress(cdmaSmsAddress);
        bearerData.callbackNumber = cdmaSmsAddress;
        return true;
    }

    private static String decodeCharset(byte[] bArr, int i2, int i3, int i4, String str) throws CodingException {
        if (i3 < 0 || (i3 * i4) + i2 > bArr.length) {
            int length = ((bArr.length - i2) - (i2 % i4)) / i4;
            if (length < 0) {
                throw new CodingException(c.D(str, " decode failed: offset out of range"));
            }
            Rlog.e(LOG_TAG, str + " decode error: offset = " + i2 + " numFields = " + i3 + " data.length = " + bArr.length + " maxNumFields = " + length);
            i3 = length;
        }
        try {
            return new String(bArr, i2, i3 * i4, str);
        } catch (UnsupportedEncodingException e2) {
            throw new CodingException(str + " decode failed: " + e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0093  */
    /* JADX WARN: Code duplicated, block: B:27:0x0099  */
    private static void decodeCmasUserData(BearerData bearerData, int i2) throws BitwiseInputStream.AccessException, CodingException {
        int i3;
        BitwiseInputStream bitwiseInputStream = new BitwiseInputStream(bearerData.userData.payload);
        if (bitwiseInputStream.available() < 8) {
            throw new CodingException("emergency CB with no CMAE_protocol_version");
        }
        int i4 = bitwiseInputStream.read(8);
        if (i4 != 0) {
            throw new CodingException(c.d("unsupported CMAE_protocol_version ", i4));
        }
        int iServiceCategoryToCmasMessageClass = serviceCategoryToCmasMessageClass(i2);
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        while (bitwiseInputStream.available() >= 16) {
            int i10 = bitwiseInputStream.read(8);
            int i11 = bitwiseInputStream.read(8);
            if (i10 == 0) {
                UserData userData = new UserData();
                int i12 = bitwiseInputStream.read(5);
                userData.msgEncoding = i12;
                userData.msgEncodingSet = true;
                userData.msgType = 0;
                if (i12 == 0) {
                    i3 = i11 - 1;
                } else if (i12 == 2 || i12 == 3) {
                    i3 = ((i11 * 8) - 5) / 7;
                } else if (i12 == 4) {
                    i3 = (i11 - 1) / 2;
                } else if (i12 == 8) {
                    i3 = i11 - 1;
                } else if (i12 != 9) {
                    i3 = 0;
                } else {
                    i3 = ((i11 * 8) - 5) / 7;
                }
                userData.numFields = i3;
                userData.payload = bitwiseInputStream.readByteArray((i11 * 8) - 5);
                decodeUserDataPayload(userData, false);
                bearerData.userData = userData;
            } else if (i10 != 1) {
                Rlog.w(LOG_TAG, "skipping unsupported CMAS record type " + i10);
                bitwiseInputStream.skip(i11 * 8);
            } else {
                i5 = bitwiseInputStream.read(8);
                i6 = bitwiseInputStream.read(8);
                i7 = bitwiseInputStream.read(4);
                i8 = bitwiseInputStream.read(4);
                i9 = bitwiseInputStream.read(4);
                bitwiseInputStream.skip((i11 * 8) - 28);
            }
        }
        bearerData.cmasWarningInfo = new SmsCbCmasInfo(iServiceCategoryToCmasMessageClass, i5, i6, i7, i8, i9);
    }

    private static boolean decodeDeferredDeliveryAbs(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        boolean z2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 >= 48) {
            i2 -= 48;
            bearerData.deferredDeliveryTimeAbsolute = TimeStamp.fromByteArray(bitwiseInputStream.readByteArray(48));
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("DEFERRED_DELIVERY_TIME_ABSOLUTE decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        return z2;
    }

    private static boolean decodeDeferredDeliveryRel(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        boolean z2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 >= 8) {
            i2 -= 8;
            bearerData.validityPeriodRelative = bitwiseInputStream.read(8);
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("DEFERRED_DELIVERY_TIME_RELATIVE decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        bearerData.validityPeriodRelativeSet = z2;
        return z2;
    }

    private static boolean decodeDepositIndex(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        boolean z2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 >= 16) {
            i2 -= 16;
            bearerData.depositIndex = bitwiseInputStream.read(8) | (bitwiseInputStream.read(8) << 8);
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("MESSAGE_DEPOSIT_INDEX decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        return z2;
    }

    private static boolean decodeDisplayMode(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        boolean z2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 >= 8) {
            i2 -= 8;
            bearerData.displayMode = bitwiseInputStream.read(2);
            bitwiseInputStream.skip(6);
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("DISPLAY_MODE decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        bearerData.displayModeSet = z2;
        return z2;
    }

    private static String decodeDtmfSmsAddress(byte[] bArr, int i2) throws CodingException {
        StringBuffer stringBuffer = new StringBuffer(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = (bArr[i3 / 2] >>> (4 - ((i3 % 2) * 4))) & 15;
            if (i4 >= 1 && i4 <= 9) {
                stringBuffer.append(Integer.toString(i4, 10));
            } else if (i4 == 10) {
                stringBuffer.append('0');
            } else if (i4 == 11) {
                stringBuffer.append('*');
            } else {
                if (i4 != 12) {
                    throw new CodingException(c.e("invalid SMS address DTMF code (", i4, ")"));
                }
                stringBuffer.append('#');
            }
        }
        return stringBuffer.toString();
    }

    private static String decodeGsmDcs(byte[] bArr, int i2, int i3, int i4) throws CodingException {
        if ((i4 & 192) != 0) {
            throw new CodingException(c.e("unsupported coding group (", i4, ")"));
        }
        int i5 = (i4 >> 2) & 3;
        if (i5 == 0) {
            return decode7bitGsm(bArr, i2, i3);
        }
        if (i5 == 1) {
            return decodeUtf8(bArr, i2, i3);
        }
        if (i5 == 2) {
            return decodeUtf16(bArr, i2, i3);
        }
        throw new CodingException(c.e("unsupported user msgType encoding (", i4, ")"));
    }

    private static void decodeIs91(BearerData bearerData) throws CodingException {
        switch (bearerData.userData.msgType) {
            case 130:
                decodeIs91VoicemailStatus(bearerData);
                return;
            case 131:
            case 133:
                decodeIs91ShortMessage(bearerData);
                return;
            case 132:
                decodeIs91Cli(bearerData);
                return;
            default:
                throw new CodingException(c.m(new StringBuilder("unsupported IS-91 message type ("), bearerData.userData.msgType, ")"));
        }
    }

    private static void decodeIs91Cli(BearerData bearerData) throws CodingException {
        int iAvailable = new BitwiseInputStream(bearerData.userData.payload).available() / 4;
        int i2 = bearerData.userData.numFields;
        if (iAvailable > 14 || iAvailable < 3 || iAvailable < i2) {
            throw new CodingException("IS-91 voicemail status decoding failed");
        }
        CdmaSmsAddress cdmaSmsAddress = new CdmaSmsAddress();
        cdmaSmsAddress.digitMode = 0;
        cdmaSmsAddress.origBytes = bearerData.userData.payload;
        cdmaSmsAddress.numberOfDigits = (byte) i2;
        decodeSmsAddress(cdmaSmsAddress);
        bearerData.callbackNumber = cdmaSmsAddress;
    }

    private static void decodeIs91ShortMessage(BearerData bearerData) throws CodingException {
        BitwiseInputStream bitwiseInputStream = new BitwiseInputStream(bearerData.userData.payload);
        int iAvailable = bitwiseInputStream.available() / 6;
        int i2 = bearerData.userData.numFields;
        if (i2 > 14 || iAvailable < i2) {
            throw new CodingException("IS-91 short message decoding failed");
        }
        StringBuffer stringBuffer = new StringBuffer(iAvailable);
        for (int i3 = 0; i3 < i2; i3++) {
            stringBuffer.append(UserData.ASCII_MAP[bitwiseInputStream.read(6)]);
        }
        bearerData.userData.payloadStr = stringBuffer.toString();
    }

    private static void decodeIs91VoicemailStatus(BearerData bearerData) throws CodingException {
        BitwiseInputStream bitwiseInputStream = new BitwiseInputStream(bearerData.userData.payload);
        int iAvailable = bitwiseInputStream.available() / 6;
        int i2 = bearerData.userData.numFields;
        if (iAvailable > 14 || iAvailable < 3 || iAvailable < i2) {
            throw new CodingException("IS-91 voicemail status decoding failed");
        }
        try {
            StringBuffer stringBuffer = new StringBuffer(iAvailable);
            while (bitwiseInputStream.available() >= 6) {
                stringBuffer.append(UserData.ASCII_MAP[bitwiseInputStream.read(6)]);
            }
            String string = stringBuffer.toString();
            bearerData.numberOfMessages = Integer.parseInt(string.substring(0, 2));
            char cCharAt = string.charAt(2);
            if (cCharAt == ' ') {
                bearerData.priority = 0;
            } else {
                if (cCharAt != '!') {
                    throw new CodingException("IS-91 voicemail status decoding failed: illegal priority setting (" + cCharAt + ")");
                }
                bearerData.priority = 2;
            }
            bearerData.priorityIndicatorSet = true;
            bearerData.userData.payloadStr = string.substring(3, i2 - 3);
        } catch (IndexOutOfBoundsException e2) {
            throw new CodingException("IS-91 voicemail status decoding failed: " + e2);
        } catch (NumberFormatException e3) {
            throw new CodingException("IS-91 voicemail status decoding failed: " + e3);
        }
    }

    private static boolean decodeLanguageIndicator(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        boolean z2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 >= 8) {
            i2 -= 8;
            bearerData.language = bitwiseInputStream.read(8);
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("LANGUAGE_INDICATOR decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        bearerData.languageIndicatorSet = z2;
        return z2;
    }

    private static String decodeLatin(byte[] bArr, int i2, int i3) {
        return decodeCharset(bArr, i2, i3, 1, "ISO-8859-1");
    }

    private static boolean decodeMessageId(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        int i2 = bitwiseInputStream.read(8) * 8;
        boolean z2 = false;
        if (i2 >= 24) {
            i2 -= 24;
            bearerData.messageType = bitwiseInputStream.read(4);
            int i3 = bitwiseInputStream.read(8) << 8;
            bearerData.messageId = i3;
            bearerData.messageId = bitwiseInputStream.read(8) | i3;
            bearerData.hasUserDataHeader = bitwiseInputStream.read(1) == 1;
            bitwiseInputStream.skip(3);
            z2 = true;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("MESSAGE_IDENTIFIER decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        return z2;
    }

    private static boolean decodeMsgCenterTimeStamp(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        boolean z2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 >= 48) {
            i2 -= 48;
            bearerData.msgCenterTimeStamp = TimeStamp.fromByteArray(bitwiseInputStream.readByteArray(48));
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("MESSAGE_CENTER_TIME_STAMP decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        return z2;
    }

    private static boolean decodeMsgCount(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        boolean z2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 >= 8) {
            i2 -= 8;
            bearerData.numberOfMessages = IccUtils.cdmaBcdByteToInt((byte) bitwiseInputStream.read(8));
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("NUMBER_OF_MESSAGES decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        return z2;
    }

    private static boolean decodeMsgDeliveryAlert(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        boolean z2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 >= 8) {
            i2 -= 8;
            bearerData.alert = bitwiseInputStream.read(2);
            bitwiseInputStream.skip(6);
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("ALERT_ON_MESSAGE_DELIVERY decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        bearerData.alertIndicatorSet = z2;
        return z2;
    }

    private static boolean decodeMsgStatus(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        boolean z2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 >= 8) {
            i2 -= 8;
            bearerData.errorClass = bitwiseInputStream.read(2);
            bearerData.messageStatus = bitwiseInputStream.read(6);
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("MESSAGE_STATUS decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        bearerData.messageStatusSet = z2;
        return z2;
    }

    private static boolean decodePriorityIndicator(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        boolean z2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 >= 8) {
            i2 -= 8;
            bearerData.priority = bitwiseInputStream.read(2);
            bitwiseInputStream.skip(6);
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("PRIORITY_INDICATOR decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        bearerData.priorityIndicatorSet = z2;
        return z2;
    }

    private static boolean decodePrivacyIndicator(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        boolean z2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 >= 8) {
            i2 -= 8;
            bearerData.privacy = bitwiseInputStream.read(2);
            bitwiseInputStream.skip(6);
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("PRIVACY_INDICATOR decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        bearerData.privacyIndicatorSet = z2;
        return z2;
    }

    private static boolean decodeReplyOption(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        int i2 = bitwiseInputStream.read(8) * 8;
        boolean z2 = false;
        if (i2 >= 8) {
            i2 -= 8;
            bearerData.userAckReq = bitwiseInputStream.read(1) == 1;
            bearerData.deliveryAckReq = bitwiseInputStream.read(1) == 1;
            bearerData.readAckReq = bitwiseInputStream.read(1) == 1;
            bearerData.reportReq = bitwiseInputStream.read(1) == 1;
            bitwiseInputStream.skip(4);
            z2 = true;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("REPLY_OPTION decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        return z2;
    }

    private static boolean decodeReserved(BearerData bearerData, BitwiseInputStream bitwiseInputStream, int i2) throws BitwiseInputStream.AccessException, CodingException {
        boolean z2;
        int i3 = bitwiseInputStream.read(8);
        int i4 = i3 * 8;
        if (i4 <= bitwiseInputStream.available()) {
            bitwiseInputStream.skip(i4);
            z2 = true;
        } else {
            z2 = false;
        }
        StringBuilder sbS = c.s("RESERVED bearer data subparameter ", i2, " decode ");
        sbS.append(z2 ? "succeeded" : "failed");
        sbS.append(" (param bits = ");
        sbS.append(i4);
        sbS.append(")");
        Rlog.d(LOG_TAG, sbS.toString());
        if (z2) {
            return z2;
        }
        throw new CodingException(m.e("RESERVED bearer data subparameter ", i2, " had invalid SUBPARAM_LEN ", i3));
    }

    private static boolean decodeServiceCategoryProgramData(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException, CodingException {
        if (bitwiseInputStream.available() < 13) {
            throw new CodingException("SERVICE_CATEGORY_PROGRAM_DATA decode failed: only " + bitwiseInputStream.available() + " bits available");
        }
        int i2 = bitwiseInputStream.read(8) * 8;
        int i3 = bitwiseInputStream.read(5);
        int i4 = i2 - 5;
        if (bitwiseInputStream.available() < i4) {
            throw new CodingException("SERVICE_CATEGORY_PROGRAM_DATA decode failed: only " + bitwiseInputStream.available() + " bits available (" + i4 + " bits expected)");
        }
        ArrayList<CdmaSmsCbProgramData> arrayList = new ArrayList<>();
        boolean z2 = false;
        while (i4 >= 48) {
            int i5 = bitwiseInputStream.read(4);
            int i6 = bitwiseInputStream.read(8) | (bitwiseInputStream.read(8) << 8);
            int i7 = bitwiseInputStream.read(8);
            int i8 = bitwiseInputStream.read(8);
            int i9 = bitwiseInputStream.read(4);
            int i10 = bitwiseInputStream.read(8);
            int i11 = i4 - 48;
            int bitsForNumFields = getBitsForNumFields(i3, i10);
            if (i11 < bitsForNumFields) {
                throw new CodingException(m.f("category name is ", bitsForNumFields, " bits in length, but there are only ", i11, " bits available"));
            }
            UserData userData = new UserData();
            userData.msgEncoding = i3;
            userData.msgEncodingSet = true;
            userData.numFields = i10;
            userData.payload = bitwiseInputStream.readByteArray(bitsForNumFields);
            i4 = i11 - bitsForNumFields;
            decodeUserDataPayload(userData, false);
            arrayList.add(new CdmaSmsCbProgramData(i5, i6, i7, i8, i9, userData.payloadStr));
            z2 = true;
        }
        if (!z2 || i4 > 0) {
            StringBuilder sb = new StringBuilder("SERVICE_CATEGORY_PROGRAM_DATA decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i4);
            sb.append(')');
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i4);
        bearerData.serviceCategoryProgramData = arrayList;
        return z2;
    }

    private static String decodeShiftJis(byte[] bArr, int i2, int i3) {
        return decodeCharset(bArr, i2, i3, 1, "Shift_JIS");
    }

    private static void decodeSmsAddress(CdmaSmsAddress cdmaSmsAddress) throws CodingException {
        if (cdmaSmsAddress.digitMode != 1) {
            cdmaSmsAddress.address = decodeDtmfSmsAddress(cdmaSmsAddress.origBytes, cdmaSmsAddress.numberOfDigits);
            return;
        }
        try {
            byte[] bArr = cdmaSmsAddress.origBytes;
            cdmaSmsAddress.address = new String(bArr, 0, bArr.length, "US-ASCII");
        } catch (UnsupportedEncodingException unused) {
            throw new CodingException("invalid SMS address ASCII code");
        }
    }

    private static boolean decodeUserData(BearerData bearerData, BitwiseInputStream bitwiseInputStream) {
        int i2 = bitwiseInputStream.read(8) * 8;
        UserData userData = new UserData();
        bearerData.userData = userData;
        int i3 = 5;
        userData.msgEncoding = bitwiseInputStream.read(5);
        UserData userData2 = bearerData.userData;
        userData2.msgEncodingSet = true;
        userData2.msgType = 0;
        int i4 = userData2.msgEncoding;
        if (i4 == 1 || i4 == 10) {
            userData2.msgType = bitwiseInputStream.read(8);
            i3 = 13;
        }
        bearerData.userData.numFields = bitwiseInputStream.read(8);
        bearerData.userData.payload = bitwiseInputStream.readByteArray(i2 - (i3 + 8));
        return true;
    }

    private static void decodeUserDataPayload(UserData userData, boolean z2) throws CodingException {
        int i2;
        if (z2) {
            byte[] bArr = userData.payload;
            int i3 = bArr[0] & 255;
            i2 = i3 + 1 + 0;
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, 1, bArr2, 0, i3);
            userData.userDataHeader = SmsHeader.fromByteArray(bArr2);
        } else {
            i2 = 0;
        }
        int i4 = userData.msgEncoding;
        if (i4 == 0) {
            boolean z3 = Resources.getSystem().getBoolean(R.bool.config_sms_utf8_support);
            int length = userData.numFields;
            byte[] bArr3 = new byte[length];
            byte[] bArr4 = userData.payload;
            if (length >= bArr4.length) {
                length = bArr4.length;
            }
            System.arraycopy(bArr4, 0, bArr3, 0, length);
            userData.payload = bArr3;
            if (z3) {
                userData.payloadStr = decodeUtf8(bArr3, i2, userData.numFields);
                return;
            } else {
                userData.payloadStr = decodeLatin(bArr3, i2, userData.numFields);
                return;
            }
        }
        if (i4 == 2 || i4 == 3) {
            userData.payloadStr = decode7bitAscii(userData.payload, i2, userData.numFields);
            return;
        }
        if (i4 == 4) {
            userData.payloadStr = decodeUtf16(userData.payload, i2, userData.numFields);
            return;
        }
        if (i4 == 5) {
            userData.payloadStr = decodeShiftJis(userData.payload, i2, userData.numFields);
            return;
        }
        switch (i4) {
            case 8:
                userData.payloadStr = decodeLatin(userData.payload, i2, userData.numFields);
                return;
            case 9:
                userData.payloadStr = decode7bitGsm(userData.payload, i2, userData.numFields);
                return;
            case 10:
                userData.payloadStr = decodeGsmDcs(userData.payload, i2, userData.numFields, userData.msgType);
                return;
            default:
                throw new CodingException(c.m(new StringBuilder("unsupported user data encoding ("), userData.msgEncoding, ")"));
        }
    }

    private static boolean decodeUserResponseCode(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        boolean z2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 >= 8) {
            i2 -= 8;
            bearerData.userResponseCode = bitwiseInputStream.read(8);
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("USER_RESPONSE_CODE decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        bearerData.userResponseCodeSet = z2;
        return z2;
    }

    private static String decodeUtf16(byte[] bArr, int i2, int i3) {
        return decodeCharset(bArr, i2, i3 - (((i2 % 2) + i2) / 2), 2, "utf-16be");
    }

    private static String decodeUtf8(byte[] bArr, int i2, int i3) {
        return decodeCharset(bArr, i2, i3, 1, "UTF-8");
    }

    private static boolean decodeValidityAbs(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        boolean z2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 >= 48) {
            i2 -= 48;
            bearerData.validityPeriodAbsolute = TimeStamp.fromByteArray(bitwiseInputStream.readByteArray(48));
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("VALIDITY_PERIOD_ABSOLUTE decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        return z2;
    }

    private static boolean decodeValidityRel(BearerData bearerData, BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        boolean z2;
        int i2 = bitwiseInputStream.read(8) * 8;
        if (i2 >= 8) {
            i2 -= 8;
            bearerData.deferredDeliveryTimeRelative = bitwiseInputStream.read(8);
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || i2 > 0) {
            StringBuilder sb = new StringBuilder("VALIDITY_PERIOD_RELATIVE decode ");
            sb.append(z2 ? "succeeded" : "failed");
            sb.append(" (extra bits = ");
            sb.append(i2);
            sb.append(")");
            Rlog.d(LOG_TAG, sb.toString());
        }
        bitwiseInputStream.skip(i2);
        bearerData.deferredDeliveryTimeRelativeSet = z2;
        return z2;
    }

    public static byte[] encode(BearerData bearerData) {
        UserData userData = bearerData.userData;
        bearerData.hasUserDataHeader = (userData == null || userData.userDataHeader == null) ? false : true;
        try {
            BitwiseOutputStream bitwiseOutputStream = new BitwiseOutputStream(200);
            bitwiseOutputStream.write(8, 0);
            encodeMessageId(bearerData, bitwiseOutputStream);
            if (bearerData.userData != null) {
                bitwiseOutputStream.write(8, 1);
                encodeUserData(bearerData, bitwiseOutputStream);
            }
            if (bearerData.callbackNumber != null) {
                bitwiseOutputStream.write(8, 14);
                encodeCallbackNumber(bearerData, bitwiseOutputStream);
            }
            if (bearerData.userAckReq || bearerData.deliveryAckReq || bearerData.readAckReq || bearerData.reportReq) {
                bitwiseOutputStream.write(8, 10);
                encodeReplyOption(bearerData, bitwiseOutputStream);
            }
            if (bearerData.numberOfMessages != 0) {
                bitwiseOutputStream.write(8, 11);
                encodeMsgCount(bearerData, bitwiseOutputStream);
            }
            if (bearerData.validityPeriodRelativeSet) {
                bitwiseOutputStream.write(8, 5);
                encodeValidityPeriodRel(bearerData, bitwiseOutputStream);
            }
            if (bearerData.privacyIndicatorSet) {
                bitwiseOutputStream.write(8, 9);
                encodePrivacyIndicator(bearerData, bitwiseOutputStream);
            }
            if (bearerData.languageIndicatorSet) {
                bitwiseOutputStream.write(8, 13);
                encodeLanguageIndicator(bearerData, bitwiseOutputStream);
            }
            if (bearerData.displayModeSet) {
                bitwiseOutputStream.write(8, 15);
                encodeDisplayMode(bearerData, bitwiseOutputStream);
            }
            if (bearerData.priorityIndicatorSet) {
                bitwiseOutputStream.write(8, 8);
                encodePriorityIndicator(bearerData, bitwiseOutputStream);
            }
            if (bearerData.alertIndicatorSet) {
                bitwiseOutputStream.write(8, 12);
                encodeMsgDeliveryAlert(bearerData, bitwiseOutputStream);
            }
            if (bearerData.messageStatusSet) {
                bitwiseOutputStream.write(8, 20);
                encodeMsgStatus(bearerData, bitwiseOutputStream);
            }
            if (bearerData.serviceCategoryProgramResults != null) {
                bitwiseOutputStream.write(8, 19);
                encodeScpResults(bearerData, bitwiseOutputStream);
            }
            return bitwiseOutputStream.toByteArray();
        } catch (CodingException e2) {
            Rlog.e(LOG_TAG, "BearerData encode failed: " + e2);
            return null;
        } catch (BitwiseOutputStream.AccessException e3) {
            Rlog.e(LOG_TAG, "BearerData encode failed: " + e3);
            return null;
        }
    }

    private static void encode16bitEms(UserData userData, byte[] bArr) throws CodingException {
        byte[] bArrEncodeUtf16 = encodeUtf16(userData.payloadStr);
        int length = bArr.length + 1;
        int length2 = bArrEncodeUtf16.length / 2;
        userData.msgEncoding = 4;
        userData.msgEncodingSet = true;
        int i2 = ((length + 1) / 2) + length2;
        userData.numFields = i2;
        byte[] bArr2 = new byte[i2 * 2];
        userData.payload = bArr2;
        bArr2[0] = (byte) bArr.length;
        System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
        System.arraycopy(bArrEncodeUtf16, 0, userData.payload, length, bArrEncodeUtf16.length);
    }

    private static byte[] encode7bitAscii(String str, boolean z2) throws CodingException {
        try {
            BitwiseOutputStream bitwiseOutputStream = new BitwiseOutputStream(str.length());
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = UserData.charToAscii.get(str.charAt(i2), -1);
                if (i3 != -1) {
                    bitwiseOutputStream.write(7, i3);
                } else {
                    if (!z2) {
                        throw new CodingException("cannot ASCII encode (" + str.charAt(i2) + ")");
                    }
                    bitwiseOutputStream.write(7, 32);
                }
            }
            return bitwiseOutputStream.toByteArray();
        } catch (BitwiseOutputStream.AccessException e2) {
            throw new CodingException("7bit ASCII encode failed: " + e2);
        }
    }

    private static void encode7bitEms(UserData userData, byte[] bArr, boolean z2) throws CodingException {
        Gsm7bitCodingResult gsm7bitCodingResultEncode7bitGsm = encode7bitGsm(userData.payloadStr, (((bArr.length + 1) * 8) + 6) / 7, z2);
        userData.msgEncoding = 9;
        userData.msgEncodingSet = true;
        userData.numFields = gsm7bitCodingResultEncode7bitGsm.septets;
        byte[] bArr2 = gsm7bitCodingResultEncode7bitGsm.data;
        userData.payload = bArr2;
        bArr2[0] = (byte) bArr.length;
        System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
    }

    private static Gsm7bitCodingResult encode7bitGsm(String str, int i2, boolean z2) throws CodingException {
        try {
            byte[] bArrStringToGsm7BitPacked = GsmAlphabet.stringToGsm7BitPacked(str, i2, !z2, 0, 0);
            Gsm7bitCodingResult gsm7bitCodingResult = new Gsm7bitCodingResult();
            byte[] bArr = new byte[bArrStringToGsm7BitPacked.length - 1];
            gsm7bitCodingResult.data = bArr;
            System.arraycopy(bArrStringToGsm7BitPacked, 1, bArr, 0, bArrStringToGsm7BitPacked.length - 1);
            gsm7bitCodingResult.septets = bArrStringToGsm7BitPacked[0] & 255;
            return gsm7bitCodingResult;
        } catch (EncodeException e2) {
            throw new CodingException("7bit GSM encode failed: " + e2);
        }
    }

    private static void encodeCallbackNumber(BearerData bearerData, BitwiseOutputStream bitwiseOutputStream) throws BitwiseOutputStream.AccessException, CodingException {
        int i2;
        int i3;
        CdmaSmsAddress cdmaSmsAddress = bearerData.callbackNumber;
        encodeCdmaSmsAddress(cdmaSmsAddress);
        if (cdmaSmsAddress.digitMode == 1) {
            i2 = cdmaSmsAddress.numberOfDigits * 8;
            i3 = 16;
        } else {
            i2 = cdmaSmsAddress.numberOfDigits * 4;
            i3 = 9;
        }
        int i4 = i3 + i2;
        int i5 = (i4 / 8) + (i4 % 8 > 0 ? 1 : 0);
        int i6 = (i5 * 8) - i4;
        bitwiseOutputStream.write(8, i5);
        bitwiseOutputStream.write(1, cdmaSmsAddress.digitMode);
        if (cdmaSmsAddress.digitMode == 1) {
            bitwiseOutputStream.write(3, cdmaSmsAddress.ton);
            bitwiseOutputStream.write(4, cdmaSmsAddress.numberPlan);
        }
        bitwiseOutputStream.write(8, cdmaSmsAddress.numberOfDigits);
        bitwiseOutputStream.writeByteArray(i2, cdmaSmsAddress.origBytes);
        if (i6 > 0) {
            bitwiseOutputStream.write(i6, 0);
        }
    }

    private static void encodeCdmaSmsAddress(CdmaSmsAddress cdmaSmsAddress) throws CodingException {
        if (cdmaSmsAddress.digitMode != 1) {
            cdmaSmsAddress.origBytes = encodeDtmfSmsAddress(cdmaSmsAddress.address);
        } else {
            try {
                cdmaSmsAddress.origBytes = cdmaSmsAddress.address.getBytes("US-ASCII");
            } catch (UnsupportedEncodingException unused) {
                throw new CodingException("invalid SMS address, cannot convert to ASCII");
            }
        }
    }

    private static void encodeDisplayMode(BearerData bearerData, BitwiseOutputStream bitwiseOutputStream) throws BitwiseOutputStream.AccessException {
        bitwiseOutputStream.write(8, 1);
        bitwiseOutputStream.write(2, bearerData.displayMode);
        bitwiseOutputStream.skip(6);
    }

    private static byte[] encodeDtmfSmsAddress(String str) {
        int i2;
        int length = str.length();
        int i3 = length * 4;
        byte[] bArr = new byte[(i3 / 8) + (i3 % 8 > 0 ? 1 : 0)];
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
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
            int i5 = i4 / 2;
            bArr[i5] = (byte) ((i2 << (4 - ((i4 % 2) * 4))) | bArr[i5]);
        }
        return bArr;
    }

    private static void encodeEmsUserDataPayload(UserData userData) throws CodingException {
        byte[] byteArray = SmsHeader.toByteArray(userData.userDataHeader);
        if (!userData.msgEncodingSet) {
            try {
                encode7bitEms(userData, byteArray, false);
                return;
            } catch (CodingException unused) {
                encode16bitEms(userData, byteArray);
                return;
            }
        }
        int i2 = userData.msgEncoding;
        if (i2 == 9) {
            encode7bitEms(userData, byteArray, true);
        } else {
            if (i2 != 4) {
                throw new CodingException(c.m(new StringBuilder("unsupported EMS user data encoding ("), userData.msgEncoding, ")"));
            }
            encode16bitEms(userData, byteArray);
        }
    }

    private static void encodeLanguageIndicator(BearerData bearerData, BitwiseOutputStream bitwiseOutputStream) throws BitwiseOutputStream.AccessException {
        bitwiseOutputStream.write(8, 1);
        bitwiseOutputStream.write(8, bearerData.language);
    }

    private static void encodeMessageId(BearerData bearerData, BitwiseOutputStream bitwiseOutputStream) throws BitwiseOutputStream.AccessException {
        bitwiseOutputStream.write(8, 3);
        bitwiseOutputStream.write(4, bearerData.messageType);
        bitwiseOutputStream.write(8, bearerData.messageId >> 8);
        bitwiseOutputStream.write(8, bearerData.messageId);
        bitwiseOutputStream.write(1, bearerData.hasUserDataHeader ? 1 : 0);
        bitwiseOutputStream.skip(3);
    }

    private static void encodeMsgCount(BearerData bearerData, BitwiseOutputStream bitwiseOutputStream) throws BitwiseOutputStream.AccessException {
        bitwiseOutputStream.write(8, 1);
        bitwiseOutputStream.write(8, bearerData.numberOfMessages);
    }

    private static void encodeMsgDeliveryAlert(BearerData bearerData, BitwiseOutputStream bitwiseOutputStream) throws BitwiseOutputStream.AccessException {
        bitwiseOutputStream.write(8, 1);
        bitwiseOutputStream.write(2, bearerData.alert);
        bitwiseOutputStream.skip(6);
    }

    private static void encodeMsgStatus(BearerData bearerData, BitwiseOutputStream bitwiseOutputStream) throws BitwiseOutputStream.AccessException {
        bitwiseOutputStream.write(8, 1);
        bitwiseOutputStream.write(2, bearerData.errorClass);
        bitwiseOutputStream.write(6, bearerData.messageStatus);
    }

    private static void encodePriorityIndicator(BearerData bearerData, BitwiseOutputStream bitwiseOutputStream) throws BitwiseOutputStream.AccessException {
        bitwiseOutputStream.write(8, 1);
        bitwiseOutputStream.write(2, bearerData.priority);
        bitwiseOutputStream.skip(6);
    }

    private static void encodePrivacyIndicator(BearerData bearerData, BitwiseOutputStream bitwiseOutputStream) throws BitwiseOutputStream.AccessException {
        bitwiseOutputStream.write(8, 1);
        bitwiseOutputStream.write(2, bearerData.privacy);
        bitwiseOutputStream.skip(6);
    }

    private static void encodeReplyOption(BearerData bearerData, BitwiseOutputStream bitwiseOutputStream) throws BitwiseOutputStream.AccessException {
        bitwiseOutputStream.write(8, 1);
        bitwiseOutputStream.write(1, bearerData.userAckReq ? 1 : 0);
        bitwiseOutputStream.write(1, bearerData.deliveryAckReq ? 1 : 0);
        bitwiseOutputStream.write(1, bearerData.readAckReq ? 1 : 0);
        bitwiseOutputStream.write(1, bearerData.reportReq ? 1 : 0);
        bitwiseOutputStream.write(4, 0);
    }

    private static void encodeScpResults(BearerData bearerData, BitwiseOutputStream bitwiseOutputStream) throws BitwiseOutputStream.AccessException {
        ArrayList<CdmaSmsCbProgramResults> arrayList = bearerData.serviceCategoryProgramResults;
        bitwiseOutputStream.write(8, arrayList.size() * 4);
        for (CdmaSmsCbProgramResults cdmaSmsCbProgramResults : arrayList) {
            int category = cdmaSmsCbProgramResults.getCategory();
            bitwiseOutputStream.write(8, category >> 8);
            bitwiseOutputStream.write(8, category);
            bitwiseOutputStream.write(8, cdmaSmsCbProgramResults.getLanguage());
            bitwiseOutputStream.write(4, cdmaSmsCbProgramResults.getCategoryResult());
            bitwiseOutputStream.skip(4);
        }
    }

    private static byte[] encodeShiftJis(String str) throws CodingException {
        try {
            return str.getBytes("Shift_JIS");
        } catch (UnsupportedEncodingException e2) {
            throw new CodingException("Shift-JIS encode failed: " + e2);
        }
    }

    private static void encodeUserData(BearerData bearerData, BitwiseOutputStream bitwiseOutputStream) throws BitwiseOutputStream.AccessException, CodingException {
        encodeUserDataPayload(bearerData.userData);
        UserData userData = bearerData.userData;
        bearerData.hasUserDataHeader = userData.userDataHeader != null;
        byte[] bArr = userData.payload;
        if (bArr.length > 140) {
            throw new CodingException(c.m(new StringBuilder("encoded user data too large ("), bearerData.userData.payload.length, " > 140 bytes)"));
        }
        int length = (bArr.length * 8) - userData.paddingBits;
        int i2 = length + 13;
        int i3 = userData.msgEncoding;
        if (i3 == 1 || i3 == 10) {
            i2 += 8;
        }
        int i4 = (i2 / 8) + (i2 % 8 > 0 ? 1 : 0);
        int i5 = (i4 * 8) - i2;
        bitwiseOutputStream.write(8, i4);
        bitwiseOutputStream.write(5, bearerData.userData.msgEncoding);
        UserData userData2 = bearerData.userData;
        int i6 = userData2.msgEncoding;
        if (i6 == 1 || i6 == 10) {
            bitwiseOutputStream.write(8, userData2.msgType);
        }
        bitwiseOutputStream.write(8, bearerData.userData.numFields);
        bitwiseOutputStream.writeByteArray(length, bearerData.userData.payload);
        if (i5 > 0) {
            bitwiseOutputStream.write(i5, 0);
        }
    }

    private static void encodeUserDataPayload(UserData userData) throws CodingException {
        if (userData.payloadStr == null && userData.msgEncoding != 0) {
            Rlog.e(LOG_TAG, "user data with null payloadStr");
            userData.payloadStr = "";
        }
        if (userData.userDataHeader != null) {
            encodeEmsUserDataPayload(userData);
            return;
        }
        if (!userData.msgEncodingSet) {
            try {
                userData.payload = encode7bitAscii(userData.payloadStr, false);
                userData.msgEncoding = 2;
            } catch (CodingException unused) {
                userData.payload = encodeUtf16(userData.payloadStr);
                userData.msgEncoding = 4;
            }
            userData.numFields = userData.payloadStr.length();
            userData.msgEncodingSet = true;
            return;
        }
        if (userData.msgEncoding == 0) {
            byte[] bArr = userData.payload;
            if (bArr != null) {
                userData.numFields = bArr.length;
                return;
            }
            Rlog.e(LOG_TAG, "user data with octet encoding but null payload");
            userData.payload = new byte[0];
            userData.numFields = 0;
            return;
        }
        if (userData.payloadStr == null) {
            Rlog.e(LOG_TAG, "non-octet user data with null payloadStr");
            userData.payloadStr = "";
        }
        int i2 = userData.msgEncoding;
        if (i2 == 9) {
            Gsm7bitCodingResult gsm7bitCodingResultEncode7bitGsm = encode7bitGsm(userData.payloadStr, 0, true);
            userData.payload = gsm7bitCodingResultEncode7bitGsm.data;
            userData.numFields = gsm7bitCodingResultEncode7bitGsm.septets;
        } else if (i2 == 2) {
            userData.payload = encode7bitAscii(userData.payloadStr, true);
            userData.numFields = userData.payloadStr.length();
        } else if (i2 == 4) {
            userData.payload = encodeUtf16(userData.payloadStr);
            userData.numFields = userData.payloadStr.length();
        } else {
            if (i2 != 5) {
                throw new CodingException(c.m(new StringBuilder("unsupported user data encoding ("), userData.msgEncoding, ")"));
            }
            byte[] bArrEncodeShiftJis = encodeShiftJis(userData.payloadStr);
            userData.payload = bArrEncodeShiftJis;
            userData.numFields = bArrEncodeShiftJis.length;
        }
    }

    private static byte[] encodeUtf16(String str) throws CodingException {
        try {
            return str.getBytes("utf-16be");
        } catch (UnsupportedEncodingException e2) {
            throw new CodingException("UTF-16 encode failed: " + e2);
        }
    }

    private static void encodeValidityPeriodRel(BearerData bearerData, BitwiseOutputStream bitwiseOutputStream) throws BitwiseOutputStream.AccessException {
        bitwiseOutputStream.write(8, 1);
        bitwiseOutputStream.write(8, bearerData.validityPeriodRelative);
    }

    private static int getBitsForNumFields(int i2, int i3) throws CodingException {
        if (i2 != 0) {
            switch (i2) {
                case 2:
                case 3:
                case 9:
                    return i3 * 7;
                case 4:
                    return i3 * 16;
                case 5:
                case 6:
                case 7:
                case 8:
                    break;
                default:
                    throw new CodingException("unsupported message encoding (" + i2 + ')');
            }
        }
        return i3 * 8;
    }

    private static String getLanguageCodeForValue(int i2) {
        switch (i2) {
            case 1:
                return "en";
            case 2:
                return "fr";
            case 3:
                return "es";
            case 4:
                return "ja";
            case 5:
                return "ko";
            case 6:
                return "zh";
            case 7:
                return "he";
            default:
                return null;
        }
    }

    private static boolean isCmasAlertCategory(int i2) {
        return i2 >= 4096 && i2 <= 4351;
    }

    private static int serviceCategoryToCmasMessageClass(int i2) {
        switch (i2) {
            case 4096:
                return 0;
            case 4097:
                return 1;
            case 4098:
                return 2;
            case 4099:
                return 3;
            case 4100:
                return 4;
            default:
                return -1;
        }
    }

    public String getLanguage() {
        return getLanguageCodeForValue(this.language);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BearerData ");
        StringBuilder sbM = m.m(m.m(new StringBuilder("{ messageType="), this.messageType, sb, ", messageId="), this.messageId, sb, ", priority=");
        sbM.append(this.priorityIndicatorSet ? Integer.valueOf(this.priority) : "unset");
        sb.append(sbM.toString());
        StringBuilder sb2 = new StringBuilder(", privacy=");
        sb2.append(this.privacyIndicatorSet ? Integer.valueOf(this.privacy) : "unset");
        sb.append(sb2.toString());
        StringBuilder sb3 = new StringBuilder(", alert=");
        sb3.append(this.alertIndicatorSet ? Integer.valueOf(this.alert) : "unset");
        sb.append(sb3.toString());
        StringBuilder sb4 = new StringBuilder(", displayMode=");
        sb4.append(this.displayModeSet ? Integer.valueOf(this.displayMode) : "unset");
        sb.append(sb4.toString());
        StringBuilder sb5 = new StringBuilder(", language=");
        sb5.append(this.languageIndicatorSet ? Integer.valueOf(this.language) : "unset");
        sb.append(sb5.toString());
        StringBuilder sb6 = new StringBuilder(", errorClass=");
        sb6.append(this.messageStatusSet ? Integer.valueOf(this.errorClass) : "unset");
        sb.append(sb6.toString());
        StringBuilder sb7 = new StringBuilder(", msgStatus=");
        sb7.append(this.messageStatusSet ? Integer.valueOf(this.messageStatus) : "unset");
        sb.append(sb7.toString());
        StringBuilder sb8 = new StringBuilder(", msgCenterTimeStamp=");
        Object obj = this.msgCenterTimeStamp;
        if (obj == null) {
            obj = "unset";
        }
        sb8.append(obj);
        sb.append(sb8.toString());
        StringBuilder sb9 = new StringBuilder(", validityPeriodAbsolute=");
        Object obj2 = this.validityPeriodAbsolute;
        if (obj2 == null) {
            obj2 = "unset";
        }
        sb9.append(obj2);
        sb.append(sb9.toString());
        StringBuilder sb10 = new StringBuilder(", validityPeriodRelative=");
        sb10.append(this.validityPeriodRelativeSet ? Integer.valueOf(this.validityPeriodRelative) : "unset");
        sb.append(sb10.toString());
        StringBuilder sb11 = new StringBuilder(", deferredDeliveryTimeAbsolute=");
        Object obj3 = this.deferredDeliveryTimeAbsolute;
        if (obj3 == null) {
            obj3 = "unset";
        }
        sb11.append(obj3);
        sb.append(sb11.toString());
        StringBuilder sb12 = new StringBuilder(", deferredDeliveryTimeRelative=");
        sb12.append(this.deferredDeliveryTimeRelativeSet ? Integer.valueOf(this.deferredDeliveryTimeRelative) : "unset");
        sb.append(sb12.toString());
        sb.append(", userAckReq=" + this.userAckReq);
        sb.append(", deliveryAckReq=" + this.deliveryAckReq);
        sb.append(", readAckReq=" + this.readAckReq);
        sb.append(", reportReq=" + this.reportReq);
        StringBuilder sbM2 = m.m(new StringBuilder(", numberOfMessages="), this.numberOfMessages, sb, ", callbackNumber=");
        sbM2.append(Rlog.pii(LOG_TAG, this.callbackNumber));
        sb.append(sbM2.toString());
        StringBuilder sbM3 = m.m(new StringBuilder(", depositIndex="), this.depositIndex, sb, ", hasUserDataHeader=");
        sbM3.append(this.hasUserDataHeader);
        sb.append(sbM3.toString());
        sb.append(", userData=" + this.userData);
        sb.append(" }");
        return sb.toString();
    }

    public static BearerData decode(byte[] bArr, int i2) {
        boolean zDecodeMessageId;
        try {
            BitwiseInputStream bitwiseInputStream = new BitwiseInputStream(bArr);
            BearerData bearerData = new BearerData();
            int i3 = 0;
            while (bitwiseInputStream.available() > 0) {
                int i4 = bitwiseInputStream.read(8);
                int i5 = 1 << i4;
                if ((i3 & i5) != 0 && i4 >= 0 && i4 <= 23) {
                    throw new CodingException("illegal duplicate subparameter (" + i4 + ")");
                }
                switch (i4) {
                    case 0:
                        zDecodeMessageId = decodeMessageId(bearerData, bitwiseInputStream);
                        break;
                    case 1:
                        zDecodeMessageId = decodeUserData(bearerData, bitwiseInputStream);
                        break;
                    case 2:
                        zDecodeMessageId = decodeUserResponseCode(bearerData, bitwiseInputStream);
                        break;
                    case 3:
                        zDecodeMessageId = decodeMsgCenterTimeStamp(bearerData, bitwiseInputStream);
                        break;
                    case 4:
                        zDecodeMessageId = decodeValidityAbs(bearerData, bitwiseInputStream);
                        break;
                    case 5:
                        zDecodeMessageId = decodeValidityRel(bearerData, bitwiseInputStream);
                        break;
                    case 6:
                        zDecodeMessageId = decodeDeferredDeliveryAbs(bearerData, bitwiseInputStream);
                        break;
                    case 7:
                        zDecodeMessageId = decodeDeferredDeliveryRel(bearerData, bitwiseInputStream);
                        break;
                    case 8:
                        zDecodeMessageId = decodePriorityIndicator(bearerData, bitwiseInputStream);
                        break;
                    case 9:
                        zDecodeMessageId = decodePrivacyIndicator(bearerData, bitwiseInputStream);
                        break;
                    case 10:
                        zDecodeMessageId = decodeReplyOption(bearerData, bitwiseInputStream);
                        break;
                    case 11:
                        zDecodeMessageId = decodeMsgCount(bearerData, bitwiseInputStream);
                        break;
                    case 12:
                        zDecodeMessageId = decodeMsgDeliveryAlert(bearerData, bitwiseInputStream);
                        break;
                    case 13:
                        zDecodeMessageId = decodeLanguageIndicator(bearerData, bitwiseInputStream);
                        break;
                    case 14:
                        zDecodeMessageId = decodeCallbackNumber(bearerData, bitwiseInputStream);
                        break;
                    case 15:
                        zDecodeMessageId = decodeDisplayMode(bearerData, bitwiseInputStream);
                        break;
                    case 16:
                    case 19:
                    default:
                        zDecodeMessageId = decodeReserved(bearerData, bitwiseInputStream, i4);
                        break;
                    case 17:
                        zDecodeMessageId = decodeDepositIndex(bearerData, bitwiseInputStream);
                        break;
                    case 18:
                        zDecodeMessageId = decodeServiceCategoryProgramData(bearerData, bitwiseInputStream);
                        break;
                    case 20:
                        zDecodeMessageId = decodeMsgStatus(bearerData, bitwiseInputStream);
                        break;
                }
                if (zDecodeMessageId && i4 >= 0 && i4 <= 23) {
                    i3 |= i5;
                }
            }
            if ((i3 & 1) == 0) {
                throw new CodingException("missing MESSAGE_IDENTIFIER subparam");
            }
            if (bearerData.userData != null) {
                if (isCmasAlertCategory(i2)) {
                    decodeCmasUserData(bearerData, i2);
                } else {
                    UserData userData = bearerData.userData;
                    if (userData.msgEncoding == 1) {
                        if (((i3 ^ 1) ^ 2) != 0) {
                            Rlog.e(LOG_TAG, "IS-91 must occur without extra subparams (" + i3 + ")");
                        }
                        decodeIs91(bearerData);
                    } else {
                        decodeUserDataPayload(userData, bearerData.hasUserDataHeader);
                    }
                }
            }
            return bearerData;
        } catch (CodingException e2) {
            Rlog.e(LOG_TAG, "BearerData decode failed: " + e2);
            return null;
        } catch (BitwiseInputStream.AccessException e3) {
            Rlog.e(LOG_TAG, "BearerData decode failed: " + e3);
            return null;
        }
    }
}
