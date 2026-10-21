package com.android.internal.telephony.gsm;

import android.accessibilityservice.c;
import android.app.m;
import android.content.Context;
import android.content.res.Resources;
import android.net.wifi.WifiEnterpriseConfig;
import android.provider.Settings;
import android.telephony.PhoneNumberUtils;
import android.telephony.PreciseDisconnectCause;
import android.telephony.Rlog;
import android.text.TextUtils;
import android.text.format.Time;
import com.android.internal.R;
import com.android.internal.telephony.EncodeException;
import com.android.internal.telephony.GsmAlphabet;
import com.android.internal.telephony.GsmAlphabetEx;
import com.android.internal.telephony.Sms7BitEncodingTranslator;
import com.android.internal.telephony.SmsAddress;
import com.android.internal.telephony.SmsConstants;
import com.android.internal.telephony.SmsHeader;
import com.android.internal.telephony.SmsMessageBase;
import com.android.internal.telephony.uicc.IccUtils;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;

/* JADX INFO: loaded from: classes3.dex */
public class SmsMessage extends SmsMessageBase {
    static final String LOG_TAG = "SmsMessage";
    private static final boolean VDBG = false;
    protected static int validity;
    private int mDataCodingScheme;
    private int mMti;
    private int mProtocolIdentifier;
    private GsmSmsAddress mRecipientAddress;
    private int mStatus;
    private SmsConstants.MessageClass messageClass;
    private boolean mReplyPathPresent = false;
    private boolean mIsStatusReportMessage = false;
    private int mVoiceMailCount = 0;

    public static class PduParser {
        byte[] mPdu;
        byte[] mUserData;
        SmsHeader mUserDataHeader;
        int mCur = 0;
        int mUserDataSeptetPadding = 0;

        public PduParser(byte[] bArr) {
            this.mPdu = bArr;
        }

        public int constructUserData(boolean z2, boolean z3) {
            int i2;
            int i3;
            int length;
            int i4 = this.mCur;
            byte[] bArr = this.mPdu;
            int i5 = i4 + 1;
            int i6 = bArr[i4] & 255;
            if (z2) {
                int i7 = i5 + 1;
                int i8 = bArr[i5] & 255;
                byte[] bArr2 = new byte[i8];
                System.arraycopy(bArr, i7, bArr2, 0, i8);
                this.mUserDataHeader = SmsHeader.fromByteArray(bArr2);
                int i9 = i7 + i8;
                int i10 = (i8 + 1) * 8;
                i3 = (i10 / 7) + (i10 % 7 > 0 ? 1 : 0);
                this.mUserDataSeptetPadding = (i3 * 7) - i10;
                i5 = i9;
                i2 = i8;
            } else {
                i2 = 0;
                i3 = 0;
            }
            if (z3) {
                length = this.mPdu.length - i5;
            } else {
                length = i6 - (z2 ? i2 + 1 : 0);
                if (length < 0) {
                    length = 0;
                }
            }
            byte[] bArr3 = new byte[length];
            this.mUserData = bArr3;
            System.arraycopy(this.mPdu, i5, bArr3, 0, bArr3.length);
            this.mCur = i5;
            if (!z3) {
                return this.mUserData.length;
            }
            int i11 = i6 - i3;
            if (i11 < 0) {
                return 0;
            }
            return i11;
        }

        public GsmSmsAddress getAddress() {
            byte[] bArr = this.mPdu;
            int i2 = this.mCur;
            int i3 = (((bArr[i2] & 255) + 1) / 2) + 2;
            try {
                GsmSmsAddress gsmSmsAddress = new GsmSmsAddress(bArr, i2, i3);
                this.mCur += i3;
                return gsmSmsAddress;
            } catch (ParseException e2) {
                throw new RuntimeException(e2.getMessage());
            }
        }

        public int getByte() {
            byte[] bArr = this.mPdu;
            int i2 = this.mCur;
            this.mCur = i2 + 1;
            return bArr[i2] & 255;
        }

        public String getSCAddress() {
            int i2 = getByte();
            String strCalledPartyBCDToString = null;
            if (i2 != 0) {
                try {
                    strCalledPartyBCDToString = PhoneNumberUtils.calledPartyBCDToString(this.mPdu, this.mCur, i2);
                } catch (RuntimeException e2) {
                    Rlog.d(SmsMessage.LOG_TAG, "invalid SC address: ", e2);
                }
            }
            this.mCur += i2;
            return strCalledPartyBCDToString;
        }

        public long getSCTimestampMillis() {
            byte[] bArr = this.mPdu;
            int i2 = this.mCur;
            this.mCur = i2 + 1;
            int iGsmBcdByteToInt = IccUtils.gsmBcdByteToInt(bArr[i2]);
            byte[] bArr2 = this.mPdu;
            int i3 = this.mCur;
            this.mCur = i3 + 1;
            int iGsmBcdByteToInt2 = IccUtils.gsmBcdByteToInt(bArr2[i3]);
            byte[] bArr3 = this.mPdu;
            int i4 = this.mCur;
            this.mCur = i4 + 1;
            int iGsmBcdByteToInt3 = IccUtils.gsmBcdByteToInt(bArr3[i4]);
            byte[] bArr4 = this.mPdu;
            int i5 = this.mCur;
            this.mCur = i5 + 1;
            int iGsmBcdByteToInt4 = IccUtils.gsmBcdByteToInt(bArr4[i5]);
            byte[] bArr5 = this.mPdu;
            int i6 = this.mCur;
            this.mCur = i6 + 1;
            int iGsmBcdByteToInt5 = IccUtils.gsmBcdByteToInt(bArr5[i6]);
            byte[] bArr6 = this.mPdu;
            int i7 = this.mCur;
            this.mCur = i7 + 1;
            int iGsmBcdByteToInt6 = IccUtils.gsmBcdByteToInt(bArr6[i7]);
            byte[] bArr7 = this.mPdu;
            int i8 = this.mCur;
            this.mCur = i8 + 1;
            byte b2 = bArr7[i8];
            int iGsmBcdByteToInt7 = IccUtils.gsmBcdByteToInt((byte) (b2 & (-9)));
            if ((b2 & 8) != 0) {
                iGsmBcdByteToInt7 = -iGsmBcdByteToInt7;
            }
            Time time = new Time(Time.TIMEZONE_UTC);
            time.year = iGsmBcdByteToInt >= 90 ? iGsmBcdByteToInt + PreciseDisconnectCause.ECBM_NOT_SUPPORTED : iGsmBcdByteToInt + 2000;
            time.month = iGsmBcdByteToInt2 - 1;
            time.monthDay = iGsmBcdByteToInt3;
            time.hour = iGsmBcdByteToInt4;
            time.minute = iGsmBcdByteToInt5;
            time.second = iGsmBcdByteToInt6;
            return time.toMillis(true) - ((long) (((iGsmBcdByteToInt7 * 15) * 60) * 1000));
        }

        public byte[] getUserData() {
            return this.mUserData;
        }

        public String getUserDataGSM7Bit(int i2, int i3, int i4) {
            String strGsm7BitPackedToString = GsmAlphabet.gsm7BitPackedToString(this.mPdu, this.mCur, i2, this.mUserDataSeptetPadding, i3, i4);
            this.mCur = m.z(i2, 7, 8, this.mCur);
            return strGsm7BitPackedToString;
        }

        public String getUserDataGSM8bit(int i2) {
            String strGsm8BitUnpackedToString = GsmAlphabet.gsm8BitUnpackedToString(this.mPdu, this.mCur, i2);
            this.mCur += i2;
            return strGsm8BitUnpackedToString;
        }

        public SmsHeader getUserDataHeader() {
            return this.mUserDataHeader;
        }

        public String getUserDataKSC5601(int i2) {
            String str;
            try {
                str = new String(this.mPdu, this.mCur, i2, "KSC5601");
            } catch (UnsupportedEncodingException e2) {
                Rlog.e(SmsMessage.LOG_TAG, "implausible UnsupportedEncodingException", e2);
                str = "";
            }
            this.mCur += i2;
            return str;
        }

        public String getUserDataUCS2(int i2) {
            String str;
            try {
                str = new String(this.mPdu, this.mCur, i2, "utf-16");
            } catch (UnsupportedEncodingException e2) {
                Rlog.e(SmsMessage.LOG_TAG, "implausible UnsupportedEncodingException", e2);
                str = "";
            }
            this.mCur += i2;
            return str;
        }

        public boolean moreDataPresent() {
            return this.mPdu.length > this.mCur;
        }
    }

    public static class SubmitPdu extends SmsMessageBase.SubmitPduBase {
    }

    public static GsmAlphabet.TextEncodingDetails calculateLength(CharSequence charSequence, boolean z2) {
        Resources system = Resources.getSystem();
        String encodeType = GsmAlphabetEx.getEncodeType();
        int i2 = !"".equals(encodeType) ? Integer.parseInt(encodeType) : 0;
        String strTranslate = (z2 && system.getBoolean(R.bool.config_sms_force_7bit_encoding)) ? Sms7BitEncodingTranslator.translate(charSequence) : null;
        if (!TextUtils.isEmpty(strTranslate)) {
            charSequence = strTranslate;
        }
        Rlog.d(LOG_TAG, "calculateLength encodeType = " + encodeType);
        if (i2 == 3) {
            return SmsMessageBase.calcUnicodeEncodingDetails(charSequence);
        }
        GsmAlphabet.TextEncodingDetails textEncodingDetailsCountGsmSeptets = GsmAlphabet.countGsmSeptets(charSequence, z2);
        Rlog.d(LOG_TAG, "calculateLength ted = " + textEncodingDetailsCountGsmSeptets);
        return textEncodingDetailsCountGsmSeptets == null ? SmsMessageBase.calcUnicodeEncodingDetails(charSequence) : textEncodingDetailsCountGsmSeptets;
    }

    public static SmsMessage createFromEfRecord(int i2, byte[] bArr) {
        try {
            SmsMessage smsMessage = new SmsMessage();
            smsMessage.mIndexOnIcc = i2;
            byte b2 = bArr[0];
            if ((b2 & 1) == 0) {
                Rlog.w(LOG_TAG, "SMS parsing failed: Trying to parse a free record");
                return null;
            }
            smsMessage.mStatusOnIcc = b2 & 7;
            int length = bArr.length - 1;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 1, bArr2, 0, length);
            smsMessage.parsePdu(bArr2);
            return smsMessage;
        } catch (RuntimeException e2) {
            Rlog.e(LOG_TAG, "SMS PDU parsing failed: ", e2);
            return null;
        }
    }

    public static SmsMessage createFromPdu(byte[] bArr) {
        try {
            SmsMessage smsMessage = new SmsMessage();
            smsMessage.parsePdu(bArr);
            return smsMessage;
        } catch (OutOfMemoryError e2) {
            Rlog.e(LOG_TAG, "SMS PDU parsing failed with out of memory: ", e2);
            return null;
        } catch (RuntimeException e3) {
            Rlog.e(LOG_TAG, "SMS PDU parsing failed: ", e3);
            return null;
        }
    }

    private static byte[] encodeUCS2(String str, byte[] bArr) throws UnsupportedEncodingException {
        byte[] bytes = str.getBytes("utf-16be");
        if (bArr != null) {
            byte[] bArr2 = new byte[bArr.length + bytes.length + 1];
            bArr2[0] = (byte) bArr.length;
            System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
            System.arraycopy(bytes, 0, bArr2, bArr.length + 1, bytes.length);
            bytes = bArr2;
        }
        byte[] bArr3 = new byte[bytes.length + 1];
        bArr3[0] = (byte) (bytes.length & 255);
        System.arraycopy(bytes, 0, bArr3, 1, bytes.length);
        return bArr3;
    }

    public static byte[] getGsmSctsTime(Time time) {
        byte[] bArr = new byte[7];
        int i2 = time.year;
        bArr[0] = intoBcdEncodeByte(i2 > 2000 ? i2 - 2000 : i2 - 1900);
        bArr[1] = intoBcdEncodeByte(time.month + 1);
        bArr[2] = intoBcdEncodeByte(time.monthDay);
        bArr[3] = intoBcdEncodeByte(time.hour);
        bArr[4] = intoBcdEncodeByte(time.minute);
        bArr[5] = intoBcdEncodeByte(time.second);
        bArr[6] = intoBcdEncodeByte(0);
        return bArr;
    }

    public static byte[] getReceivedPdu(String str, String str2, Time time, int i2) {
        byte[] bArrEncodeUCS2;
        Rlog.d(LOG_TAG, "getReceivedPdu");
        if (str2 != null && str != null) {
            ByteArrayOutputStream receivedPduHead = getReceivedPduHead(str, (byte) 36);
            if (i2 == 0) {
                i2 = 1;
            }
            try {
                try {
                    if (i2 == 1) {
                        bArrEncodeUCS2 = GsmAlphabetEx.stringToGsm7BitPackedWithHeader(str2, null);
                    } else {
                        try {
                            bArrEncodeUCS2 = encodeUCS2(str2, null);
                        } catch (UnsupportedEncodingException e2) {
                            Rlog.e(LOG_TAG, "Implausible UnsupportedEncodingException ", e2);
                            return null;
                        }
                    }
                } catch (EncodeException unused) {
                    bArrEncodeUCS2 = encodeUCS2(str2, null);
                    i2 = 3;
                }
                if (i2 == 1) {
                    if ((bArrEncodeUCS2[0] & 255) > 160) {
                        return null;
                    }
                    receivedPduHead.write(0);
                } else {
                    if ((bArrEncodeUCS2[0] & 255) > 140) {
                        return null;
                    }
                    receivedPduHead.write(11);
                }
                byte[] gsmSctsTime = getGsmSctsTime(time);
                receivedPduHead.write(gsmSctsTime, 0, gsmSctsTime.length);
                receivedPduHead.write(bArrEncodeUCS2, 0, bArrEncodeUCS2.length);
                return receivedPduHead.toByteArray();
            } catch (UnsupportedEncodingException e3) {
                Rlog.e(LOG_TAG, "Implausible UnsupportedEncodingException ", e3);
            }
        }
        return null;
    }

    public static ByteArrayOutputStream getReceivedPduHead(String str, byte b2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(180);
        byteArrayOutputStream.write(b2);
        byte[] bArrNetworkPortionToCalledPartyBCD = PhoneNumberUtils.networkPortionToCalledPartyBCD(str);
        if (bArrNetworkPortionToCalledPartyBCD != null) {
            byteArrayOutputStream.write(((bArrNetworkPortionToCalledPartyBCD.length - 1) * 2) - ((bArrNetworkPortionToCalledPartyBCD[bArrNetworkPortionToCalledPartyBCD.length - 1] & 240) != 240 ? 0 : 1));
            byteArrayOutputStream.write(bArrNetworkPortionToCalledPartyBCD, 0, bArrNetworkPortionToCalledPartyBCD.length);
        } else {
            Rlog.d(LOG_TAG, "Address is invalid format,write empty number");
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(129);
        }
        byteArrayOutputStream.write(0);
        return byteArrayOutputStream;
    }

    public static void getSmsValidity(Context context, int i2) {
        String string;
        int i3;
        if (context != null) {
            string = Settings.Global.getString(context.getContentResolver(), "persist.radio.smstime" + i2);
        } else {
            string = null;
        }
        Rlog.i(LOG_TAG, "getSmsValidity()--->>      validity = " + string + ", subId = " + i2);
        try {
            i3 = Integer.parseInt(string);
        } catch (NumberFormatException e2) {
            Rlog.e(LOG_TAG, "getMmsValidity  Exception : " + e2);
            i3 = -1;
        }
        validity = i3;
    }

    public static SubmitPdu getSubmitPdu(String str, String str2, String str3, boolean z2, byte[] bArr) {
        return getSubmitPdu(str, str2, str3, z2, bArr, 0, 0, 0);
    }

    private static ByteArrayOutputStream getSubmitPduHead(String str, String str2, byte b2, boolean z2, SubmitPdu submitPdu) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(180);
        if (str == null) {
            submitPdu.encodedScAddress = null;
        } else {
            submitPdu.encodedScAddress = PhoneNumberUtils.networkPortionToCalledPartyBCDWithLength(str);
        }
        if (validity != 0) {
            b2 = (byte) (b2 | 16);
            Rlog.i(LOG_TAG, "SmsMessage --> TP-VPF = 0x" + ((int) b2));
        }
        if (z2) {
            b2 = (byte) (b2 | 32);
        }
        byteArrayOutputStream.write(b2);
        byteArrayOutputStream.write(0);
        byte[] bArrNetworkPortionToCalledPartyBCD = PhoneNumberUtils.networkPortionToCalledPartyBCD(str2);
        if (bArrNetworkPortionToCalledPartyBCD == null) {
            return null;
        }
        byteArrayOutputStream.write(((bArrNetworkPortionToCalledPartyBCD.length - 1) * 2) - ((bArrNetworkPortionToCalledPartyBCD[bArrNetworkPortionToCalledPartyBCD.length - 1] & 240) != 240 ? 0 : 1));
        byteArrayOutputStream.write(bArrNetworkPortionToCalledPartyBCD, 0, bArrNetworkPortionToCalledPartyBCD.length);
        byteArrayOutputStream.write(0);
        return byteArrayOutputStream;
    }

    public static int getTPLayerLengthForPDU(String str) {
        return ((str.length() / 2) - Integer.parseInt(str.substring(0, 2), 16)) - 1;
    }

    public static byte intoBcdEncodeByte(int i2) {
        return (byte) (((byte) ((i2 / 10) & 15)) | ((byte) (((i2 % 10) << 4) & 240)));
    }

    public static SmsMessage newFromCDS(byte[] bArr) {
        try {
            SmsMessage smsMessage = new SmsMessage();
            smsMessage.parsePdu(bArr);
            return smsMessage;
        } catch (RuntimeException e2) {
            Rlog.e(LOG_TAG, "CDS SMS PDU parsing failed: ", e2);
            return null;
        }
    }

    public static SmsMessage newFromCMT(byte[] bArr) {
        try {
            SmsMessage smsMessage = new SmsMessage();
            smsMessage.parsePdu(bArr);
            return smsMessage;
        } catch (RuntimeException e2) {
            Rlog.e(LOG_TAG, "SMS PDU parsing failed: ", e2);
            return null;
        }
    }

    private void parsePdu(byte[] bArr) {
        this.mPdu = bArr;
        PduParser pduParser = new PduParser(bArr);
        this.mScAddress = pduParser.getSCAddress();
        int i2 = pduParser.getByte();
        int i3 = i2 & 3;
        this.mMti = i3;
        if (i3 != 0) {
            if (i3 == 1) {
                parseSmsSubmit(pduParser, i2);
                return;
            } else if (i3 == 2) {
                parseSmsStatusReport(pduParser, i2);
                return;
            } else if (i3 != 3) {
                throw new RuntimeException("Unsupported message type");
            }
        }
        parseSmsDeliver(pduParser, i2);
    }

    private void parseSmsDeliver(PduParser pduParser, int i2) {
        this.mReplyPathPresent = (i2 & 128) == 128;
        this.mOriginatingAddress = pduParser.getAddress();
        this.mProtocolIdentifier = pduParser.getByte();
        this.mDataCodingScheme = pduParser.getByte();
        this.mScTimeMillis = pduParser.getSCTimestampMillis();
        parseUserData(pduParser, (i2 & 64) == 64);
    }

    private void parseSmsStatusReport(PduParser pduParser, int i2) {
        this.mIsStatusReportMessage = true;
        this.mMessageRef = pduParser.getByte();
        this.mRecipientAddress = pduParser.getAddress();
        this.mScTimeMillis = pduParser.getSCTimestampMillis();
        pduParser.getSCTimestampMillis();
        this.mStatus = pduParser.getByte();
        if (pduParser.moreDataPresent()) {
            int i3 = pduParser.getByte();
            int i4 = i3;
            while ((i4 & 128) != 0) {
                i4 = pduParser.getByte();
            }
            if ((i3 & 120) == 0) {
                if ((i3 & 1) != 0) {
                    this.mProtocolIdentifier = pduParser.getByte();
                }
                if ((i3 & 2) != 0) {
                    this.mDataCodingScheme = pduParser.getByte();
                }
                if ((i3 & 4) != 0) {
                    parseUserData(pduParser, (i2 & 64) == 64);
                }
            }
        }
    }

    private void parseSmsSubmit(PduParser pduParser, int i2) {
        int i3;
        this.mReplyPathPresent = (i2 & 128) == 128;
        this.mMessageRef = pduParser.getByte();
        this.mRecipientAddress = pduParser.getAddress();
        this.mProtocolIdentifier = pduParser.getByte();
        this.mDataCodingScheme = pduParser.getByte();
        int i4 = (i2 >> 3) & 3;
        if (i4 == 0) {
            i3 = 0;
        } else {
            i3 = 2 == i4 ? 1 : 7;
        }
        while (true) {
            int i5 = i3 - 1;
            if (i3 <= 0) {
                break;
            }
            pduParser.getByte();
            i3 = i5;
        }
        parseUserData(pduParser, (i2 & 64) == 64);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0059  */
    /* JADX WARN: Instruction removed from duplicated block: B:24:0x0059, please report this as an issue */
    private void parseUserData(PduParser pduParser, boolean z2) {
        char c;
        int i2 = this.mDataCodingScheme;
        int i3 = 208;
        char c2 = 2;
        int i4 = 128;
        if ((i2 & 128) == 0) {
            boolean z3 = (i2 & 32) != 0;
            c = (i2 & 16) != 0 ? (char) 1 : (char) 0;
            if (z3) {
                Rlog.w(LOG_TAG, "4 - Unsupported SMS data coding scheme (compression) " + (this.mDataCodingScheme & 255));
            } else {
                int i5 = (i2 >> 2) & 3;
                if (i5 == 0) {
                    c2 = 1;
                } else if (i5 != 1) {
                    if (i5 == 2) {
                        c2 = 3;
                    } else if (i5 == 3) {
                        Rlog.w(LOG_TAG, "1 - Unsupported SMS data coding scheme " + (this.mDataCodingScheme & 255));
                    }
                } else if (!Resources.getSystem().getBoolean(R.bool.config_sms_decode_gsm_8bit_data)) {
                    Rlog.w(LOG_TAG, "1 - Unsupported SMS data coding scheme " + (this.mDataCodingScheme & 255));
                }
            }
            c2 = 0;
        } else if ((i2 & 240) != 240) {
            if ((i2 & 240) == 192 || (i2 & 240) == 208 || (i2 & 240) == 224) {
                char c3 = (i2 & 240) != 224 ? (char) 1 : (char) 3;
                boolean z4 = (i2 & 8) == 8;
                if ((i2 & 3) == 0) {
                    this.mIsMwi = true;
                    this.mMwiSense = z4;
                    this.mMwiDontStore = (i2 & 240) == 192;
                    if (z4) {
                        this.mVoiceMailCount = -1;
                    } else {
                        this.mVoiceMailCount = 0;
                    }
                    Rlog.w(LOG_TAG, "MWI in DCS for Vmail. DCS = " + (this.mDataCodingScheme & 255) + " Dont store = " + this.mMwiDontStore + " vmail count = " + this.mVoiceMailCount);
                } else {
                    this.mIsMwi = false;
                    Rlog.w(LOG_TAG, "MWI in DCS for fax/email/other: " + (this.mDataCodingScheme & 255));
                }
                c2 = c3;
            } else {
                if ((i2 & 192) != 128) {
                    Rlog.w(LOG_TAG, "3 - Unsupported SMS data coding scheme " + (this.mDataCodingScheme & 255));
                } else if (i2 == 132) {
                    c2 = 4;
                } else {
                    Rlog.w(LOG_TAG, "5 - Unsupported SMS data coding scheme " + (this.mDataCodingScheme & 255));
                }
                c2 = 0;
                c = c2;
            }
            c = 0;
        } else if ((i2 & 4) == 0) {
            c2 = 1;
            c = c2;
        } else {
            c = 1;
        }
        int iConstructUserData = pduParser.constructUserData(z2, c2 == 1);
        this.mUserData = pduParser.getUserData();
        SmsHeader userDataHeader = pduParser.getUserDataHeader();
        this.mUserDataHeader = userDataHeader;
        if (z2 && userDataHeader.specialSmsMsgList.size() != 0) {
            for (SmsHeader.SpecialSmsMsg specialSmsMsg : this.mUserDataHeader.specialSmsMsgList) {
                int i6 = specialSmsMsg.msgIndType & 255;
                if (i6 == 0 || i6 == i4) {
                    this.mIsMwi = true;
                    if (i6 == i4) {
                        this.mMwiDontStore = false;
                    } else if (!this.mMwiDontStore) {
                        int i7 = this.mDataCodingScheme;
                        if (((i7 & 240) != i3 && (i7 & 240) != 224) || (i7 & 3) != 0) {
                            this.mMwiDontStore = true;
                        }
                    }
                    int i8 = specialSmsMsg.msgCount & 255;
                    this.mVoiceMailCount = i8;
                    if (i8 > 0) {
                        this.mMwiSense = true;
                    } else {
                        this.mMwiSense = false;
                    }
                    StringBuilder sbS = c.s("MWI in TP-UDH for Vmail. Msg Ind = ", i6, " Dont store = ");
                    sbS.append(this.mMwiDontStore);
                    sbS.append(" Vmail count = ");
                    sbS.append(this.mVoiceMailCount);
                    Rlog.w(LOG_TAG, sbS.toString());
                } else {
                    Rlog.w(LOG_TAG, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = " + i6);
                }
                i3 = 208;
                i4 = 128;
            }
        }
        if (c2 == 0) {
            this.mMessageBody = null;
        } else if (c2 == 1) {
            this.mMessageBody = pduParser.getUserDataGSM7Bit(iConstructUserData, z2 ? this.mUserDataHeader.languageTable : 0, z2 ? this.mUserDataHeader.languageShiftTable : 0);
        } else if (c2 != 2) {
            if (c2 == 3) {
                this.mMessageBody = pduParser.getUserDataUCS2(iConstructUserData);
            } else if (c2 == 4) {
                this.mMessageBody = pduParser.getUserDataKSC5601(iConstructUserData);
            }
        } else if (Resources.getSystem().getBoolean(R.bool.config_sms_decode_gsm_8bit_data)) {
            SmsHeader smsHeader = this.mUserDataHeader;
            if (smsHeader == null || smsHeader.portAddrs == null) {
                this.mMessageBody = pduParser.getUserDataGSM8bit(iConstructUserData);
                Rlog.d(LOG_TAG, "SMS message ENCODING_8BIT mMessageBody != null.");
            } else {
                this.mMessageBody = null;
                Rlog.d(LOG_TAG, "SMS message ENCODING_8BIT mMessageBody = null.");
            }
        } else {
            Rlog.d(LOG_TAG, "SMS message ENCODING_8BIT mMessageBody = null.");
            this.mMessageBody = null;
        }
        if (this.mMessageBody != null) {
            parseMessageBody();
        }
        if (c == 0) {
            this.messageClass = SmsConstants.MessageClass.UNKNOWN;
            return;
        }
        int i9 = this.mDataCodingScheme & 3;
        if (i9 == 0) {
            this.messageClass = SmsConstants.MessageClass.CLASS_0;
            return;
        }
        if (i9 == 1) {
            this.messageClass = SmsConstants.MessageClass.CLASS_1;
        } else if (i9 == 2) {
            this.messageClass = SmsConstants.MessageClass.CLASS_2;
        } else {
            if (i9 != 3) {
                return;
            }
            this.messageClass = SmsConstants.MessageClass.CLASS_3;
        }
    }

    public int getDataCodingScheme() {
        return this.mDataCodingScheme;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public SmsConstants.MessageClass getMessageClass() {
        return this.messageClass;
    }

    public int getNumOfVoicemails() {
        if (!this.mIsMwi && isCphsMwiMessage()) {
            SmsAddress smsAddress = this.mOriginatingAddress;
            if (smsAddress == null || !((GsmSmsAddress) smsAddress).isCphsVoiceMessageSet()) {
                this.mVoiceMailCount = 0;
            } else {
                this.mVoiceMailCount = 255;
            }
            Rlog.v(LOG_TAG, "CPHS voice mail message");
        }
        return this.mVoiceMailCount;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public int getProtocolIdentifier() {
        return this.mProtocolIdentifier;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public int getStatus() {
        return this.mStatus;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public boolean isCphsMwiMessage() {
        return ((GsmSmsAddress) this.mOriginatingAddress).isCphsVoiceMessageClear() || ((GsmSmsAddress) this.mOriginatingAddress).isCphsVoiceMessageSet();
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public boolean isMWIClearMessage() {
        if (this.mIsMwi && !this.mMwiSense) {
            return true;
        }
        SmsAddress smsAddress = this.mOriginatingAddress;
        return smsAddress != null && ((GsmSmsAddress) smsAddress).isCphsVoiceMessageClear();
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public boolean isMWISetMessage() {
        if (this.mIsMwi && this.mMwiSense) {
            return true;
        }
        SmsAddress smsAddress = this.mOriginatingAddress;
        return smsAddress != null && ((GsmSmsAddress) smsAddress).isCphsVoiceMessageSet();
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public boolean isMwiDontStore() {
        if (this.mIsMwi && this.mMwiDontStore) {
            return true;
        }
        return isCphsMwiMessage() && WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER.equals(getMessageBody());
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public boolean isReplace() {
        int i2 = this.mProtocolIdentifier;
        return (i2 & 192) == 64 && (i2 & 63) > 0 && (i2 & 63) < 8;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public boolean isReplyPathPresent() {
        return this.mReplyPathPresent;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public boolean isStatusReportMessage() {
        return this.mIsStatusReportMessage;
    }

    public boolean isTypeZero() {
        return this.mProtocolIdentifier == 64;
    }

    public boolean isUsimDataDownload() {
        int i2;
        return this.messageClass == SmsConstants.MessageClass.CLASS_2 && ((i2 = this.mProtocolIdentifier) == 127 || i2 == 124);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0091  */
    public static SubmitPdu getSubmitPdu(String str, String str2, String str3, boolean z2, byte[] bArr, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        byte[] byteArray;
        byte[] bArrEncodeUCS2;
        int i9 = i2;
        if (str3 != null && str2 != null) {
            Rlog.i(LOG_TAG, "getSubmitPdu");
            if (i9 == 0 || i9 == 1) {
                if (i9 == 1) {
                    GsmAlphabet.TextEncodingDetails textEncodingDetailsCalculateLength = calculateLength(str3, true);
                    i7 = textEncodingDetailsCalculateLength.codeUnitSize;
                    i5 = textEncodingDetailsCalculateLength.languageTable;
                    i8 = textEncodingDetailsCalculateLength.languageShiftTable;
                } else {
                    if (i9 == 0) {
                        GsmAlphabet.TextEncodingDetails textEncodingDetailsCalculateLength2 = calculateLength(str3, false);
                        i7 = textEncodingDetailsCalculateLength2.codeUnitSize;
                        i5 = textEncodingDetailsCalculateLength2.languageTable;
                        i8 = textEncodingDetailsCalculateLength2.languageShiftTable;
                    } else {
                        i5 = i3;
                        i6 = i4;
                    }
                    if (i9 == 1 || (i5 == 0 && i6 == 0)) {
                        byteArray = bArr;
                    } else if (bArr != null) {
                        SmsHeader smsHeaderFromByteArray = SmsHeader.fromByteArray(bArr);
                        if (smsHeaderFromByteArray.languageTable == i5 && smsHeaderFromByteArray.languageShiftTable == i6) {
                            byteArray = bArr;
                        } else {
                            StringBuilder sb = new StringBuilder("Updating language table in SMS header: ");
                            m.u(sb, smsHeaderFromByteArray.languageTable, " -> ", i5, ", ");
                            sb.append(smsHeaderFromByteArray.languageShiftTable);
                            sb.append(" -> ");
                            sb.append(i6);
                            Rlog.w(LOG_TAG, sb.toString());
                            smsHeaderFromByteArray.languageTable = i5;
                            smsHeaderFromByteArray.languageShiftTable = i6;
                            byteArray = SmsHeader.toByteArray(smsHeaderFromByteArray);
                        }
                    } else {
                        SmsHeader smsHeader = new SmsHeader();
                        smsHeader.languageTable = i5;
                        smsHeader.languageShiftTable = i6;
                        byteArray = SmsHeader.toByteArray(smsHeader);
                    }
                }
                int i10 = i7;
                i6 = i8;
                i9 = i10;
                if (i9 == 1) {
                    byteArray = bArr;
                } else {
                    byteArray = bArr;
                }
            } else {
                byteArray = bArr;
                i5 = i3;
                i6 = i4;
            }
            SubmitPdu submitPdu = new SubmitPdu();
            ByteArrayOutputStream submitPduHead = getSubmitPduHead(str, str2, (byte) ((byteArray != null ? 64 : 0) | 1), z2, submitPdu);
            if (submitPduHead == null) {
                return submitPdu;
            }
            Rlog.i(LOG_TAG, "getSubmitPdu: encoding = " + i9);
            try {
                try {
                    if (i9 == 1) {
                        bArrEncodeUCS2 = GsmAlphabetEx.stringToGsm7BitPackedWithHeader(str3, byteArray, i5, i6);
                    } else {
                        try {
                            bArrEncodeUCS2 = encodeUCS2(str3, byteArray);
                        } catch (UnsupportedEncodingException e2) {
                            Rlog.e(LOG_TAG, "Implausible UnsupportedEncodingException ", e2);
                            return null;
                        }
                    }
                } catch (UnsupportedEncodingException e3) {
                    Rlog.e(LOG_TAG, "Implausible UnsupportedEncodingException ", e3);
                }
            } catch (EncodeException unused) {
                bArrEncodeUCS2 = encodeUCS2(str3, byteArray);
                i9 = 3;
            }
            if (i9 == 1) {
                if ((bArrEncodeUCS2[0] & 255) > 160) {
                    Rlog.e(LOG_TAG, "Message too long (" + (bArrEncodeUCS2[0] & 255) + " septets)");
                    return null;
                }
                submitPduHead.write(0);
            } else {
                if ((bArrEncodeUCS2[0] & 255) > 140) {
                    Rlog.e(LOG_TAG, "Message too long (" + (bArrEncodeUCS2[0] & 255) + " bytes)");
                    return null;
                }
                submitPduHead.write(8);
            }
            int i11 = validity;
            if (i11 != 0) {
                submitPduHead.write(i11);
                Rlog.i(LOG_TAG, "SmsMessage --> write into TP-VP:" + validity);
            }
            submitPduHead.write(bArrEncodeUCS2, 0, bArrEncodeUCS2.length);
            submitPdu.encodedMessage = submitPduHead.toByteArray();
            return submitPdu;
        }
        return null;
    }

    public static SmsMessage newFromCDS(String str) {
        try {
            SmsMessage smsMessage = new SmsMessage();
            smsMessage.parsePdu(IccUtils.hexStringToBytes(str));
            return smsMessage;
        } catch (RuntimeException e2) {
            Rlog.e(LOG_TAG, "CDS SMS PDU parsing failed: ", e2);
            return null;
        }
    }

    public static byte[] getReceivedPdu(String str, String str2, Time time) {
        return getReceivedPdu(str, str2, time, 0);
    }

    public static SubmitPdu getSubmitPdu(String str, String str2, String str3, boolean z2) {
        return getSubmitPdu(str, str2, str3, z2, (byte[]) null);
    }

    public static SubmitPdu getSubmitPdu(String str, String str2, int i2, byte[] bArr, boolean z2) {
        SmsHeader.PortAddrs portAddrs = new SmsHeader.PortAddrs();
        portAddrs.destPort = i2;
        portAddrs.origPort = 0;
        portAddrs.areEightBits = false;
        SmsHeader smsHeader = new SmsHeader();
        smsHeader.portAddrs = portAddrs;
        byte[] byteArray = SmsHeader.toByteArray(smsHeader);
        if (bArr.length + byteArray.length + 1 > 140) {
            StringBuilder sb = new StringBuilder("SMS data message may only contain ");
            sb.append((140 - byteArray.length) - 1);
            sb.append(" bytes");
            Rlog.e(LOG_TAG, sb.toString());
            return null;
        }
        SubmitPdu submitPdu = new SubmitPdu();
        ByteArrayOutputStream submitPduHead = getSubmitPduHead(str, str2, (byte) 65, z2, submitPdu);
        if (submitPduHead == null) {
            return submitPdu;
        }
        submitPduHead.write(4);
        int i3 = validity;
        if (i3 != 0) {
            submitPduHead.write(i3);
            Rlog.i(LOG_TAG, "SmsMessage --> write into TP-VP:" + validity);
        }
        submitPduHead.write(bArr.length + byteArray.length + 1);
        submitPduHead.write(byteArray.length);
        submitPduHead.write(byteArray, 0, byteArray.length);
        submitPduHead.write(bArr, 0, bArr.length);
        submitPdu.encodedMessage = submitPduHead.toByteArray();
        return submitPdu;
    }
}
