package android.hardware.usb;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class UsbInterface implements Parcelable {
    public static final Parcelable.Creator<UsbInterface> CREATOR = new Parcelable.Creator<UsbInterface>() { // from class: android.hardware.usb.UsbInterface.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsbInterface createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            String string = parcel.readString();
            int i4 = parcel.readInt();
            int i5 = parcel.readInt();
            int i6 = parcel.readInt();
            Parcelable[] parcelableArray = parcel.readParcelableArray(UsbEndpoint.class.getClassLoader());
            UsbInterface usbInterface = new UsbInterface(i2, i3, string, i4, i5, i6);
            usbInterface.setEndpoints(parcelableArray);
            return usbInterface;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsbInterface[] newArray(int i2) {
            return new UsbInterface[i2];
        }
    };
    private final int mAlternateSetting;
    private final int mClass;
    private Parcelable[] mEndpoints;
    private final int mId;
    private final String mName;
    private final int mProtocol;
    private final int mSubclass;

    public UsbInterface(int i2, int i3, String str, int i4, int i5, int i6) {
        this.mId = i2;
        this.mAlternateSetting = i3;
        this.mName = str;
        this.mClass = i4;
        this.mSubclass = i5;
        this.mProtocol = i6;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAlternateSetting() {
        return this.mAlternateSetting;
    }

    public UsbEndpoint getEndpoint(int i2) {
        return (UsbEndpoint) this.mEndpoints[i2];
    }

    public int getEndpointCount() {
        return this.mEndpoints.length;
    }

    public int getId() {
        return this.mId;
    }

    public int getInterfaceClass() {
        return this.mClass;
    }

    public int getInterfaceProtocol() {
        return this.mProtocol;
    }

    public int getInterfaceSubclass() {
        return this.mSubclass;
    }

    public String getName() {
        return this.mName;
    }

    public void setEndpoints(Parcelable[] parcelableArr) {
        this.mEndpoints = (Parcelable[]) Preconditions.checkArrayElementsNotNull(parcelableArr, "endpoints");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UsbInterface[mId=");
        sb.append(this.mId);
        sb.append(",mAlternateSetting=");
        sb.append(this.mAlternateSetting);
        sb.append(",mName=");
        sb.append(this.mName);
        sb.append(",mClass=");
        sb.append(this.mClass);
        sb.append(",mSubclass=");
        sb.append(this.mSubclass);
        sb.append(",mProtocol=");
        StringBuilder sb2 = new StringBuilder(c.m(sb, this.mProtocol, ",mEndpoints=["));
        for (int i2 = 0; i2 < this.mEndpoints.length; i2++) {
            sb2.append("\n");
            sb2.append(this.mEndpoints[i2].toString());
        }
        sb2.append("]");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mId);
        parcel.writeInt(this.mAlternateSetting);
        parcel.writeString(this.mName);
        parcel.writeInt(this.mClass);
        parcel.writeInt(this.mSubclass);
        parcel.writeInt(this.mProtocol);
        parcel.writeParcelableArray(this.mEndpoints, 0);
    }
}
