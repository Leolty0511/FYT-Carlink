package com.android.internal.telephony.cdma;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.SystemProperties;
import android.telephony.PhoneNumberUtils;
import android.telephony.Rlog;
import android.telephony.SmsCbLocation;
import android.telephony.SmsCbMessage;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaSmsCbProgramData;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.R;
import com.android.internal.telephony.GsmAlphabet;
import com.android.internal.telephony.Sms7BitEncodingTranslator;
import com.android.internal.telephony.SmsAddress;
import com.android.internal.telephony.SmsConstants;
import com.android.internal.telephony.SmsHeader;
import com.android.internal.telephony.SmsMessageBase;
import com.android.internal.telephony.TelephonyProperties;
import com.android.internal.telephony.cdma.sms.BearerData;
import com.android.internal.telephony.cdma.sms.CdmaSmsAddress;
import com.android.internal.telephony.cdma.sms.CdmaSmsSubaddress;
import com.android.internal.telephony.cdma.sms.SmsEnvelope;
import com.android.internal.telephony.cdma.sms.UserData;
import com.android.internal.util.BitwiseInputStream;
import com.android.internal.util.HexDump;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class SmsMessage extends SmsMessageBase {
    private static final byte BEARER_DATA = 8;
    private static final byte BEARER_REPLY_OPTION = 6;
    private static final byte CAUSE_CODES = 7;
    private static final byte DESTINATION_ADDRESS = 4;
    private static final byte DESTINATION_SUB_ADDRESS = 5;
    private static final String LOGGABLE_TAG = "CDMA:SMS";
    static final String LOG_TAG = "SmsMessage";
    private static final byte ORIGINATING_ADDRESS = 2;
    private static final byte ORIGINATING_SUB_ADDRESS = 3;
    private static final int RETURN_ACK = 1;
    private static final int RETURN_NO_ACK = 0;
    private static final byte SERVICE_CATEGORY = 1;
    private static final byte TELESERVICE_IDENTIFIER = 0;
    private static final boolean VDBG = false;
    private BearerData mBearerData;
    private SmsEnvelope mEnvelope;
    private int status;

    public static class SubmitPdu extends SmsMessageBase.SubmitPduBase {
    }

    public SmsMessage(SmsAddress smsAddress, SmsEnvelope smsEnvelope) {
        this.mOriginatingAddress = smsAddress;
        this.mEnvelope = smsEnvelope;
        createPdu();
    }

    public static GsmAlphabet.TextEncodingDetails calculateLength(CharSequence charSequence, boolean z2, boolean z3) {
        String strTranslate = Resources.getSystem().getBoolean(R.bool.config_sms_force_7bit_encoding) ? Sms7BitEncodingTranslator.translate(charSequence) : null;
        if (!TextUtils.isEmpty(strTranslate)) {
            charSequence = strTranslate;
        }
        return BearerData.calcTextEncodingDetails(charSequence, z2, z3);
    }

    public static byte convertDtmfToAscii(byte b2) {
        switch (b2) {
            case 0:
                return (byte) 68;
            case 1:
                return (byte) 49;
            case 2:
                return (byte) 50;
            case 3:
                return (byte) 51;
            case 4:
                return (byte) 52;
            case 5:
                return (byte) 53;
            case 6:
                return (byte) 54;
            case 7:
                return (byte) 55;
            case 8:
                return (byte) 56;
            case 9:
                return (byte) 57;
            case 10:
                return (byte) 48;
            case 11:
                return (byte) 42;
            case 12:
                return (byte) 35;
            case 13:
                return (byte) 65;
            case 14:
                return (byte) 66;
            case 15:
                return (byte) 67;
            default:
                return (byte) 32;
        }
    }

    public static SmsMessage createFromEfRecord(int i2, byte[] bArr) {
        try {
            SmsMessage smsMessage = new SmsMessage();
            smsMessage.mIndexOnIcc = i2;
            char c = bArr[0];
            if ((c & 1) == 0) {
                Rlog.w(LOG_TAG, "SMS parsing failed: Trying to parse a free record");
                return null;
            }
            smsMessage.mStatusOnIcc = c & 7;
            int i3 = bArr[1];
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, 2, bArr2, 0, i3);
            smsMessage.parsePduFromEfRecord(bArr2);
            return smsMessage;
        } catch (RuntimeException e2) {
            Rlog.e(LOG_TAG, "SMS PDU parsing failed: ", e2);
            return null;
        }
    }

    public static SmsMessage createFromPdu(byte[] bArr) {
        SmsMessage smsMessage = new SmsMessage();
        try {
            smsMessage.parsePdu(bArr);
            return smsMessage;
        } catch (OutOfMemoryError e2) {
            Log.e(LOG_TAG, "SMS PDU parsing failed with out of memory: ", e2);
            return null;
        } catch (RuntimeException e3) {
            Rlog.e(LOG_TAG, "SMS PDU parsing failed: ", e3);
            return null;
        }
    }

    public static synchronized int getNextMessageId() {
        int i2;
        i2 = SystemProperties.getInt(TelephonyProperties.PROPERTY_CDMA_MSG_ID, 1);
        String string = Integer.toString((i2 % 65535) + 1);
        try {
            SystemProperties.set(TelephonyProperties.PROPERTY_CDMA_MSG_ID, string);
            if (Rlog.isLoggable(LOGGABLE_TAG, 2)) {
                Rlog.d(LOG_TAG, "next persist.radio.cdma.msgid = " + string);
                Rlog.d(LOG_TAG, "readback gets " + SystemProperties.get(TelephonyProperties.PROPERTY_CDMA_MSG_ID));
            }
        } catch (RuntimeException e2) {
            Rlog.e(LOG_TAG, "set nextMessage ID failed: " + e2);
        }
        return i2;
    }

    public static SubmitPdu getSubmitPdu(String str, String str2, String str3, boolean z2, SmsHeader smsHeader) {
        if (str3 == null || str2 == null) {
            return null;
        }
        UserData userData = new UserData();
        userData.payloadStr = str3;
        userData.userDataHeader = smsHeader;
        return privateGetSubmitPdu(str2, z2, userData);
    }

    public static int getTPLayerLengthForPDU(String str) {
        Rlog.w(LOG_TAG, "getTPLayerLengthForPDU: is not supported in CDMA mode.");
        return 0;
    }

    public static SmsMessage newFromParcel(Parcel parcel) {
        SmsMessage smsMessage = new SmsMessage();
        SmsEnvelope smsEnvelope = new SmsEnvelope();
        CdmaSmsAddress cdmaSmsAddress = new CdmaSmsAddress();
        CdmaSmsSubaddress cdmaSmsSubaddress = new CdmaSmsSubaddress();
        smsEnvelope.teleService = parcel.readInt();
        if (parcel.readByte() != 0) {
            smsEnvelope.messageType = 1;
        } else if (smsEnvelope.teleService == 0) {
            smsEnvelope.messageType = 2;
        } else {
            smsEnvelope.messageType = 0;
        }
        smsEnvelope.serviceCategory = parcel.readInt();
        int i2 = parcel.readInt();
        cdmaSmsAddress.digitMode = (byte) (i2 & 255);
        cdmaSmsAddress.numberMode = (byte) (parcel.readInt() & 255);
        cdmaSmsAddress.ton = parcel.readInt();
        cdmaSmsAddress.numberPlan = (byte) (parcel.readInt() & 255);
        int i3 = parcel.readByte();
        cdmaSmsAddress.numberOfDigits = i3;
        byte[] bArr = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            byte b2 = parcel.readByte();
            bArr[i4] = b2;
            if (i2 == 0) {
                bArr[i4] = convertDtmfToAscii(b2);
            }
        }
        cdmaSmsAddress.origBytes = bArr;
        cdmaSmsSubaddress.type = parcel.readInt();
        cdmaSmsSubaddress.odd = parcel.readByte();
        int i5 = parcel.readByte();
        if (i5 < 0) {
            i5 = 0;
        }
        byte[] bArr2 = new byte[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            bArr2[i6] = parcel.readByte();
        }
        cdmaSmsSubaddress.origBytes = bArr2;
        int i7 = parcel.readInt();
        if (i7 < 0) {
            i7 = 0;
        }
        byte[] bArr3 = new byte[i7];
        for (int i8 = 0; i8 < i7; i8++) {
            bArr3[i8] = parcel.readByte();
        }
        smsEnvelope.bearerData = bArr3;
        smsEnvelope.origAddress = cdmaSmsAddress;
        smsEnvelope.origSubaddress = cdmaSmsSubaddress;
        smsMessage.mOriginatingAddress = cdmaSmsAddress;
        smsMessage.mEnvelope = smsEnvelope;
        smsMessage.createPdu();
        return smsMessage;
    }

    private void parsePdu(byte[] bArr) {
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        SmsEnvelope smsEnvelope = new SmsEnvelope();
        CdmaSmsAddress cdmaSmsAddress = new CdmaSmsAddress();
        try {
            smsEnvelope.messageType = dataInputStream.readInt();
            smsEnvelope.teleService = dataInputStream.readInt();
            smsEnvelope.serviceCategory = dataInputStream.readInt();
            cdmaSmsAddress.digitMode = dataInputStream.readByte();
            cdmaSmsAddress.numberMode = dataInputStream.readByte();
            cdmaSmsAddress.ton = dataInputStream.readByte();
            cdmaSmsAddress.numberPlan = dataInputStream.readByte();
            int unsignedByte = dataInputStream.readUnsignedByte();
            cdmaSmsAddress.numberOfDigits = unsignedByte;
            if (unsignedByte > bArr.length) {
                throw new RuntimeException("createFromPdu: Invalid pdu, addr.numberOfDigits " + unsignedByte + " > pdu len " + bArr.length);
            }
            byte[] bArr2 = new byte[unsignedByte];
            cdmaSmsAddress.origBytes = bArr2;
            dataInputStream.read(bArr2, 0, unsignedByte);
            smsEnvelope.bearerReply = dataInputStream.readInt();
            smsEnvelope.replySeqNo = dataInputStream.readByte();
            smsEnvelope.errorClass = dataInputStream.readByte();
            smsEnvelope.causeCode = dataInputStream.readByte();
            int i2 = dataInputStream.readInt();
            if (i2 > bArr.length) {
                throw new RuntimeException("createFromPdu: Invalid pdu, bearerDataLength " + i2 + " > pdu len " + bArr.length);
            }
            byte[] bArr3 = new byte[i2];
            smsEnvelope.bearerData = bArr3;
            dataInputStream.read(bArr3, 0, i2);
            dataInputStream.close();
            this.mOriginatingAddress = cdmaSmsAddress;
            smsEnvelope.origAddress = cdmaSmsAddress;
            this.mEnvelope = smsEnvelope;
            this.mPdu = bArr;
            parseSms();
        } catch (IOException e2) {
            throw new RuntimeException("createFromPdu: conversion from byte array to object failed: " + e2, e2);
        } catch (Exception e3) {
            Rlog.e(LOG_TAG, "createFromPdu: conversion from byte array to object failed: " + e3);
        }
    }

    private void parsePduFromEfRecord(byte[] bArr) {
        int i2;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
        SmsEnvelope smsEnvelope = new SmsEnvelope();
        CdmaSmsAddress cdmaSmsAddress = new CdmaSmsAddress();
        CdmaSmsSubaddress cdmaSmsSubaddress = new CdmaSmsSubaddress();
        try {
            smsEnvelope.messageType = dataInputStream.readByte();
            while (dataInputStream.available() > 0) {
                byte b2 = dataInputStream.readByte();
                int unsignedByte = dataInputStream.readUnsignedByte();
                byte[] bArr2 = new byte[unsignedByte];
                int i3 = 0;
                switch (b2) {
                    case 0:
                        smsEnvelope.teleService = dataInputStream.readUnsignedShort();
                        Rlog.i(LOG_TAG, "teleservice = " + smsEnvelope.teleService);
                        break;
                    case 1:
                        smsEnvelope.serviceCategory = dataInputStream.readUnsignedShort();
                        break;
                    case 2:
                    case 4:
                        dataInputStream.read(bArr2, 0, unsignedByte);
                        BitwiseInputStream bitwiseInputStream = new BitwiseInputStream(bArr2);
                        cdmaSmsAddress.digitMode = bitwiseInputStream.read(1);
                        cdmaSmsAddress.numberMode = bitwiseInputStream.read(1);
                        if (cdmaSmsAddress.digitMode == 1) {
                            i2 = bitwiseInputStream.read(3);
                            cdmaSmsAddress.ton = i2;
                            if (cdmaSmsAddress.numberMode == 0) {
                                cdmaSmsAddress.numberPlan = bitwiseInputStream.read(4);
                            }
                        } else {
                            i2 = 0;
                        }
                        int i4 = bitwiseInputStream.read(8);
                        cdmaSmsAddress.numberOfDigits = i4;
                        byte[] bArr3 = new byte[i4];
                        int i5 = cdmaSmsAddress.digitMode;
                        if (i5 == 0) {
                            while (i3 < cdmaSmsAddress.numberOfDigits) {
                                bArr3[i3] = convertDtmfToAscii((byte) (bitwiseInputStream.read(4) & 15));
                                i3++;
                            }
                        } else if (i5 == 1) {
                            int i6 = cdmaSmsAddress.numberMode;
                            if (i6 == 0) {
                                while (i3 < cdmaSmsAddress.numberOfDigits) {
                                    bArr3[i3] = (byte) (bitwiseInputStream.read(8) & 255);
                                    i3++;
                                }
                            } else if (i6 != 1) {
                                Rlog.e(LOG_TAG, "Originating Addr is of incorrect type");
                            } else if (i2 == 2) {
                                Rlog.e(LOG_TAG, "TODO: Originating Addr is email id");
                            } else {
                                Rlog.e(LOG_TAG, "TODO: Originating Addr is data network address");
                            }
                        } else {
                            Rlog.e(LOG_TAG, "Incorrect Digit mode");
                        }
                        cdmaSmsAddress.origBytes = bArr3;
                        Rlog.i(LOG_TAG, "Originating Addr=" + cdmaSmsAddress.toString());
                        break;
                    case 3:
                    case 5:
                        dataInputStream.read(bArr2, 0, unsignedByte);
                        BitwiseInputStream bitwiseInputStream2 = new BitwiseInputStream(bArr2);
                        cdmaSmsSubaddress.type = bitwiseInputStream2.read(3);
                        cdmaSmsSubaddress.odd = bitwiseInputStream2.readByteArray(1)[0];
                        int i7 = bitwiseInputStream2.read(8);
                        byte[] bArr4 = new byte[i7];
                        while (i3 < i7) {
                            bArr4[i3] = convertDtmfToAscii((byte) (bitwiseInputStream2.read(4) & 255));
                            i3++;
                        }
                        cdmaSmsSubaddress.origBytes = bArr4;
                        break;
                    case 6:
                        dataInputStream.read(bArr2, 0, unsignedByte);
                        smsEnvelope.bearerReply = new BitwiseInputStream(bArr2).read(6);
                        break;
                    case 7:
                        dataInputStream.read(bArr2, 0, unsignedByte);
                        BitwiseInputStream bitwiseInputStream3 = new BitwiseInputStream(bArr2);
                        smsEnvelope.replySeqNo = bitwiseInputStream3.readByteArray(6)[0];
                        byte b3 = bitwiseInputStream3.readByteArray(2)[0];
                        smsEnvelope.errorClass = b3;
                        if (b3 != 0) {
                            smsEnvelope.causeCode = bitwiseInputStream3.readByteArray(8)[0];
                        }
                        break;
                    case 8:
                        dataInputStream.read(bArr2, 0, unsignedByte);
                        smsEnvelope.bearerData = bArr2;
                        break;
                    default:
                        throw new Exception("unsupported parameterId (" + ((int) b2) + ")");
                }
            }
            byteArrayInputStream.close();
            dataInputStream.close();
        } catch (Exception e2) {
            Rlog.e(LOG_TAG, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed" + e2);
        }
        this.mOriginatingAddress = cdmaSmsAddress;
        smsEnvelope.origAddress = cdmaSmsAddress;
        smsEnvelope.origSubaddress = cdmaSmsSubaddress;
        this.mEnvelope = smsEnvelope;
        this.mPdu = bArr;
        parseSms();
    }

    private static SubmitPdu privateGetSubmitPdu(String str, boolean z2, UserData userData) {
        CdmaSmsAddress cdmaSmsAddress = CdmaSmsAddress.parse(PhoneNumberUtils.cdmaCheckAndProcessPlusCodeForSms(str));
        if (cdmaSmsAddress == null) {
            return null;
        }
        BearerData bearerData = new BearerData();
        bearerData.messageType = 2;
        bearerData.messageId = getNextMessageId();
        bearerData.deliveryAckReq = z2;
        bearerData.userAckReq = false;
        bearerData.readAckReq = false;
        bearerData.reportReq = false;
        bearerData.userData = userData;
        byte[] bArrEncode = BearerData.encode(bearerData);
        if (Rlog.isLoggable(LOGGABLE_TAG, 2)) {
            Rlog.d(LOG_TAG, "MO (encoded) BearerData = " + bearerData);
            Rlog.d(LOG_TAG, "MO raw BearerData = '" + HexDump.toHexString(bArrEncode) + "'");
        }
        if (bArrEncode == null) {
            return null;
        }
        int i2 = bearerData.hasUserDataHeader ? 4101 : 4098;
        SmsEnvelope smsEnvelope = new SmsEnvelope();
        smsEnvelope.messageType = 0;
        smsEnvelope.teleService = i2;
        smsEnvelope.destAddress = cdmaSmsAddress;
        smsEnvelope.bearerReply = 1;
        smsEnvelope.bearerData = bArrEncode;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(100);
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeInt(smsEnvelope.teleService);
            dataOutputStream.writeInt(0);
            dataOutputStream.writeInt(0);
            dataOutputStream.write(cdmaSmsAddress.digitMode);
            dataOutputStream.write(cdmaSmsAddress.numberMode);
            dataOutputStream.write(cdmaSmsAddress.ton);
            dataOutputStream.write(cdmaSmsAddress.numberPlan);
            dataOutputStream.write(cdmaSmsAddress.numberOfDigits);
            byte[] bArr = cdmaSmsAddress.origBytes;
            dataOutputStream.write(bArr, 0, bArr.length);
            dataOutputStream.write(0);
            dataOutputStream.write(0);
            dataOutputStream.write(0);
            dataOutputStream.write(bArrEncode.length);
            dataOutputStream.write(bArrEncode, 0, bArrEncode.length);
            dataOutputStream.close();
            SubmitPdu submitPdu = new SubmitPdu();
            submitPdu.encodedMessage = byteArrayOutputStream.toByteArray();
            submitPdu.encodedScAddress = null;
            return submitPdu;
        } catch (IOException e2) {
            Rlog.e(LOG_TAG, "creating SubmitPdu failed: " + e2);
            return null;
        }
    }

    public void createPdu() {
        SmsEnvelope smsEnvelope = this.mEnvelope;
        CdmaSmsAddress cdmaSmsAddress = smsEnvelope.origAddress;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(100);
        DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(byteArrayOutputStream));
        try {
            dataOutputStream.writeInt(smsEnvelope.messageType);
            dataOutputStream.writeInt(smsEnvelope.teleService);
            dataOutputStream.writeInt(smsEnvelope.serviceCategory);
            dataOutputStream.writeByte(cdmaSmsAddress.digitMode);
            dataOutputStream.writeByte(cdmaSmsAddress.numberMode);
            dataOutputStream.writeByte(cdmaSmsAddress.ton);
            dataOutputStream.writeByte(cdmaSmsAddress.numberPlan);
            dataOutputStream.writeByte(cdmaSmsAddress.numberOfDigits);
            byte[] bArr = cdmaSmsAddress.origBytes;
            dataOutputStream.write(bArr, 0, bArr.length);
            dataOutputStream.writeInt(smsEnvelope.bearerReply);
            dataOutputStream.writeByte(smsEnvelope.replySeqNo);
            dataOutputStream.writeByte(smsEnvelope.errorClass);
            dataOutputStream.writeByte(smsEnvelope.causeCode);
            dataOutputStream.writeInt(smsEnvelope.bearerData.length);
            byte[] bArr2 = smsEnvelope.bearerData;
            dataOutputStream.write(bArr2, 0, bArr2.length);
            dataOutputStream.close();
            this.mPdu = byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            Rlog.e(LOG_TAG, "createPdu: conversion from object to byte array failed: " + e2);
        }
    }

    public byte[] getIncomingSmsFingerprint() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(this.mEnvelope.serviceCategory);
        byteArrayOutputStream.write(this.mEnvelope.teleService);
        byte[] bArr = this.mEnvelope.origAddress.origBytes;
        byteArrayOutputStream.write(bArr, 0, bArr.length);
        byte[] bArr2 = this.mEnvelope.bearerData;
        byteArrayOutputStream.write(bArr2, 0, bArr2.length);
        byte[] bArr3 = this.mEnvelope.origSubaddress.origBytes;
        byteArrayOutputStream.write(bArr3, 0, bArr3.length);
        return byteArrayOutputStream.toByteArray();
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public SmsConstants.MessageClass getMessageClass() {
        return this.mBearerData.displayMode == 0 ? SmsConstants.MessageClass.CLASS_0 : SmsConstants.MessageClass.UNKNOWN;
    }

    public int getMessageType() {
        return this.mEnvelope.serviceCategory != 0 ? 1 : 0;
    }

    public int getNumOfVoicemails() {
        return this.mBearerData.numberOfMessages;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public int getProtocolIdentifier() {
        Rlog.w(LOG_TAG, "getProtocolIdentifier: is not supported in CDMA mode.");
        return 0;
    }

    public ArrayList<CdmaSmsCbProgramData> getSmsCbProgramData() {
        return this.mBearerData.serviceCategoryProgramData;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public int getStatus() {
        return this.status << 16;
    }

    public int getTeleService() {
        return this.mEnvelope.teleService;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public boolean isCphsMwiMessage() {
        Rlog.w(LOG_TAG, "isCphsMwiMessage: is not supported in CDMA mode.");
        return false;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public boolean isMWIClearMessage() {
        BearerData bearerData = this.mBearerData;
        return bearerData != null && bearerData.numberOfMessages == 0;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public boolean isMWISetMessage() {
        BearerData bearerData = this.mBearerData;
        return bearerData != null && bearerData.numberOfMessages > 0;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public boolean isMwiDontStore() {
        BearerData bearerData = this.mBearerData;
        return bearerData != null && bearerData.numberOfMessages > 0 && bearerData.userData == null;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public boolean isReplace() {
        Rlog.w(LOG_TAG, "isReplace: is not supported in CDMA mode.");
        return false;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public boolean isReplyPathPresent() {
        Rlog.w(LOG_TAG, "isReplyPathPresent: is not supported in CDMA mode.");
        return false;
    }

    @Override // com.android.internal.telephony.SmsMessageBase
    public boolean isStatusReportMessage() {
        return this.mBearerData.messageType == 4;
    }

    public SmsCbMessage parseBroadcastSms() {
        SmsEnvelope smsEnvelope = this.mEnvelope;
        BearerData bearerDataDecode = BearerData.decode(smsEnvelope.bearerData, smsEnvelope.serviceCategory);
        if (bearerDataDecode == null) {
            Rlog.w(LOG_TAG, "BearerData.decode() returned null");
            return null;
        }
        if (Rlog.isLoggable(LOGGABLE_TAG, 2)) {
            Rlog.d(LOG_TAG, "MT raw BearerData = " + HexDump.toHexString(this.mEnvelope.bearerData));
        }
        return new SmsCbMessage(2, 1, bearerDataDecode.messageId, new SmsCbLocation(TelephonyManager.getDefault().getNetworkOperator()), this.mEnvelope.serviceCategory, bearerDataDecode.getLanguage(), bearerDataDecode.userData.payloadStr, bearerDataDecode.priority, null, bearerDataDecode.cmasWarningInfo);
    }

    public void parseSms() {
        SmsEnvelope smsEnvelope = this.mEnvelope;
        if (smsEnvelope.teleService == 262144) {
            BearerData bearerData = new BearerData();
            this.mBearerData = bearerData;
            byte[] bArr = this.mEnvelope.bearerData;
            if (bArr != null) {
                bearerData.numberOfMessages = bArr[0] & 255;
                return;
            }
            return;
        }
        this.mBearerData = BearerData.decode(smsEnvelope.bearerData);
        if (Rlog.isLoggable(LOGGABLE_TAG, 2)) {
            Rlog.d(LOG_TAG, "MT raw BearerData = '" + HexDump.toHexString(this.mEnvelope.bearerData) + "'");
            StringBuilder sb = new StringBuilder("MT (decoded) BearerData = ");
            sb.append(this.mBearerData);
            Rlog.d(LOG_TAG, sb.toString());
        }
        BearerData bearerData2 = this.mBearerData;
        this.mMessageRef = bearerData2.messageId;
        UserData userData = bearerData2.userData;
        if (userData != null) {
            this.mUserData = userData.payload;
            this.mUserDataHeader = userData.userDataHeader;
            this.mMessageBody = userData.payloadStr;
        }
        SmsAddress smsAddress = this.mOriginatingAddress;
        if (smsAddress != null) {
            smsAddress.address = new String(smsAddress.origBytes);
            SmsAddress smsAddress2 = this.mOriginatingAddress;
            if (smsAddress2.ton == 1 && smsAddress2.address.charAt(0) != '+') {
                this.mOriginatingAddress.address = "+" + this.mOriginatingAddress.address;
            }
        }
        BearerData.TimeStamp timeStamp = this.mBearerData.msgCenterTimeStamp;
        if (timeStamp != null) {
            this.mScTimeMillis = timeStamp.toMillis(true);
        }
        BearerData bearerData3 = this.mBearerData;
        int i2 = bearerData3.messageType;
        if (i2 == 4) {
            if (bearerData3.messageStatusSet) {
                int i3 = bearerData3.errorClass << 8;
                this.status = i3;
                this.status = bearerData3.messageStatus | i3;
            } else {
                StringBuilder sb2 = new StringBuilder("DELIVERY_ACK message without msgStatus (");
                sb2.append(this.mUserData == null ? "also missing" : "does have");
                sb2.append(" userData).");
                Rlog.d(LOG_TAG, sb2.toString());
                this.status = 0;
            }
        } else if (i2 != 1) {
            throw new RuntimeException("Unsupported message type: " + this.mBearerData.messageType);
        }
        if (this.mMessageBody != null) {
            parseMessageBody();
        }
    }

    public SmsMessage() {
    }

    public static SubmitPdu getSubmitPdu(String str, String str2, int i2, byte[] bArr, boolean z2) {
        SmsHeader.PortAddrs portAddrs = new SmsHeader.PortAddrs();
        portAddrs.destPort = i2;
        portAddrs.origPort = 0;
        portAddrs.areEightBits = false;
        SmsHeader smsHeader = new SmsHeader();
        smsHeader.portAddrs = portAddrs;
        UserData userData = new UserData();
        userData.userDataHeader = smsHeader;
        userData.msgEncoding = 0;
        userData.msgEncodingSet = true;
        userData.payload = bArr;
        return privateGetSubmitPdu(str2, z2, userData);
    }

    public static SubmitPdu getSubmitPdu(String str, UserData userData, boolean z2) {
        return privateGetSubmitPdu(str, z2, userData);
    }
}
