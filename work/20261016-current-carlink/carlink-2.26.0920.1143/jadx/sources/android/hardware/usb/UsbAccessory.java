package android.hardware.usb;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class UsbAccessory implements Parcelable {
    public static final Parcelable.Creator<UsbAccessory> CREATOR = new Parcelable.Creator<UsbAccessory>() { // from class: android.hardware.usb.UsbAccessory.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsbAccessory createFromParcel(Parcel parcel) {
            return new UsbAccessory(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsbAccessory[] newArray(int i2) {
            return new UsbAccessory[i2];
        }
    };
    public static final int DESCRIPTION_STRING = 2;
    public static final int MANUFACTURER_STRING = 0;
    public static final int MODEL_STRING = 1;
    public static final int SERIAL_STRING = 5;
    private static final String TAG = "UsbAccessory";
    public static final int URI_STRING = 4;
    public static final int VERSION_STRING = 3;
    private final String mDescription;
    private final String mManufacturer;
    private final String mModel;
    private final String mSerial;
    private final String mUri;
    private final String mVersion;

    public UsbAccessory(String str, String str2, String str3, String str4, String str5, String str6) {
        this.mManufacturer = (String) Preconditions.checkNotNull(str);
        this.mModel = (String) Preconditions.checkNotNull(str2);
        this.mDescription = str3;
        this.mVersion = str4;
        this.mUri = str5;
        this.mSerial = str6;
    }

    private static boolean compare(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equals(str2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof UsbAccessory)) {
            return false;
        }
        UsbAccessory usbAccessory = (UsbAccessory) obj;
        return compare(this.mManufacturer, usbAccessory.getManufacturer()) && compare(this.mModel, usbAccessory.getModel()) && compare(this.mDescription, usbAccessory.getDescription()) && compare(this.mVersion, usbAccessory.getVersion()) && compare(this.mUri, usbAccessory.getUri()) && compare(this.mSerial, usbAccessory.getSerial());
    }

    public String getDescription() {
        return this.mDescription;
    }

    public String getManufacturer() {
        return this.mManufacturer;
    }

    public String getModel() {
        return this.mModel;
    }

    public String getSerial() {
        return this.mSerial;
    }

    public String getUri() {
        return this.mUri;
    }

    public String getVersion() {
        return this.mVersion;
    }

    public int hashCode() {
        int iHashCode = this.mManufacturer.hashCode() ^ this.mModel.hashCode();
        String str = this.mDescription;
        int iHashCode2 = iHashCode ^ (str == null ? 0 : str.hashCode());
        String str2 = this.mVersion;
        int iHashCode3 = iHashCode2 ^ (str2 == null ? 0 : str2.hashCode());
        String str3 = this.mUri;
        int iHashCode4 = iHashCode3 ^ (str3 == null ? 0 : str3.hashCode());
        String str4 = this.mSerial;
        return iHashCode4 ^ (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UsbAccessory[mManufacturer=");
        sb.append(this.mManufacturer);
        sb.append(", mModel=");
        sb.append(this.mModel);
        sb.append(", mDescription=");
        sb.append(this.mDescription);
        sb.append(", mVersion=");
        sb.append(this.mVersion);
        sb.append(", mUri=");
        sb.append(this.mUri);
        sb.append(", mSerial=");
        return c.n(sb, this.mSerial, "]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mManufacturer);
        parcel.writeString(this.mModel);
        parcel.writeString(this.mDescription);
        parcel.writeString(this.mVersion);
        parcel.writeString(this.mUri);
        parcel.writeString(this.mSerial);
    }

    public UsbAccessory(String[] strArr) {
        this(strArr[0], strArr[1], strArr[2], strArr[3], strArr[4], strArr[5]);
    }
}
