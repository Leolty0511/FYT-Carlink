package android.net;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class IpSecSpiResponse implements Parcelable {
    public static final Parcelable.Creator<IpSecSpiResponse> CREATOR = new Parcelable.Creator<IpSecSpiResponse>() { // from class: android.net.IpSecSpiResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpSecSpiResponse createFromParcel(Parcel parcel) {
            return new IpSecSpiResponse(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpSecSpiResponse[] newArray(int i2) {
            return new IpSecSpiResponse[i2];
        }
    };
    private static final String TAG = "IpSecSpiResponse";
    public final int resourceId;
    public final int spi;
    public final int status;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.status);
        parcel.writeInt(this.resourceId);
        parcel.writeInt(this.spi);
    }

    public IpSecSpiResponse(int i2, int i3, int i4) {
        this.status = i2;
        this.resourceId = i3;
        this.spi = i4;
    }

    public IpSecSpiResponse(int i2) {
        if (i2 != 0) {
            this.status = i2;
            this.resourceId = 0;
            this.spi = 0;
            return;
        }
        throw new IllegalArgumentException("Valid status implies other args must be provided");
    }

    private IpSecSpiResponse(Parcel parcel) {
        this.status = parcel.readInt();
        this.resourceId = parcel.readInt();
        this.spi = parcel.readInt();
    }
}
