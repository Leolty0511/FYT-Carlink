package android.telephony;

import android.accessibilityservice.c;
import android.content.res.Resources;
import android.os.Binder;
import android.os.Parcel;
import android.text.TextUtils;
import com.android.internal.R;
import com.android.internal.telephony.GsmAlphabet;
import com.android.internal.telephony.GsmAlphabetEx;
import com.android.internal.telephony.Sms7BitEncodingTranslator;
import com.android.internal.telephony.SmsConstants;
import com.android.internal.telephony.SmsHeader;
import com.android.internal.telephony.SmsMessageBase;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SmsMessage {
    public static final int ENCODING_16BIT = 3;
    public static final int ENCODING_7BIT = 1;
    public static final int ENCODING_8BIT = 2;
    public static final int ENCODING_KSC5601 = 4;
    public static final int ENCODING_UNKNOWN = 0;
    public static final String FORMAT_3GPP = "3gpp";
    public static final String FORMAT_3GPP2 = "3gpp2";
    private static final String LOG_TAG = "SmsMessage";
    public static final int MAX_USER_DATA_BYTES = 140;
    public static final int MAX_USER_DATA_BYTES_WITH_HEADER = 134;
    public static final int MAX_USER_DATA_SEPTETS = 160;
    public static final int MAX_USER_DATA_SEPTETS_WITH_HEADER = 153;
    private static boolean mIsNoEmsSupportConfigListLoaded = false;
    private static NoEmsSupportConfig[] mNoEmsSupportConfigList;
    private int mSubId = 0;
    public SmsMessageBase mWrappedSmsMessage;

    /* JADX INFO: renamed from: android.telephony.SmsMessage$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass;

        static {
            int[] iArr = new int[SmsConstants.MessageClass.values().length];
            $SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass = iArr;
            try {
                iArr[SmsConstants.MessageClass.CLASS_0.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass[SmsConstants.MessageClass.CLASS_1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass[SmsConstants.MessageClass.CLASS_2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass[SmsConstants.MessageClass.CLASS_3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum MessageClass {
        UNKNOWN,
        CLASS_0,
        CLASS_1,
        CLASS_2,
        CLASS_3
    }

    public static class NoEmsSupportConfig {
        String mGid1;
        boolean mIsPrefix;
        String mOperatorNumber;

        public NoEmsSupportConfig(String[] strArr) {
            this.mOperatorNumber = strArr[0];
            this.mIsPrefix = "prefix".equals(strArr[1]);
            this.mGid1 = strArr.length > 2 ? strArr[2] : null;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("NoEmsSupportConfig { mOperatorNumber = ");
            sb.append(this.mOperatorNumber);
            sb.append(", mIsPrefix = ");
            sb.append(this.mIsPrefix);
            sb.append(", mGid1 = ");
            return c.n(sb, this.mGid1, " }");
        }
    }

    public static class SubmitPdu {
        public byte[] encodedMessage;
        public byte[] encodedScAddress;

        public SubmitPdu(SmsMessageBase.SubmitPduBase submitPduBase) {
            this.encodedMessage = submitPduBase.encodedMessage;
            this.encodedScAddress = submitPduBase.encodedScAddress;
        }

        public String toString() {
            return "SubmitPdu: encodedScAddress = " + Arrays.toString(this.encodedScAddress) + ", encodedMessage = " + Arrays.toString(this.encodedMessage);
        }
    }

    public SmsMessage(SmsMessageBase smsMessageBase) {
        this.mWrappedSmsMessage = smsMessageBase;
    }

    public static int[] calculateLength(CharSequence charSequence, boolean z2) {
        GsmAlphabet.TextEncodingDetails textEncodingDetailsCalculateLength = useCdmaFormatForMoSms() ? com.android.internal.telephony.cdma.SmsMessage.calculateLength(charSequence, z2, true) : com.android.internal.telephony.gsm.SmsMessage.calculateLength(charSequence, z2);
        return new int[]{textEncodingDetailsCalculateLength.msgCount, textEncodingDetailsCalculateLength.codeUnitCount, textEncodingDetailsCalculateLength.codeUnitsRemaining, textEncodingDetailsCalculateLength.codeUnitSize};
    }

    public static SmsMessage createFromEfRecord(int i2, byte[] bArr) {
        SmsMessageBase smsMessageBaseCreateFromEfRecord = isCdmaVoice() ? com.android.internal.telephony.cdma.SmsMessage.createFromEfRecord(i2, bArr) : com.android.internal.telephony.gsm.SmsMessage.createFromEfRecord(i2, bArr);
        if (smsMessageBaseCreateFromEfRecord != null) {
            return new SmsMessage(smsMessageBaseCreateFromEfRecord);
        }
        Rlog.e(LOG_TAG, "createFromEfRecord(): wrappedMessage is null");
        return null;
    }

    @Deprecated
    public static SmsMessage createFromPdu(byte[] bArr) {
        int currentPhoneType = TelephonyManager.getDefault().getCurrentPhoneType();
        SmsMessage smsMessageCreateFromPdu = createFromPdu(bArr, 2 == currentPhoneType ? "3gpp2" : "3gpp");
        if (smsMessageCreateFromPdu == null || smsMessageCreateFromPdu.mWrappedSmsMessage == null) {
            return createFromPdu(bArr, 2 == currentPhoneType ? "3gpp" : "3gpp2");
        }
        return smsMessageCreateFromPdu;
    }

    public static ArrayList<String> fragmentText(String str) {
        int i2;
        int iFindNextUnicodePosition;
        int i3;
        String encodeType = GsmAlphabetEx.getEncodeType();
        int i4 = 0;
        boolean z2 = (!"".equals(encodeType) ? Integer.parseInt(encodeType) : 0) == 1;
        GsmAlphabet.TextEncodingDetails textEncodingDetailsCalculateLength = useCdmaFormatForMoSms() ? com.android.internal.telephony.cdma.SmsMessage.calculateLength(str, false, true) : com.android.internal.telephony.gsm.SmsMessage.calculateLength(str, z2);
        if (textEncodingDetailsCalculateLength.codeUnitSize == 1) {
            int i5 = textEncodingDetailsCalculateLength.languageTable;
            if (i5 == 0 || textEncodingDetailsCalculateLength.languageShiftTable == 0) {
                i3 = (i5 == 0 && textEncodingDetailsCalculateLength.languageShiftTable == 0) ? 0 : 4;
            } else {
                i3 = 7;
            }
            if (textEncodingDetailsCalculateLength.msgCount > 1) {
                i3 += 6;
            }
            if (i3 != 0) {
                i3++;
            }
            i2 = 160 - i3;
        } else if (textEncodingDetailsCalculateLength.msgCount > 1) {
            i2 = (hasEmsSupport() || textEncodingDetailsCalculateLength.msgCount >= 10) ? 134 : 132;
        } else {
            i2 = 140;
        }
        String strTranslate = (z2 && Resources.getSystem().getBoolean(R.bool.config_sms_force_7bit_encoding)) ? Sms7BitEncodingTranslator.translate(str) : null;
        if (!TextUtils.isEmpty(strTranslate)) {
            str = strTranslate;
        }
        int length = str.length();
        ArrayList<String> arrayList = new ArrayList<>(textEncodingDetailsCalculateLength.msgCount);
        while (i4 < length) {
            if (textEncodingDetailsCalculateLength.codeUnitSize == 1) {
                iFindNextUnicodePosition = (useCdmaFormatForMoSms() && textEncodingDetailsCalculateLength.msgCount == 1) ? Math.min(i2, length - i4) + i4 : GsmAlphabet.findGsmSeptetLimitIndex(str, i4, i2, textEncodingDetailsCalculateLength.languageTable, textEncodingDetailsCalculateLength.languageShiftTable);
            } else {
                iFindNextUnicodePosition = SmsMessageBase.findNextUnicodePosition(i4, i2, str);
            }
            if (iFindNextUnicodePosition <= i4 || iFindNextUnicodePosition > length) {
                StringBuilder sbT = c.t("fragmentText failed (", i4, " >= ", iFindNextUnicodePosition, " or ");
                sbT.append(iFindNextUnicodePosition);
                sbT.append(" >= ");
                sbT.append(length);
                sbT.append(")");
                Rlog.e(LOG_TAG, sbT.toString());
                break;
            }
            arrayList.add(str.substring(i4, iFindNextUnicodePosition));
            i4 = iFindNextUnicodePosition;
        }
        return arrayList;
    }

    public static SubmitPdu getSubmitPdu(String str, String str2, String str3, boolean z2) {
        return getSubmitPdu(str, str2, str3, z2, SubscriptionManager.getDefaultSmsSubscriptionId());
    }

    public static int getTPLayerLengthForPDU(String str) {
        return isCdmaVoice() ? com.android.internal.telephony.cdma.SmsMessage.getTPLayerLengthForPDU(str) : com.android.internal.telephony.gsm.SmsMessage.getTPLayerLengthForPDU(str);
    }

    public static boolean hasEmsSupport() {
        if (!isNoEmsSupportConfigListExisted()) {
            return true;
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            String simOperatorNumeric = TelephonyManager.getDefault().getSimOperatorNumeric();
            String groupIdLevel1 = TelephonyManager.getDefault().getGroupIdLevel1();
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            if (!TextUtils.isEmpty(simOperatorNumeric)) {
                for (NoEmsSupportConfig noEmsSupportConfig : mNoEmsSupportConfigList) {
                    if (simOperatorNumeric.startsWith(noEmsSupportConfig.mOperatorNumber) && (TextUtils.isEmpty(noEmsSupportConfig.mGid1) || (!TextUtils.isEmpty(noEmsSupportConfig.mGid1) && noEmsSupportConfig.mGid1.equalsIgnoreCase(groupIdLevel1)))) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            throw th;
        }
    }

    private static boolean isCdmaVoice() {
        return isCdmaVoice(SubscriptionManager.getDefaultSmsSubscriptionId());
    }

    private static boolean isNoEmsSupportConfigListExisted() {
        Resources system;
        if (!mIsNoEmsSupportConfigListLoaded && (system = Resources.getSystem()) != null) {
            String[] stringArray = system.getStringArray(R.array.no_ems_support_sim_operators);
            if (stringArray != null && stringArray.length > 0) {
                mNoEmsSupportConfigList = new NoEmsSupportConfig[stringArray.length];
                for (int i2 = 0; i2 < stringArray.length; i2++) {
                    mNoEmsSupportConfigList[i2] = new NoEmsSupportConfig(stringArray[i2].split(";"));
                }
            }
            mIsNoEmsSupportConfigListLoaded = true;
        }
        NoEmsSupportConfig[] noEmsSupportConfigArr = mNoEmsSupportConfigList;
        return (noEmsSupportConfigArr == null || noEmsSupportConfigArr.length == 0) ? false : true;
    }

    public static SmsMessage newFromCMT(byte[] bArr) {
        com.android.internal.telephony.gsm.SmsMessage smsMessageNewFromCMT = com.android.internal.telephony.gsm.SmsMessage.newFromCMT(bArr);
        if (smsMessageNewFromCMT != null) {
            return new SmsMessage(smsMessageNewFromCMT);
        }
        Rlog.e(LOG_TAG, "newFromCMT(): wrappedMessage is null");
        return null;
    }

    public static SmsMessage newFromParcel(Parcel parcel) {
        return new SmsMessage(com.android.internal.telephony.cdma.SmsMessage.newFromParcel(parcel));
    }

    public static boolean shouldAppendPageNumberAsPrefix() {
        if (!isNoEmsSupportConfigListExisted()) {
            return false;
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            String simOperatorNumeric = TelephonyManager.getDefault().getSimOperatorNumeric();
            String groupIdLevel1 = TelephonyManager.getDefault().getGroupIdLevel1();
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            for (NoEmsSupportConfig noEmsSupportConfig : mNoEmsSupportConfigList) {
                if (simOperatorNumeric.startsWith(noEmsSupportConfig.mOperatorNumber) && (TextUtils.isEmpty(noEmsSupportConfig.mGid1) || (!TextUtils.isEmpty(noEmsSupportConfig.mGid1) && noEmsSupportConfig.mGid1.equalsIgnoreCase(groupIdLevel1)))) {
                    return noEmsSupportConfig.mIsPrefix;
                }
            }
            return false;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            throw th;
        }
    }

    private static boolean useCdmaFormatForMoSms() {
        return useCdmaFormatForMoSms(SubscriptionManager.getDefaultSmsSubscriptionId());
    }

    public String getDisplayMessageBody() {
        return this.mWrappedSmsMessage.getDisplayMessageBody();
    }

    public String getDisplayOriginatingAddress() {
        return this.mWrappedSmsMessage.getDisplayOriginatingAddress();
    }

    public String getEmailBody() {
        return this.mWrappedSmsMessage.getEmailBody();
    }

    public String getEmailFrom() {
        return this.mWrappedSmsMessage.getEmailFrom();
    }

    public int getIndexOnIcc() {
        return this.mWrappedSmsMessage.getIndexOnIcc();
    }

    @Deprecated
    public int getIndexOnSim() {
        return this.mWrappedSmsMessage.getIndexOnIcc();
    }

    public String getMessageBody() {
        return this.mWrappedSmsMessage.getMessageBody();
    }

    public MessageClass getMessageClass() {
        int i2 = AnonymousClass1.$SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass[this.mWrappedSmsMessage.getMessageClass().ordinal()];
        if (i2 == 1) {
            return MessageClass.CLASS_0;
        }
        if (i2 == 2) {
            return MessageClass.CLASS_1;
        }
        if (i2 != 3) {
            return i2 != 4 ? MessageClass.UNKNOWN : MessageClass.CLASS_3;
        }
        return MessageClass.CLASS_2;
    }

    public String getOriginatingAddress() {
        return this.mWrappedSmsMessage.getOriginatingAddress();
    }

    public byte[] getPdu() {
        return this.mWrappedSmsMessage.getPdu();
    }

    public int getProtocolIdentifier() {
        return this.mWrappedSmsMessage.getProtocolIdentifier();
    }

    public String getPseudoSubject() {
        return this.mWrappedSmsMessage.getPseudoSubject();
    }

    public String getServiceCenterAddress() {
        return this.mWrappedSmsMessage.getServiceCenterAddress();
    }

    public int getStatus() {
        return this.mWrappedSmsMessage.getStatus();
    }

    public int getStatusOnIcc() {
        return this.mWrappedSmsMessage.getStatusOnIcc();
    }

    @Deprecated
    public int getStatusOnSim() {
        return this.mWrappedSmsMessage.getStatusOnIcc();
    }

    public int getSubId() {
        return this.mSubId;
    }

    public long getTimestampMillis() {
        return this.mWrappedSmsMessage.getTimestampMillis();
    }

    public byte[] getUserData() {
        return this.mWrappedSmsMessage.getUserData();
    }

    public boolean isCphsMwiMessage() {
        return this.mWrappedSmsMessage.isCphsMwiMessage();
    }

    public boolean isEmail() {
        return this.mWrappedSmsMessage.isEmail();
    }

    public boolean isMWIClearMessage() {
        return this.mWrappedSmsMessage.isMWIClearMessage();
    }

    public boolean isMWISetMessage() {
        return this.mWrappedSmsMessage.isMWISetMessage();
    }

    public boolean isMwiDontStore() {
        return this.mWrappedSmsMessage.isMwiDontStore();
    }

    public boolean isReplace() {
        return this.mWrappedSmsMessage.isReplace();
    }

    public boolean isReplyPathPresent() {
        return this.mWrappedSmsMessage.isReplyPathPresent();
    }

    public boolean isStatusReportMessage() {
        return this.mWrappedSmsMessage.isStatusReportMessage();
    }

    public void setSubId(int i2) {
        this.mSubId = i2;
    }

    private static boolean isCdmaVoice(int i2) {
        return 2 == TelephonyManager.getDefault().getCurrentPhoneType(i2);
    }

    private static boolean useCdmaFormatForMoSms(int i2) {
        SmsManager smsManagerForSubscriptionId = SmsManager.getSmsManagerForSubscriptionId(i2);
        return !smsManagerForSubscriptionId.isImsSmsSupported() ? isCdmaVoice(i2) : "3gpp2".equals(smsManagerForSubscriptionId.getImsSmsFormat());
    }

    public static SubmitPdu getSubmitPdu(String str, String str2, String str3, boolean z2, int i2) {
        SmsMessageBase.SubmitPduBase submitPdu;
        if (useCdmaFormatForMoSms(i2)) {
            submitPdu = com.android.internal.telephony.cdma.SmsMessage.getSubmitPdu(str, str2, str3, z2, (SmsHeader) null);
        } else {
            submitPdu = com.android.internal.telephony.gsm.SmsMessage.getSubmitPdu(str, str2, str3, z2);
        }
        return new SubmitPdu(submitPdu);
    }

    public static SmsMessage createFromPdu(byte[] bArr, String str) {
        SmsMessageBase smsMessageBaseCreateFromPdu;
        if ("3gpp2".equals(str)) {
            smsMessageBaseCreateFromPdu = com.android.internal.telephony.cdma.SmsMessage.createFromPdu(bArr);
        } else if ("3gpp".equals(str)) {
            smsMessageBaseCreateFromPdu = com.android.internal.telephony.gsm.SmsMessage.createFromPdu(bArr);
        } else {
            Rlog.e(LOG_TAG, "createFromPdu(): unsupported message format " + str);
            return null;
        }
        if (smsMessageBaseCreateFromPdu != null) {
            return new SmsMessage(smsMessageBaseCreateFromPdu);
        }
        Rlog.e(LOG_TAG, "createFromPdu(): wrappedMessage is null");
        return null;
    }

    public static SubmitPdu getSubmitPdu(String str, String str2, short s2, byte[] bArr, boolean z2) {
        SmsMessageBase.SubmitPduBase submitPdu;
        if (useCdmaFormatForMoSms()) {
            submitPdu = com.android.internal.telephony.cdma.SmsMessage.getSubmitPdu(str, str2, s2, bArr, z2);
        } else {
            submitPdu = com.android.internal.telephony.gsm.SmsMessage.getSubmitPdu(str, str2, s2, bArr, z2);
        }
        return new SubmitPdu(submitPdu);
    }

    public static int[] calculateLength(String str, boolean z2) {
        return calculateLength((CharSequence) str, z2);
    }
}
