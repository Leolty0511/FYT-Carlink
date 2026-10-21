package android.hardware.usb;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class UsbInterface implements Parcelable {
    public static final Parcelable.Creator<UsbInterface> CREATOR = new Parcelable.Creator<UsbInterface>() { // from class: android.hardware.usb.UsbInterface.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsbInterface createFromParcel(Parcel parcel) {
            return new UsbInterface(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readParcelableArray(UsbEndpoint.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsbInterface[] newArray(int i2) {
            return new UsbInterface[i2];
        }
    };
    private final int mClass;
    private final Parcelable[] mEndpoints;
    private final int mId;
    private final int mProtocol;
    private final int mSubclass;

    public UsbInterface(int i2, int i3, int i4, int i5, Parcelable[] parcelableArr) {
        this.mId = i2;
        this.mClass = i3;
        this.mSubclass = i4;
        this.mProtocol = i5;
        this.mEndpoints = parcelableArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
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

    public String toString() {
        return "UsbInterface[mId=" + this.mId + ",mClass=" + this.mClass + ",mSubclass=" + this.mSubclass + ",mProtocol=" + this.mProtocol + ",mEndpoints=" + this.mEndpoints + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mId);
        parcel.writeInt(this.mClass);
        parcel.writeInt(this.mSubclass);
        parcel.writeInt(this.mProtocol);
        parcel.writeParcelableArray(this.mEndpoints, 0);
    }
}
