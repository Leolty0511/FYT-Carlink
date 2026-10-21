package com.android.internal.telephony;

import android.provider.Telephony;
import android.telephony.SmsMessage;
import android.text.Emoji;
import java.text.BreakIterator;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SmsMessageBase {
    protected String mEmailBody;
    protected String mEmailFrom;
    protected boolean mIsEmail;
    protected boolean mIsMwi;
    protected String mMessageBody;
    public int mMessageRef;
    protected boolean mMwiDontStore;
    protected boolean mMwiSense;
    protected SmsAddress mOriginatingAddress;
    protected byte[] mPdu;
    protected String mPseudoSubject;
    protected String mScAddress;
    protected long mScTimeMillis;
    protected byte[] mUserData;
    protected SmsHeader mUserDataHeader;
    protected int mStatusOnIcc = -1;
    protected int mIndexOnIcc = -1;

    public static abstract class SubmitPduBase {
        public byte[] encodedMessage;
        public byte[] encodedScAddress;

        public String toString() {
            return "SubmitPdu: encodedScAddress = " + Arrays.toString(this.encodedScAddress) + ", encodedMessage = " + Arrays.toString(this.encodedMessage);
        }
    }

    public static GsmAlphabet.TextEncodingDetails calcUnicodeEncodingDetails(CharSequence charSequence) {
        GsmAlphabet.TextEncodingDetails textEncodingDetails = new GsmAlphabet.TextEncodingDetails();
        int length = charSequence.length() * 2;
        textEncodingDetails.codeUnitSize = 3;
        textEncodingDetails.codeUnitCount = charSequence.length();
        if (length > 140) {
            int i2 = (SmsMessage.hasEmsSupport() || length > 1188) ? 134 : 132;
            int i3 = 0;
            int i4 = 0;
            while (i3 < charSequence.length()) {
                int iFindNextUnicodePosition = findNextUnicodePosition(i3, i2, charSequence);
                if (iFindNextUnicodePosition == charSequence.length()) {
                    textEncodingDetails.codeUnitsRemaining = ((i2 / 2) + i3) - charSequence.length();
                }
                i4++;
                i3 = iFindNextUnicodePosition;
            }
            textEncodingDetails.msgCount = i4;
        } else {
            textEncodingDetails.msgCount = 1;
            textEncodingDetails.codeUnitsRemaining = (140 - length) / 2;
        }
        return textEncodingDetails;
    }

    public static int findNextUnicodePosition(int i2, int i3, CharSequence charSequence) {
        int iMin = Math.min((i3 / 2) + i2, charSequence.length());
        if (iMin >= charSequence.length()) {
            return iMin;
        }
        BreakIterator characterInstance = BreakIterator.getCharacterInstance();
        characterInstance.setText(charSequence.toString());
        if (characterInstance.isBoundary(iMin)) {
            return iMin;
        }
        int iPreceding = characterInstance.preceding(iMin);
        while (true) {
            int i4 = iPreceding + 4;
            if (i4 > iMin || !Emoji.isRegionalIndicatorSymbol(Character.codePointAt(charSequence, iPreceding)) || !Emoji.isRegionalIndicatorSymbol(Character.codePointAt(charSequence, iPreceding + 2))) {
                break;
            }
            iPreceding = i4;
        }
        if (iPreceding > i2) {
            return iPreceding;
        }
        return Character.isHighSurrogate(charSequence.charAt(iMin + (-1))) ? iMin - 1 : iMin;
    }

    public void extractEmailAddressFromMessageBody() {
        String[] strArrSplit = this.mMessageBody.split("( /)|( )", 2);
        if (strArrSplit.length < 2) {
            return;
        }
        String str = strArrSplit[0];
        this.mEmailFrom = str;
        this.mEmailBody = strArrSplit[1];
        this.mIsEmail = Telephony.Mms.isEmailAddress(str);
    }

    public String getDisplayMessageBody() {
        return this.mIsEmail ? this.mEmailBody : getMessageBody();
    }

    public String getDisplayOriginatingAddress() {
        return this.mIsEmail ? this.mEmailFrom : getOriginatingAddress();
    }

    public String getEmailBody() {
        return this.mEmailBody;
    }

    public String getEmailFrom() {
        return this.mEmailFrom;
    }

    public int getIndexOnIcc() {
        return this.mIndexOnIcc;
    }

    public String getMessageBody() {
        return this.mMessageBody;
    }

    public abstract SmsConstants.MessageClass getMessageClass();

    public String getOriginatingAddress() {
        SmsAddress smsAddress = this.mOriginatingAddress;
        if (smsAddress == null) {
            return null;
        }
        return smsAddress.getAddressString();
    }

    public byte[] getPdu() {
        return this.mPdu;
    }

    public abstract int getProtocolIdentifier();

    public String getPseudoSubject() {
        String str = this.mPseudoSubject;
        return str == null ? "" : str;
    }

    public String getServiceCenterAddress() {
        return this.mScAddress;
    }

    public abstract int getStatus();

    public int getStatusOnIcc() {
        return this.mStatusOnIcc;
    }

    public long getTimestampMillis() {
        return this.mScTimeMillis;
    }

    public byte[] getUserData() {
        return this.mUserData;
    }

    public SmsHeader getUserDataHeader() {
        return this.mUserDataHeader;
    }

    public abstract boolean isCphsMwiMessage();

    public boolean isEmail() {
        return this.mIsEmail;
    }

    public abstract boolean isMWIClearMessage();

    public abstract boolean isMWISetMessage();

    public abstract boolean isMwiDontStore();

    public abstract boolean isReplace();

    public abstract boolean isReplyPathPresent();

    public abstract boolean isStatusReportMessage();

    public void parseMessageBody() {
        SmsAddress smsAddress = this.mOriginatingAddress;
        if (smsAddress == null || !smsAddress.couldBeEmailGateway()) {
            return;
        }
        extractEmailAddressFromMessageBody();
    }
}
