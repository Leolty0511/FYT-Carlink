package com.android.internal.telephony.gsm;

import android.accessibilityservice.c;
import android.app.m;
import android.telephony.SmsCbCmasInfo;
import android.telephony.SmsCbEtwsInfo;
import com.android.internal.midi.MidiConstants;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class SmsCbHeader {
    static final int FORMAT_ETWS_PRIMARY = 3;
    static final int FORMAT_GSM = 1;
    static final int FORMAT_UMTS = 2;
    private static final int MESSAGE_TYPE_CBS_MESSAGE = 1;
    static final int PDU_HEADER_LENGTH = 6;
    private static final int PDU_LENGTH_ETWS = 56;
    private static final int PDU_LENGTH_GSM = 88;
    private final SmsCbCmasInfo mCmasInfo;
    private final int mDataCodingScheme;
    private final SmsCbEtwsInfo mEtwsInfo;
    private final int mFormat;
    private final int mGeographicalScope;
    private final int mMessageIdentifier;
    private final int mNrOfPages;
    private final int mPageIndex;
    private final int mSerialNumber;

    public SmsCbHeader(byte[] bArr) {
        if (bArr == null || bArr.length < 6) {
            throw new IllegalArgumentException("Illegal PDU");
        }
        int i2 = 1;
        if (bArr.length <= 88) {
            byte b2 = bArr[0];
            this.mGeographicalScope = (b2 & 192) >>> 6;
            this.mSerialNumber = ((b2 & 255) << 8) | (bArr[1] & 255);
            this.mMessageIdentifier = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
            if (isEtwsMessage() && bArr.length <= 56) {
                this.mFormat = 3;
                this.mDataCodingScheme = -1;
                this.mPageIndex = -1;
                this.mNrOfPages = -1;
                byte b3 = bArr[4];
                this.mEtwsInfo = new SmsCbEtwsInfo((b3 & MidiConstants.STATUS_ACTIVE_SENSING) >>> 1, (b3 & 1) != 0, (bArr[5] & 128) != 0, true, bArr.length > 6 ? Arrays.copyOfRange(bArr, 6, bArr.length) : null);
                this.mCmasInfo = null;
                return;
            }
            this.mFormat = 1;
            this.mDataCodingScheme = bArr[4] & 255;
            byte b4 = bArr[5];
            int i3 = (b4 & 240) >>> 4;
            int i4 = b4 & 15;
            if (i3 == 0 || i4 == 0 || i3 > i4) {
                i4 = 1;
            } else {
                i2 = i3;
            }
            this.mPageIndex = i2;
            this.mNrOfPages = i4;
        } else {
            this.mFormat = 2;
            byte b5 = bArr[0];
            if (b5 != 1) {
                throw new IllegalArgumentException(c.d("Unsupported message type ", b5));
            }
            this.mMessageIdentifier = ((bArr[1] & 255) << 8) | (bArr[2] & 255);
            byte b6 = bArr[3];
            this.mGeographicalScope = (b6 & 192) >>> 6;
            this.mSerialNumber = ((b6 & 255) << 8) | (bArr[4] & 255);
            this.mDataCodingScheme = bArr[5] & 255;
            this.mPageIndex = 1;
            this.mNrOfPages = 1;
        }
        if (isEtwsMessage()) {
            this.mEtwsInfo = new SmsCbEtwsInfo(getEtwsWarningType(), isEtwsEmergencyUserAlert(), isEtwsPopupAlert(), false, null);
            this.mCmasInfo = null;
        } else {
            if (!isCmasMessage()) {
                this.mEtwsInfo = null;
                this.mCmasInfo = null;
                return;
            }
            int cmasMessageClass = getCmasMessageClass();
            int cmasSeverity = getCmasSeverity();
            int cmasUrgency = getCmasUrgency();
            int cmasCertainty = getCmasCertainty();
            this.mEtwsInfo = null;
            this.mCmasInfo = new SmsCbCmasInfo(cmasMessageClass, -1, -1, cmasSeverity, cmasUrgency, cmasCertainty);
        }
    }

    private int getCmasCertainty() {
        int i2 = this.mMessageIdentifier;
        switch (i2) {
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_OBSERVED /* 4371 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_OBSERVED /* 4373 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_OBSERVED /* 4375 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_OBSERVED /* 4377 */:
                return 0;
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_LIKELY /* 4372 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_LIKELY /* 4374 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_LIKELY /* 4376 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_LIKELY /* 4378 */:
                return 1;
            default:
                switch (i2) {
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_OBSERVED_LANGUAGE /* 4384 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_OBSERVED_LANGUAGE /* 4386 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_OBSERVED_LANGUAGE /* 4388 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_OBSERVED_LANGUAGE /* 4390 */:
                        return 0;
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_LIKELY_LANGUAGE /* 4385 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_LIKELY_LANGUAGE /* 4387 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_LIKELY_LANGUAGE /* 4389 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_LIKELY_LANGUAGE /* 4391 */:
                        return 1;
                    default:
                        return -1;
                }
        }
    }

    private int getCmasMessageClass() {
        switch (this.mMessageIdentifier) {
            case 4370:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_PRESIDENTIAL_LEVEL_LANGUAGE /* 4383 */:
                return 0;
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_OBSERVED /* 4371 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_LIKELY /* 4372 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_OBSERVED_LANGUAGE /* 4384 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_LIKELY_LANGUAGE /* 4385 */:
                return 1;
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_OBSERVED /* 4373 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_LIKELY /* 4374 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_OBSERVED /* 4375 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_LIKELY /* 4376 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_OBSERVED /* 4377 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_LIKELY /* 4378 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_OBSERVED_LANGUAGE /* 4386 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_LIKELY_LANGUAGE /* 4387 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_OBSERVED_LANGUAGE /* 4388 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_LIKELY_LANGUAGE /* 4389 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_OBSERVED_LANGUAGE /* 4390 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_LIKELY_LANGUAGE /* 4391 */:
                return 2;
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_CHILD_ABDUCTION_EMERGENCY /* 4379 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_CHILD_ABDUCTION_EMERGENCY_LANGUAGE /* 4392 */:
                return 3;
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_REQUIRED_MONTHLY_TEST /* 4380 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_REQUIRED_MONTHLY_TEST_LANGUAGE /* 4393 */:
                return 4;
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXERCISE /* 4381 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXERCISE_LANGUAGE /* 4394 */:
                return 5;
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_OPERATOR_DEFINED_USE /* 4382 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_OPERATOR_DEFINED_USE_LANGUAGE /* 4395 */:
                return 6;
            default:
                return -1;
        }
    }

    private int getCmasSeverity() {
        int i2 = this.mMessageIdentifier;
        switch (i2) {
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_OBSERVED /* 4371 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_LIKELY /* 4372 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_OBSERVED /* 4373 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_LIKELY /* 4374 */:
                return 0;
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_OBSERVED /* 4375 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_LIKELY /* 4376 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_OBSERVED /* 4377 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_LIKELY /* 4378 */:
                return 1;
            default:
                switch (i2) {
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_OBSERVED_LANGUAGE /* 4384 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_LIKELY_LANGUAGE /* 4385 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_OBSERVED_LANGUAGE /* 4386 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_LIKELY_LANGUAGE /* 4387 */:
                        return 0;
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_OBSERVED_LANGUAGE /* 4388 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_LIKELY_LANGUAGE /* 4389 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_OBSERVED_LANGUAGE /* 4390 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_LIKELY_LANGUAGE /* 4391 */:
                        return 1;
                    default:
                        return -1;
                }
        }
    }

    private int getCmasUrgency() {
        int i2 = this.mMessageIdentifier;
        switch (i2) {
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_OBSERVED /* 4371 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_LIKELY /* 4372 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_OBSERVED /* 4375 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_LIKELY /* 4376 */:
                return 0;
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_OBSERVED /* 4373 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_LIKELY /* 4374 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_OBSERVED /* 4377 */:
            case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_LIKELY /* 4378 */:
                return 1;
            default:
                switch (i2) {
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_OBSERVED_LANGUAGE /* 4384 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_LIKELY_LANGUAGE /* 4385 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_OBSERVED_LANGUAGE /* 4388 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_IMMEDIATE_LIKELY_LANGUAGE /* 4389 */:
                        return 0;
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_OBSERVED_LANGUAGE /* 4386 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_EXPECTED_LIKELY_LANGUAGE /* 4387 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_OBSERVED_LANGUAGE /* 4390 */:
                    case SmsCbConstants.MESSAGE_ID_CMAS_ALERT_SEVERE_EXPECTED_LIKELY_LANGUAGE /* 4391 */:
                        return 1;
                    default:
                        return -1;
                }
        }
    }

    private int getEtwsWarningType() {
        return this.mMessageIdentifier - 4352;
    }

    private boolean isCmasMessage() {
        int i2 = this.mMessageIdentifier;
        return i2 >= 4370 && i2 <= 4399;
    }

    private boolean isEtwsEmergencyUserAlert() {
        return (this.mSerialNumber & 8192) != 0;
    }

    private boolean isEtwsMessage() {
        return (this.mMessageIdentifier & SmsCbConstants.MESSAGE_ID_ETWS_TYPE_MASK) == 4352;
    }

    private boolean isEtwsPopupAlert() {
        return (this.mSerialNumber & 4096) != 0;
    }

    public SmsCbCmasInfo getCmasInfo() {
        return this.mCmasInfo;
    }

    public int getDataCodingScheme() {
        return this.mDataCodingScheme;
    }

    public SmsCbEtwsInfo getEtwsInfo() {
        return this.mEtwsInfo;
    }

    public int getGeographicalScope() {
        return this.mGeographicalScope;
    }

    public int getNumberOfPages() {
        return this.mNrOfPages;
    }

    public int getPageIndex() {
        return this.mPageIndex;
    }

    public int getSerialNumber() {
        return this.mSerialNumber;
    }

    public int getServiceCategory() {
        return this.mMessageIdentifier;
    }

    public boolean isEmergencyMessage() {
        int i2 = this.mMessageIdentifier;
        return i2 >= 4352 && i2 <= 6399;
    }

    public boolean isEtwsPrimaryNotification() {
        return this.mFormat == 3;
    }

    public boolean isUmtsFormat() {
        return this.mFormat == 2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SmsCbHeader{GS=");
        sb.append(this.mGeographicalScope);
        sb.append(", serialNumber=0x");
        c.x(this.mSerialNumber, sb, ", messageIdentifier=0x");
        c.x(this.mMessageIdentifier, sb, ", DCS=0x");
        c.x(this.mDataCodingScheme, sb, ", page ");
        sb.append(this.mPageIndex);
        sb.append(" of ");
        return m.j(sb, this.mNrOfPages, '}');
    }
}
