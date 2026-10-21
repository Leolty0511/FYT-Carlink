package android.net;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class IpSecTransformResponse implements Parcelable {
    public static final Parcelable.Creator<IpSecTransformResponse> CREATOR = new Parcelable.Creator<IpSecTransformResponse>() { // from class: android.net.IpSecTransformResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpSecTransformResponse createFromParcel(Parcel parcel) {
            return new IpSecTransformResponse(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpSecTransformResponse[] newArray(int i2) {
            return new IpSecTransformResponse[i2];
        }
    };
    private static final String TAG = "IpSecTransformResponse";
    public final int resourceId;
    public final int status;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.status);
        parcel.writeInt(this.resourceId);
    }

    public IpSecTransformResponse(int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException("Valid status implies other args must be provided");
        }
        this.status = i2;
        this.resourceId = 0;
    }

    public IpSecTransformResponse(int i2, int i3) {
        this.status = i2;
        this.resourceId = i3;
    }

    private IpSecTransformResponse(Parcel parcel) {
        this.status = parcel.readInt();
        this.resourceId = parcel.readInt();
    }
}
