package com.android.internal.telephony.gsm;

import android.accessibilityservice.c;
import android.telephony.PhoneNumberUtils;
import com.android.internal.telephony.GsmAlphabet;
import com.android.internal.telephony.SmsAddress;
import java.text.ParseException;

/* JADX INFO: loaded from: classes3.dex */
public class GsmSmsAddress extends SmsAddress {
    static final int OFFSET_ADDRESS_LENGTH = 0;
    static final int OFFSET_ADDRESS_VALUE = 2;
    static final int OFFSET_TOA = 1;

    public GsmSmsAddress(byte[] bArr, int i2, int i3) throws ParseException {
        byte[] bArr2 = new byte[i3];
        this.origBytes = bArr2;
        System.arraycopy(bArr, i2, bArr2, 0, i3);
        byte[] bArr3 = this.origBytes;
        int i4 = bArr3[0] & 255;
        int i5 = bArr3[1] & 255;
        this.ton = (i5 >> 4) & 7;
        if ((i5 & 128) != 128) {
            throw new ParseException(c.d("Invalid TOA - high bit must be set. toa = ", i5), i2 + 1);
        }
        if (isAlphanumeric()) {
            this.address = GsmAlphabet.gsm7BitPackedToString(this.origBytes, 2, (i4 * 4) / 7);
            return;
        }
        byte[] bArr4 = this.origBytes;
        int i6 = i3 - 1;
        byte b2 = bArr4[i6];
        if ((i4 & 1) == 1) {
            bArr4[i6] = (byte) (b2 | 240);
        }
        this.address = PhoneNumberUtils.calledPartyBCDToString(bArr4, 1, i6);
        this.origBytes[i6] = b2;
    }

    @Override // com.android.internal.telephony.SmsAddress
    public String getAddressString() {
        return this.address;
    }

    @Override // com.android.internal.telephony.SmsAddress
    public boolean isAlphanumeric() {
        return this.ton == 5;
    }

    public boolean isCphsVoiceMessageClear() {
        return isCphsVoiceMessageIndicatorAddress() && (this.origBytes[2] & 255) == 16;
    }

    public boolean isCphsVoiceMessageIndicatorAddress() {
        return (this.origBytes[0] & 255) == 4 && isAlphanumeric() && (this.origBytes[1] & 15) == 0;
    }

    public boolean isCphsVoiceMessageSet() {
        return isCphsVoiceMessageIndicatorAddress() && (this.origBytes[2] & 255) == 17;
    }

    @Override // com.android.internal.telephony.SmsAddress
    public boolean isNetworkSpecific() {
        return this.ton == 3;
    }
}
