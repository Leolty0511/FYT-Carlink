package android.hardware.usb;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class UsbConfiguration implements Parcelable {
    private static final int ATTR_REMOTE_WAKEUP = 32;
    private static final int ATTR_SELF_POWERED = 64;
    public static final Parcelable.Creator<UsbConfiguration> CREATOR = new Parcelable.Creator<UsbConfiguration>() { // from class: android.hardware.usb.UsbConfiguration.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsbConfiguration createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            String string = parcel.readString();
            int i3 = parcel.readInt();
            int i4 = parcel.readInt();
            Parcelable[] parcelableArray = parcel.readParcelableArray(UsbInterface.class.getClassLoader());
            UsbConfiguration usbConfiguration = new UsbConfiguration(i2, string, i3, i4);
            usbConfiguration.setInterfaces(parcelableArray);
            return usbConfiguration;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsbConfiguration[] newArray(int i2) {
            return new UsbConfiguration[i2];
        }
    };
    private final int mAttributes;
    private final int mId;
    private Parcelable[] mInterfaces;
    private final int mMaxPower;
    private final String mName;

    public UsbConfiguration(int i2, String str, int i3, int i4) {
        this.mId = i2;
        this.mName = str;
        this.mAttributes = i3;
        this.mMaxPower = i4;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getId() {
        return this.mId;
    }

    public UsbInterface getInterface(int i2) {
        return (UsbInterface) this.mInterfaces[i2];
    }

    public int getInterfaceCount() {
        return this.mInterfaces.length;
    }

    public int getMaxPower() {
        return this.mMaxPower * 2;
    }

    public String getName() {
        return this.mName;
    }

    public boolean isRemoteWakeup() {
        return (this.mAttributes & 32) != 0;
    }

    public boolean isSelfPowered() {
        return (this.mAttributes & 64) != 0;
    }

    public void setInterfaces(Parcelable[] parcelableArr) {
        this.mInterfaces = (Parcelable[]) Preconditions.checkArrayElementsNotNull(parcelableArr, "interfaces");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UsbConfiguration[mId=");
        sb.append(this.mId);
        sb.append(",mName=");
        sb.append(this.mName);
        sb.append(",mAttributes=");
        sb.append(this.mAttributes);
        sb.append(",mMaxPower=");
        StringBuilder sb2 = new StringBuilder(c.m(sb, this.mMaxPower, ",mInterfaces=["));
        for (int i2 = 0; i2 < this.mInterfaces.length; i2++) {
            sb2.append("\n");
            sb2.append(this.mInterfaces[i2].toString());
        }
        sb2.append("]");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mId);
        parcel.writeString(this.mName);
        parcel.writeInt(this.mAttributes);
        parcel.writeInt(this.mMaxPower);
        parcel.writeParcelableArray(this.mInterfaces, 0);
    }
}
