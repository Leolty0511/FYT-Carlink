package com.android.internal.telephony;

import android.app.m;
import com.android.internal.util.HexDump;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class SmsHeader {
    public static final int ELT_ID_APPLICATION_PORT_ADDRESSING_16_BIT = 5;
    public static final int ELT_ID_APPLICATION_PORT_ADDRESSING_8_BIT = 4;
    public static final int ELT_ID_CHARACTER_SIZE_WVG_OBJECT = 25;
    public static final int ELT_ID_COMPRESSION_CONTROL = 22;
    public static final int ELT_ID_CONCATENATED_16_BIT_REFERENCE = 8;
    public static final int ELT_ID_CONCATENATED_8_BIT_REFERENCE = 0;
    public static final int ELT_ID_ENHANCED_VOICE_MAIL_INFORMATION = 35;
    public static final int ELT_ID_EXTENDED_OBJECT = 20;
    public static final int ELT_ID_EXTENDED_OBJECT_DATA_REQUEST_CMD = 26;
    public static final int ELT_ID_HYPERLINK_FORMAT_ELEMENT = 33;
    public static final int ELT_ID_LARGE_ANIMATION = 14;
    public static final int ELT_ID_LARGE_PICTURE = 16;
    public static final int ELT_ID_NATIONAL_LANGUAGE_LOCKING_SHIFT = 37;
    public static final int ELT_ID_NATIONAL_LANGUAGE_SINGLE_SHIFT = 36;
    public static final int ELT_ID_OBJECT_DISTR_INDICATOR = 23;
    public static final int ELT_ID_PREDEFINED_ANIMATION = 13;
    public static final int ELT_ID_PREDEFINED_SOUND = 11;
    public static final int ELT_ID_REPLY_ADDRESS_ELEMENT = 34;
    public static final int ELT_ID_REUSED_EXTENDED_OBJECT = 21;
    public static final int ELT_ID_RFC_822_EMAIL_HEADER = 32;
    public static final int ELT_ID_SMALL_ANIMATION = 15;
    public static final int ELT_ID_SMALL_PICTURE = 17;
    public static final int ELT_ID_SMSC_CONTROL_PARAMS = 6;
    public static final int ELT_ID_SPECIAL_SMS_MESSAGE_INDICATION = 1;
    public static final int ELT_ID_STANDARD_WVG_OBJECT = 24;
    public static final int ELT_ID_TEXT_FORMATTING = 10;
    public static final int ELT_ID_UDH_SOURCE_INDICATION = 7;
    public static final int ELT_ID_USER_DEFINED_SOUND = 12;
    public static final int ELT_ID_USER_PROMPT_INDICATOR = 19;
    public static final int ELT_ID_VARIABLE_PICTURE = 18;
    public static final int ELT_ID_WIRELESS_CTRL_MSG_PROTOCOL = 9;
    public static final int PORT_WAP_PUSH = 2948;
    public static final int PORT_WAP_WSP = 9200;
    public ConcatRef concatRef;
    public int languageShiftTable;
    public int languageTable;
    public PortAddrs portAddrs;
    public ArrayList<SpecialSmsMsg> specialSmsMsgList = new ArrayList<>();
    public ArrayList<MiscElt> miscEltList = new ArrayList<>();

    public static class ConcatRef {
        public boolean isEightBits;
        public int msgCount;
        public int refNumber;
        public int seqNumber;
    }

    public static class MiscElt {
        public byte[] data;
        public int id;
    }

    public static class PortAddrs {
        public boolean areEightBits;
        public int destPort;
        public int origPort;
    }

    public static class SpecialSmsMsg {
        public int msgCount;
        public int msgIndType;
    }

    public static SmsHeader fromByteArray(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        SmsHeader smsHeader = new SmsHeader();
        while (byteArrayInputStream.available() > 0) {
            int i2 = byteArrayInputStream.read();
            int i3 = byteArrayInputStream.read();
            if (i2 == 0) {
                ConcatRef concatRef = new ConcatRef();
                concatRef.refNumber = byteArrayInputStream.read();
                concatRef.msgCount = byteArrayInputStream.read();
                int i4 = byteArrayInputStream.read();
                concatRef.seqNumber = i4;
                concatRef.isEightBits = true;
                int i5 = concatRef.msgCount;
                if (i5 != 0 && i4 != 0 && i4 <= i5) {
                    smsHeader.concatRef = concatRef;
                }
            } else if (i2 == 1) {
                SpecialSmsMsg specialSmsMsg = new SpecialSmsMsg();
                specialSmsMsg.msgIndType = byteArrayInputStream.read();
                specialSmsMsg.msgCount = byteArrayInputStream.read();
                smsHeader.specialSmsMsgList.add(specialSmsMsg);
            } else if (i2 == 4) {
                PortAddrs portAddrs = new PortAddrs();
                portAddrs.destPort = byteArrayInputStream.read();
                portAddrs.origPort = byteArrayInputStream.read();
                portAddrs.areEightBits = true;
                smsHeader.portAddrs = portAddrs;
            } else if (i2 == 5) {
                PortAddrs portAddrs2 = new PortAddrs();
                portAddrs2.destPort = (byteArrayInputStream.read() << 8) | byteArrayInputStream.read();
                portAddrs2.origPort = (byteArrayInputStream.read() << 8) | byteArrayInputStream.read();
                portAddrs2.areEightBits = false;
                smsHeader.portAddrs = portAddrs2;
            } else if (i2 == 8) {
                ConcatRef concatRef2 = new ConcatRef();
                concatRef2.refNumber = (byteArrayInputStream.read() << 8) | byteArrayInputStream.read();
                concatRef2.msgCount = byteArrayInputStream.read();
                int i6 = byteArrayInputStream.read();
                concatRef2.seqNumber = i6;
                concatRef2.isEightBits = false;
                int i7 = concatRef2.msgCount;
                if (i7 != 0 && i6 != 0 && i6 <= i7) {
                    smsHeader.concatRef = concatRef2;
                }
            } else if (i2 == 36) {
                smsHeader.languageShiftTable = byteArrayInputStream.read();
            } else if (i2 != 37) {
                MiscElt miscElt = new MiscElt();
                miscElt.id = i2;
                byte[] bArr2 = new byte[i3];
                miscElt.data = bArr2;
                byteArrayInputStream.read(bArr2, 0, i3);
                smsHeader.miscEltList.add(miscElt);
            } else {
                smsHeader.languageTable = byteArrayInputStream.read();
            }
        }
        return smsHeader;
    }

    public static byte[] toByteArray(SmsHeader smsHeader) {
        if (smsHeader.portAddrs == null && smsHeader.concatRef == null && smsHeader.specialSmsMsgList.isEmpty() && smsHeader.miscEltList.isEmpty() && smsHeader.languageShiftTable == 0 && smsHeader.languageTable == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(140);
        ConcatRef concatRef = smsHeader.concatRef;
        if (concatRef != null) {
            if (concatRef.isEightBits) {
                byteArrayOutputStream.write(0);
                byteArrayOutputStream.write(3);
                byteArrayOutputStream.write(concatRef.refNumber);
            } else {
                byteArrayOutputStream.write(8);
                byteArrayOutputStream.write(4);
                byteArrayOutputStream.write(concatRef.refNumber >>> 8);
                byteArrayOutputStream.write(concatRef.refNumber & 255);
            }
            byteArrayOutputStream.write(concatRef.msgCount);
            byteArrayOutputStream.write(concatRef.seqNumber);
        }
        PortAddrs portAddrs = smsHeader.portAddrs;
        if (portAddrs != null) {
            if (portAddrs.areEightBits) {
                byteArrayOutputStream.write(4);
                byteArrayOutputStream.write(2);
                byteArrayOutputStream.write(portAddrs.destPort);
                byteArrayOutputStream.write(portAddrs.origPort);
            } else {
                byteArrayOutputStream.write(5);
                byteArrayOutputStream.write(4);
                byteArrayOutputStream.write(portAddrs.destPort >>> 8);
                byteArrayOutputStream.write(portAddrs.destPort & 255);
                byteArrayOutputStream.write(portAddrs.origPort >>> 8);
                byteArrayOutputStream.write(portAddrs.origPort & 255);
            }
        }
        if (smsHeader.languageShiftTable != 0) {
            byteArrayOutputStream.write(36);
            byteArrayOutputStream.write(1);
            byteArrayOutputStream.write(smsHeader.languageShiftTable);
        }
        if (smsHeader.languageTable != 0) {
            byteArrayOutputStream.write(37);
            byteArrayOutputStream.write(1);
            byteArrayOutputStream.write(smsHeader.languageTable);
        }
        for (SpecialSmsMsg specialSmsMsg : smsHeader.specialSmsMsgList) {
            byteArrayOutputStream.write(1);
            byteArrayOutputStream.write(2);
            byteArrayOutputStream.write(specialSmsMsg.msgIndType & 255);
            byteArrayOutputStream.write(specialSmsMsg.msgCount & 255);
        }
        for (MiscElt miscElt : smsHeader.miscEltList) {
            byteArrayOutputStream.write(miscElt.id);
            byteArrayOutputStream.write(miscElt.data.length);
            byte[] bArr = miscElt.data;
            byteArrayOutputStream.write(bArr, 0, bArr.length);
        }
        return byteArrayOutputStream.toByteArray();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UserDataHeader { ConcatRef ");
        if (this.concatRef == null) {
            sb.append("unset");
        } else {
            StringBuilder sbM = m.m(m.m(m.m(new StringBuilder("{ refNumber="), this.concatRef.refNumber, sb, ", msgCount="), this.concatRef.msgCount, sb, ", seqNumber="), this.concatRef.seqNumber, sb, ", isEightBits=");
            sbM.append(this.concatRef.isEightBits);
            sb.append(sbM.toString());
            sb.append(" }");
        }
        sb.append(", PortAddrs ");
        if (this.portAddrs == null) {
            sb.append("unset");
        } else {
            StringBuilder sbM2 = m.m(m.m(new StringBuilder("{ destPort="), this.portAddrs.destPort, sb, ", origPort="), this.portAddrs.origPort, sb, ", areEightBits=");
            sbM2.append(this.portAddrs.areEightBits);
            sb.append(sbM2.toString());
            sb.append(" }");
        }
        if (this.languageShiftTable != 0) {
            sb.append(", languageShiftTable=" + this.languageShiftTable);
        }
        if (this.languageTable != 0) {
            sb.append(", languageTable=" + this.languageTable);
        }
        for (SpecialSmsMsg specialSmsMsg : this.specialSmsMsgList) {
            sb.append(", SpecialSmsMsg ");
            StringBuilder sbM3 = m.m(new StringBuilder("{ msgIndType="), specialSmsMsg.msgIndType, sb, ", msgCount=");
            sbM3.append(specialSmsMsg.msgCount);
            sb.append(sbM3.toString());
            sb.append(" }");
        }
        for (MiscElt miscElt : this.miscEltList) {
            sb.append(", MiscElt ");
            StringBuilder sbM4 = m.m(m.m(new StringBuilder("{ id="), miscElt.id, sb, ", length="), miscElt.data.length, sb, ", data=");
            sbM4.append(HexDump.toHexString(miscElt.data));
            sb.append(sbM4.toString());
            sb.append(" }");
        }
        sb.append(" }");
        return sb.toString();
    }
}
