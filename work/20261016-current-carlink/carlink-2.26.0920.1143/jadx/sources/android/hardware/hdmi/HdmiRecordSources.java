package android.hardware.hdmi;

import android.accessibilityservice.c;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class HdmiRecordSources {
    public static final int ANALOGUE_BROADCAST_TYPE_CABLE = 0;
    public static final int ANALOGUE_BROADCAST_TYPE_SATELLITE = 1;
    public static final int ANALOGUE_BROADCAST_TYPE_TERRESTRIAL = 2;
    public static final int BROADCAST_SYSTEM_NTSC_M = 3;
    public static final int BROADCAST_SYSTEM_PAL_BG = 0;
    public static final int BROADCAST_SYSTEM_PAL_DK = 8;
    public static final int BROADCAST_SYSTEM_PAL_I = 4;
    public static final int BROADCAST_SYSTEM_PAL_M = 2;
    public static final int BROADCAST_SYSTEM_PAL_OTHER_SYSTEM = 31;
    public static final int BROADCAST_SYSTEM_SECAM_BG = 6;
    public static final int BROADCAST_SYSTEM_SECAM_DK = 5;
    public static final int BROADCAST_SYSTEM_SECAM_L = 7;
    public static final int BROADCAST_SYSTEM_SECAM_LP = 1;
    private static final int CHANNEL_NUMBER_FORMAT_1_PART = 1;
    private static final int CHANNEL_NUMBER_FORMAT_2_PART = 2;
    public static final int DIGITAL_BROADCAST_TYPE_ARIB = 0;
    public static final int DIGITAL_BROADCAST_TYPE_ARIB_BS = 8;
    public static final int DIGITAL_BROADCAST_TYPE_ARIB_CS = 9;
    public static final int DIGITAL_BROADCAST_TYPE_ARIB_T = 10;
    public static final int DIGITAL_BROADCAST_TYPE_ATSC = 1;
    public static final int DIGITAL_BROADCAST_TYPE_ATSC_CABLE = 16;
    public static final int DIGITAL_BROADCAST_TYPE_ATSC_SATELLITE = 17;
    public static final int DIGITAL_BROADCAST_TYPE_ATSC_TERRESTRIAL = 18;
    public static final int DIGITAL_BROADCAST_TYPE_DVB = 2;
    public static final int DIGITAL_BROADCAST_TYPE_DVB_C = 24;
    public static final int DIGITAL_BROADCAST_TYPE_DVB_S = 25;
    public static final int DIGITAL_BROADCAST_TYPE_DVB_S2 = 26;
    public static final int DIGITAL_BROADCAST_TYPE_DVB_T = 27;
    private static final int RECORD_SOURCE_TYPE_ANALOGUE_SERVICE = 3;
    private static final int RECORD_SOURCE_TYPE_DIGITAL_SERVICE = 2;
    private static final int RECORD_SOURCE_TYPE_EXTERNAL_PHYSICAL_ADDRESS = 5;
    private static final int RECORD_SOURCE_TYPE_EXTERNAL_PLUG = 4;
    private static final int RECORD_SOURCE_TYPE_OWN_SOURCE = 1;
    private static final String TAG = "HdmiRecordSources";

    public static final class AnalogueServiceSource extends RecordSource {
        static final int EXTRA_DATA_SIZE = 4;
        private final int mBroadcastSystem;
        private final int mBroadcastType;
        private final int mFrequency;

        @Override // android.hardware.hdmi.HdmiRecordSources.RecordSource
        public int extraParamToByteArray(byte[] bArr, int i2) {
            bArr[i2] = (byte) this.mBroadcastType;
            HdmiRecordSources.shortToByteArray((short) this.mFrequency, bArr, i2 + 1);
            bArr[i2 + 3] = (byte) this.mBroadcastSystem;
            return 4;
        }

        private AnalogueServiceSource(int i2, int i3, int i4) {
            super(3, 4);
            this.mBroadcastType = i2;
            this.mFrequency = i3;
            this.mBroadcastSystem = i4;
        }
    }

    public static final class AribData implements DigitalServiceIdentification {
        private final int mOriginalNetworkId;
        private final int mServiceId;
        private final int mTransportStreamId;

        public AribData(int i2, int i3, int i4) {
            this.mTransportStreamId = i2;
            this.mServiceId = i3;
            this.mOriginalNetworkId = i4;
        }

        @Override // android.hardware.hdmi.HdmiRecordSources.DigitalServiceIdentification
        public int toByteArray(byte[] bArr, int i2) {
            return HdmiRecordSources.threeFieldsToSixBytes(this.mTransportStreamId, this.mServiceId, this.mOriginalNetworkId, bArr, i2);
        }
    }

    public static final class AtscData implements DigitalServiceIdentification {
        private final int mProgramNumber;
        private final int mTransportStreamId;

        public AtscData(int i2, int i3) {
            this.mTransportStreamId = i2;
            this.mProgramNumber = i3;
        }

        @Override // android.hardware.hdmi.HdmiRecordSources.DigitalServiceIdentification
        public int toByteArray(byte[] bArr, int i2) {
            return HdmiRecordSources.threeFieldsToSixBytes(this.mTransportStreamId, this.mProgramNumber, 0, bArr, i2);
        }
    }

    public static final class ChannelIdentifier {
        private final int mChannelNumberFormat;
        private final int mMajorChannelNumber;
        private final int mMinorChannelNumber;

        /* JADX INFO: Access modifiers changed from: private */
        public int toByteArray(byte[] bArr, int i2) {
            int i3 = this.mChannelNumberFormat << 2;
            int i4 = this.mMajorChannelNumber;
            bArr[i2] = (byte) (i3 | ((i4 >>> 8) & 3));
            bArr[i2 + 1] = (byte) (i4 & 255);
            HdmiRecordSources.shortToByteArray((short) this.mMinorChannelNumber, bArr, i2 + 2);
            return 4;
        }

        private ChannelIdentifier(int i2, int i3, int i4) {
            this.mChannelNumberFormat = i2;
            this.mMajorChannelNumber = i3;
            this.mMinorChannelNumber = i4;
        }
    }

    public static final class DigitalChannelData implements DigitalServiceIdentification {
        private final ChannelIdentifier mChannelIdentifier;

        private DigitalChannelData(ChannelIdentifier channelIdentifier) {
            this.mChannelIdentifier = channelIdentifier;
        }

        public static DigitalChannelData ofOneNumber(int i2) {
            return new DigitalChannelData(new ChannelIdentifier(1, 0, i2));
        }

        public static DigitalChannelData ofTwoNumbers(int i2, int i3) {
            return new DigitalChannelData(new ChannelIdentifier(2, i2, i3));
        }

        @Override // android.hardware.hdmi.HdmiRecordSources.DigitalServiceIdentification
        public int toByteArray(byte[] bArr, int i2) {
            this.mChannelIdentifier.toByteArray(bArr, i2);
            bArr[i2 + 4] = 0;
            bArr[i2 + 5] = 0;
            return 6;
        }
    }

    public interface DigitalServiceIdentification {
        int toByteArray(byte[] bArr, int i2);
    }

    public static final class DigitalServiceSource extends RecordSource {
        private static final int DIGITAL_SERVICE_IDENTIFIED_BY_CHANNEL = 1;
        private static final int DIGITAL_SERVICE_IDENTIFIED_BY_DIGITAL_ID = 0;
        static final int EXTRA_DATA_SIZE = 7;
        private final int mBroadcastSystem;
        private final DigitalServiceIdentification mIdentification;
        private final int mIdentificationMethod;

        @Override // android.hardware.hdmi.HdmiRecordSources.RecordSource
        public int extraParamToByteArray(byte[] bArr, int i2) {
            bArr[i2] = (byte) ((this.mIdentificationMethod << 7) | (this.mBroadcastSystem & 127));
            this.mIdentification.toByteArray(bArr, i2 + 1);
            return 7;
        }

        private DigitalServiceSource(int i2, int i3, DigitalServiceIdentification digitalServiceIdentification) {
            super(2, 7);
            this.mIdentificationMethod = i2;
            this.mBroadcastSystem = i3;
            this.mIdentification = digitalServiceIdentification;
        }
    }

    public static final class DvbData implements DigitalServiceIdentification {
        private final int mOriginalNetworkId;
        private final int mServiceId;
        private final int mTransportStreamId;

        public DvbData(int i2, int i3, int i4) {
            this.mTransportStreamId = i2;
            this.mServiceId = i3;
            this.mOriginalNetworkId = i4;
        }

        @Override // android.hardware.hdmi.HdmiRecordSources.DigitalServiceIdentification
        public int toByteArray(byte[] bArr, int i2) {
            return HdmiRecordSources.threeFieldsToSixBytes(this.mTransportStreamId, this.mServiceId, this.mOriginalNetworkId, bArr, i2);
        }
    }

    public static final class ExternalPhysicalAddress extends RecordSource {
        static final int EXTRA_DATA_SIZE = 2;
        private final int mPhysicalAddress;

        @Override // android.hardware.hdmi.HdmiRecordSources.RecordSource
        public int extraParamToByteArray(byte[] bArr, int i2) {
            HdmiRecordSources.shortToByteArray((short) this.mPhysicalAddress, bArr, i2);
            return 2;
        }

        private ExternalPhysicalAddress(int i2) {
            super(5, 2);
            this.mPhysicalAddress = i2;
        }
    }

    public static final class ExternalPlugData extends RecordSource {
        static final int EXTRA_DATA_SIZE = 1;
        private final int mPlugNumber;

        @Override // android.hardware.hdmi.HdmiRecordSources.RecordSource
        public int extraParamToByteArray(byte[] bArr, int i2) {
            bArr[i2] = (byte) this.mPlugNumber;
            return 1;
        }

        private ExternalPlugData(int i2) {
            super(4, 1);
            this.mPlugNumber = i2;
        }
    }

    public static final class OwnSource extends RecordSource {
        private static final int EXTRA_DATA_SIZE = 0;

        @Override // android.hardware.hdmi.HdmiRecordSources.RecordSource
        public int extraParamToByteArray(byte[] bArr, int i2) {
            return 0;
        }

        private OwnSource() {
            super(1, 0);
        }
    }

    public static abstract class RecordSource {
        final int mExtraDataSize;
        final int mSourceType;

        public RecordSource(int i2, int i3) {
            this.mSourceType = i2;
            this.mExtraDataSize = i3;
        }

        public abstract int extraParamToByteArray(byte[] bArr, int i2);

        public final int getDataSize(boolean z2) {
            return z2 ? this.mExtraDataSize + 1 : this.mExtraDataSize;
        }

        public final int toByteArray(boolean z2, byte[] bArr, int i2) {
            if (z2) {
                bArr[i2] = (byte) this.mSourceType;
                i2++;
            }
            extraParamToByteArray(bArr, i2);
            return getDataSize(z2);
        }
    }

    private HdmiRecordSources() {
    }

    public static boolean checkRecordSource(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return false;
        }
        byte b2 = bArr[0];
        int length = bArr.length - 1;
        if (b2 == 1) {
            return length == 0;
        }
        if (b2 == 2) {
            return length == 7;
        }
        if (b2 == 3) {
            return length == 4;
        }
        if (b2 != 4) {
            return b2 == 5 && length == 2;
        }
        return length == 1;
    }

    public static AnalogueServiceSource ofAnalogue(int i2, int i3, int i4) {
        if (i2 < 0 || i2 > 2) {
            Log.w(TAG, "Invalid Broadcast type:" + i2);
            throw new IllegalArgumentException(c.d("Invalid Broadcast type:", i2));
        }
        if (i3 < 0 || i3 > 65535) {
            Log.w(TAG, "Invalid frequency value[0x0000-0xFFFF]:" + i3);
            throw new IllegalArgumentException(c.d("Invalid frequency value[0x0000-0xFFFF]:", i3));
        }
        if (i4 >= 0 && i4 <= 31) {
            return new AnalogueServiceSource(i2, i3, i4);
        }
        Log.w(TAG, "Invalid Broadcast system:" + i4);
        throw new IllegalArgumentException(c.d("Invalid Broadcast system:", i4));
    }

    public static DigitalServiceSource ofArib(int i2, AribData aribData) {
        if (aribData == null) {
            throw new IllegalArgumentException("data should not be null.");
        }
        if (i2 != 0) {
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    break;
                default:
                    Log.w(TAG, "Invalid ARIB type:" + i2);
                    throw new IllegalArgumentException("type should not be null.");
            }
        }
        return new DigitalServiceSource(0, i2, aribData);
    }

    public static DigitalServiceSource ofAtsc(int i2, AtscData atscData) {
        if (atscData == null) {
            throw new IllegalArgumentException("data should not be null.");
        }
        if (i2 != 1) {
            switch (i2) {
                case 16:
                case 17:
                case 18:
                    break;
                default:
                    Log.w(TAG, "Invalid ATSC type:" + i2);
                    throw new IllegalArgumentException(c.d("Invalid ATSC type:", i2));
            }
        }
        return new DigitalServiceSource(0, i2, atscData);
    }

    public static DigitalServiceSource ofDigitalChannelId(int i2, DigitalChannelData digitalChannelData) {
        if (digitalChannelData == null) {
            throw new IllegalArgumentException("data should not be null.");
        }
        int i3 = 1;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    break;
                default:
                    switch (i2) {
                        case 16:
                        case 17:
                        case 18:
                            break;
                        default:
                            switch (i2) {
                                case 24:
                                case 25:
                                case 26:
                                case 27:
                                    break;
                                default:
                                    Log.w(TAG, "Invalid broadcast type:" + i2);
                                    throw new IllegalArgumentException(c.d("Invalid broadcast system value:", i2));
                            }
                            break;
                    }
                    break;
            }
        }
        return new DigitalServiceSource(i3, i2, digitalChannelData);
    }

    public static DigitalServiceSource ofDvb(int i2, DvbData dvbData) {
        if (dvbData == null) {
            throw new IllegalArgumentException("data should not be null.");
        }
        if (i2 != 2) {
            switch (i2) {
                case 24:
                case 25:
                case 26:
                case 27:
                    break;
                default:
                    Log.w(TAG, "Invalid DVB type:" + i2);
                    throw new IllegalArgumentException(c.d("Invalid DVB type:", i2));
            }
        }
        return new DigitalServiceSource(0, i2, dvbData);
    }

    public static ExternalPhysicalAddress ofExternalPhysicalAddress(int i2) {
        if (((-65536) & i2) == 0) {
            return new ExternalPhysicalAddress(i2);
        }
        Log.w(TAG, "Invalid physical address:" + i2);
        throw new IllegalArgumentException(c.d("Invalid physical address:", i2));
    }

    public static ExternalPlugData ofExternalPlug(int i2) {
        if (i2 >= 1 && i2 <= 255) {
            return new ExternalPlugData(i2);
        }
        Log.w(TAG, "Invalid plug number[1-255]" + i2);
        throw new IllegalArgumentException(c.d("Invalid plug number[1-255]", i2));
    }

    public static OwnSource ofOwnSource() {
        return new OwnSource();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int shortToByteArray(short s2, byte[] bArr, int i2) {
        bArr[i2] = (byte) ((s2 >>> 8) & 255);
        bArr[i2 + 1] = (byte) (s2 & 255);
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int threeFieldsToSixBytes(int i2, int i3, int i4, byte[] bArr, int i5) {
        shortToByteArray((short) i2, bArr, i5);
        shortToByteArray((short) i3, bArr, i5 + 2);
        shortToByteArray((short) i4, bArr, i5 + 4);
        return 6;
    }
}
