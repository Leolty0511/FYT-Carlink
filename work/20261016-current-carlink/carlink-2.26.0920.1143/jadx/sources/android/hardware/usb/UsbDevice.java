package android.hardware.usb;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class UsbDevice implements Parcelable {
    public static final Parcelable.Creator<UsbDevice> CREATOR = new Parcelable.Creator<UsbDevice>() { // from class: android.hardware.usb.UsbDevice.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsbDevice createFromParcel(Parcel parcel) {
            String string = parcel.readString();
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            int i4 = parcel.readInt();
            int i5 = parcel.readInt();
            int i6 = parcel.readInt();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            Parcelable[] parcelableArray = parcel.readParcelableArray(UsbInterface.class.getClassLoader());
            UsbDevice usbDevice = new UsbDevice(string, i2, i3, i4, i5, i6, string2, string3, string4, string5);
            usbDevice.setConfigurations(parcelableArray);
            return usbDevice;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsbDevice[] newArray(int i2) {
            return new UsbDevice[i2];
        }
    };
    private static final boolean DEBUG = false;
    private static final String TAG = "UsbDevice";
    private final int mClass;
    private Parcelable[] mConfigurations;
    private UsbInterface[] mInterfaces;
    private final String mManufacturerName;
    private final String mName;
    private final int mProductId;
    private final String mProductName;
    private final int mProtocol;
    private final String mSerialNumber;
    private final int mSubclass;
    private final int mVendorId;
    private final String mVersion;

    public UsbDevice(String str, int i2, int i3, int i4, int i5, int i6, String str2, String str3, String str4, String str5) {
        this.mName = (String) Preconditions.checkNotNull(str);
        this.mVendorId = i2;
        this.mProductId = i3;
        this.mClass = i4;
        this.mSubclass = i5;
        this.mProtocol = i6;
        this.mManufacturerName = str2;
        this.mProductName = str3;
        this.mVersion = (String) Preconditions.checkStringNotEmpty(str4);
        this.mSerialNumber = str5;
    }

    private UsbInterface[] getInterfaceList() {
        if (this.mInterfaces == null) {
            int length = this.mConfigurations.length;
            int interfaceCount = 0;
            for (int i2 = 0; i2 < length; i2++) {
                interfaceCount += ((UsbConfiguration) this.mConfigurations[i2]).getInterfaceCount();
            }
            this.mInterfaces = new UsbInterface[interfaceCount];
            int i3 = 0;
            for (int i4 = 0; i4 < length; i4++) {
                UsbConfiguration usbConfiguration = (UsbConfiguration) this.mConfigurations[i4];
                int interfaceCount2 = usbConfiguration.getInterfaceCount();
                int i5 = 0;
                while (i5 < interfaceCount2) {
                    this.mInterfaces[i3] = usbConfiguration.getInterface(i5);
                    i5++;
                    i3++;
                }
            }
        }
        return this.mInterfaces;
    }

    private static native int native_get_device_id(String str);

    private static native String native_get_device_name(int i2);

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof UsbDevice) {
            return ((UsbDevice) obj).mName.equals(this.mName);
        }
        if (obj instanceof String) {
            return ((String) obj).equals(this.mName);
        }
        return false;
    }

    public UsbConfiguration getConfiguration(int i2) {
        return (UsbConfiguration) this.mConfigurations[i2];
    }

    public int getConfigurationCount() {
        return this.mConfigurations.length;
    }

    public int getDeviceClass() {
        return this.mClass;
    }

    public int getDeviceId() {
        return getDeviceId(this.mName);
    }

    public String getDeviceName() {
        return this.mName;
    }

    public int getDeviceProtocol() {
        return this.mProtocol;
    }

    public int getDeviceSubclass() {
        return this.mSubclass;
    }

    public UsbInterface getInterface(int i2) {
        return getInterfaceList()[i2];
    }

    public int getInterfaceCount() {
        return getInterfaceList().length;
    }

    public String getManufacturerName() {
        return this.mManufacturerName;
    }

    public int getProductId() {
        return this.mProductId;
    }

    public String getProductName() {
        return this.mProductName;
    }

    public String getSerialNumber() {
        return this.mSerialNumber;
    }

    public int getVendorId() {
        return this.mVendorId;
    }

    public String getVersion() {
        return this.mVersion;
    }

    public int hashCode() {
        return this.mName.hashCode();
    }

    public void setConfigurations(Parcelable[] parcelableArr) {
        this.mConfigurations = (Parcelable[]) Preconditions.checkArrayElementsNotNull(parcelableArr, "configuration");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UsbDevice[mName=");
        sb.append(this.mName);
        sb.append(",mVendorId=");
        sb.append(this.mVendorId);
        sb.append(",mProductId=");
        sb.append(this.mProductId);
        sb.append(",mClass=");
        sb.append(this.mClass);
        sb.append(",mSubclass=");
        sb.append(this.mSubclass);
        sb.append(",mProtocol=");
        sb.append(this.mProtocol);
        sb.append(",mManufacturerName=");
        sb.append(this.mManufacturerName);
        sb.append(",mProductName=");
        sb.append(this.mProductName);
        sb.append(",mVersion=");
        sb.append(this.mVersion);
        sb.append(",mSerialNumber=");
        StringBuilder sb2 = new StringBuilder(c.n(sb, this.mSerialNumber, ",mConfigurations=["));
        for (int i2 = 0; i2 < this.mConfigurations.length; i2++) {
            sb2.append("\n");
            sb2.append(this.mConfigurations[i2].toString());
        }
        sb2.append("]");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mName);
        parcel.writeInt(this.mVendorId);
        parcel.writeInt(this.mProductId);
        parcel.writeInt(this.mClass);
        parcel.writeInt(this.mSubclass);
        parcel.writeInt(this.mProtocol);
        parcel.writeString(this.mManufacturerName);
        parcel.writeString(this.mProductName);
        parcel.writeString(this.mVersion);
        parcel.writeString(this.mSerialNumber);
        parcel.writeParcelableArray(this.mConfigurations, 0);
    }

    public static int getDeviceId(String str) {
        return native_get_device_id(str);
    }

    public static String getDeviceName(int i2) {
        return native_get_device_name(i2);
    }
}
