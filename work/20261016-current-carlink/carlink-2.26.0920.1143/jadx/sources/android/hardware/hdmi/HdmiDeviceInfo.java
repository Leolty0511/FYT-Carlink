package android.hardware.hdmi;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class HdmiDeviceInfo implements Parcelable {
    public static final int ADDR_INTERNAL = 0;
    public static final int DEVICE_AUDIO_SYSTEM = 5;
    public static final int DEVICE_INACTIVE = -1;
    public static final int DEVICE_PLAYBACK = 4;
    public static final int DEVICE_PURE_CEC_SWITCH = 6;
    public static final int DEVICE_RECORDER = 1;
    public static final int DEVICE_RESERVED = 2;
    public static final int DEVICE_TUNER = 3;
    public static final int DEVICE_TV = 0;
    public static final int DEVICE_VIDEO_PROCESSOR = 7;
    private static final int HDMI_DEVICE_TYPE_CEC = 0;
    private static final int HDMI_DEVICE_TYPE_HARDWARE = 2;
    private static final int HDMI_DEVICE_TYPE_INACTIVE = 100;
    private static final int HDMI_DEVICE_TYPE_MHL = 1;
    public static final int ID_INVALID = 65535;
    private static final int ID_OFFSET_CEC = 0;
    private static final int ID_OFFSET_HARDWARE = 192;
    private static final int ID_OFFSET_MHL = 128;
    public static final int PATH_INTERNAL = 0;
    public static final int PATH_INVALID = 65535;
    public static final int PORT_INVALID = -1;
    private final int mAdopterId;
    private final int mDeviceId;
    private final int mDevicePowerStatus;
    private final int mDeviceType;
    private final String mDisplayName;
    private final int mHdmiDeviceType;
    private final int mId;
    private final int mLogicalAddress;
    private final int mPhysicalAddress;
    private final int mPortId;
    private final int mVendorId;
    public static final HdmiDeviceInfo INACTIVE_DEVICE = new HdmiDeviceInfo();
    public static final Parcelable.Creator<HdmiDeviceInfo> CREATOR = new Parcelable.Creator<HdmiDeviceInfo>() { // from class: android.hardware.hdmi.HdmiDeviceInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HdmiDeviceInfo createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            int i4 = parcel.readInt();
            if (i2 == 0) {
                return new HdmiDeviceInfo(parcel.readInt(), i3, i4, parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt());
            }
            if (i2 == 1) {
                return new HdmiDeviceInfo(i3, i4, parcel.readInt(), parcel.readInt());
            }
            if (i2 == 2) {
                return new HdmiDeviceInfo(i3, i4);
            }
            if (i2 != 100) {
                return null;
            }
            return HdmiDeviceInfo.INACTIVE_DEVICE;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HdmiDeviceInfo[] newArray(int i2) {
            return new HdmiDeviceInfo[i2];
        }
    };

    public HdmiDeviceInfo(int i2, int i3, int i4, int i5, int i6, String str, int i7) {
        this.mHdmiDeviceType = 0;
        this.mPhysicalAddress = i3;
        this.mPortId = i4;
        this.mId = idForCecDevice(i2);
        this.mLogicalAddress = i2;
        this.mDeviceType = i5;
        this.mVendorId = i6;
        this.mDevicePowerStatus = i7;
        this.mDisplayName = str;
        this.mDeviceId = -1;
        this.mAdopterId = -1;
    }

    public static int idForCecDevice(int i2) {
        return i2 + 0;
    }

    public static int idForHardware(int i2) {
        return i2 + 192;
    }

    public static int idForMhlDevice(int i2) {
        return i2 + 128;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof HdmiDeviceInfo)) {
            return false;
        }
        HdmiDeviceInfo hdmiDeviceInfo = (HdmiDeviceInfo) obj;
        return this.mHdmiDeviceType == hdmiDeviceInfo.mHdmiDeviceType && this.mPhysicalAddress == hdmiDeviceInfo.mPhysicalAddress && this.mPortId == hdmiDeviceInfo.mPortId && this.mLogicalAddress == hdmiDeviceInfo.mLogicalAddress && this.mDeviceType == hdmiDeviceInfo.mDeviceType && this.mVendorId == hdmiDeviceInfo.mVendorId && this.mDevicePowerStatus == hdmiDeviceInfo.mDevicePowerStatus && this.mDisplayName.equals(hdmiDeviceInfo.mDisplayName) && this.mDeviceId == hdmiDeviceInfo.mDeviceId && this.mAdopterId == hdmiDeviceInfo.mAdopterId;
    }

    public int getAdopterId() {
        return this.mAdopterId;
    }

    public int getDeviceId() {
        return this.mDeviceId;
    }

    public int getDevicePowerStatus() {
        return this.mDevicePowerStatus;
    }

    public int getDeviceType() {
        return this.mDeviceType;
    }

    public String getDisplayName() {
        return this.mDisplayName;
    }

    public int getId() {
        return this.mId;
    }

    public int getLogicalAddress() {
        return this.mLogicalAddress;
    }

    public int getPhysicalAddress() {
        return this.mPhysicalAddress;
    }

    public int getPortId() {
        return this.mPortId;
    }

    public int getVendorId() {
        return this.mVendorId;
    }

    public boolean isCecDevice() {
        return this.mHdmiDeviceType == 0;
    }

    public boolean isInactivated() {
        return this.mHdmiDeviceType == 100;
    }

    public boolean isMhlDevice() {
        return this.mHdmiDeviceType == 1;
    }

    public boolean isSourceType() {
        if (!isCecDevice()) {
            return isMhlDevice();
        }
        int i2 = this.mDeviceType;
        return i2 == 4 || i2 == 1 || i2 == 3;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        int i2 = this.mHdmiDeviceType;
        if (i2 == 0) {
            stringBuffer.append("CEC: logical_address: ");
            stringBuffer.append(String.format("0x%02X", Integer.valueOf(this.mLogicalAddress)));
            stringBuffer.append(" device_type: ");
            stringBuffer.append(this.mDeviceType);
            stringBuffer.append(" vendor_id: ");
            stringBuffer.append(this.mVendorId);
            stringBuffer.append(" display_name: ");
            stringBuffer.append(this.mDisplayName);
            stringBuffer.append(" power_status: ");
            stringBuffer.append(this.mDevicePowerStatus);
            stringBuffer.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        } else if (i2 == 1) {
            stringBuffer.append("MHL: device_id: ");
            stringBuffer.append(String.format("0x%04X", Integer.valueOf(this.mDeviceId)));
            stringBuffer.append(" adopter_id: ");
            stringBuffer.append(String.format("0x%04X", Integer.valueOf(this.mAdopterId)));
            stringBuffer.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        } else if (i2 == 2) {
            stringBuffer.append("Hardware: ");
        } else {
            if (i2 != 100) {
                return "";
            }
            stringBuffer.append("Inactivated: ");
        }
        stringBuffer.append("physical_address: ");
        stringBuffer.append(String.format("0x%04X", Integer.valueOf(this.mPhysicalAddress)));
        stringBuffer.append(" port_id: ");
        stringBuffer.append(this.mPortId);
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mHdmiDeviceType);
        parcel.writeInt(this.mPhysicalAddress);
        parcel.writeInt(this.mPortId);
        int i3 = this.mHdmiDeviceType;
        if (i3 != 0) {
            if (i3 != 1) {
                return;
            }
            parcel.writeInt(this.mDeviceId);
            parcel.writeInt(this.mAdopterId);
            return;
        }
        parcel.writeInt(this.mLogicalAddress);
        parcel.writeInt(this.mDeviceType);
        parcel.writeInt(this.mVendorId);
        parcel.writeInt(this.mDevicePowerStatus);
        parcel.writeString(this.mDisplayName);
    }

    public HdmiDeviceInfo(int i2, int i3, int i4, int i5, int i6, String str) {
        this(i2, i3, i4, i5, i6, str, -1);
    }

    public HdmiDeviceInfo(int i2, int i3) {
        this.mHdmiDeviceType = 2;
        this.mPhysicalAddress = i2;
        this.mPortId = i3;
        this.mId = idForHardware(i3);
        this.mLogicalAddress = -1;
        this.mDeviceType = 2;
        this.mVendorId = 0;
        this.mDevicePowerStatus = -1;
        this.mDisplayName = c.d("HDMI", i3);
        this.mDeviceId = -1;
        this.mAdopterId = -1;
    }

    public HdmiDeviceInfo(int i2, int i3, int i4, int i5) {
        this.mHdmiDeviceType = 1;
        this.mPhysicalAddress = i2;
        this.mPortId = i3;
        this.mId = idForMhlDevice(i3);
        this.mLogicalAddress = -1;
        this.mDeviceType = 2;
        this.mVendorId = 0;
        this.mDevicePowerStatus = -1;
        this.mDisplayName = "Mobile";
        this.mDeviceId = i4;
        this.mAdopterId = i5;
    }

    public HdmiDeviceInfo() {
        this.mHdmiDeviceType = 100;
        this.mPhysicalAddress = 65535;
        this.mId = 65535;
        this.mLogicalAddress = -1;
        this.mDeviceType = -1;
        this.mPortId = -1;
        this.mDevicePowerStatus = -1;
        this.mDisplayName = "Inactive";
        this.mVendorId = 0;
        this.mDeviceId = -1;
        this.mAdopterId = -1;
    }
}
