package android.net.wifi;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ScanResult implements Parcelable {
    public static final int CHANNEL_WIDTH_160MHZ = 3;
    public static final int CHANNEL_WIDTH_20MHZ = 0;
    public static final int CHANNEL_WIDTH_40MHZ = 1;
    public static final int CHANNEL_WIDTH_80MHZ = 2;
    public static final int CHANNEL_WIDTH_80MHZ_PLUS_MHZ = 4;
    public static final int CIPHER_CCMP = 3;
    public static final int CIPHER_NONE = 0;
    public static final int CIPHER_NO_GROUP_ADDRESSED = 1;
    public static final int CIPHER_TKIP = 2;
    public static final Parcelable.Creator<ScanResult> CREATOR = new Parcelable.Creator<ScanResult>() { // from class: android.net.wifi.ScanResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScanResult createFromParcel(Parcel parcel) {
            ScanResult scanResult = new ScanResult(parcel.readInt() == 1 ? WifiSsid.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), false);
            scanResult.seen = parcel.readLong();
            scanResult.untrusted = parcel.readInt() != 0;
            scanResult.numConnection = parcel.readInt();
            scanResult.numUsage = parcel.readInt();
            scanResult.numIpConfigFailures = parcel.readInt();
            scanResult.venueName = parcel.readString();
            scanResult.operatorFriendlyName = parcel.readString();
            scanResult.flags = parcel.readLong();
            int i2 = parcel.readInt();
            if (i2 != 0) {
                scanResult.informationElements = new InformationElement[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    scanResult.informationElements[i3] = new InformationElement();
                    scanResult.informationElements[i3].id = parcel.readInt();
                    byte[] bArr = new byte[parcel.readInt()];
                    scanResult.informationElements[i3].bytes = bArr;
                    parcel.readByteArray(bArr);
                }
            }
            int i4 = parcel.readInt();
            if (i4 != 0) {
                scanResult.anqpLines = new ArrayList();
                for (int i5 = 0; i5 < i4; i5++) {
                    scanResult.anqpLines.add(parcel.readString());
                }
            }
            int i6 = parcel.readInt();
            if (i6 != 0) {
                scanResult.anqpElements = new AnqpInformationElement[i6];
                for (int i7 = 0; i7 < i6; i7++) {
                    int i8 = parcel.readInt();
                    int i9 = parcel.readInt();
                    byte[] bArr2 = new byte[parcel.readInt()];
                    parcel.readByteArray(bArr2);
                    scanResult.anqpElements[i7] = new AnqpInformationElement(i8, i9, bArr2);
                }
            }
            scanResult.isCarrierAp = parcel.readInt() != 0;
            scanResult.carrierApEapType = parcel.readInt();
            scanResult.carrierName = parcel.readString();
            return scanResult;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScanResult[] newArray(int i2) {
            return new ScanResult[i2];
        }
    };
    public static final long FLAG_80211mc_RESPONDER = 2;
    public static final long FLAG_PASSPOINT_NETWORK = 1;
    public static final int KEY_MGMT_EAP = 2;
    public static final int KEY_MGMT_EAP_SHA256 = 6;
    public static final int KEY_MGMT_FT_EAP = 4;
    public static final int KEY_MGMT_FT_PSK = 3;
    public static final int KEY_MGMT_NONE = 0;
    public static final int KEY_MGMT_OSEN = 7;
    public static final int KEY_MGMT_PSK = 1;
    public static final int KEY_MGMT_PSK_SHA256 = 5;
    public static final int KEY_MGMT_WAPI_CERT = 9;
    public static final int KEY_MGMT_WAPI_PSK = 8;
    public static final int PROTOCOL_NONE = 0;
    public static final int PROTOCOL_OSEN = 3;
    public static final int PROTOCOL_WAPI = 4;
    public static final int PROTOCOL_WPA = 1;
    public static final int PROTOCOL_WPA2 = 2;
    public static final int UNSPECIFIED = -1;
    public String BSSID;
    public String SSID;
    public int anqpDomainId;
    public AnqpInformationElement[] anqpElements;
    public List<String> anqpLines;
    public long blackListTimestamp;
    public byte[] bytes;
    public String capabilities;
    public int carrierApEapType;
    public String carrierName;
    public int centerFreq0;
    public int centerFreq1;
    public int channelWidth;
    public int distanceCm;
    public int distanceSdCm;
    public long flags;
    public int frequency;
    public long hessid;
    public InformationElement[] informationElements;
    public boolean is80211McRTTResponder;
    public boolean isCarrierAp;
    public int level;
    public int numConnection;
    public int numIpConfigFailures;
    public int numUsage;
    public CharSequence operatorFriendlyName;
    public long seen;
    public long timestamp;
    public boolean untrusted;
    public CharSequence venueName;
    public WifiSsid wifiSsid;

    public static class InformationElement {
        public static final int EID_BSS_LOAD = 11;
        public static final int EID_ERP = 42;
        public static final int EID_EXTENDED_CAPS = 127;
        public static final int EID_EXTENDED_SUPPORTED_RATES = 50;
        public static final int EID_HT_OPERATION = 61;
        public static final int EID_INTERWORKING = 107;
        public static final int EID_ROAMING_CONSORTIUM = 111;
        public static final int EID_RSN = 48;
        public static final int EID_SSID = 0;
        public static final int EID_SUPPORTED_RATES = 1;
        public static final int EID_TIM = 5;
        public static final int EID_VHT_OPERATION = 192;
        public static final int EID_VSA = 221;
        public static final int EID_WAPI = 68;
        public byte[] bytes;
        public int id;

        public InformationElement() {
        }

        public InformationElement(InformationElement informationElement) {
            this.id = informationElement.id;
            this.bytes = (byte[]) informationElement.bytes.clone();
        }
    }

    public ScanResult(WifiSsid wifiSsid, String str, long j2, int i2, byte[] bArr, String str2, int i3, int i4, long j3) {
        this.wifiSsid = wifiSsid;
        this.SSID = wifiSsid != null ? wifiSsid.toString() : "<unknown ssid>";
        this.BSSID = str;
        this.hessid = j2;
        this.anqpDomainId = i2;
        if (bArr != null) {
            this.anqpElements = new AnqpInformationElement[]{new AnqpInformationElement(AnqpInformationElement.HOTSPOT20_VENDOR_ID, 8, bArr)};
        }
        this.capabilities = str2;
        this.level = i3;
        this.frequency = i4;
        this.timestamp = j3;
        this.distanceCm = -1;
        this.distanceSdCm = -1;
        this.channelWidth = -1;
        this.centerFreq0 = -1;
        this.centerFreq1 = -1;
        this.flags = 0L;
        this.isCarrierAp = false;
        this.carrierApEapType = -1;
        this.carrierName = null;
    }

    public static boolean is24GHz(int i2) {
        return i2 > 2400 && i2 < 2500;
    }

    public static boolean is5GHz(int i2) {
        return i2 > 4900 && i2 < 5900;
    }

    public void averageRssi(int i2, long j2, int i3) {
        if (this.seen == 0) {
            this.seen = System.currentTimeMillis();
        }
        long j3 = this.seen - j2;
        if (j2 <= 0 || j3 <= 0 || j3 >= i3 / 2) {
            return;
        }
        double d2 = 0.5d - (j3 / ((double) i3));
        this.level = (int) ((((double) i2) * d2) + ((1.0d - d2) * ((double) this.level)));
    }

    public void clearFlag(long j2) {
        this.flags = (~j2) & this.flags;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean is80211mcResponder() {
        return (this.flags & 2) != 0;
    }

    public boolean isPasspointNetwork() {
        return (this.flags & 1) != 0;
    }

    public void setFlag(long j2) {
        this.flags = j2 | this.flags;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("SSID: ");
        Object obj = this.wifiSsid;
        if (obj == null) {
            obj = "<unknown ssid>";
        }
        stringBuffer.append(obj);
        stringBuffer.append(", BSSID: ");
        String str = this.BSSID;
        if (str == null) {
            str = "<none>";
        }
        stringBuffer.append(str);
        stringBuffer.append(", capabilities: ");
        String str2 = this.capabilities;
        stringBuffer.append(str2 != null ? str2 : "<none>");
        stringBuffer.append(", level: ");
        stringBuffer.append(this.level);
        stringBuffer.append(", frequency: ");
        stringBuffer.append(this.frequency);
        stringBuffer.append(", timestamp: ");
        stringBuffer.append(this.timestamp);
        stringBuffer.append(", distance: ");
        int i2 = this.distanceCm;
        stringBuffer.append(i2 != -1 ? Integer.valueOf(i2) : "?");
        stringBuffer.append("(cm), distanceSd: ");
        int i3 = this.distanceSdCm;
        stringBuffer.append(i3 != -1 ? Integer.valueOf(i3) : "?");
        stringBuffer.append("(cm), passpoint: ");
        stringBuffer.append((this.flags & 1) != 0 ? "yes" : "no");
        stringBuffer.append(", ChannelBandwidth: ");
        stringBuffer.append(this.channelWidth);
        stringBuffer.append(", centerFreq0: ");
        stringBuffer.append(this.centerFreq0);
        stringBuffer.append(", centerFreq1: ");
        stringBuffer.append(this.centerFreq1);
        stringBuffer.append(", 80211mcResponder: ");
        stringBuffer.append((this.flags & 2) != 0 ? "is supported" : "is not supported");
        stringBuffer.append(", Carrier AP: ");
        stringBuffer.append(this.isCarrierAp ? "yes" : "no");
        stringBuffer.append(", Carrier AP EAP Type: ");
        stringBuffer.append(this.carrierApEapType);
        stringBuffer.append(", Carrier name: ");
        stringBuffer.append(this.carrierName);
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.wifiSsid != null) {
            parcel.writeInt(1);
            this.wifiSsid.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.SSID);
        parcel.writeString(this.BSSID);
        parcel.writeLong(this.hessid);
        parcel.writeInt(this.anqpDomainId);
        parcel.writeString(this.capabilities);
        parcel.writeInt(this.level);
        parcel.writeInt(this.frequency);
        parcel.writeLong(this.timestamp);
        parcel.writeInt(this.distanceCm);
        parcel.writeInt(this.distanceSdCm);
        parcel.writeInt(this.channelWidth);
        parcel.writeInt(this.centerFreq0);
        parcel.writeInt(this.centerFreq1);
        parcel.writeLong(this.seen);
        parcel.writeInt(this.untrusted ? 1 : 0);
        parcel.writeInt(this.numConnection);
        parcel.writeInt(this.numUsage);
        parcel.writeInt(this.numIpConfigFailures);
        CharSequence charSequence = this.venueName;
        parcel.writeString(charSequence != null ? charSequence.toString() : "");
        CharSequence charSequence2 = this.operatorFriendlyName;
        parcel.writeString(charSequence2 != null ? charSequence2.toString() : "");
        parcel.writeLong(this.flags);
        InformationElement[] informationElementArr = this.informationElements;
        if (informationElementArr != null) {
            parcel.writeInt(informationElementArr.length);
            int i3 = 0;
            while (true) {
                InformationElement[] informationElementArr2 = this.informationElements;
                if (i3 >= informationElementArr2.length) {
                    break;
                }
                parcel.writeInt(informationElementArr2[i3].id);
                parcel.writeInt(this.informationElements[i3].bytes.length);
                parcel.writeByteArray(this.informationElements[i3].bytes);
                i3++;
            }
        } else {
            parcel.writeInt(0);
        }
        List<String> list = this.anqpLines;
        if (list != null) {
            parcel.writeInt(list.size());
            for (int i4 = 0; i4 < this.anqpLines.size(); i4++) {
                parcel.writeString(this.anqpLines.get(i4));
            }
        } else {
            parcel.writeInt(0);
        }
        AnqpInformationElement[] anqpInformationElementArr = this.anqpElements;
        if (anqpInformationElementArr != null) {
            parcel.writeInt(anqpInformationElementArr.length);
            for (AnqpInformationElement anqpInformationElement : this.anqpElements) {
                parcel.writeInt(anqpInformationElement.getVendorId());
                parcel.writeInt(anqpInformationElement.getElementId());
                parcel.writeInt(anqpInformationElement.getPayload().length);
                parcel.writeByteArray(anqpInformationElement.getPayload());
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.isCarrierAp ? 1 : 0);
        parcel.writeInt(this.carrierApEapType);
        parcel.writeString(this.carrierName);
    }

    public boolean is24GHz() {
        return is24GHz(this.frequency);
    }

    public boolean is5GHz() {
        return is5GHz(this.frequency);
    }

    public ScanResult(WifiSsid wifiSsid, String str, String str2, int i2, int i3, long j2, int i4, int i5) {
        this.wifiSsid = wifiSsid;
        this.SSID = wifiSsid != null ? wifiSsid.toString() : "<unknown ssid>";
        this.BSSID = str;
        this.capabilities = str2;
        this.level = i2;
        this.frequency = i3;
        this.timestamp = j2;
        this.distanceCm = i4;
        this.distanceSdCm = i5;
        this.channelWidth = -1;
        this.centerFreq0 = -1;
        this.centerFreq1 = -1;
        this.flags = 0L;
        this.isCarrierAp = false;
        this.carrierApEapType = -1;
        this.carrierName = null;
    }

    public ScanResult(String str, String str2, long j2, int i2, String str3, int i3, int i4, long j3, int i5, int i6, int i7, int i8, int i9, boolean z2) {
        this.SSID = str;
        this.BSSID = str2;
        this.hessid = j2;
        this.anqpDomainId = i2;
        this.capabilities = str3;
        this.level = i3;
        this.frequency = i4;
        this.timestamp = j3;
        this.distanceCm = i5;
        this.distanceSdCm = i6;
        this.channelWidth = i7;
        this.centerFreq0 = i8;
        this.centerFreq1 = i9;
        if (z2) {
            this.flags = 2L;
        } else {
            this.flags = 0L;
        }
        this.isCarrierAp = false;
        this.carrierApEapType = -1;
        this.carrierName = null;
    }

    public ScanResult(WifiSsid wifiSsid, String str, String str2, long j2, int i2, String str3, int i3, int i4, long j3, int i5, int i6, int i7, int i8, int i9, boolean z2) {
        this(str, str2, j2, i2, str3, i3, i4, j3, i5, i6, i7, i8, i9, z2);
        this.wifiSsid = wifiSsid;
    }

    public ScanResult(ScanResult scanResult) {
        if (scanResult != null) {
            this.wifiSsid = scanResult.wifiSsid;
            this.SSID = scanResult.SSID;
            this.BSSID = scanResult.BSSID;
            this.hessid = scanResult.hessid;
            this.anqpDomainId = scanResult.anqpDomainId;
            this.informationElements = scanResult.informationElements;
            this.anqpElements = scanResult.anqpElements;
            this.capabilities = scanResult.capabilities;
            this.level = scanResult.level;
            this.frequency = scanResult.frequency;
            this.channelWidth = scanResult.channelWidth;
            this.centerFreq0 = scanResult.centerFreq0;
            this.centerFreq1 = scanResult.centerFreq1;
            this.timestamp = scanResult.timestamp;
            this.distanceCm = scanResult.distanceCm;
            this.distanceSdCm = scanResult.distanceSdCm;
            this.seen = scanResult.seen;
            this.untrusted = scanResult.untrusted;
            this.numConnection = scanResult.numConnection;
            this.numUsage = scanResult.numUsage;
            this.numIpConfigFailures = scanResult.numIpConfigFailures;
            this.venueName = scanResult.venueName;
            this.operatorFriendlyName = scanResult.operatorFriendlyName;
            this.flags = scanResult.flags;
            this.isCarrierAp = scanResult.isCarrierAp;
            this.carrierApEapType = scanResult.carrierApEapType;
            this.carrierName = scanResult.carrierName;
        }
    }

    public ScanResult() {
    }
}
